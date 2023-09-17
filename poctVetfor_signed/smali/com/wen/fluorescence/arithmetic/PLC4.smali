.class public Lcom/wen/fluorescence/arithmetic/PLC4;
.super Ljava/lang/Object;
.source "PLC4.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetXVal(D[D)D
    .locals 6
    .param p0, "yVal"    # D
    .param p2, "bConsistence"    # [D

    .line 6
    const/4 v0, 0x0

    aget-wide v0, p2, v0

    sub-double/2addr v0, p0

    const/4 v2, 0x1

    aget-wide v2, p2, v2

    sub-double v2, p0, v2

    div-double/2addr v0, v2

    .line 7
    .local v0, "dTempVal":D
    const/4 v2, 0x3

    aget-wide v2, p2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double/2addr v4, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 8
    .local v2, "xVal":D
    const/4 v4, 0x2

    aget-wide v4, p2, v4

    mul-double/2addr v2, v4

    .line 9
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 10
    const-wide/16 v4, 0x0

    return-wide v4

    .line 12
    :cond_0
    return-wide v2
.end method
