.class Lcom/wen/fluorescence/materialcalendarview/WeekDayView;
.super Landroid/support/v7/widget/AppCompatTextView;
.source "WeekDayView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation build Lcom/wen/fluorescence/materialcalendarview/Experimental;
.end annotation


# instance fields
.field private dayOfWeek:I

.field private formatter:Lcom/wen/fluorescence/materialcalendarview/format/WeekDayFormatter;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dayOfWeek"    # I

    .line 24
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 20
    sget-object v0, Lcom/wen/fluorescence/materialcalendarview/format/WeekDayFormatter;->DEFAULT:Lcom/wen/fluorescence/materialcalendarview/format/WeekDayFormatter;

    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/WeekDayView;->formatter:Lcom/wen/fluorescence/materialcalendarview/format/WeekDayFormatter;

    .line 26
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/materialcalendarview/WeekDayView;->setGravity(I)V

    .line 28
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v0, :cond_0

    .line 29
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/materialcalendarview/WeekDayView;->setTextAlignment(I)V

    .line 32
    :cond_0
    invoke-virtual {p0, p2}, Lcom/wen/fluorescence/materialcalendarview/WeekDayView;->setDayOfWeek(I)V

    .line 33
    return-void
.end method


# virtual methods
.method public setDayOfWeek(I)V
    .locals 1
    .param p1, "dayOfWeek"    # I

    .line 41
    iput p1, p0, Lcom/wen/fluorescence/materialcalendarview/WeekDayView;->dayOfWeek:I

    .line 42
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/WeekDayView;->formatter:Lcom/wen/fluorescence/materialcalendarview/format/WeekDayFormatter;

    invoke-interface {v0, p1}, Lcom/wen/fluorescence/materialcalendarview/format/WeekDayFormatter;->format(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/materialcalendarview/WeekDayView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    return-void
.end method

.method public setDayOfWeek(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "calendar"    # Ljava/util/Calendar;

    .line 46
    invoke-static {p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarUtils;->getDayOfWeek(Ljava/util/Calendar;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/materialcalendarview/WeekDayView;->setDayOfWeek(I)V

    .line 47
    return-void
.end method

.method public setWeekDayFormatter(Lcom/wen/fluorescence/materialcalendarview/format/WeekDayFormatter;)V
    .locals 1
    .param p1, "formatter"    # Lcom/wen/fluorescence/materialcalendarview/format/WeekDayFormatter;

    .line 36
    if-nez p1, :cond_0

    sget-object v0, Lcom/wen/fluorescence/materialcalendarview/format/WeekDayFormatter;->DEFAULT:Lcom/wen/fluorescence/materialcalendarview/format/WeekDayFormatter;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/WeekDayView;->formatter:Lcom/wen/fluorescence/materialcalendarview/format/WeekDayFormatter;

    .line 37
    iget v0, p0, Lcom/wen/fluorescence/materialcalendarview/WeekDayView;->dayOfWeek:I

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/materialcalendarview/WeekDayView;->setDayOfWeek(I)V

    .line 38
    return-void
.end method
