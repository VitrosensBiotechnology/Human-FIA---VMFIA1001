.class public Lca/uhn/hl7v2/model/DataTypeUtil;
.super Ljava/lang/Object;
.source "DataTypeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static getLocalGMTOffset()I
    .locals 7

    .line 64
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 65
    .local v0, "currentTime":Ljava/util/GregorianCalendar;
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 66
    .local v1, "gmtOffSet":I
    if-gez v1, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 68
    .local v2, "offSetSignInt":I
    :goto_0
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 69
    .local v3, "absGmtOffSet":I
    const v4, 0x36ee80

    div-int v4, v3, v4

    .line 70
    .local v4, "gmtOffSetHours":I
    const v5, 0xea60

    div-int v5, v3, v5

    rem-int/lit8 v5, v5, 0x3c

    .line 72
    .local v5, "gmtOffSetMin":I
    mul-int/lit8 v6, v4, 0x64

    add-int/2addr v6, v5

    mul-int/2addr v6, v2

    return v6
.end method

.method public static preAppendZeroes(II)Ljava/lang/String;
    .locals 5
    .param p0, "num"    # I
    .param p1, "totalDigitLength"    # I

    .line 51
    if-nez p1, :cond_0

    .line 52
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 53
    :cond_0
    const-string v0, "%%0%dd"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 51
    :goto_0
    return-object v0
.end method
