.class final enum Lcom/android/systemui/statusbar/phone/ScrimState$7;
.super Lcom/android/systemui/statusbar/phone/ScrimState;
.source "ScrimState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ScrimState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "index"    # I

    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/ScrimState;-><init>(Ljava/lang/String;IILcom/android/systemui/statusbar/phone/ScrimState$1;)V

    return-void
.end method


# virtual methods
.method public prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .locals 4
    .param p1, "previousState"    # Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 144
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mCurrentBehindAlpha:F

    .line 145
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mCurrentInFrontAlpha:F

    .line 146
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mAnimationDuration:J

    .line 147
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mLaunchingAffordanceWithPreview:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mAnimateChange:Z

    .line 149
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x1000000

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/statusbar/phone/ScrimState$7;->updateScrimColor(Lcom/android/systemui/statusbar/ScrimView;FI)V

    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/statusbar/phone/ScrimState$7;->updateScrimColor(Lcom/android/systemui/statusbar/ScrimView;FI)V

    .line 154
    iput v3, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mCurrentInFrontTint:I

    .line 155
    iput v3, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mCurrentBehindTint:I

    .line 156
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mBlankScreen:Z

    goto :goto_0

    .line 158
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mCurrentInFrontTint:I

    .line 159
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mCurrentBehindTint:I

    .line 160
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mBlankScreen:Z

    .line 162
    :goto_0
    return-void
.end method
