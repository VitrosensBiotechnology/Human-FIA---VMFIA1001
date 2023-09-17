.class public Lcom/wen/fluorescence/materialcalendarview/MonthPagerAdapter$Monthly;
.super Ljava/lang/Object;
.source "MonthPagerAdapter.java"

# interfaces
.implements Lcom/wen/fluorescence/materialcalendarview/DateRangeIndex;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/materialcalendarview/MonthPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Monthly"
.end annotation


# instance fields
.field private final count:I

.field private dayCache:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat<",
            "Lcom/wen/fluorescence/materialcalendarview/CalendarDay;",
            ">;"
        }
    .end annotation
.end field

.field private final min:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;


# direct methods
.method public constructor <init>(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)V
    .locals 3
    .param p1, "min"    # Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "max"    # Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MonthPagerAdapter$Monthly;->dayCache:Landroid/support/v4/util/SparseArrayCompat;

    .line 44
    invoke-virtual {p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->getYear()I

    move-result v0

    invoke-virtual {p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->getMonth()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->from(III)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v0

    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MonthPagerAdapter$Monthly;->min:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 45
    invoke-virtual {p2}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->getYear()I

    move-result v0

    invoke-virtual {p2}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->getMonth()I

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->from(III)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object p2

    .line 46
    invoke-virtual {p0, p2}, Lcom/wen/fluorescence/materialcalendarview/MonthPagerAdapter$Monthly;->indexOf(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/wen/fluorescence/materialcalendarview/MonthPagerAdapter$Monthly;->count:I

    .line 47
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/wen/fluorescence/materialcalendarview/MonthPagerAdapter$Monthly;->count:I

    return v0
.end method

.method public getItem(I)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    .locals 6
    .param p1, "position"    # I

    .line 62
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MonthPagerAdapter$Monthly;->dayCache:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 63
    .local v0, "re":Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    if-eqz v0, :cond_0

    .line 64
    return-object v0

    .line 67
    :cond_0
    div-int/lit8 v1, p1, 0xc

    .line 68
    .local v1, "numY":I
    rem-int/lit8 v2, p1, 0xc

    .line 70
    .local v2, "numM":I
    iget-object v3, p0, Lcom/wen/fluorescence/materialcalendarview/MonthPagerAdapter$Monthly;->min:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    invoke-virtual {v3}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->getYear()I

    move-result v3

    add-int/2addr v3, v1

    .line 71
    .local v3, "year":I
    iget-object v4, p0, Lcom/wen/fluorescence/materialcalendarview/MonthPagerAdapter$Monthly;->min:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    invoke-virtual {v4}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->getMonth()I

    move-result v4

    add-int/2addr v4, v2

    .line 72
    .local v4, "month":I
    const/16 v5, 0xc

    if-lt v4, v5, :cond_1

    .line 73
    add-int/lit8 v3, v3, 0x1

    .line 74
    add-int/lit8 v4, v4, -0xc

    .line 77
    :cond_1
    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->from(III)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v0

    .line 78
    iget-object v5, p0, Lcom/wen/fluorescence/materialcalendarview/MonthPagerAdapter$Monthly;->dayCache:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v5, p1, v0}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 79
    return-object v0
.end method

.method public indexOf(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)I
    .locals 3
    .param p1, "day"    # Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 54
    invoke-virtual {p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->getYear()I

    move-result v0

    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/MonthPagerAdapter$Monthly;->min:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    invoke-virtual {v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->getYear()I

    move-result v1

    sub-int/2addr v0, v1

    .line 55
    .local v0, "yDiff":I
    invoke-virtual {p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->getMonth()I

    move-result v1

    iget-object v2, p0, Lcom/wen/fluorescence/materialcalendarview/MonthPagerAdapter$Monthly;->min:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    invoke-virtual {v2}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->getMonth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 57
    .local v1, "mDiff":I
    mul-int/lit8 v2, v0, 0xc

    add-int/2addr v2, v1

    return v2
.end method
