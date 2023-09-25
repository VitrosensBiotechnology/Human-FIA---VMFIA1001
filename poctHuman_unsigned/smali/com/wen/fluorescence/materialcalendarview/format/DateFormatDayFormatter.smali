.class public Lcom/wen/fluorescence/materialcalendarview/format/DateFormatDayFormatter;
.super Ljava/lang/Object;
.source "DateFormatDayFormatter.java"

# interfaces
.implements Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;


# instance fields
.field private final dateFormat:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "d"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/format/DateFormatDayFormatter;->dateFormat:Ljava/text/DateFormat;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/text/DateFormat;)V
    .locals 0
    .param p1, "format"    # Ljava/text/DateFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/wen/fluorescence/materialcalendarview/format/DateFormatDayFormatter;->dateFormat:Ljava/text/DateFormat;

    .line 32
    return-void
.end method


# virtual methods
.method public format(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)Ljava/lang/String;
    .locals 2
    .param p1, "day"    # Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/format/DateFormatDayFormatter;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
