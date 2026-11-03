package zeekr.exporter;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

final class ChargeStats {
    private static final long CHARGE_GAP_MS = 10 * 60_000;
    private static final long SOC_WINDOW_MS = 5 * 60_000;
    private static final double GRAPH_SEGMENT_KM = 10.0;

    static final class Sample {
        final long ts;
        final Double odometerKm;
        final Double socPercent;
        final boolean charging;
        final Double batteryCurrentA;
        final Double batteryVoltageV;
        final Double batteryCapacityAh;
        final Double tripEnergyKwh;
        final Double tripDistanceKm;
        final Double tripAvgConsumption;

        Sample(long ts, Double odometerKm, Double socPercent, boolean charging,
               Double batteryCurrentA, Double batteryVoltageV, Double batteryCapacityAh,
               Double tripEnergyKwh, Double tripDistanceKm, Double tripAvgConsumption) {
            this.ts = ts;
            this.odometerKm = odometerKm;
            this.socPercent = socPercent;
            this.charging = charging;
            this.batteryCurrentA = batteryCurrentA;
            this.batteryVoltageV = batteryVoltageV;
            this.batteryCapacityAh = batteryCapacityAh;
            this.tripEnergyKwh = tripEnergyKwh;
            this.tripDistanceKm = tripDistanceKm;
            this.tripAvgConsumption = tripAvgConsumption;
        }
    }

    static final class Point {
        final double distanceKm;
        final double consumptionKwh100Km;

        Point(double distanceKm, double consumptionKwh100Km) {
            this.distanceKm = distanceKm;
            this.consumptionKwh100Km = consumptionKwh100Km;
        }
    }

    static final class Result {
        boolean hasCharge;
        boolean chargeActive;
        long chargeStartTs;
        long chargeEndTs;
        boolean hasChargeStartSoc;
        boolean hasChargeEndSoc;
        double chargeStartSoc;
        double chargeEndSoc;
        double chargeAddedKwh;
        boolean vehicleTrip;
        boolean hasDistance;
        boolean hasEnergy;
        boolean hasAverage;
        double distanceKm;
        double usedKwh;
        double averageConsumption;
        boolean hasCurrent;
        boolean hasVoltage;
        boolean hasSoc;
        boolean hasRemainingEnergy;
        double currentA;
        double voltageV;
        double socPercent;
        double remainingEnergyKwh;
        long lastSampleTs;
        List<Point> graph = Collections.emptyList();
    }

    static Result analyze(List<Sample> samples, double capacityKwh, long now) {
        Result r = new Result();
        if (samples.isEmpty()) return r;
        Sample last = samples.get(samples.size() - 1);
        r.lastSampleTs = last.ts;
        if (last.batteryCurrentA != null) {
            r.hasCurrent = true;
            r.currentA = last.batteryCurrentA;
        }
        if (last.batteryVoltageV != null) {
            r.hasVoltage = true;
            r.voltageV = last.batteryVoltageV;
        }
        if (last.socPercent != null) {
            r.hasSoc = true;
            r.socPercent = last.socPercent;
        }
        if (last.socPercent != null && last.batteryVoltageV != null && last.batteryCapacityAh != null) {
            r.hasRemainingEnergy = true;
            r.remainingEnergyKwh = Math.max(0,
                    last.socPercent * last.batteryVoltageV * last.batteryCapacityAh / 100_000.0);
        }
        r.vehicleTrip = last.tripEnergyKwh != null || last.tripDistanceKm != null;
        if (last.tripDistanceKm != null) {
            r.hasDistance = true;
            r.distanceKm = last.tripDistanceKm;
        }
        if (last.tripEnergyKwh != null) {
            r.hasEnergy = true;
            r.usedKwh = Math.max(0, last.tripEnergyKwh);
        }
        if (last.tripAvgConsumption != null) {
            r.hasAverage = true;
            r.averageConsumption = last.tripAvgConsumption;
        }
        if (r.vehicleTrip) r.graph = buildVehicleGraph(samples);

        int start = -1;
        int end = -1;
        boolean newSession = true;
        for (int i = 0; i < samples.size(); i++) {
            Sample s = samples.get(i);
            if (!s.charging) {
                newSession = true;
                continue;
            }
            if (start < 0 || newSession || s.ts - samples.get(end).ts > CHARGE_GAP_MS) start = i;
            end = i;
            newSession = false;
        }
        if (start < 0) return r;

        r.hasCharge = true;
        r.chargeStartTs = samples.get(start).ts;
        r.chargeEndTs = samples.get(end).ts;
        r.chargeActive = last.charging && end == samples.size() - 1 && now - last.ts <= CHARGE_GAP_MS;

        Double chargeStartSoc = firstSoc(samples, r.chargeStartTs, r.chargeStartTs + SOC_WINDOW_MS);
        if (chargeStartSoc == null) chargeStartSoc = lastSoc(samples, r.chargeStartTs - SOC_WINDOW_MS, r.chargeStartTs);
        Double chargeEndSoc = lastSoc(samples, r.chargeEndTs - SOC_WINDOW_MS, r.chargeEndTs);
        if (chargeEndSoc == null) chargeEndSoc = firstSoc(samples, r.chargeEndTs, r.chargeEndTs + SOC_WINDOW_MS);
        if (chargeStartSoc != null) {
            r.hasChargeStartSoc = true;
            r.chargeStartSoc = chargeStartSoc;
        }
        if (chargeEndSoc != null) {
            r.hasChargeEndSoc = true;
            r.chargeEndSoc = chargeEndSoc;
        }
        if (r.hasChargeStartSoc && r.hasChargeEndSoc) {
            r.chargeAddedKwh = Math.max(0, r.chargeEndSoc - r.chargeStartSoc) * capacityKwh / 100.0;
        }
        if (r.vehicleTrip) return r;

        Double firstOdo = firstValue(samples, r.chargeEndTs, true);
        Double lastOdo = lastValue(samples, r.chargeEndTs, true);
        Double firstSoc = firstValue(samples, r.chargeEndTs, false);
        Double lastSoc = lastValue(samples, r.chargeEndTs, false);
        if (firstOdo != null && lastOdo != null && lastOdo > firstOdo) {
            r.hasDistance = true;
            r.distanceKm = lastOdo - firstOdo;
        }
        if (firstSoc != null && lastSoc != null) {
            r.hasEnergy = true;
            r.usedKwh = Math.max(0, firstSoc - lastSoc) * capacityKwh / 100.0;
        }
        r.graph = buildSocGraph(samples, r.chargeEndTs, capacityKwh);
        return r;
    }

