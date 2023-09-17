.class public interface abstract Lcom/wen/fluorescence/materialcalendarview/format/WeekDayFormatter;
.super Ljava/lang/Object;
.source "WeekDayFormatter.java"


# static fields
.field public static final DEFAULT:Lcom/wen/fluorescence/materialcalendarview/format/WeekDayFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/wen/fluorescence/materialcalendarview/format/CalendarWeekDayFormatter;

    invoke-static {}, Lcom/wen/fluorescence/materialcalendarview/CalendarUtils;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/wen/fluorescence/materialcalendarview/format/CalendarWeekDayFormatter;-><init>(Ljava/util/Calendar;)V

    sput-object v0, Lcom/wen/fluorescence/materialcalendarview/format/WeekDayFormatter;->DEFAULT:Lcom/wen/fluorescence/materialcalendarview/format/WeekDayFormatter;

    return-void
.end method


# virtual methods
.method public abstract format(I)Ljava/lang/CharSequence;
.end method
