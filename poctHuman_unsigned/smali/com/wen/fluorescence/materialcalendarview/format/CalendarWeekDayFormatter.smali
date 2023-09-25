.class public Lcom/wen/fluorescence/materialcalendarview/format/CalendarWeekDayFormatter;
.super Ljava/lang/Object;
.source "CalendarWeekDayFormatter.java"

# interfaces
.implements Lcom/wen/fluorescence/materialcalendarview/format/WeekDayFormatter;


# instance fields
.field private final calendar:Ljava/util/Calendar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-static {}, Lcom/wen/fluorescence/materialcalendarview/CalendarUtils;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wen/fluorescence/materialcalendarview/format/CalendarWeekDayFormatter;-><init>(Ljava/util/Calendar;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "calendar"    # Ljava/util/Calendar;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    .line 27
    iput-object p1, p0, Lcom/wen/fluorescence/materialcalendarview/format/CalendarWeekDayFormatter;->calendar:Ljava/util/Calendar;

    .line 29
    return-void
.end method


# virtual methods
.method public format(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "dayOfWeek"    # I

    .line 43
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/format/CalendarWeekDayFormatter;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 44
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/format/CalendarWeekDayFormatter;->calendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
