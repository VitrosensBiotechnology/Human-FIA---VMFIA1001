.class public Lcom/huashi/otg/sdk/GetImg;
.super Ljava/lang/Object;
.source "GetImg.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ShowBmp(Lcom/huashi/otg/sdk/HSIDCardInfo;Landroid/content/Context;ILjava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 54
    .param p0, "info"    # Lcom/huashi/otg/sdk/HSIDCardInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "BmpPath"    # Ljava/lang/String;
    .param p4, "bmphead"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    move-object/from16 v1, p4

    invoke-virtual/range {p0 .. p0}, Lcom/huashi/otg/sdk/HSIDCardInfo;->getcertType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "J"

    if-ne v2, v3, :cond_0

    .line 82
    invoke-static/range {p0 .. p4}, Lcom/huashi/otg/sdk/GetImg;->ShowHKBmp(Lcom/huashi/otg/sdk/HSIDCardInfo;Landroid/content/Context;ILjava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .line 84
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/huashi/otg/sdk/HSIDCardInfo;->getcertType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "I"

    if-ne v2, v3, :cond_1

    .line 85
    invoke-static/range {p0 .. p4}, Lcom/huashi/otg/sdk/GetImg;->ShowForeignerBmp(Lcom/huashi/otg/sdk/HSIDCardInfo;Landroid/content/Context;ILjava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .line 88
    :cond_1
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 89
    .local v2, "mPaint":Landroid/graphics/Paint;
    invoke-virtual/range {p0 .. p0}, Lcom/huashi/otg/sdk/HSIDCardInfo;->getPeopleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    const/4 v5, 0x0

    if-ne v3, v4, :cond_2

    .line 94
    return-object v5

    .line 96
    :cond_2
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 99
    .local v3, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v6, "f.bmp"

    invoke-virtual {v4, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 98
    nop

    .line 100
    .local v4, "bmpF":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 101
    .local v6, "FcvWidth":I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 102
    .local v7, "FcvHeight":I
    nop

    .line 103
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 102
    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 104
    .local v8, "newbmpF":Landroid/graphics/Bitmap;
    mul-int v9, v7, v7

    mul-int v10, v6, v6

    add-int/2addr v9, v10

    int-to-float v9, v9

    .line 105
    nop

    .line 104
    const v10, 0x4814c540    # 152341.0f

    div-float/2addr v9, v10

    .line 106
    .local v9, "FontMultf":F
    float-to-double v11, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v9, v11

    .line 107
    int-to-float v11, v6

    const v12, 0x43a48000    # 329.0f

    div-float/2addr v11, v12

    .line 108
    .local v11, "xMultF":F
    int-to-float v13, v7

    const/high16 v14, 0x43520000    # 210.0f

    div-float/2addr v13, v14

    .line 109
    .local v13, "yMultF":F
    new-instance v14, Landroid/graphics/Canvas;

    invoke-direct {v14, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 110
    .local v14, "Fcv":Landroid/graphics/Canvas;
    const/4 v15, 0x0

    invoke-virtual {v14, v4, v15, v15, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 111
    const/4 v15, 0x0

    const/16 v12, 0x47

    const/16 v10, 0x5f

    const/16 v5, 0x9b

    invoke-static {v15, v12, v10, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    .line 112
    .local v5, "bsC":I
    new-instance v10, Landroid/graphics/Paint;

    const/4 v12, 0x1

    invoke-direct {v10, v12}, Landroid/graphics/Paint;-><init>(I)V

    .line 113
    .local v10, "Fp":Landroid/graphics/Paint;
    sget-object v15, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v10, v15}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 114
    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    invoke-virtual {v10, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 116
    invoke-virtual {v10, v12}, Landroid/graphics/Paint;->setDither(Z)V

    .line 117
    const/16 v15, 0xff

    invoke-virtual {v10, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 118
    sget-object v15, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v15}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 119
    const/high16 v15, 0x41500000    # 13.0f

    mul-float v12, v15, v9

    invoke-virtual {v10, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 121
    const-string v12, "\u59d3  \u540d"

    const/high16 v19, 0x41b80000    # 23.0f

    mul-float v15, v19, v11

    const/high16 v20, 0x421c0000    # 39.0f

    move/from16 v21, v5

    mul-float v5, v20, v13

    .line 121
    .end local v5    # "bsC":I
    .local v21, "bsC":I
    invoke-virtual {v14, v12, v15, v5, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 122
    const-string v5, "\u6027  \u522b"

    mul-float v12, v19, v11

    const/high16 v15, 0x42840000    # 66.0f

    move/from16 v22, v6

    mul-float v6, v15, v13

    .line 122
    .end local v6    # "FcvWidth":I
    .local v22, "FcvWidth":I
    invoke-virtual {v14, v5, v12, v6, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 123
    const-string v5, "\u6c11  \u65cf"

    const/high16 v6, 0x42c40000    # 98.0f

    mul-float/2addr v6, v11

    mul-float v12, v15, v13

    invoke-virtual {v14, v5, v6, v12, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 124
    const-string v5, "\u51fa  \u751f"

    mul-float v6, v19, v11

    const/high16 v12, 0x42b80000    # 92.0f

    mul-float v15, v12, v13

    invoke-virtual {v14, v5, v6, v15, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 125
    const-string v5, "\u5e74"

    const/high16 v6, 0x42c40000    # 98.0f

    mul-float/2addr v6, v11

    mul-float v15, v12, v13

    invoke-virtual {v14, v5, v6, v15, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 126
    const-string v5, "\u6708"

    const/high16 v6, 0x43030000    # 131.0f

    mul-float/2addr v6, v11

    mul-float v15, v12, v13

    invoke-virtual {v14, v5, v6, v15, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 127
    const-string v5, "\u65e5"

    const/high16 v6, 0x43250000    # 165.0f

    mul-float/2addr v6, v11

    mul-float v15, v12, v13

    invoke-virtual {v14, v5, v6, v15, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 128
    const-string v5, "\u4f4f  \u5740"

    mul-float v6, v19, v11

    const/high16 v15, 0x42e60000    # 115.0f

    mul-float v12, v15, v13

    invoke-virtual {v14, v5, v6, v12, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 129
    const-string v5, "\u516c\u6c11\u8eab\u4efd\u53f7\u7801"

    mul-float v6, v19, v11

    const/high16 v12, 0x43380000    # 184.0f

    mul-float/2addr v12, v13

    invoke-virtual {v14, v5, v6, v12, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 131
    const/high16 v5, -0x1000000

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    const/high16 v5, 0x41600000    # 14.0f

    mul-float/2addr v5, v9

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/huashi/otg/sdk/HSIDCardInfo;->getPeopleName()Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x42840000    # 66.0f

    mul-float v12, v6, v11

    const/high16 v19, 0x42180000    # 38.0f

    mul-float v15, v19, v13

    invoke-virtual {v14, v5, v12, v15, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 134
    const/high16 v5, 0x41500000    # 13.0f

    mul-float v15, v5, v9

    invoke-virtual {v10, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/huashi/otg/sdk/HSIDCardInfo;->getSex()Ljava/lang/String;

    move-result-object v5

    mul-float v15, v6, v11

    const/high16 v6, 0x42820000    # 65.0f

    mul-float/2addr v6, v13

    invoke-virtual {v14, v5, v15, v6, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/huashi/otg/sdk/HSIDCardInfo;->getPeople()Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x430a0000    # 138.0f

    mul-float/2addr v6, v11

    const/high16 v12, 0x42820000    # 65.0f

    mul-float/2addr v12, v13

    invoke-virtual {v14, v5, v6, v12, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/huashi/otg/sdk/HSIDCardInfo;->getBirthDay()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 138
    .local v5, "str":Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v12, 0x4

    invoke-virtual {v5, v6, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/high16 v15, 0x42840000    # 66.0f

    mul-float v12, v15, v11

    move-object/from16 v23, v3

    const/high16 v15, 0x42b80000    # 92.0f

    mul-float v3, v15, v13

    .line 139
    .end local v3    # "df":Ljava/text/SimpleDateFormat;
    .local v23, "df":Ljava/text/SimpleDateFormat;
    nop

    .line 138
    invoke-virtual {v14, v6, v12, v3, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 140
    const/4 v3, 0x5

    const/4 v6, 0x4

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    const-string v6, "0"

    invoke-virtual {v12, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v12, 0x6

    if-eqz v6, :cond_3

    .line 141
    invoke-virtual {v5, v3, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/high16 v15, 0x42ee0000    # 119.0f

    mul-float/2addr v15, v11

    .line 142
    const/high16 v19, 0x42b80000    # 92.0f

    mul-float v3, v19, v13

    .line 141
    invoke-virtual {v14, v6, v15, v3, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 143
    goto :goto_0

    .line 144
    :cond_3
    const/high16 v19, 0x42b80000    # 92.0f

    const/4 v3, 0x4

    invoke-virtual {v5, v3, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/high16 v6, 0x42e80000    # 116.0f

    mul-float/2addr v6, v11

    .line 145
    mul-float v15, v19, v13

    .line 144
    invoke-virtual {v14, v3, v6, v15, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 147
    :goto_0
    const/4 v3, 0x7

    invoke-virtual {v5, v12, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 148
    const/4 v3, 0x7

    const/16 v6, 0x8

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/high16 v6, 0x43190000    # 153.0f

    mul-float/2addr v6, v11

    .line 149
    const/high16 v15, 0x42b80000    # 92.0f

    mul-float v12, v15, v13

    .line 148
    invoke-virtual {v14, v3, v6, v12, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 150
    goto :goto_1

    .line 151
    :cond_4
    const/high16 v15, 0x42b80000    # 92.0f

    const/16 v3, 0x8

    invoke-virtual {v5, v12, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/high16 v6, 0x43160000    # 150.0f

    mul-float/2addr v6, v11

    .line 152
    mul-float v12, v15, v13

    .line 151
    invoke-virtual {v14, v3, v6, v12, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 155
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/huashi/otg/sdk/HSIDCardInfo;->getAddr()Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "straddr":Ljava/lang/String;
    const-string v6, ""

    .line 158
    .local v6, "straddr1":Ljava/lang/String;
    const-string v12, ""

    .line 159
    .local v12, "straddr2":Ljava/lang/String;
    const-string v15, ""

    .line 160
    .local v15, "straddr3":Ljava/lang/String;
    const-wide/16 v24, 0x0

    .line 162
    .local v24, "AddLenth":D
    const/16 v19, 0x0

    .line 162
    .local v19, "i":I
    move-object/from16 v26, v5

    move-object v5, v15

    move-object v15, v12

    move-object v12, v6

    move/from16 v6, v19

    .line 162
    .end local v19    # "i":I
    .local v5, "straddr3":Ljava/lang/String;
    .local v6, "i":I
    .local v12, "straddr1":Ljava/lang/String;
    .local v15, "straddr2":Ljava/lang/String;
    .local v26, "str":Ljava/lang/String;
    :goto_2
    move/from16 v27, v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    .line 162
    .end local v7    # "FcvHeight":I
    .local v27, "FcvHeight":I
    if-lt v6, v7, :cond_f

    .line 188
    .end local v6    # "i":I
    const/high16 v7, 0x42840000    # 66.0f

    mul-float v6, v7, v11

    const/high16 v19, 0x42e60000    # 115.0f

    mul-float v7, v19, v13

    .line 189
    nop

    .line 188
    invoke-virtual {v14, v12, v6, v7, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 190
    const/high16 v7, 0x42840000    # 66.0f

    mul-float v6, v7, v11

    const/high16 v19, 0x43090000    # 137.0f

    mul-float v7, v19, v13

    .line 191
    nop

    .line 190
    invoke-virtual {v14, v15, v6, v7, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 192
    const/high16 v7, 0x42840000    # 66.0f

    mul-float v6, v7, v11

    const/high16 v7, 0x431d0000    # 157.0f

    mul-float/2addr v7, v13

    invoke-virtual {v14, v5, v6, v7, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 194
    const/high16 v6, 0x41600000    # 14.0f

    mul-float/2addr v6, v9

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 195
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 196
    const/high16 v6, 0x40400000    # 3.0f

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 197
    const v6, 0x3f99999a    # 1.2f

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/huashi/otg/sdk/HSIDCardInfo;->getIDCard()Ljava/lang/String;

    move-result-object v6

    const/high16 v19, 0x42e60000    # 115.0f

    mul-float v7, v19, v11

    const/high16 v19, 0x43370000    # 183.0f

    move/from16 v28, v9

    mul-float v9, v19, v13

    .line 198
    .end local v9    # "FontMultf":F
    .local v28, "FontMultf":F
    invoke-virtual {v14, v6, v7, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 200
    const/16 v9, 0x1f

    invoke-virtual {v14, v9}, Landroid/graphics/Canvas;->save(I)I

    .line 201
    invoke-virtual {v14}, Landroid/graphics/Canvas;->restore()V

    .line 202
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 203
    .local v6, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v6, v11, v13}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 209
    const/4 v7, 0x5

    invoke-virtual {v1, v7, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    .line 210
    .local v7, "colorflage":I
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 211
    .local v9, "phead":Landroid/graphics/Paint;
    const/16 v19, 0x0

    .line 211
    .restart local v19    # "i":I
    move-object/from16 v29, v5

    move/from16 v5, v19

    .line 211
    .end local v19    # "i":I
    .local v5, "i":I
    .local v29, "straddr3":Ljava/lang/String;
    :goto_3
    move-object/from16 v30, v6

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 211
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    .local v30, "matrix":Landroid/graphics/Matrix;
    if-lt v5, v6, :cond_c

    .line 219
    .end local v5    # "i":I
    invoke-virtual {v9}, Landroid/graphics/Paint;->reset()V

    .line 220
    const/16 v5, 0x1f

    invoke-virtual {v14, v5}, Landroid/graphics/Canvas;->save(I)I

    .line 221
    invoke-virtual {v14}, Landroid/graphics/Canvas;->restore()V

    .line 223
    const/4 v5, 0x0

    move-object v6, v5

    .line 225
    .local v6, "Fos":Ljava/io/OutputStream;
    :try_start_0
    new-instance v5, Ljava/io/File;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v31, v6

    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 225
    .end local v6    # "Fos":Ljava/io/OutputStream;
    .local v31, "Fos":Ljava/io/OutputStream;
    move-object/from16 v32, v15

    :try_start_2
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 225
    .end local v15    # "straddr2":Ljava/lang/String;
    .local v32, "straddr2":Ljava/lang/String;
    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "/idcardF.bmp"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    .local v5, "FdestFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 227
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 228
    .end local v31    # "Fos":Ljava/io/OutputStream;
    .restart local v6    # "Fos":Ljava/io/OutputStream;
    :try_start_3
    sget-object v15, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v33, v5

    const/16 v5, 0x64

    invoke-virtual {v8, v15, v5, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 230
    .end local v5    # "FdestFile":Ljava/io/File;
    nop

    .line 234
    if-eqz v6, :cond_6

    .line 236
    :try_start_4
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 237
    :goto_4
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 238
    goto/16 :goto_9

    :catch_0
    move-exception v0

    goto/16 :goto_9

    .line 231
    :catch_1
    move-exception v0

    move-object v5, v0

    goto :goto_5

    .line 230
    :catch_2
    move-exception v0

    goto :goto_8

    .line 233
    .end local v6    # "Fos":Ljava/io/OutputStream;
    .restart local v31    # "Fos":Ljava/io/OutputStream;
    :catchall_0
    move-exception v0

    move-object v5, v0

    move-object/from16 v6, v31

    goto :goto_6

    .line 231
    :catch_3
    move-exception v0

    move-object v5, v0

    move-object/from16 v6, v31

    goto :goto_5

    .line 230
    :catch_4
    move-exception v0

    move-object/from16 v6, v31

    goto :goto_8

    .line 233
    .end local v32    # "straddr2":Ljava/lang/String;
    .restart local v15    # "straddr2":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v32, v15

    move-object v5, v0

    move-object/from16 v6, v31

    .line 233
    .end local v15    # "straddr2":Ljava/lang/String;
    .restart local v32    # "straddr2":Ljava/lang/String;
    goto :goto_6

    .line 231
    .end local v32    # "straddr2":Ljava/lang/String;
    .restart local v15    # "straddr2":Ljava/lang/String;
    :catch_5
    move-exception v0

    move-object/from16 v32, v15

    move-object v5, v0

    move-object/from16 v6, v31

    .line 231
    .end local v15    # "straddr2":Ljava/lang/String;
    .restart local v32    # "straddr2":Ljava/lang/String;
    goto :goto_5

    .line 230
    .end local v32    # "straddr2":Ljava/lang/String;
    .restart local v15    # "straddr2":Ljava/lang/String;
    :catch_6
    move-exception v0

    move-object/from16 v32, v15

    move-object/from16 v6, v31

    .line 230
    .end local v15    # "straddr2":Ljava/lang/String;
    .restart local v32    # "straddr2":Ljava/lang/String;
    goto :goto_8

    .line 233
    .end local v31    # "Fos":Ljava/io/OutputStream;
    .end local v32    # "straddr2":Ljava/lang/String;
    .restart local v6    # "Fos":Ljava/io/OutputStream;
    .restart local v15    # "straddr2":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v31, v6

    move-object/from16 v32, v15

    move-object v5, v0

    .line 233
    .end local v6    # "Fos":Ljava/io/OutputStream;
    .end local v15    # "straddr2":Ljava/lang/String;
    .restart local v31    # "Fos":Ljava/io/OutputStream;
    .restart local v32    # "straddr2":Ljava/lang/String;
    goto :goto_6

    .line 231
    .end local v31    # "Fos":Ljava/io/OutputStream;
    .end local v32    # "straddr2":Ljava/lang/String;
    .restart local v6    # "Fos":Ljava/io/OutputStream;
    .restart local v15    # "straddr2":Ljava/lang/String;
    :catch_7
    move-exception v0

    move-object/from16 v31, v6

    move-object/from16 v32, v15

    move-object v5, v0

    .line 232
    .end local v15    # "straddr2":Ljava/lang/String;
    .local v5, "e":Ljava/io/IOException;
    .restart local v32    # "straddr2":Ljava/lang/String;
    :goto_5
    :try_start_5
    invoke-static {v5}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 234
    .end local v5    # "e":Ljava/io/IOException;
    if-eqz v6, :cond_6

    .line 236
    :try_start_6
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_4

    .line 233
    :catchall_3
    move-exception v0

    move-object v5, v0

    .line 234
    :goto_6
    if-eqz v6, :cond_5

    .line 236
    :try_start_7
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 237
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 238
    goto :goto_7

    :catch_8
    move-exception v0

    .line 241
    :cond_5
    :goto_7
    throw v5

    .line 230
    .end local v32    # "straddr2":Ljava/lang/String;
    .restart local v15    # "straddr2":Ljava/lang/String;
    :catch_9
    move-exception v0

    move-object/from16 v31, v6

    move-object/from16 v32, v15

    .line 234
    .end local v15    # "straddr2":Ljava/lang/String;
    .restart local v32    # "straddr2":Ljava/lang/String;
    :goto_8
    if-eqz v6, :cond_6

    .line 236
    :try_start_8
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_4

    .line 244
    :cond_6
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v15, "b.bmp"

    invoke-virtual {v5, v15}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 243
    nop

    .line 245
    .local v5, "bmpB":Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    move-object/from16 v34, v6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 246
    .end local v6    # "Fos":Ljava/io/OutputStream;
    .local v34, "Fos":Ljava/io/OutputStream;
    move-object/from16 v35, v8

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 245
    .end local v8    # "newbmpF":Landroid/graphics/Bitmap;
    .local v35, "newbmpF":Landroid/graphics/Bitmap;
    invoke-static {v15, v6, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 247
    .local v6, "newbmpB":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 248
    .local v8, "BcvWidth":I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    .line 250
    .local v15, "BcvHeight":I
    mul-int v19, v8, v8

    mul-int v20, v15, v15

    move-object/from16 v36, v4

    add-int v4, v19, v20

    .line 250
    .end local v4    # "bmpF":Landroid/graphics/Bitmap;
    .local v36, "bmpF":Landroid/graphics/Bitmap;
    int-to-float v4, v4

    .line 251
    nop

    .line 250
    const v18, 0x4814c540    # 152341.0f

    div-float v4, v4, v18

    .line 252
    .local v4, "FontMultB":F
    move-object/from16 v38, v12

    move/from16 v37, v13

    float-to-double v12, v4

    .line 252
    .end local v12    # "straddr1":Ljava/lang/String;
    .end local v13    # "yMultF":F
    .local v37, "yMultF":F
    .local v38, "straddr1":Ljava/lang/String;
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v4, v12

    .line 253
    int-to-float v12, v8

    const v13, 0x43a48000    # 329.0f

    div-float/2addr v12, v13

    .line 254
    .local v12, "xMultB":F
    int-to-float v13, v15

    const/high16 v17, 0x43520000    # 210.0f

    div-float v13, v13, v17

    .line 256
    .local v13, "yMultB":F
    move/from16 v39, v8

    new-instance v8, Landroid/graphics/Canvas;

    .line 256
    .end local v8    # "BcvWidth":I
    .local v39, "BcvWidth":I
    invoke-direct {v8, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 257
    .local v8, "Bcv":Landroid/graphics/Canvas;
    move/from16 v40, v15

    const/4 v15, 0x0

    invoke-virtual {v8, v5, v15, v15, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 259
    .end local v15    # "BcvHeight":I
    .local v40, "BcvHeight":I
    invoke-virtual {v10}, Landroid/graphics/Paint;->reset()V

    .line 260
    sget-object v15, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v10, v15}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 261
    const/high16 v15, -0x1000000

    invoke-virtual {v10, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 262
    const/4 v15, 0x1

    invoke-virtual {v10, v15}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 263
    invoke-virtual {v10, v15}, Landroid/graphics/Paint;->setDither(Z)V

    .line 264
    const/16 v15, 0xff

    invoke-virtual {v10, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 265
    sget-object v15, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v15}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 266
    const/high16 v16, 0x41500000    # 13.0f

    mul-float v15, v16, v4

    invoke-virtual {v10, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 267
    sget-object v15, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v10, v15}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 269
    const-string v15, "\u7b7e\u53d1\u673a\u5173"

    const/high16 v16, 0x42880000    # 68.0f

    move-object/from16 v41, v2

    mul-float v2, v16, v12

    .line 269
    .end local v2    # "mPaint":Landroid/graphics/Paint;
    .local v41, "mPaint":Landroid/graphics/Paint;
    const/high16 v16, 0x43290000    # 169.0f

    move/from16 v42, v4

    mul-float v4, v16, v13

    .line 269
    .end local v4    # "FontMultB":F
    .local v42, "FontMultB":F
    invoke-virtual {v8, v15, v2, v4, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 270
    const-string v2, "\u6709\u6548\u671f\u9650"

    const/high16 v4, 0x42880000    # 68.0f

    mul-float/2addr v4, v12

    const/high16 v15, 0x43410000    # 193.0f

    mul-float/2addr v15, v13

    invoke-virtual {v8, v2, v4, v15, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 272
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/huashi/otg/sdk/HSIDCardInfo;->getDepartment()Ljava/lang/String;

    move-result-object v2

    const/high16 v4, 0x43020000    # 130.0f

    mul-float/2addr v4, v12

    const/high16 v15, 0x43290000    # 169.0f

    mul-float/2addr v15, v13

    invoke-virtual {v8, v2, v4, v15, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/huashi/otg/sdk/HSIDCardInfo;->getStrartDate()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/huashi/otg/sdk/HSIDCardInfo;->getEndDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 291
    .local v2, "tmpstr":Ljava/lang/String;
    const/high16 v4, 0x43020000    # 130.0f

    mul-float/2addr v4, v12

    .line 292
    const/high16 v15, 0x43410000    # 193.0f

    mul-float/2addr v15, v13

    .line 291
    invoke-virtual {v8, v2, v4, v15, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 294
    const/16 v4, 0x1f

    invoke-virtual {v8, v4}, Landroid/graphics/Canvas;->save(I)I

    .line 295
    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    .line 297
    const/4 v4, 0x0

    move-object v15, v4

    .line 299
    .local v15, "Bos":Ljava/io/OutputStream;
    :try_start_9
    new-instance v4, Ljava/io/File;
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_11
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_f
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    move-object/from16 v43, v2

    :try_start_a
    new-instance v2, Ljava/lang/StringBuilder;
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_d
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 299
    .end local v2    # "tmpstr":Ljava/lang/String;
    .local v43, "tmpstr":Ljava/lang/String;
    move-object/from16 v44, v5

    :try_start_b
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 299
    .end local v5    # "bmpB":Landroid/graphics/Bitmap;
    .local v44, "bmpB":Landroid/graphics/Bitmap;
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/idcardB.bmp"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 300
    .local v2, "BdestFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 301
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v15, v4

    .line 302
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v6, v4, v5, v15}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_c
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 304
    .end local v2    # "BdestFile":Ljava/io/File;
    nop

    .line 308
    if-eqz v15, :cond_8

    .line 310
    :try_start_c
    invoke-virtual {v15}, Ljava/io/OutputStream;->flush()V

    .line 311
    :goto_a
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    .line 312
    goto :goto_f

    :catch_a
    move-exception v0

    goto :goto_f

    .line 305
    :catch_b
    move-exception v0

    move-object v2, v0

    goto :goto_b

    .line 304
    :catch_c
    move-exception v0

    goto :goto_e

    .line 307
    .end local v44    # "bmpB":Landroid/graphics/Bitmap;
    .restart local v5    # "bmpB":Landroid/graphics/Bitmap;
    :catchall_4
    move-exception v0

    move-object/from16 v44, v5

    move-object v2, v0

    .line 307
    .end local v5    # "bmpB":Landroid/graphics/Bitmap;
    .restart local v44    # "bmpB":Landroid/graphics/Bitmap;
    goto :goto_c

    .line 305
    .end local v44    # "bmpB":Landroid/graphics/Bitmap;
    .restart local v5    # "bmpB":Landroid/graphics/Bitmap;
    :catch_d
    move-exception v0

    move-object/from16 v44, v5

    move-object v2, v0

    .line 305
    .end local v5    # "bmpB":Landroid/graphics/Bitmap;
    .restart local v44    # "bmpB":Landroid/graphics/Bitmap;
    goto :goto_b

    .line 304
    .end local v44    # "bmpB":Landroid/graphics/Bitmap;
    .restart local v5    # "bmpB":Landroid/graphics/Bitmap;
    :catch_e
    move-exception v0

    move-object/from16 v44, v5

    .line 304
    .end local v5    # "bmpB":Landroid/graphics/Bitmap;
    .restart local v44    # "bmpB":Landroid/graphics/Bitmap;
    goto :goto_e

    .line 307
    .end local v43    # "tmpstr":Ljava/lang/String;
    .end local v44    # "bmpB":Landroid/graphics/Bitmap;
    .local v2, "tmpstr":Ljava/lang/String;
    .restart local v5    # "bmpB":Landroid/graphics/Bitmap;
    :catchall_5
    move-exception v0

    move-object/from16 v43, v2

    move-object/from16 v44, v5

    move-object v2, v0

    .line 307
    .end local v2    # "tmpstr":Ljava/lang/String;
    .end local v5    # "bmpB":Landroid/graphics/Bitmap;
    .restart local v43    # "tmpstr":Ljava/lang/String;
    .restart local v44    # "bmpB":Landroid/graphics/Bitmap;
    goto :goto_c

    .line 305
    .end local v43    # "tmpstr":Ljava/lang/String;
    .end local v44    # "bmpB":Landroid/graphics/Bitmap;
    .restart local v2    # "tmpstr":Ljava/lang/String;
    .restart local v5    # "bmpB":Landroid/graphics/Bitmap;
    :catch_f
    move-exception v0

    move-object/from16 v43, v2

    move-object/from16 v44, v5

    move-object v2, v0

    .line 306
    .end local v5    # "bmpB":Landroid/graphics/Bitmap;
    .local v2, "e":Ljava/io/IOException;
    .restart local v43    # "tmpstr":Ljava/lang/String;
    .restart local v44    # "bmpB":Landroid/graphics/Bitmap;
    :goto_b
    :try_start_d
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 308
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v15, :cond_8

    .line 310
    :try_start_e
    invoke-virtual {v15}, Ljava/io/OutputStream;->flush()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    goto :goto_a

    .line 307
    :catchall_6
    move-exception v0

    move-object v2, v0

    .line 308
    :goto_c
    if-eqz v15, :cond_7

    .line 310
    :try_start_f
    invoke-virtual {v15}, Ljava/io/OutputStream;->flush()V

    .line 311
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_10

    .line 312
    goto :goto_d

    :catch_10
    move-exception v0

    .line 315
    :cond_7
    :goto_d
    throw v2

    .line 304
    .end local v43    # "tmpstr":Ljava/lang/String;
    .end local v44    # "bmpB":Landroid/graphics/Bitmap;
    .local v2, "tmpstr":Ljava/lang/String;
    .restart local v5    # "bmpB":Landroid/graphics/Bitmap;
    :catch_11
    move-exception v0

    move-object/from16 v43, v2

    move-object/from16 v44, v5

    .line 308
    .end local v2    # "tmpstr":Ljava/lang/String;
    .end local v5    # "bmpB":Landroid/graphics/Bitmap;
    .restart local v43    # "tmpstr":Ljava/lang/String;
    .restart local v44    # "bmpB":Landroid/graphics/Bitmap;
    :goto_e
    if-eqz v15, :cond_8

    .line 310
    :try_start_10
    invoke-virtual {v15}, Ljava/io/OutputStream;->flush()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    goto :goto_a

    .line 317
    :cond_8
    :goto_f
    const/4 v2, 0x0

    move-object v4, v2

    .line 319
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_11
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v5, Ljava/lang/StringBuilder;
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_13

    move-object/from16 v45, v4

    :try_start_12
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 319
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v45, "fis":Ljava/io/FileInputStream;
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/idcardF.bmp"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_12

    move-object v4, v2

    .line 320
    .end local v45    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_11

    .line 320
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v45    # "fis":Ljava/io/FileInputStream;
    :catch_12
    move-exception v0

    move-object v2, v0

    goto :goto_10

    .line 320
    .end local v45    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_13
    move-exception v0

    move-object/from16 v45, v4

    move-object v2, v0

    .line 322
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v2, "e1":Ljava/io/FileNotFoundException;
    .restart local v45    # "fis":Ljava/io/FileInputStream;
    :goto_10
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 324
    .end local v2    # "e1":Ljava/io/FileNotFoundException;
    move-object/from16 v4, v45

    .line 324
    .end local v45    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :goto_11
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 325
    .local v2, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 328
    const/16 v17, 0x0

    move-object/from16 v5, v17

    .line 330
    .local v5, "fisB":Ljava/io/FileInputStream;
    move-object/from16 v46, v4

    :try_start_13
    new-instance v4, Ljava/io/FileInputStream;
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_16

    .line 330
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v46, "fis":Ljava/io/FileInputStream;
    move-object/from16 v47, v5

    :try_start_14
    new-instance v5, Ljava/lang/StringBuilder;
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_15

    .line 330
    .end local v5    # "fisB":Ljava/io/FileInputStream;
    .local v47, "fisB":Ljava/io/FileInputStream;
    move-object/from16 v48, v6

    :try_start_15
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 330
    .end local v6    # "newbmpB":Landroid/graphics/Bitmap;
    .local v48, "newbmpB":Landroid/graphics/Bitmap;
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/idcardB.bmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_14

    move-object v5, v4

    .line 331
    .end local v47    # "fisB":Ljava/io/FileInputStream;
    .restart local v5    # "fisB":Ljava/io/FileInputStream;
    goto :goto_13

    .line 331
    .end local v5    # "fisB":Ljava/io/FileInputStream;
    .restart local v47    # "fisB":Ljava/io/FileInputStream;
    :catch_14
    move-exception v0

    move-object v4, v0

    goto :goto_12

    .line 331
    .end local v48    # "newbmpB":Landroid/graphics/Bitmap;
    .restart local v6    # "newbmpB":Landroid/graphics/Bitmap;
    :catch_15
    move-exception v0

    move-object/from16 v48, v6

    move-object v4, v0

    .line 331
    .end local v6    # "newbmpB":Landroid/graphics/Bitmap;
    .restart local v48    # "newbmpB":Landroid/graphics/Bitmap;
    goto :goto_12

    .line 331
    .end local v47    # "fisB":Ljava/io/FileInputStream;
    .end local v48    # "newbmpB":Landroid/graphics/Bitmap;
    .restart local v5    # "fisB":Ljava/io/FileInputStream;
    .restart local v6    # "newbmpB":Landroid/graphics/Bitmap;
    :catch_16
    move-exception v0

    move-object/from16 v47, v5

    move-object/from16 v48, v6

    move-object v4, v0

    .line 333
    .end local v5    # "fisB":Ljava/io/FileInputStream;
    .end local v6    # "newbmpB":Landroid/graphics/Bitmap;
    .local v4, "e":Ljava/io/FileNotFoundException;
    .restart local v47    # "fisB":Ljava/io/FileInputStream;
    .restart local v48    # "newbmpB":Landroid/graphics/Bitmap;
    :goto_12
    invoke-static {v4}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 335
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    move-object/from16 v5, v47

    .line 335
    .end local v47    # "fisB":Ljava/io/FileInputStream;
    .restart local v5    # "fisB":Ljava/io/FileInputStream;
    :goto_13
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 336
    .local v4, "bmpBB":Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 339
    const/4 v6, 0x0

    .line 340
    .local v6, "newbmp":Landroid/graphics/Bitmap;
    invoke-static {v2, v4}, Lcom/huashi/otg/sdk/GetImg;->compositeImages(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 341
    move-object/from16 v49, v2

    move-object/from16 v50, v4

    const/4 v4, 0x1

    move/from16 v2, p2

    if-eq v2, v4, :cond_9

    .line 342
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    .end local v4    # "bmpBB":Landroid/graphics/Bitmap;
    .local v49, "bmp":Landroid/graphics/Bitmap;
    .local v50, "bmpBB":Landroid/graphics/Bitmap;
    return-object v6

    .line 344
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/huashi/otg/sdk/HSIDCardInfo;->getPeopleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 349
    .local v4, "name":Ljava/lang/String;
    :try_start_16
    new-instance v2, Ljava/io/File;
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_1e
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_1c
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    move-object/from16 v51, v5

    :try_start_17
    new-instance v5, Ljava/lang/StringBuilder;
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_17} :catch_1b
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_1a
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    .line 349
    .end local v5    # "fisB":Ljava/io/FileInputStream;
    .local v51, "fisB":Ljava/io/FileInputStream;
    move-object/from16 v52, v8

    :try_start_18
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 349
    .end local v8    # "Bcv":Landroid/graphics/Canvas;
    .local v52, "Bcv":Landroid/graphics/Canvas;
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".bmp"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 350
    .local v2, "BdestFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 351
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v15, v5

    .line 352
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v6, v5, v8, v15}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_18} :catch_19
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    .line 353
    .end local v2    # "BdestFile":Ljava/io/File;
    nop

    .line 357
    if-eqz v15, :cond_b

    .line 359
    :try_start_19
    invoke-virtual {v15}, Ljava/io/OutputStream;->flush()V

    .line 360
    :goto_14
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_17

    .line 361
    goto :goto_19

    :catch_17
    move-exception v0

    goto :goto_19

    .line 354
    :catch_18
    move-exception v0

    move-object v2, v0

    goto :goto_15

    .line 353
    :catch_19
    move-exception v0

    goto :goto_18

    .line 356
    .end local v52    # "Bcv":Landroid/graphics/Canvas;
    .restart local v8    # "Bcv":Landroid/graphics/Canvas;
    :catchall_7
    move-exception v0

    move-object/from16 v52, v8

    move-object v2, v0

    .line 356
    .end local v8    # "Bcv":Landroid/graphics/Canvas;
    .restart local v52    # "Bcv":Landroid/graphics/Canvas;
    goto :goto_16

    .line 354
    .end local v52    # "Bcv":Landroid/graphics/Canvas;
    .restart local v8    # "Bcv":Landroid/graphics/Canvas;
    :catch_1a
    move-exception v0

    move-object/from16 v52, v8

    move-object v2, v0

    .line 354
    .end local v8    # "Bcv":Landroid/graphics/Canvas;
    .restart local v52    # "Bcv":Landroid/graphics/Canvas;
    goto :goto_15

    .line 353
    .end local v52    # "Bcv":Landroid/graphics/Canvas;
    .restart local v8    # "Bcv":Landroid/graphics/Canvas;
    :catch_1b
    move-exception v0

    move-object/from16 v52, v8

    .line 353
    .end local v8    # "Bcv":Landroid/graphics/Canvas;
    .restart local v52    # "Bcv":Landroid/graphics/Canvas;
    goto :goto_18

    .line 356
    .end local v51    # "fisB":Ljava/io/FileInputStream;
    .end local v52    # "Bcv":Landroid/graphics/Canvas;
    .restart local v5    # "fisB":Ljava/io/FileInputStream;
    .restart local v8    # "Bcv":Landroid/graphics/Canvas;
    :catchall_8
    move-exception v0

    move-object/from16 v51, v5

    move-object/from16 v52, v8

    move-object v2, v0

    .line 356
    .end local v5    # "fisB":Ljava/io/FileInputStream;
    .end local v8    # "Bcv":Landroid/graphics/Canvas;
    .restart local v51    # "fisB":Ljava/io/FileInputStream;
    .restart local v52    # "Bcv":Landroid/graphics/Canvas;
    goto :goto_16

    .line 354
    .end local v51    # "fisB":Ljava/io/FileInputStream;
    .end local v52    # "Bcv":Landroid/graphics/Canvas;
    .restart local v5    # "fisB":Ljava/io/FileInputStream;
    .restart local v8    # "Bcv":Landroid/graphics/Canvas;
    :catch_1c
    move-exception v0

    move-object/from16 v51, v5

    move-object/from16 v52, v8

    move-object v2, v0

    .line 355
    .end local v5    # "fisB":Ljava/io/FileInputStream;
    .end local v8    # "Bcv":Landroid/graphics/Canvas;
    .local v2, "e":Ljava/io/IOException;
    .restart local v51    # "fisB":Ljava/io/FileInputStream;
    .restart local v52    # "Bcv":Landroid/graphics/Canvas;
    :goto_15
    :try_start_1a
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    .line 357
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v15, :cond_b

    .line 359
    :try_start_1b
    invoke-virtual {v15}, Ljava/io/OutputStream;->flush()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_17

    goto :goto_14

    .line 356
    :catchall_9
    move-exception v0

    move-object v2, v0

    .line 357
    :goto_16
    if-eqz v15, :cond_a

    .line 359
    :try_start_1c
    invoke-virtual {v15}, Ljava/io/OutputStream;->flush()V

    .line 360
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_1d

    .line 361
    goto :goto_17

    :catch_1d
    move-exception v0

    .line 364
    :cond_a
    :goto_17
    throw v2

    .line 353
    .end local v51    # "fisB":Ljava/io/FileInputStream;
    .end local v52    # "Bcv":Landroid/graphics/Canvas;
    .restart local v5    # "fisB":Ljava/io/FileInputStream;
    .restart local v8    # "Bcv":Landroid/graphics/Canvas;
    :catch_1e
    move-exception v0

    move-object/from16 v51, v5

    move-object/from16 v52, v8

    .line 357
    .end local v5    # "fisB":Ljava/io/FileInputStream;
    .end local v8    # "Bcv":Landroid/graphics/Canvas;
    .restart local v51    # "fisB":Ljava/io/FileInputStream;
    .restart local v52    # "Bcv":Landroid/graphics/Canvas;
    :goto_18
    if-eqz v15, :cond_b

    .line 359
    :try_start_1d
    invoke-virtual {v15}, Ljava/io/OutputStream;->flush()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_17

    goto :goto_14

    .line 365
    :cond_b
    :goto_19
    return-object v6

    .line 212
    .end local v6    # "newbmp":Landroid/graphics/Bitmap;
    .end local v32    # "straddr2":Ljava/lang/String;
    .end local v34    # "Fos":Ljava/io/OutputStream;
    .end local v35    # "newbmpF":Landroid/graphics/Bitmap;
    .end local v36    # "bmpF":Landroid/graphics/Bitmap;
    .end local v37    # "yMultF":F
    .end local v38    # "straddr1":Ljava/lang/String;
    .end local v39    # "BcvWidth":I
    .end local v40    # "BcvHeight":I
    .end local v41    # "mPaint":Landroid/graphics/Paint;
    .end local v42    # "FontMultB":F
    .end local v43    # "tmpstr":Ljava/lang/String;
    .end local v44    # "bmpB":Landroid/graphics/Bitmap;
    .end local v46    # "fis":Ljava/io/FileInputStream;
    .end local v48    # "newbmpB":Landroid/graphics/Bitmap;
    .end local v49    # "bmp":Landroid/graphics/Bitmap;
    .end local v50    # "bmpBB":Landroid/graphics/Bitmap;
    .end local v51    # "fisB":Ljava/io/FileInputStream;
    .end local v52    # "Bcv":Landroid/graphics/Canvas;
    .local v2, "mPaint":Landroid/graphics/Paint;
    .local v4, "bmpF":Landroid/graphics/Bitmap;
    .local v5, "i":I
    .local v8, "newbmpF":Landroid/graphics/Bitmap;
    .local v12, "straddr1":Ljava/lang/String;
    .local v13, "yMultF":F
    .local v15, "straddr2":Ljava/lang/String;
    :cond_c
    move-object/from16 v41, v2

    move-object/from16 v36, v4

    move-object/from16 v35, v8

    move-object/from16 v38, v12

    move/from16 v37, v13

    move-object/from16 v32, v15

    const/16 v2, 0x1f

    const/4 v4, 0x1

    const v13, 0x43a48000    # 329.0f

    const/4 v15, 0x0

    const/high16 v16, 0x41500000    # 13.0f

    const/16 v17, 0x0

    const v18, 0x4814c540    # 152341.0f

    .line 212
    .end local v2    # "mPaint":Landroid/graphics/Paint;
    .end local v4    # "bmpF":Landroid/graphics/Bitmap;
    .end local v8    # "newbmpF":Landroid/graphics/Bitmap;
    .end local v12    # "straddr1":Ljava/lang/String;
    .end local v13    # "yMultF":F
    .end local v15    # "straddr2":Ljava/lang/String;
    .restart local v32    # "straddr2":Ljava/lang/String;
    .restart local v35    # "newbmpF":Landroid/graphics/Bitmap;
    .restart local v36    # "bmpF":Landroid/graphics/Bitmap;
    .restart local v37    # "yMultF":F
    .restart local v38    # "straddr1":Ljava/lang/String;
    .restart local v41    # "mPaint":Landroid/graphics/Paint;
    const/4 v6, 0x0

    .line 212
    .local v6, "j":I
    :goto_1a
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    add-int/lit8 v8, v8, -0x3

    if-lt v6, v8, :cond_d

    .line 211
    .end local v6    # "j":I
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v6, v30

    move-object/from16 v15, v32

    move-object/from16 v8, v35

    move-object/from16 v4, v36

    move/from16 v13, v37

    move-object/from16 v12, v38

    move-object/from16 v2, v41

    goto/16 :goto_3

    .line 213
    .restart local v6    # "j":I
    :cond_d
    invoke-virtual {v1, v5, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    if-eq v8, v7, :cond_e

    .line 214
    invoke-virtual {v1, v5, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 215
    const/high16 v8, 0x43530000    # 211.0f

    mul-float/2addr v8, v11

    int-to-float v12, v5

    add-float/2addr v8, v12

    const/high16 v12, 0x41f80000    # 31.0f

    mul-float v12, v12, v37

    int-to-float v2, v6

    add-float/2addr v12, v2

    invoke-virtual {v14, v8, v12, v9}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 212
    :cond_e
    add-int/lit8 v6, v6, 0x1

    const/16 v2, 0x1f

    goto :goto_1a

    .line 164
    .end local v7    # "colorflage":I
    .end local v28    # "FontMultf":F
    .end local v29    # "straddr3":Ljava/lang/String;
    .end local v30    # "matrix":Landroid/graphics/Matrix;
    .end local v32    # "straddr2":Ljava/lang/String;
    .end local v35    # "newbmpF":Landroid/graphics/Bitmap;
    .end local v36    # "bmpF":Landroid/graphics/Bitmap;
    .end local v37    # "yMultF":F
    .end local v38    # "straddr1":Ljava/lang/String;
    .end local v41    # "mPaint":Landroid/graphics/Paint;
    .restart local v2    # "mPaint":Landroid/graphics/Paint;
    .restart local v4    # "bmpF":Landroid/graphics/Bitmap;
    .local v5, "straddr3":Ljava/lang/String;
    .local v6, "i":I
    .restart local v8    # "newbmpF":Landroid/graphics/Bitmap;
    .local v9, "FontMultf":F
    .restart local v12    # "straddr1":Ljava/lang/String;
    .restart local v13    # "yMultF":F
    .restart local v15    # "straddr2":Ljava/lang/String;
    :cond_f
    move-object/from16 v41, v2

    move-object/from16 v36, v4

    move-object/from16 v29, v5

    move-object/from16 v35, v8

    move/from16 v28, v9

    move-object/from16 v38, v12

    move/from16 v37, v13

    move-object/from16 v32, v15

    const/4 v4, 0x1

    const/high16 v7, 0x42840000    # 66.0f

    const/4 v12, 0x5

    const v13, 0x43a48000    # 329.0f

    const/4 v15, 0x0

    const/high16 v16, 0x41500000    # 13.0f

    const/16 v17, 0x0

    const v18, 0x4814c540    # 152341.0f

    const/high16 v19, 0x42e60000    # 115.0f

    .line 164
    .end local v2    # "mPaint":Landroid/graphics/Paint;
    .end local v4    # "bmpF":Landroid/graphics/Bitmap;
    .end local v5    # "straddr3":Ljava/lang/String;
    .end local v8    # "newbmpF":Landroid/graphics/Bitmap;
    .end local v9    # "FontMultf":F
    .end local v12    # "straddr1":Ljava/lang/String;
    .end local v13    # "yMultF":F
    .end local v15    # "straddr2":Ljava/lang/String;
    .restart local v28    # "FontMultf":F
    .restart local v29    # "straddr3":Ljava/lang/String;
    .restart local v32    # "straddr2":Ljava/lang/String;
    .restart local v35    # "newbmpF":Landroid/graphics/Bitmap;
    .restart local v36    # "bmpF":Landroid/graphics/Bitmap;
    .restart local v37    # "yMultF":F
    .restart local v38    # "straddr1":Ljava/lang/String;
    .restart local v41    # "mPaint":Landroid/graphics/Paint;
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 166
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double v24, v24, v8

    .line 167
    goto :goto_1b

    .line 170
    :cond_10
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double v24, v24, v8

    .line 172
    :goto_1b
    const-wide/high16 v8, 0x4026000000000000L    # 11.0

    cmpg-double v2, v24, v8

    if-gtz v2, :cond_11

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v5, v38

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 174
    .end local v38    # "straddr1":Ljava/lang/String;
    .local v5, "straddr1":Ljava/lang/String;
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 175
    .end local v5    # "straddr1":Ljava/lang/String;
    .local v2, "straddr1":Ljava/lang/String;
    nop

    .line 162
    move-object v5, v2

    goto :goto_1c

    .line 178
    .end local v2    # "straddr1":Ljava/lang/String;
    .restart local v38    # "straddr1":Ljava/lang/String;
    :cond_11
    move-object/from16 v5, v38

    .line 178
    .end local v38    # "straddr1":Ljava/lang/String;
    .restart local v5    # "straddr1":Ljava/lang/String;
    const-wide/high16 v8, 0x4036000000000000L    # 22.0

    cmpg-double v2, v24, v8

    if-gtz v2, :cond_12

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v8, v32

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 180
    .end local v32    # "straddr2":Ljava/lang/String;
    .local v8, "straddr2":Ljava/lang/String;
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 181
    .end local v8    # "straddr2":Ljava/lang/String;
    .local v2, "straddr2":Ljava/lang/String;
    nop

    .line 162
    move-object/from16 v32, v2

    goto :goto_1c

    .line 184
    .end local v2    # "straddr2":Ljava/lang/String;
    .restart local v32    # "straddr2":Ljava/lang/String;
    :cond_12
    move-object/from16 v8, v32

    .line 184
    .end local v32    # "straddr2":Ljava/lang/String;
    .restart local v8    # "straddr2":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v9, v29

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 184
    .end local v29    # "straddr3":Ljava/lang/String;
    .local v9, "straddr3":Ljava/lang/String;
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 162
    .end local v9    # "straddr3":Ljava/lang/String;
    .local v2, "straddr3":Ljava/lang/String;
    move-object/from16 v29, v2

    .line 162
    .end local v2    # "straddr3":Ljava/lang/String;
    .end local v8    # "straddr2":Ljava/lang/String;
    .restart local v29    # "straddr3":Ljava/lang/String;
    .restart local v32    # "straddr2":Ljava/lang/String;
    :goto_1c
    add-int/lit8 v6, v6, 0x1

    move-object v12, v5

    move/from16 v7, v27

    move/from16 v9, v28

    move-object/from16 v5, v29

    move-object/from16 v15, v32

    move-object/from16 v8, v35

    move-object/from16 v4, v36

    move/from16 v13, v37

    move-object/from16 v2, v41

    goto/16 :goto_2
.end method

.method public static ShowForeignerBmp(Lcom/huashi/otg/sdk/HSIDCardInfo;Landroid/content/Context;ILjava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 40
    .param p0, "info"    # Lcom/huashi/otg/sdk/HSIDCardInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "BmpPath"    # Ljava/lang/String;
    .param p4, "bmphead"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 670
    move-object/from16 v1, p4

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 672
    .local v2, "mPaint":Landroid/graphics/Paint;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy.MM.dd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 675
    .local v3, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "FZ.bmp"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 674
    nop

    .line 676
    .local v4, "bmpF":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 677
    .local v5, "FcvWidth":I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 678
    .local v6, "FcvHeight":I
    nop

    .line 679
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 678
    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 680
    .local v7, "newbmpF":Landroid/graphics/Bitmap;
    mul-int v8, v6, v6

    mul-int v9, v5, v5

    add-int/2addr v8, v9

    int-to-float v8, v8

    .line 681
    nop

    .line 680
    const v9, 0x4814c540    # 152341.0f

    div-float/2addr v8, v9

    .line 682
    .local v8, "FontMultf":F
    float-to-double v9, v8

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v8, v9

    .line 683
    int-to-float v9, v5

    const v10, 0x43a48000    # 329.0f

    div-float/2addr v9, v10

    .line 684
    .local v9, "xMultF":F
    int-to-float v10, v6

    const/high16 v11, 0x43520000    # 210.0f

    div-float/2addr v10, v11

    .line 685
    .local v10, "yMultF":F
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 686
    .local v11, "Fcv":Landroid/graphics/Canvas;
    const/4 v12, 0x0

    invoke-virtual {v11, v4, v12, v12, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 687
    const/4 v12, 0x0

    const/16 v13, 0x47

    const/16 v14, 0x5f

    const/16 v15, 0x9b

    invoke-static {v12, v13, v14, v15}, Landroid/graphics/Color;->argb(IIII)I

    move-result v13

    .line 688
    .local v13, "bsC":I
    new-instance v14, Landroid/graphics/Paint;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Landroid/graphics/Paint;-><init>(I)V

    .line 689
    .local v14, "Fp":Landroid/graphics/Paint;
    sget-object v12, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v14, v12}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 690
    invoke-virtual {v14, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 691
    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 692
    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setDither(Z)V

    .line 693
    const/16 v12, 0xff

    invoke-virtual {v14, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 694
    sget-object v12, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v14, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 695
    const/high16 v12, 0x41500000    # 13.0f

    mul-float/2addr v12, v8

    invoke-virtual {v14, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 708
    const/high16 v12, -0x1000000

    invoke-virtual {v14, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 709
    invoke-virtual/range {p0 .. p0}, Lcom/huashi/otg/sdk/HSIDCardInfo;->getPeopleName()Ljava/lang/String;

    move-result-object v12

    const/high16 v17, 0x41f00000    # 30.0f

    mul-float v15, v17, v9

    const/high16 v18, 0x42100000    # 36.0f

    move-object/from16 v19, v2

    mul-float v2, v18, v10

    .line 709
    .end local v2    # "mPaint":Landroid/graphics/Paint;
    .local v19, "mPaint":Landroid/graphics/Paint;
    invoke-virtual {v11, v12, v15, v2, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 711
    invoke-virtual/range {p0 .. p0}, Lcom/huashi/otg/sdk/HSIDCardInfo;->getstrChineseName()Ljava/lang/String;

    move-result-object v2

    mul-float v12, v17, v9

    const/high16 v15, 0x42600000    # 56.0f

    mul-float/2addr v15, v10

    invoke-virtual {v11, v2, v12, v15, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 713
    const/high16 v2, 0x41400000    # 12.0f

    mul-float/2addr v2, v8

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 715
    invoke-virtual/range {p0 .. p0}, Lcom/huashi/otg/sdk/HSIDCardInfo;->getSex()Ljava/lang/String;

    move-result-object v2

    const-string v12, "\u5973"

    if-ne v2, v12, :cond_0

    .line 717
    const-string v2, "\u5973 /F"

    .line 718
    .local v2, "tmpStr":Ljava/lang/String;
    goto :goto_0

    .line 721
    .end local v2    # "tmpStr":Ljava/lang/String;
    :cond_0
    const-string v2, "\u7537 /M"

    .line 723
    .restart local v2    # "tmpStr":Ljava/lang/String;
    :goto_0
    mul-float v12, v17, v9

    const/high16 v15, 0x42a80000    # 84.0f

    move-object/from16 v20, v4

    mul-float v4, v15, v10

    .line 723
    .end local v4    # "bmpF":Landroid/graphics/Bitmap;
    .local v20, "bmpF":Landroid/graphics/Bitmap;
    invoke-virtual {v11, v2, v12, v4, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 727
    invoke-virtual/range {p0 .. p0}, Lcom/huashi/otg/sdk/HSIDCardInfo;->getBirthDay()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 728
    .local v4, "str":Ljava/lang/String;
    mul-float/2addr v15, v9

    const/high16 v12, 0x42ac0000    # 86.0f

    mul-float/2addr v12, v10

    invoke-virtual {v11, v4, v15, v12, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 731
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/huashi/otg/sdk/HSIDCardInfo;->getstrNationCode()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "/"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/huashi/otg/sdk/HSIDCardInfo;->getIDCard()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v21, v2

    const/4 v2, 0x3

    .line 731
    .end local v2    # "tmpStr":Ljava/lang/String;
    .local v21, "tmpStr":Ljava/lang/String;
    move-object/from16 v22, v3

    const/4 v3, 0x0

    invoke-virtual {v15, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 731
    .end local v3    # "df":Ljava/text/SimpleDateFormat;
    .local v22, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 732
    .end local v4    # "str":Ljava/lang/String;
    .local v3, "str":Ljava/lang/String;
    mul-float v4, v17, v9

    const/high16 v12, 0x42e00000    # 112.0f

    mul-float/2addr v12, v10

    invoke-virtual {v11, v3, v4, v12, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 735
    invoke-virtual/range {p0 .. p0}, Lcom/huashi/otg/sdk/HSIDCardInfo;->getEndDate()Ljava/lang/String;

    move-result-object v4

    const-string v12, "\u957f\u671f"

    const/4 v15, 0x4

    if-ne v4, v12, :cond_1

    .line 736
    nop

    .line 737
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/huashi/otg/sdk/HSIDCardInfo;->getStrartDate()Ljava/lang/String;

    move-result-object v12

    const/4 v2, 0x0

    invoke-virtual {v12, v2, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    invoke-virtual/range {p0 .. p0}, Lcom/huashi/otg/sdk/HSIDCardInfo;->getStrartDate()Ljava/lang/String;

    move-result-object v2

    const/4 v12, 0x6

    invoke-virtual {v2, v15, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    invoke-virtual/range {p0 .. p0}, Lcom/huashi/otg/sdk/HSIDCardInfo;->getStrartDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u2014"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    invoke-virtual/range {p0 .. p0}, Lcom/huashi/otg/sdk/HSIDCardInfo;->getEndDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 740
    mul-float v4, v17, v9

    const/high16 v12, 0x43080000    # 136.0f

    mul-float v15, v12, v10

    .line 736
    invoke-virtual {v11, v2, v4, v15, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 741
    goto :goto_1

    .line 742
    :cond_1
    nop

    .line 743
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/huashi/otg/sdk/HSIDCardInfo;->getStrartDate()Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x0

    invoke-virtual {v4, v12, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    invoke-virtual/range {p0 .. p0}, Lcom/huashi/otg/sdk/HSIDCardInfo;->getStrartDate()Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x6

    invoke-virtual {v4, v15, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    invoke-virtual/range {p0 .. p0}, Lcom/huashi/otg/sdk/HSIDCardInfo;->getStrartDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u2014"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    invoke-virtual/range {p0 .. p0}, Lcom/huashi/otg/sdk/HSIDCardInfo;->getEndDate()Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x0

    invoke-virtual {v4, v12, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    invoke-virtual/range {p0 .. p0}, Lcom/huashi/otg/sdk/HSIDCardInfo;->getEndDate()Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x6

    invoke-virtual {v4, v15, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    invoke-virtual/range {p0 .. p0}, Lcom/huashi/otg/sdk/HSIDCardInfo;->getEndDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 748
    mul-float v4, v17, v10

    .line 749
    const/high16 v12, 0x43080000    # 136.0f

    mul-float v15, v12, v10

    .line 742
    invoke-virtual {v11, v2, v4, v15, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 753
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/huashi/otg/sdk/HSIDCardInfo;->getDepartment()Ljava/lang/String;

    move-result-object v2

    .line 754
    .end local v21    # "tmpStr":Ljava/lang/String;
    .restart local v2    # "tmpStr":Ljava/lang/String;
    const-string v4, "1500"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 756
    const-string v2, "\u516c\u5b89\u90e8/Ministry of Public Security"

    .line 758
    :cond_2
    mul-float v4, v17, v10

    const/high16 v12, 0x43240000    # 164.0f

    mul-float/2addr v12, v10

    invoke-virtual {v11, v2, v4, v12, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 761
    const/high16 v4, 0x41600000    # 14.0f

    mul-float/2addr v4, v8

    invoke-virtual {v14, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 762
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v14, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 763
    const/high16 v4, 0x40400000    # 3.0f

    invoke-virtual {v14, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 764
    const v4, 0x3f99999a    # 1.2f

    invoke-virtual {v14, v4}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 765
    invoke-virtual/range {p0 .. p0}, Lcom/huashi/otg/sdk/HSIDCardInfo;->getIDCard()Ljava/lang/String;

    move-result-object v4

    mul-float v12, v17, v9

    const/high16 v15, 0x433e0000    # 190.0f

    mul-float/2addr v15, v10

    invoke-virtual {v11, v4, v12, v15, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 767
    const/16 v4, 0x1f

    invoke-virtual {v11, v4}, Landroid/graphics/Canvas;->save(I)I

    .line 768
    invoke-virtual {v11}, Landroid/graphics/Canvas;->restore()V

    .line 769
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 770
    .local v12, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v12, v9, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 777
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 779
    .local v15, "phead":Landroid/graphics/Paint;
    const/16 v16, 0x0

    .line 779
    .local v16, "i":I
    move/from16 v4, v16

    .line 779
    .end local v16    # "i":I
    .local v4, "i":I
    :goto_2
    move-object/from16 v23, v2

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 779
    .end local v2    # "tmpStr":Ljava/lang/String;
    .local v23, "tmpStr":Ljava/lang/String;
    if-lt v4, v2, :cond_a

    .line 794
    .end local v4    # "i":I
    invoke-virtual {v15}, Landroid/graphics/Paint;->reset()V

    .line 795
    const/16 v2, 0x1f

    invoke-virtual {v11, v2}, Landroid/graphics/Canvas;->save(I)I

    .line 796
    invoke-virtual {v11}, Landroid/graphics/Canvas;->restore()V

    .line 798
    const/4 v2, 0x0

    move-object v4, v2

    .line 800
    .local v4, "Fos":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v24, v3

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 800
    .end local v3    # "str":Ljava/lang/String;
    .local v24, "str":Ljava/lang/String;
    move-object/from16 v25, v4

    :try_start_2
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 800
    .end local v4    # "Fos":Ljava/io/OutputStream;
    .local v25, "Fos":Ljava/io/OutputStream;
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/idcardF.bmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 801
    .local v2, "FdestFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 802
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v3

    .line 803
    .end local v25    # "Fos":Ljava/io/OutputStream;
    .restart local v4    # "Fos":Ljava/io/OutputStream;
    :try_start_3
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v26, v2

    const/16 v2, 0x64

    invoke-virtual {v7, v3, v2, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 805
    .end local v2    # "FdestFile":Ljava/io/File;
    nop

    .line 809
    if-eqz v4, :cond_4

    .line 811
    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 812
    :goto_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 813
    goto/16 :goto_8

    :catch_0
    move-exception v0

    goto/16 :goto_8

    .line 806
    :catch_1
    move-exception v0

    move-object v2, v0

    goto :goto_4

    .line 805
    :catch_2
    move-exception v0

    goto :goto_7

    .line 808
    .end local v4    # "Fos":Ljava/io/OutputStream;
    .restart local v25    # "Fos":Ljava/io/OutputStream;
    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object/from16 v4, v25

    goto :goto_5

    .line 806
    :catch_3
    move-exception v0

    move-object v2, v0

    move-object/from16 v4, v25

    goto :goto_4

    .line 805
    :catch_4
    move-exception v0

    move-object/from16 v4, v25

    goto :goto_7

    .line 808
    .end local v25    # "Fos":Ljava/io/OutputStream;
    .restart local v4    # "Fos":Ljava/io/OutputStream;
    :catchall_1
    move-exception v0

    move-object/from16 v25, v4

    move-object v2, v0

    .line 808
    .end local v4    # "Fos":Ljava/io/OutputStream;
    .restart local v25    # "Fos":Ljava/io/OutputStream;
    goto :goto_5

    .line 806
    .end local v25    # "Fos":Ljava/io/OutputStream;
    .restart local v4    # "Fos":Ljava/io/OutputStream;
    :catch_5
    move-exception v0

    move-object/from16 v25, v4

    move-object v2, v0

    .line 806
    .end local v4    # "Fos":Ljava/io/OutputStream;
    .restart local v25    # "Fos":Ljava/io/OutputStream;
    goto :goto_4

    .line 805
    .end local v25    # "Fos":Ljava/io/OutputStream;
    .restart local v4    # "Fos":Ljava/io/OutputStream;
    :catch_6
    move-exception v0

    move-object/from16 v25, v4

    .line 805
    .end local v4    # "Fos":Ljava/io/OutputStream;
    .restart local v25    # "Fos":Ljava/io/OutputStream;
    goto :goto_7

    .line 808
    .end local v24    # "str":Ljava/lang/String;
    .end local v25    # "Fos":Ljava/io/OutputStream;
    .restart local v3    # "str":Ljava/lang/String;
    .restart local v4    # "Fos":Ljava/io/OutputStream;
    :catchall_2
    move-exception v0

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-object v2, v0

    .line 808
    .end local v3    # "str":Ljava/lang/String;
    .end local v4    # "Fos":Ljava/io/OutputStream;
    .restart local v24    # "str":Ljava/lang/String;
    .restart local v25    # "Fos":Ljava/io/OutputStream;
    goto :goto_5

    .line 806
    .end local v24    # "str":Ljava/lang/String;
    .end local v25    # "Fos":Ljava/io/OutputStream;
    .restart local v3    # "str":Ljava/lang/String;
    .restart local v4    # "Fos":Ljava/io/OutputStream;
    :catch_7
    move-exception v0

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-object v2, v0

    .line 807
    .end local v3    # "str":Ljava/lang/String;
    .local v2, "e":Ljava/io/IOException;
    .restart local v24    # "str":Ljava/lang/String;
    :goto_4
    :try_start_5
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 809
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v4, :cond_4

    .line 811
    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_3

    .line 808
    :catchall_3
    move-exception v0

    move-object v2, v0

    .line 809
    :goto_5
    if-eqz v4, :cond_3

    .line 811
    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 812
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 813
    goto :goto_6

    :catch_8
    move-exception v0

    .line 816
    :cond_3
    :goto_6
    throw v2

    .line 805
    .end local v24    # "str":Ljava/lang/String;
    .restart local v3    # "str":Ljava/lang/String;
    :catch_9
    move-exception v0

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    .line 809
    .end local v3    # "str":Ljava/lang/String;
    .restart local v24    # "str":Ljava/lang/String;
    :goto_7
    if-eqz v4, :cond_4

    .line 811
    :try_start_8
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_3

    .line 820
    :cond_4
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "FB.bmp"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 819
    nop

    .line 822
    .local v2, "bmpBB":Landroid/graphics/Bitmap;
    :try_start_9
    new-instance v3, Ljava/io/File;
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_13
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_11
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    move-object/from16 v27, v4

    :try_start_a
    new-instance v4, Ljava/lang/StringBuilder;
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_10
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_f
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 822
    .end local v4    # "Fos":Ljava/io/OutputStream;
    .local v27, "Fos":Ljava/io/OutputStream;
    move/from16 v28, v5

    :try_start_b
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 822
    .end local v5    # "FcvWidth":I
    .local v28, "FcvWidth":I
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/idcardB.bmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 823
    .local v3, "FdestFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 824
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_d
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 825
    .end local v27    # "Fos":Ljava/io/OutputStream;
    .restart local v4    # "Fos":Ljava/io/OutputStream;
    :try_start_c
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v29, v3

    const/16 v3, 0x64

    invoke-virtual {v2, v5, v3, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 827
    .end local v3    # "FdestFile":Ljava/io/File;
    nop

    .line 831
    if-eqz v4, :cond_6

    .line 833
    :try_start_d
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 834
    :goto_9
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    .line 835
    goto/16 :goto_e

    :catch_a
    move-exception v0

    goto/16 :goto_e

    .line 828
    :catch_b
    move-exception v0

    move-object v3, v0

    goto :goto_a

    .line 827
    :catch_c
    move-exception v0

    goto :goto_d

    .line 830
    .end local v4    # "Fos":Ljava/io/OutputStream;
    .restart local v27    # "Fos":Ljava/io/OutputStream;
    :catchall_4
    move-exception v0

    move-object v3, v0

    move-object/from16 v4, v27

    goto :goto_b

    .line 828
    :catch_d
    move-exception v0

    move-object v3, v0

    move-object/from16 v4, v27

    goto :goto_a

    .line 827
    :catch_e
    move-exception v0

    move-object/from16 v4, v27

    goto :goto_d

    .line 830
    .end local v28    # "FcvWidth":I
    .restart local v5    # "FcvWidth":I
    :catchall_5
    move-exception v0

    move/from16 v28, v5

    move-object v3, v0

    move-object/from16 v4, v27

    .line 830
    .end local v5    # "FcvWidth":I
    .restart local v28    # "FcvWidth":I
    goto :goto_b

    .line 828
    .end local v28    # "FcvWidth":I
    .restart local v5    # "FcvWidth":I
    :catch_f
    move-exception v0

    move/from16 v28, v5

    move-object v3, v0

    move-object/from16 v4, v27

    .line 828
    .end local v5    # "FcvWidth":I
    .restart local v28    # "FcvWidth":I
    goto :goto_a

    .line 827
    .end local v28    # "FcvWidth":I
    .restart local v5    # "FcvWidth":I
    :catch_10
    move-exception v0

    move/from16 v28, v5

    move-object/from16 v4, v27

    .line 827
    .end local v5    # "FcvWidth":I
    .restart local v28    # "FcvWidth":I
    goto :goto_d

    .line 830
    .end local v27    # "Fos":Ljava/io/OutputStream;
    .end local v28    # "FcvWidth":I
    .restart local v4    # "Fos":Ljava/io/OutputStream;
    .restart local v5    # "FcvWidth":I
    :catchall_6
    move-exception v0

    move-object/from16 v27, v4

    move/from16 v28, v5

    move-object v3, v0

    .line 830
    .end local v4    # "Fos":Ljava/io/OutputStream;
    .end local v5    # "FcvWidth":I
    .restart local v27    # "Fos":Ljava/io/OutputStream;
    .restart local v28    # "FcvWidth":I
    goto :goto_b

    .line 828
    .end local v27    # "Fos":Ljava/io/OutputStream;
    .end local v28    # "FcvWidth":I
    .restart local v4    # "Fos":Ljava/io/OutputStream;
    .restart local v5    # "FcvWidth":I
    :catch_11
    move-exception v0

    move-object/from16 v27, v4

    move/from16 v28, v5

    move-object v3, v0

    .line 829
    .end local v5    # "FcvWidth":I
    .local v3, "e":Ljava/io/IOException;
    .restart local v28    # "FcvWidth":I
    :goto_a
    :try_start_e
    invoke-static {v3}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 831
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v4, :cond_6

    .line 833
    :try_start_f
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    goto :goto_9

    .line 830
    :catchall_7
    move-exception v0

    move-object v3, v0

    .line 831
    :goto_b
    if-eqz v4, :cond_5

    .line 833
    :try_start_10
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 834
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_12

    .line 835
    goto :goto_c

    :catch_12
    move-exception v0

    .line 838
    :cond_5
    :goto_c
    throw v3

    .line 827
    .end local v28    # "FcvWidth":I
    .restart local v5    # "FcvWidth":I
    :catch_13
    move-exception v0

    move-object/from16 v27, v4

    move/from16 v28, v5

    .line 831
    .end local v5    # "FcvWidth":I
    .restart local v28    # "FcvWidth":I
    :goto_d
    if-eqz v4, :cond_6

    .line 833
    :try_start_11
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a

    goto :goto_9

    .line 842
    :cond_6
    :goto_e
    const/4 v3, 0x0

    move-object v5, v3

    .line 844
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_12
    new-instance v3, Ljava/io/FileInputStream;
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_16

    move-object/from16 v30, v4

    :try_start_13
    new-instance v4, Ljava/lang/StringBuilder;
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_15

    .line 844
    .end local v4    # "Fos":Ljava/io/OutputStream;
    .local v30, "Fos":Ljava/io/OutputStream;
    move-object/from16 v31, v5

    :try_start_14
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 844
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v31, "fis":Ljava/io/FileInputStream;
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/idcardF.bmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_14

    move-object v5, v3

    .line 845
    .end local v31    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_10

    .line 845
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v31    # "fis":Ljava/io/FileInputStream;
    :catch_14
    move-exception v0

    move-object v3, v0

    goto :goto_f

    .line 845
    .end local v31    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_15
    move-exception v0

    move-object/from16 v31, v5

    move-object v3, v0

    .line 845
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v31    # "fis":Ljava/io/FileInputStream;
    goto :goto_f

    .line 845
    .end local v30    # "Fos":Ljava/io/OutputStream;
    .end local v31    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "Fos":Ljava/io/OutputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_16
    move-exception v0

    move-object/from16 v30, v4

    move-object/from16 v31, v5

    move-object v3, v0

    .line 847
    .end local v4    # "Fos":Ljava/io/OutputStream;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v3, "e1":Ljava/io/FileNotFoundException;
    .restart local v30    # "Fos":Ljava/io/OutputStream;
    .restart local v31    # "fis":Ljava/io/FileInputStream;
    :goto_f
    invoke-static {v3}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 849
    .end local v3    # "e1":Ljava/io/FileNotFoundException;
    move-object/from16 v5, v31

    .line 849
    .end local v31    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :goto_10
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 850
    .local v3, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 853
    const/4 v4, 0x0

    .line 854
    .local v4, "newbmp":Landroid/graphics/Bitmap;
    invoke-static {v3, v2}, Lcom/huashi/otg/sdk/GetImg;->compositeImages(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 855
    move-object/from16 v32, v2

    move-object/from16 v33, v3

    const/4 v3, 0x1

    move/from16 v2, p2

    if-eq v2, v3, :cond_7

    .line 856
    .end local v2    # "bmpBB":Landroid/graphics/Bitmap;
    .end local v3    # "bmp":Landroid/graphics/Bitmap;
    .local v32, "bmpBB":Landroid/graphics/Bitmap;
    .local v33, "bmp":Landroid/graphics/Bitmap;
    return-object v4

    .line 858
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/huashi/otg/sdk/HSIDCardInfo;->getPeopleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 863
    .local v3, "name":Ljava/lang/String;
    const/16 v16, 0x0

    .line 865
    .local v16, "Bos":Ljava/io/OutputStream;
    :try_start_15
    new-instance v2, Ljava/io/File;
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_20
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_1e
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    move-object/from16 v34, v5

    :try_start_16
    new-instance v5, Ljava/lang/StringBuilder;
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_1d
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_1c
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    .line 865
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v34, "fis":Ljava/io/FileInputStream;
    move/from16 v35, v6

    :try_start_17
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 865
    .end local v6    # "FcvHeight":I
    .local v35, "FcvHeight":I
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".bmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 866
    .local v2, "BdestFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 867
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_17} :catch_1b
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_1a
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    .line 868
    .end local v16    # "Bos":Ljava/io/OutputStream;
    .local v5, "Bos":Ljava/io/OutputStream;
    :try_start_18
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v36, v2

    const/16 v2, 0x64

    invoke-virtual {v4, v6, v2, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_18} :catch_19
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    .line 869
    .end local v2    # "BdestFile":Ljava/io/File;
    nop

    .line 873
    if-eqz v5, :cond_9

    .line 875
    :try_start_19
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 876
    :goto_11
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_17

    .line 877
    goto/16 :goto_16

    :catch_17
    move-exception v0

    goto/16 :goto_16

    .line 870
    :catch_18
    move-exception v0

    move-object v2, v0

    goto :goto_12

    .line 869
    :catch_19
    move-exception v0

    goto/16 :goto_15

    .line 872
    .end local v5    # "Bos":Ljava/io/OutputStream;
    .restart local v16    # "Bos":Ljava/io/OutputStream;
    :catchall_8
    move-exception v0

    move-object v2, v0

    move-object/from16 v5, v16

    goto :goto_13

    .line 870
    :catch_1a
    move-exception v0

    move-object v2, v0

    move-object/from16 v5, v16

    goto :goto_12

    .line 869
    :catch_1b
    move-exception v0

    move-object/from16 v5, v16

    goto :goto_15

    .line 872
    .end local v35    # "FcvHeight":I
    .restart local v6    # "FcvHeight":I
    :catchall_9
    move-exception v0

    move/from16 v35, v6

    move-object v2, v0

    move-object/from16 v5, v16

    .line 872
    .end local v6    # "FcvHeight":I
    .restart local v35    # "FcvHeight":I
    goto :goto_13

    .line 870
    .end local v35    # "FcvHeight":I
    .restart local v6    # "FcvHeight":I
    :catch_1c
    move-exception v0

    move/from16 v35, v6

    move-object v2, v0

    move-object/from16 v5, v16

    .line 870
    .end local v6    # "FcvHeight":I
    .restart local v35    # "FcvHeight":I
    goto :goto_12

    .line 869
    .end local v35    # "FcvHeight":I
    .restart local v6    # "FcvHeight":I
    :catch_1d
    move-exception v0

    move/from16 v35, v6

    move-object/from16 v5, v16

    .line 869
    .end local v6    # "FcvHeight":I
    .restart local v35    # "FcvHeight":I
    goto :goto_15

    .line 872
    .end local v34    # "fis":Ljava/io/FileInputStream;
    .end local v35    # "FcvHeight":I
    .local v5, "fis":Ljava/io/FileInputStream;
    .restart local v6    # "FcvHeight":I
    :catchall_a
    move-exception v0

    move-object/from16 v34, v5

    move/from16 v35, v6

    move-object v2, v0

    move-object/from16 v5, v16

    .line 872
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "FcvHeight":I
    .restart local v34    # "fis":Ljava/io/FileInputStream;
    .restart local v35    # "FcvHeight":I
    goto :goto_13

    .line 870
    .end local v34    # "fis":Ljava/io/FileInputStream;
    .end local v35    # "FcvHeight":I
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "FcvHeight":I
    :catch_1e
    move-exception v0

    move-object/from16 v34, v5

    move/from16 v35, v6

    move-object v2, v0

    move-object/from16 v5, v16

    .line 871
    .end local v6    # "FcvHeight":I
    .end local v16    # "Bos":Ljava/io/OutputStream;
    .local v2, "e":Ljava/io/IOException;
    .local v5, "Bos":Ljava/io/OutputStream;
    .restart local v34    # "fis":Ljava/io/FileInputStream;
    .restart local v35    # "FcvHeight":I
    :goto_12
    :try_start_1a
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    .line 873
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v5, :cond_9

    .line 875
    :try_start_1b
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_17

    goto :goto_11

    .line 872
    :catchall_b
    move-exception v0

    move-object v2, v0

    .line 873
    :goto_13
    if-eqz v5, :cond_8

    .line 875
    :try_start_1c
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 876
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_1f

    .line 877
    goto :goto_14

    :catch_1f
    move-exception v0

    .line 880
    :cond_8
    :goto_14
    throw v2

    .line 869
    .end local v34    # "fis":Ljava/io/FileInputStream;
    .end local v35    # "FcvHeight":I
    .local v5, "fis":Ljava/io/FileInputStream;
    .restart local v6    # "FcvHeight":I
    .restart local v16    # "Bos":Ljava/io/OutputStream;
    :catch_20
    move-exception v0

    move-object/from16 v34, v5

    move/from16 v35, v6

    move-object/from16 v5, v16

    .line 873
    .end local v6    # "FcvHeight":I
    .end local v16    # "Bos":Ljava/io/OutputStream;
    .local v5, "Bos":Ljava/io/OutputStream;
    .restart local v34    # "fis":Ljava/io/FileInputStream;
    .restart local v35    # "FcvHeight":I
    :goto_15
    if-eqz v5, :cond_9

    .line 875
    :try_start_1d
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_17

    goto :goto_11

    .line 881
    :cond_9
    :goto_16
    return-object v4

    .line 780
    .end local v24    # "str":Ljava/lang/String;
    .end local v28    # "FcvWidth":I
    .end local v30    # "Fos":Ljava/io/OutputStream;
    .end local v32    # "bmpBB":Landroid/graphics/Bitmap;
    .end local v33    # "bmp":Landroid/graphics/Bitmap;
    .end local v34    # "fis":Ljava/io/FileInputStream;
    .end local v35    # "FcvHeight":I
    .local v3, "str":Ljava/lang/String;
    .local v4, "i":I
    .local v5, "FcvWidth":I
    .restart local v6    # "FcvHeight":I
    :cond_a
    move-object/from16 v24, v3

    move/from16 v28, v5

    move/from16 v35, v6

    const/16 v2, 0x1f

    const/4 v3, 0x1

    .line 780
    .end local v3    # "str":Ljava/lang/String;
    .end local v5    # "FcvWidth":I
    .end local v6    # "FcvHeight":I
    .restart local v24    # "str":Ljava/lang/String;
    .restart local v28    # "FcvWidth":I
    .restart local v35    # "FcvHeight":I
    const/4 v5, 0x0

    .line 780
    .local v5, "j":I
    :goto_17
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/16 v16, 0x3

    add-int/lit8 v6, v6, -0x3

    if-lt v5, v6, :cond_b

    .line 779
    .end local v5    # "j":I
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move/from16 v5, v28

    move/from16 v6, v35

    goto/16 :goto_2

    .line 781
    .restart local v5    # "j":I
    :cond_b
    invoke-virtual {v1, v4, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    .line 782
    .local v6, "colorflage":I
    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v17

    .line 783
    .local v17, "A":I
    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 784
    .local v2, "R":I
    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 785
    .local v3, "G":I
    move-object/from16 v37, v7

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    .line 786
    .local v7, "B":I
    .local v37, "newbmpF":Landroid/graphics/Bitmap;
    move/from16 v38, v6

    const/16 v6, 0xec

    .line 786
    .end local v6    # "colorflage":I
    .local v38, "colorflage":I
    if-le v2, v6, :cond_d

    if-le v3, v6, :cond_d

    if-gt v7, v6, :cond_c

    goto :goto_18

    .line 780
    :cond_c
    move/from16 v39, v2

    goto :goto_19

    .line 789
    :cond_d
    :goto_18
    invoke-virtual {v1, v4, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    invoke-virtual {v15, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 790
    const/high16 v6, 0x43530000    # 211.0f

    mul-float/2addr v6, v9

    int-to-float v1, v4

    add-float/2addr v6, v1

    const/high16 v1, 0x41f80000    # 31.0f

    mul-float/2addr v1, v10

    move/from16 v39, v2

    int-to-float v2, v5

    .line 790
    .end local v2    # "R":I
    .local v39, "R":I
    add-float/2addr v1, v2

    invoke-virtual {v11, v6, v1, v15}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 780
    :goto_19
    add-int/lit8 v5, v5, 0x1

    .line 780
    .end local v3    # "G":I
    .end local v7    # "B":I
    .end local v17    # "A":I
    .end local v38    # "colorflage":I
    .end local v39    # "R":I
    move-object/from16 v7, v37

    move-object/from16 v1, p4

    const/16 v2, 0x1f

    const/4 v3, 0x1

    goto :goto_17
.end method

.method public static ShowHKBmp(Lcom/huashi/otg/sdk/HSIDCardInfo;Landroid/content/Context;ILjava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 59
    .param p0, "info"    # Lcom/huashi/otg/sdk/HSIDCardInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "BmpPath"    # Ljava/lang/String;
    .param p4, "bmphead"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    move-object/from16 v1, p4

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 370
    .local v2, "mPaint":Landroid/graphics/Paint;
    invoke-virtual/range {p0 .. p0}, Lcom/huashi/otg/sdk/HSIDCardInfo;->getPeopleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    const/4 v5, 0x0

    if-ne v3, v4, :cond_0

    .line 375
    return-object v5

    .line 377
    :cond_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 380
    .local v3, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v6, "HKZ.bmp"

    invoke-virtual {v4, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 379
    nop

    .line 381
    .local v4, "bmpF":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 382
    .local v6, "FcvWidth":I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 383
    .local v7, "FcvHeight":I
    nop

    .line 384
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 383
    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 385
    .local v8, "newbmpF":Landroid/graphics/Bitmap;
    mul-int v9, v7, v7

    mul-int v10, v6, v6

    add-int/2addr v9, v10

    int-to-float v9, v9

    .line 386
    nop

    .line 385
    const v10, 0x4814c540    # 152341.0f

    div-float/2addr v9, v10

    .line 387
    .local v9, "FontMultf":F
    float-to-double v11, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v9, v11

    .line 388
    int-to-float v11, v6

    const v12, 0x43a48000    # 329.0f

    div-float/2addr v11, v12

    .line 389
    .local v11, "xMultF":F
    int-to-float v13, v7

    const/high16 v14, 0x43520000    # 210.0f

    div-float/2addr v13, v14

    .line 390
    .local v13, "yMultF":F
    new-instance v15, Landroid/graphics/Canvas;

    invoke-direct {v15, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 391
    .local v15, "Fcv":Landroid/graphics/Canvas;
    const/4 v14, 0x0

    invoke-virtual {v15, v4, v14, v14, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 392
    const/16 v14, 0x47

    const/16 v12, 0x5f

    const/16 v10, 0x9b

    const/4 v5, 0x0

    invoke-static {v5, v14, v12, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    .line 393
    .local v10, "bsC":I
    new-instance v12, Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-direct {v12, v14}, Landroid/graphics/Paint;-><init>(I)V

    .line 394
    .local v12, "Fp":Landroid/graphics/Paint;
    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v12, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 395
    invoke-virtual {v12, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 396
    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 397
    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setDither(Z)V

    .line 398
    const/16 v5, 0xff

    invoke-virtual {v12, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 399
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 400
    const/high16 v5, 0x41500000    # 13.0f

    mul-float/2addr v5, v9

    invoke-virtual {v12, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 412
    const/high16 v5, -0x1000000

    invoke-virtual {v12, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 413
    const/high16 v5, 0x41400000    # 12.0f

    mul-float/2addr v5, v9

    invoke-virtual {v12, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 414
    invoke-virtual/range {p0 .. p0}, Lcom/huashi/otg/sdk/HSIDCardInfo;->getPeopleName()Ljava/lang/String;

    move-result-object v5

    const/high16 v20, 0x42840000    # 66.0f

    mul-float v14, v20, v11

    const/high16 v21, 0x42280000    # 42.0f

    move/from16 v22, v6

    mul-float v6, v21, v13

    .line 414
    .end local v6    # "FcvWidth":I
    .local v22, "FcvWidth":I
    invoke-virtual {v15, v5, v14, v6, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 416
    invoke-virtual/range {p0 .. p0}, Lcom/huashi/otg/sdk/HSIDCardInfo;->getSex()Ljava/lang/String;

    move-result-object v5

    mul-float v6, v20, v11

    mul-float v14, v20, v13

    invoke-virtual {v15, v5, v6, v14, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 418
    invoke-virtual/range {p0 .. p0}, Lcom/huashi/otg/sdk/HSIDCardInfo;->getBirthDay()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 419
    .local v5, "str":Ljava/lang/String;
    const/4 v6, 0x4

    move-object/from16 v23, v3

    const/4 v14, 0x0

    invoke-virtual {v5, v14, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 419
    .end local v3    # "df":Ljava/text/SimpleDateFormat;
    .local v23, "df":Ljava/text/SimpleDateFormat;
    mul-float v14, v20, v11

    const/high16 v21, 0x42b80000    # 92.0f

    mul-float v6, v21, v13

    .line 420
    nop

    .line 419
    invoke-virtual {v15, v3, v14, v6, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 421
    const/4 v3, 0x5

    const/4 v6, 0x4

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v6, 0x6

    if-eqz v3, :cond_1

    .line 422
    const/4 v3, 0x5

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/high16 v14, 0x42ee0000    # 119.0f

    mul-float/2addr v14, v11

    .line 423
    mul-float v6, v21, v13

    .line 422
    invoke-virtual {v15, v3, v14, v6, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 424
    goto :goto_0

    .line 425
    :cond_1
    const/4 v3, 0x4

    const/4 v6, 0x6

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    const/high16 v3, 0x42e80000    # 116.0f

    mul-float/2addr v3, v11

    .line 426
    mul-float v6, v21, v13

    .line 425
    invoke-virtual {v15, v14, v3, v6, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 428
    :goto_0
    const/4 v3, 0x7

    const/4 v6, 0x6

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 429
    const/4 v3, 0x7

    const/16 v6, 0x8

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/high16 v6, 0x43150000    # 149.0f

    mul-float/2addr v6, v11

    .line 430
    mul-float v14, v21, v13

    .line 429
    invoke-virtual {v15, v3, v6, v14, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 431
    goto :goto_1

    .line 432
    :cond_2
    const/16 v3, 0x8

    const/4 v6, 0x6

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/high16 v6, 0x43120000    # 146.0f

    mul-float/2addr v6, v11

    .line 433
    mul-float v14, v21, v13

    .line 432
    invoke-virtual {v15, v3, v6, v14, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 436
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/huashi/otg/sdk/HSIDCardInfo;->getAddr()Ljava/lang/String;

    move-result-object v3

    .line 438
    .local v3, "straddr":Ljava/lang/String;
    const-string v6, ""

    .line 439
    .local v6, "straddr1":Ljava/lang/String;
    const-string v14, ""

    .line 440
    .local v14, "straddr2":Ljava/lang/String;
    const-string v21, ""

    .line 441
    .local v21, "straddr3":Ljava/lang/String;
    const-wide/16 v24, 0x0

    .line 443
    .local v24, "AddLenth":D
    const/16 v26, 0x0

    .line 443
    .local v26, "i":I
    move-object/from16 v27, v5

    move/from16 v28, v7

    move-object v5, v14

    move-object/from16 v7, v21

    move-object v14, v6

    move/from16 v6, v26

    .line 443
    .end local v21    # "straddr3":Ljava/lang/String;
    .end local v26    # "i":I
    .local v5, "straddr2":Ljava/lang/String;
    .local v6, "i":I
    .local v7, "straddr3":Ljava/lang/String;
    .local v14, "straddr1":Ljava/lang/String;
    .local v27, "str":Ljava/lang/String;
    .local v28, "FcvHeight":I
    :goto_2
    move/from16 v29, v10

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    .line 443
    .end local v10    # "bsC":I
    .local v29, "bsC":I
    if-lt v6, v10, :cond_f

    .line 469
    .end local v6    # "i":I
    mul-float v6, v20, v11

    const/high16 v10, 0x42e60000    # 115.0f

    mul-float/2addr v10, v13

    .line 470
    nop

    .line 469
    invoke-virtual {v15, v14, v6, v10, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 471
    mul-float v6, v20, v11

    const/high16 v10, 0x43090000    # 137.0f

    mul-float/2addr v10, v13

    .line 472
    nop

    .line 471
    invoke-virtual {v15, v5, v6, v10, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 473
    mul-float v6, v20, v11

    const/high16 v10, 0x431d0000    # 157.0f

    mul-float/2addr v10, v13

    invoke-virtual {v15, v7, v6, v10, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 476
    const/high16 v6, 0x41600000    # 14.0f

    mul-float/2addr v6, v9

    invoke-virtual {v12, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 477
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v12, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 478
    const/high16 v6, 0x40400000    # 3.0f

    invoke-virtual {v12, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 479
    const v6, 0x3f99999a    # 1.2f

    invoke-virtual {v12, v6}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 480
    invoke-virtual/range {p0 .. p0}, Lcom/huashi/otg/sdk/HSIDCardInfo;->getIDCard()Ljava/lang/String;

    move-result-object v6

    const/high16 v10, 0x42e60000    # 115.0f

    mul-float/2addr v10, v11

    const/high16 v20, 0x43370000    # 183.0f

    move/from16 v30, v9

    mul-float v9, v20, v13

    .line 480
    .end local v9    # "FontMultf":F
    .local v30, "FontMultf":F
    invoke-virtual {v15, v6, v10, v9, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 482
    const/16 v9, 0x1f

    invoke-virtual {v15, v9}, Landroid/graphics/Canvas;->save(I)I

    .line 483
    invoke-virtual {v15}, Landroid/graphics/Canvas;->restore()V

    .line 484
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    move-object v10, v6

    .line 485
    .local v10, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v10, v11, v13}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 492
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 494
    .local v6, "phead":Landroid/graphics/Paint;
    const/16 v20, 0x0

    .line 494
    .local v20, "i":I
    move/from16 v9, v20

    .line 494
    .end local v20    # "i":I
    .local v9, "i":I
    :goto_3
    move-object/from16 v31, v10

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 494
    .end local v10    # "matrix":Landroid/graphics/Matrix;
    .local v31, "matrix":Landroid/graphics/Matrix;
    if-lt v9, v10, :cond_b

    .line 509
    .end local v9    # "i":I
    invoke-virtual {v6}, Landroid/graphics/Paint;->reset()V

    .line 510
    const/16 v9, 0x1f

    invoke-virtual {v15, v9}, Landroid/graphics/Canvas;->save(I)I

    .line 511
    invoke-virtual {v15}, Landroid/graphics/Canvas;->restore()V

    .line 513
    const/4 v9, 0x0

    move-object v10, v9

    .line 515
    .local v10, "Fos":Ljava/io/OutputStream;
    :try_start_0
    new-instance v9, Ljava/io/File;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v32, v10

    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 515
    .end local v10    # "Fos":Ljava/io/OutputStream;
    .local v32, "Fos":Ljava/io/OutputStream;
    move-object/from16 v33, v7

    :try_start_2
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 515
    .end local v7    # "straddr3":Ljava/lang/String;
    .local v33, "straddr3":Ljava/lang/String;
    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/idcardF.bmp"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v7, v9

    .line 516
    .local v7, "FdestFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 517
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v10, v9

    .line 518
    .end local v32    # "Fos":Ljava/io/OutputStream;
    .restart local v10    # "Fos":Ljava/io/OutputStream;
    :try_start_3
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v34, v7

    const/16 v7, 0x64

    invoke-virtual {v8, v9, v7, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 520
    .end local v7    # "FdestFile":Ljava/io/File;
    nop

    .line 524
    if-eqz v10, :cond_4

    .line 526
    :try_start_4
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V

    .line 527
    :goto_4
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 528
    goto/16 :goto_9

    :catch_0
    move-exception v0

    goto/16 :goto_9

    .line 521
    :catch_1
    move-exception v0

    move-object v7, v0

    goto :goto_5

    .line 520
    :catch_2
    move-exception v0

    goto :goto_8

    .line 523
    .end local v10    # "Fos":Ljava/io/OutputStream;
    .restart local v32    # "Fos":Ljava/io/OutputStream;
    :catchall_0
    move-exception v0

    move-object v7, v0

    move-object/from16 v10, v32

    goto :goto_6

    .line 521
    :catch_3
    move-exception v0

    move-object v7, v0

    move-object/from16 v10, v32

    goto :goto_5

    .line 520
    :catch_4
    move-exception v0

    move-object/from16 v10, v32

    goto :goto_8

    .line 523
    .end local v33    # "straddr3":Ljava/lang/String;
    .local v7, "straddr3":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v33, v7

    move-object v7, v0

    move-object/from16 v10, v32

    .line 523
    .end local v7    # "straddr3":Ljava/lang/String;
    .restart local v33    # "straddr3":Ljava/lang/String;
    goto :goto_6

    .line 521
    .end local v33    # "straddr3":Ljava/lang/String;
    .restart local v7    # "straddr3":Ljava/lang/String;
    :catch_5
    move-exception v0

    move-object/from16 v33, v7

    move-object v7, v0

    move-object/from16 v10, v32

    .line 521
    .end local v7    # "straddr3":Ljava/lang/String;
    .restart local v33    # "straddr3":Ljava/lang/String;
    goto :goto_5

    .line 520
    .end local v33    # "straddr3":Ljava/lang/String;
    .restart local v7    # "straddr3":Ljava/lang/String;
    :catch_6
    move-exception v0

    move-object/from16 v33, v7

    move-object/from16 v10, v32

    .line 520
    .end local v7    # "straddr3":Ljava/lang/String;
    .restart local v33    # "straddr3":Ljava/lang/String;
    goto :goto_8

    .line 523
    .end local v32    # "Fos":Ljava/io/OutputStream;
    .end local v33    # "straddr3":Ljava/lang/String;
    .restart local v7    # "straddr3":Ljava/lang/String;
    .restart local v10    # "Fos":Ljava/io/OutputStream;
    :catchall_2
    move-exception v0

    move-object/from16 v33, v7

    move-object/from16 v32, v10

    move-object v7, v0

    .line 523
    .end local v7    # "straddr3":Ljava/lang/String;
    .end local v10    # "Fos":Ljava/io/OutputStream;
    .restart local v32    # "Fos":Ljava/io/OutputStream;
    .restart local v33    # "straddr3":Ljava/lang/String;
    goto :goto_6

    .line 521
    .end local v32    # "Fos":Ljava/io/OutputStream;
    .end local v33    # "straddr3":Ljava/lang/String;
    .restart local v7    # "straddr3":Ljava/lang/String;
    .restart local v10    # "Fos":Ljava/io/OutputStream;
    :catch_7
    move-exception v0

    move-object/from16 v33, v7

    move-object/from16 v32, v10

    move-object v7, v0

    .line 522
    .local v7, "e":Ljava/io/IOException;
    .restart local v33    # "straddr3":Ljava/lang/String;
    :goto_5
    :try_start_5
    invoke-static {v7}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 524
    .end local v7    # "e":Ljava/io/IOException;
    if-eqz v10, :cond_4

    .line 526
    :try_start_6
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_4

    .line 523
    :catchall_3
    move-exception v0

    move-object v7, v0

    .line 524
    :goto_6
    if-eqz v10, :cond_3

    .line 526
    :try_start_7
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V

    .line 527
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 528
    goto :goto_7

    :catch_8
    move-exception v0

    .line 531
    :cond_3
    :goto_7
    throw v7

    .line 520
    .end local v33    # "straddr3":Ljava/lang/String;
    .local v7, "straddr3":Ljava/lang/String;
    :catch_9
    move-exception v0

    move-object/from16 v33, v7

    move-object/from16 v32, v10

    .line 524
    .end local v7    # "straddr3":Ljava/lang/String;
    .restart local v33    # "straddr3":Ljava/lang/String;
    :goto_8
    if-eqz v10, :cond_4

    .line 526
    :try_start_8
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_4

    .line 533
    :cond_4
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/huashi/otg/sdk/HSIDCardInfo;->getIDCard()Ljava/lang/String;

    move-result-object v7

    .line 535
    .local v7, "tmpID":Ljava/lang/String;
    move-object/from16 v35, v8

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 535
    .end local v8    # "newbmpF":Landroid/graphics/Bitmap;
    .local v35, "newbmpF":Landroid/graphics/Bitmap;
    const-string v9, "8300"

    if-ne v8, v9, :cond_5

    .line 537
    const-string v8, "TWB.bmp"

    .line 538
    .local v8, "DTFile":Ljava/lang/String;
    goto :goto_a

    .line 539
    .end local v8    # "DTFile":Ljava/lang/String;
    :cond_5
    const-string v8, "HKB.bmp"

    .line 542
    .restart local v8    # "DTFile":Ljava/lang/String;
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 541
    nop

    .line 543
    .local v9, "bmpB":Landroid/graphics/Bitmap;
    move-object/from16 v36, v7

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 543
    .end local v7    # "tmpID":Ljava/lang/String;
    .local v36, "tmpID":Ljava/lang/String;
    move-object/from16 v37, v8

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 544
    .end local v8    # "DTFile":Ljava/lang/String;
    .local v37, "DTFile":Ljava/lang/String;
    move-object/from16 v38, v10

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 543
    .end local v10    # "Fos":Ljava/io/OutputStream;
    .local v38, "Fos":Ljava/io/OutputStream;
    invoke-static {v7, v8, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 545
    .local v7, "newbmpB":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 546
    .local v8, "BcvWidth":I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 548
    .local v10, "BcvHeight":I
    mul-int v19, v8, v8

    mul-int v20, v10, v10

    move-object/from16 v39, v4

    add-int v4, v19, v20

    .line 548
    .end local v4    # "bmpF":Landroid/graphics/Bitmap;
    .local v39, "bmpF":Landroid/graphics/Bitmap;
    int-to-float v4, v4

    .line 549
    nop

    .line 548
    const v18, 0x4814c540    # 152341.0f

    div-float v4, v4, v18

    .line 550
    .local v4, "FontMultB":F
    move-object/from16 v41, v14

    move-object/from16 v40, v15

    float-to-double v14, v4

    .line 550
    .end local v14    # "straddr1":Ljava/lang/String;
    .end local v15    # "Fcv":Landroid/graphics/Canvas;
    .local v40, "Fcv":Landroid/graphics/Canvas;
    .local v41, "straddr1":Ljava/lang/String;
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v4, v14

    .line 551
    int-to-float v14, v8

    const v15, 0x43a48000    # 329.0f

    div-float/2addr v14, v15

    .line 552
    .local v14, "xMultB":F
    int-to-float v15, v10

    const/high16 v16, 0x43520000    # 210.0f

    div-float v15, v15, v16

    .line 554
    .local v15, "yMultB":F
    move/from16 v42, v8

    new-instance v8, Landroid/graphics/Canvas;

    .line 554
    .end local v8    # "BcvWidth":I
    .local v42, "BcvWidth":I
    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 555
    .local v8, "Bcv":Landroid/graphics/Canvas;
    move/from16 v43, v10

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v10, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 557
    .end local v10    # "BcvHeight":I
    .local v43, "BcvHeight":I
    invoke-virtual {v12}, Landroid/graphics/Paint;->reset()V

    .line 558
    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v12, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 559
    const/high16 v10, -0x1000000

    invoke-virtual {v12, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 560
    const/4 v10, 0x1

    invoke-virtual {v12, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 561
    invoke-virtual {v12, v10}, Landroid/graphics/Paint;->setDither(Z)V

    .line 562
    const/16 v10, 0xff

    invoke-virtual {v12, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 563
    sget-object v10, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 564
    const/high16 v10, 0x41400000    # 12.0f

    mul-float/2addr v10, v4

    invoke-virtual {v12, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 565
    sget-object v10, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v12, v10}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 570
    sget-object v10, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v12, v10}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 571
    invoke-virtual/range {p0 .. p0}, Lcom/huashi/otg/sdk/HSIDCardInfo;->getDepartment()Ljava/lang/String;

    move-result-object v10

    const/high16 v16, 0x430a0000    # 138.0f

    move-object/from16 v44, v2

    mul-float v2, v16, v14

    .line 571
    .end local v2    # "mPaint":Landroid/graphics/Paint;
    .local v44, "mPaint":Landroid/graphics/Paint;
    const/high16 v17, 0x431c0000    # 156.0f

    move/from16 v45, v4

    mul-float v4, v17, v15

    .line 571
    .end local v4    # "FontMultB":F
    .local v45, "FontMultB":F
    invoke-virtual {v8, v10, v2, v4, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 572
    invoke-virtual/range {p0 .. p0}, Lcom/huashi/otg/sdk/HSIDCardInfo;->getissuesNum()Ljava/lang/String;

    move-result-object v2

    const/high16 v4, 0x43850000    # 266.0f

    mul-float/2addr v4, v14

    const/high16 v10, 0x431c0000    # 156.0f

    mul-float/2addr v10, v15

    invoke-virtual {v8, v2, v4, v10, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 590
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/huashi/otg/sdk/HSIDCardInfo;->getStrartDate()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/huashi/otg/sdk/HSIDCardInfo;->getEndDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 591
    .local v2, "tmpstr":Ljava/lang/String;
    mul-float v4, v16, v14

    const/high16 v10, 0x43290000    # 169.0f

    mul-float/2addr v10, v15

    invoke-virtual {v8, v2, v4, v10, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 592
    invoke-virtual/range {p0 .. p0}, Lcom/huashi/otg/sdk/HSIDCardInfo;->getPassCheckID()Ljava/lang/String;

    move-result-object v4

    mul-float v10, v16, v14

    const/high16 v16, 0x43360000    # 182.0f

    move-object/from16 v46, v2

    mul-float v2, v16, v15

    .line 592
    .end local v2    # "tmpstr":Ljava/lang/String;
    .local v46, "tmpstr":Ljava/lang/String;
    invoke-virtual {v8, v4, v10, v2, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 594
    const/16 v2, 0x1f

    invoke-virtual {v8, v2}, Landroid/graphics/Canvas;->save(I)I

    .line 595
    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    .line 598
    const/4 v2, 0x0

    move-object v4, v2

    .line 600
    .local v4, "Bos":Ljava/io/OutputStream;
    :try_start_9
    new-instance v2, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_11
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_f
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    move-object/from16 v47, v4

    :try_start_a
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 600
    .end local v4    # "Bos":Ljava/io/OutputStream;
    .local v47, "Bos":Ljava/io/OutputStream;
    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/idcardB.bmp"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 601
    .local v2, "BdestFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 602
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_d
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 603
    .end local v47    # "Bos":Ljava/io/OutputStream;
    .restart local v4    # "Bos":Ljava/io/OutputStream;
    :try_start_b
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v48, v2

    const/16 v2, 0x64

    invoke-virtual {v7, v10, v2, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_c
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 605
    .end local v2    # "BdestFile":Ljava/io/File;
    nop

    .line 609
    if-eqz v4, :cond_7

    .line 611
    :try_start_c
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 612
    :goto_b
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    .line 613
    goto :goto_10

    :catch_a
    move-exception v0

    goto :goto_10

    .line 606
    :catch_b
    move-exception v0

    move-object v2, v0

    goto :goto_c

    .line 605
    :catch_c
    move-exception v0

    goto :goto_f

    .line 608
    .end local v4    # "Bos":Ljava/io/OutputStream;
    .restart local v47    # "Bos":Ljava/io/OutputStream;
    :catchall_4
    move-exception v0

    move-object v2, v0

    move-object/from16 v4, v47

    goto :goto_d

    .line 606
    :catch_d
    move-exception v0

    move-object v2, v0

    move-object/from16 v4, v47

    goto :goto_c

    .line 605
    :catch_e
    move-exception v0

    move-object/from16 v4, v47

    goto :goto_f

    .line 608
    .end local v47    # "Bos":Ljava/io/OutputStream;
    .restart local v4    # "Bos":Ljava/io/OutputStream;
    :catchall_5
    move-exception v0

    move-object/from16 v47, v4

    move-object v2, v0

    .line 608
    .end local v4    # "Bos":Ljava/io/OutputStream;
    .restart local v47    # "Bos":Ljava/io/OutputStream;
    goto :goto_d

    .line 606
    .end local v47    # "Bos":Ljava/io/OutputStream;
    .restart local v4    # "Bos":Ljava/io/OutputStream;
    :catch_f
    move-exception v0

    move-object/from16 v47, v4

    move-object v2, v0

    .line 607
    .local v2, "e":Ljava/io/IOException;
    :goto_c
    :try_start_d
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 609
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v4, :cond_7

    .line 611
    :try_start_e
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    goto :goto_b

    .line 608
    :catchall_6
    move-exception v0

    move-object v2, v0

    .line 609
    :goto_d
    if-eqz v4, :cond_6

    .line 611
    :try_start_f
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 612
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_10

    .line 613
    goto :goto_e

    :catch_10
    move-exception v0

    .line 616
    :cond_6
    :goto_e
    throw v2

    .line 605
    :catch_11
    move-exception v0

    move-object/from16 v47, v4

    .line 609
    :goto_f
    if-eqz v4, :cond_7

    .line 611
    :try_start_10
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    goto :goto_b

    .line 618
    :cond_7
    :goto_10
    const/4 v2, 0x0

    move-object v10, v2

    .line 620
    .local v10, "fis":Ljava/io/FileInputStream;
    :try_start_11
    new-instance v2, Ljava/io/FileInputStream;
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_14

    move-object/from16 v49, v4

    :try_start_12
    new-instance v4, Ljava/lang/StringBuilder;
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_13

    .line 620
    .end local v4    # "Bos":Ljava/io/OutputStream;
    .local v49, "Bos":Ljava/io/OutputStream;
    move-object/from16 v50, v7

    :try_start_13
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 620
    .end local v7    # "newbmpB":Landroid/graphics/Bitmap;
    .local v50, "newbmpB":Landroid/graphics/Bitmap;
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/idcardF.bmp"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_12

    move-object v10, v2

    .line 621
    goto :goto_12

    :catch_12
    move-exception v0

    move-object v2, v0

    goto :goto_11

    .line 621
    .end local v50    # "newbmpB":Landroid/graphics/Bitmap;
    .restart local v7    # "newbmpB":Landroid/graphics/Bitmap;
    :catch_13
    move-exception v0

    move-object/from16 v50, v7

    move-object v2, v0

    .line 621
    .end local v7    # "newbmpB":Landroid/graphics/Bitmap;
    .restart local v50    # "newbmpB":Landroid/graphics/Bitmap;
    goto :goto_11

    .line 621
    .end local v49    # "Bos":Ljava/io/OutputStream;
    .end local v50    # "newbmpB":Landroid/graphics/Bitmap;
    .restart local v4    # "Bos":Ljava/io/OutputStream;
    .restart local v7    # "newbmpB":Landroid/graphics/Bitmap;
    :catch_14
    move-exception v0

    move-object/from16 v49, v4

    move-object/from16 v50, v7

    move-object v2, v0

    .line 623
    .end local v4    # "Bos":Ljava/io/OutputStream;
    .end local v7    # "newbmpB":Landroid/graphics/Bitmap;
    .local v2, "e1":Ljava/io/FileNotFoundException;
    .restart local v49    # "Bos":Ljava/io/OutputStream;
    .restart local v50    # "newbmpB":Landroid/graphics/Bitmap;
    :goto_11
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 625
    .end local v2    # "e1":Ljava/io/FileNotFoundException;
    :goto_12
    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 626
    .local v2, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 629
    const/4 v4, 0x0

    .line 631
    .local v4, "fisB":Ljava/io/FileInputStream;
    :try_start_14
    new-instance v7, Ljava/io/FileInputStream;
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_17

    move-object/from16 v51, v4

    :try_start_15
    new-instance v4, Ljava/lang/StringBuilder;
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_16

    .line 631
    .end local v4    # "fisB":Ljava/io/FileInputStream;
    .local v51, "fisB":Ljava/io/FileInputStream;
    move-object/from16 v52, v8

    :try_start_16
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 631
    .end local v8    # "Bcv":Landroid/graphics/Canvas;
    .local v52, "Bcv":Landroid/graphics/Canvas;
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/idcardB.bmp"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_15

    move-object v4, v7

    .line 632
    .end local v51    # "fisB":Ljava/io/FileInputStream;
    .restart local v4    # "fisB":Ljava/io/FileInputStream;
    goto :goto_14

    .line 632
    .end local v4    # "fisB":Ljava/io/FileInputStream;
    .restart local v51    # "fisB":Ljava/io/FileInputStream;
    :catch_15
    move-exception v0

    move-object v4, v0

    goto :goto_13

    .line 632
    .end local v52    # "Bcv":Landroid/graphics/Canvas;
    .restart local v8    # "Bcv":Landroid/graphics/Canvas;
    :catch_16
    move-exception v0

    move-object/from16 v52, v8

    move-object v4, v0

    .line 632
    .end local v8    # "Bcv":Landroid/graphics/Canvas;
    .restart local v52    # "Bcv":Landroid/graphics/Canvas;
    goto :goto_13

    .line 632
    .end local v51    # "fisB":Ljava/io/FileInputStream;
    .end local v52    # "Bcv":Landroid/graphics/Canvas;
    .restart local v4    # "fisB":Ljava/io/FileInputStream;
    .restart local v8    # "Bcv":Landroid/graphics/Canvas;
    :catch_17
    move-exception v0

    move-object/from16 v51, v4

    move-object/from16 v52, v8

    move-object v4, v0

    .line 634
    .end local v8    # "Bcv":Landroid/graphics/Canvas;
    .local v4, "e":Ljava/io/FileNotFoundException;
    .restart local v51    # "fisB":Ljava/io/FileInputStream;
    .restart local v52    # "Bcv":Landroid/graphics/Canvas;
    :goto_13
    invoke-static {v4}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 636
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    move-object/from16 v4, v51

    .line 636
    .end local v51    # "fisB":Ljava/io/FileInputStream;
    .local v4, "fisB":Ljava/io/FileInputStream;
    :goto_14
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 637
    .local v7, "bmpBB":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 640
    const/4 v8, 0x0

    .line 641
    .local v8, "newbmp":Landroid/graphics/Bitmap;
    invoke-static {v2, v7}, Lcom/huashi/otg/sdk/GetImg;->compositeImages(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 642
    move-object/from16 v53, v2

    move-object/from16 v54, v4

    const/4 v4, 0x1

    move/from16 v2, p2

    if-eq v2, v4, :cond_8

    .line 643
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    .end local v4    # "fisB":Ljava/io/FileInputStream;
    .local v53, "bmp":Landroid/graphics/Bitmap;
    .local v54, "fisB":Ljava/io/FileInputStream;
    return-object v8

    .line 645
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/huashi/otg/sdk/HSIDCardInfo;->getPeopleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 650
    .local v4, "name":Ljava/lang/String;
    :try_start_17
    new-instance v2, Ljava/io/File;
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_17} :catch_21
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_1f
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    move-object/from16 v55, v7

    :try_start_18
    new-instance v7, Ljava/lang/StringBuilder;
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_18} :catch_1e
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_1d
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    .line 650
    .end local v7    # "bmpBB":Landroid/graphics/Bitmap;
    .local v55, "bmpBB":Landroid/graphics/Bitmap;
    move-object/from16 v56, v9

    :try_start_19
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 650
    .end local v9    # "bmpB":Landroid/graphics/Bitmap;
    .local v56, "bmpB":Landroid/graphics/Bitmap;
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".bmp"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 651
    .local v2, "BdestFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 652
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_19} :catch_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_1b
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    .line 653
    .end local v49    # "Bos":Ljava/io/OutputStream;
    .local v7, "Bos":Ljava/io/OutputStream;
    :try_start_1a
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v57, v2

    const/16 v2, 0x64

    invoke-virtual {v8, v9, v2, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1a} :catch_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_19
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    .line 654
    .end local v2    # "BdestFile":Ljava/io/File;
    nop

    .line 658
    if-eqz v7, :cond_a

    .line 660
    :try_start_1b
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 661
    :goto_15
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_18

    .line 662
    goto/16 :goto_1a

    :catch_18
    move-exception v0

    goto/16 :goto_1a

    .line 655
    :catch_19
    move-exception v0

    move-object v2, v0

    goto :goto_16

    .line 654
    :catch_1a
    move-exception v0

    goto/16 :goto_19

    .line 657
    .end local v7    # "Bos":Ljava/io/OutputStream;
    .restart local v49    # "Bos":Ljava/io/OutputStream;
    :catchall_7
    move-exception v0

    move-object v2, v0

    move-object/from16 v7, v49

    goto :goto_17

    .line 655
    :catch_1b
    move-exception v0

    move-object v2, v0

    move-object/from16 v7, v49

    goto :goto_16

    .line 654
    :catch_1c
    move-exception v0

    move-object/from16 v7, v49

    goto :goto_19

    .line 657
    .end local v56    # "bmpB":Landroid/graphics/Bitmap;
    .restart local v9    # "bmpB":Landroid/graphics/Bitmap;
    :catchall_8
    move-exception v0

    move-object/from16 v56, v9

    move-object v2, v0

    move-object/from16 v7, v49

    .line 657
    .end local v9    # "bmpB":Landroid/graphics/Bitmap;
    .restart local v56    # "bmpB":Landroid/graphics/Bitmap;
    goto :goto_17

    .line 655
    .end local v56    # "bmpB":Landroid/graphics/Bitmap;
    .restart local v9    # "bmpB":Landroid/graphics/Bitmap;
    :catch_1d
    move-exception v0

    move-object/from16 v56, v9

    move-object v2, v0

    move-object/from16 v7, v49

    .line 655
    .end local v9    # "bmpB":Landroid/graphics/Bitmap;
    .restart local v56    # "bmpB":Landroid/graphics/Bitmap;
    goto :goto_16

    .line 654
    .end local v56    # "bmpB":Landroid/graphics/Bitmap;
    .restart local v9    # "bmpB":Landroid/graphics/Bitmap;
    :catch_1e
    move-exception v0

    move-object/from16 v56, v9

    move-object/from16 v7, v49

    .line 654
    .end local v9    # "bmpB":Landroid/graphics/Bitmap;
    .restart local v56    # "bmpB":Landroid/graphics/Bitmap;
    goto :goto_19

    .line 657
    .end local v55    # "bmpBB":Landroid/graphics/Bitmap;
    .end local v56    # "bmpB":Landroid/graphics/Bitmap;
    .local v7, "bmpBB":Landroid/graphics/Bitmap;
    .restart local v9    # "bmpB":Landroid/graphics/Bitmap;
    :catchall_9
    move-exception v0

    move-object/from16 v55, v7

    move-object/from16 v56, v9

    move-object v2, v0

    move-object/from16 v7, v49

    .line 657
    .end local v7    # "bmpBB":Landroid/graphics/Bitmap;
    .end local v9    # "bmpB":Landroid/graphics/Bitmap;
    .restart local v55    # "bmpBB":Landroid/graphics/Bitmap;
    .restart local v56    # "bmpB":Landroid/graphics/Bitmap;
    goto :goto_17

    .line 655
    .end local v55    # "bmpBB":Landroid/graphics/Bitmap;
    .end local v56    # "bmpB":Landroid/graphics/Bitmap;
    .restart local v7    # "bmpBB":Landroid/graphics/Bitmap;
    .restart local v9    # "bmpB":Landroid/graphics/Bitmap;
    :catch_1f
    move-exception v0

    move-object/from16 v55, v7

    move-object/from16 v56, v9

    move-object v2, v0

    move-object/from16 v7, v49

    .line 656
    .end local v9    # "bmpB":Landroid/graphics/Bitmap;
    .end local v49    # "Bos":Ljava/io/OutputStream;
    .local v2, "e":Ljava/io/IOException;
    .local v7, "Bos":Ljava/io/OutputStream;
    .restart local v55    # "bmpBB":Landroid/graphics/Bitmap;
    .restart local v56    # "bmpB":Landroid/graphics/Bitmap;
    :goto_16
    :try_start_1c
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_a

    .line 658
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v7, :cond_a

    .line 660
    :try_start_1d
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_18

    goto :goto_15

    .line 657
    :catchall_a
    move-exception v0

    move-object v2, v0

    .line 658
    :goto_17
    if-eqz v7, :cond_9

    .line 660
    :try_start_1e
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 661
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_20

    .line 662
    goto :goto_18

    :catch_20
    move-exception v0

    .line 665
    :cond_9
    :goto_18
    throw v2

    .line 654
    .end local v55    # "bmpBB":Landroid/graphics/Bitmap;
    .end local v56    # "bmpB":Landroid/graphics/Bitmap;
    .local v7, "bmpBB":Landroid/graphics/Bitmap;
    .restart local v9    # "bmpB":Landroid/graphics/Bitmap;
    .restart local v49    # "Bos":Ljava/io/OutputStream;
    :catch_21
    move-exception v0

    move-object/from16 v55, v7

    move-object/from16 v56, v9

    move-object/from16 v7, v49

    .line 658
    .end local v9    # "bmpB":Landroid/graphics/Bitmap;
    .end local v49    # "Bos":Ljava/io/OutputStream;
    .local v7, "Bos":Ljava/io/OutputStream;
    .restart local v55    # "bmpBB":Landroid/graphics/Bitmap;
    .restart local v56    # "bmpB":Landroid/graphics/Bitmap;
    :goto_19
    if-eqz v7, :cond_a

    .line 660
    :try_start_1f
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_18

    goto :goto_15

    .line 666
    :cond_a
    :goto_1a
    return-object v8

    .line 495
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v33    # "straddr3":Ljava/lang/String;
    .end local v35    # "newbmpF":Landroid/graphics/Bitmap;
    .end local v36    # "tmpID":Ljava/lang/String;
    .end local v37    # "DTFile":Ljava/lang/String;
    .end local v38    # "Fos":Ljava/io/OutputStream;
    .end local v39    # "bmpF":Landroid/graphics/Bitmap;
    .end local v40    # "Fcv":Landroid/graphics/Canvas;
    .end local v41    # "straddr1":Ljava/lang/String;
    .end local v42    # "BcvWidth":I
    .end local v43    # "BcvHeight":I
    .end local v44    # "mPaint":Landroid/graphics/Paint;
    .end local v45    # "FontMultB":F
    .end local v46    # "tmpstr":Ljava/lang/String;
    .end local v50    # "newbmpB":Landroid/graphics/Bitmap;
    .end local v52    # "Bcv":Landroid/graphics/Canvas;
    .end local v53    # "bmp":Landroid/graphics/Bitmap;
    .end local v54    # "fisB":Ljava/io/FileInputStream;
    .end local v55    # "bmpBB":Landroid/graphics/Bitmap;
    .end local v56    # "bmpB":Landroid/graphics/Bitmap;
    .local v2, "mPaint":Landroid/graphics/Paint;
    .local v4, "bmpF":Landroid/graphics/Bitmap;
    .local v7, "straddr3":Ljava/lang/String;
    .local v8, "newbmpF":Landroid/graphics/Bitmap;
    .local v9, "i":I
    .local v14, "straddr1":Ljava/lang/String;
    .local v15, "Fcv":Landroid/graphics/Canvas;
    :cond_b
    move-object/from16 v44, v2

    move-object/from16 v39, v4

    move-object/from16 v33, v7

    move-object/from16 v35, v8

    move-object/from16 v41, v14

    move-object/from16 v40, v15

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/16 v14, 0x1f

    const v15, 0x43a48000    # 329.0f

    const/high16 v16, 0x43520000    # 210.0f

    const v18, 0x4814c540    # 152341.0f

    .line 495
    .end local v2    # "mPaint":Landroid/graphics/Paint;
    .end local v4    # "bmpF":Landroid/graphics/Bitmap;
    .end local v7    # "straddr3":Ljava/lang/String;
    .end local v8    # "newbmpF":Landroid/graphics/Bitmap;
    .end local v14    # "straddr1":Ljava/lang/String;
    .end local v15    # "Fcv":Landroid/graphics/Canvas;
    .restart local v33    # "straddr3":Ljava/lang/String;
    .restart local v35    # "newbmpF":Landroid/graphics/Bitmap;
    .restart local v39    # "bmpF":Landroid/graphics/Bitmap;
    .restart local v40    # "Fcv":Landroid/graphics/Canvas;
    .restart local v41    # "straddr1":Ljava/lang/String;
    .restart local v44    # "mPaint":Landroid/graphics/Paint;
    const/16 v17, 0x0

    .line 495
    .local v17, "j":I
    move/from16 v2, v17

    .line 495
    .end local v17    # "j":I
    .local v2, "j":I
    :goto_1b
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    add-int/lit8 v4, v17, -0x3

    if-lt v2, v4, :cond_c

    .line 494
    .end local v2    # "j":I
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v10, v31

    move-object/from16 v7, v33

    move-object/from16 v8, v35

    move-object/from16 v4, v39

    move-object/from16 v15, v40

    move-object/from16 v14, v41

    move-object/from16 v2, v44

    goto/16 :goto_3

    .line 496
    .restart local v2    # "j":I
    :cond_c
    invoke-virtual {v1, v9, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    .line 497
    .local v4, "colorflage":I
    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v17

    .line 498
    .local v17, "A":I
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v7

    .line 499
    .local v7, "R":I
    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v8

    .line 500
    .local v8, "G":I
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    .line 501
    .local v10, "B":I
    const/16 v14, 0xec

    if-le v7, v14, :cond_e

    if-le v8, v14, :cond_e

    if-gt v10, v14, :cond_d

    goto :goto_1c

    .line 495
    :cond_d
    move-object/from16 v1, v40

    goto :goto_1d

    .line 504
    :cond_e
    :goto_1c
    invoke-virtual {v1, v9, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v14

    invoke-virtual {v6, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 505
    const/high16 v14, 0x43530000    # 211.0f

    mul-float/2addr v14, v11

    int-to-float v15, v9

    add-float/2addr v14, v15

    const/high16 v15, 0x41f80000    # 31.0f

    mul-float/2addr v15, v13

    int-to-float v1, v2

    add-float/2addr v15, v1

    move-object/from16 v1, v40

    invoke-virtual {v1, v14, v15, v6}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 495
    .end local v40    # "Fcv":Landroid/graphics/Canvas;
    .local v1, "Fcv":Landroid/graphics/Canvas;
    :goto_1d
    add-int/lit8 v2, v2, 0x1

    .line 495
    .end local v4    # "colorflage":I
    .end local v7    # "R":I
    .end local v8    # "G":I
    .end local v10    # "B":I
    .end local v17    # "A":I
    move-object/from16 v40, v1

    move-object/from16 v1, p4

    const/4 v4, 0x1

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/16 v14, 0x1f

    const v15, 0x43a48000    # 329.0f

    goto :goto_1b

    .line 445
    .end local v1    # "Fcv":Landroid/graphics/Canvas;
    .end local v30    # "FontMultf":F
    .end local v31    # "matrix":Landroid/graphics/Matrix;
    .end local v33    # "straddr3":Ljava/lang/String;
    .end local v35    # "newbmpF":Landroid/graphics/Bitmap;
    .end local v39    # "bmpF":Landroid/graphics/Bitmap;
    .end local v41    # "straddr1":Ljava/lang/String;
    .end local v44    # "mPaint":Landroid/graphics/Paint;
    .local v2, "mPaint":Landroid/graphics/Paint;
    .local v4, "bmpF":Landroid/graphics/Bitmap;
    .local v6, "i":I
    .local v7, "straddr3":Ljava/lang/String;
    .local v8, "newbmpF":Landroid/graphics/Bitmap;
    .local v9, "FontMultf":F
    .restart local v14    # "straddr1":Ljava/lang/String;
    .restart local v15    # "Fcv":Landroid/graphics/Canvas;
    :cond_f
    move-object/from16 v44, v2

    move-object/from16 v39, v4

    move-object/from16 v33, v7

    move-object/from16 v35, v8

    move/from16 v30, v9

    move-object/from16 v41, v14

    move-object v1, v15

    const/high16 v16, 0x43520000    # 210.0f

    const v18, 0x4814c540    # 152341.0f

    .line 445
    .end local v2    # "mPaint":Landroid/graphics/Paint;
    .end local v4    # "bmpF":Landroid/graphics/Bitmap;
    .end local v7    # "straddr3":Ljava/lang/String;
    .end local v8    # "newbmpF":Landroid/graphics/Bitmap;
    .end local v9    # "FontMultf":F
    .end local v14    # "straddr1":Ljava/lang/String;
    .end local v15    # "Fcv":Landroid/graphics/Canvas;
    .restart local v1    # "Fcv":Landroid/graphics/Canvas;
    .restart local v30    # "FontMultf":F
    .restart local v33    # "straddr3":Ljava/lang/String;
    .restart local v35    # "newbmpF":Landroid/graphics/Bitmap;
    .restart local v39    # "bmpF":Landroid/graphics/Bitmap;
    .restart local v41    # "straddr1":Ljava/lang/String;
    .restart local v44    # "mPaint":Landroid/graphics/Paint;
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 447
    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    add-double v24, v24, v7

    .line 448
    goto :goto_1e

    .line 451
    :cond_10
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    add-double v24, v24, v7

    .line 453
    :goto_1e
    const-wide/high16 v7, 0x4026000000000000L    # 11.0

    cmpg-double v2, v24, v7

    if-gtz v2, :cond_11

    .line 455
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v41

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 455
    .end local v41    # "straddr1":Ljava/lang/String;
    .local v4, "straddr1":Ljava/lang/String;
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 456
    .end local v4    # "straddr1":Ljava/lang/String;
    .local v2, "straddr1":Ljava/lang/String;
    nop

    .line 443
    move-object v14, v2

    .line 443
    .end local v2    # "straddr1":Ljava/lang/String;
    .end local v33    # "straddr3":Ljava/lang/String;
    .restart local v7    # "straddr3":Ljava/lang/String;
    .restart local v14    # "straddr1":Ljava/lang/String;
    :goto_1f
    move-object/from16 v7, v33

    goto :goto_20

    .line 459
    .end local v7    # "straddr3":Ljava/lang/String;
    .end local v14    # "straddr1":Ljava/lang/String;
    .restart local v33    # "straddr3":Ljava/lang/String;
    .restart local v41    # "straddr1":Ljava/lang/String;
    :cond_11
    move-object/from16 v4, v41

    .line 459
    .end local v41    # "straddr1":Ljava/lang/String;
    .restart local v4    # "straddr1":Ljava/lang/String;
    const-wide/high16 v7, 0x4036000000000000L    # 22.0

    cmpg-double v2, v24, v7

    if-gtz v2, :cond_12

    .line 461
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 462
    .end local v5    # "straddr2":Ljava/lang/String;
    .local v2, "straddr2":Ljava/lang/String;
    nop

    .line 443
    move-object v5, v2

    move-object v14, v4

    goto :goto_1f

    .line 465
    .end local v2    # "straddr2":Ljava/lang/String;
    .restart local v5    # "straddr2":Ljava/lang/String;
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v7, v33

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 465
    .end local v33    # "straddr3":Ljava/lang/String;
    .restart local v7    # "straddr3":Ljava/lang/String;
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 443
    .end local v7    # "straddr3":Ljava/lang/String;
    .local v2, "straddr3":Ljava/lang/String;
    move-object v7, v2

    move-object v14, v4

    .line 443
    .end local v2    # "straddr3":Ljava/lang/String;
    .end local v4    # "straddr1":Ljava/lang/String;
    .restart local v7    # "straddr3":Ljava/lang/String;
    .restart local v14    # "straddr1":Ljava/lang/String;
    :goto_20
    add-int/lit8 v6, v6, 0x1

    move-object v15, v1

    move/from16 v10, v29

    move/from16 v9, v30

    move-object/from16 v8, v35

    move-object/from16 v4, v39

    move-object/from16 v2, v44

    move-object/from16 v1, p4

    goto/16 :goto_2
.end method

.method public static compositeImages(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "srcBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "dstBitmap"    # Landroid/graphics/Bitmap;

    .line 58
    const/4 v0, 0x0

    .line 61
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 62
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    .line 61
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 63
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 64
    .local v1, "paint":Landroid/graphics/Paint;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 66
    .local v2, "canvas":Landroid/graphics/Canvas;
    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 67
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 68
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    invoke-virtual {v2, p1, v3, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 70
    return-object v0
.end method

.method public static saveMyBitmap(Ljava/lang/String;)V
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .line 39
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/wltlib/zp.bmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, "fis":Ljava/io/FileInputStream;
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 41
    .local v1, "mBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 42
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 44
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 46
    :cond_0
    const/4 v3, 0x0

    .line 47
    .local v3, "fOut":Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    .line 48
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 49
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 50
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v0    # "fis":Ljava/io/FileInputStream;
    .end local v1    # "mBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_0

    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 54
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
