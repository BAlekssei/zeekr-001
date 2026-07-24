.class Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState$EditBinding;
.super Ljava/lang/Object;
.source "EditState.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EditBinding"
.end annotation


# instance fields
.field private mAlive:Z

.field private volatile mDying:Z

.field private final mEdit:Lcom/sensorsdata/analytics/android/sdk/visual/snap/ViewVisitor;

.field private final mHandler:Landroid/os/Handler;

.field private final mViewRoot:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sensorsdata/analytics/android/sdk/visual/snap/ViewVisitor;Landroid/os/Handler;)V
    .locals 2
    .param p1, "viewRoot"    # Landroid/view/View;
    .param p2, "edit"    # Lcom/sensorsdata/analytics/android/sdk/visual/snap/ViewVisitor;
    .param p3, "uiThreadHandler"    # Landroid/os/Handler;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState$EditBinding;->mEdit:Lcom/sensorsdata/analytics/android/sdk/visual/snap/ViewVisitor;

    .line 142
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState$EditBinding;->mViewRoot:Ljava/lang/ref/WeakReference;

    .line 143
    iput-object p3, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState$EditBinding;->mHandler:Landroid/os/Handler;

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState$EditBinding;->mAlive:Z

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState$EditBinding;->mDying:Z

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 148
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState$EditBinding;->run()V

    .line 152
    return-void
.end method

.method private cleanUp()V
    .locals 4

    .line 184
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState$EditBinding;->mAlive:Z

    if-eqz v0, :cond_2

    .line 185
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState$EditBinding;->mViewRoot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 186
    .local v0, "viewRoot":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 188
    .local v1, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 189
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    .line 190
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 196
    .end local v1    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState$EditBinding;->mEdit:Lcom/sensorsdata/analytics/android/sdk/visual/snap/ViewVisitor;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/ViewVisitor;->cleanup()V

    .line 198
    .end local v0    # "viewRoot":Landroid/view/View;
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState$EditBinding;->mAlive:Z

    .line 199
    return-void
.end method


# virtual methods
.method public kill()V
    .locals 1

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState$EditBinding;->mDying:Z

    .line 180
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState$EditBinding;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 181
    return-void
.end method

.method public onGlobalLayout()V
    .locals 0

    .line 156
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState$EditBinding;->run()V

    .line 157
    return-void
.end method

.method public run()V
    .locals 4

    .line 161
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState$EditBinding;->mAlive:Z

    if-nez v0, :cond_0

    .line 162
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState$EditBinding;->mViewRoot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 166
    .local v0, "viewRoot":Landroid/view/View;
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState$EditBinding;->mDying:Z

    if-eqz v1, :cond_1

    goto :goto_0

    .line 172
    :cond_1
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState$EditBinding;->mEdit:Lcom/sensorsdata/analytics/android/sdk/visual/snap/ViewVisitor;

    invoke-virtual {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/ViewVisitor;->visit(Landroid/view/View;)V

    .line 174
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState$EditBinding;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 175
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState$EditBinding;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 176
    return-void

    .line 167
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState$EditBinding;->cleanUp()V

    .line 168
    return-void
.end method
