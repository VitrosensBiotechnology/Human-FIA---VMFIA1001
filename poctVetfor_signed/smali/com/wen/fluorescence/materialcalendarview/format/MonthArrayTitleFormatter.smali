.class public Lcom/wen/fluorescence/materialcalendarview/format/MonthArrayTitleFormatter;
.super Ljava/lang/Object;
.source "MonthArrayTitleFormatter.java"

# interfaces
.implements Lcom/wen/fluorescence/materialcalendarview/format/TitleFormatter;


# instance fields
.field private final monthLabels:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>([Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "monthLabels"    # [Ljava/lang/CharSequence;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    if-nez p1, :cond_0

    .line 21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Label array cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_0
    array-length v0, p1

    const/16 v1, 0xc

    if-ge v0, v1, :cond_1

    .line 24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Label array is too short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_1
    iput-object p1, p0, Lcom/wen/fluorescence/materialcalendarview/format/MonthArrayTitleFormatter;->monthLabels:[Ljava/lang/CharSequence;

    .line 27
    return-void
.end method


# virtual methods
.method public format(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "day"    # Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 34
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/format/MonthArrayTitleFormatter;->monthLabels:[Ljava/lang/CharSequence;

    .line 35
    invoke-virtual {p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->getMonth()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const-string v1, " "

    .line 36
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 37
    invoke-virtual {p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->getYear()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 34
    return-object v0
.end method
