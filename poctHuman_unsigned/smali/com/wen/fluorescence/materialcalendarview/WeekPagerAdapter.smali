.class public Lcom/wen/fluorescence/materialcalendarview/WeekPagerAdapter;
.super Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;
.source "WeekPagerAdapter.java"


# annotations
.annotation build Lcom/wen/fluorescence/materialcalendarview/Experimental;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wen/fluorescence/materialcalendarview/WeekPagerAdapter$Weekly;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter<",
        "Lcom/wen/fluorescence/materialcalendarview/WeekView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;)V
    .locals 0
    .param p1, "mcv"    # Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;

    .line 12
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;-><init>(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;)V

    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic clearSelections()V
    .locals 0

    .line 8
    invoke-super {p0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->clearSelections()V

    return-void
.end method

.method protected createRangeIndex(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)Lcom/wen/fluorescence/materialcalendarview/DateRangeIndex;
    .locals 2
    .param p1, "min"    # Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    .param p2, "max"    # Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 33
    new-instance v0, Lcom/wen/fluorescence/materialcalendarview/WeekPagerAdapter$Weekly;

    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/WeekPagerAdapter;->mcv:Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;

    invoke-virtual {v1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getFirstDayOfWeek()I

    move-result v1

    invoke-direct {v0, p1, p2, v1}, Lcom/wen/fluorescence/materialcalendarview/WeekPagerAdapter$Weekly;-><init>(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Lcom/wen/fluorescence/materialcalendarview/CalendarDay;I)V

    return-object v0
.end method

.method protected bridge synthetic createView(I)Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/WeekPagerAdapter;->createView(I)Lcom/wen/fluorescence/materialcalendarview/WeekView;

    move-result-object p1

    return-object p1
.end method

.method protected createView(I)Lcom/wen/fluorescence/materialcalendarview/WeekView;
    .locals 5
    .param p1, "position"    # I

    .line 17
    new-instance v0, Lcom/wen/fluorescence/materialcalendarview/WeekView;

    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/WeekPagerAdapter;->mcv:Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;

    invoke-virtual {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/WeekPagerAdapter;->getItem(I)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v2

    iget-object v3, p0, Lcom/wen/fluorescence/materialcalendarview/WeekPagerAdapter;->mcv:Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;

    invoke-virtual {v3}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getFirstDayOfWeek()I

    move-result v3

    iget-boolean v4, p0, Lcom/wen/fluorescence/materialcalendarview/WeekPagerAdapter;->showWeekDays:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wen/fluorescence/materialcalendarview/WeekView;-><init>(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;Lcom/wen/fluorescence/materialcalendarview/CalendarDay;IZ)V

    return-object v0
.end method

.method public bridge synthetic destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 8
    invoke-super {p0, p1, p2, p3}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic getCount()I
    .locals 1

    .line 8
    invoke-super {p0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getIndexForDay(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)I
    .locals 0

    .line 8
    invoke-super {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->getIndexForDay(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getItem(I)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    .locals 0

    .line 8
    invoke-super {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->getItem(I)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getItemPosition(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 8
    invoke-super {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getPageTitle(I)Ljava/lang/CharSequence;
    .locals 0

    .line 8
    invoke-super {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getRangeIndex()Lcom/wen/fluorescence/materialcalendarview/DateRangeIndex;
    .locals 1

    .line 8
    invoke-super {p0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->getRangeIndex()Lcom/wen/fluorescence/materialcalendarview/DateRangeIndex;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSelectedDates()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 8
    invoke-super {p0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->getSelectedDates()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getShowOtherDates()I
    .locals 1

    .line 8
    invoke-super {p0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->getShowOtherDates()I

    move-result v0

    return v0
.end method

.method protected bridge synthetic indexOf(Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;)I
    .locals 0

    .line 8
    check-cast p1, Lcom/wen/fluorescence/materialcalendarview/WeekView;

    invoke-virtual {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/WeekPagerAdapter;->indexOf(Lcom/wen/fluorescence/materialcalendarview/WeekView;)I

    move-result p1

    return p1
.end method

.method protected indexOf(Lcom/wen/fluorescence/materialcalendarview/WeekView;)I
    .locals 2
    .param p1, "view"    # Lcom/wen/fluorescence/materialcalendarview/WeekView;

    .line 22
    invoke-virtual {p1}, Lcom/wen/fluorescence/materialcalendarview/WeekView;->getFirstViewDay()Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v0

    .line 23
    .local v0, "week":Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/WeekPagerAdapter;->getRangeIndex()Lcom/wen/fluorescence/materialcalendarview/DateRangeIndex;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/wen/fluorescence/materialcalendarview/DateRangeIndex;->indexOf(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)I

    move-result v1

    return v1
.end method

.method public bridge synthetic instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 8
    invoke-super {p0, p1, p2}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invalidateDecorators()V
    .locals 0

    .line 8
    invoke-super {p0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->invalidateDecorators()V

    return-void
.end method

.method protected isInstanceOfView(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 28
    instance-of v0, p1, Lcom/wen/fluorescence/materialcalendarview/WeekView;

    return v0
.end method

.method public bridge synthetic isShowWeekDays()Z
    .locals 1

    .line 8
    invoke-super {p0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->isShowWeekDays()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 8
    invoke-super {p0, p1, p2}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic migrateStateAndReturn(Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;)Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;
    .locals 0

    .line 8
    invoke-super {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->migrateStateAndReturn(Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;)Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setDateSelected(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Z)V
    .locals 0

    .line 8
    invoke-super {p0, p1, p2}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->setDateSelected(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Z)V

    return-void
.end method

.method public bridge synthetic setDateTextAppearance(I)V
    .locals 0

    .line 8
    invoke-super {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->setDateTextAppearance(I)V

    return-void
.end method

.method public bridge synthetic setDayFormatter(Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;)V
    .locals 0

    .line 8
    invoke-super {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->setDayFormatter(Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;)V

    return-void
.end method

.method public bridge synthetic setDayFormatterContentDescription(Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;)V
    .locals 0

    .line 8
    invoke-super {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->setDayFormatterContentDescription(Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;)V

    return-void
.end method

.method public bridge synthetic setDecorators(Ljava/util/List;)V
    .locals 0

    .line 8
    invoke-super {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->setDecorators(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic setRangeDates(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)V
    .locals 0

    .line 8
    invoke-super {p0, p1, p2}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->setRangeDates(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)V

    return-void
.end method

.method public bridge synthetic setSelectionColor(I)V
    .locals 0

    .line 8
    invoke-super {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->setSelectionColor(I)V

    return-void
.end method

.method public bridge synthetic setSelectionEnabled(Z)V
    .locals 0

    .line 8
    invoke-super {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->setSelectionEnabled(Z)V

    return-void
.end method

.method public bridge synthetic setShowOtherDates(I)V
    .locals 0

    .line 8
    invoke-super {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->setShowOtherDates(I)V

    return-void
.end method

.method public bridge synthetic setShowWeekDays(Z)V
    .locals 0

    .line 8
    invoke-super {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->setShowWeekDays(Z)V

    return-void
.end method

.method public bridge synthetic setTitleFormatter(Lcom/wen/fluorescence/materialcalendarview/format/TitleFormatter;)V
    .locals 0
    .param p1    # Lcom/wen/fluorescence/materialcalendarview/format/TitleFormatter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 8
    invoke-super {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->setTitleFormatter(Lcom/wen/fluorescence/materialcalendarview/format/TitleFormatter;)V

    return-void
.end method

.method public bridge synthetic setWeekDayFormatter(Lcom/wen/fluorescence/materialcalendarview/format/WeekDayFormatter;)V
    .locals 0

    .line 8
    invoke-super {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->setWeekDayFormatter(Lcom/wen/fluorescence/materialcalendarview/format/WeekDayFormatter;)V

    return-void
.end method

.method public bridge synthetic setWeekDayTextAppearance(I)V
    .locals 0

    .line 8
    invoke-super {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->setWeekDayTextAppearance(I)V

    return-void
.end method
