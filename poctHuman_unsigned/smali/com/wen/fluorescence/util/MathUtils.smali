.class public Lcom/wen/fluorescence/util/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAverage([D)D
    .locals 6
    .param p0, "array"    # [D

    .line 14
    array-length v0, p0

    if-nez v0, :cond_0

    .line 15
    const-wide/16 v0, 0x0

    return-wide v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    .local v0, "sum":I
    const/4 v1, 0x0

    .line 18
    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 19
    int-to-double v2, v0

    aget-wide v4, p0, v1

    add-double/2addr v2, v4

    double-to-int v0, v2

    .line 18
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21
    .end local v1    # "i":I
    :cond_1
    array-length v1, p0

    div-int v1, v0, v1

    int-to-double v1, v1

    return-wide v1
.end method

.method public static getStandardDevition([D)D
    .locals 10
    .param p0, "array"    # [D

    .line 30
    const/4 v0, 0x1

    array-length v1, p0

    if-gt v1, v0, :cond_0

    .line 31
    const-wide/16 v0, 0x0

    return-wide v0

    .line 33
    :cond_0
    const-wide/16 v1, 0x0

    .line 34
    .local v1, "sum":D
    const/4 v3, 0x0

    .line 34
    .local v3, "i":I
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_1

    .line 35
    aget-wide v4, p0, v3

    invoke-static {p0}, Lcom/wen/fluorescence/util/MathUtils;->getAverage([D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    aget-wide v6, p0, v3

    invoke-static {p0}, Lcom/wen/fluorescence/util/MathUtils;->getAverage([D)D

    move-result-wide v8

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    add-double/2addr v1, v4

    .line 34
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 37
    .end local v3    # "i":I
    :cond_1
    array-length v3, p0

    sub-int/2addr v3, v0

    int-to-double v3, v3

    div-double v3, v1, v3

    return-wide v3
.end method

.method public static reserveDecimals(DI)D
    .locals 3
    .param p0, "mtx"    # D
    .param p2, "n"    # I

    .line 47
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(D)V

    .line 48
    .local v0, "b":Ljava/math/BigDecimal;
    const/4 v1, 0x4

    invoke-virtual {v0, p2, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    .line 50
    .local v1, "mtx_return":D
    return-wide v1
.end method
