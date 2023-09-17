.class abstract Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "CalendarPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;",
        ">",
        "Landroid/support/v4/view/PagerAdapter;"
    }
.end annotation


# instance fields
.field private color:Ljava/lang/Integer;

.field private final currentViews:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TV;>;"
        }
    .end annotation
.end field

.field private dateTextAppearance:Ljava/lang/Integer;

.field private dayFormatter:Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;

.field private dayFormatterContentDescription:Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;

.field private decoratorResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wen/fluorescence/materialcalendarview/DecoratorResult;",
            ">;"
        }
    .end annotation
.end field

.field private decorators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wen/fluorescence/materialcalendarview/DayViewDecorator;",
            ">;"
        }
    .end annotation
.end field

.field private maxDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

.field protected final mcv:Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;

.field private minDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

.field private rangeIndex:Lcom/wen/fluorescence/materialcalendarview/DateRangeIndex;

.field private selectedDates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wen/fluorescence/materialcalendarview/CalendarDay;",
            ">;"
        }
    .end annotation
.end field

.field private selectionEnabled:Z

.field private showOtherDates:I

.field showWeekDays:Z

.field private titleFormatter:Lcom/wen/fluorescence/materialcalendarview/format/TitleFormatter;

.field private final today:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

.field private weekDayFormatter:Lcom/wen/fluorescence/materialcalendarview/format/WeekDayFormatter;

