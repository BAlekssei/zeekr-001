.class public final synthetic Lcom/android/systemui/statusbar/pma/-$$Lambda$SuggestAppUtils$SJ13yLS9sIx0xN_nQrCpvT1RcgY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$SuggestAppUtils$SJ13yLS9sIx0xN_nQrCpvT1RcgY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$SuggestAppUtils$SJ13yLS9sIx0xN_nQrCpvT1RcgY;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$SuggestAppUtils$SJ13yLS9sIx0xN_nQrCpvT1RcgY;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$SuggestAppUtils$SJ13yLS9sIx0xN_nQrCpvT1RcgY;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$SuggestAppUtils$SJ13yLS9sIx0xN_nQrCpvT1RcgY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/app/usage/UsageStats;

    check-cast p2, Landroid/app/usage/UsageStats;

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/pma/SuggestAppUtils;->lambda$claResult$0(Landroid/app/usage/UsageStats;Landroid/app/usage/UsageStats;)I

    move-result p1

    return p1
.end method
