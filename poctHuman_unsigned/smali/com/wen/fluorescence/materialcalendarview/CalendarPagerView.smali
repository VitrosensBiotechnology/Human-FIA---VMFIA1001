.class abstract Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;
.super Landroid/view/ViewGroup;
.source "CalendarPagerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView$LayoutParams;
    }
.end annotation


# static fields
.field protected static final DAY_NAMES_ROW:I = 0x1

.field protected static final DEFAULT_DAYS_IN_WEEK:I = 0x7

.field protected static final DEFAULT_MAX_WEEKS:I = 0x6

.field private static final tempWorkingCalendar:Ljava/util/Calendar;


# instance fields
.field private final dayViews:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/wen/fluorescence/materialcalendarview/DayView;",
            ">;"
        }
    .end annotation
.end field

.field private final decoratorResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/wen/fluorescence/materialcalendarview/DecoratorResult;",
            ">;"
        }
    .end annotation
.end field

.field private firstDayOfWeek:I

.field private firstViewDay:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

.field private maxDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

.field private mcv:Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;

.field private minDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

.field protected showOtherDates:I

.field protected showWeekDays:Z

.field private final weekDayViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/wen/fluorescence/materialcalendarview/WeekDayView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    invoke-static {}, Lcom/wen/fluorescence/materialcalendarview/CalendarUtils;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->tempWorkingCalendar:Ljava/util/Calendar;

    return-void
.end method

