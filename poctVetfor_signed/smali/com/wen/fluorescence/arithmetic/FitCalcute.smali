.class public Lcom/wen/fluorescence/arithmetic/FitCalcute;
.super Ljava/lang/Object;
.source "FitCalcute.java"


# instance fields
.field private LeastSquare:Lcom/wen/fluorescence/arithmetic/LeastSquareMethod;

.field private a0:[D

.field private a1:[D

.field private isInflexion:Z

.field private myContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "myContext"    # Landroid/content/Context;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wen/fluorescence/arithmetic/FitCalcute;->isInflexion:Z

    .line 32
    iput-object p1, p0, Lcom/wen/fluorescence/arithmetic/FitCalcute;->myContext:Landroid/content/Context;

    .line 33
    new-instance v0, Lcom/wen/fluorescence/arithmetic/LeastSquareMethod;

    invoke-direct {v0}, Lcom/wen/fluorescence/arithmetic/LeastSquareMethod;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/arithmetic/FitCalcute;->LeastSquare:Lcom/wen/fluorescence/arithmetic/LeastSquareMethod;

    .line 34
    const/16 v0, 0x10

    new-array v1, v0, [D

    iput-object v1, p0, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    .line 35
    new-array v0, v0, [D

    iput-object v0, p0, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a1:[D

    .line 36
    return-void
.end method

.method private FindY([DDDD[DI)D
    .locals 34
    .param p1, "a"    # [D
    .param p2, "x1"    # D
    .param p4, "x2"    # D
    .param p6, "cy"    # D
    .param p8, "ld_Y"    # [D
    .param p9, "li_Count"    # I

    .line 812
    const-string v1, "%.8f"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static/range {p6 .. p7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 813
    .local v1, "ls_cy":Ljava/lang/String;
    const-string v3, ""

    .line 814
    .local v3, "ls_Y":Ljava/lang/String;
    aget-wide v6, p8, v5

    add-int/lit8 v8, p9, -0x1

    aget-wide v8, p8, v8

    cmpg-double v10, v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const/4 v11, 0x6

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x2

    if-gez v10, :cond_5

    .line 818
    move-wide/from16 v16, p2

    .line 819
    .local v16, "low":D
    move-wide/from16 v18, p4

    .line 820
    .local v18, "high":D
    add-double v20, v16, v18

    div-double v20, v20, v8

    .line 822
    .local v20, "mid":D
    aget-wide v22, p1, v5

    aget-wide v24, p1, v2

    mul-double v24, v24, p4

    add-double v22, v22, v24

    aget-wide v24, p1, v15

    mul-double v24, v24, p4

    mul-double v24, v24, p4

    add-double v22, v22, v24

    aget-wide v24, p1, v14

    mul-double v24, v24, p4

    mul-double v24, v24, p4

    mul-double v24, v24, p4

    add-double v22, v22, v24

    aget-wide v24, p1, v13

    mul-double v24, v24, p4

    mul-double v24, v24, p4

    mul-double v24, v24, p4

    mul-double v24, v24, p4

    add-double v22, v22, v24

    aget-wide v24, p1, v12

    mul-double v24, v24, p4

    mul-double v24, v24, p4

    mul-double v24, v24, p4

    mul-double v24, v24, p4

    mul-double v24, v24, p4

    add-double v22, v22, v24

    aget-wide v24, p1, v11

    mul-double v24, v24, p4

    mul-double v24, v24, p4

    mul-double v24, v24, p4

    mul-double v24, v24, p4

    mul-double v24, v24, p4

    mul-double v24, v24, p4

    add-double v22, v22, v24

    .line 825
    .local v22, "Max":D
    aget-wide v24, p1, v5

    aget-wide v26, p1, v2

    mul-double v26, v26, p2

    add-double v24, v24, v26

    aget-wide v26, p1, v15

    mul-double v26, v26, p2

    mul-double v26, v26, p2

    add-double v24, v24, v26

    aget-wide v26, p1, v14

    mul-double v26, v26, p2

    mul-double v26, v26, p2

    mul-double v26, v26, p2

    add-double v24, v24, v26

    aget-wide v26, p1, v13

    mul-double v26, v26, p2

    mul-double v26, v26, p2

    mul-double v26, v26, p2

    mul-double v26, v26, p2

    add-double v24, v24, v26

    aget-wide v26, p1, v12

    mul-double v26, v26, p2

    mul-double v26, v26, p2

    mul-double v26, v26, p2

    mul-double v26, v26, p2

    mul-double v26, v26, p2

    add-double v24, v24, v26

    aget-wide v26, p1, v11

    mul-double v26, v26, p2

    mul-double v26, v26, p2

    mul-double v26, v26, p2

    mul-double v26, v26, p2

    mul-double v26, v26, p2

    mul-double v26, v26, p2

    add-double v24, v24, v26

    .line 828
    .local v24, "Min":D
    cmpl-double v10, p6, v22

    if-gtz v10, :cond_4

    cmpg-double v10, p6, v24

    if-gez v10, :cond_0

    goto :goto_2

    .line 830
    :cond_0
    :goto_0
    cmpg-double v10, v16, v18

    if-gtz v10, :cond_3

    .line 831
    add-double v26, v16, v18

    div-double v20, v26, v8

    .line 832
    move-wide/from16 v26, v20

    .line 833
    .local v26, "x":D
    aget-wide v28, p1, v5

    aget-wide v30, p1, v2

    mul-double v30, v30, v26

    add-double v28, v28, v30

    aget-wide v30, p1, v15

    mul-double v30, v30, v26

    mul-double v30, v30, v26

    add-double v28, v28, v30

    aget-wide v30, p1, v14

    mul-double v30, v30, v26

    mul-double v30, v30, v26

    mul-double v30, v30, v26

    add-double v28, v28, v30

    aget-wide v30, p1, v13

    mul-double v30, v30, v26

    mul-double v30, v30, v26

    mul-double v30, v30, v26

    mul-double v30, v30, v26

    add-double v28, v28, v30

    aget-wide v30, p1, v12

    mul-double v30, v30, v26

    mul-double v30, v30, v26

    mul-double v30, v30, v26

    mul-double v30, v30, v26

    mul-double v30, v30, v26

    add-double v28, v28, v30

    aget-wide v30, p1, v11

    mul-double v30, v30, v26

    mul-double v30, v30, v26

    mul-double v30, v30, v26

    mul-double v30, v30, v26

    mul-double v30, v30, v26

    mul-double v30, v30, v26

    add-double v6, v28, v30

    .line 837
    .local v6, "y":D
    const-string v8, "%.8f"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v0, v5

    invoke-static {v8, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 838
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 839
    return-wide v20

    .line 840
    :cond_1
    cmpg-double v0, v6, p6

    if-gez v0, :cond_2

    .line 841
    move-wide/from16 v16, v20

    .line 830
    .end local v6    # "y":D
    .end local v26    # "x":D
    :goto_1
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    goto :goto_0

    .line 843
    .restart local v6    # "y":D
    .restart local v26    # "x":D
    :cond_2
    move-wide/from16 v18, v20

    goto :goto_1

    .line 846
    .end local v6    # "y":D
    .end local v16    # "low":D
    .end local v18    # "high":D
    .end local v20    # "mid":D
    .end local v22    # "Max":D
    .end local v24    # "Min":D
    .end local v26    # "x":D
    :cond_3
    goto/16 :goto_4

    .line 829
    .restart local v16    # "low":D
    .restart local v18    # "high":D
    .restart local v20    # "mid":D
    .restart local v22    # "Max":D
    .restart local v24    # "Min":D
    :cond_4
    :goto_2
    const-wide/16 v5, 0x0

    return-wide v5

    .line 851
    .end local v16    # "low":D
    .end local v18    # "high":D
    .end local v20    # "mid":D
    .end local v22    # "Max":D
    .end local v24    # "Min":D
    :cond_5
    move-wide/from16 v6, p2

    .line 852
    .local v6, "low":D
    move-wide/from16 v8, p4

    .line 853
    .local v8, "high":D
    add-double v16, v6, v8

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v16, v16, v18

    .line 856
    .local v16, "mid":D
    aget-wide v18, p1, v5

    aget-wide v20, p1, v2

    mul-double v20, v20, p4

    add-double v18, v18, v20

    aget-wide v20, p1, v15

    mul-double v20, v20, p4

    mul-double v20, v20, p4

    add-double v18, v18, v20

    aget-wide v20, p1, v14

    mul-double v20, v20, p4

    mul-double v20, v20, p4

    mul-double v20, v20, p4

    add-double v18, v18, v20

    aget-wide v20, p1, v13

    mul-double v20, v20, p4

    mul-double v20, v20, p4

    mul-double v20, v20, p4

    mul-double v20, v20, p4

    add-double v18, v18, v20

    aget-wide v20, p1, v12

    mul-double v20, v20, p4

    mul-double v20, v20, p4

    mul-double v20, v20, p4

    mul-double v20, v20, p4

    mul-double v20, v20, p4

    add-double v18, v18, v20

    aget-wide v20, p1, v11

    mul-double v20, v20, p4

    mul-double v20, v20, p4

    mul-double v20, v20, p4

    mul-double v20, v20, p4

    mul-double v20, v20, p4

    mul-double v20, v20, p4

    add-double v18, v18, v20

    .line 859
    .local v18, "Max":D
    aget-wide v20, p1, v5

    aget-wide v22, p1, v2

    mul-double v22, v22, p2

    add-double v20, v20, v22

    aget-wide v22, p1, v15

    mul-double v22, v22, p2

    mul-double v22, v22, p2

    add-double v20, v20, v22

    aget-wide v22, p1, v14

    mul-double v22, v22, p2

    mul-double v22, v22, p2

    mul-double v22, v22, p2

    add-double v20, v20, v22

    aget-wide v22, p1, v13

    mul-double v22, v22, p2

    mul-double v22, v22, p2

    mul-double v22, v22, p2

    mul-double v22, v22, p2

    add-double v20, v20, v22

    aget-wide v22, p1, v12

    mul-double v22, v22, p2

    mul-double v22, v22, p2

    mul-double v22, v22, p2

    mul-double v22, v22, p2

    mul-double v22, v22, p2

    add-double v20, v20, v22

    aget-wide v22, p1, v11

    mul-double v22, v22, p2

    mul-double v22, v22, p2

    mul-double v22, v22, p2

    mul-double v22, v22, p2

    mul-double v22, v22, p2

    mul-double v22, v22, p2

    add-double v20, v20, v22

    .line 863
    .local v20, "Min":D
    cmpg-double v0, p6, v18

    if-ltz v0, :cond_a

    cmpl-double v0, p6, v20

    if-lez v0, :cond_6

    goto/16 :goto_5

    .line 865
    :cond_6
    :goto_3
    cmpg-double v0, v6, v8

    if-gtz v0, :cond_9

    .line 866
    add-double v22, v6, v8

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    div-double v16, v22, v24

    .line 867
    move-wide/from16 v22, v16

    .line 868
    .local v22, "x":D
    aget-wide v26, p1, v5

    aget-wide v28, p1, v2

    mul-double v28, v28, v22

    add-double v26, v26, v28

    aget-wide v28, p1, v15

    mul-double v28, v28, v22

    mul-double v28, v28, v22

    add-double v26, v26, v28

    aget-wide v28, p1, v14

    mul-double v28, v28, v22

    mul-double v28, v28, v22

    mul-double v28, v28, v22

    add-double v26, v26, v28

    aget-wide v28, p1, v13

    mul-double v28, v28, v22

    mul-double v28, v28, v22

    mul-double v28, v28, v22

    mul-double v28, v28, v22

    add-double v26, v26, v28

    aget-wide v28, p1, v12

    mul-double v28, v28, v22

    mul-double v28, v28, v22

    mul-double v28, v28, v22

    mul-double v28, v28, v22

    mul-double v28, v28, v22

    add-double v26, v26, v28

    aget-wide v28, p1, v11

    mul-double v28, v28, v22

    mul-double v28, v28, v22

    mul-double v28, v28, v22

    mul-double v28, v28, v22

    mul-double v28, v28, v22

    mul-double v28, v28, v22

    move-wide/from16 v32, v6

    add-double v5, v26, v28

    .line 874
    .end local v6    # "low":D
    .local v5, "y":D
    .local v32, "low":D
    const-string v0, "%.8f"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    const/16 v26, 0x0

    aput-object v10, v7, v26

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 875
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 876
    return-wide v16

    .line 879
    :cond_7
    cmpl-double v0, v5, p6

    if-lez v0, :cond_8

    .line 880
    move-wide/from16 v27, v16

    .line 865
    .end local v32    # "low":D
    .local v27, "low":D
    move/from16 v5, v26

    move-wide/from16 v6, v27

    goto :goto_3

    .line 882
    .end local v27    # "low":D
    .restart local v32    # "low":D
    :cond_8
    move-wide/from16 v8, v16

    .line 865
    move/from16 v5, v26

    move-wide/from16 v6, v32

    goto :goto_3

    .line 885
    .end local v5    # "y":D
    .end local v8    # "high":D
    .end local v16    # "mid":D
    .end local v18    # "Max":D
    .end local v20    # "Min":D
    .end local v22    # "x":D
    .end local v32    # "low":D
    :cond_9
    :goto_4
    const-wide/16 v10, 0x0

    return-wide v10

    .line 864
    .restart local v6    # "low":D
    .restart local v8    # "high":D
    .restart local v16    # "mid":D
    .restart local v18    # "Max":D
    .restart local v20    # "Min":D
    :cond_a
    :goto_5
    const-wide/16 v10, 0x0

    return-wide v10
.end method


# virtual methods
.method public FitRise([D[DZZII[I)I
    .locals 82
    .param p1, "mx"    # [D
    .param p2, "my"    # [D
    .param p3, "mSubFlag"    # Z
    .param p4, "mLogFlag"    # Z
    .param p5, "L"    # I
    .param p6, "p"    # I
    .param p7, "m_dimen"    # [I

    move-object/from16 v0, p0

    move/from16 v5, p5

    move/from16 v6, p6

    .line 83
    const/4 v8, 0x0

    .line 83
    .local v8, "i":I
    const/4 v9, 0x0

    .line 83
    .local v9, "j":I
    const/4 v10, 0x0

    .line 85
    .local v10, "k":I
    const/16 v11, 0x10

    .line 86
    .local v11, "m":I
    const/4 v12, 0x0

    .line 87
    .local v12, "mp":I
    const/4 v13, 0x0

    .line 88
    .local v13, "mq":I
    const-wide/16 v14, 0x0

    .line 88
    .local v14, "rss":D
    const-wide/16 v16, 0x0

    .line 90
    .local v16, "Orss":D
    move/from16 v18, v8

    const/4 v8, 0x0

    .line 90
    .end local v8    # "i":I
    .local v18, "i":I
    iput-boolean v8, v0, Lcom/wen/fluorescence/arithmetic/FitCalcute;->isInflexion:Z

    .line 92
    const/16 v8, 0x10

    move/from16 v20, v9

    new-array v9, v8, [D

    .line 93
    .local v9, "mX0":[D
    .local v20, "j":I
    move/from16 v21, v10

    new-array v10, v8, [D

    .line 94
    .local v10, "mX1":[D
    .local v21, "k":I
    move/from16 v22, v11

    new-array v11, v8, [D

    .line 95
    .local v11, "mY0":[D
    .local v22, "m":I
    move/from16 v23, v12

    new-array v12, v8, [D

    .line 96
    .local v12, "mY1":[D
    .local v23, "mp":I
    const/16 v8, 0xa

    move/from16 v25, v13

    const/4 v13, 0x6

    .line 96
    .end local v13    # "mq":I
    .local v25, "mq":I
    move-wide/from16 v26, v14

    filled-new-array {v13, v8}, [I

    move-result-object v14

    .line 96
    .end local v14    # "rss":D
    .local v26, "rss":D
    const-class v15, D

    invoke-static {v15, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[D

    .line 97
    .local v14, "ma0":[[D
    filled-new-array {v13, v8}, [I

    move-result-object v15

    const-class v8, D

    invoke-static {v8, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[D

    .line 98
    .local v8, "ma1":[[D
    const-wide/16 v29, 0x0

    .line 100
    .local v29, "y0":D
    const/4 v15, 0x0

    .line 100
    .end local v18    # "i":I
    .local v15, "i":I
    :goto_0
    const-wide/16 v31, 0x0

    if-ge v15, v13, :cond_1

    .line 101
    const/16 v18, 0x0

    .line 101
    .end local v20    # "j":I
    .local v18, "j":I
    move/from16 v13, v18

    .line 101
    .end local v18    # "j":I
    .local v13, "j":I
    :goto_1
    const/16 v0, 0xa

    if-ge v13, v0, :cond_0

    .line 102
    aget-object v18, v14, v15

    aput-wide v31, v18, v13

    .line 103
    aget-object v18, v8, v15

    aput-wide v31, v18, v13

    .line 101
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    goto :goto_1

    .line 100
    :cond_0
    add-int/lit8 v15, v15, 0x1

    move/from16 v20, v13

    move-object/from16 v0, p0

    const/4 v13, 0x6

    goto :goto_0

    .line 108
    .end local v13    # "j":I
    .restart local v20    # "j":I
    :cond_1
    const/4 v0, 0x3

    if-eqz p3, :cond_a

    .line 110
    if-ge v6, v0, :cond_2

    .line 111
    const/4 v0, 0x0

    return v0

    .line 112
    :cond_2
    move/from16 v18, v6

    .line 113
    .end local v23    # "mp":I
    .local v18, "mp":I
    const/4 v15, 0x0

    :goto_2
    const/16 v0, 0x10

    if-ge v15, v0, :cond_4

    .line 115
    if-ge v15, v6, :cond_3

    .line 116
    aget-wide v36, p1, v15

    aput-wide v36, v9, v15

    .line 117
    aget-wide v36, p2, v15

    aput-wide v36, v11, v15

    goto :goto_3

    .line 119
    :cond_3
    sub-int v0, v15, v6

    add-int/lit8 v23, v15, -0x1

    aget-wide v36, p1, v23

    aput-wide v36, v10, v0

    .line 120
    sub-int v0, v15, v6

    add-int/lit8 v23, v15, -0x1

    aget-wide v36, p2, v23

    aput-wide v36, v12, v0

    .line 113
    :goto_3
    add-int/lit8 v15, v15, 0x1

    const/4 v0, 0x3

    goto :goto_2

    .line 123
    :cond_4
    if-eqz p4, :cond_9

    .line 125
    const/4 v0, 0x0

    aget-wide v28, v11, v0

    .line 126
    .end local v29    # "y0":D
    .local v28, "y0":D
    const/4 v0, 0x0

    .line 126
    .end local v15    # "i":I
    .local v0, "i":I
    move/from16 v15, v18

    .line 126
    .end local v18    # "mp":I
    .local v15, "mp":I
    :goto_4
    if-ge v0, v15, :cond_7

    .line 128
    aget-wide v36, v9, v0

    cmpg-double v18, v36, v31

    if-gtz v18, :cond_6

    .line 129
    move/from16 v18, v0

    .line 129
    .end local v20    # "j":I
    .local v18, "j":I
    move/from16 v13, v18

    .line 129
    .end local v18    # "j":I
    .restart local v13    # "j":I
    :goto_5
    if-ge v13, v15, :cond_5

    .line 131
    add-int/lit8 v18, v13, 0x1

    aget-wide v36, v9, v18

    aput-wide v36, v9, v13

    .line 132
    add-int/lit8 v18, v13, 0x1

    aget-wide v36, v11, v18

    aput-wide v36, v11, v13

    .line 129
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 134
    :cond_5
    add-int/lit8 v15, v15, -0x1

    .line 135
    add-int/lit8 v0, v0, -0x1

    .line 136
    nop

    .line 126
    move-object/from16 v39, v12

    move/from16 v20, v13

    goto :goto_6

    .line 138
    .end local v13    # "j":I
    .restart local v20    # "j":I
    :cond_6
    move-object/from16 v39, v12

    aget-wide v12, v9, v0

    .line 138
    .end local v12    # "mY1":[D
    .local v39, "mY1":[D
    invoke-static {v12, v13}, Ljava/lang/Math;->log10(D)D

    move-result-wide v12

    aput-wide v12, v9, v0

    .line 126
    :goto_6
    const/4 v12, 0x1

    add-int/2addr v0, v12

    move-object/from16 v12, v39

    goto :goto_4

    .line 140
    .end local v39    # "mY1":[D
    .restart local v12    # "mY1":[D
    :cond_7
    move-object/from16 v39, v12

    const/4 v12, 0x1

    .line 140
    .end local v12    # "mY1":[D
    .restart local v39    # "mY1":[D
    const/4 v0, 0x0

    move-wide/from16 v29, v28

    .line 140
    .end local v28    # "y0":D
    .restart local v29    # "y0":D
    :goto_7
    sub-int v13, v5, v6

    add-int/2addr v13, v12

    if-ge v0, v13, :cond_8

    .line 142
    aget-wide v12, v10, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->log10(D)D

    move-result-wide v12

    aput-wide v12, v10, v0

    move-wide/from16 v29, v12

    .line 140
    add-int/lit8 v0, v0, 0x1

    const/4 v12, 0x1

    goto :goto_7

    .line 144
    :cond_8
    move v13, v0

    .line 176
    .end local v25    # "mq":I
    .local v13, "mq":I
    move/from16 v81, v15

    move v15, v0

    move/from16 v0, v81

    goto/16 :goto_d

    .line 146
    .end local v0    # "i":I
    .end local v13    # "mq":I
    .end local v39    # "mY1":[D
    .restart local v12    # "mY1":[D
    .local v15, "i":I
    .local v18, "mp":I
    .restart local v25    # "mq":I
    :cond_9
    move-object/from16 v39, v12

    .line 146
    .end local v12    # "mY1":[D
    .restart local v39    # "mY1":[D
    sub-int v0, v5, v6

    const/4 v12, 0x1

    add-int/lit8 v13, v0, 0x1

    .line 176
    .end local v25    # "mq":I
    .restart local v13    # "mq":I
    move/from16 v0, v18

    goto :goto_d

    .line 150
    .end local v13    # "mq":I
    .end local v18    # "mp":I
    .end local v39    # "mY1":[D
    .restart local v12    # "mY1":[D
    .restart local v23    # "mp":I
    .restart local v25    # "mq":I
    :cond_a
    move-object/from16 v39, v12

    .line 150
    .end local v12    # "mY1":[D
    .restart local v39    # "mY1":[D
    const/4 v0, 0x0

    .line 150
    .end local v15    # "i":I
    .restart local v0    # "i":I
    move v15, v0

    .line 150
    .end local v0    # "i":I
    .restart local v15    # "i":I
    :goto_8
    if-ge v15, v5, :cond_c

    .line 151
    aget-wide v12, p2, v15

    cmpl-double v0, v12, v31

    if-nez v0, :cond_b

    .line 152
    goto :goto_9

    .line 153
    :cond_b
    aget-wide v12, p1, v15

    aput-wide v12, v9, v15

    .line 154
    aget-wide v12, p2, v15

    aput-wide v12, v11, v15

    .line 150
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 156
    :cond_c
    :goto_9
    move/from16 v18, v15

    .line 157
    .end local v23    # "mp":I
    .restart local v18    # "mp":I
    if-eqz p4, :cond_f

    .line 159
    const/4 v0, 0x0

    aget-wide v29, v11, v0

    .line 160
    const/4 v0, 0x0

    .line 160
    .end local v15    # "i":I
    .restart local v0    # "i":I
    move v15, v0

    move/from16 v0, v18

    .line 160
    .end local v18    # "mp":I
    .local v0, "mp":I
    .restart local v15    # "i":I
    :goto_a
    if-ge v15, v0, :cond_10

    .line 161
    aget-wide v12, v9, v15

    cmpg-double v18, v12, v31

    if-gtz v18, :cond_e

    .line 162
    move v12, v15

    .line 162
    .end local v20    # "j":I
    .local v12, "j":I
    :goto_b
    if-ge v12, v0, :cond_d

    .line 163
    add-int/lit8 v13, v12, 0x1

    aget-wide v36, v9, v13

    aput-wide v36, v9, v12

    .line 164
    add-int/lit8 v13, v12, 0x1

    aget-wide v36, v11, v13

    aput-wide v36, v11, v12

    .line 162
    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    .line 166
    :cond_d
    add-int/lit8 v0, v0, -0x1

    .line 167
    add-int/lit8 v15, v15, -0x1

    .line 168
    nop

    .line 160
    move/from16 v20, v12

    goto :goto_c

    .line 170
    .end local v12    # "j":I
    .restart local v20    # "j":I
    :cond_e
    aget-wide v12, v9, v15

    invoke-static {v12, v13}, Ljava/lang/Math;->log10(D)D

    move-result-wide v12

    aput-wide v12, v9, v15

    .line 160
    :goto_c
    const/4 v12, 0x1

    add-int/2addr v15, v12

    goto :goto_a

    .line 176
    .end local v0    # "mp":I
    .restart local v18    # "mp":I
    :cond_f
    move/from16 v0, v18

    .line 176
    .end local v18    # "mp":I
    .end local v25    # "mq":I
    .restart local v0    # "mp":I
    .restart local v13    # "mq":I
    :cond_10
    move/from16 v13, v25

    :goto_d
    const/4 v12, 0x1

    .line 177
    .local v12, "poly_n":I
    const/16 v18, 0x2

    if-eqz p4, :cond_11

    const/16 v23, 0x1

    goto :goto_e

    :cond_11
    move/from16 v23, v18

    .line 181
    .local v23, "pro":I
    :goto_e
    const/16 v25, 0x0

    .line 181
    .local v25, "ii":I
    const/16 v28, 0x0

    .line 182
    .local v28, "jj":I
    const/16 v36, 0x0

    .line 183
    .local v36, "iFlag":I
    const-wide/16 v40, 0x0

    .line 185
    .local v40, "yyy":D
    const-wide/16 v42, 0x0

    .line 185
    .local v42, "tss":D
    const-wide/16 v44, 0x0

    .line 187
    .local v44, "ess":D
    const/16 v37, 0x0

    .line 187
    .local v37, "li_End":I
    const/16 v46, 0x0

    .line 189
    .local v46, "li_Start":I
    const/16 v19, 0x0

    aget v47, p7, v19

    if-nez v47, :cond_12

    .line 190
    const/16 v46, 0x0

    .line 191
    const/16 v37, 0x6

    .line 199
    .end local v37    # "li_End":I
    .local v1, "li_End":I
    :goto_f
    move/from16 v1, v37

    goto :goto_10

    .line 193
    .end local v1    # "li_End":I
    .restart local v37    # "li_End":I
    :cond_12
    aget v47, p7, v19

    const/16 v38, 0x1

    add-int/lit8 v46, v47, -0x1

    .line 194
    aget v37, p7, v19

    goto :goto_f

    .line 199
    .end local v37    # "li_End":I
    .restart local v1    # "li_End":I
    :goto_10
    const-wide v48, 0x3fb999999999999aL    # 0.1

    const-wide v50, 0x3f847ae147ae147bL    # 0.01

    const/16 v37, 0x5

    const/16 v47, 0x4

    if-nez p3, :cond_22

    .line 202
    const/16 v36, 0x0

    .line 203
    add-int/lit8 v12, v46, 0x1

    .line 205
    move/from16 v15, v46

    move v2, v12

    move/from16 v12, v25

    .line 205
    .end local v25    # "ii":I
    .local v2, "poly_n":I
    .local v12, "ii":I
    :goto_11
    if-ge v15, v1, :cond_1b

    .line 208
    const/16 v25, 0x0

    .line 209
    .local v25, "mcFlag":I
    const/4 v3, 0x3

    if-ge v0, v3, :cond_13

    .line 210
    const/4 v15, 0x6

    .line 211
    nop

    .line 253
    move-object/from16 v52, v8

    move-object/from16 v5, p0

    goto/16 :goto_18

    .line 213
    :cond_13
    const/4 v3, 0x0

    .line 213
    .local v3, "nn":I
    :goto_12
    const/16 v5, 0x10

    if-ge v3, v5, :cond_14

    .line 214
    move-object/from16 v5, p0

    iget-object v6, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    aput-wide v31, v6, v3

    .line 213
    add-int/lit8 v3, v3, 0x1

    move/from16 v5, p5

    move/from16 v6, p6

    goto :goto_12

    .line 216
    .end local v3    # "nn":I
    :cond_14
    move-object/from16 v5, p0

    iget-object v3, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->LeastSquare:Lcom/wen/fluorescence/arithmetic/LeastSquareMethod;

    invoke-virtual {v3, v0, v9, v11, v2}, Lcom/wen/fluorescence/arithmetic/LeastSquareMethod;->polyfit(I[D[DI)V

    .line 217
    const/4 v3, 0x0

    .line 217
    .restart local v3    # "nn":I
    :goto_13
    const/16 v6, 0x10

    if-ge v3, v6, :cond_15

    .line 218
    iget-object v6, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    move-object/from16 v52, v8

    iget-object v8, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->LeastSquare:Lcom/wen/fluorescence/arithmetic/LeastSquareMethod;

    .line 218
    .end local v8    # "ma1":[[D
    .local v52, "ma1":[[D
    iget-object v8, v8, Lcom/wen/fluorescence/arithmetic/LeastSquareMethod;->a:[D

    aget-wide v53, v8, v3

    aput-wide v53, v6, v3

    .line 217
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v8, v52

    goto :goto_13

    .line 221
    .end local v3    # "nn":I
    .end local v52    # "ma1":[[D
    .restart local v8    # "ma1":[[D
    :cond_15
    move-object/from16 v52, v8

    .line 221
    .end local v8    # "ma1":[[D
    .restart local v52    # "ma1":[[D
    const/4 v3, 0x1

    .line 222
    .local v3, "bl":Z
    const/4 v6, 0x0

    aget-wide v53, v9, v6

    .line 223
    .local v53, "bg":D
    cmpg-double v6, v53, v31

    if-gez v6, :cond_16

    .line 224
    const-wide/16 v53, 0x0

    .line 225
    :cond_16
    add-int/lit8 v6, v0, -0x1

    aget-wide v55, v9, v6

    cmpl-double v6, v55, v31

    if-lez v6, :cond_18

    .line 226
    move-wide/from16 v55, v53

    .line 226
    .local v55, "x":D
    :goto_14
    add-int/lit8 v6, v0, -0x1

    aget-wide v57, v9, v6

    cmpg-double v6, v55, v57

    if-gtz v6, :cond_18

    .line 227
    iget-object v6, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    const/4 v8, 0x0

    aget-wide v57, v6, v8

    iget-object v6, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    const/4 v8, 0x1

    aget-wide v59, v6, v8

    mul-double v59, v59, v55

    add-double v57, v57, v59

    iget-object v6, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    aget-wide v59, v6, v18

    mul-double v59, v59, v55

    mul-double v59, v59, v55

    add-double v57, v57, v59

    iget-object v6, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    const/4 v8, 0x3

    aget-wide v59, v6, v8

    mul-double v59, v59, v55

    mul-double v59, v59, v55

    mul-double v59, v59, v55

    add-double v57, v57, v59

    iget-object v6, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    aget-wide v59, v6, v47

    mul-double v59, v59, v55

    mul-double v59, v59, v55

    mul-double v59, v59, v55

    mul-double v59, v59, v55

    add-double v57, v57, v59

    iget-object v6, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    aget-wide v59, v6, v37

    mul-double v59, v59, v55

    mul-double v59, v59, v55

    mul-double v59, v59, v55

    mul-double v59, v59, v55

    mul-double v59, v59, v55

    add-double v57, v57, v59

    iget-object v6, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    const/4 v8, 0x6

    aget-wide v59, v6, v8

    mul-double v59, v59, v55

    mul-double v59, v59, v55

    mul-double v59, v59, v55

    mul-double v59, v59, v55

    mul-double v59, v59, v55

    mul-double v59, v59, v55

    add-double v57, v57, v59

    .line 230
    .local v57, "y1":D
    if-eqz p4, :cond_17

    .line 231
    add-double v55, v55, v50

    goto :goto_15

    .line 233
    :cond_17
    add-double v55, v55, v48

    .line 235
    :goto_15
    iget-object v6, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    const/4 v8, 0x0

    aget-wide v59, v6, v8

    iget-object v6, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    const/4 v8, 0x1

    aget-wide v61, v6, v8

    mul-double v61, v61, v55

    add-double v59, v59, v61

    iget-object v6, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    aget-wide v61, v6, v18

    mul-double v61, v61, v55

    mul-double v61, v61, v55

    add-double v59, v59, v61

    iget-object v6, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    const/4 v8, 0x3

    aget-wide v61, v6, v8

    mul-double v61, v61, v55

    mul-double v61, v61, v55

    mul-double v61, v61, v55

    add-double v59, v59, v61

    iget-object v6, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    aget-wide v61, v6, v47

    mul-double v61, v61, v55

    mul-double v61, v61, v55

    mul-double v61, v61, v55

    mul-double v61, v61, v55

    add-double v59, v59, v61

    iget-object v6, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    aget-wide v61, v6, v37

    mul-double v61, v61, v55

    mul-double v61, v61, v55

    mul-double v61, v61, v55

    mul-double v61, v61, v55

    mul-double v61, v61, v55

    add-double v59, v59, v61

    iget-object v6, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    const/4 v8, 0x6

    aget-wide v61, v6, v8

    mul-double v61, v61, v55

    mul-double v61, v61, v55

    mul-double v61, v61, v55

    mul-double v61, v61, v55

    mul-double v61, v61, v55

    mul-double v61, v61, v55

    add-double v59, v59, v61

    .line 238
    .local v59, "y2":D
    cmpg-double v6, v59, v57

    goto/16 :goto_14

    .line 244
    .end local v55    # "x":D
    .end local v57    # "y1":D
    .end local v59    # "y2":D
    :cond_18
    const/4 v3, 0x1

    .line 245
    if-eqz v3, :cond_1a

    .line 247
    const/4 v6, 0x0

    .line 247
    .end local v28    # "jj":I
    .local v6, "jj":I
    :goto_16
    add-int/lit8 v8, v2, 0x1

    if-ge v6, v8, :cond_19

    .line 248
    aget-object v8, v14, v12

    move/from16 v63, v3

    iget-object v3, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    .line 248
    .end local v3    # "bl":Z
    .local v63, "bl":Z
    aget-wide v55, v3, v6

    aput-wide v55, v8, v6

    .line 247
    .local v55, "y1":D
    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v63

    goto :goto_16

    .line 249
    .end local v55    # "y1":D
    .end local v63    # "bl":Z
    .restart local v3    # "bl":Z
    :cond_19
    move/from16 v63, v3

    .line 249
    .end local v3    # "bl":Z
    .restart local v63    # "bl":Z
    add-int/lit8 v12, v12, 0x1

    .line 251
    move/from16 v28, v6

    goto :goto_17

    .line 251
    .end local v6    # "jj":I
    .end local v63    # "bl":Z
    .restart local v3    # "bl":Z
    .restart local v28    # "jj":I
    :cond_1a
    move/from16 v63, v3

    .line 251
    .end local v3    # "bl":Z
    .restart local v63    # "bl":Z
    :goto_17
    add-int/lit8 v2, v2, 0x1

    .line 205
    .end local v53    # "bg":D
    .end local v63    # "bl":Z
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v8, v52

    move/from16 v5, p5

    move/from16 v6, p6

    goto/16 :goto_11

    .line 253
    .end local v25    # "mcFlag":I
    .end local v52    # "ma1":[[D
    .restart local v8    # "ma1":[[D
    :cond_1b
    move-object/from16 v52, v8

    move-object/from16 v5, p0

    .line 262
    .end local v8    # "ma1":[[D
    .restart local v52    # "ma1":[[D
    :goto_18
    const/4 v3, 0x0

    .line 264
    .end local v20    # "j":I
    .local v3, "j":I
    const-wide/16 v24, 0x0

    .line 264
    .local v24, "yy":D
    const-wide/16 v48, 0x0

    .line 264
    .local v48, "y":D
    const-wide/16 v50, 0x0

    .line 265
    .local v50, "ld_R":D
    const/4 v6, 0x0

    .line 265
    .local v6, "nn":I
    :goto_19
    if-ge v6, v0, :cond_1c

    .line 266
    aget-wide v53, v11, v6

    add-double v24, v24, v53

    .line 265
    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    .line 268
    .end local v6    # "nn":I
    :cond_1c
    move/from16 v64, v2

    move/from16 v65, v3

    int-to-double v2, v0

    .line 268
    .end local v2    # "poly_n":I
    .end local v3    # "j":I
    .local v64, "poly_n":I
    .local v65, "j":I
    div-double v24, v24, v2

    .line 271
    const/4 v2, 0x0

    .line 272
    .end local v15    # "i":I
    .local v2, "i":I
    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v12, :cond_1f

    .line 275
    const-wide/16 v42, 0x0

    .line 276
    const-wide/16 v44, 0x0

    .line 277
    const/4 v3, 0x0

    .line 277
    .local v3, "e":I
    :goto_1b
    if-ge v3, v0, :cond_1d

    .line 278
    aget-wide v53, v9, v3

    .line 279
    .local v53, "xx":D
    aget-wide v55, v11, v3

    sub-double v55, v55, v24

    aget-wide v57, v11, v3

    sub-double v57, v57, v24

    mul-double v55, v55, v57

    add-double v42, v42, v55

    .line 283
    aget-object v6, v14, v2

    const/4 v8, 0x0

    aget-wide v55, v6, v8

    aget-object v6, v14, v2

    const/4 v8, 0x1

    aget-wide v57, v6, v8

    mul-double v57, v57, v53

    add-double v55, v55, v57

    aget-object v6, v14, v2

    aget-wide v57, v6, v18

    mul-double v57, v57, v53

    mul-double v57, v57, v53

    add-double v55, v55, v57

    aget-object v6, v14, v2

    const/4 v8, 0x3

    aget-wide v57, v6, v8

    mul-double v57, v57, v53

    mul-double v57, v57, v53

    mul-double v57, v57, v53

    add-double v55, v55, v57

    aget-object v6, v14, v2

    aget-wide v57, v6, v47

    mul-double v57, v57, v53

    mul-double v57, v57, v53

    mul-double v57, v57, v53

    mul-double v57, v57, v53

    add-double v55, v55, v57

    aget-object v6, v14, v2

    aget-wide v57, v6, v37

    mul-double v57, v57, v53

    mul-double v57, v57, v53

    mul-double v57, v57, v53

    mul-double v57, v57, v53

    mul-double v57, v57, v53

    add-double v55, v55, v57

    aget-object v6, v14, v2

    const/4 v8, 0x6

    aget-wide v57, v6, v8

    mul-double v57, v57, v53

    mul-double v57, v57, v53

    mul-double v57, v57, v53

    mul-double v57, v57, v53

    mul-double v57, v57, v53

    mul-double v57, v57, v53

    add-double v48, v55, v57

    .line 289
    sub-double v55, v48, v24

    sub-double v57, v48, v24

    mul-double v55, v55, v57

    add-double v44, v44, v55

    .line 277
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 292
    .end local v3    # "e":I
    .end local v53    # "xx":D
    :cond_1d
    move/from16 v67, v12

    move/from16 v66, v13

    div-double v12, v44, v42

    .line 292
    .end local v12    # "ii":I
    .end local v13    # "mq":I
    .local v66, "mq":I
    .local v67, "ii":I
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    .line 293
    .end local v50    # "ld_R":D
    .local v12, "ld_R":D
    cmpg-double v3, v16, v12

    if-gez v3, :cond_1e

    .line 294
    move-wide v15, v12

    .line 295
    .end local v16    # "Orss":D
    .local v15, "Orss":D
    const-wide/16 v12, 0x0

    .line 296
    move v3, v2

    .line 297
    .end local v36    # "iFlag":I
    .local v3, "iFlag":I
    add-int/lit8 v6, v2, 0x1

    .line 298
    .end local v65    # "j":I
    .local v6, "j":I
    const/4 v8, 0x1

    .line 272
    .end local v21    # "k":I
    .local v8, "k":I
    move/from16 v36, v3

    move/from16 v65, v6

    move/from16 v21, v8

    move-wide/from16 v50, v12

    move-wide/from16 v16, v15

    goto :goto_1c

    .line 272
    .end local v3    # "iFlag":I
    .end local v6    # "j":I
    .end local v8    # "k":I
    .end local v15    # "Orss":D
    .restart local v16    # "Orss":D
    .restart local v21    # "k":I
    .restart local v36    # "iFlag":I
    .restart local v65    # "j":I
    :cond_1e
    move-wide/from16 v50, v12

    .line 272
    .end local v12    # "ld_R":D
    .restart local v50    # "ld_R":D
    :goto_1c
    add-int/lit8 v2, v2, 0x1

    move/from16 v13, v66

    move/from16 v12, v67

    goto/16 :goto_1a

    .line 301
    .end local v66    # "mq":I
    .end local v67    # "ii":I
    .local v12, "ii":I
    .restart local v13    # "mq":I
    :cond_1f
    move/from16 v67, v12

    move/from16 v66, v13

    .line 301
    .end local v12    # "ii":I
    .end local v13    # "mq":I
    .restart local v66    # "mq":I
    .restart local v67    # "ii":I
    const/4 v2, 0x0

    :goto_1d
    const/4 v3, 0x6

    if-gt v2, v3, :cond_21

    .line 302
    iget-object v3, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    aget-object v6, v14, v36

    aget-wide v12, v6, v2

    aput-wide v12, v3, v2

    .line 303
    iget-object v3, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    aget-wide v12, v3, v2

    cmpl-double v3, v12, v31

    if-eqz v3, :cond_20

    .line 304
    move v3, v2

    .line 301
    .end local v65    # "j":I
    .local v3, "j":I
    move/from16 v65, v3

    .line 301
    .end local v3    # "j":I
    .restart local v65    # "j":I
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 307
    :cond_21
    const-wide/16 v12, 0x0

    .line 308
    .end local v16    # "Orss":D
    .end local v24    # "yy":D
    .end local v48    # "y":D
    .end local v50    # "ld_R":D
    .local v12, "Orss":D
    nop

    .line 532
    move/from16 v77, v0

    move/from16 v73, v1

    move v3, v2

    move-object/from16 v76, v9

    move/from16 v0, v21

    move-object/from16 v2, v39

    move/from16 v6, v64

    move/from16 v15, v66

    move/from16 v79, v67

    goto/16 :goto_3f

    .line 312
    .end local v2    # "i":I
    .end local v52    # "ma1":[[D
    .end local v64    # "poly_n":I
    .end local v65    # "j":I
    .end local v66    # "mq":I
    .end local v67    # "ii":I
    .local v8, "ma1":[[D
    .local v12, "poly_n":I
    .restart local v13    # "mq":I
    .local v15, "i":I
    .restart local v16    # "Orss":D
    .restart local v20    # "j":I
    .local v25, "ii":I
    :cond_22
    move-object/from16 v52, v8

    move/from16 v66, v13

    move-object/from16 v5, p0

    .line 312
    .end local v8    # "ma1":[[D
    .end local v13    # "mq":I
    .restart local v52    # "ma1":[[D
    .restart local v66    # "mq":I
    add-int/lit8 v2, v46, 0x1

    .line 313
    .end local v12    # "poly_n":I
    .local v2, "poly_n":I
    move/from16 v3, v46

    .line 313
    .end local v15    # "i":I
    .local v3, "i":I
    move v6, v2

    move/from16 v2, v25

    .line 313
    .end local v25    # "ii":I
    .local v2, "ii":I
    .local v6, "poly_n":I
    :goto_1e
    if-ge v3, v1, :cond_2d

    .line 316
    const/4 v8, 0x0

    .line 317
    .local v8, "mcFlag":I
    const/4 v12, 0x3

    if-ge v0, v12, :cond_23

    .line 318
    const/4 v3, 0x6

    .line 319
    nop

    .line 364
    move/from16 v68, v1

    goto/16 :goto_26

    .line 321
    :cond_23
    const/4 v12, 0x0

    .line 321
    .end local v20    # "j":I
    .local v12, "j":I
    :goto_1f
    const/16 v13, 0x10

    if-ge v12, v13, :cond_24

    .line 322
    iget-object v13, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    aput-wide v31, v13, v12

    .line 321
    add-int/lit8 v12, v12, 0x1

    goto :goto_1f

    .line 324
    :cond_24
    iget-object v13, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->LeastSquare:Lcom/wen/fluorescence/arithmetic/LeastSquareMethod;

    invoke-virtual {v13, v0, v9, v11, v6}, Lcom/wen/fluorescence/arithmetic/LeastSquareMethod;->polyfit(I[D[DI)V

    .line 325
    const/4 v13, 0x0

    .line 325
    .local v13, "nn":I
    :goto_20
    const/16 v15, 0x10

    if-ge v13, v15, :cond_25

    .line 326
    iget-object v15, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    move/from16 v68, v1

    iget-object v1, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->LeastSquare:Lcom/wen/fluorescence/arithmetic/LeastSquareMethod;

    .line 326
    .end local v1    # "li_End":I
    .local v68, "li_End":I
    iget-object v1, v1, Lcom/wen/fluorescence/arithmetic/LeastSquareMethod;->a:[D

    aget-wide v53, v1, v13

    aput-wide v53, v15, v13

    .line 325
    add-int/lit8 v13, v13, 0x1

    move/from16 v1, v68

    goto :goto_20

    .line 329
    .end local v13    # "nn":I
    .end local v68    # "li_End":I
    .restart local v1    # "li_End":I
    :cond_25
    move/from16 v68, v1

    .line 329
    .end local v1    # "li_End":I
    .restart local v68    # "li_End":I
    const/4 v1, 0x1

    .line 330
    .local v1, "bl":Z
    const/4 v13, 0x0

    aget-wide v53, v9, v13

    .line 331
    .local v53, "bg":D
    cmpg-double v13, v53, v31

    if-gez v13, :cond_26

    .line 332
    const-wide/16 v53, 0x0

    .line 333
    :cond_26
    add-int/lit8 v13, v0, -0x1

    aget-wide v55, v9, v13

    cmpl-double v13, v55, v31

    if-lez v13, :cond_2a

    .line 334
    move-wide/from16 v55, v53

    .line 334
    .local v55, "x":D
    :goto_21
    add-int/lit8 v13, v0, -0x1

    aget-wide v57, v9, v13

    cmpg-double v13, v55, v57

    if-gtz v13, :cond_29

    .line 335
    iget-object v13, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    const/4 v15, 0x0

    aget-wide v57, v13, v15

    iget-object v13, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    const/4 v15, 0x1

    aget-wide v59, v13, v15

    mul-double v59, v59, v55

    add-double v57, v57, v59

    iget-object v13, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    aget-wide v59, v13, v18

    mul-double v59, v59, v55

    mul-double v59, v59, v55

    add-double v57, v57, v59

    iget-object v13, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    const/4 v15, 0x3

    aget-wide v59, v13, v15

    mul-double v59, v59, v55

    mul-double v59, v59, v55

    mul-double v59, v59, v55

    add-double v57, v57, v59

    iget-object v13, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    aget-wide v59, v13, v47

    mul-double v59, v59, v55

    mul-double v59, v59, v55

    mul-double v59, v59, v55

    mul-double v59, v59, v55

    add-double v57, v57, v59

    iget-object v13, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    aget-wide v59, v13, v37

    mul-double v59, v59, v55

    mul-double v59, v59, v55

    mul-double v59, v59, v55

    mul-double v59, v59, v55

    mul-double v59, v59, v55

    add-double v57, v57, v59

    iget-object v13, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    const/4 v15, 0x6

    aget-wide v59, v13, v15

    mul-double v59, v59, v55

    mul-double v59, v59, v55

    mul-double v59, v59, v55

    mul-double v59, v59, v55

    mul-double v59, v59, v55

    mul-double v59, v59, v55

    add-double v57, v57, v59

    .line 338
    .restart local v57    # "y1":D
    if-eqz p4, :cond_27

    .line 339
    add-double v55, v55, v50

    .line 343
    .end local v55    # "x":D
    .local v12, "x":D
    .local v69, "j":I
    :goto_22
    move/from16 v69, v12

    move-wide/from16 v12, v55

    goto :goto_23

    .line 341
    .end local v69    # "j":I
    .local v12, "j":I
    .restart local v55    # "x":D
    :cond_27
    add-double v55, v55, v48

    goto :goto_22

    .line 343
    .end local v55    # "x":D
    .local v12, "x":D
    .restart local v69    # "j":I
    :goto_23
    iget-object v15, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    const/16 v19, 0x0

    aget-wide v55, v15, v19

    iget-object v15, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    const/16 v20, 0x1

    aget-wide v59, v15, v20

    mul-double v59, v59, v12

    add-double v55, v55, v59

    iget-object v15, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    aget-wide v59, v15, v18

    mul-double v59, v59, v12

    mul-double v59, v59, v12

    add-double v55, v55, v59

    iget-object v15, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    const/16 v20, 0x3

    aget-wide v59, v15, v20

    mul-double v59, v59, v12

    mul-double v59, v59, v12

    mul-double v59, v59, v12

    add-double v55, v55, v59

    iget-object v15, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    aget-wide v59, v15, v47

    mul-double v59, v59, v12

    mul-double v59, v59, v12

    mul-double v59, v59, v12

    mul-double v59, v59, v12

    add-double v55, v55, v59

    iget-object v15, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    aget-wide v59, v15, v37

    mul-double v59, v59, v12

    mul-double v59, v59, v12

    mul-double v59, v59, v12

    mul-double v59, v59, v12

    mul-double v59, v59, v12

    add-double v55, v55, v59

    iget-object v15, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    const/16 v20, 0x6

    aget-wide v59, v15, v20

    mul-double v59, v59, v12

    mul-double v59, v59, v12

    mul-double v59, v59, v12

    mul-double v59, v59, v12

    mul-double v59, v59, v12

    mul-double v59, v59, v12

    add-double v55, v55, v59

    .line 346
    .local v55, "y2":D
    cmpg-double v15, v55, v57

    if-gez v15, :cond_28

    .line 347
    const-string v15, "TAG"

    move/from16 v70, v1

    new-instance v1, Ljava/lang/StringBuilder;

    .line 347
    .end local v1    # "bl":Z
    .local v70, "bl":Z
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v71, v8

    const-string v8, "----\u7b2c\u4e00\u6bb5\u62d0\u70b9\uff0c\u65b9\u7a0b"

    .line 347
    .end local v8    # "mcFlag":I
    .local v71, "mcFlag":I
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "x=\uff1a"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const/4 v1, 0x0

    .line 334
    .end local v70    # "bl":Z
    .restart local v1    # "bl":Z
    move-wide/from16 v55, v12

    move/from16 v12, v69

    move/from16 v8, v71

    goto/16 :goto_21

    .line 334
    .end local v55    # "y2":D
    .end local v57    # "y1":D
    .end local v71    # "mcFlag":I
    .restart local v8    # "mcFlag":I
    :cond_28
    move/from16 v70, v1

    move-wide/from16 v55, v12

    move/from16 v12, v69

    .line 334
    .end local v1    # "bl":Z
    .end local v8    # "mcFlag":I
    .restart local v70    # "bl":Z
    .restart local v71    # "mcFlag":I
    goto/16 :goto_21

    .line 353
    .end local v69    # "j":I
    .end local v70    # "bl":Z
    .end local v71    # "mcFlag":I
    .restart local v1    # "bl":Z
    .restart local v8    # "mcFlag":I
    .local v12, "j":I
    :cond_29
    move/from16 v70, v1

    move/from16 v71, v8

    move/from16 v69, v12

    .line 353
    .end local v1    # "bl":Z
    .end local v8    # "mcFlag":I
    .end local v12    # "j":I
    .restart local v69    # "j":I
    .restart local v70    # "bl":Z
    .restart local v71    # "mcFlag":I
    goto :goto_24

    .line 353
    .end local v69    # "j":I
    .end local v70    # "bl":Z
    .end local v71    # "mcFlag":I
    .restart local v1    # "bl":Z
    .restart local v8    # "mcFlag":I
    .restart local v12    # "j":I
    :cond_2a
    move/from16 v71, v8

    move/from16 v69, v12

    move/from16 v70, v1

    .line 353
    .end local v1    # "bl":Z
    .end local v8    # "mcFlag":I
    .end local v12    # "j":I
    .restart local v69    # "j":I
    .restart local v70    # "bl":Z
    .restart local v71    # "mcFlag":I
    :goto_24
    const/4 v1, 0x1

    .line 354
    .end local v70    # "bl":Z
    .restart local v1    # "bl":Z
    if-eqz v1, :cond_2c

    .line 356
    const/4 v8, 0x0

    .line 356
    .end local v28    # "jj":I
    .local v8, "jj":I
    :goto_25
    add-int/lit8 v12, v6, 0x1

    if-ge v8, v12, :cond_2b

    .line 357
    aget-object v12, v14, v2

    iget-object v13, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    aget-wide v55, v13, v8

    aput-wide v55, v12, v8

    .line 356
    add-int/lit8 v8, v8, 0x1

    goto :goto_25

    .line 358
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    .line 361
    move/from16 v28, v8

    .line 361
    .end local v8    # "jj":I
    .restart local v28    # "jj":I
    :cond_2c
    iget-object v8, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    const/4 v12, 0x6

    aget-wide v55, v8, v12

    .line 362
    .local v55, "myy":D
    add-int/lit8 v6, v6, 0x1

    .line 313
    .end local v1    # "bl":Z
    .end local v53    # "bg":D
    .end local v55    # "myy":D
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v68

    move/from16 v20, v69

    goto/16 :goto_1e

    .line 364
    .end local v68    # "li_End":I
    .end local v69    # "j":I
    .end local v71    # "mcFlag":I
    .local v1, "li_End":I
    .restart local v20    # "j":I
    :cond_2d
    move/from16 v68, v1

    .line 364
    .end local v1    # "li_End":I
    .restart local v68    # "li_End":I
    :goto_26
    const/4 v1, 0x1

    .line 365
    .end local v21    # "k":I
    .local v1, "k":I
    if-nez v2, :cond_2e

    .line 424
    move/from16 v21, v1

    move/from16 v8, v20

    goto/16 :goto_2d

    .line 375
    :cond_2e
    const/4 v8, 0x0

    .line 376
    .end local v20    # "j":I
    .local v8, "j":I
    const/4 v12, 0x0

    .line 379
    .end local v36    # "iFlag":I
    .local v12, "iFlag":I
    const-wide/16 v20, 0x0

    .line 379
    .local v20, "yy":D
    const-wide/16 v53, 0x0

    .line 379
    .local v53, "y":D
    const-wide/16 v55, 0x0

    .line 380
    .local v55, "ld_R":D
    const/4 v3, 0x0

    :goto_27
    if-ge v3, v0, :cond_2f

    .line 381
    aget-wide v57, v11, v3

    add-double v20, v20, v57

    .line 380
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 383
    :cond_2f
    move/from16 v72, v12

    int-to-double v12, v0

    .line 383
    .end local v12    # "iFlag":I
    .local v72, "iFlag":I
    div-double v20, v20, v12

    .line 385
    const/4 v3, 0x0

    move/from16 v36, v72

    .line 385
    .end local v72    # "iFlag":I
    .restart local v36    # "iFlag":I
    :goto_28
    if-ge v3, v2, :cond_32

    .line 388
    const-wide/16 v12, 0x0

    .line 389
    .end local v42    # "tss":D
    .local v12, "tss":D
    const-wide/16 v42, 0x0

    .line 390
    .end local v44    # "ess":D
    .local v42, "ess":D
    move-wide/from16 v44, v42

    move-wide/from16 v42, v12

    const/4 v12, 0x0

    .line 390
    .local v12, "e":I
    .local v42, "tss":D
    .restart local v44    # "ess":D
    :goto_29
    if-ge v12, v0, :cond_30

    .line 391
    aget-wide v57, v9, v12

    .line 392
    .local v57, "xx":D
    aget-wide v59, v11, v12

    sub-double v59, v59, v20

    aget-wide v61, v11, v12

    sub-double v61, v61, v20

    mul-double v59, v59, v61

    add-double v42, v42, v59

    .line 396
    aget-object v13, v14, v3

    const/4 v15, 0x0

    aget-wide v59, v13, v15

    aget-object v13, v14, v3

    const/4 v15, 0x1

    aget-wide v61, v13, v15

    mul-double v61, v61, v57

    add-double v59, v59, v61

    aget-object v13, v14, v3

    aget-wide v61, v13, v18

    mul-double v61, v61, v57

    mul-double v61, v61, v57

    add-double v59, v59, v61

    aget-object v13, v14, v3

    const/4 v15, 0x3

    aget-wide v61, v13, v15

    mul-double v61, v61, v57

    mul-double v61, v61, v57

    mul-double v61, v61, v57

    add-double v59, v59, v61

    aget-object v13, v14, v3

    aget-wide v61, v13, v47

    mul-double v61, v61, v57

    mul-double v61, v61, v57

    mul-double v61, v61, v57

    mul-double v61, v61, v57

    add-double v59, v59, v61

    aget-object v13, v14, v3

    aget-wide v61, v13, v37

    mul-double v61, v61, v57

    mul-double v61, v61, v57

    mul-double v61, v61, v57

    mul-double v61, v61, v57

    mul-double v61, v61, v57

    add-double v59, v59, v61

    aget-object v13, v14, v3

    const/4 v15, 0x6

    aget-wide v61, v13, v15

    mul-double v61, v61, v57

    mul-double v61, v61, v57

    mul-double v61, v61, v57

    mul-double v61, v61, v57

    mul-double v61, v61, v57

    mul-double v61, v61, v57

    add-double v53, v59, v61

    .line 402
    sub-double v59, v53, v20

    sub-double v61, v53, v20

    mul-double v59, v59, v61

    add-double v44, v44, v59

    .line 390
    add-int/lit8 v12, v12, 0x1

    goto :goto_29

    .line 405
    .end local v12    # "e":I
    .end local v57    # "xx":D
    :cond_30
    div-double v12, v44, v42

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    .line 406
    .end local v55    # "ld_R":D
    .local v12, "ld_R":D
    cmpg-double v15, v16, v12

    if-gez v15, :cond_31

    .line 407
    move-wide v15, v12

    .line 408
    .end local v16    # "Orss":D
    .local v15, "Orss":D
    const-wide/16 v12, 0x0

    .line 409
    move/from16 v36, v3

    .line 410
    add-int/lit8 v8, v3, 0x1

    .line 411
    const/4 v1, 0x1

    .line 385
    move-wide/from16 v55, v12

    move-wide/from16 v16, v15

    goto :goto_2a

    .line 385
    .end local v15    # "Orss":D
    .restart local v16    # "Orss":D
    :cond_31
    move-wide/from16 v55, v12

    .line 385
    .end local v12    # "ld_R":D
    .restart local v55    # "ld_R":D
    :goto_2a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_28

    .line 415
    :cond_32
    const/4 v3, 0x0

    :goto_2b
    const/16 v12, 0x10

    if-ge v3, v12, :cond_33

    .line 416
    iget-object v12, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    aput-wide v31, v12, v3

    .line 415
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 417
    :cond_33
    const/4 v3, 0x0

    :goto_2c
    const/4 v12, 0x6

    if-gt v3, v12, :cond_35

    .line 418
    iget-object v12, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    aget-object v13, v14, v36

    aget-wide v57, v13, v3

    aput-wide v57, v12, v3

    .line 419
    iget-object v12, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    aget-wide v57, v12, v3

    cmpl-double v12, v57, v31

    if-eqz v12, :cond_34

    .line 420
    move v8, v3

    .line 417
    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 422
    :cond_35
    iget-object v12, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    const/4 v13, 0x6

    aget-wide v20, v12, v13

    .line 424
    .end local v40    # "yyy":D
    .end local v53    # "y":D
    .end local v55    # "ld_R":D
    .local v20, "yyy":D
    move-wide/from16 v40, v20

    move/from16 v21, v1

    .line 424
    .end local v1    # "k":I
    .end local v20    # "yyy":D
    .restart local v21    # "k":I
    .restart local v40    # "yyy":D
    :goto_2d
    const/4 v1, 0x0

    .line 425
    .end local v2    # "ii":I
    .local v1, "ii":I
    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    .line 431
    .end local v16    # "Orss":D
    .local v12, "Orss":D
    const/4 v2, 0x1

    aget v15, p7, v2

    if-nez v15, :cond_36

    .line 432
    const/4 v15, 0x0

    .line 433
    .end local v46    # "li_Start":I
    .local v15, "li_Start":I
    const/16 v16, 0x6

    .line 439
    .end local v15    # "li_Start":I
    .end local v68    # "li_End":I
    .local v2, "li_End":I
    .local v16, "li_End":I
    .restart local v46    # "li_Start":I
    :goto_2e
    move/from16 v46, v15

    move/from16 v2, v16

    goto :goto_2f

    .line 435
    .end local v2    # "li_End":I
    .end local v16    # "li_End":I
    .restart local v68    # "li_End":I
    :cond_36
    aget v15, p7, v2

    sub-int/2addr v15, v2

    .line 436
    .end local v46    # "li_Start":I
    .restart local v15    # "li_Start":I
    aget v16, p7, v2

    goto :goto_2e

    .line 439
    .end local v15    # "li_Start":I
    .end local v68    # "li_End":I
    .restart local v2    # "li_End":I
    .restart local v46    # "li_Start":I
    :goto_2f
    add-int/lit8 v6, v46, 0x1

    .line 440
    move/from16 v3, v46

    move/from16 v65, v8

    .line 440
    .end local v8    # "j":I
    .restart local v65    # "j":I
    :goto_30
    if-ge v3, v2, :cond_41

    .line 443
    const/4 v8, 0x0

    .line 444
    .local v8, "mcFlag":I
    move/from16 v73, v2

    move/from16 v15, v66

    const/4 v2, 0x3

    if-ge v15, v2, :cond_37

    .line 445
    .end local v2    # "li_End":I
    .end local v66    # "mq":I
    .local v15, "mq":I
    .local v73, "li_End":I
    const/4 v2, 0x6

    .line 446
    .end local v3    # "i":I
    .local v2, "i":I
    nop

    .line 488
    move/from16 v77, v0

    move v3, v2

    move-object/from16 v76, v9

    move-object/from16 v2, v39

    goto/16 :goto_38

    .line 448
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_37
    const/4 v2, 0x0

    .line 448
    .end local v65    # "j":I
    .local v2, "j":I
    :goto_31
    const/16 v7, 0x10

    if-ge v2, v7, :cond_38

    .line 449
    iget-object v7, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a1:[D

    aput-wide v31, v7, v2

    .line 448
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 450
    :cond_38
    iget-object v7, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->LeastSquare:Lcom/wen/fluorescence/arithmetic/LeastSquareMethod;

    move/from16 v74, v2

    move-object/from16 v2, v39

    invoke-virtual {v7, v15, v10, v2, v6}, Lcom/wen/fluorescence/arithmetic/LeastSquareMethod;->polyfit(I[D[DI)V

    .line 451
    .end local v39    # "mY1":[D
    .local v2, "mY1":[D
    .local v74, "j":I
    const/4 v7, 0x0

    .line 451
    .local v7, "nn":I
    :goto_32
    move/from16 v75, v8

    const/16 v8, 0x10

    if-ge v7, v8, :cond_39

    .line 452
    .end local v8    # "mcFlag":I
    .local v75, "mcFlag":I
    iget-object v8, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a1:[D

    move-object/from16 v76, v9

    iget-object v9, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->LeastSquare:Lcom/wen/fluorescence/arithmetic/LeastSquareMethod;

    .line 452
    .end local v9    # "mX0":[D
    .local v76, "mX0":[D
    iget-object v9, v9, Lcom/wen/fluorescence/arithmetic/LeastSquareMethod;->a:[D

    aget-wide v16, v9, v7

    aput-wide v16, v8, v7

    .line 451
    add-int/lit8 v7, v7, 0x1

    move/from16 v8, v75

    move-object/from16 v9, v76

    goto :goto_32

    .line 456
    .end local v7    # "nn":I
    .end local v76    # "mX0":[D
    .restart local v9    # "mX0":[D
    :cond_39
    move-object/from16 v76, v9

    .line 456
    .end local v9    # "mX0":[D
    .restart local v76    # "mX0":[D
    const/4 v7, 0x1

    .line 457
    .local v7, "bl":Z
    const/4 v8, 0x0

    aget-wide v16, v10, v8

    .line 458
    .local v16, "bg":D
    cmpg-double v8, v16, v31

    if-gez v8, :cond_3a

    .line 459
    const-wide/16 v16, 0x0

    .line 460
    :cond_3a
    add-int/lit8 v8, v0, -0x1

    aget-wide v8, v10, v8

    cmpl-double v20, v8, v31

    if-lez v20, :cond_3e

    .line 461
    const/4 v8, 0x0

    aget-wide v19, v10, v8

    .line 461
    .local v19, "x":D
    :goto_33
    move-wide/from16 v53, v19

    .line 461
    .end local v19    # "x":D
    .local v53, "x":D
    add-int/lit8 v9, v15, -0x1

    aget-wide v19, v10, v9

    cmpg-double v9, v53, v19

    if-gtz v9, :cond_3d

    .line 462
    iget-object v9, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a1:[D

    aget-wide v55, v9, v8

    iget-object v8, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a1:[D

    const/4 v9, 0x1

    aget-wide v57, v8, v9

    mul-double v57, v57, v53

    add-double v55, v55, v57

    iget-object v8, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a1:[D

    aget-wide v57, v8, v18

    mul-double v57, v57, v53

    mul-double v57, v57, v53

    add-double v55, v55, v57

    iget-object v8, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a1:[D

    const/4 v9, 0x3

    aget-wide v57, v8, v9

    mul-double v57, v57, v53

    mul-double v57, v57, v53

    mul-double v57, v57, v53

    add-double v55, v55, v57

    iget-object v8, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a1:[D

    aget-wide v57, v8, v47

    mul-double v57, v57, v53

    mul-double v57, v57, v53

    mul-double v57, v57, v53

    mul-double v57, v57, v53

    add-double v55, v55, v57

    iget-object v8, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a1:[D

    aget-wide v57, v8, v37

    mul-double v57, v57, v53

    mul-double v57, v57, v53

    mul-double v57, v57, v53

    mul-double v57, v57, v53

    mul-double v57, v57, v53

    add-double v55, v55, v57

    iget-object v8, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a1:[D

    const/4 v9, 0x6

    aget-wide v57, v8, v9

    mul-double v57, v57, v53

    mul-double v57, v57, v53

    mul-double v57, v57, v53

    mul-double v57, v57, v53

    mul-double v57, v57, v53

    mul-double v57, v57, v53

    add-double v55, v55, v57

    .line 465
    .local v55, "y1":D
    if-eqz p4, :cond_3b

    .line 466
    add-double v53, v53, v50

    .line 469
    .end local v53    # "x":D
    .local v8, "x":D
    :goto_34
    move-wide/from16 v8, v53

    goto :goto_35

    .line 468
    .end local v8    # "x":D
    .restart local v53    # "x":D
    :cond_3b
    add-double v53, v53, v48

    goto :goto_34

    .line 469
    .end local v53    # "x":D
    .restart local v8    # "x":D
    :goto_35
    move/from16 v77, v0

    iget-object v0, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a1:[D

    .line 469
    .end local v0    # "mp":I
    .local v77, "mp":I
    const/16 v19, 0x0

    aget-wide v53, v0, v19

    iget-object v0, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a1:[D

    const/16 v20, 0x1

    aget-wide v57, v0, v20

    mul-double v57, v57, v8

    add-double v53, v53, v57

    iget-object v0, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a1:[D

    aget-wide v57, v0, v18

    mul-double v57, v57, v8

    mul-double v57, v57, v8

    add-double v53, v53, v57

    iget-object v0, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a1:[D

    const/16 v20, 0x3

    aget-wide v57, v0, v20

    mul-double v57, v57, v8

    mul-double v57, v57, v8

    mul-double v57, v57, v8

    add-double v53, v53, v57

    iget-object v0, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a1:[D

    aget-wide v57, v0, v47

    mul-double v57, v57, v8

    mul-double v57, v57, v8

    mul-double v57, v57, v8

    mul-double v57, v57, v8

    add-double v53, v53, v57

    iget-object v0, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a1:[D

    aget-wide v57, v0, v37

    mul-double v57, v57, v8

    mul-double v57, v57, v8

    mul-double v57, v57, v8

    mul-double v57, v57, v8

    mul-double v57, v57, v8

    add-double v53, v53, v57

    iget-object v0, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a1:[D

    const/16 v20, 0x6

    aget-wide v57, v0, v20

    mul-double v57, v57, v8

    mul-double v57, v57, v8

    mul-double v57, v57, v8

    mul-double v57, v57, v8

    mul-double v57, v57, v8

    mul-double v57, v57, v8

    add-double v53, v53, v57

    .line 472
    .local v53, "y2":D
    cmpg-double v0, v53, v55

    if-gez v0, :cond_3c

    .line 473
    const-string v0, "TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v78, v7

    const-string v7, "----\u7b2c\u4e8c\u6bb5\u62d0\u70b9\uff0c\u65b9\u7a0b"

    .line 473
    .end local v7    # "bl":Z
    .local v78, "bl":Z
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "x=\uff1a"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const/4 v7, 0x0

    .line 461
    .end local v78    # "bl":Z
    .restart local v7    # "bl":Z
    move-wide/from16 v19, v8

    move/from16 v0, v77

    const/4 v8, 0x0

    goto/16 :goto_33

    .line 461
    .end local v53    # "y2":D
    .end local v55    # "y1":D
    :cond_3c
    move/from16 v78, v7

    move-wide/from16 v19, v8

    move/from16 v0, v77

    const/4 v8, 0x0

    .line 461
    .end local v7    # "bl":Z
    .restart local v78    # "bl":Z
    goto/16 :goto_33

    .line 479
    .end local v8    # "x":D
    .end local v77    # "mp":I
    .end local v78    # "bl":Z
    .restart local v0    # "mp":I
    .restart local v7    # "bl":Z
    :cond_3d
    move/from16 v77, v0

    move/from16 v78, v7

    .line 479
    .end local v0    # "mp":I
    .end local v7    # "bl":Z
    .restart local v77    # "mp":I
    .restart local v78    # "bl":Z
    goto :goto_36

    .line 479
    .end local v77    # "mp":I
    .end local v78    # "bl":Z
    .restart local v0    # "mp":I
    .restart local v7    # "bl":Z
    :cond_3e
    move/from16 v77, v0

    .line 479
    .end local v0    # "mp":I
    .restart local v77    # "mp":I
    :goto_36
    const/4 v0, 0x1

    .line 480
    .end local v7    # "bl":Z
    .local v0, "bl":Z
    if-eqz v0, :cond_40

    .line 482
    const/4 v4, 0x0

    .line 482
    .end local v28    # "jj":I
    .local v4, "jj":I
    :goto_37
    add-int/lit8 v7, v6, 0x1

    if-ge v4, v7, :cond_3f

    .line 483
    aget-object v7, v52, v1

    iget-object v8, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a1:[D

    aget-wide v53, v8, v4

    aput-wide v53, v7, v4

    .line 482
    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    .line 484
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    .line 486
    move/from16 v28, v4

    .line 486
    .end local v4    # "jj":I
    .restart local v28    # "jj":I
    :cond_40
    add-int/lit8 v6, v6, 0x1

    .line 440
    .end local v0    # "bl":Z
    .end local v16    # "bg":D
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v39, v2

    move/from16 v66, v15

    move/from16 v2, v73

    move/from16 v65, v74

    move-object/from16 v9, v76

    move/from16 v0, v77

    goto/16 :goto_30

    .line 488
    .end local v15    # "mq":I
    .end local v73    # "li_End":I
    .end local v74    # "j":I
    .end local v75    # "mcFlag":I
    .end local v76    # "mX0":[D
    .end local v77    # "mp":I
    .local v0, "mp":I
    .local v2, "li_End":I
    .restart local v9    # "mX0":[D
    .restart local v39    # "mY1":[D
    .restart local v65    # "j":I
    .restart local v66    # "mq":I
    :cond_41
    move/from16 v77, v0

    move/from16 v73, v2

    move-object/from16 v76, v9

    move-object/from16 v2, v39

    move/from16 v15, v66

    .line 488
    .end local v0    # "mp":I
    .end local v9    # "mX0":[D
    .end local v39    # "mY1":[D
    .end local v66    # "mq":I
    .local v2, "mY1":[D
    .restart local v15    # "mq":I
    .restart local v73    # "li_End":I
    .restart local v76    # "mX0":[D
    .restart local v77    # "mp":I
    :goto_38
    if-nez v1, :cond_42

    .line 491
    const-string v0, "TAG"

    const-string v4, "----\u62df\u5408\u65b9\u7a0b\u6709\u62d0\u70b9,\u6ca1\u6709\u627e\u5230\u7b2c\u4e8c\u6bb5\u7684\u5408\u9002\u65b9\u7a0b"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    move/from16 v79, v1

    .line 532
    .end local v1    # "ii":I
    .end local v21    # "k":I
    .local v0, "k":I
    .local v79, "ii":I
    :goto_39
    move/from16 v0, v21

    goto/16 :goto_3f

    .line 497
    .end local v0    # "k":I
    .end local v79    # "ii":I
    .restart local v1    # "ii":I
    .restart local v21    # "k":I
    :cond_42
    const/4 v0, 0x0

    .line 498
    .end local v65    # "j":I
    .local v0, "j":I
    const/4 v4, 0x0

    .line 500
    .end local v36    # "iFlag":I
    .local v4, "iFlag":I
    const/4 v3, 0x0

    move/from16 v36, v4

    .line 500
    .end local v4    # "iFlag":I
    .restart local v36    # "iFlag":I
    :goto_3a
    if-ge v3, v1, :cond_45

    .line 503
    const-wide/16 v7, 0x0

    .line 504
    .end local v26    # "rss":D
    .local v7, "rss":D
    move-wide/from16 v26, v7

    const/4 v4, 0x0

    .line 504
    .end local v7    # "rss":D
    .local v4, "e":I
    .restart local v26    # "rss":D
    :goto_3b
    if-ge v4, v15, :cond_43

    .line 505
    aget-wide v7, v10, v4

    .line 506
    .local v7, "xx":D
    aget-object v9, v52, v3

    const/16 v16, 0x0

    aget-wide v19, v9, v16

    aget-object v9, v52, v3

    const/16 v17, 0x1

    aget-wide v38, v9, v17

    mul-double v38, v38, v7

    add-double v19, v19, v38

    aget-object v9, v52, v3

    aget-wide v38, v9, v18

    mul-double v38, v38, v7

    mul-double v38, v38, v7

    add-double v19, v19, v38

    aget-object v9, v52, v3

    const/16 v25, 0x3

    aget-wide v34, v9, v25

    mul-double v34, v34, v7

    mul-double v34, v34, v7

    mul-double v34, v34, v7

    add-double v19, v19, v34

    aget-object v9, v52, v3

    aget-wide v34, v9, v47

    mul-double v34, v34, v7

    mul-double v34, v34, v7

    mul-double v34, v34, v7

    mul-double v34, v34, v7

    add-double v19, v19, v34

    aget-object v9, v52, v3

    aget-wide v34, v9, v37

    mul-double v34, v34, v7

    mul-double v34, v34, v7

    mul-double v34, v34, v7

    mul-double v34, v34, v7

    mul-double v34, v34, v7

    add-double v19, v19, v34

    aget-object v9, v52, v3

    const/16 v33, 0x6

    aget-wide v34, v9, v33

    mul-double v34, v34, v7

    mul-double v34, v34, v7

    mul-double v34, v34, v7

    mul-double v34, v34, v7

    mul-double v34, v34, v7

    mul-double v34, v34, v7

    add-double v19, v19, v34

    .line 510
    .local v19, "y1":D
    aget-wide v34, v2, v4

    move/from16 v80, v0

    move/from16 v79, v1

    sub-double v0, v34, v19

    .line 510
    .end local v0    # "j":I
    .end local v1    # "ii":I
    .restart local v79    # "ii":I
    .local v80, "j":I
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 511
    .local v0, "jjj":D
    mul-double v34, v0, v0

    add-double v26, v26, v34

    .line 504
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v79

    move/from16 v0, v80

    goto :goto_3b

    .line 513
    .end local v4    # "e":I
    .end local v7    # "xx":D
    .end local v19    # "y1":D
    .end local v79    # "ii":I
    .end local v80    # "j":I
    .local v0, "j":I
    .restart local v1    # "ii":I
    :cond_43
    move/from16 v80, v0

    move/from16 v79, v1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v25, 0x3

    .line 513
    .end local v0    # "j":I
    .end local v1    # "ii":I
    .restart local v79    # "ii":I
    .restart local v80    # "j":I
    cmpl-double v0, v12, v26

    if-ltz v0, :cond_44

    .line 514
    move-wide/from16 v0, v26

    .line 515
    .end local v12    # "Orss":D
    .local v0, "Orss":D
    move/from16 v36, v3

    .line 516
    add-int/lit8 v4, v3, 0x1

    .line 500
    .end local v80    # "j":I
    .local v4, "j":I
    move-wide v12, v0

    move v0, v4

    goto :goto_3c

    .line 500
    .end local v0    # "Orss":D
    .end local v4    # "j":I
    .restart local v12    # "Orss":D
    .restart local v80    # "j":I
    :cond_44
    move/from16 v0, v80

    .line 500
    .end local v80    # "j":I
    .local v0, "j":I
    :goto_3c
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v79

    goto/16 :goto_3a

    .line 520
    .end local v79    # "ii":I
    .restart local v1    # "ii":I
    :cond_45
    move/from16 v80, v0

    move/from16 v79, v1

    .line 520
    .end local v0    # "j":I
    .end local v1    # "ii":I
    .restart local v79    # "ii":I
    .restart local v80    # "j":I
    const/4 v0, 0x0

    .line 520
    .end local v3    # "i":I
    .local v0, "i":I
    :goto_3d
    const/16 v1, 0x10

    if-ge v0, v1, :cond_46

    .line 521
    iget-object v3, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a1:[D

    aput-wide v31, v3, v0

    .line 520
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 522
    :cond_46
    const/4 v0, 0x0

    move/from16 v65, v80

    .line 522
    .end local v80    # "j":I
    .restart local v65    # "j":I
    :goto_3e
    const/4 v1, 0x6

    if-gt v0, v1, :cond_48

    .line 523
    iget-object v3, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a1:[D

    aget-object v4, v52, v36

    aget-wide v7, v4, v0

    aput-wide v7, v3, v0

    .line 524
    iget-object v3, v5, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a1:[D

    aget-wide v7, v3, v0

    cmpl-double v3, v7, v31

    if-eqz v3, :cond_47

    .line 525
    move/from16 v65, v0

    .line 522
    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 527
    :cond_48
    if-eqz v65, :cond_49

    .line 528
    add-int/lit8 v21, v21, 0x1

    .line 529
    :cond_49
    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    .line 532
    move v3, v0

    goto/16 :goto_39

    .line 532
    .end local v21    # "k":I
    .local v0, "k":I
    .restart local v3    # "i":I
    :goto_3f
    const-string v1, "tag"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-----\u62df\u5408\u8fd4\u56de\uff1a"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    return v0
.end method

.method public GetChromaRise(D[D[DZZII)D
    .locals 52
    .param p1, "mtc"    # D
    .param p3, "mx"    # [D
    .param p4, "my"    # [D
    .param p5, "m_SubFlag"    # Z
    .param p6, "m_LogB"    # Z
    .param p7, "L"    # I
    .param p8, "p"    # I

    move-object/from16 v10, p0

    move/from16 v9, p7

    .line 544
    move/from16 v8, p8

    const/16 v0, 0x10

    new-array v6, v0, [D

    .line 545
    .local v6, "mX0":[D
    new-array v7, v0, [D

    .line 546
    .local v7, "mX1":[D
    new-array v4, v0, [D

    .line 547
    .local v4, "mY0":[D
    new-array v5, v0, [D

    .line 549
    .local v5, "mY1":[D
    const/4 v1, 0x0

    .line 550
    .local v1, "mp":I
    const/4 v2, 0x0

    .line 551
    .local v2, "mq":I
    const-wide/16 v15, 0x0

    .line 554
    .local v15, "mtx":D
    const-wide/16 v17, 0x0

    .line 555
    .local v17, "x0":D
    const-wide/16 v19, 0x0

    .line 556
    .local v19, "y0":D
    const/4 v3, 0x4

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    if-eqz p5, :cond_8

    .line 558
    if-ge v8, v3, :cond_0

    .line 559
    return-wide v21

    .line 560
    :cond_0
    move v1, v8

    .line 561
    move/from16 v25, v23

    .line 561
    .local v25, "i":I
    :goto_0
    move/from16 v26, v25

    .line 561
    .end local v25    # "i":I
    .local v26, "i":I
    move/from16 v3, v26

    if-ge v3, v0, :cond_2

    .line 563
    .end local v26    # "i":I
    .local v3, "i":I
    if-ge v3, v8, :cond_1

    .line 564
    aget-wide v25, p3, v3

    aput-wide v25, v6, v3

    .line 565
    aget-wide v25, p4, v3

    aput-wide v25, v4, v3

    goto :goto_1

    .line 567
    :cond_1
    sub-int v26, v3, v8

    add-int/lit8 v25, v3, -0x1

    aget-wide v28, p3, v25

    aput-wide v28, v7, v26

    .line 568
    sub-int v26, v3, v8

    add-int/lit8 v25, v3, -0x1

    aget-wide v28, p4, v25

    aput-wide v28, v5, v26

    .line 561
    :goto_1
    add-int/lit8 v25, v3, 0x1

    .line 561
    .end local v3    # "i":I
    .restart local v25    # "i":I
    const/4 v3, 0x4

    goto :goto_0

    .line 571
    .end local v25    # "i":I
    .restart local v3    # "i":I
    :cond_2
    if-eqz p6, :cond_7

    .line 573
    aget-wide v17, v6, v23

    .line 574
    aget-wide v19, v4, v23

    .line 575
    const/4 v0, 0x0

    .line 575
    .end local v3    # "i":I
    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_5

    .line 577
    aget-wide v25, v6, v0

    cmpg-double v3, v25, v21

    if-gtz v3, :cond_4

    .line 578
    move v3, v0

    .line 578
    .local v3, "j":I
    :goto_3
    if-ge v3, v1, :cond_3

    .line 580
    add-int/lit8 v25, v3, 0x1

    aget-wide v25, v6, v25

    aput-wide v25, v6, v3

    .line 581
    add-int/lit8 v25, v3, 0x1

    aget-wide v25, v4, v25

    aput-wide v25, v4, v3

    .line 578
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 583
    :cond_3
    add-int/lit8 v1, v1, -0x1

    .line 584
    add-int/lit8 v0, v0, -0x1

    .line 585
    nop

    .line 575
    move/from16 v30, v2

    goto :goto_4

    .line 587
    .end local v3    # "j":I
    :cond_4
    move/from16 v31, v1

    move/from16 v30, v2

    aget-wide v1, v6, v0

    .line 587
    .end local v1    # "mp":I
    .end local v2    # "mq":I
    .local v30, "mq":I
    .local v31, "mp":I
    invoke-static {v1, v2}, Ljava/lang/Math;->log10(D)D

    move-result-wide v1

    aput-wide v1, v6, v0

    .line 575
    move/from16 v1, v31

    .line 575
    .end local v31    # "mp":I
    .restart local v1    # "mp":I
    :goto_4
    add-int/lit8 v0, v0, 0x1

    move/from16 v2, v30

    goto :goto_2

    .line 589
    .end local v30    # "mq":I
    .restart local v2    # "mq":I
    :cond_5
    move/from16 v31, v1

    move/from16 v30, v2

    .line 589
    .end local v1    # "mp":I
    .end local v2    # "mq":I
    .restart local v30    # "mq":I
    .restart local v31    # "mp":I
    const/4 v0, 0x0

    :goto_5
    sub-int v1, v9, v8

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_6

    .line 591
    aget-wide v1, v7, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->log10(D)D

    move-result-wide v1

    aput-wide v1, v7, v0

    .line 589
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 593
    :cond_6
    move v2, v0

    .line 627
    .end local v30    # "mq":I
    .restart local v2    # "mq":I
    move v3, v2

    move/from16 v2, v31

    goto :goto_b

    .line 595
    .end local v0    # "i":I
    .end local v31    # "mp":I
    .restart local v1    # "mp":I
    .local v3, "i":I
    :cond_7
    move/from16 v30, v2

    .line 595
    .end local v2    # "mq":I
    .restart local v30    # "mq":I
    sub-int v0, v9, v8

    add-int/lit8 v2, v0, 0x1

    .line 627
    .end local v30    # "mq":I
    .restart local v2    # "mq":I
    move v0, v3

    move v3, v2

    move v2, v1

    goto :goto_b

    .line 599
    .end local v3    # "i":I
    :cond_8
    move/from16 v30, v2

    .line 599
    .end local v2    # "mq":I
    .restart local v30    # "mq":I
    move/from16 v0, v23

    .line 599
    .restart local v0    # "i":I
    :goto_6
    if-ge v0, v9, :cond_a

    .line 600
    aget-wide v2, p4, v0

    cmpl-double v25, v2, v21

    if-nez v25, :cond_9

    .line 601
    goto :goto_7

    .line 602
    :cond_9
    aget-wide v2, p3, v0

    aput-wide v2, v6, v0

    .line 603
    aget-wide v2, p4, v0

    aput-wide v2, v4, v0

    .line 599
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 605
    :cond_a
    :goto_7
    move v1, v0

    .line 606
    if-eqz p6, :cond_d

    .line 608
    aget-wide v17, v6, v23

    .line 609
    aget-wide v19, v4, v23

    .line 610
    const/4 v0, 0x0

    :goto_8
    if-ge v0, v1, :cond_d

    .line 611
    aget-wide v2, v6, v0

    cmpg-double v25, v2, v21

    if-gtz v25, :cond_c

    .line 612
    move v2, v0

    .line 612
    .local v2, "j":I
    :goto_9
    if-ge v2, v1, :cond_b

    .line 613
    add-int/lit8 v3, v2, 0x1

    aget-wide v25, v6, v3

    aput-wide v25, v6, v2

    .line 614
    add-int/lit8 v3, v2, 0x1

    aget-wide v25, v4, v3

    aput-wide v25, v4, v2

    .line 612
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 616
    :cond_b
    add-int/lit8 v1, v1, -0x1

    .line 617
    add-int/lit8 v0, v0, -0x1

    .line 618
    goto :goto_a

    .line 620
    .end local v2    # "j":I
    :cond_c
    aget-wide v2, v6, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    aput-wide v2, v6, v0

    .line 610
    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 627
    :cond_d
    move v2, v1

    move/from16 v3, v30

    .line 627
    .end local v1    # "mp":I
    .end local v30    # "mq":I
    .local v2, "mp":I
    .local v3, "mq":I
    :goto_b
    const/4 v0, 0x0

    .line 628
    const-wide/high16 v25, 0x4014000000000000L    # 5.0

    const/16 v28, 0x5

    const/16 v29, 0x3

    const-wide/high16 v30, -0x4010000000000000L    # -1.0

    const-wide v33, 0x3fb999999999999aL    # 0.1

    move/from16 v35, v2

    .line 628
    .end local v2    # "mp":I
    .local v35, "mp":I
    if-nez p5, :cond_1c

    .line 631
    const/4 v0, 0x0

    .line 632
    :goto_c
    move/from16 v2, v35

    if-ge v0, v2, :cond_e

    .line 633
    .end local v35    # "mp":I
    .restart local v2    # "mp":I
    aget-wide v39, v6, v0

    .line 634
    .local v39, "xx":D
    iget-object v1, v10, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    aget-wide v41, v1, v23

    iget-object v1, v10, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    aget-wide v43, v1, v24

    mul-double v43, v43, v39

    add-double v41, v41, v43

    iget-object v1, v10, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    const/16 v35, 0x2

    aget-wide v43, v1, v35

    mul-double v43, v43, v39

    mul-double v43, v43, v39

    add-double v41, v41, v43

    iget-object v1, v10, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    aget-wide v43, v1, v29

    mul-double v43, v43, v39

    mul-double v43, v43, v39

    mul-double v43, v43, v39

    add-double v41, v41, v43

    iget-object v1, v10, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    const/16 v27, 0x4

    aget-wide v43, v1, v27

    mul-double v43, v43, v39

    mul-double v43, v43, v39

    mul-double v43, v43, v39

    mul-double v43, v43, v39

    add-double v41, v41, v43

    iget-object v1, v10, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    aget-wide v43, v1, v28

    mul-double v43, v43, v39

    mul-double v43, v43, v39

    mul-double v43, v43, v39

    mul-double v43, v43, v39

    mul-double v43, v43, v39

    add-double v41, v41, v43

    iget-object v1, v10, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    const/16 v32, 0x6

    aget-wide v43, v1, v32

    mul-double v43, v43, v39

    mul-double v43, v43, v39

    mul-double v43, v43, v39

    mul-double v43, v43, v39

    mul-double v43, v43, v39

    mul-double v43, v43, v39

    add-double v41, v41, v43

    .line 638
    .local v41, "YY":D
    cmpg-double v1, v41, p1

    if-gez v1, :cond_f

    .line 640
    add-int/lit8 v0, v0, 0x1

    .line 641
    nop

    .line 632
    move/from16 v35, v2

    goto :goto_c

    .line 646
    .end local v39    # "xx":D
    .end local v41    # "YY":D
    :cond_e
    const/16 v27, 0x4

    const/16 v35, 0x2

    :cond_f
    aget-wide v28, v4, v23

    cmpg-double v1, p1, v28

    if-gez v1, :cond_10

    .line 647
    const/4 v0, 0x0

    .line 648
    :cond_10
    add-int/lit8 v1, v2, -0x1

    aget-wide v28, v4, v1

    cmpl-double v1, p1, v28

    if-lez v1, :cond_11

    .line 649
    move v0, v2

    .line 653
    .end local v0    # "i":I
    .local v1, "i":I
    :cond_11
    move v1, v0

    if-lez v1, :cond_13

    if-ge v1, v2, :cond_13

    .line 655
    iget-object v0, v10, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    add-int/lit8 v21, v1, -0x1

    aget-wide v21, v6, v21

    aget-wide v24, v6, v1

    move-object/from16 v26, v0

    move-object v0, v10

    move v13, v1

    move/from16 v14, v35

    move-object/from16 v1, v26

    .line 655
    .end local v1    # "i":I
    .local v13, "i":I
    move v14, v2

    move/from16 v45, v3

    move-wide/from16 v2, v21

    .line 655
    .end local v2    # "mp":I
    .end local v3    # "mq":I
    .local v14, "mp":I
    .local v45, "mq":I
    move-object/from16 v27, v4

    move-object/from16 v35, v5

    move-wide/from16 v4, v24

    .line 655
    .end local v4    # "mY0":[D
    .end local v5    # "mY1":[D
    .local v27, "mY0":[D
    .local v35, "mY1":[D
    move-object/from16 v36, v6

    move-object/from16 v37, v7

    move-wide/from16 v6, p1

    .line 655
    .end local v6    # "mX0":[D
    .end local v7    # "mX1":[D
    .local v36, "mX0":[D
    .local v37, "mX1":[D
    move-object/from16 v8, p4

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/wen/fluorescence/arithmetic/FitCalcute;->FindY([DDDD[DI)D

    move-result-wide v0

    .line 656
    .end local v15    # "mtx":D
    .local v0, "mtx":D
    if-eqz p6, :cond_12

    .line 657
    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    .line 658
    .end local v0    # "mtx":D
    .restart local v15    # "mtx":D
    aget-wide v0, v36, v23

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    cmpg-double v2, v15, v0

    if-gtz v2, :cond_1b

    .line 659
    aget-wide v0, v36, v23

    sub-double v0, v0, v33

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    goto/16 :goto_e

    .line 800
    .end local v15    # "mtx":D
    .end local v45    # "mq":I
    .restart local v0    # "mtx":D
    .restart local v30    # "mq":I
    :cond_12
    :goto_d
    move/from16 v30, v45

    goto/16 :goto_14

    .line 661
    .end local v0    # "mtx":D
    .end local v13    # "i":I
    .end local v14    # "mp":I
    .end local v27    # "mY0":[D
    .end local v30    # "mq":I
    .end local v35    # "mY1":[D
    .end local v36    # "mX0":[D
    .end local v37    # "mX1":[D
    .restart local v1    # "i":I
    .restart local v2    # "mp":I
    .restart local v3    # "mq":I
    .restart local v4    # "mY0":[D
    .restart local v5    # "mY1":[D
    .restart local v6    # "mX0":[D
    .restart local v7    # "mX1":[D
    .restart local v15    # "mtx":D
    :cond_13
    move v13, v1

    move v14, v2

    move/from16 v45, v3

    move-object/from16 v27, v4

    move-object/from16 v35, v5

    move-object/from16 v36, v6

    move-object/from16 v37, v7

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    .line 661
    .end local v1    # "i":I
    .end local v2    # "mp":I
    .end local v3    # "mq":I
    .end local v4    # "mY0":[D
    .end local v5    # "mY1":[D
    .end local v6    # "mX0":[D
    .end local v7    # "mX1":[D
    .restart local v13    # "i":I
    .restart local v14    # "mp":I
    .restart local v27    # "mY0":[D
    .restart local v35    # "mY1":[D
    .restart local v36    # "mX0":[D
    .restart local v37    # "mX1":[D
    .restart local v45    # "mq":I
    if-ne v13, v14, :cond_16

    .line 662
    if-eqz p6, :cond_15

    .line 663
    iget-object v1, v10, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    add-int/lit8 v0, v13, -0x1

    aget-wide v2, v36, v0

    add-int/lit8 v0, v13, -0x1

    aget-wide v4, v36, v0

    add-double v4, v4, v33

    move-object v0, v10

    move-wide/from16 v6, p1

    move-wide v10, v8

    move-object/from16 v8, p4

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/wen/fluorescence/arithmetic/FitCalcute;->FindY([DDDD[DI)D

    move-result-wide v0

    .line 665
    .end local v15    # "mtx":D
    .restart local v0    # "mtx":D
    cmpl-double v2, v0, v21

    if-nez v2, :cond_14

    .line 666
    add-int/lit8 v2, v13, -0x1

    aget-wide v2, v36, v2

    add-double v0, v2, v33

    .line 667
    :cond_14
    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    .line 667
    .end local v0    # "mtx":D
    .restart local v15    # "mtx":D
    goto :goto_e

    .line 669
    :cond_15
    add-int/lit8 v1, v13, -0x1

    aget-wide v0, v36, v1

    add-double v15, v0, v25

    goto :goto_e

    .line 671
    :cond_16
    move-wide v10, v8

    if-nez v13, :cond_1b

    .line 674
    if-nez p6, :cond_18

    .line 675
    aget-wide v0, v27, v23

    cmpg-double v2, p1, v0

    if-gez v2, :cond_17

    .line 676
    return-wide v30

    .line 677
    :cond_17
    return-wide v21

    .line 679
    :cond_18
    move-wide v8, v10

    aget-wide v0, v27, v23

    sub-double v0, v0, v19

    .line 680
    .local v0, "dy":D
    cmpl-double v2, v0, v21

    if-nez v2, :cond_19

    .line 681
    return-wide v30

    .line 683
    :cond_19
    aget-wide v2, v36, v23

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double v2, v2, v17

    div-double/2addr v2, v0

    .line 684
    .local v2, "ik":D
    sub-double v4, p1, v19

    mul-double/2addr v4, v2

    .line 686
    .end local v15    # "mtx":D
    .local v4, "mtx":D
    aget-wide v6, v36, v23

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    div-double/2addr v6, v8

    .line 687
    .end local v17    # "x0":D
    .local v6, "x0":D
    cmpl-double v8, v6, v4

    if-lez v8, :cond_1a

    .line 690
    return-wide v30

    .line 693
    :cond_1a
    return-wide v4

    .line 800
    .end local v2    # "ik":D
    .end local v4    # "mtx":D
    .end local v6    # "x0":D
    .end local v45    # "mq":I
    .local v0, "mtx":D
    .restart local v17    # "x0":D
    .restart local v30    # "mq":I
    :cond_1b
    :goto_e
    move-wide v0, v15

    goto :goto_d

    .line 699
    .end local v13    # "i":I
    .end local v14    # "mp":I
    .end local v27    # "mY0":[D
    .end local v30    # "mq":I
    .end local v36    # "mX0":[D
    .end local v37    # "mX1":[D
    .local v0, "i":I
    .restart local v3    # "mq":I
    .local v4, "mY0":[D
    .restart local v5    # "mY1":[D
    .local v6, "mX0":[D
    .restart local v7    # "mX1":[D
    .restart local v15    # "mtx":D
    .local v35, "mp":I
    :cond_1c
    move/from16 v45, v3

    move-object/from16 v27, v4

    move-object/from16 v36, v6

    move-object/from16 v37, v7

    move/from16 v14, v35

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    move-object/from16 v35, v5

    .line 699
    .end local v3    # "mq":I
    .end local v4    # "mY0":[D
    .end local v5    # "mY1":[D
    .end local v6    # "mX0":[D
    .end local v7    # "mX1":[D
    .restart local v14    # "mp":I
    .restart local v27    # "mY0":[D
    .local v35, "mY1":[D
    .restart local v36    # "mX0":[D
    .restart local v37    # "mX1":[D
    .restart local v45    # "mq":I
    const/4 v0, 0x0

    .line 700
    :goto_f
    if-ge v0, v14, :cond_1d

    .line 701
    aget-wide v1, v36, v0

    .line 702
    .local v1, "xx":D
    move-object/from16 v12, p0

    iget-object v3, v12, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    aget-wide v4, v3, v23

    iget-object v3, v12, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    aget-wide v6, v3, v24

    mul-double/2addr v6, v1

    add-double/2addr v4, v6

    iget-object v3, v12, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    const/4 v6, 0x2

    aget-wide v38, v3, v6

    mul-double v38, v38, v1

    mul-double v38, v38, v1

    add-double v4, v4, v38

    iget-object v3, v12, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    aget-wide v6, v3, v29

    mul-double/2addr v6, v1

    mul-double/2addr v6, v1

    mul-double/2addr v6, v1

    add-double/2addr v4, v6

    iget-object v3, v12, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    const/4 v13, 0x4

    aget-wide v6, v3, v13

    mul-double/2addr v6, v1

    mul-double/2addr v6, v1

    mul-double/2addr v6, v1

    mul-double/2addr v6, v1

    add-double/2addr v4, v6

    iget-object v3, v12, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    aget-wide v6, v3, v28

    mul-double/2addr v6, v1

    mul-double/2addr v6, v1

    mul-double/2addr v6, v1

    mul-double/2addr v6, v1

    mul-double/2addr v6, v1

    add-double/2addr v4, v6

    iget-object v3, v12, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    const/4 v6, 0x6

    aget-wide v38, v3, v6

    mul-double v38, v38, v1

    mul-double v38, v38, v1

    mul-double v38, v38, v1

    mul-double v38, v38, v1

    mul-double v38, v38, v1

    mul-double v38, v38, v1

    add-double v4, v4, v38

    .line 706
    .local v4, "YY":D
    cmpg-double v3, v4, p1

    if-gez v3, :cond_1e

    .line 708
    add-int/lit8 v0, v0, 0x1

    .line 709
    goto :goto_f

    .line 714
    .end local v1    # "xx":D
    .end local v4    # "YY":D
    :cond_1d
    move-object/from16 v12, p0

    const/4 v13, 0x4

    :cond_1e
    aget-wide v1, v27, v23

    cmpg-double v3, p1, v1

    if-gez v3, :cond_1f

    .line 715
    const/4 v0, 0x0

    .line 716
    :cond_1f
    add-int/lit8 v2, v14, -0x1

    aget-wide v1, v27, v2

    cmpl-double v3, p1, v1

    if-lez v3, :cond_20

    .line 717
    move v0, v14

    .line 721
    .end local v0    # "i":I
    .local v6, "i":I
    :cond_20
    move v6, v0

    if-nez v6, :cond_25

    .line 723
    if-nez p6, :cond_22

    .line 724
    aget-wide v0, v27, v23

    cmpg-double v2, p1, v0

    if-gez v2, :cond_21

    .line 725
    return-wide v30

    .line 726
    :cond_21
    return-wide v21

    .line 728
    :cond_22
    aget-wide v0, v27, v23

    sub-double v0, v0, v19

    .line 729
    .local v0, "dy":D
    cmpl-double v2, v0, v21

    if-nez v2, :cond_23

    .line 730
    return-wide v30

    .line 732
    :cond_23
    aget-wide v2, v36, v23

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double v2, v2, v17

    div-double/2addr v2, v0

    .line 733
    .restart local v2    # "ik":D
    sub-double v4, p1, v19

    mul-double/2addr v4, v2

    .line 735
    .end local v15    # "mtx":D
    .local v4, "mtx":D
    move-wide/from16 v46, v0

    aget-wide v0, v36, v23

    .line 735
    .end local v0    # "dy":D
    .local v46, "dy":D
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    div-double/2addr v0, v8

    .line 736
    .end local v17    # "x0":D
    .local v0, "x0":D
    cmpl-double v7, v0, v4

    if-lez v7, :cond_24

    .line 737
    return-wide v30

    .line 739
    :cond_24
    return-wide v4

    .line 741
    .end local v0    # "x0":D
    .end local v2    # "ik":D
    .end local v4    # "mtx":D
    .end local v46    # "dy":D
    .restart local v15    # "mtx":D
    .restart local v17    # "x0":D
    :cond_25
    if-lez v6, :cond_26

    if-ge v6, v14, :cond_26

    .line 743
    iget-object v1, v12, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    add-int/lit8 v0, v6, -0x1

    aget-wide v2, v36, v0

    aget-wide v4, v36, v6

    move-object v0, v12

    move v13, v6

    move-wide/from16 v6, p1

    .line 743
    .end local v6    # "i":I
    .restart local v13    # "i":I
    move-wide v10, v8

    move-object/from16 v8, p4

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/wen/fluorescence/arithmetic/FitCalcute;->FindY([DDDD[DI)D

    move-result-wide v0

    .line 744
    .end local v15    # "mtx":D
    .local v0, "mtx":D
    if-eqz p6, :cond_12

    .line 745
    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    .line 746
    .end local v0    # "mtx":D
    .restart local v15    # "mtx":D
    aget-wide v0, v36, v23

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    cmpg-double v2, v15, v0

    if-gez v2, :cond_1b

    .line 747
    aget-wide v0, v36, v23

    sub-double v0, v0, v33

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    goto/16 :goto_e

    .line 749
    .end local v13    # "i":I
    .restart local v6    # "i":I
    :cond_26
    move v13, v6

    move-wide v10, v8

    .line 749
    .end local v6    # "i":I
    .restart local v13    # "i":I
    add-int/lit8 v2, v14, -0x1

    if-le v13, v2, :cond_31

    .line 751
    move/from16 v0, v23

    .line 752
    .local v0, "j":I
    :goto_10
    move/from16 v9, v45

    if-ge v0, v9, :cond_27

    .line 754
    .end local v45    # "mq":I
    .local v9, "mq":I
    aget-wide v1, v37, v0

    .line 755
    .restart local v1    # "xx":D
    iget-object v3, v12, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a1:[D

    aget-wide v4, v3, v23

    iget-object v3, v12, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a1:[D

    aget-wide v6, v3, v24

    mul-double/2addr v6, v1

    add-double/2addr v4, v6

    iget-object v3, v12, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a1:[D

    const/4 v6, 0x2

    aget-wide v7, v3, v6

    mul-double/2addr v7, v1

    mul-double/2addr v7, v1

    add-double/2addr v4, v7

    iget-object v3, v12, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a1:[D

    aget-wide v6, v3, v29

    mul-double/2addr v6, v1

    mul-double/2addr v6, v1

    mul-double/2addr v6, v1

    add-double/2addr v4, v6

    iget-object v3, v12, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a1:[D

    const/4 v6, 0x4

    aget-wide v7, v3, v6

    mul-double/2addr v7, v1

    mul-double/2addr v7, v1

    mul-double/2addr v7, v1

    mul-double/2addr v7, v1

    add-double/2addr v4, v7

    iget-object v3, v12, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a1:[D

    aget-wide v6, v3, v28

    mul-double/2addr v6, v1

    mul-double/2addr v6, v1

    mul-double/2addr v6, v1

    mul-double/2addr v6, v1

    mul-double/2addr v6, v1

    add-double/2addr v4, v6

    iget-object v3, v12, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a1:[D

    const/4 v6, 0x6

    aget-wide v7, v3, v6

    mul-double/2addr v7, v1

    mul-double/2addr v7, v1

    mul-double/2addr v7, v1

    mul-double/2addr v7, v1

    mul-double/2addr v7, v1

    mul-double/2addr v7, v1

    add-double/2addr v4, v7

    .line 760
    .local v4, "YY":D
    move-wide v7, v10

    cmpg-double v3, v4, p1

    if-gez v3, :cond_28

    .line 762
    add-int/lit8 v0, v0, 0x1

    .line 763
    nop

    .line 751
    move-wide v10, v7

    move/from16 v45, v9

    goto :goto_10

    .line 767
    .end local v1    # "xx":D
    .end local v4    # "YY":D
    :cond_27
    move-wide v7, v10

    :cond_28
    aget-wide v1, v35, v23

    cmpg-double v3, p1, v1

    if-gez v3, :cond_29

    .line 768
    const/4 v0, 0x0

    .line 769
    :cond_29
    add-int/lit8 v3, v9, -0x1

    aget-wide v1, v35, v3

    cmpl-double v3, p1, v1

    if-lez v3, :cond_2a

    .line 770
    move v0, v9

    .line 772
    .end local v0    # "j":I
    .local v6, "j":I
    :cond_2a
    move v6, v0

    if-lez v6, :cond_2c

    if-ge v6, v9, :cond_2c

    .line 773
    iget-object v1, v12, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a1:[D

    add-int/lit8 v0, v6, -0x1

    aget-wide v2, v37, v0

    aget-wide v4, v37, v6

    move-object v0, v12

    move/from16 v48, v13

    move-wide v12, v7

    move v8, v6

    move-wide/from16 v6, p1

    .line 773
    .end local v6    # "j":I
    .end local v13    # "i":I
    .local v8, "j":I
    .local v48, "i":I
    move/from16 v49, v8

    move-object/from16 v8, p4

    .line 773
    .end local v8    # "j":I
    .local v49, "j":I
    move/from16 v50, v9

    move/from16 v9, p7

    .line 773
    .end local v9    # "mq":I
    .local v50, "mq":I
    invoke-direct/range {v0 .. v9}, Lcom/wen/fluorescence/arithmetic/FitCalcute;->FindY([DDDD[DI)D

    move-result-wide v0

    .line 774
    .end local v15    # "mtx":D
    .local v0, "mtx":D
    if-eqz p6, :cond_2b

    .line 775
    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    .line 800
    .end local v0    # "mtx":D
    .restart local v15    # "mtx":D
    move-wide v0, v15

    .line 800
    .end local v15    # "mtx":D
    .end local v48    # "i":I
    .end local v49    # "j":I
    .end local v50    # "mq":I
    .restart local v0    # "mtx":D
    .restart local v13    # "i":I
    .restart local v30    # "mq":I
    :cond_2b
    move/from16 v13, v48

    move/from16 v30, v50

    goto/16 :goto_14

    .line 776
    .end local v0    # "mtx":D
    .end local v30    # "mq":I
    .restart local v6    # "j":I
    .restart local v9    # "mq":I
    .restart local v15    # "mtx":D
    :cond_2c
    move/from16 v49, v6

    move/from16 v50, v9

    move/from16 v48, v13

    move-wide v12, v7

    .line 776
    .end local v6    # "j":I
    .end local v9    # "mq":I
    .end local v13    # "i":I
    .restart local v48    # "i":I
    .restart local v49    # "j":I
    .restart local v50    # "mq":I
    move/from16 v8, v49

    move/from16 v9, v50

    if-lt v8, v9, :cond_2f

    .line 778
    .end local v49    # "j":I
    .end local v50    # "mq":I
    .restart local v8    # "j":I
    .restart local v9    # "mq":I
    if-eqz p6, :cond_2e

    .line 779
    move-wide v6, v12

    move-object/from16 v12, p0

    iget-object v1, v12, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a1:[D

    add-int/lit8 v0, v8, -0x1

    aget-wide v2, v37, v0

    add-int/lit8 v0, v8, -0x1

    aget-wide v4, v37, v0

    add-double v4, v4, v33

    move-object v0, v12

    move-wide v12, v6

    move-wide/from16 v6, p1

    move/from16 v23, v8

    move-object/from16 v8, p4

    .line 779
    .end local v8    # "j":I
    .local v23, "j":I
    move/from16 v30, v9

    move/from16 v9, p7

    .line 779
    .end local v9    # "mq":I
    .restart local v30    # "mq":I
    invoke-direct/range {v0 .. v9}, Lcom/wen/fluorescence/arithmetic/FitCalcute;->FindY([DDDD[DI)D

    move-result-wide v0

    .line 782
    .end local v15    # "mtx":D
    .restart local v0    # "mtx":D
    cmpl-double v2, v0, v21

    if-nez v2, :cond_2d

    .line 783
    add-int/lit8 v6, v23, -0x1

    aget-wide v2, v37, v6

    add-double v0, v2, v33

    .line 784
    :cond_2d
    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    .line 784
    .end local v0    # "mtx":D
    .restart local v15    # "mtx":D
    goto :goto_11

    .line 786
    .end local v23    # "j":I
    .end local v30    # "mq":I
    .restart local v8    # "j":I
    .restart local v9    # "mq":I
    :cond_2e
    move/from16 v23, v8

    move/from16 v30, v9

    .line 786
    .end local v8    # "j":I
    .end local v9    # "mq":I
    .restart local v23    # "j":I
    .restart local v30    # "mq":I
    add-int/lit8 v6, v23, -0x1

    aget-wide v0, v37, v6

    add-double v15, v0, v25

    .line 800
    .end local v15    # "mtx":D
    .end local v23    # "j":I
    .end local v48    # "i":I
    .restart local v0    # "mtx":D
    .restart local v13    # "i":I
    :goto_11
    move-wide v0, v15

    move/from16 v13, v48

    goto :goto_14

    .line 790
    .end local v0    # "mtx":D
    .end local v13    # "i":I
    .end local v30    # "mq":I
    .restart local v8    # "j":I
    .restart local v9    # "mq":I
    .restart local v15    # "mtx":D
    .restart local v48    # "i":I
    :cond_2f
    move/from16 v23, v8

    move/from16 v30, v9

    .line 790
    .end local v8    # "j":I
    .end local v9    # "mq":I
    .restart local v23    # "j":I
    .restart local v30    # "mq":I
    if-eqz p6, :cond_30

    .line 791
    add-int/lit8 v2, v14, -0x1

    aget-wide v0, v36, v2

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 791
    .end local v15    # "mtx":D
    .restart local v0    # "mtx":D
    :goto_12
    goto :goto_13

    .line 793
    .end local v0    # "mtx":D
    .restart local v15    # "mtx":D
    :cond_30
    add-int/lit8 v2, v14, -0x1

    aget-wide v0, v36, v2

    goto :goto_12

    .line 794
    .end local v15    # "mtx":D
    .restart local v0    # "mtx":D
    :goto_13
    return-wide v0

    .line 800
    .end local v0    # "mtx":D
    .end local v23    # "j":I
    .end local v30    # "mq":I
    .end local v48    # "i":I
    .restart local v13    # "i":I
    .restart local v15    # "mtx":D
    .restart local v45    # "mq":I
    :cond_31
    move/from16 v48, v13

    move/from16 v30, v45

    move-wide v0, v15

    .line 800
    .end local v15    # "mtx":D
    .end local v45    # "mq":I
    .restart local v0    # "mtx":D
    .restart local v30    # "mq":I
    :goto_14
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    .line 801
    .local v2, "b":Ljava/math/BigDecimal;
    const/4 v3, 0x4

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v3

    .line 802
    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v3

    .line 805
    .local v3, "mtx_return":D
    return-wide v3
.end method

.method public getA0()[D
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    return-object v0
.end method

.method public getA1()[D
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a1:[D

    return-object v0
.end method

.method public isInflexion()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/wen/fluorescence/arithmetic/FitCalcute;->isInflexion:Z

    return v0
.end method

.method public setA0([D)V
    .locals 0
    .param p1, "a0"    # [D

    .line 44
    iput-object p1, p0, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a0:[D

    .line 45
    return-void
.end method

.method public setA1([D)V
    .locals 0
    .param p1, "a1"    # [D

    .line 52
    iput-object p1, p0, Lcom/wen/fluorescence/arithmetic/FitCalcute;->a1:[D

    .line 53
    return-void
.end method
