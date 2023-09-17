.class Lcom/wen/fluorescence/materialcalendarview/MonthView;
.super Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;
.source "MonthView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;Lcom/wen/fluorescence/materialcalendarview/CalendarDay;IZ)V
    .locals 0
    .param p1, "view"    # Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "month"    # Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    .param p3, "firstDayOfWeek"    # I
    .param p4, "showWeekDays"    # Z

    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;-><init>(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;Lcom/wen/fluorescence/materialcalendarview/CalendarDay;IZ)V

    .line 19
    return-void
.end method


# virtual methods
.method protected buildDayViews(Ljava/util/Collection;Ljava/util/Calendar;)V
    .locals 4
    .param p2, "calendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/wen/fluorescence/materialcalendarview/DayView;",
            ">;",
            "Ljava/util/Calendar;",
            ")V"
        }
    .end annotation

    .line 23
    .local p1, "dayViews":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/wen/fluorescence/materialcalendarview/DayView;>;"
    const/4 v0, 0x0

    move v1, v0

    .line 23
    .local v1, "r":I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 24
    move v2, v0

    .line 24
    .local v2, "i":I
    :goto_1
    const/4 v3, 0x7

    if-ge v2, v3, :cond_0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/wen/fluorescence/materialcalendarview/MonthView;->addDayView(Ljava/util/Collection;Ljava/util/Calendar;)V

    .line 24
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 23
    .end local v2    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28
    .end local v1    # "r":I
    :cond_1
    return-void
.end method

.method public getMonth()Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MonthView;->getFirstViewDay()Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v0

    return-object v0
.end method

.method protected getRows()I
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/wen/fluorescence/materialcalendarview/MonthView;->showWeekDays:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    :goto_0
    return v0
.end method

.method protected isDayEnabled(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)Z
    .locals 2
    .param p1, "day"    # Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 36
    invoke-virtual {p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->getMonth()I

    move-result v0

    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MonthView;->getFirstViewDay()Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->getMonth()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