    private static Double firstSoc(List<Sample> samples, long from, long to) {
        for (Sample s : samples) {
            if (s.ts >= from && s.ts <= to && s.socPercent != null) return s.socPercent;
        }
        return null;
    }

    private static Double lastSoc(List<Sample> samples, long from, long to) {
        for (int i = samples.size() - 1; i >= 0; i--) {
            Sample s = samples.get(i);
            if (s.ts >= from && s.ts <= to && s.socPercent != null) return s.socPercent;
        }
        return null;
    }

    private static Double firstValue(List<Sample> samples, long from, boolean odometer) {
        for (Sample s : samples) {
            if (s.ts < from) continue;
            Double v = odometer ? s.odometerKm : s.socPercent;
            if (v != null) return v;
        }
        return null;
    }

    private static Double lastValue(List<Sample> samples, long from, boolean odometer) {
        for (int i = samples.size() - 1; i >= 0; i--) {
            Sample s = samples.get(i);
            if (s.ts < from) continue;
            Double v = odometer ? s.odometerKm : s.socPercent;
            if (v != null) return v;
        }
        return null;
    }

    private static List<Point> buildVehicleGraph(List<Sample> samples) {
        List<Sample> paired = new ArrayList<>();
        for (Sample s : samples) {
            if (s.tripDistanceKm != null && s.tripEnergyKwh != null) paired.add(s);
        }
        if (paired.size() < 2) return Collections.emptyList();

        Sample base = paired.get(0);
        Sample segmentStart = base;
        Sample previous = base;
        List<Point> points = new ArrayList<>();
        for (int i = 1; i < paired.size(); i++) {
            Sample s = paired.get(i);
            boolean reset = s.tripDistanceKm < previous.tripDistanceKm
                    || (s.tripEnergyKwh <= 0.11 && previous.tripEnergyKwh > 1.0);
            if (reset) {
                points.clear();
                base = s;
                segmentStart = s;
                previous = s;
                continue;
            }
            double segmentKm = s.tripDistanceKm - segmentStart.tripDistanceKm;
            if (segmentKm >= GRAPH_SEGMENT_KM) {
                addVehiclePoint(points, base.tripDistanceKm, segmentStart, s, segmentKm);
                segmentStart = s;
            }
            previous = s;
        }
        double tailKm = previous.tripDistanceKm - segmentStart.tripDistanceKm;
        if (tailKm >= 2.0) addVehiclePoint(points, base.tripDistanceKm, segmentStart, previous, tailKm);
        return points;
    }

    private static void addVehiclePoint(List<Point> points, double tripStart, Sample from, Sample to,
                                        double segmentKm) {
        double consumption = (to.tripEnergyKwh - from.tripEnergyKwh) / segmentKm * 100.0;
        if (Double.isNaN(consumption) || Double.isInfinite(consumption) || consumption < -100 || consumption > 200) return;
        points.add(new Point(to.tripDistanceKm - tripStart, consumption));
    }

    private static List<Point> buildSocGraph(List<Sample> samples, long from, double capacityKwh) {
        List<Sample> paired = new ArrayList<>();
        for (Sample s : samples) {
            if (s.ts >= from && s.odometerKm != null && s.socPercent != null) paired.add(s);
        }
        if (paired.size() < 2) return Collections.emptyList();

        Sample base = paired.get(0);
        double tripStartOdo = base.odometerKm;
        Sample segmentStart = base;
        Sample previous = base;
        List<Point> points = new ArrayList<>();
        for (int i = 1; i < paired.size(); i++) {
            Sample s = paired.get(i);
            if (s.odometerKm < segmentStart.odometerKm) {
                segmentStart = s;
                previous = s;
                continue;
            }
            double segmentKm = s.odometerKm - segmentStart.odometerKm;
            if (segmentKm >= GRAPH_SEGMENT_KM) {
                addSocPoint(points, tripStartOdo, segmentStart, s, segmentKm, capacityKwh);
                segmentStart = s;
            }
            previous = s;
        }
        double tailKm = previous.odometerKm - segmentStart.odometerKm;
        if (tailKm >= 2.0) addSocPoint(points, tripStartOdo, segmentStart, previous, tailKm, capacityKwh);
        return points;
    }

    private static void addSocPoint(List<Point> points, double tripStartOdo, Sample from, Sample to,
                                    double segmentKm, double capacityKwh) {
        if (segmentKm <= 0) return;
        double used = (from.socPercent - to.socPercent) * capacityKwh / 100.0;
        double consumption = used / segmentKm * 100.0;
        if (Double.isNaN(consumption) || Double.isInfinite(consumption) || consumption < -100 || consumption > 200) return;
        points.add(new Point(to.odometerKm - tripStartOdo, consumption));
    }
}
