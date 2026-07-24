.class public Lcom/sensorsdata/analytics/android/sdk/visual/snap/ResourceReader$Ids;
.super Lcom/sensorsdata/analytics/android/sdk/visual/snap/ResourceReader;
.source "ResourceReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensorsdata/analytics/android/sdk/visual/snap/ResourceReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ids"
.end annotation


# instance fields
.field private final mResourcePackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p1, "resourcePackageName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 138
    invoke-direct {p0, p2}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/ResourceReader;-><init>(Landroid/content/Context;)V

    .line 139
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/ResourceReader$Ids;->mResourcePackageName:Ljava/lang/String;

    .line 140
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/ResourceReader$Ids;->initialize()V

    .line 141
    return-void
.end method


# virtual methods
.method protected getLocalClassName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/ResourceReader$Ids;->mResourcePackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".R$id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSystemClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 145
    const-class v0, Landroid/R$id;

    return-object v0
.end method
