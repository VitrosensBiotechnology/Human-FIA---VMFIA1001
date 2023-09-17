.class public Lcom/wen/fluorescence/materialcalendarview/format/ArrayWeekDayFormatter;
.super Ljava/lang/Object;
.source "ArrayWeekDayFormatter.java"

# interfaces
.implements Lcom/wen/fluorescence/materialcalendarview/format/WeekDayFormatter;


# instance fields
.field private final weekDayLabels:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>([Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "weekDayLabels"    # [Ljava/lang/CharSequence;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    if-nez p1, :cond_0

    .line 15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_0
    array-length v0, p1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    .line 18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array must contain exactly 7 elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_1
    iput-object p1, p0, Lcom/wen/fluorescence/materialcalendarview/format/ArrayWeekDayFormatter;->weekDayLabels:[Ljava/lang/CharSequence;

    .line 21
    return-void
.end method


# virtual methods
.method public format(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "dayOfWeek"    # I

    .line 28
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/format/ArrayWeekDayFormatter;->weekDayLabels:[Ljava/lang/CharSequence;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method
