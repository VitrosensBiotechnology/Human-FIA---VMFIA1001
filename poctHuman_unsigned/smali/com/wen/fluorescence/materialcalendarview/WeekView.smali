.class public Lcom/wen/fluorescence/materialcalendarview/WeekView;
.super Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;
.source "WeekView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation build Lcom/wen/fluorescence/materialcalendarview/Experimental;
.end annotation


# direct methods
.method public constructor <init>(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;Lcom/wen/fluorescence/materialcalendarview/CalendarDay;IZ)V
    .locals 0
    .param p1, "view"    # Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "firstViewDay"    # Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    .param p3, "firstDayOfWeek"    # I
    .param p4, "showWeekDays"    # Z

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;-><init>(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;Lcom/wen/fluorescence/materialcalendarview/CalendarDay;IZ)V

    .line 20
    return-void
.end method


# virtual methods
.method protected buildDayViews(Ljava/util/Collection;Ljava/util/Calendar;)V
    .locals 2
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

    .line 24
    .local p1, "dayViews":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/wen/fluorescence/materialcalendarview/DayView;>;"
    const/4 v0, 0x0

    .line 24
    .local v0, "i":I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/wen/fluorescence/materialcalendarview/WeekView;->addDayView(Ljava/util/Collection;Ljava/util/Calendar;)V

    .line 24
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView$LayoutParams;
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected getRows()I
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/wen/fluorescence/materialcalendarview/WeekView;->showWeekDays:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method protected isDayEnabled(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)Z
    .locals 1
    .param p1, "day"    # Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic onClick(Landroid/view/View;)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1    # Landroid/view/accessibility/AccessibilityEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 13
    invoke-super {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public bridge synthetic onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0
    .param p1    # Landroid/view/accessibility/AccessibilityNodeInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 13
    invoke-super {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public bridge synthetic onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->onLongClick(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setDateTextAppearance(I)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->setDateTextAppearance(I)V

    return-void
.end method

.method public bridge synthetic setDayFormatter(Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->setDayFormatter(Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;)V

    return-void
.end method

.method public bridge synthetic setDayFormatterContentDescription(Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->setDayFormatterContentDescription(Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;)V

    return-void
.end method

.method public bridge synthetic setMaximumDate(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->setMaximumDate(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)V

    return-void
.end method

.method public bridge synthetic setMinimumDate(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->setMinimumDate(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)V

    return-void
.end method

.method public bridge synthetic setSelectedDates(Ljava/util/Collection;)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->setSelectedDates(Ljava/util/Collection;)V

    return-void
.end method

.method public bridge synthetic setSelectionColor(I)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->setSelectionColor(I)V

    return-void
.end method

.method public bridge synthetic setSelectionEnabled(Z)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->setSelectionEnabled(Z)V

    return-void
.end method

.method public bridge synthetic setShowOtherDates(I)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->setShowOtherDates(I)V

    return-void
.end method

.method public bridge synthetic setWeekDayFormatter(Lcom/wen/fluorescence/materialcalendarview/format/WeekDayFormatter;)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->setWeekDayFormatter(Lcom/wen/fluorescence/materialcalendarview/format/WeekDayFormatter;)V

    return-void
.end method

.method public bridge synthetic setWeekDayTextAppearance(I)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->setWeekDayTextAppearance(I)V

    return-void
.end method

.method public bridge synthetic shouldDelayChildPressedState()Z
    .locals 1

    .line 13
    invoke-super {p0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->shouldDelayChildPressedState()Z

    move-result v0

    return v0
.end method
