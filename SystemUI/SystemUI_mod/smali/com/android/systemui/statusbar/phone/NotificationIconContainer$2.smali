.class Lcom/android/systemui/statusbar/phone/NotificationIconContainer$2;
.super Lcom/android/systemui/statusbar/stack/AnimationProperties;
.source "NotificationIconContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/AnimationProperties;-><init>()V

    .line 71
    new-instance v0, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateScale()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$2;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    .line 71
    return-void
.end method


# virtual methods
.method public getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$2;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    return-object v0
.end method
