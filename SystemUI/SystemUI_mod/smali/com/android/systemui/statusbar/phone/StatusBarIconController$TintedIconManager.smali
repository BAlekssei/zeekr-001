.class public Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;
.super Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;
.source "StatusBarIconController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarIconController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TintedIconManager"
.end annotation


# instance fields
.field private mColor:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "group"    # Landroid/view/ViewGroup;

    .line 158
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;-><init>(Landroid/view/ViewGroup;)V

    .line 159
    return-void
.end method


# virtual methods
.method protected createDemoStatusIcons()Lcom/android/systemui/statusbar/phone/DemoStatusIcons;
    .locals 2

    .line 183
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->createDemoStatusIcons()Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    move-result-object v0

    .line 184
    .local v0, "icons":Lcom/android/systemui/statusbar/phone/DemoStatusIcons;
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->mColor:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setColor(I)V

    .line 185
    return-object v0
.end method

.method protected onIconAdded(ILjava/lang/String;ZLcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "slot"    # Ljava/lang/String;
    .param p3, "blocked"    # Z
    .param p4, "holder"    # Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 164
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->addHolder(ILjava/lang/String;ZLcom/android/systemui/statusbar/phone/StatusBarIconHolder;)Lcom/android/systemui/statusbar/StatusIconDisplayable;

    move-result-object v0

    .line 165
    .local v0, "view":Lcom/android/systemui/statusbar/StatusIconDisplayable;
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->mColor:I

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setStaticDrawableColor(I)V

    .line 166
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->mColor:I

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setDecorColor(I)V

    .line 167
    return-void
.end method

.method public setTint(I)V
    .locals 4
    .param p1, "color"    # I

    .line 170
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->mColor:I

    .line 171
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 172
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 173
    .local v1, "child":Landroid/view/View;
    instance-of v2, v1, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    if-eqz v2, :cond_0

    .line 174
    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    .line 175
    .local v2, "icon":Lcom/android/systemui/statusbar/StatusIconDisplayable;
    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->mColor:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setStaticDrawableColor(I)V

    .line 176
    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->mColor:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setDecorColor(I)V

    .line 171
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "icon":Lcom/android/systemui/statusbar/StatusIconDisplayable;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
