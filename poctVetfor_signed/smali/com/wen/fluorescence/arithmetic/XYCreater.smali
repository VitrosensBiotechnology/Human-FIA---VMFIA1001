.class public Lcom/wen/fluorescence/arithmetic/XYCreater;
.super Ljava/lang/Object;
.source "XYCreater.java"


# instance fields
.field public p:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/wen/fluorescence/arithmetic/XYCreater;->p:I

    return-void
.end method


# virtual methods
.method public createMX(DDDZI)[D
    .locals 18
    .param p1, "Max"    # D
    .param p3, "Min"    # D
    .param p5, "middle"    # D
    .param p7, "isSubFlag"    # Z
    .param p8, "ls_count"    # I

    .line 26
    move/from16 v2, p8

    const/16 v3, 0x10

    new-array v3, v3, [D

    .line 27
    .local v3, "mx":[D
    const/4 v4, 0x0

    .line 28
    .local v4, "b":Ljava/math/BigDecimal;
    const/4 v5, 0x0

    aput-wide p3, v3, v5

    .line 29
    add-int/lit8 v6, v2, -0x1

    aput-wide p1, v3, v6

    .line 30
    if-eqz p7, :cond_2

    .line 31
    add-int/lit8 v9, v2, -0x3

    div-int/lit8 v9, v9, 0x2

    .line 32
    .local v9, "n":I
    add-int/lit8 v10, v2, -0x3

    rem-int/lit8 v10, v10, 0x2

    .line 33
    .local v10, "m":I
    sub-double v11, p5, p3

    add-int/lit8 v5, v9, 0x1

    int-to-double v6, v5

    div-double/2addr v11, v6

    .line 34
    .local v11, "d1":D
    sub-double v5, p1, p5

    add-int v7, v9, v10

    const/4 v14, 0x1

    add-int/2addr v7, v14

    int-to-double v7, v7

    div-double/2addr v5, v7

    .line 35
    .local v5, "d2":D
    add-int/lit8 v7, v9, 0x1

    aput-wide p5, v3, v7

    .line 36
    add-int/lit8 v7, v9, 0x1

    add-int/2addr v7, v14

    move-object/from16 v8, p0

    iput v7, v8, Lcom/wen/fluorescence/arithmetic/XYCreater;->p:I

    .line 37
    move-object v7, v4

    const/4 v4, 0x0

    .line 37
    .local v4, "i":I
    .local v7, "b":Ljava/math/BigDecimal;
    :goto_0
    if-ge v4, v9, :cond_0

    .line 38
    move-object v15, v7

    new-instance v7, Ljava/math/BigDecimal;

    .line 38
    .end local v7    # "b":Ljava/math/BigDecimal;
    .local v15, "b":Ljava/math/BigDecimal;
    add-int/lit8 v8, v4, 0x1

    int-to-double v0, v8

    mul-double/2addr v0, v11

    add-double v0, p3, v0

    invoke-direct {v7, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    .line 39
    .end local v15    # "b":Ljava/math/BigDecimal;
    .restart local v7    # "b":Ljava/math/BigDecimal;
    add-int/lit8 v0, v4, 0x1

    move-wide/from16 v16, v11

    const/4 v1, 0x1

    const/4 v8, 0x4

    invoke-virtual {v7, v1, v8}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v11

    .line 40
    .end local v11    # "d1":D
    .local v16, "d1":D
    invoke-virtual {v11}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v11

    aput-wide v11, v3, v0

    .line 37
    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v11, v16

    move-object/from16 v8, p0

    goto :goto_0

    .line 42
    .end local v4    # "i":I
    .end local v16    # "d1":D
    .restart local v11    # "d1":D
    :cond_0
    move-object v15, v7

    move-wide/from16 v16, v11

    .line 42
    .end local v7    # "b":Ljava/math/BigDecimal;
    .end local v11    # "d1":D
    .restart local v15    # "b":Ljava/math/BigDecimal;
    .restart local v16    # "d1":D
    const/4 v13, 0x0

    .line 42
    .local v13, "i":I
    :goto_1
    move v0, v13

    .line 42
    .end local v13    # "i":I
    .local v0, "i":I
    add-int v1, v9, v10

    if-ge v0, v1, :cond_1

    .line 43
    new-instance v1, Ljava/math/BigDecimal;

    add-int/lit8 v4, v0, 0x1

    int-to-double v7, v4

    mul-double/2addr v7, v5

    add-double v7, p5, v7

    invoke-direct {v1, v7, v8}, Ljava/math/BigDecimal;-><init>(D)V

    .line 44
    .end local v15    # "b":Ljava/math/BigDecimal;
    .local v1, "b":Ljava/math/BigDecimal;
    add-int/lit8 v4, v9, 0x1

    add-int/2addr v4, v0

    const/4 v7, 0x1

    add-int/2addr v4, v7

    const/4 v8, 0x4

    invoke-virtual {v1, v7, v8}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v11

    .line 45
    invoke-virtual {v11}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v7

    aput-wide v7, v3, v4

    .line 42
    add-int/lit8 v13, v0, 0x1

    .line 42
    .end local v0    # "i":I
    .restart local v13    # "i":I
    move-object v15, v1

    goto :goto_1

    .line 47
    .end local v1    # "b":Ljava/math/BigDecimal;
    .end local v5    # "d2":D
    .end local v9    # "n":I
    .end local v10    # "m":I
    .end local v13    # "i":I
    .end local v16    # "d1":D
    .restart local v15    # "b":Ljava/math/BigDecimal;
    :cond_1
    goto :goto_3

    .line 48
    .end local v15    # "b":Ljava/math/BigDecimal;
    .local v4, "b":Ljava/math/BigDecimal;
    :cond_2
    sub-double v5, p1, p3

    add-int/lit8 v7, v2, -0x1

    int-to-double v7, v7

    div-double/2addr v5, v7

    .line 49
    .local v5, "d0":D
    move-object v15, v4

    const/4 v13, 0x0

    .line 49
    .end local v4    # "b":Ljava/math/BigDecimal;
    .restart local v13    # "i":I
    .restart local v15    # "b":Ljava/math/BigDecimal;
    :goto_2
    move v4, v13

    .line 49
    .end local v13    # "i":I
    .local v4, "i":I
    if-ge v4, v2, :cond_3

    .line 50
    new-instance v7, Ljava/math/BigDecimal;

    add-int/lit8 v8, v4, 0x1

    int-to-double v8, v8

    mul-double/2addr v8, v5

    add-double v8, p3, v8

    invoke-direct {v7, v8, v9}, Ljava/math/BigDecimal;-><init>(D)V

    .line 51
    .end local v15    # "b":Ljava/math/BigDecimal;
    .restart local v7    # "b":Ljava/math/BigDecimal;
    add-int/lit8 v8, v4, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x4

    invoke-virtual {v7, v9, v10}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v11

    .line 52
    invoke-virtual {v11}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v11

    aput-wide v11, v3, v8

    .line 49
    add-int/lit8 v13, v4, 0x1

    .line 49
    .end local v4    # "i":I
    .restart local v13    # "i":I
    move-object v15, v7

    goto :goto_2

    .line 55
    .end local v5    # "d0":D
    .end local v7    # "b":Ljava/math/BigDecimal;
    .end local v13    # "i":I
    .restart local v15    # "b":Ljava/math/BigDecimal;
    :cond_3
    :goto_3
    return-object v3
.end method

.method public createMY([D[D[DDDZZI)[D
    .locals 23
    .param p1, "a0"    # [D
    .param p2, "a1"    # [D
    .param p3, "mx"    # [D
    .param p4, "middleX"    # D
    .param p6, "yMin"    # D
    .param p8, "isSubFlag"    # Z
    .param p9, "isLog"    # Z
    .param p10, "ls_count"    # I

    .line 82
    move/from16 v0, p10

    const/16 v1, 0x10

    new-array v1, v1, [D

    .line 83
    .local v1, "my":[D
    const-wide/16 v2, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz p8, :cond_3

    .line 84
    move v11, v10

    .line 84
    .local v11, "i":I
    :goto_0
    move v12, v11

    .line 84
    .end local v11    # "i":I
    .local v12, "i":I
    move v4, v12

    if-ge v4, v0, :cond_6

    .line 85
    .end local v12    # "i":I
    .local v4, "i":I
    const-wide/16 v11, 0x0

    .line 86
    .local v11, "y":D
    const-wide/16 v14, 0x0

    .line 87
    .local v14, "x0":D
    if-eqz p9, :cond_1

    .line 88
    aget-wide v16, p3, v4

    cmpg-double v18, v16, v2

    if-gtz v18, :cond_0

    .line 89
    aget-wide v14, p3, v4

    .line 90
    aput-wide p6, v1, v4

    .line 91
    goto/16 :goto_4

    .line 93
    :cond_0
    aget-wide v2, p3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    goto :goto_1

    .line 96
    :cond_1
    aget-wide v2, p3, v4

    .line 98
    .end local v14    # "x0":D
    .local v2, "x0":D
    :goto_1
    aget-wide v14, p3, v4

    cmpg-double v18, v14, p4

    if-gtz v18, :cond_2

    .line 99
    aget-wide v14, p1, v10

    aget-wide v20, p1, v9

    mul-double v20, v20, v2

    add-double v14, v14, v20

    aget-wide v20, p1, v8

    mul-double v20, v20, v2

    mul-double v20, v20, v2

    add-double v14, v14, v20

    aget-wide v20, p1, v7

    mul-double v20, v20, v2

    mul-double v20, v20, v2

    mul-double v20, v20, v2

    add-double v14, v14, v20

    aget-wide v20, p1, v6

    mul-double v20, v20, v2

    mul-double v20, v20, v2

    mul-double v20, v20, v2

    mul-double v20, v20, v2

    add-double v14, v14, v20

    aget-wide v20, p1, v5

    mul-double v20, v20, v2

    mul-double v20, v20, v2

    mul-double v20, v20, v2

    mul-double v20, v20, v2

    mul-double v20, v20, v2

    add-double v14, v14, v20

    const/4 v13, 0x6

    aget-wide v20, p1, v13

    mul-double v20, v20, v2

    mul-double v20, v20, v2

    mul-double v20, v20, v2

    mul-double v20, v20, v2

    mul-double v20, v20, v2

    mul-double v20, v20, v2

    add-double v14, v14, v20

    .line 99
    .end local v11    # "y":D
    .local v14, "y":D
    :goto_2
    goto :goto_3

    .line 104
    .end local v14    # "y":D
    .restart local v11    # "y":D
    :cond_2
    aget-wide v14, p2, v10

    aget-wide v20, p2, v9

    mul-double v20, v20, v2

    add-double v14, v14, v20

    aget-wide v20, p2, v8

    mul-double v20, v20, v2

    mul-double v20, v20, v2

    add-double v14, v14, v20

    aget-wide v20, p2, v7

    mul-double v20, v20, v2

    mul-double v20, v20, v2

    mul-double v20, v20, v2

    add-double v14, v14, v20

    aget-wide v20, p2, v6

    mul-double v20, v20, v2

    mul-double v20, v20, v2

    mul-double v20, v20, v2

    mul-double v20, v20, v2

    add-double v14, v14, v20

    aget-wide v20, p2, v5

    mul-double v20, v20, v2

    mul-double v20, v20, v2

    mul-double v20, v20, v2

    mul-double v20, v20, v2

    mul-double v20, v20, v2

    add-double v14, v14, v20

    const/4 v13, 0x6

    aget-wide v20, p2, v13

    mul-double v20, v20, v2

    mul-double v20, v20, v2

    mul-double v20, v20, v2

    mul-double v20, v20, v2

    mul-double v20, v20, v2

    mul-double v20, v20, v2

    add-double v14, v14, v20

    goto :goto_2

    .line 112
    .end local v11    # "y":D
    .restart local v14    # "y":D
    :goto_3
    aput-wide v14, v1, v4

    .line 84
    .end local v2    # "x0":D
    .end local v14    # "y":D
    :goto_4
    add-int/lit8 v11, v4, 0x1

    .line 84
    .end local v4    # "i":I
    .local v11, "i":I
    const-wide/16 v2, 0x0

    goto/16 :goto_0

    .line 115
    .end local v11    # "i":I
    :cond_3
    move v2, v10

    .line 115
    .local v2, "i":I
    :goto_5
    if-ge v2, v0, :cond_6

    .line 116
    const-wide/16 v3, 0x0

    .line 117
    .local v3, "x0":D
    if-eqz p9, :cond_5

    .line 118
    aget-wide v11, p3, v2

    const-wide/16 v14, 0x0

    cmpg-double v18, v11, v14

    if-gtz v18, :cond_4

    .line 119
    aget-wide v3, p3, v2

    .line 120
    aput-wide p6, v1, v2

    .line 121
    nop

    .line 115
    move v12, v5

    move v11, v6

    const/4 v13, 0x6

    goto :goto_7

    .line 123
    :cond_4
    aget-wide v5, p3, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->log10(D)D

    move-result-wide v3

    goto :goto_6

    .line 126
    :cond_5
    const-wide/16 v14, 0x0

    aget-wide v3, p3, v2

    .line 128
    :goto_6
    aget-wide v5, p1, v10

    aget-wide v11, p1, v9

    mul-double/2addr v11, v3

    add-double/2addr v5, v11

    aget-wide v11, p1, v8

    mul-double/2addr v11, v3

    mul-double/2addr v11, v3

    add-double/2addr v5, v11

    aget-wide v11, p1, v7

    mul-double/2addr v11, v3

    mul-double/2addr v11, v3

    mul-double/2addr v11, v3

    add-double/2addr v5, v11

    const/4 v11, 0x4

    aget-wide v18, p1, v11

    mul-double v18, v18, v3

    mul-double v18, v18, v3

    mul-double v18, v18, v3

    mul-double v18, v18, v3

    add-double v5, v5, v18

    const/4 v12, 0x5

    aget-wide v18, p1, v12

    mul-double v18, v18, v3

    mul-double v18, v18, v3

    mul-double v18, v18, v3

    mul-double v18, v18, v3

    mul-double v18, v18, v3

    add-double v5, v5, v18

    const/4 v13, 0x6

    aget-wide v18, p1, v13

    mul-double v18, v18, v3

    mul-double v18, v18, v3

    mul-double v18, v18, v3

    mul-double v18, v18, v3

    mul-double v18, v18, v3

    mul-double v18, v18, v3

    add-double v5, v5, v18

    aput-wide v5, v1, v2

    .line 115
    .end local v3    # "x0":D
    :goto_7
    add-int/lit8 v2, v2, 0x1

    move v6, v11

    move v5, v12

    goto :goto_5

    .line 133
    .end local v2    # "i":I
    :cond_6
    return-object v1
.end method
