.class public abstract Lcom/ecarx/xui/adaptapi/peripherals/Peripherals;
.super Lcom/ecarx/xui/adaptapi/AdaptAPI;
.source "Peripherals.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/ecarx/xui/adaptapi/AdaptAPI;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/ecarx/xui/adaptapi/peripherals/Peripherals;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public abstract getIntelligentKey()Lcom/ecarx/xui/adaptapi/peripherals/wear/IIntelligentKey;
.end method

.method public abstract isIntelligentKeySupport()Z
.end method
