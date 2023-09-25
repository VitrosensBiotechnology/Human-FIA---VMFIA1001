.class public Lcom/wen/fluorescence/materialcalendarview/WeekPagerAdapter$Weekly;
.super Ljava/lang/Object;
.source "WeekPagerAdapter.java"

# interfaces
.implements Lcom/wen/fluorescence/materialcalendarview/DateRangeIndex;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/materialcalendarview/WeekPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Weekly"
.end annotation


# static fields
.field private static final DAYS_IN_WEEK:I = 0x7


# instance fields
.field private final count:I

.field private final min:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;


# direct methods
.method public constructor <init>(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Lcom/wen/fluorescence/materialcalendarview/CalendarDay;I)V
    .locals 1
    .param p1, "min"    # Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "max"    # Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "firstDayOfWeek"    # I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-direct {p0, p1, p3}, Lcom/wen/fluorescence/materialcalendarview/WeekPagerAdapter$Weekly;->getFirstDayOfWeek(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;I)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v0

    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/WeekPagerAdapter$Weekly;->min:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 44
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/WeekPagerAdapter$Weekly;->min:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    invoke-direct {p0, v0, p2}, Lcom/wen/fluorescence/materialcalendarview/WeekPagerAdapter$Weekly;->weekNumberDifference(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/wen/fluorescence/materialcalendarview/WeekPagerAdapter$Weekly;->count:I

    .line 45
    return-void
.end method

.method private getFirstDayOfWeek(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;I)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    .locals 3
    .param p1, "min"    # Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "wantedFirstDayOfWeek"    # I

    .line 82
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 83
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {p1, v0}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->copyTo(Ljava/util/Calendar;)V

    .line 84
    :goto_0
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v2, p2, :cond_0

    .line 85
    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 87
    :cond_0
    invoke-static {v0}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->from(Ljava/util/Calendar;)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v1

    return-object v1
.end method

.method private weekNumberDifference(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)I
    .locals 12
    .param p1, "min"    # Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "max"    # Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 68
    invoke-virtual {p2}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long v4, v0, v2

    .line 70
    .local v4, "millisDiff":J
    invoke-virtual {p2}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 71
    .local v0, "dstOffsetMax":I
    invoke-virtual {p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 73
    .local v1, "dstOffsetMin":I
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    int-to-long v6, v0

    add-long v8, v4, v6

    int-to-long v6, v1

    sub-long v10, v8, v6

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v10, v11, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    .line 74
    .local v2, "dayDiff":J
    const-wide/16 v6, 0x7

    div-long v6, v2, v6

    long-to-int v6, v6

    return v6
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/wen/fluorescence/materialcalendarview/WeekPagerAdapter$Weekly;->count:I

    return v0
.end method

.method public getItem(I)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    .locals 7
    .param p1, "position"    # I

    .line 59
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/WeekPagerAdapter$Weekly;->min:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    invoke-virtual {v0}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 60
    .local v0, "minMillis":J
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    mul-int/lit8 v3, p1, 0x7

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    .line 63
    .local v2, "millisOffset":J
    add-long v4, v0, v2

    .line 64
    .local v4, "positionMillis":J
    invoke-static {v4, v5}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->from(J)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v6

    return-object v6
.end method

.method public indexOf(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)I
    .locals 1
    .param p1, "day"    # Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 54
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/WeekPagerAdapter$Weekly;->min:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    invoke-direct {p0, v0, p1}, Lcom/wen/fluorescence/materialcalendarview/WeekPagerAdapter$Weekly;->weekNumberDifference(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)I

    move-result v0

    return v0
.end method
