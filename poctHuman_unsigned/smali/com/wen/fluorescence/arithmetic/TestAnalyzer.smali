.class public Lcom/wen/fluorescence/arithmetic/TestAnalyzer;
.super Ljava/lang/Object;
.source "TestAnalyzer.java"


# static fields
.field private static analyzer:Lcom/wen/fluorescence/arithmetic/TestAnalyzer;


# instance fields
.field private B:D

.field private C:D

.field private T1:D

.field private T2:D

.field private TC:D

.field private TC2:D

.field private TC3:D

.field private X1:D

.field public X1Array:[I

.field private X2:D

.field public X2Array:[I

.field private X3:D

.field public X3Array:[I

.field private X4:D

.field public X4Array:[I

.field public peaks:[D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->peaks:[D

    .line 46
    const/16 v0, 0x1e

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X1Array:[I

    .line 47
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X2Array:[I

    .line 48
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X3Array:[I

    .line 49
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X4Array:[I

    .line 50
    return-void
.end method

.method private average_Data(II[III)D
    .locals 16
    .param p1, "li_Start"    # I
    .param p2, "li_End"    # I
    .param p3, "sArray"    # [I
    .param p4, "PeakArray"    # I
    .param p5, "Count"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p4

    .line 124
    move/from16 v4, p5

    const-wide/16 v5, 0x0

    .line 126
    .local v5, "ld_Average":D
    :try_start_0
    array-length v7, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v8, 0x1

    move/from16 v9, p2

    if-lt v9, v7, :cond_0

    .line 127
    :try_start_1
    array-length v7, v2

    sub-int/2addr v7, v8

    .line 129
    .end local p2    # "li_End":I
    .local v7, "li_End":I
    move v9, v7

    goto :goto_0

    .line 158
    .end local v7    # "li_End":I
    .restart local p2    # "li_End":I
    :catch_0
    move-exception v0

    goto/16 :goto_4

    .line 129
    .end local p2    # "li_End":I
    .local v9, "li_End":I
    :cond_0
    :goto_0
    const/4 v7, 0x0

    .line 130
    .local v7, "myAL":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    .line 131
    .local v10, "li_Sum":I
    const/4 v11, 0x0

    .line 132
    .local v11, "temp":I
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v12

    .line 133
    move v12, v11

    move/from16 v11, p1

    .line 133
    .local v11, "i":I
    .local v12, "temp":I
    :goto_1
    if-ge v11, v9, :cond_3

    .line 134
    aget v13, v2, v11

    move v12, v13

    .line 135
    if-nez v12, :cond_1

    .line 136
    const/4 v12, 0x1

    .line 138
    :cond_1
    if-eqz v12, :cond_2

    .line 139
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 142
    .end local v11    # "i":I
    :cond_3
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 143
    invoke-static {v7}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 144
    const/4 v11, 0x0

    .line 144
    .restart local v11    # "i":I
    :goto_2
    if-ge v11, v4, :cond_8

    .line 145
    if-ne v3, v8, :cond_4

    .line 146
    iget-object v13, v1, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X1Array:[I

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aput v14, v13, v11

    goto :goto_3

    .line 147
    :cond_4
    const/4 v13, 0x2

    if-ne v3, v13, :cond_5

    .line 148
    iget-object v13, v1, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X2Array:[I

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aput v14, v13, v11

    goto :goto_3

    .line 149
    :cond_5
    const/4 v13, 0x3

    if-ne v3, v13, :cond_6

    .line 150
    iget-object v13, v1, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X3Array:[I

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aput v14, v13, v11

    goto :goto_3

    .line 151
    :cond_6
    const/4 v13, 0x4

    if-ne v3, v13, :cond_7

    .line 152
    iget-object v13, v1, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X4Array:[I

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aput v14, v13, v11

    .line 153
    :cond_7
    :goto_3
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    add-int/2addr v10, v13

    .line 144
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 155
    .end local v11    # "i":I
    :cond_8
    int-to-double v13, v10

    int-to-double v1, v4

    div-double v5, v13, v1

    .line 156
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 157
    nop

    .line 160
    .end local v7    # "myAL":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v10    # "li_Sum":I
    .end local v12    # "temp":I
    goto :goto_5

    .line 158
    .end local v9    # "li_End":I
    .restart local p2    # "li_End":I
    :catch_1
    move-exception v0

    move/from16 v9, p2

    .line 158
    .end local p2    # "li_End":I
    .restart local v9    # "li_End":I
    :goto_4
    move-object v1, v0

    .line 159
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 161
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_5
    return-wide v5
.end method

.method private average_Min_Data(II[II)D
    .locals 10
    .param p1, "li_Start"    # I
    .param p2, "li_End"    # I
    .param p3, "sArray"    # [I
    .param p4, "Count"    # I

    .line 78
    const-wide/16 v0, 0x0

    .line 80
    .local v0, "ld_Average":D
    :try_start_0
    array-length v2, p3

    if-lt p2, v2, :cond_0

    .line 81
    array-length v2, p3

    add-int/lit8 p2, v2, -0x1

    .line 83
    :cond_0
    if-ge p2, p1, :cond_1

    .line 84
    move v2, p2

    .line 85
    .local v2, "temp":I
    move p2, p1

    .line 86
    move p1, v2

    .line 88
    .end local v2    # "temp":I
    :cond_1
    const/4 v2, 0x0

    .line 89
    .local v2, "myAL":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 90
    .local v3, "li_Sum":I
    const/4 v4, 0x0

    .line 91
    .local v4, "temp":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v5

    .line 92
    move v5, v4

    move v4, p1

    .line 92
    .local v4, "i":I
    .local v5, "temp":I
    :goto_0
    if-ge v4, p2, :cond_2

    .line 93
    aget v6, p3, v4

    move v5, v6

    .line 95
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 98
    .end local v4    # "i":I
    :cond_2
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 100
    const/4 v4, 0x0

    .line 100
    .restart local v4    # "i":I
    :goto_1
    if-ge v4, p4, :cond_3

    .line 101
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v3, v6

    .line 100
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 103
    .end local v4    # "i":I
    :cond_3
    int-to-double v6, v3

    int-to-double v8, p4

    div-double v0, v6, v8

    .line 104
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    nop

    .line 108
    .end local v2    # "myAL":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3    # "li_Sum":I
    .end local v5    # "temp":I
    goto :goto_2

    .line 106
    :catch_0
    move-exception v2

    .line 107
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 109
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return-wide v0
.end method

.method private geTCValueByMode(I)D
    .locals 4
    .param p1, "Mode"    # I

    .line 395
    packed-switch p1, :pswitch_data_0

    .line 433
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->TC:D

    goto :goto_0

    .line 430
    :pswitch_0
    iget-wide v0, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->T2:D

    iget-wide v2, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->T1:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->TC:D

    .line 431
    goto :goto_0

    .line 427
    :pswitch_1
    iget-wide v0, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->T1:D

    iget-wide v2, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->T2:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->TC:D

    .line 428
    goto :goto_0

    .line 424
    :pswitch_2
    iget-wide v0, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->C:D

    iget-wide v2, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->T1:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->TC:D

    .line 425
    goto :goto_0

    .line 421
    :pswitch_3
    iget-wide v0, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->C:D

    iget-wide v2, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->T2:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->TC:D

    .line 422
    goto :goto_0

    .line 418
    :pswitch_4
    iget-wide v0, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->T2:D

    iget-wide v2, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->C:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->TC:D

    .line 419
    goto :goto_0

    .line 415
    :pswitch_5
    iget-wide v0, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->T1:D

    iget-wide v2, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->T2:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->TC:D

    .line 416
    goto :goto_0

    .line 412
    :pswitch_6
    iget-wide v0, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->C:D

    iput-wide v0, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->TC:D

    .line 413
    goto :goto_0

    .line 409
    :pswitch_7
    iget-wide v0, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->T2:D

    iput-wide v0, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->TC:D

    .line 410
    goto :goto_0

    .line 406
    :pswitch_8
    iget-wide v0, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->T1:D

    iput-wide v0, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->TC:D

    .line 407
    goto :goto_0

    .line 403
    :pswitch_9
    iget-wide v0, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->T1:D

    iget-wide v2, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->T2:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->C:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->TC:D

    .line 404
    goto :goto_0

    .line 400
    :pswitch_a
    iget-wide v0, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->T1:D

    iget-wide v2, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->C:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->TC:D

    .line 401
    goto :goto_0

    .line 397
    :pswitch_b
    iget-wide v0, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->T2:D

    iget-wide v2, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->C:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->TC:D

    .line 398
    nop

    .line 436
    :goto_0
    iget-wide v0, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->TC:D

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance()Lcom/wen/fluorescence/arithmetic/TestAnalyzer;
    .locals 1

    .line 21
    sget-object v0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->analyzer:Lcom/wen/fluorescence/arithmetic/TestAnalyzer;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;

    invoke-direct {v0}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;-><init>()V

    sput-object v0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->analyzer:Lcom/wen/fluorescence/arithmetic/TestAnalyzer;

    .line 24
    :cond_0
    sget-object v0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->analyzer:Lcom/wen/fluorescence/arithmetic/TestAnalyzer;

    return-object v0
.end method


# virtual methods
.method public calculateTC(Lcom/wen/fluorescence/bean/IDChipInfo;[I)D
    .locals 11
    .param p1, "idCardInfo"    # Lcom/wen/fluorescence/bean/IDChipInfo;
    .param p2, "sArray"    # [I

    .line 171
    iget v0, p1, Lcom/wen/fluorescence/bean/IDChipInfo;->T2_start:I

    iget v1, p1, Lcom/wen/fluorescence/bean/IDChipInfo;->T2_end:I

    iget v2, p1, Lcom/wen/fluorescence/bean/IDChipInfo;->T2_start:I

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    div-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p1, Lcom/wen/fluorescence/bean/IDChipInfo;->C_start:I

    iget v3, p1, Lcom/wen/fluorescence/bean/IDChipInfo;->C_end:I

    iget v4, p1, Lcom/wen/fluorescence/bean/IDChipInfo;->C_start:I

    sub-int/2addr v3, v4

    div-int/2addr v3, v2

    add-int/2addr v1, v3

    iget v3, p1, Lcom/wen/fluorescence/bean/IDChipInfo;->m_NumberT2:I

    invoke-direct {p0, v0, v1, p2, v3}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->average_Min_Data(II[II)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->B:D

    .line 173
    iget v4, p1, Lcom/wen/fluorescence/bean/IDChipInfo;->T1_start:I

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfo;->T1_end:I

    iget v8, p1, Lcom/wen/fluorescence/bean/IDChipInfo;->m_NumberT1:I

    const/4 v7, 0x1

    move-object v3, p0

    move-object v6, p2

    invoke-direct/range {v3 .. v8}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->average_Data(II[III)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->T1:D

    .line 175
    iget v4, p1, Lcom/wen/fluorescence/bean/IDChipInfo;->T2_start:I

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfo;->T2_end:I

    iget v8, p1, Lcom/wen/fluorescence/bean/IDChipInfo;->m_NumberT2:I

    const/4 v7, 0x2

    invoke-direct/range {v3 .. v8}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->average_Data(II[III)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->T2:D

    .line 176
    iget v4, p1, Lcom/wen/fluorescence/bean/IDChipInfo;->C_start:I

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfo;->C_end:I

    iget v8, p1, Lcom/wen/fluorescence/bean/IDChipInfo;->m_NumberC:I

    const/4 v7, 0x3

    invoke-direct/range {v3 .. v8}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->average_Data(II[III)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->C:D

    .line 178
    iget v0, p1, Lcom/wen/fluorescence/bean/IDChipInfo;->cutBackgroundFlag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 179
    iget-wide v3, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->T1:D

    iget-wide v5, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->B:D

    sub-double/2addr v3, v5

    iput-wide v3, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->T1:D

    .line 180
    iget-wide v3, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->T1:D

    const-wide/16 v5, 0x0

    cmpg-double v0, v3, v5

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    if-gez v0, :cond_0

    .line 181
    iput-wide v3, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->T1:D

    .line 183
    :cond_0
    iget-wide v7, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->T2:D

    iget-wide v9, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->B:D

    sub-double/2addr v7, v9

    iput-wide v7, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->T2:D

    .line 184
    iget-wide v7, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->T2:D

    cmpg-double v0, v7, v5

    if-gez v0, :cond_1

    .line 185
    iput-wide v3, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->T2:D

    .line 187
    :cond_1
    iget-wide v7, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->C:D

    iget-wide v9, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->B:D

    sub-double/2addr v7, v9

    iput-wide v7, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->C:D

    .line 188
    iget-wide v7, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->C:D

    cmpg-double v0, v7, v5

    if-gez v0, :cond_2

    .line 189
    iput-wide v3, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->C:D

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->peaks:[D

    iget-wide v3, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->T1:D

    const/4 v5, 0x0

    aput-wide v3, v0, v5

    .line 194
    iget-object v0, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->peaks:[D

    iget-wide v3, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->T2:D

    aput-wide v3, v0, v1

    .line 195
    iget-object v0, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->peaks:[D

    iget-wide v3, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->C:D

    aput-wide v3, v0, v2

    .line 196
    iget-object v0, p1, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v0, v0, v5

    iget v0, v0, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_calcMethod:I

    invoke-direct {p0, v0}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->geTCValueByMode(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->TC:D

    .line 197
    iget-wide v0, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->TC:D

    return-wide v0
.end method

.method public calculateTCMulti(Lcom/wen/fluorescence/bean/IDChipInfo;[I)V
    .locals 18
    .param p1, "idCardInfo"    # Lcom/wen/fluorescence/bean/IDChipInfo;
    .param p2, "sArray"    # [I

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 202
    iget v1, v7, Lcom/wen/fluorescence/bean/IDChipInfo;->X1_start:I

    iget v2, v7, Lcom/wen/fluorescence/bean/IDChipInfo;->X1_end:I

    iget v5, v7, Lcom/wen/fluorescence/bean/IDChipInfo;->m_NumberX1:I

    const/4 v4, 0x1

    move-object v0, v6

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->average_Data(II[III)D

    move-result-wide v0

    iput-wide v0, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X1:D

    .line 204
    iget v1, v7, Lcom/wen/fluorescence/bean/IDChipInfo;->X2_start:I

    iget v2, v7, Lcom/wen/fluorescence/bean/IDChipInfo;->X2_end:I

    iget v5, v7, Lcom/wen/fluorescence/bean/IDChipInfo;->m_NumberX2:I

    const/4 v4, 0x2

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->average_Data(II[III)D

    move-result-wide v0

    iput-wide v0, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X2:D

    .line 206
    iget v1, v7, Lcom/wen/fluorescence/bean/IDChipInfo;->X3_start:I

    iget v2, v7, Lcom/wen/fluorescence/bean/IDChipInfo;->X3_end:I

    iget v5, v7, Lcom/wen/fluorescence/bean/IDChipInfo;->m_NumberX3:I

    const/4 v4, 0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->average_Data(II[III)D

    move-result-wide v0

    iput-wide v0, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X3:D

    .line 208
    iget v1, v7, Lcom/wen/fluorescence/bean/IDChipInfo;->X4_start:I

    iget v2, v7, Lcom/wen/fluorescence/bean/IDChipInfo;->X4_end:I

    iget v5, v7, Lcom/wen/fluorescence/bean/IDChipInfo;->m_NumberX4:I

    const/4 v4, 0x4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->average_Data(II[III)D

    move-result-wide v0

    iput-wide v0, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X4:D

    .line 210
    iget v0, v7, Lcom/wen/fluorescence/bean/IDChipInfo;->X2_start:I

    iget v1, v7, Lcom/wen/fluorescence/bean/IDChipInfo;->X2_end:I

    iget v2, v7, Lcom/wen/fluorescence/bean/IDChipInfo;->X2_start:I

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    div-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, v7, Lcom/wen/fluorescence/bean/IDChipInfo;->X3_start:I

    iget v3, v7, Lcom/wen/fluorescence/bean/IDChipInfo;->X3_end:I

    iget v4, v7, Lcom/wen/fluorescence/bean/IDChipInfo;->X3_start:I

    sub-int/2addr v3, v4

    div-int/2addr v3, v2

    add-int/2addr v1, v3

    iget v3, v7, Lcom/wen/fluorescence/bean/IDChipInfo;->m_NumberX2:I

    move-object/from16 v4, p2

    invoke-direct {v6, v0, v1, v4, v3}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->average_Min_Data(II[II)D

    move-result-wide v0

    iput-wide v0, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->B:D

    .line 213
    iget v0, v7, Lcom/wen/fluorescence/bean/IDChipInfo;->cutBackgroundFlag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 214
    iget-wide v8, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X1:D

    iget-wide v10, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->B:D

    sub-double/2addr v8, v10

    iput-wide v8, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X1:D

    .line 215
    iget-wide v8, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X2:D

    iget-wide v10, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->B:D

    sub-double/2addr v8, v10

    iput-wide v8, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X2:D

    .line 216
    iget-wide v8, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X3:D

    iget-wide v10, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->B:D

    sub-double/2addr v8, v10

    iput-wide v8, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X3:D

    .line 217
    iget-wide v8, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X4:D

    iget-wide v10, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->B:D

    sub-double/2addr v8, v10

    iput-wide v8, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X4:D

    .line 218
    iget-wide v8, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X1:D

    const-wide/16 v10, 0x0

    cmpg-double v0, v8, v10

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    if-gez v0, :cond_0

    .line 219
    iput-wide v8, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X1:D

    .line 221
    :cond_0
    iget-wide v12, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X2:D

    cmpg-double v0, v12, v10

    if-gez v0, :cond_1

    .line 222
    iput-wide v8, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X2:D

    .line 224
    :cond_1
    iget-wide v12, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X3:D

    cmpg-double v0, v12, v10

    if-gez v0, :cond_2

    .line 225
    iput-wide v8, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X3:D

    .line 227
    :cond_2
    iget-wide v12, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X4:D

    cmpg-double v0, v12, v10

    if-gez v0, :cond_3

    .line 228
    iput-wide v8, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X4:D

    .line 231
    :cond_3
    iget-object v0, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->peaks:[D

    iget-wide v8, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X1:D

    const/4 v3, 0x0

    aput-wide v8, v0, v3

    .line 232
    iget-object v0, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->peaks:[D

    iget-wide v8, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X3:D

    aput-wide v8, v0, v2

    .line 233
    iget-object v0, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->peaks:[D

    iget-wide v8, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X2:D

    aput-wide v8, v0, v1

    .line 234
    iget-object v0, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->peaks:[D

    const/4 v5, 0x3

    iget-wide v8, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X4:D

    aput-wide v8, v0, v5

    .line 236
    const/4 v0, 0x1

    .line 237
    .local v0, "tpos":I
    const/4 v5, 0x2

    .line 239
    .local v5, "cpos":I
    iget v8, v7, Lcom/wen/fluorescence/bean/IDChipInfo;->m_ItemCount:I

    if-le v8, v1, :cond_4

    .line 241
    iget-object v8, v7, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v8, v8, v3

    iget v8, v8, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_t:I

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v8, v1

    .line 242
    .end local v0    # "tpos":I
    .local v8, "tpos":I
    const-wide/16 v9, 0x0

    .line 242
    .local v9, "T0":D
    const-wide/16 v11, 0x0

    .line 243
    .local v11, "C0":D
    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 254
    :pswitch_0
    iget-wide v9, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X4:D

    goto :goto_0

    .line 251
    :pswitch_1
    iget-wide v9, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X3:D

    .line 252
    goto :goto_0

    .line 248
    :pswitch_2
    iget-wide v9, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X2:D

    .line 249
    goto :goto_0

    .line 245
    :pswitch_3
    iget-wide v9, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X1:D

    .line 246
    nop

    .line 257
    :goto_0
    iget-object v0, v7, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_c:I

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, v1

    .line 258
    .end local v5    # "cpos":I
    .local v0, "cpos":I
    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 269
    :pswitch_4
    iget-wide v11, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X4:D

    goto :goto_1

    .line 266
    :pswitch_5
    iget-wide v11, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X3:D

    .line 267
    goto :goto_1

    .line 263
    :pswitch_6
    iget-wide v11, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X2:D

    .line 264
    goto :goto_1

    .line 260
    :pswitch_7
    iget-wide v11, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X1:D

    .line 261
    nop

    .line 272
    :goto_1
    div-double v13, v9, v11

    iput-wide v13, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->TC:D

    .line 274
    const-wide/16 v13, 0x0

    .line 274
    .local v13, "T":D
    const-wide/16 v15, 0x0

    .line 275
    .local v15, "C":D
    iget-object v3, v7, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_t:I

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v3, v1

    .line 276
    .end local v8    # "tpos":I
    .local v3, "tpos":I
    packed-switch v3, :pswitch_data_2

    goto :goto_2

    .line 287
    :pswitch_8
    iget-wide v13, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X4:D

    goto :goto_2

    .line 284
    :pswitch_9
    iget-wide v13, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X3:D

    .line 285
    goto :goto_2

    .line 281
    :pswitch_a
    iget-wide v13, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X2:D

    .line 282
    goto :goto_2

    .line 278
    :pswitch_b
    iget-wide v13, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X1:D

    .line 279
    nop

    .line 290
    :goto_2
    iget-object v5, v7, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_c:I

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v5, v1

    .line 291
    .end local v0    # "cpos":I
    .restart local v5    # "cpos":I
    packed-switch v5, :pswitch_data_3

    .line 305
    move-wide v0, v15

    goto :goto_3

    .line 302
    :pswitch_c
    iget-wide v1, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X4:D

    .line 305
    .end local v15    # "C":D
    .local v1, "C":D
    move-wide v0, v1

    goto :goto_3

    .line 299
    .end local v1    # "C":D
    .restart local v15    # "C":D
    :pswitch_d
    iget-wide v0, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X3:D

    .line 300
    .end local v15    # "C":D
    .local v0, "C":D
    goto :goto_3

    .line 296
    .end local v0    # "C":D
    .restart local v15    # "C":D
    :pswitch_e
    iget-wide v0, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X2:D

    .line 297
    .end local v15    # "C":D
    .restart local v0    # "C":D
    goto :goto_3

    .line 293
    .end local v0    # "C":D
    .restart local v15    # "C":D
    :pswitch_f
    iget-wide v0, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X1:D

    .line 294
    .end local v15    # "C":D
    .restart local v0    # "C":D
    nop

    .line 305
    :goto_3
    move/from16 v17, v3

    div-double v2, v13, v0

    .line 305
    .end local v3    # "tpos":I
    .local v17, "tpos":I
    iput-wide v2, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->TC2:D

    .line 307
    .end local v0    # "C":D
    .end local v9    # "T0":D
    .end local v11    # "C0":D
    .end local v13    # "T":D
    move/from16 v0, v17

    .line 307
    .end local v17    # "tpos":I
    .local v0, "tpos":I
    :cond_4
    iget v1, v7, Lcom/wen/fluorescence/bean/IDChipInfo;->m_ItemCount:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_5

    .line 309
    const-wide/16 v8, 0x0

    .line 309
    .local v8, "T2":D
    const-wide/16 v10, 0x0

    .line 310
    .local v10, "C2":D
    iget-object v1, v7, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v1, v1, v2

    iget v1, v1, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_t:I

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    add-int/lit8 v0, v1, 0x1

    .line 311
    packed-switch v0, :pswitch_data_4

    goto :goto_4

    .line 322
    :pswitch_10
    iget-wide v8, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X4:D

    goto :goto_4

    .line 319
    :pswitch_11
    iget-wide v8, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X3:D

    .line 320
    goto :goto_4

    .line 316
    :pswitch_12
    iget-wide v8, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X2:D

    .line 317
    goto :goto_4

    .line 313
    :pswitch_13
    iget-wide v8, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X1:D

    .line 314
    nop

    .line 325
    :goto_4
    iget-object v1, v7, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    iget v1, v1, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_c:I

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    add-int/lit8 v5, v1, 0x1

    .line 326
    packed-switch v5, :pswitch_data_5

    goto :goto_5

    .line 337
    :pswitch_14
    iget-wide v10, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X4:D

    goto :goto_5

    .line 334
    :pswitch_15
    iget-wide v10, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X3:D

    .line 335
    goto :goto_5

    .line 331
    :pswitch_16
    iget-wide v10, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X2:D

    .line 332
    goto :goto_5

    .line 328
    :pswitch_17
    iget-wide v10, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X1:D

    .line 329
    nop

    .line 340
    :goto_5
    div-double v1, v8, v10

    iput-wide v1, v6, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->TC3:D

    .line 342
    .end local v8    # "T2":D
    .end local v10    # "C2":D
    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch
.end method

.method public getB()D
    .locals 2

    .line 370
    iget-wide v0, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->B:D

    return-wide v0
.end method

.method public getC()D
    .locals 2

    .line 366
    iget-wide v0, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->C:D

    return-wide v0
.end method

.method public getT1()D
    .locals 2

    .line 358
    iget-wide v0, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->T1:D

    return-wide v0
.end method

.method public getT2()D
    .locals 2

    .line 362
    iget-wide v0, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->T2:D

    return-wide v0
.end method

.method public getTC()D
    .locals 2

    .line 346
    iget-wide v0, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->TC:D

    return-wide v0
.end method

.method public getTC2()D
    .locals 2

    .line 350
    iget-wide v0, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->TC2:D

    return-wide v0
.end method

.method public getTC3()D
    .locals 2

    .line 354
    iget-wide v0, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->TC3:D

    return-wide v0
.end method

.method public getX1()D
    .locals 2

    .line 374
    iget-wide v0, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X1:D

    return-wide v0
.end method

.method public getX2()D
    .locals 2

    .line 378
    iget-wide v0, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X2:D

    return-wide v0
.end method

.method public getX3()D
    .locals 2

    .line 382
    iget-wide v0, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X3:D

    return-wide v0
.end method

.method public getX4()D
    .locals 2

    .line 386
    iget-wide v0, p0, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->X4:D

    return-wide v0
.end method

.method public reserveDecimals(ID)D
    .locals 3
    .param p1, "n"    # I
    .param p2, "number"    # D

    .line 54
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p2, p3}, Ljava/math/BigDecimal;-><init>(D)V

    .line 55
    .local v0, "b":Ljava/math/BigDecimal;
    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 56
    .end local v0    # "b":Ljava/math/BigDecimal;
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 59
    .end local v0    # "e":Ljava/lang/Exception;
    return-wide p2
.end method

.method public reserveDecimals(IF)F
    .locals 3
    .param p1, "n"    # I
    .param p2, "number"    # F

    .line 63
    new-instance v0, Ljava/math/BigDecimal;

    float-to-double v1, p2

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    .line 64
    .local v0, "b":Ljava/math/BigDecimal;
    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    return v1
.end method