.method public constructor <init>(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;Lcom/wen/fluorescence/materialcalendarview/CalendarDay;IZ)V
    .locals 2
    .param p1, "view"    # Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "firstViewDay"    # Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    .param p3, "firstDayOfWeek"    # I
    .param p4, "showWeekDays"    # Z

    .line 49
    invoke-virtual {p1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->weekDayViews:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->decoratorResults:Ljava/util/ArrayList;

    .line 34
    const/4 v0, 0x4

    iput v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->showOtherDates:I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->minDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 39
    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->maxDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->dayViews:Ljava/util/Collection;

    .line 50
    iput-object p1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->mcv:Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;

    .line 51
    iput-object p2, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->firstViewDay:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 52
    iput p3, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->firstDayOfWeek:I

    .line 53
    iput-boolean p4, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->showWeekDays:Z

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->setClipChildren(Z)V

    .line 56
    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->setClipToPadding(Z)V

    .line 58
    invoke-static {}, Lcom/wen/fluorescence/materialcalendarview/LocalUtils;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->setRotationY(F)V

    .line 62
    :cond_0
    if-eqz p4, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->resetAndGetWorkingCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->buildWeekDays(Ljava/util/Calendar;)V

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->dayViews:Ljava/util/Collection;

    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->resetAndGetWorkingCalendar()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->buildDayViews(Ljava/util/Collection;Ljava/util/Calendar;)V

    .line 66
    return-void
.end method

.method private buildWeekDays(Ljava/util/Calendar;)V
    .locals 4
    .param p1, "calendar"    # Ljava/util/Calendar;

    .line 69
    const/4 v0, 0x0

    .line 69
    .local v0, "i":I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    .line 70
    new-instance v1, Lcom/wen/fluorescence/materialcalendarview/WeekDayView;

    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarUtils;->getDayOfWeek(Ljava/util/Calendar;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/wen/fluorescence/materialcalendarview/WeekDayView;-><init>(Landroid/content/Context;I)V

    .line 71
    .local v1, "weekDayView":Lcom/wen/fluorescence/materialcalendarview/WeekDayView;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 72
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/materialcalendarview/WeekDayView;->setImportantForAccessibility(I)V

    .line 74
    :cond_0
    iget-object v2, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->weekDayViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->addView(Landroid/view/View;)V

    .line 76
    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 69
    .end local v1    # "weekDayView":Lcom/wen/fluorescence/materialcalendarview/WeekDayView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    .end local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method protected addDayView(Ljava/util/Collection;Ljava/util/Calendar;)V
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

    .line 81
    .local p1, "dayViews":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/wen/fluorescence/materialcalendarview/DayView;>;"
    invoke-static {p2}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->from(Ljava/util/Calendar;)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v0

    .line 82
    .local v0, "day":Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    new-instance v1, Lcom/wen/fluorescence/materialcalendarview/DayView;

    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/wen/fluorescence/materialcalendarview/DayView;-><init>(Landroid/content/Context;Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)V

    .line 83
    .local v1, "dayView":Lcom/wen/fluorescence/materialcalendarview/DayView;
    invoke-virtual {v1, p0}, Lcom/wen/fluorescence/materialcalendarview/DayView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    invoke-virtual {v1, p0}, Lcom/wen/fluorescence/materialcalendarview/DayView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 85
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v2, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView$LayoutParams;

    invoke-direct {v2}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView$LayoutParams;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 89
    return-void
.end method

.method protected abstract buildDayViews(Ljava/util/Collection;Ljava/util/Calendar;)V
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
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 344
    instance-of v0, p1, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView$LayoutParams;

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->generateDefaultLayoutParams()Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView$LayoutParams;
    .locals 1

    .line 237
    new-instance v0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView$LayoutParams;

    invoke-direct {v0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView$LayoutParams;-><init>()V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 349
    new-instance v0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView$LayoutParams;

    invoke-direct {v0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView$LayoutParams;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 331
    new-instance v0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView$LayoutParams;

    invoke-direct {v0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView$LayoutParams;-><init>()V

    return-object v0
.end method

.method protected getFirstDayOfWeek()I
    .locals 1

    .line 107
    iget v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->firstDayOfWeek:I

    return v0
.end method

.method protected getFirstViewDay()Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->firstViewDay:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    return-object v0
.end method

.method protected abstract getRows()I
.end method

.method protected invalidateDecorators()V
    .locals 7

    .line 198
    new-instance v0, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;

    invoke-direct {v0}, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;-><init>()V

    .line 199
    .local v0, "facadeAccumulator":Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;
    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->dayViews:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wen/fluorescence/materialcalendarview/DayView;

    .line 200
    .local v2, "dayView":Lcom/wen/fluorescence/materialcalendarview/DayView;
    invoke-virtual {v0}, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;->reset()V

    .line 201
    iget-object v3, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->decoratorResults:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wen/fluorescence/materialcalendarview/DecoratorResult;

    .line 202
    .local v4, "result":Lcom/wen/fluorescence/materialcalendarview/DecoratorResult;
    iget-object v5, v4, Lcom/wen/fluorescence/materialcalendarview/DecoratorResult;->decorator:Lcom/wen/fluorescence/materialcalendarview/DayViewDecorator;

    invoke-virtual {v2}, Lcom/wen/fluorescence/materialcalendarview/DayView;->getDate()Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/wen/fluorescence/materialcalendarview/DayViewDecorator;->shouldDecorate(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 203
    iget-object v5, v4, Lcom/wen/fluorescence/materialcalendarview/DecoratorResult;->result:Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;

    invoke-virtual {v5, v0}, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;->applyTo(Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;)V

    .line 205
    .end local v4    # "result":Lcom/wen/fluorescence/materialcalendarview/DecoratorResult;
    :cond_0
    goto :goto_1

    .line 206
    :cond_1
    invoke-virtual {v2, v0}, Lcom/wen/fluorescence/materialcalendarview/DayView;->applyFacade(Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;)V

    .line 207
    .end local v2    # "dayView":Lcom/wen/fluorescence/materialcalendarview/DayView;
    goto :goto_0

    .line 208
    :cond_2
    return-void
.end method

.method protected abstract isDayEnabled(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)Z
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 212
    instance-of v0, p1, Lcom/wen/fluorescence/materialcalendarview/DayView;

    if-eqz v0, :cond_0

    .line 213
    move-object v0, p1

    check-cast v0, Lcom/wen/fluorescence/materialcalendarview/DayView;

    .line 214
    .local v0, "dayView":Lcom/wen/fluorescence/materialcalendarview/DayView;
    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->mcv:Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;

    invoke-virtual {v1, v0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->onDateClicked(Lcom/wen/fluorescence/materialcalendarview/DayView;)V

    .line 216
    .end local v0    # "dayView":Lcom/wen/fluorescence/materialcalendarview/DayView;
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 355
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 356
    const-class v0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 357
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 361
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 362
    const-class v0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 363
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 293
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->getWidth()I

    move-result v0

    .line 294
    .local v0, "parentWidth":I
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->getChildCount()I

    move-result v1

    .line 295
    .local v1, "count":I
    const/4 v2, 0x0

    .line 296
    .local v2, "parentLeft":I
    move v3, v0

    .line 298
    .local v3, "parentRight":I
    const/4 v4, 0x0

    .line 299
    .local v4, "childTop":I
    const/4 v5, 0x0

    .line 300
    .local v5, "childLeft":I
    move v6, v3

    .line 302
    .local v6, "childRight":I
    const/4 v7, 0x0

    .line 302
    .local v7, "i":I
    :goto_0
    if-ge v7, v1, :cond_2

    .line 303
    move-object v8, p0

    invoke-virtual {v8, v7}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 305
    .local v9, "child":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 306
    .local v10, "width":I
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 308
    .local v11, "height":I
    invoke-static {}, Lcom/wen/fluorescence/materialcalendarview/LocalUtils;->isRTL()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 309
    sub-int v12, v6, v10

    add-int v13, v4, v11

    invoke-virtual {v9, v12, v4, v6, v13}, Landroid/view/View;->layout(IIII)V

    .line 310
    sub-int/2addr v6, v10

    goto :goto_1

    .line 312
    :cond_0
    add-int v12, v5, v10

    add-int v13, v4, v11

    invoke-virtual {v9, v5, v4, v12, v13}, Landroid/view/View;->layout(IIII)V

    .line 313
    add-int/2addr v5, v10

    .line 317
    :goto_1
    rem-int/lit8 v12, v7, 0x7

    const/4 v13, 0x6

    if-ne v12, v13, :cond_1

    .line 318
    const/4 v5, 0x0

    .line 319
    move v6, v3

    .line 320
    add-int/2addr v4, v11

    .line 302
    .end local v9    # "child":Landroid/view/View;
    .end local v10    # "width":I
    .end local v11    # "height":I
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 324
    .end local v7    # "i":I
    :cond_2
    move-object v8, p0

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 220
    instance-of v0, p1, Lcom/wen/fluorescence/materialcalendarview/DayView;

    if-eqz v0, :cond_0

    .line 221
    move-object v0, p1

    check-cast v0, Lcom/wen/fluorescence/materialcalendarview/DayView;

    .line 222
    .local v0, "dayView":Lcom/wen/fluorescence/materialcalendarview/DayView;
    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->mcv:Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;

    invoke-virtual {v1, v0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->onDateLongClicked(Lcom/wen/fluorescence/materialcalendarview/DayView;)V

    .line 223
    const/4 v1, 0x1

    return v1

    .line 225
    .end local v0    # "dayView":Lcom/wen/fluorescence/materialcalendarview/DayView;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 245
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 246
    .local v0, "specWidthSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 247
    .local v1, "specWidthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 248
    .local v2, "specHeightSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 251
    .local v3, "specHeightMode":I
    if-eqz v3, :cond_2

    if-nez v1, :cond_0

    goto :goto_1

    .line 256
    :cond_0
    div-int/lit8 v4, v0, 0x7

    .line 257
    .local v4, "measureTileWidth":I
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->getRows()I

    move-result v5

    div-int v5, v2, v5

    .line 260
    .local v5, "measureTileHeight":I
    invoke-virtual {p0, v0, v2}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->setMeasuredDimension(II)V

    .line 262
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->getChildCount()I

    move-result v6

    .line 264
    .local v6, "count":I
    const/4 v7, 0x0

    .line 264
    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_1

    .line 265
    invoke-virtual {p0, v7}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 267
    .local v8, "child":Landroid/view/View;
    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 272
    .local v10, "childWidthMeasureSpec":I
    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 277
    .local v9, "childHeightMeasureSpec":I
    invoke-virtual {v8, v10, v9}, Landroid/view/View;->measure(II)V

    .line 264
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "childHeightMeasureSpec":I
    .end local v10    # "childWidthMeasureSpec":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 279
    .end local v7    # "i":I
    :cond_1
    return-void

    .line 252
    .end local v4    # "measureTileWidth":I
    .end local v5    # "measureTileHeight":I
    .end local v6    # "count":I
    :cond_2
    :goto_1
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "CalendarPagerView should never be left to decide it\'s size"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected resetAndGetWorkingCalendar()Ljava/util/Calendar;
    .locals 5

    .line 92
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->getFirstViewDay()Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v0

    sget-object v1, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->tempWorkingCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->copyTo(Ljava/util/Calendar;)V

    .line 94
    sget-object v0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->tempWorkingCalendar:Ljava/util/Calendar;

    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->getFirstDayOfWeek()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 95
    sget-object v0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->tempWorkingCalendar:Ljava/util/Calendar;

    invoke-static {v0}, Lcom/wen/fluorescence/materialcalendarview/CalendarUtils;->getDayOfWeek(Ljava/util/Calendar;)I

    move-result v0

    .line 96
    .local v0, "dow":I
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->getFirstDayOfWeek()I

    move-result v1

    sub-int/2addr v1, v0

    .line 98
    .local v1, "delta":I
    iget v2, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->showOtherDates:I

    invoke-static {v2}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->showOtherMonths(I)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ltz v1, :cond_0

    :goto_0
    move v3, v4

    goto :goto_1

    :cond_0
    goto :goto_1

    :cond_1
    if-lez v1, :cond_0

    goto :goto_0

    :goto_1
    move v2, v3

    .line 99
    .local v2, "removeRow":Z
    if-eqz v2, :cond_2

    .line 100
    add-int/lit8 v1, v1, -0x7

    .line 102
    :cond_2
    sget-object v3, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->tempWorkingCalendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->add(II)V

    .line 103
    sget-object v3, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->tempWorkingCalendar:Ljava/util/Calendar;

    return-object v3
.end method

.method public setDateTextAppearance(I)V
    .locals 3
    .param p1, "taId"    # I

    .line 129
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->dayViews:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wen/fluorescence/materialcalendarview/DayView;

    .line 130
    .local v1, "dayView":Lcom/wen/fluorescence/materialcalendarview/DayView;
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/wen/fluorescence/materialcalendarview/DayView;->setTextAppearance(Landroid/content/Context;I)V

    .line 131
    .end local v1    # "dayView":Lcom/wen/fluorescence/materialcalendarview/DayView;
    goto :goto_0

    .line 132
    :cond_0
    return-void
.end method

.method public setDayFormatter(Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;)V
    .locals 2
    .param p1, "formatter"    # Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;

    .line 159
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->dayViews:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wen/fluorescence/materialcalendarview/DayView;

    .line 160
    .local v1, "dayView":Lcom/wen/fluorescence/materialcalendarview/DayView;
    invoke-virtual {v1, p1}, Lcom/wen/fluorescence/materialcalendarview/DayView;->setDayFormatter(Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;)V

    .line 161
    .end local v1    # "dayView":Lcom/wen/fluorescence/materialcalendarview/DayView;
    goto :goto_0

    .line 162
    :cond_0
    return-void
.end method

.method public setDayFormatterContentDescription(Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;)V
    .locals 2
    .param p1, "formatter"    # Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;

    .line 165
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->dayViews:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wen/fluorescence/materialcalendarview/DayView;

    .line 166
    .local v1, "dayView":Lcom/wen/fluorescence/materialcalendarview/DayView;
    invoke-virtual {v1, p1}, Lcom/wen/fluorescence/materialcalendarview/DayView;->setDayFormatterContentDescription(Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;)V

    .line 167
    .end local v1    # "dayView":Lcom/wen/fluorescence/materialcalendarview/DayView;
    goto :goto_0

    .line 168
    :cond_0
    return-void
.end method

.method setDayViewDecorators(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wen/fluorescence/materialcalendarview/DecoratorResult;",
            ">;)V"
        }
    .end annotation

    .line 115
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/materialcalendarview/DecoratorResult;>;"
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->decoratorResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 116
    if-eqz p1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->decoratorResults:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->invalidateDecorators()V

    .line 120
    return-void
.end method

.method public setMaximumDate(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)V
    .locals 0
    .param p1, "maxDate"    # Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 176
    iput-object p1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->maxDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 177
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->updateUi()V

    .line 178
    return-void
.end method

.method public setMinimumDate(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)V
    .locals 0
    .param p1, "minDate"    # Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 171
    iput-object p1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->minDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 172
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->updateUi()V

    .line 173
    return-void
.end method

.method public setSelectedDates(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/wen/fluorescence/materialcalendarview/CalendarDay;",
            ">;)V"
        }
    .end annotation

    .line 181
    .local p1, "dates":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/wen/fluorescence/materialcalendarview/CalendarDay;>;"
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->dayViews:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wen/fluorescence/materialcalendarview/DayView;

    .line 182
    .local v1, "dayView":Lcom/wen/fluorescence/materialcalendarview/DayView;
    invoke-virtual {v1}, Lcom/wen/fluorescence/materialcalendarview/DayView;->getDate()Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v2

    .line 183
    .local v2, "day":Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    if-eqz p1, :cond_0

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/materialcalendarview/DayView;->setChecked(Z)V

    .line 184
    .end local v1    # "dayView":Lcom/wen/fluorescence/materialcalendarview/DayView;
    .end local v2    # "day":Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    goto :goto_0

    .line 185
    :cond_1
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->postInvalidate()V

    .line 186
    return-void
.end method

.method public setSelectionColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 147
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->dayViews:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wen/fluorescence/materialcalendarview/DayView;

    .line 148
    .local v1, "dayView":Lcom/wen/fluorescence/materialcalendarview/DayView;
    invoke-virtual {v1, p1}, Lcom/wen/fluorescence/materialcalendarview/DayView;->setSelectionColor(I)V

    .line 149
    .end local v1    # "dayView":Lcom/wen/fluorescence/materialcalendarview/DayView;
    goto :goto_0

    .line 150
    :cond_0
    return-void
.end method

.method public setSelectionEnabled(Z)V
    .locals 3
    .param p1, "selectionEnabled"    # Z

    .line 140
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->dayViews:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wen/fluorescence/materialcalendarview/DayView;

    .line 141
    .local v1, "dayView":Lcom/wen/fluorescence/materialcalendarview/DayView;
    if-eqz p1, :cond_0

    move-object v2, p0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/materialcalendarview/DayView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    invoke-virtual {v1, p1}, Lcom/wen/fluorescence/materialcalendarview/DayView;->setClickable(Z)V

    .line 143
    .end local v1    # "dayView":Lcom/wen/fluorescence/materialcalendarview/DayView;
    goto :goto_0

    .line 144
    :cond_1
    return-void
.end method

.method public setShowOtherDates(I)V
    .locals 0
    .param p1, "showFlags"    # I

    .line 135
    iput p1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->showOtherDates:I

    .line 136
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->updateUi()V

    .line 137
    return-void
.end method

.method public setWeekDayFormatter(Lcom/wen/fluorescence/materialcalendarview/format/WeekDayFormatter;)V
    .locals 2
    .param p1, "formatter"    # Lcom/wen/fluorescence/materialcalendarview/format/WeekDayFormatter;

    .line 153
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->weekDayViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wen/fluorescence/materialcalendarview/WeekDayView;

    .line 154
    .local v1, "dayView":Lcom/wen/fluorescence/materialcalendarview/WeekDayView;
    invoke-virtual {v1, p1}, Lcom/wen/fluorescence/materialcalendarview/WeekDayView;->setWeekDayFormatter(Lcom/wen/fluorescence/materialcalendarview/format/WeekDayFormatter;)V

    .line 155
    .end local v1    # "dayView":Lcom/wen/fluorescence/materialcalendarview/WeekDayView;
    goto :goto_0

    .line 156
    :cond_0
    return-void
.end method

.method public setWeekDayTextAppearance(I)V
    .locals 3
    .param p1, "taId"    # I

    .line 123
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->weekDayViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wen/fluorescence/materialcalendarview/WeekDayView;

    .line 124
    .local v1, "weekDayView":Lcom/wen/fluorescence/materialcalendarview/WeekDayView;
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/wen/fluorescence/materialcalendarview/WeekDayView;->setTextAppearance(Landroid/content/Context;I)V

    .line 125
    .end local v1    # "weekDayView":Lcom/wen/fluorescence/materialcalendarview/WeekDayView;
    goto :goto_0

    .line 126
    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 336
    const/4 v0, 0x0

    return v0
.end method

.method protected updateUi()V
    .locals 6

    .line 189
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->dayViews:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wen/fluorescence/materialcalendarview/DayView;

    .line 190
    .local v1, "dayView":Lcom/wen/fluorescence/materialcalendarview/DayView;
    invoke-virtual {v1}, Lcom/wen/fluorescence/materialcalendarview/DayView;->getDate()Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v2

    .line 191
    .local v2, "day":Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    iget v3, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->showOtherDates:I

    iget-object v4, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->minDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    iget-object v5, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->maxDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 192
    invoke-virtual {v2, v4, v5}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->isInRange(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)Z

    move-result v4

    invoke-virtual {p0, v2}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->isDayEnabled(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)Z

    move-result v5

    .line 191
    invoke-virtual {v1, v3, v4, v5}, Lcom/wen/fluorescence/materialcalendarview/DayView;->setupSelection(IZZ)V

    .line 193
    .end local v1    # "dayView":Lcom/wen/fluorescence/materialcalendarview/DayView;
    .end local v2    # "day":Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    goto :goto_0

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerView;->postInvalidate()V

    .line 195
    return-void
.end method
