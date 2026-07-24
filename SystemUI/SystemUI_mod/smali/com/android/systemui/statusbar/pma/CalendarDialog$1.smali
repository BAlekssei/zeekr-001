.class Lcom/android/systemui/statusbar/pma/CalendarDialog$1;
.super Ljava/lang/Object;
.source "CalendarDialog.java"

# interfaces
.implements Lcom/haibin/calendarview/CalendarView$OnMonthChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/CalendarDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/CalendarDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/CalendarDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/CalendarDialog;

    .line 88
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog$1;->this$0:Lcom/android/systemui/statusbar/pma/CalendarDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMonthChange(II)V
    .locals 3
    .param p1, "yearCalendar"    # I
    .param p2, "monthCalendar"    # I

.line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog$1;->this$0:Lcom/android/systemui/statusbar/pma/CalendarDialog;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CalendarDialog;->access$000(Lcom/android/systemui/statusbar/pma/CalendarDialog;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    # Вызываем наш метод перевода месяца, передаем номер месяца (p2)
    invoke-static {p2}, Lcom/android/systemui/statusbar/pma/CalendarDialog;->getMonthText(I)Ljava/lang/String;

    move-result-object v2

    # Добавляем текстовое название месяца
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # Добавляем пробел
    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # Добавляем год (p1)
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    # Собираем строку и выводим на экран
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    const v0, 0x3ecccccd    # 0.4f

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0xc

    if-ne p2, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog$1;->this$0:Lcom/android/systemui/statusbar/pma/CalendarDialog;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CalendarDialog;->year:I

    add-int/lit8 v2, v2, 0xa

    if-ne v2, p1, :cond_0

    .line 93
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog$1;->this$0:Lcom/android/systemui/statusbar/pma/CalendarDialog;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/CalendarDialog;->access$100(Lcom/android/systemui/statusbar/pma/CalendarDialog;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog$1;->this$0:Lcom/android/systemui/statusbar/pma/CalendarDialog;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CalendarDialog;->access$200(Lcom/android/systemui/statusbar/pma/CalendarDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 95
    :cond_0
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog$1;->this$0:Lcom/android/systemui/statusbar/pma/CalendarDialog;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CalendarDialog;->year:I

    add-int/lit8 v2, v2, -0xa

    if-ne v2, p1, :cond_1

    .line 96
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog$1;->this$0:Lcom/android/systemui/statusbar/pma/CalendarDialog;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/CalendarDialog;->access$100(Lcom/android/systemui/statusbar/pma/CalendarDialog;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 97
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog$1;->this$0:Lcom/android/systemui/statusbar/pma/CalendarDialog;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CalendarDialog;->access$200(Lcom/android/systemui/statusbar/pma/CalendarDialog;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog$1;->this$0:Lcom/android/systemui/statusbar/pma/CalendarDialog;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CalendarDialog;->access$100(Lcom/android/systemui/statusbar/pma/CalendarDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog$1;->this$0:Lcom/android/systemui/statusbar/pma/CalendarDialog;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CalendarDialog;->access$200(Lcom/android/systemui/statusbar/pma/CalendarDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 102
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog$1;->this$0:Lcom/android/systemui/statusbar/pma/CalendarDialog;

    iput p1, v0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->calendarYear:I

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog$1;->this$0:Lcom/android/systemui/statusbar/pma/CalendarDialog;

    iput p2, v0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->calendarMonth:I

    .line 104
    return-void
.end method
