.class Lcom/wen/fluorescence/materialcalendarview/MonthPagerAdapter;
.super Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;
.source "MonthPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wen/fluorescence/materialcalendarview/MonthPagerAdapter$Monthly;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter<",
        "Lcom/wen/fluorescence/materialcalendarview/MonthView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;)V
    .locals 0
    .param p1, "mcv"    # Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;

    .line 12
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;-><init>(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected createRangeIndex(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)Lcom/wen/fluorescence/materialcalendarview/DateRangeIndex;
    .locals 1
    .param p1, "min"    # Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    .param p2, "max"    # Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 33
    new-instance v0, Lcom/wen/fluorescence/materialcalendarview/MonthPagerAdapter$Monthly;

    invoke-direct {v0, p1, p2}, Lcom/wen/fluorescence/materialcalendarview/MonthPagerAdapter$Monthly;-><init>(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)V

    return-object v0
.end method

.method protected bridge synthetic createView(I)Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/MonthPagerAdapter;->createView(I)Lcom/wen/fluorescence/materialcalendarview/MonthView;

    move-result-object p1

    return-object p1
.end method

.method protected createView(I)Lcom/wen/fluorescence/materialcalendarview/MonthView;
    .locals 5
    .param p1, "position"    # I

    .line 17
    new-instance v0, Lcom/wen/fluorescence/materialcalendarview/MonthView;

    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/MonthPagerAdapter;->mcv:Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;

    invoke-virtual {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/MonthPagerAdapter;->getItem(I)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v2

    iget-object v3, p0, Lcom/wen/fluorescence/materialcalendarview/MonthPagerAdapter;->mcv:Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;

    invoke-virtual {v3}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getFirstDayOfWeek()I

    move-result v3

    iget-boolean v4, p0, Lcom/wen/fluorescence/materialcalendarview/MonthPagerAdapter;->showWeekDays:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wen/fluorescence/materialcalendarview/MonthView;-><init>(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;Lcom/wen/fluorescence/materialcalendarview/CalendarDay;IZ)V

    return-object v0
.end method

.method protected bridge synthetic indexOf(Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;)I
    .locals 0

    .line 9
    check-cast p1, Lcom/wen/fluorescence/materialcalendarview/MonthView;

    invoke-virtual {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/MonthPagerAdapter;->indexOf(Lcom/wen/fluorescence/materialcalendarview/MonthView;)I

    move-result p1

    return p1
.end method

.method protected indexOf(Lcom/wen/fluorescence/materialcalendarview/MonthView;)I
    .locals 2
    .param p1, "view"    # Lcom/wen/fluorescence/materialcalendarview/MonthView;

    .line 22
    invoke-virtual {p1}, Lcom/wen/fluorescence/materialcalendarview/MonthView;->getMonth()Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v0

    .line 23
    .local v0, "month":Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MonthPagerAdapter;->getRangeIndex()Lcom/wen/fluorescence/materialcalendarview/DateRangeIndex;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/wen/fluorescence/materialcalendarview/DateRangeIndex;->indexOf(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)I

    move-result v1

    return v1
.end method

.method protected isInstanceOfView(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 28
    instance-of v0, p1, Lcom/wen/fluorescence/materialcalendarview/MonthView;

    return v0
.end method
