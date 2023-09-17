.class public Lcom/wen/fluorescence/util/EMCUtil;
.super Ljava/lang/Object;
.source "EMCUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEMCResult(Ljava/lang/String;ID)D
    .locals 31
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # I
    .param p2, "sourceValue"    # D

    move-object/from16 v0, p0

    .line 51
    const-wide/16 v1, 0x0

    .line 52
    .local v1, "result":D
    const-wide/16 v3, 0x0

    .line 53
    .local v3, "num":D
    const-wide/16 v5, 0x0

    .line 55
    .local v5, "ref":D
    const-string v7, "SAA"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    const/16 v14, 0xa

    const/4 v8, 0x2

    if-eqz v7, :cond_0

    .line 56
    packed-switch p1, :pswitch_data_0

    .line 95
    move-wide/from16 v1, p2

    goto/16 :goto_0

    .line 90
    :pswitch_0
    const-wide v10, 0x4074a00000000000L    # 330.0

    invoke-static {v10, v11, v14}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 91
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    mul-double v3, v9, v5

    .line 92
    const-wide v9, 0x40749f5c28f5c28fL    # 329.96

    add-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 93
    goto/16 :goto_0

    .line 85
    :pswitch_1
    invoke-static {v12, v13, v14}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 86
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    mul-double v3, v9, v5

    .line 87
    sub-double v9, v12, v5

    add-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 88
    goto/16 :goto_0

    .line 79
    :pswitch_2
    const-wide/high16 v9, 0x403e000000000000L    # 30.0

    invoke-static {v9, v10, v14}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 80
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v24

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v26, v5, v22

    mul-double v3, v24, v26

    .line 81
    sub-double v26, v9, v5

    add-double v9, v26, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 82
    goto :goto_0

    .line 74
    :pswitch_3
    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    invoke-static {v9, v10, v14}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 75
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v16

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v26, v5, v22

    mul-double v3, v16, v26

    .line 76
    sub-double v26, v9, v5

    add-double v9, v26, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 77
    goto :goto_0

    .line 68
    :pswitch_4
    const-wide/high16 v9, 0x4008000000000000L    # 3.0

    invoke-static {v9, v10, v14}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 69
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v26, v5, v22

    mul-double v3, v9, v26

    .line 70
    const-wide/high16 v9, 0x4008000000000000L    # 3.0

    sub-double/2addr v9, v5

    add-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 71
    goto :goto_0

    .line 63
    :pswitch_5
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    invoke-static {v9, v10, v14}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 64
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v20

    mul-double v3, v20, v5

    .line 65
    add-double v12, v9, v3

    invoke-static {v12, v13, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 66
    goto :goto_0

    .line 58
    :pswitch_6
    const/16 v7, 0x28

    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    invoke-static {v9, v10, v7}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 59
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    mul-double v26, v5, v18

    mul-double v3, v11, v26

    .line 60
    sub-double v11, v9, v5

    add-double/2addr v11, v3

    const/4 v7, 0x3

    invoke-static {v11, v12, v7}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 61
    nop

    .line 101
    :cond_0
    :goto_0
    const-string v7, "IL-6"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    const-wide v9, 0x4024428f5c28f5c3L    # 10.13

    const/16 v13, 0xc

    if-eqz v7, :cond_1

    .line 102
    packed-switch p1, :pswitch_data_1

    .line 162
    move-wide/from16 v1, p2

    goto/16 :goto_1

    .line 157
    :pswitch_7
    const-wide v11, 0x409f58147ae147aeL    # 2006.02

    invoke-static {v11, v12, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 158
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v26, v5, v22

    mul-double v3, v11, v26

    .line 159
    const-wide v11, 0x409f58147ae147aeL    # 2006.02

    sub-double/2addr v11, v5

    add-double/2addr v11, v3

    invoke-static {v11, v12, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 160
    goto/16 :goto_1

    .line 151
    :pswitch_8
    const-wide v11, 0x406f2dc28f5c28f6L    # 249.43

    invoke-static {v11, v12, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 152
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v26, v5, v22

    mul-double v3, v11, v26

    .line 153
    const-wide v11, 0x406f2dc28f5c28f6L    # 249.43

    sub-double/2addr v11, v5

    add-double/2addr v11, v3

    invoke-static {v11, v12, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 154
    goto/16 :goto_1

    .line 145
    :pswitch_9
    invoke-static {v9, v10, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 146
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v26, v5, v22

    mul-double v3, v11, v26

    .line 147
    sub-double v11, v9, v5

    add-double/2addr v11, v3

    invoke-static {v11, v12, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 148
    goto/16 :goto_1

    .line 139
    :pswitch_a
    const-wide/high16 v11, 0x4014000000000000L    # 5.0

    invoke-static {v11, v12, v14}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 140
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v26

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v28, v5, v22

    mul-double v3, v26, v28

    .line 141
    sub-double v26, v11, v5

    add-double v11, v26, v3

    invoke-static {v11, v12, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 142
    goto/16 :goto_1

    .line 134
    :pswitch_b
    const-wide v11, 0x40b5b16147ae147bL    # 5553.38

    invoke-static {v11, v12, v14}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 135
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    mul-double v3, v11, v5

    .line 136
    const-wide v11, 0x40b5b16147ae147bL    # 5553.38

    sub-double/2addr v11, v5

    add-double/2addr v11, v3

    invoke-static {v11, v12, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 137
    goto/16 :goto_1

    .line 129
    :pswitch_c
    const-wide v11, 0x4094a00000000000L    # 1320.0

    invoke-static {v11, v12, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 130
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    mul-double v3, v11, v5

    .line 131
    const-wide v11, 0x4094a00000000000L    # 1320.0

    add-double/2addr v11, v3

    invoke-static {v11, v12, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 132
    goto/16 :goto_1

    .line 124
    :pswitch_d
    const-wide v11, 0x4074a00000000000L    # 330.0

    invoke-static {v11, v12, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 125
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v26, v5, v22

    mul-double v3, v11, v26

    .line 126
    const-wide v11, 0x4074a00000000000L    # 330.0

    sub-double/2addr v11, v5

    add-double/2addr v11, v3

    invoke-static {v11, v12, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 127
    goto/16 :goto_1

    .line 119
    :pswitch_e
    const-wide v11, 0x4053400000000000L    # 77.0

    invoke-static {v11, v12, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 120
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v26, v5, v22

    mul-double v3, v11, v26

    .line 121
    const-wide v11, 0x4053400000000000L    # 77.0

    sub-double/2addr v11, v5

    add-double/2addr v11, v3

    invoke-static {v11, v12, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 122
    goto :goto_1

    .line 114
    :pswitch_f
    const-wide v11, 0x4032b33333333333L    # 18.7

    invoke-static {v11, v12, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 115
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v26, v5, v22

    mul-double v3, v11, v26

    .line 116
    const-wide v11, 0x4032b33333333333L    # 18.7

    sub-double/2addr v11, v5

    add-double/2addr v11, v3

    invoke-static {v11, v12, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 117
    goto :goto_1

    .line 109
    :pswitch_10
    const-wide v11, 0x401199999999999aL    # 4.4

    invoke-static {v11, v12, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 110
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v26, v5, v22

    mul-double v3, v11, v26

    .line 111
    const-wide v11, 0x401199999999999aL    # 4.4

    sub-double/2addr v11, v5

    add-double/2addr v11, v3

    invoke-static {v11, v12, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 112
    goto :goto_1

    .line 104
    :pswitch_11
    const-wide v11, 0x3f947ae147ae147bL    # 0.02

    const/16 v7, 0x28

    invoke-static {v11, v12, v7}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 105
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v26, v5, v22

    mul-double v3, v11, v26

    .line 106
    const-wide v11, 0x3f947ae147ae147bL    # 0.02

    sub-double/2addr v11, v5

    add-double/2addr v11, v3

    const/4 v7, 0x3

    invoke-static {v11, v12, v7}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 107
    nop

    .line 168
    :cond_1
    :goto_1
    const-string v7, "hs-CRP"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    if-eqz v7, :cond_2

    .line 169
    packed-switch p1, :pswitch_data_2

    .line 228
    move-wide/from16 v1, p2

    goto/16 :goto_2

    .line 223
    :pswitch_12
    const-wide v9, 0x4013eb851eb851ecL    # 4.98

    invoke-static {v9, v10, v14}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 224
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v26, v5, v22

    mul-double v3, v9, v26

    .line 225
    const-wide v9, 0x4013eb851eb851ecL    # 4.98

    sub-double/2addr v9, v5

    add-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 226
    goto/16 :goto_2

    .line 217
    :pswitch_13
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    invoke-static {v9, v10, v14}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 218
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v20

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v26, v5, v22

    mul-double v3, v20, v26

    .line 219
    sub-double v26, v9, v5

    add-double v9, v26, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 220
    goto/16 :goto_2

    .line 212
    :pswitch_14
    const-wide v9, 0x3fed70a3d70a3d71L    # 0.92

    invoke-static {v9, v10, v14}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 213
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v26, v5, v22

    mul-double v3, v9, v26

    .line 214
    const-wide v9, 0x3fed70a3d70a3d71L    # 0.92

    sub-double/2addr v9, v5

    add-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 215
    goto/16 :goto_2

    .line 206
    :pswitch_15
    const/16 v7, 0x8

    invoke-static {v11, v12, v7}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 207
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v26, v5, v22

    mul-double v3, v9, v26

    .line 208
    sub-double v9, v11, v5

    add-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 209
    goto/16 :goto_2

    .line 201
    :pswitch_16
    const-wide v9, 0x4026800000000000L    # 11.25

    invoke-static {v9, v10, v14}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 202
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    mul-double v3, v9, v5

    .line 203
    const-wide v9, 0x4026800000000000L    # 11.25

    sub-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 204
    goto/16 :goto_2

    .line 196
    :pswitch_17
    const-wide v9, 0x4017d70a3d70a3d7L    # 5.96

    invoke-static {v9, v10, v14}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 197
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    mul-double v3, v9, v5

    .line 198
    const-wide v9, 0x4017d70a3d70a3d7L    # 5.96

    add-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 199
    goto/16 :goto_2

    .line 191
    :pswitch_18
    const-wide v9, 0x4009333333333333L    # 3.15

    invoke-static {v9, v10, v14}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 192
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v26, v5, v22

    mul-double v3, v9, v26

    .line 193
    const-wide v9, 0x4009333333333333L    # 3.15

    sub-double/2addr v9, v5

    add-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 194
    goto/16 :goto_2

    .line 186
    :pswitch_19
    const-wide v9, 0x3ffb0a3d70a3d70aL    # 1.69

    invoke-static {v9, v10, v14}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 187
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v26, v5, v22

    mul-double v3, v9, v26

    .line 188
    const-wide v9, 0x3ffb0a3d70a3d70aL    # 1.69

    sub-double/2addr v9, v5

    add-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 189
    goto :goto_2

    .line 181
    :pswitch_1a
    const-wide v9, 0x3febd70a3d70a3d7L    # 0.87

    invoke-static {v9, v10, v14}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 182
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v26, v5, v22

    mul-double v3, v9, v26

    .line 183
    const-wide v9, 0x3febd70a3d70a3d7L    # 0.87

    sub-double/2addr v9, v5

    add-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 184
    goto :goto_2

    .line 176
    :pswitch_1b
    const-wide v9, 0x3fdccccccccccccdL    # 0.45

    invoke-static {v9, v10, v14}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 177
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v26, v5, v22

    mul-double v3, v9, v26

    .line 178
    const-wide v9, 0x3fdccccccccccccdL    # 0.45

    sub-double/2addr v9, v5

    add-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 179
    goto :goto_2

    .line 171
    :pswitch_1c
    const-wide v9, 0x3fa999999999999aL    # 0.05

    const/16 v7, 0x28

    invoke-static {v9, v10, v7}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 172
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v26, v5, v22

    mul-double v3, v9, v26

    .line 173
    const-wide v9, 0x3fa999999999999aL    # 0.05

    sub-double/2addr v9, v5

    add-double/2addr v9, v3

    const/4 v7, 0x3

    invoke-static {v9, v10, v7}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 174
    nop

    .line 234
    :cond_2
    :goto_2
    const-string v7, "HBP"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 235
    packed-switch p1, :pswitch_data_3

    .line 289
    move-wide/from16 v1, p2

    goto/16 :goto_3

    .line 284
    :pswitch_1d
    const-wide v9, 0x4058eccccccccccdL    # 99.7

    invoke-static {v9, v10, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 285
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v26, v5, v16

    mul-double v3, v9, v26

    .line 286
    const-wide v9, 0x4058eccccccccccdL    # 99.7

    sub-double/2addr v9, v5

    add-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 287
    goto/16 :goto_3

    .line 278
    :pswitch_1e
    const-wide v9, 0x4024428f5c28f5c3L    # 10.13

    invoke-static {v9, v10, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 279
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v16

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v26, v5, v22

    mul-double v3, v16, v26

    .line 280
    sub-double/2addr v9, v5

    add-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 281
    goto/16 :goto_3

    .line 272
    :pswitch_1f
    const-wide v9, 0x401799999999999aL    # 5.9

    const/16 v7, 0x8

    invoke-static {v9, v10, v7}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 273
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v26, v5, v16

    mul-double v3, v9, v26

    .line 274
    const-wide v9, 0x401799999999999aL    # 5.9

    sub-double/2addr v9, v5

    add-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 275
    goto/16 :goto_3

    .line 267
    :pswitch_20
    const-wide v9, 0x407195eb851eb852L    # 281.37

    invoke-static {v9, v10, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 268
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    mul-double v3, v9, v5

    .line 269
    const-wide v9, 0x407195eb851eb852L    # 281.37

    add-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 270
    goto/16 :goto_3

    .line 262
    :pswitch_21
    const-wide/high16 v9, 0x4069000000000000L    # 200.0

    invoke-static {v9, v10, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 263
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    mul-double v3, v9, v5

    .line 264
    const-wide/high16 v9, 0x4069000000000000L    # 200.0

    sub-double/2addr v9, v5

    add-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 265
    goto/16 :goto_3

    .line 257
    :pswitch_22
    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    invoke-static {v9, v10, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 258
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v16

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v26, v5, v22

    mul-double v3, v16, v26

    .line 259
    sub-double/2addr v9, v5

    add-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 260
    goto :goto_3

    .line 252
    :pswitch_23
    const-wide/high16 v9, 0x4049000000000000L    # 50.0

    invoke-static {v9, v10, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 253
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v26, v5, v16

    mul-double v3, v9, v26

    .line 254
    const-wide/high16 v9, 0x4049000000000000L    # 50.0

    sub-double/2addr v9, v5

    add-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 255
    goto :goto_3

    .line 247
    :pswitch_24
    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    invoke-static {v9, v10, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 248
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v16

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v26, v5, v22

    mul-double v3, v16, v26

    .line 249
    sub-double/2addr v9, v5

    add-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 250
    goto :goto_3

    .line 242
    :pswitch_25
    const-wide/high16 v9, 0x4014000000000000L    # 5.0

    invoke-static {v9, v10, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 243
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v16

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v26, v5, v22

    mul-double v3, v16, v26

    .line 244
    sub-double v16, v9, v5

    add-double v9, v16, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 245
    goto :goto_3

    .line 237
    :pswitch_26
    const-wide v9, 0x3fa999999999999aL    # 0.05

    const/16 v7, 0x28

    invoke-static {v9, v10, v7}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 238
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v26, v5, v16

    mul-double v3, v9, v26

    .line 239
    const-wide v9, 0x3fa999999999999aL    # 0.05

    sub-double/2addr v9, v5

    add-double/2addr v9, v3

    const/4 v7, 0x3

    invoke-static {v9, v10, v7}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 240
    nop

    .line 295
    :cond_3
    :goto_3
    const-string v7, "hs-cTnI"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 296
    packed-switch p1, :pswitch_data_4

    .line 356
    move-wide/from16 v1, p2

    goto/16 :goto_4

    .line 351
    :pswitch_27
    const-wide v9, 0x402320d1b71758e2L    # 9.5641

    invoke-static {v9, v10, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 352
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v26, v5, v16

    mul-double v3, v9, v26

    .line 353
    const-wide v9, 0x402320d1b71758e2L    # 9.5641

    sub-double/2addr v9, v5

    add-double/2addr v9, v3

    const/4 v7, 0x5

    invoke-static {v9, v10, v7}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 354
    goto/16 :goto_4

    .line 345
    :pswitch_28
    const-wide v9, 0x3fd401a36e2eb1c4L    # 0.3126

    invoke-static {v9, v10, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 346
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v26, v5, v16

    mul-double v3, v9, v26

    .line 347
    const-wide v9, 0x3fd401a36e2eb1c4L    # 0.3126

    sub-double/2addr v9, v5

    add-double/2addr v9, v3

    const/4 v7, 0x5

    invoke-static {v9, v10, v7}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 348
    goto/16 :goto_4

    .line 339
    :pswitch_29
    const-wide v9, 0x3fa5c28f5c28f5c3L    # 0.0425

    invoke-static {v9, v10, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 340
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v26, v5, v16

    mul-double v3, v9, v26

    .line 341
    const-wide v9, 0x3fa5c28f5c28f5c3L    # 0.0425

    sub-double/2addr v9, v5

    add-double/2addr v9, v3

    const/4 v7, 0x5

    invoke-static {v9, v10, v7}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 342
    goto/16 :goto_4

    .line 333
    :pswitch_2a
    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    invoke-static {v9, v10, v14}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 334
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v16

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    mul-double v26, v5, v18

    mul-double v3, v16, v26

    .line 335
    sub-double v16, v9, v5

    add-double v9, v16, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 336
    goto/16 :goto_4

    .line 328
    :pswitch_2b
    const-wide v9, 0x40453e52bd3c3611L    # 42.4869

    invoke-static {v9, v10, v14}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 329
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    mul-double v3, v9, v5

    .line 330
    const-wide v9, 0x40453e52bd3c3611L    # 42.4869

    sub-double/2addr v9, v5

    add-double/2addr v9, v3

    const/4 v7, 0x5

    invoke-static {v9, v10, v7}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 331
    goto/16 :goto_4

    .line 323
    :pswitch_2c
    const-wide v9, 0x401e8f5c28f5c28fL    # 7.64

    invoke-static {v9, v10, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 324
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    mul-double v3, v9, v5

    .line 325
    const-wide v9, 0x401e8f5c28f5c28fL    # 7.64

    add-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 326
    goto/16 :goto_4

    .line 318
    :pswitch_2d
    const-wide v9, 0x3ff70a3d70a3d70aL    # 1.44

    invoke-static {v9, v10, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 319
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v26, v5, v16

    mul-double v3, v9, v26

    .line 320
    const-wide v9, 0x3ff70a3d70a3d70aL    # 1.44

    sub-double/2addr v9, v5

    add-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 321
    goto/16 :goto_4

    .line 313
    :pswitch_2e
    const-wide v9, 0x3fd3d70a3d70a3d7L    # 0.31

    invoke-static {v9, v10, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 314
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v26, v5, v16

    mul-double v3, v9, v26

    .line 315
    const-wide v9, 0x3fd3d70a3d70a3d7L    # 0.31

    sub-double/2addr v9, v5

    add-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 316
    goto :goto_4

    .line 308
    :pswitch_2f
    const-wide v9, 0x3fa47ae147ae147bL    # 0.04

    invoke-static {v9, v10, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 309
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v26, v5, v16

    mul-double v3, v9, v26

    .line 310
    const-wide v9, 0x3fa47ae147ae147bL    # 0.04

    sub-double/2addr v9, v5

    add-double/2addr v9, v3

    const/4 v7, 0x3

    invoke-static {v9, v10, v7}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 311
    goto :goto_4

    .line 303
    :pswitch_30
    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    invoke-static {v9, v10, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 304
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v16

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    mul-double v26, v5, v18

    mul-double v3, v16, v26

    .line 305
    sub-double v16, v9, v5

    add-double v9, v16, v3

    const/4 v7, 0x3

    invoke-static {v9, v10, v7}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 306
    goto :goto_4

    .line 298
    :pswitch_31
    const-wide v9, 0x3f50624dd2f1a9fcL    # 0.001

    const/16 v7, 0x3c

    invoke-static {v9, v10, v7}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 299
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v26, v5, v16

    mul-double v3, v9, v26

    .line 300
    const-wide v9, 0x3f50624dd2f1a9fcL    # 0.001

    sub-double/2addr v9, v5

    add-double/2addr v9, v3

    const/4 v7, 0x4

    invoke-static {v9, v10, v7}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 301
    nop

    .line 362
    :cond_4
    :goto_4
    const-string v7, "Myo"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 363
    packed-switch p1, :pswitch_data_5

    .line 418
    move-wide/from16 v1, p2

    goto/16 :goto_5

    .line 413
    :pswitch_32
    const-wide v9, 0x4069c0a3d70a3d71L    # 206.02

    invoke-static {v9, v10, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 414
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v24, v5, v16

    mul-double v3, v9, v24

    .line 415
    const-wide v9, 0x4069c0a3d70a3d71L    # 206.02

    sub-double/2addr v9, v5

    add-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 416
    goto/16 :goto_5

    .line 407
    :pswitch_33
    const-wide v9, 0x40541ccccccccccdL    # 80.45

    invoke-static {v9, v10, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 408
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v24, v5, v16

    mul-double v3, v9, v24

    .line 409
    const-wide v9, 0x40541ccccccccccdL    # 80.45

    sub-double/2addr v9, v5

    add-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 410
    goto/16 :goto_5

    .line 401
    :pswitch_34
    const-wide/high16 v9, 0x4014000000000000L    # 5.0

    invoke-static {v9, v10, v14}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 402
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v16

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v24, v5, v22

    mul-double v3, v16, v24

    .line 403
    sub-double v16, v9, v5

    add-double v9, v16, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 404
    goto/16 :goto_5

    .line 395
    :pswitch_35
    const-wide v9, 0x4080f747ae147ae1L    # 542.91

    invoke-static {v9, v10, v14}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 396
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    mul-double v3, v9, v5

    .line 397
    const-wide v9, 0x4080f747ae147ae1L    # 542.91

    add-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 398
    goto/16 :goto_5

    .line 390
    :pswitch_36
    const-wide/high16 v9, 0x4069000000000000L    # 200.0

    invoke-static {v9, v10, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 391
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    mul-double v3, v9, v5

    .line 392
    const-wide/high16 v9, 0x4069000000000000L    # 200.0

    sub-double/2addr v9, v5

    add-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 393
    goto/16 :goto_5

    .line 385
    :pswitch_37
    const-wide/high16 v9, 0x4054000000000000L    # 80.0

    invoke-static {v9, v10, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 386
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v24, v5, v16

    mul-double v3, v9, v24

    .line 387
    const-wide/high16 v9, 0x4054000000000000L    # 80.0

    sub-double/2addr v9, v5

    add-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 388
    goto :goto_5

    .line 380
    :pswitch_38
    const-wide/high16 v9, 0x403e000000000000L    # 30.0

    invoke-static {v9, v10, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 381
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v16

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v24, v5, v22

    mul-double v3, v16, v24

    .line 382
    sub-double/2addr v9, v5

    add-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 383
    goto :goto_5

    .line 375
    :pswitch_39
    const-wide/high16 v9, 0x4028000000000000L    # 12.0

    invoke-static {v9, v10, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 376
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v24, v5, v16

    mul-double v3, v9, v24

    .line 377
    const-wide/high16 v9, 0x4028000000000000L    # 12.0

    sub-double/2addr v9, v5

    add-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 378
    goto :goto_5

    .line 370
    :pswitch_3a
    const-wide/high16 v9, 0x4012000000000000L    # 4.5

    invoke-static {v9, v10, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 371
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v24, v5, v16

    mul-double v3, v9, v24

    .line 372
    const-wide/high16 v9, 0x4012000000000000L    # 4.5

    sub-double/2addr v9, v5

    add-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 373
    goto :goto_5

    .line 365
    :pswitch_3b
    const/16 v7, 0x28

    invoke-static {v11, v12, v7}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 366
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v24, v5, v16

    mul-double v3, v9, v24

    .line 367
    sub-double v9, v11, v5

    add-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 368
    nop

    .line 424
    :cond_5
    :goto_5
    const-string v7, "CK-MB"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 425
    packed-switch p1, :pswitch_data_6

    .line 480
    move-wide/from16 v1, p2

    goto/16 :goto_6

    .line 475
    :pswitch_3c
    const-wide v11, 0x403419999999999aL    # 20.1

    invoke-static {v11, v12, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 476
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v20, v5, v16

    mul-double v3, v11, v20

    .line 477
    const-wide v11, 0x403419999999999aL    # 20.1

    sub-double/2addr v11, v5

    add-double/2addr v11, v3

    invoke-static {v11, v12, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 478
    goto/16 :goto_6

    .line 469
    :pswitch_3d
    const-wide v11, 0x40148f5c28f5c28fL    # 5.14

    invoke-static {v11, v12, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 470
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v20, v5, v16

    mul-double v3, v11, v20

    .line 471
    const-wide v11, 0x40148f5c28f5c28fL    # 5.14

    sub-double/2addr v11, v5

    add-double/2addr v11, v3

    invoke-static {v11, v12, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 472
    goto/16 :goto_6

    .line 463
    :pswitch_3e
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    invoke-static {v11, v12, v14}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 464
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v16

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    mul-double v24, v5, v20

    mul-double v3, v16, v24

    .line 465
    sub-double/2addr v11, v5

    add-double/2addr v11, v3

    invoke-static {v11, v12, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 466
    goto/16 :goto_6

    .line 457
    :pswitch_3f
    const-wide v11, 0x405bc66666666666L    # 111.1

    invoke-static {v11, v12, v14}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 458
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    mul-double v3, v11, v5

    .line 459
    const-wide v11, 0x405bc66666666666L    # 111.1

    add-double/2addr v11, v3

    invoke-static {v11, v12, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 460
    goto/16 :goto_6

    .line 452
    :pswitch_40
    const-wide/high16 v11, 0x4044000000000000L    # 40.0

    invoke-static {v11, v12, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 453
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    mul-double v3, v11, v5

    .line 454
    const-wide/high16 v11, 0x4044000000000000L    # 40.0

    sub-double/2addr v11, v5

    add-double/2addr v11, v3

    invoke-static {v11, v12, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 455
    goto/16 :goto_6

    .line 447
    :pswitch_41
    const-wide/high16 v11, 0x4034000000000000L    # 20.0

    invoke-static {v11, v12, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 448
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v20, v5, v16

    mul-double v3, v11, v20

    .line 449
    const-wide/high16 v11, 0x4034000000000000L    # 20.0

    sub-double/2addr v11, v5

    add-double/2addr v11, v3

    invoke-static {v11, v12, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 450
    goto :goto_6

    .line 442
    :pswitch_42
    const-wide/high16 v11, 0x4014000000000000L    # 5.0

    invoke-static {v11, v12, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 443
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v16

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    mul-double v20, v5, v9

    mul-double v3, v16, v20

    .line 444
    sub-double v16, v11, v5

    add-double v11, v16, v3

    invoke-static {v11, v12, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 445
    goto :goto_6

    .line 437
    :pswitch_43
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v9, v10, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 438
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    mul-double v16, v5, v9

    mul-double v3, v11, v16

    .line 439
    sub-double v11, v9, v5

    add-double/2addr v11, v3

    invoke-static {v11, v12, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 440
    goto :goto_6

    .line 432
    :pswitch_44
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    invoke-static {v11, v12, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 433
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v16

    mul-double v20, v5, v9

    mul-double v3, v16, v20

    .line 434
    sub-double v9, v11, v5

    add-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 435
    goto :goto_6

    .line 427
    :pswitch_45
    const/16 v7, 0x28

    const-wide v9, 0x3fb999999999999aL    # 0.1

    invoke-static {v9, v10, v7}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 428
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v20, v5, v16

    mul-double v3, v11, v20

    .line 429
    sub-double v11, v9, v5

    add-double/2addr v11, v3

    invoke-static {v11, v12, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 430
    nop

    .line 486
    :cond_6
    :goto_6
    const-string v7, "AMH"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 487
    packed-switch p1, :pswitch_data_7

    .line 539
    move-wide/from16 v1, p2

    goto/16 :goto_7

    .line 534
    :pswitch_46
    const-wide v9, 0x40259eb851eb851fL    # 10.81

    invoke-static {v9, v10, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 535
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    mul-double v15, v5, v11

    mul-double v3, v9, v15

    .line 536
    const-wide v9, 0x40259eb851eb851fL    # 10.81

    sub-double/2addr v9, v5

    add-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 537
    goto/16 :goto_7

    .line 529
    :pswitch_47
    const-wide v9, 0x3ff0a3d70a3d70a4L    # 1.04

    invoke-static {v9, v10, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 530
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    mul-double v15, v5, v11

    mul-double v3, v9, v15

    .line 531
    const-wide v9, 0x3ff0a3d70a3d70a4L    # 1.04

    sub-double/2addr v9, v5

    add-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 532
    goto/16 :goto_7

    .line 524
    :pswitch_48
    const-wide v9, 0x3fb999999999999aL    # 0.1

    invoke-static {v9, v10, v14}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 525
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    mul-double v17, v5, v15

    mul-double v3, v11, v17

    .line 526
    sub-double/2addr v9, v5

    add-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 527
    goto/16 :goto_7

    .line 519
    :pswitch_49
    const-wide v9, 0x40338a3d70a3d70aL    # 19.54

    invoke-static {v9, v10, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 520
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    mul-double v3, v9, v5

    .line 521
    const-wide v9, 0x40338a3d70a3d70aL    # 19.54

    sub-double/2addr v9, v5

    add-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 522
    goto/16 :goto_7

    .line 514
    :pswitch_4a
    const-wide v9, 0x401b333333333333L    # 6.8

    invoke-static {v9, v10, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 515
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    mul-double v3, v9, v5

    .line 516
    const-wide v9, 0x401b333333333333L    # 6.8

    add-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 517
    goto/16 :goto_7

    .line 509
    :pswitch_4b
    const-wide v9, 0x4002666666666666L    # 2.3

    invoke-static {v9, v10, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 510
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    mul-double v15, v5, v11

    mul-double v3, v9, v15

    .line 511
    const-wide v9, 0x4002666666666666L    # 2.3

    sub-double/2addr v9, v5

    add-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 512
    goto :goto_7

    .line 504
    :pswitch_4c
    const-wide v9, 0x3fe999999999999aL    # 0.8

    invoke-static {v9, v10, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 505
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    mul-double v15, v5, v11

    mul-double v3, v9, v15

    .line 506
    const-wide v9, 0x3fe999999999999aL    # 0.8

    sub-double/2addr v9, v5

    add-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 507
    goto :goto_7

    .line 499
    :pswitch_4d
    const-wide v9, 0x3fd3333333333333L    # 0.3

    invoke-static {v9, v10, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 500
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    mul-double v15, v5, v11

    mul-double v3, v9, v15

    .line 501
    const-wide v9, 0x3fd3333333333333L    # 0.3

    sub-double/2addr v9, v5

    add-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 502
    goto :goto_7

    .line 494
    :pswitch_4e
    const-wide v9, 0x3fb999999999999aL    # 0.1

    invoke-static {v9, v10, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 495
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    mul-double v17, v5, v15

    mul-double v3, v11, v17

    .line 496
    sub-double/2addr v9, v5

    add-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 497
    goto :goto_7

    .line 489
    :pswitch_4f
    const/16 v7, 0x32

    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    invoke-static {v9, v10, v7}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 490
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v18, v5, v16

    mul-double v3, v11, v18

    .line 491
    sub-double/2addr v9, v5

    add-double/2addr v9, v3

    const/4 v7, 0x3

    invoke-static {v9, v10, v7}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 492
    nop

    .line 545
    :cond_7
    :goto_7
    const-string v7, "25-OH-VD"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 546
    packed-switch p1, :pswitch_data_8

    .line 598
    move-wide/from16 v1, p2

    goto/16 :goto_8

    .line 593
    :pswitch_50
    const-wide v9, 0x4043ef5c28f5c28fL    # 39.87

    invoke-static {v9, v10, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 594
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    mul-double v3, v9, v5

    .line 595
    const-wide v9, 0x4043ef5c28f5c28fL    # 39.87

    sub-double/2addr v9, v5

    add-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 596
    goto/16 :goto_8

    .line 588
    :pswitch_51
    const-wide v9, 0x4031d9999999999aL    # 17.85

    invoke-static {v9, v10, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 589
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    mul-double/2addr v11, v5

    mul-double v3, v9, v11

    .line 590
    const-wide v9, 0x4031d9999999999aL    # 17.85

    sub-double/2addr v9, v5

    add-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 591
    goto/16 :goto_8

    .line 583
    :pswitch_52
    const-wide/high16 v9, 0x4014000000000000L    # 5.0

    invoke-static {v9, v10, v14}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 584
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    mul-double/2addr v13, v5

    mul-double v3, v11, v13

    .line 585
    sub-double v11, v9, v5

    add-double/2addr v11, v3

    invoke-static {v11, v12, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 586
    goto/16 :goto_8

    .line 578
    :pswitch_53
    const-wide v9, 0x405adc28f5c28f5cL    # 107.44

    invoke-static {v9, v10, v14}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 579
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    mul-double v3, v9, v5

    .line 580
    const-wide v9, 0x405adc28f5c28f5cL    # 107.44

    add-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 581
    goto/16 :goto_8

    .line 573
    :pswitch_54
    const-wide/high16 v9, 0x404a000000000000L    # 52.0

    invoke-static {v9, v10, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 574
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    mul-double v3, v9, v5

    .line 575
    const-wide/high16 v9, 0x404a000000000000L    # 52.0

    sub-double/2addr v9, v5

    add-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 576
    goto/16 :goto_8

    .line 568
    :pswitch_55
    const-wide/high16 v9, 0x403c000000000000L    # 28.0

    invoke-static {v9, v10, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 569
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    mul-double/2addr v11, v5

    mul-double v3, v9, v11

    .line 570
    const-wide/high16 v9, 0x403c000000000000L    # 28.0

    sub-double/2addr v9, v5

    add-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 571
    goto :goto_8

    .line 563
    :pswitch_56
    const-wide/high16 v9, 0x402e000000000000L    # 15.0

    invoke-static {v9, v10, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 564
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    mul-double/2addr v11, v5

    mul-double v3, v9, v11

    .line 565
    const-wide/high16 v9, 0x402e000000000000L    # 15.0

    sub-double/2addr v9, v5

    add-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 566
    goto :goto_8

    .line 558
    :pswitch_57
    const-wide/high16 v9, 0x4020000000000000L    # 8.0

    invoke-static {v9, v10, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 559
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    mul-double/2addr v11, v5

    mul-double v3, v9, v11

    .line 560
    const-wide/high16 v9, 0x4020000000000000L    # 8.0

    sub-double/2addr v9, v5

    add-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 561
    goto :goto_8

    .line 553
    :pswitch_58
    const-wide/high16 v9, 0x4010000000000000L    # 4.0

    invoke-static {v9, v10, v13}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 554
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    mul-double/2addr v11, v5

    mul-double v3, v9, v11

    .line 555
    const-wide/high16 v9, 0x4010000000000000L    # 4.0

    sub-double/2addr v9, v5

    add-double/2addr v9, v3

    invoke-static {v9, v10, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 556
    goto :goto_8

    .line 548
    :pswitch_59
    const/16 v7, 0x28

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    invoke-static {v9, v10, v7}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    .line 549
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    mul-double/2addr v13, v5

    mul-double v3, v11, v13

    .line 550
    sub-double v11, v9, v5

    add-double/2addr v11, v3

    invoke-static {v11, v12, v8}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    .line 551
    nop

    .line 602
    :cond_8
    :goto_8
    return-wide v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
    .end packed-switch
.end method

.method private static getRefValue(DI)D
    .locals 4
    .param p0, "source"    # D
    .param p2, "pValue"    # I

    .line 47
    int-to-double v0, p2

    mul-double/2addr v0, p0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static isNameEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "itemName"    # Ljava/lang/String;

    .line 607
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    const/4 v0, 0x1

    return v0

    .line 610
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 15
    .param p0, "args"    # [Ljava/lang/String;

    .line 27
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u503c\u662f==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    invoke-static {v3, v4, v2}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 29
    invoke-static {v3, v4, v2}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v0

    .line 30
    .local v0, "ref":D
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double v9, v0, v7

    mul-double/2addr v5, v9

    .line 31
    .local v5, "num":D
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sub-double/2addr v3, v0

    add-double/2addr v3, v5

    const/4 v10, 0x2

    invoke-static {v3, v4, v10}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v3

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 32
    .local v3, "result":Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "result\u662f==="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 34
    const-wide v11, 0x3f847ae147ae147bL    # 0.01

    const/16 v4, 0x28

    invoke-static {v11, v12, v4}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v0

    .line 35
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    mul-double/2addr v7, v0

    mul-double/2addr v13, v7

    .line 36
    .end local v5    # "num":D
    .local v13, "num":D
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sub-double/2addr v11, v0

    add-double/2addr v11, v13

    const/4 v5, 0x3

    invoke-static {v11, v12, v5}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 38
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1 result\u662f==="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 40
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5, v2}, Lcom/wen/fluorescence/util/EMCUtil;->getRefValue(DI)D

    move-result-wide v0

    .line 41
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v6, v0

    .line 42
    .end local v13    # "num":D
    .local v6, "num":D
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-double/2addr v4, v6

    invoke-static {v4, v5, v10}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 43
    .end local v3    # "result":Ljava/lang/String;
    .local v2, "result":Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1\u7279\u5f02 result\u662f==="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 44
    return-void
.end method
