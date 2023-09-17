.class public Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;
.super Ljava/lang/Object;
.source "MaterialCalendarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "State"
.end annotation


# instance fields
.field private final cacheCurrentPosition:Z

.field private final calendarMode:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

.field private final firstDayOfWeek:I

.field private final maxDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

.field private final minDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

.field private final showWeekDays:Z

.field final synthetic this$0:Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;


# direct methods
.method private constructor <init>(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;)V
    .locals 1
    .param p1, "this$0"    # Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;
    .param p2, "builder"    # Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;

    .line 1889
    iput-object p1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;->this$0:Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1890
    invoke-static {p2}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->access$900(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;)Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    move-result-object v0

    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;->calendarMode:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    .line 1891
    invoke-static {p2}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->access$1000(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;)I

    move-result v0

    iput v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;->firstDayOfWeek:I

    .line 1892
    invoke-static {p2}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->access$1100(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v0

    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;->minDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 1893
    invoke-static {p2}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->access$1200(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v0

    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;->maxDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 1894
    invoke-static {p2}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->access$1300(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;->cacheCurrentPosition:Z

    .line 1895
    invoke-static {p2}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->access$1400(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;->showWeekDays:Z

    .line 1896
    return-void
.end method

.method synthetic constructor <init>(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;
    .param p2, "x1"    # Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;
    .param p3, "x2"    # Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$1;

    .line 1881
    invoke-direct {p0, p1, p2}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;-><init>(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;)Lcom/wen/fluorescence/materialcalendarview/CalendarMode;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;

    .line 1881
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;->calendarMode:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;)I
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;

    .line 1881
    iget v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;->firstDayOfWeek:I

    return v0
.end method

.method static synthetic access$1800(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;

    .line 1881
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;->minDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;

    .line 1881
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;->maxDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;)Z
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;

    .line 1881
    iget-boolean v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;->showWeekDays:Z

    return v0
.end method

.method static synthetic access$700(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;)Z
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;

    .line 1881
    iget-boolean v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;->cacheCurrentPosition:Z

    return v0
.end method


# virtual methods
.method public edit()Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;
    .locals 3

    .line 1902
    new-instance v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;

    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;->this$0:Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;-><init>(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$1;)V

    return-object v0
.end method
