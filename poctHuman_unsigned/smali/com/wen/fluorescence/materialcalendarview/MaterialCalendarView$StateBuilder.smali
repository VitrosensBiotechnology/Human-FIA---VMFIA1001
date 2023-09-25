.class public Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;
.super Ljava/lang/Object;
.source "MaterialCalendarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateBuilder"
.end annotation


# instance fields
.field private cacheCurrentPosition:Z

.field private calendarMode:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

.field private firstDayOfWeek:I

.field private maxDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

.field private minDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

.field private showWeekDays:Z

.field final synthetic this$0:Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;


# direct methods
.method public constructor <init>(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;

    .line 1915
    iput-object p1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->this$0:Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1908
    sget-object v0, Lcom/wen/fluorescence/materialcalendarview/CalendarMode;->MONTHS:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->calendarMode:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    .line 1909
    invoke-static {}, Lcom/wen/fluorescence/materialcalendarview/CalendarUtils;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->firstDayOfWeek:I

    .line 1910
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->cacheCurrentPosition:Z

    .line 1911
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->minDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 1912
    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->maxDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 1916
    return-void
.end method

.method private constructor <init>(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;)V
    .locals 1
    .param p1, "this$0"    # Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;
    .param p2, "state"    # Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;

    .line 1918
    iput-object p1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->this$0:Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1908
    sget-object v0, Lcom/wen/fluorescence/materialcalendarview/CalendarMode;->MONTHS:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->calendarMode:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    .line 1909
    invoke-static {}, Lcom/wen/fluorescence/materialcalendarview/CalendarUtils;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->firstDayOfWeek:I

    .line 1910
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->cacheCurrentPosition:Z

    .line 1911
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->minDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 1912
    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->maxDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 1919
    invoke-static {p2}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;->access$1600(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;)Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    move-result-object v0

    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->calendarMode:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    .line 1920
    invoke-static {p2}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;->access$1700(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;)I

    move-result v0

    iput v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->firstDayOfWeek:I

    .line 1921
    invoke-static {p2}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;->access$1800(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v0

    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->minDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 1922
    invoke-static {p2}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;->access$1900(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v0

    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->maxDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 1923
    invoke-static {p2}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;->access$700(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->cacheCurrentPosition:Z

    .line 1924
    invoke-static {p2}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;->access$2000(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->showWeekDays:Z

    .line 1925
    return-void
.end method

.method synthetic constructor <init>(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;
    .param p2, "x1"    # Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;
    .param p3, "x2"    # Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$1;

    .line 1907
    invoke-direct {p0, p1, p2}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;-><init>(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;)I
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;

    .line 1907
    iget v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->firstDayOfWeek:I

    return v0
.end method

.method static synthetic access$1100(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;

    .line 1907
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->minDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;

    .line 1907
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->maxDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;

    .line 1907
    iget-boolean v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->cacheCurrentPosition:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;

    .line 1907
    iget-boolean v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->showWeekDays:Z

    return v0
.end method

.method static synthetic access$900(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;)Lcom/wen/fluorescence/materialcalendarview/CalendarMode;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;

    .line 1907
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->calendarMode:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    return-object v0
.end method


# virtual methods
.method public commit()V
    .locals 4

    .line 2023
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->this$0:Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;

    new-instance v1, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;

    iget-object v2, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->this$0:Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;-><init>(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$1;)V

    invoke-static {v0, v1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->access$2200(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;)V

    .line 2024
    return-void
.end method

.method public isCacheCalendarPositionEnabled(Z)Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;
    .locals 0
    .param p1, "cacheCurrentPosition"    # Z

    .line 2018
    iput-boolean p1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->cacheCurrentPosition:Z

    .line 2019
    return-object p0
.end method

.method public setCalendarDisplayMode(Lcom/wen/fluorescence/materialcalendarview/CalendarMode;)Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;
    .locals 0
    .param p1, "mode"    # Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    .line 1948
    iput-object p1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->calendarMode:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    .line 1949
    return-object p0
.end method

.method public setFirstDayOfWeek(I)Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;
    .locals 0
    .param p1, "day"    # I

    .line 1936
    iput p1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->firstDayOfWeek:I

    .line 1937
    return-object p0
.end method

.method public setMaximumDate(J)Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;
    .locals 1
    .param p1, "date"    # J

    .line 1989
    invoke-static {p1, p2}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->from(J)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->setMaximumDate(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;

    .line 1990
    return-object p0
.end method

.method public setMaximumDate(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;
    .locals 0
    .param p1, "calendar"    # Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1997
    iput-object p1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->maxDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 1998
    return-object p0
.end method

.method public setMaximumDate(Ljava/util/Calendar;)Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;
    .locals 1
    .param p1, "calendar"    # Ljava/util/Calendar;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1981
    invoke-static {p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->from(Ljava/util/Calendar;)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->setMaximumDate(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;

    .line 1982
    return-object p0
.end method

.method public setMinimumDate(J)Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;
    .locals 1
    .param p1, "date"    # J

    .line 1965
    invoke-static {p1, p2}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->from(J)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->setMinimumDate(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;

    .line 1966
    return-object p0
.end method

.method public setMinimumDate(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;
    .locals 0
    .param p1, "calendar"    # Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1973
    iput-object p1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->minDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 1974
    return-object p0
.end method

.method public setMinimumDate(Ljava/util/Calendar;)Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;
    .locals 1
    .param p1, "calendar"    # Ljava/util/Calendar;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1957
    invoke-static {p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->from(Ljava/util/Calendar;)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->setMinimumDate(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;

    .line 1958
    return-object p0
.end method

.method public setShowWeekDays(Z)Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;
    .locals 0
    .param p1, "showWeekDays"    # Z

    .line 2005
    iput-boolean p1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->showWeekDays:Z

    .line 2006
    return-object p0
.end method
