.class public final Lcom/haibin/calendarview/TrunkBranchAnnals;
.super Ljava/lang/Object;
.source "TrunkBranchAnnals.java"


# static fields
.field private static BRANCH_STR:[Ljava/lang/String;

.field private static SHENGXIAO_STR:[Ljava/lang/String;

.field private static TRUNK_STR:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/haibin/calendarview/TrunkBranchAnnals;->TRUNK_STR:[Ljava/lang/String;

    .line 22
    sput-object v0, Lcom/haibin/calendarview/TrunkBranchAnnals;->BRANCH_STR:[Ljava/lang/String;

    .line 27
    sput-object v0, Lcom/haibin/calendarview/TrunkBranchAnnals;->SHENGXIAO_STR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBranchInt(I)I
    .locals 2
    .param p0, "year"    # I

    .line 84
    rem-int/lit8 v0, p0, 0xc

    .line 85
    .local v0, "branch":I
    if-nez v0, :cond_0

    const/16 v1, 0xb

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, -0x1

    :goto_0
    return v1
.end method

.method public static getBranchString(I)Ljava/lang/String;
    .locals 2
    .param p0, "year"    # I

    .line 73
    sget-object v0, Lcom/haibin/calendarview/TrunkBranchAnnals;->BRANCH_STR:[Ljava/lang/String;

    invoke-static {p0}, Lcom/haibin/calendarview/TrunkBranchAnnals;->getBranchInt(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getShengXiaoYear(I)Ljava/lang/String;
    .locals 2
    .param p0, "year"    # I

    .line 105
    sget-object v0, Lcom/haibin/calendarview/TrunkBranchAnnals;->SHENGXIAO_STR:[Ljava/lang/String;

    add-int/lit16 v1, p0, -0x76c

    rem-int/lit8 v1, v1, 0xc

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getTrunkBranchYear(I)Ljava/lang/String;
    .locals 4
    .param p0, "year"    # I

    .line 95
    const-string v0, "%s%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/haibin/calendarview/TrunkBranchAnnals;->getTrunkString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p0}, Lcom/haibin/calendarview/TrunkBranchAnnals;->getBranchString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTrunkInt(I)I
    .locals 2
    .param p0, "year"    # I

    .line 61
    rem-int/lit8 v0, p0, 0xa

    .line 62
    .local v0, "trunk":I
    if-nez v0, :cond_0

    const/16 v1, 0x9

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, -0x1

    :goto_0
    return v1
.end method

.method public static getTrunkString(I)Ljava/lang/String;
    .locals 2
    .param p0, "year"    # I

    .line 50
    sget-object v0, Lcom/haibin/calendarview/TrunkBranchAnnals;->TRUNK_STR:[Ljava/lang/String;

    invoke-static {p0}, Lcom/haibin/calendarview/TrunkBranchAnnals;->getTrunkInt(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 34
    sget-object v0, Lcom/haibin/calendarview/TrunkBranchAnnals;->TRUNK_STR:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 35
    return-void

    .line 37
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/haibin/calendarview/TrunkBranchAnnals;->TRUNK_STR:[Ljava/lang/String;

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/haibin/calendarview/TrunkBranchAnnals;->BRANCH_STR:[Ljava/lang/String;

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/haibin/calendarview/TrunkBranchAnnals;->SHENGXIAO_STR:[Ljava/lang/String;

    .line 40
    return-void
.end method
