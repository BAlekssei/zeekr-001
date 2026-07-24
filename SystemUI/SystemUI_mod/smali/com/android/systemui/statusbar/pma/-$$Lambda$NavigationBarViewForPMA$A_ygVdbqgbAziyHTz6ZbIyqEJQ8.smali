.class public final synthetic Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$A_ygVdbqgbAziyHTz6ZbIyqEJQ8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

.field private final synthetic f$1:Landroid/graphics/drawable/Drawable;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$A_ygVdbqgbAziyHTz6ZbIyqEJQ8;->f$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$A_ygVdbqgbAziyHTz6ZbIyqEJQ8;->f$1:Landroid/graphics/drawable/Drawable;

    iput p3, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$A_ygVdbqgbAziyHTz6ZbIyqEJQ8;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$A_ygVdbqgbAziyHTz6ZbIyqEJQ8;->f$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$A_ygVdbqgbAziyHTz6ZbIyqEJQ8;->f$1:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$A_ygVdbqgbAziyHTz6ZbIyqEJQ8;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->lambda$setClimateShift$20(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method