.field private weekDayTextAppearance:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;)V
    .locals 2
    .param p1, "mcv"    # Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;

    .line 46
    .local p0, "this":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;, "Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter<TV;>;"
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->titleFormatter:Lcom/wen/fluorescence/materialcalendarview/format/TitleFormatter;

    .line 29
    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->color:Ljava/lang/Integer;

    .line 30
    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->dateTextAppearance:Ljava/lang/Integer;

    .line 31
    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->weekDayTextAppearance:Ljava/lang/Integer;

    .line 32
    const/4 v1, 0x4

    iput v1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->showOtherDates:I

    .line 34
    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->minDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 35
    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->maxDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->selectedDates:Ljava/util/List;

    .line 38
    sget-object v1, Lcom/wen/fluorescence/materialcalendarview/format/WeekDayFormatter;->DEFAULT:Lcom/wen/fluorescence/materialcalendarview/format/WeekDayFormatter;

    iput-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->weekDayFormatter:Lcom/wen/fluorescence/materialcalendarview/format/WeekDayFormatter;

    .line 39
    sget-object v1, Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;->DEFAULT:Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;

    iput-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->dayFormatter:Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;

    .line 40
    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->dayFormatter:Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;

    iput-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->dayFormatterContentDescription:Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->decorators:Ljava/util/List;

    .line 42
    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->decoratorResults:Ljava/util/List;

    .line 43
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->selectionEnabled:Z

    .line 47
    iput-object p1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->mcv:Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;

    .line 48
    invoke-static {}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->today()Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v1

    iput-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->today:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 49
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->currentViews:Ljava/util/ArrayDeque;

    .line 50
    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->currentViews:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 51
    invoke-virtual {p0, v0, v0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->setRangeDates(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)V

    .line 52
    return-void
.end method

.method private invalidateSelectedDates()V
    .locals 3

    .line 311
    .local p0, "this":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;, "Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter<TV;>;"
    invoke-direct {p0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->validateSelectedDates()V

    .line 312
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->currentViews:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;

    .line 313
    .local v1, "pagerView":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;, "TV;"
    iget-object v2, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->selectedDates:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->setSelectedDates(Ljava/util/Collection;)V

    .line 314
    .end local v1    # "pagerView":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;, "TV;"
    goto :goto_0

    .line 315
    :cond_0
    return-void
.end method

.method private validateSelectedDates()V
    .locals 3

    .line 318
    .local p0, "this":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;, "Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter<TV;>;"
    const/4 v0, 0x0

    .line 318
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->selectedDates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 319
    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->selectedDates:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 321
    .local v1, "date":Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    iget-object v2, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->minDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->minDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    invoke-virtual {v2, v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->isAfter(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->maxDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->maxDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    invoke-virtual {v2, v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->isBefore(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 322
    :cond_1
    iget-object v2, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->selectedDates:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 323
    iget-object v2, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->mcv:Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;

    invoke-virtual {v2, v1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->onDateUnselected(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)V

    .line 324
    add-int/lit8 v0, v0, -0x1

    .line 318
    .end local v1    # "date":Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 327
    .end local v0    # "i":I
    :cond_3
    return-void
.end method


# virtual methods
.method public clearSelections()V
    .locals 1

    .line 292
    .local p0, "this":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;, "Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter<TV;>;"
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->selectedDates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 293
    invoke-direct {p0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->invalidateSelectedDates()V

    .line 294
    return-void
.end method

.method protected abstract createRangeIndex(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)Lcom/wen/fluorescence/materialcalendarview/DateRangeIndex;
.end method

.method protected abstract createView(I)Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 189
    .local p0, "this":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;, "Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter<TV;>;"
    move-object v0, p3

    check-cast v0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;

    .line 190
    .local v0, "pagerView":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;, "TV;"
    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->currentViews:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 191
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 192
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 75
    .local p0, "this":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;, "Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter<TV;>;"
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->rangeIndex:Lcom/wen/fluorescence/materialcalendarview/DateRangeIndex;

    invoke-interface {v0}, Lcom/wen/fluorescence/materialcalendarview/DateRangeIndex;->getCount()I

    move-result v0

    return v0
.end method

.method protected getDateTextAppearance()I
    .locals 1

    .line 339
    .local p0, "this":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;, "Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter<TV;>;"
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->dateTextAppearance:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->dateTextAppearance:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getIndexForDay(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)I
    .locals 1
    .param p1, "day"    # Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 102
    .local p0, "this":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;, "Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter<TV;>;"
    if-nez p1, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->getCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->minDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->minDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    invoke-virtual {p1, v0}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->isBefore(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    const/4 v0, 0x0

    return v0

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->maxDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->maxDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    invoke-virtual {p1, v0}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->isAfter(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->rangeIndex:Lcom/wen/fluorescence/materialcalendarview/DateRangeIndex;

    invoke-interface {v0, p1}, Lcom/wen/fluorescence/materialcalendarview/DateRangeIndex;->indexOf(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    .locals 1
    .param p1, "position"    # I

    .line 330
    .local p0, "this":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;, "Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter<TV;>;"
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->rangeIndex:Lcom/wen/fluorescence/materialcalendarview/DateRangeIndex;

    invoke-interface {v0, p1}, Lcom/wen/fluorescence/materialcalendarview/DateRangeIndex;->getItem(I)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v0

    return-object v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 124
    .local p0, "this":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;, "Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter<TV;>;"
    invoke-virtual {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->isInstanceOfView(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x2

    if-nez v0, :cond_0

    .line 125
    return v1

    .line 127
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;

    .line 128
    .local v0, "pagerView":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;
    invoke-virtual {v0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->getFirstViewDay()Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v2

    .line 129
    .local v2, "firstViewDay":Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    if-nez v2, :cond_1

    .line 130
    return v1

    .line 132
    :cond_1
    move-object v3, p1

    check-cast v3, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;

    invoke-virtual {p0, v3}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->indexOf(Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;)I

    move-result v3

    .line 133
    .local v3, "index":I
    if-gez v3, :cond_2

    .line 134
    return v1

    .line 136
    :cond_2
    return v3
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    .line 80
    .local p0, "this":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;, "Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter<TV;>;"
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->titleFormatter:Lcom/wen/fluorescence/materialcalendarview/format/TitleFormatter;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->titleFormatter:Lcom/wen/fluorescence/materialcalendarview/format/TitleFormatter;

    invoke-virtual {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->getItem(I)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/wen/fluorescence/materialcalendarview/format/TitleFormatter;->format(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getRangeIndex()Lcom/wen/fluorescence/materialcalendarview/DateRangeIndex;
    .locals 1

    .line 288
    .local p0, "this":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;, "Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter<TV;>;"
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->rangeIndex:Lcom/wen/fluorescence/materialcalendarview/DateRangeIndex;

    return-object v0
.end method

.method public getSelectedDates()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wen/fluorescence/materialcalendarview/CalendarDay;",
            ">;"
        }
    .end annotation

    .line 335
    .local p0, "this":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;, "Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter<TV;>;"
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->selectedDates:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getShowOtherDates()I
    .locals 1

    .line 252
    .local p0, "this":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;, "Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter<TV;>;"
    iget v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->showOtherDates:I

    return v0
.end method

.method protected getWeekDayTextAppearance()I
    .locals 1

    .line 343
    .local p0, "this":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;, "Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter<TV;>;"
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->weekDayTextAppearance:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->weekDayTextAppearance:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method protected abstract indexOf(Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "position"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 142
    .local p0, "this":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;, "Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter<TV;>;"
    invoke-virtual {p0, p2}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->createView(I)Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;

    move-result-object v0

    .line 143
    .local v0, "pagerView":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;, "TV;"
    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->mcv:Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;

    invoke-virtual {v1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getCalendarContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 144
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->setAlpha(F)V

    .line 145
    iget-boolean v1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->selectionEnabled:Z

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->setSelectionEnabled(Z)V

    .line 147
    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->weekDayFormatter:Lcom/wen/fluorescence/materialcalendarview/format/WeekDayFormatter;

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->setWeekDayFormatter(Lcom/wen/fluorescence/materialcalendarview/format/WeekDayFormatter;)V

    .line 148
    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->dayFormatter:Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->setDayFormatter(Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;)V

    .line 149
    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->dayFormatterContentDescription:Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->setDayFormatterContentDescription(Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;)V

    .line 150
    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->color:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->color:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->setSelectionColor(I)V

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->dateTextAppearance:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 154
    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->dateTextAppearance:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->setDateTextAppearance(I)V

    .line 156
    :cond_1
    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->weekDayTextAppearance:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 157
    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->weekDayTextAppearance:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->setWeekDayTextAppearance(I)V

    .line 159
    :cond_2
    iget v1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->showOtherDates:I

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->setShowOtherDates(I)V

    .line 160
    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->minDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->setMinimumDate(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)V

    .line 161
    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->maxDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->setMaximumDate(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)V

    .line 162
    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->selectedDates:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->setSelectedDates(Ljava/util/Collection;)V

    .line 164
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 165
    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->currentViews:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->decoratorResults:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->setDayViewDecorators(Ljava/util/List;)V

    .line 169
    return-object v0
.end method

.method public invalidateDecorators()V
    .locals 5

    .line 60
    .local p0, "this":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;, "Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter<TV;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->decoratorResults:Ljava/util/List;

    .line 61
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->decorators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wen/fluorescence/materialcalendarview/DayViewDecorator;

    .line 62
    .local v1, "decorator":Lcom/wen/fluorescence/materialcalendarview/DayViewDecorator;
    new-instance v2, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;

    invoke-direct {v2}, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;-><init>()V

    .line 63
    .local v2, "facade":Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;
    invoke-interface {v1, v2}, Lcom/wen/fluorescence/materialcalendarview/DayViewDecorator;->decorate(Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;)V

    .line 64
    invoke-virtual {v2}, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;->isDecorated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    iget-object v3, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->decoratorResults:Ljava/util/List;

    new-instance v4, Lcom/wen/fluorescence/materialcalendarview/DecoratorResult;

    invoke-direct {v4, v1, v2}, Lcom/wen/fluorescence/materialcalendarview/DecoratorResult;-><init>(Lcom/wen/fluorescence/materialcalendarview/DayViewDecorator;Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .end local v1    # "decorator":Lcom/wen/fluorescence/materialcalendarview/DayViewDecorator;
    .end local v2    # "facade":Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;
    :cond_0
    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->currentViews:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;

    .line 69
    .local v1, "pagerView":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;, "TV;"
    iget-object v2, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->decoratorResults:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->setDayViewDecorators(Ljava/util/List;)V

    .line 70
    .end local v1    # "pagerView":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;, "TV;"
    goto :goto_1

    .line 71
    :cond_2
    return-void
.end method

.method protected abstract isInstanceOfView(Ljava/lang/Object;)Z
.end method

.method public isShowWeekDays()Z
    .locals 1

    .line 177
    .local p0, "this":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;, "Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter<TV;>;"
    iget-boolean v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->showWeekDays:Z

    return v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "object"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 196
    .local p0, "this":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;, "Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter<TV;>;"
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public migrateStateAndReturn(Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;)Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter<",
            "*>;)",
            "Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter<",
            "*>;"
        }
    .end annotation

    .line 84
    .local p0, "this":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;, "Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter<TV;>;"
    .local p1, "newAdapter":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;, "Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter<*>;"
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->titleFormatter:Lcom/wen/fluorescence/materialcalendarview/format/TitleFormatter;

    iput-object v0, p1, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->titleFormatter:Lcom/wen/fluorescence/materialcalendarview/format/TitleFormatter;

    .line 85
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->color:Ljava/lang/Integer;

    iput-object v0, p1, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->color:Ljava/lang/Integer;

    .line 86
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->dateTextAppearance:Ljava/lang/Integer;

    iput-object v0, p1, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->dateTextAppearance:Ljava/lang/Integer;

    .line 87
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->weekDayTextAppearance:Ljava/lang/Integer;

    iput-object v0, p1, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->weekDayTextAppearance:Ljava/lang/Integer;

    .line 88
    iget v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->showOtherDates:I

    iput v0, p1, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->showOtherDates:I

    .line 89
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->minDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    iput-object v0, p1, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->minDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 90
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->maxDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    iput-object v0, p1, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->maxDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 91
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->selectedDates:Ljava/util/List;

    iput-object v0, p1, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->selectedDates:Ljava/util/List;

    .line 92
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->weekDayFormatter:Lcom/wen/fluorescence/materialcalendarview/format/WeekDayFormatter;

    iput-object v0, p1, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->weekDayFormatter:Lcom/wen/fluorescence/materialcalendarview/format/WeekDayFormatter;

    .line 93
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->dayFormatter:Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;

    iput-object v0, p1, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->dayFormatter:Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;

    .line 94
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->dayFormatterContentDescription:Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;

    iput-object v0, p1, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->dayFormatterContentDescription:Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;

    .line 95
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->decorators:Ljava/util/List;

    iput-object v0, p1, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->decorators:Ljava/util/List;

    .line 96
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->decoratorResults:Ljava/util/List;

    iput-object v0, p1, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->decoratorResults:Ljava/util/List;

    .line 97
    iget-boolean v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->selectionEnabled:Z

    iput-boolean v0, p1, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->selectionEnabled:Z

    .line 98
    return-object p1
.end method

.method public setDateSelected(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Z)V
    .locals 1
    .param p1, "day"    # Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    .param p2, "selected"    # Z

    .line 297
    .local p0, "this":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;, "Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter<TV;>;"
    if-eqz p2, :cond_0

    .line 298
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->selectedDates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->selectedDates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    invoke-direct {p0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->invalidateSelectedDates()V

    goto :goto_0

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->selectedDates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->selectedDates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 305
    invoke-direct {p0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->invalidateSelectedDates()V

    .line 308
    :cond_1
    :goto_0
    return-void
.end method

.method public setDateTextAppearance(I)V
    .locals 2
    .param p1, "taId"    # I

    .line 211
    .local p0, "this":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;, "Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter<TV;>;"
    if-nez p1, :cond_0

    .line 212
    return-void

    .line 214
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->dateTextAppearance:Ljava/lang/Integer;

    .line 215
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->currentViews:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;

    .line 216
    .local v1, "pagerView":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;, "TV;"
    invoke-virtual {v1, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->setDateTextAppearance(I)V

    .line 217
    .end local v1    # "pagerView":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;, "TV;"
    goto :goto_0

    .line 218
    :cond_1
    return-void
.end method

.method public setDayFormatter(Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;)V
    .locals 2
    .param p1, "formatter"    # Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;

    .line 235
    .local p0, "this":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;, "Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter<TV;>;"
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->dayFormatterContentDescription:Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;

    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->dayFormatter:Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;

    if-ne v0, v1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->dayFormatterContentDescription:Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;

    :goto_0
    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->dayFormatterContentDescription:Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;

    .line 237
    iput-object p1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->dayFormatter:Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;

    .line 238
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->currentViews:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;

    .line 239
    .local v1, "pagerView":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;, "TV;"
    invoke-virtual {v1, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->setDayFormatter(Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;)V

    .line 240
    .end local v1    # "pagerView":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;, "TV;"
    goto :goto_1

    .line 241
    :cond_1
    return-void
.end method

.method public setDayFormatterContentDescription(Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;)V
    .locals 2
    .param p1, "formatter"    # Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;

    .line 244
    .local p0, "this":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;, "Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter<TV;>;"
    iput-object p1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->dayFormatterContentDescription:Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;

    .line 245
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->currentViews:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;

    .line 246
    .local v1, "pagerView":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;, "TV;"
    invoke-virtual {v1, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->setDayFormatterContentDescription(Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;)V

    .line 247
    .end local v1    # "pagerView":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;, "TV;"
    goto :goto_0

    .line 248
    :cond_0
    return-void
.end method

.method public setDecorators(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wen/fluorescence/materialcalendarview/DayViewDecorator;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p0, "this":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;, "Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter<TV;>;"
    .local p1, "decorators":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/materialcalendarview/DayViewDecorator;>;"
    iput-object p1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->decorators:Ljava/util/List;

    .line 56
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->invalidateDecorators()V

    .line 57
    return-void
.end method

.method public setRangeDates(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)V
    .locals 3
    .param p1, "min"    # Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    .param p2, "max"    # Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 266
    .local p0, "this":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;, "Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter<TV;>;"
    iput-object p1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->minDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 267
    iput-object p2, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->maxDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 268
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->currentViews:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;

    .line 269
    .local v1, "pagerView":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;, "TV;"
    invoke-virtual {v1, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->setMinimumDate(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)V

    .line 270
    invoke-virtual {v1, p2}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->setMaximumDate(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)V

    .line 271
    .end local v1    # "pagerView":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;, "TV;"
    goto :goto_0

    .line 273
    :cond_0
    if-nez p1, :cond_1

    .line 274
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->today:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    invoke-virtual {v0}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, -0xc8

    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->today:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    invoke-virtual {v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->getMonth()I

    move-result v1

    iget-object v2, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->today:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    invoke-virtual {v2}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->getDay()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->from(III)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object p1

    .line 277
    :cond_1
    if-nez p2, :cond_2

    .line 278
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->today:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    invoke-virtual {v0}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, 0xc8

    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->today:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    invoke-virtual {v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->getMonth()I

    move-result v1

    iget-object v2, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->today:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    invoke-virtual {v2}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->getDay()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->from(III)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object p2

    .line 281
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->createRangeIndex(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)Lcom/wen/fluorescence/materialcalendarview/DateRangeIndex;

    move-result-object v0

    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->rangeIndex:Lcom/wen/fluorescence/materialcalendarview/DateRangeIndex;

    .line 283
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->notifyDataSetChanged()V

    .line 284
    invoke-direct {p0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->invalidateSelectedDates()V

    .line 285
    return-void
.end method

.method public setSelectionColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 204
    .local p0, "this":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;, "Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter<TV;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->color:Ljava/lang/Integer;

    .line 205
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->currentViews:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;

    .line 206
    .local v1, "pagerView":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;, "TV;"
    invoke-virtual {v1, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->setSelectionColor(I)V

    .line 207
    .end local v1    # "pagerView":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;, "TV;"
    goto :goto_0

    .line 208
    :cond_0
    return-void
.end method

.method public setSelectionEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 181
    .local p0, "this":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;, "Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter<TV;>;"
    iput-boolean p1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->selectionEnabled:Z

    .line 182
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->currentViews:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;

    .line 183
    .local v1, "pagerView":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;, "TV;"
    iget-boolean v2, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->selectionEnabled:Z

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->setSelectionEnabled(Z)V

    .line 184
    .end local v1    # "pagerView":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;, "TV;"
    goto :goto_0

    .line 185
    :cond_0
    return-void
.end method

.method public setShowOtherDates(I)V
    .locals 2
    .param p1, "showFlags"    # I

    .line 221
    .local p0, "this":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;, "Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter<TV;>;"
    iput p1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->showOtherDates:I

    .line 222
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->currentViews:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;

    .line 223
    .local v1, "pagerView":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;, "TV;"
    invoke-virtual {v1, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->setShowOtherDates(I)V

    .line 224
    .end local v1    # "pagerView":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;, "TV;"
    goto :goto_0

    .line 225
    :cond_0
    return-void
.end method

.method public setShowWeekDays(Z)V
    .locals 0
    .param p1, "showWeekDays"    # Z

    .line 173
    .local p0, "this":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;, "Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter<TV;>;"
    iput-boolean p1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->showWeekDays:Z

    .line 174
    return-void
.end method

.method public setTitleFormatter(Lcom/wen/fluorescence/materialcalendarview/format/TitleFormatter;)V
    .locals 0
    .param p1, "titleFormatter"    # Lcom/wen/fluorescence/materialcalendarview/format/TitleFormatter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 200
    .local p0, "this":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;, "Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter<TV;>;"
    iput-object p1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->titleFormatter:Lcom/wen/fluorescence/materialcalendarview/format/TitleFormatter;

    .line 201
    return-void
.end method

.method public setWeekDayFormatter(Lcom/wen/fluorescence/materialcalendarview/format/WeekDayFormatter;)V
    .locals 2
    .param p1, "formatter"    # Lcom/wen/fluorescence/materialcalendarview/format/WeekDayFormatter;

    .line 228
    .local p0, "this":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;, "Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter<TV;>;"
    iput-object p1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->weekDayFormatter:Lcom/wen/fluorescence/materialcalendarview/format/WeekDayFormatter;

    .line 229
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->currentViews:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;

    .line 230
    .local v1, "pagerView":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;, "TV;"
    invoke-virtual {v1, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->setWeekDayFormatter(Lcom/wen/fluorescence/materialcalendarview/format/WeekDayFormatter;)V

    .line 231
    .end local v1    # "pagerView":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;, "TV;"
    goto :goto_0

    .line 232
    :cond_0
    return-void
.end method

.method public setWeekDayTextAppearance(I)V
    .locals 2
    .param p1, "taId"    # I

    .line 256
    .local p0, "this":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;, "Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter<TV;>;"
    if-nez p1, :cond_0

    .line 257
    return-void

    .line 259
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->weekDayTextAppearance:Ljava/lang/Integer;

    .line 260
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->currentViews:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;

    .line 261
    .local v1, "pagerView":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;, "TV;"
    invoke-virtual {v1, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->setWeekDayTextAppearance(I)V

    .line 262
    .end local v1    # "pagerView":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;, "TV;"
    goto :goto_0

    .line 263
    :cond_1
    return-void
.end method
