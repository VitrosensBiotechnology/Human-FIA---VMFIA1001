.class public Lcom/wen/fluorescence/arithmetic/LeastSquareMethod;
.super Ljava/lang/Object;
.source "LeastSquareMethod.java"


# static fields
.field public static final MAX:I = 0x10


# instance fields
.field public a:[D


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/16 v0, 0x10

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/wen/fluorescence/arithmetic/LeastSquareMethod;->a:[D

    .line 15
    return-void
.end method

.method public static Approx([D[D[DII)V
    .locals 17
    .param p0, "x"    # [D
    .param p1, "y"    # [D
    .param p2, "a"    # [D
    .param p3, "m"    # I
    .param p4, "n"    # I

    move/from16 v0, p3

    .line 189
    move/from16 v1, p4

    const/16 v2, 0x32

    filled-new-array {v2, v2}, [I

    move-result-object v3

    const-class v4, D

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    .line 190
    .local v3, "S":[[D
    new-array v4, v2, [D

    .line 191
    .local v4, "st":[D
    new-array v2, v2, [D

    .line 192
    .local v2, "T":[D
    const/4 v6, 0x0

    .line 192
    .local v6, "k":I
    :goto_0
    const/4 v7, 0x2

    mul-int/2addr v7, v0

    const-wide/16 v8, 0x0

    if-gt v6, v7, :cond_1

    .line 194
    aput-wide v8, v4, v6

    .line 195
    const/4 v7, 0x0

    .line 195
    .local v7, "j":I
    :goto_1
    if-ge v7, v1, :cond_0

    .line 196
    aget-wide v8, v4, v6

    aget-wide v10, p0, v7

    int-to-double v12, v6

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v8, v10

    aput-wide v8, v4, v6

    .line 195
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 192
    .end local v7    # "j":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 198
    .end local v6    # "k":I
    :cond_1
    const/4 v6, 0x0

    .line 198
    .restart local v6    # "k":I
    :goto_2
    if-gt v6, v0, :cond_4

    .line 199
    const/4 v7, 0x0

    .line 199
    .local v7, "i":I
    :goto_3
    if-gt v7, v0, :cond_2

    .line 201
    aget-object v10, v3, v6

    add-int v11, v6, v7

    aget-wide v11, v4, v11

    aput-wide v11, v10, v7

    .line 199
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 202
    .end local v7    # "i":I
    :cond_2
    aput-wide v8, v2, v6

    .line 203
    const/4 v7, 0x0

    .line 203
    .local v7, "j":I
    :goto_4
    if-ge v7, v1, :cond_3

    .line 205
    aget-wide v10, v2, v6

    aget-wide v13, p1, v7

    aget-wide v8, p0, v7

    move-object v15, v4

    int-to-double v4, v6

    .line 205
    .end local v4    # "st":[D
    .local v15, "st":[D
    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v13, v4

    add-double/2addr v10, v13

    aput-wide v10, v2, v6

    .line 203
    add-int/lit8 v7, v7, 0x1

    move-object v4, v15

    const-wide/16 v8, 0x0

    goto :goto_4

    .line 198
    .end local v7    # "j":I
    .end local v15    # "st":[D
    .restart local v4    # "st":[D
    :cond_3
    move-object v15, v4

    .line 198
    .end local v4    # "st":[D
    .restart local v15    # "st":[D
    add-int/lit8 v6, v6, 0x1

    const-wide/16 v8, 0x0

    goto :goto_2

    .line 208
    .end local v6    # "k":I
    .end local v15    # "st":[D
    .restart local v4    # "st":[D
    :cond_4
    move-object v15, v4

    .line 208
    .end local v4    # "st":[D
    .restart local v15    # "st":[D
    add-int/lit8 v4, v0, 0x1

    move-object/from16 v5, p2

    invoke-static {v3, v2, v5, v4}, Lcom/wen/fluorescence/arithmetic/LeastSquareMethod;->colPivot([[D[D[DI)V

    .line 209
    return-void
.end method

.method public static TestNew()V
    .locals 9

    .line 213
    const/4 v0, 0x4

    new-array v1, v0, [D

    fill-array-data v1, :array_0

    .line 214
    .local v1, "x":[D
    new-array v2, v0, [D

    fill-array-data v2, :array_1

    .line 217
    .local v2, "y":[D
    const/16 v3, 0x32

    new-array v3, v3, [D

    .line 219
    .local v3, "a":[D
    invoke-static {v1, v2, v3, v0, v0}, Lcom/wen/fluorescence/arithmetic/LeastSquareMethod;->Approx([D[D[DII)V

    .line 220
    const/16 v0, 0x10

    new-array v4, v0, [D

    .line 221
    .local v4, "n1":[D
    const/4 v5, 0x0

    move v6, v5

    .line 221
    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_0

    .line 222
    aget-wide v7, v3, v6

    aput-wide v7, v4, v6

    .line 221
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 223
    .end local v6    # "i":I
    :cond_0
    aget-wide v5, v1, v5

    .line 238
    .local v5, "yy":D
    return-void

    :array_0
    .array-data 8
        0x3ff8b480b17c7583L    # 1.544068044
        0x3ff9a209a839336cL    # 1.602059991
        0x4000000000000000L    # 2.0
        0x400268826a1f7ae7L    # 2.301029996
    .end array-data

    :array_1
    .array-data 8
        0x400c16f0068db8bbL    # 3.5112
        0x400e3d70a3d70a3dL    # 3.78
        0x4017510ad33c8ff5L    # 5.82914285714286
        0x401eb2617c1bda51L    # 7.6742
    .end array-data
.end method

.method public static colPivot([[D[D[DI)V
    .locals 12
    .param p0, "A"    # [[D
    .param p1, "b"    # [D
    .param p2, "x"    # [D
    .param p3, "n"    # I

    .line 150
    const-wide/16 v0, 0x0

    .line 151
    .local v0, "temp":D
    const/4 v2, 0x0

    .line 151
    .local v2, "i":I
    :goto_0
    add-int/lit8 v3, p3, -0x1

    if-ge v2, v3, :cond_6

    .line 152
    move v3, v2

    .line 153
    .local v3, "k":I
    add-int/lit8 v4, v2, 0x1

    .line 153
    .local v4, "j":I
    :goto_1
    if-ge v4, p3, :cond_1

    .line 154
    aget-object v5, p0, v4

    aget-wide v6, v5, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    aget-object v7, p0, v3

    aget-wide v8, v7, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpl-double v9, v5, v7

    if-lez v9, :cond_0

    .line 155
    move v3, v4

    .line 153
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 156
    .end local v4    # "j":I
    :cond_1
    if-eq v3, v2, :cond_3

    .line 158
    move-wide v4, v0

    move v0, v2

    .line 158
    .local v0, "j":I
    .local v4, "temp":D
    :goto_2
    if-ge v0, p3, :cond_2

    .line 159
    aget-object v1, p0, v2

    aget-wide v4, v1, v0

    .line 160
    aget-object v1, p0, v2

    aget-object v6, p0, v3

    aget-wide v7, v6, v0

    aput-wide v7, v1, v0

    .line 161
    aget-object v1, p0, v3

    aput-wide v4, v1, v0

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 163
    .end local v0    # "j":I
    :cond_2
    aget-wide v0, p1, v2

    .line 164
    .end local v4    # "temp":D
    .local v0, "temp":D
    aget-wide v4, p1, v3

    aput-wide v4, p1, v2

    .line 165
    aput-wide v0, p1, v3

    .line 167
    :cond_3
    add-int/lit8 v4, v2, 0x1

    .line 167
    .local v4, "j":I
    :goto_3
    if-ge v4, p3, :cond_5

    .line 169
    aget-object v5, p0, v4

    aget-wide v6, v5, v2

    aget-object v5, p0, v2

    aget-wide v8, v5, v2

    div-double v0, v6, v8

    .line 170
    move v5, v2

    .line 170
    .local v5, "t":I
    :goto_4
    if-ge v5, p3, :cond_4

    .line 171
    aget-object v6, p0, v4

    aget-wide v7, v6, v5

    aget-object v9, p0, v2

    aget-wide v10, v9, v5

    mul-double/2addr v10, v0

    sub-double/2addr v7, v10

    aput-wide v7, v6, v5

    .line 170
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 172
    .end local v5    # "t":I
    :cond_4
    aget-wide v5, p1, v4

    aget-wide v7, p1, v2

    mul-double/2addr v7, v0

    sub-double/2addr v5, v7

    aput-wide v5, p1, v4

    .line 167
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 151
    .end local v3    # "k":I
    .end local v4    # "j":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    .end local v2    # "i":I
    :cond_6
    add-int/lit8 v2, p3, -0x1

    .line 176
    .restart local v2    # "i":I
    :goto_5
    if-ltz v2, :cond_8

    .line 178
    add-int/lit8 v3, p3, -0x1

    .line 178
    .local v3, "j":I
    :goto_6
    add-int/lit8 v4, v2, 0x1

    if-lt v3, v4, :cond_7

    .line 179
    aget-wide v4, p1, v2

    aget-wide v6, p2, v3

    aget-object v8, p0, v2

    aget-wide v9, v8, v3

    mul-double/2addr v6, v9

    sub-double/2addr v4, v6

    aput-wide v4, p1, v2

    .line 178
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .line 180
    .end local v3    # "j":I
    :cond_7
    aget-wide v3, p1, v2

    aget-object v5, p0, v2

    aget-wide v6, v5, v2

    div-double/2addr v3, v6

    aput-wide v3, p2, v2

    .line 176
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 182
    .end local v2    # "i":I
    :cond_8
    return-void
.end method

.method private gauss_solve(I[D[D[D)V
    .locals 14
    .param p1, "n"    # I
    .param p2, "A"    # [D
    .param p3, "x"    # [D
    .param p4, "b"    # [D

    move v0, p1

    .line 111
    const/4 v1, 0x0

    .line 111
    .local v1, "k":I
    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_5

    .line 112
    mul-int v2, v1, v0

    add-int/2addr v2, v1

    aget-wide v2, p2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 113
    .local v2, "max":D
    move v4, v1

    .line 114
    .local v4, "r":I
    add-int/lit8 v5, v1, 0x1

    .line 114
    .local v5, "i":I
    :goto_1
    add-int/lit8 v6, v0, -0x1

    if-ge v5, v6, :cond_1

    .line 115
    mul-int v6, v5, v0

    add-int/2addr v6, v5

    aget-wide v6, p2, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpg-double v8, v2, v6

    if-gez v8, :cond_0

    .line 116
    mul-int v6, v5, v0

    add-int/2addr v6, v5

    aget-wide v6, p2, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 117
    move v4, v5

    .line 114
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 119
    :cond_1
    if-eq v4, v1, :cond_2

    .line 120
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v0, :cond_2

    .line 122
    mul-int v6, v1, v0

    add-int/2addr v6, v5

    aget-wide v2, p2, v6

    .line 123
    mul-int v6, v1, v0

    add-int/2addr v6, v5

    mul-int v7, v4, v0

    add-int/2addr v7, v5

    aget-wide v7, p2, v7

    aput-wide v7, p2, v6

    .line 124
    mul-int v6, v4, v0

    add-int/2addr v6, v5

    aput-wide v2, p2, v6

    .line 120
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 126
    :cond_2
    aget-wide v2, p4, v1

    .line 127
    aget-wide v6, p4, v4

    aput-wide v6, p4, v1

    .line 128
    aput-wide v2, p4, v4

    .line 129
    add-int/lit8 v5, v1, 0x1

    :goto_3
    if-ge v5, v0, :cond_4

    .line 130
    add-int/lit8 v6, v1, 0x1

    .line 130
    .local v6, "j":I
    :goto_4
    if-ge v6, v0, :cond_3

    .line 131
    mul-int v7, v5, v0

    add-int/2addr v7, v6

    aget-wide v8, p2, v7

    mul-int v10, v5, v0

    add-int/2addr v10, v1

    aget-wide v10, p2, v10

    mul-int v12, v1, v0

    add-int/2addr v12, v6

    aget-wide v12, p2, v12

    mul-double/2addr v10, v12

    mul-int v12, v1, v0

    add-int/2addr v12, v1

    aget-wide v12, p2, v12

    div-double/2addr v10, v12

    sub-double/2addr v8, v10

    aput-wide v8, p2, v7

    .line 130
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 132
    :cond_3
    aget-wide v7, p4, v5

    mul-int v9, v5, v0

    add-int/2addr v9, v1

    aget-wide v9, p2, v9

    aget-wide v11, p4, v1

    mul-double/2addr v9, v11

    mul-int v11, v1, v0

    add-int/2addr v11, v1

    aget-wide v11, p2, v11

    div-double/2addr v9, v11

    sub-double/2addr v7, v9

    aput-wide v7, p4, v5

    .line 129
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 111
    .end local v6    # "j":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 135
    .end local v2    # "max":D
    .end local v4    # "r":I
    .end local v5    # "i":I
    :cond_5
    add-int/lit8 v2, v0, -0x1

    .line 135
    .local v2, "i":I
    :goto_5
    if-ltz v2, :cond_7

    .line 136
    add-int/lit8 v3, v2, 0x1

    .line 136
    .local v3, "j":I
    aget-wide v4, p4, v2

    aput-wide v4, p3, v2

    :goto_6
    if-ge v3, v0, :cond_6

    .line 137
    aget-wide v4, p3, v2

    mul-int v6, v2, v0

    add-int/2addr v6, v3

    aget-wide v6, p2, v6

    aget-wide v8, p3, v3

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    aput-wide v4, p3, v2

    .line 136
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 135
    :cond_6
    aget-wide v4, p3, v2

    mul-int v6, v2, v0

    add-int/2addr v6, v2

    aget-wide v6, p2, v6

    div-double/2addr v4, v6

    aput-wide v4, p3, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 138
    .end local v3    # "j":I
    :cond_7
    return-void
.end method


# virtual methods
.method public Test()V
    .locals 8

    .line 29
    const/4 v0, 0x4

    new-array v1, v0, [D

    fill-array-data v1, :array_0

    .line 30
    .local v1, "x":[D
    new-array v2, v0, [D

    fill-array-data v2, :array_1

    .line 35
    .local v2, "y":[D
    const/4 v3, 0x6

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/wen/fluorescence/arithmetic/LeastSquareMethod;->polyfit(I[D[DI)V

    .line 36
    const/16 v0, 0x10

    new-array v3, v0, [D

    .line 37
    .local v3, "n":[D
    const/4 v4, 0x0

    .line 37
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 38
    iget-object v5, p0, Lcom/wen/fluorescence/arithmetic/LeastSquareMethod;->a:[D

    aget-wide v6, v5, v4

    aput-wide v6, v3, v4

    .line 37
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 39
    .end local v4    # "i":I
    :cond_0
    const-wide/16 v4, 0x0

    .line 42
    .local v4, "yy":D
    return-void

    :array_0
    .array-data 8
        0x3ff8b480b17c7583L    # 1.544068044
        0x3ff9a209a839336cL    # 1.602059991
        0x4000000000000000L    # 2.0
        0x400268826a1f7ae7L    # 2.301029996
    .end array-data

    :array_1
    .array-data 8
        0x400c16f0068db8bbL    # 3.5112
        0x400e3d70a3d70a3dL    # 3.78
        0x4017510ad33c8ff5L    # 5.82914285714286
        0x401eb2617c1bda51L    # 7.6742
    .end array-data
.end method

.method public polyfit(I[D[DI)V
    .locals 17
    .param p1, "n"    # I
    .param p2, "x"    # [D
    .param p3, "y"    # [D
    .param p4, "poly_n"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 66
    const/16 v2, 0x10

    new-array v2, v2, [D

    iput-object v2, v0, Lcom/wen/fluorescence/arithmetic/LeastSquareMethod;->a:[D

    .line 68
    new-array v2, v1, [D

    .line 69
    .local v2, "tempx":[D
    mul-int/lit8 v3, p4, 0x2

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [D

    .line 70
    .local v3, "sumxx":[D
    new-array v4, v1, [D

    .line 72
    .local v4, "tempy":[D
    add-int/lit8 v5, p4, 0x1

    new-array v5, v5, [D

    .line 73
    .local v5, "sumxy":[D
    add-int/lit8 v6, p4, 0x1

    add-int/lit8 v7, p4, 0x1

    mul-int/2addr v6, v7

    new-array v6, v6, [D

    .line 79
    .local v6, "ata":[D
    const/4 v7, 0x0

    move v8, v7

    .line 79
    .local v8, "i":I
    :goto_0
    if-ge v8, v1, :cond_0

    .line 80
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    aput-wide v9, v2, v8

    .line 81
    aget-wide v10, p3, v8

    aput-wide v10, v4, v8

    .line 79
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 83
    :cond_0
    const/4 v8, 0x0

    :goto_1
    const/4 v10, 0x2

    mul-int v10, v10, p4

    add-int/lit8 v10, v10, 0x1

    const-wide/16 v11, 0x0

    if-ge v8, v10, :cond_2

    .line 84
    aput-wide v11, v3, v8

    move v10, v7

    .line 84
    .local v10, "j":I
    :goto_2
    if-ge v10, v1, :cond_1

    .line 85
    aget-wide v11, v3, v8

    aget-wide v13, v2, v10

    add-double/2addr v11, v13

    aput-wide v11, v3, v8

    .line 86
    aget-wide v11, v2, v10

    aget-wide v13, p2, v10

    mul-double/2addr v11, v13

    aput-wide v11, v2, v10

    .line 84
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 83
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 88
    .end local v10    # "j":I
    :cond_2
    const/4 v8, 0x0

    :goto_3
    add-int/lit8 v10, p4, 0x1

    if-ge v8, v10, :cond_4

    .line 89
    aput-wide v11, v5, v8

    move v10, v7

    .line 89
    .restart local v10    # "j":I
    :goto_4
    if-ge v10, v1, :cond_3

    .line 90
    aget-wide v13, v5, v8

    aget-wide v15, v4, v10

    add-double/2addr v13, v15

    aput-wide v13, v5, v8

    .line 91
    aget-wide v13, v4, v10

    aget-wide v15, p2, v10

    mul-double/2addr v13, v15

    aput-wide v13, v4, v10

    .line 89
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 88
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 93
    .end local v10    # "j":I
    :cond_4
    const/4 v8, 0x0

    :goto_5
    add-int/lit8 v10, p4, 0x1

    if-ge v8, v10, :cond_6

    .line 94
    move v10, v7

    .line 94
    .restart local v10    # "j":I
    :goto_6
    add-int/lit8 v11, p4, 0x1

    if-ge v10, v11, :cond_5

    .line 95
    add-int/lit8 v11, p4, 0x1

    mul-int/2addr v11, v8

    add-int/2addr v11, v10

    add-int v12, v8, v10

    aget-wide v12, v3, v12

    aput-wide v12, v6, v11

    .line 94
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 93
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 96
    .end local v10    # "j":I
    :cond_6
    add-int/lit8 v7, p4, 0x1

    iget-object v10, v0, Lcom/wen/fluorescence/arithmetic/LeastSquareMethod;->a:[D

    invoke-direct {v0, v7, v6, v10, v5}, Lcom/wen/fluorescence/arithmetic/LeastSquareMethod;->gauss_solve(I[D[D[D)V

    .line 103
    return-void
.end method
