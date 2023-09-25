.class public Lorg/achartengine/chart/DialChart;
.super Lorg/achartengine/chart/RoundChart;
.source "DialChart.java"


# static fields
.field private static final NEEDLE_RADIUS:I = 0xa


# instance fields
.field private mRenderer:Lorg/achartengine/renderer/DialRenderer;


# direct methods
.method public constructor <init>(Lorg/achartengine/model/CategorySeries;Lorg/achartengine/renderer/DialRenderer;)V
    .locals 0
    .param p1, "dataset"    # Lorg/achartengine/model/CategorySeries;
    .param p2, "renderer"    # Lorg/achartengine/renderer/DialRenderer;

    .line 45
    invoke-direct {p0, p1, p2}, Lorg/achartengine/chart/RoundChart;-><init>(Lorg/achartengine/model/CategorySeries;Lorg/achartengine/renderer/DefaultRenderer;)V

    .line 46
    iput-object p2, p0, Lorg/achartengine/chart/DialChart;->mRenderer:Lorg/achartengine/renderer/DialRenderer;

    .line 47
    return-void
.end method

.method private drawNeedle(Landroid/graphics/Canvas;DIIDZLandroid/graphics/Paint;)V
    .locals 31
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "angle"    # D
    .param p4, "centerX"    # I
    .param p5, "centerY"    # I
    .param p6, "radius"    # D
    .param p8, "arrow"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;

    move/from16 v2, p4

    move/from16 v3, p5

    .line 212
    move-object/from16 v12, p9

    const-wide v6, 0x4056800000000000L    # 90.0

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    .line 213
    .local v13, "diff":D
    sub-double v6, p2, v13

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    mul-double/2addr v6, v8

    double-to-int v15, v6

    .line 214
    .local v15, "needleSinValue":I
    sub-double v6, p2, v13

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v8, v6

    double-to-int v11, v8

    .line 215
    .local v11, "needleCosValue":I
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v6, v6, p6

    double-to-int v10, v6

    .line 216
    .local v10, "needleX":I
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v6, v6, p6

    double-to-int v9, v6

    .line 217
    .local v9, "needleY":I
    add-int v8, v2, v10

    .line 218
    .local v8, "needleCenterX":I
    add-int v7, v3, v9

    .line 220
    .local v7, "needleCenterY":I
    const/16 v16, 0x4

    const/16 v17, 0x3

    const/16 v18, 0x2

    const/16 v19, 0x0

    if-eqz p8, :cond_0

    .line 221
    const-wide v20, 0x3feb333333333333L    # 0.85

    mul-double v22, p6, v20

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    move/from16 v26, v7

    mul-double v6, v22, v24

    .line 221
    .end local v7    # "needleCenterY":I
    .local v26, "needleCenterY":I
    double-to-int v6, v6

    add-int v22, v2, v6

    .line 222
    .local v22, "arrowBaseX":I
    mul-double v6, p6, v20

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v6, v6, v20

    double-to-int v6, v6

    add-int v20, v3, v6

    .line 223
    .local v20, "arrowBaseY":I
    const/4 v6, 0x6

    new-array v6, v6, [F

    sub-int v7, v22, v15

    int-to-float v7, v7

    aput v7, v6, v19

    sub-int v7, v20, v11

    int-to-float v7, v7

    const/16 v19, 0x1

    aput v7, v6, v19

    int-to-float v7, v8

    aput v7, v6, v18

    move/from16 v7, v26

    int-to-float v0, v7

    .line 223
    .end local v26    # "needleCenterY":I
    .restart local v7    # "needleCenterY":I
    aput v0, v6, v17

    add-int v0, v22, v15

    int-to-float v0, v0

    aput v0, v6, v16

    add-int v0, v20, v11

    int-to-float v0, v0

    const/4 v1, 0x5

    aput v0, v6, v1

    move-object v0, v6

    .line 225
    .local v0, "points":[F
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    .line 226
    .local v1, "width":F
    const/high16 v6, 0x40a00000    # 5.0f

    invoke-virtual {v12, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 227
    int-to-float v6, v2

    move-object/from16 v27, v0

    int-to-float v0, v3

    .line 227
    .end local v0    # "points":[F
    .local v27, "points":[F
    int-to-float v4, v8

    int-to-float v5, v7

    move/from16 v16, v6

    move-wide/from16 v28, v13

    move/from16 v13, v19

    move-object/from16 v6, p1

    .line 227
    .end local v13    # "diff":D
    .local v28, "diff":D
    move v14, v7

    move/from16 v7, v16

    .line 227
    .end local v7    # "needleCenterY":I
    .local v14, "needleCenterY":I
    move/from16 v30, v8

    move v8, v0

    .line 227
    .end local v8    # "needleCenterX":I
    .local v30, "needleCenterX":I
    move v0, v9

    move v9, v4

    .line 227
    .end local v9    # "needleY":I
    .local v0, "needleY":I
    move v4, v10

    move v10, v5

    .line 227
    .end local v10    # "needleX":I
    .local v4, "needleX":I
    move v5, v11

    move-object v11, v12

    .line 227
    .end local v11    # "needleCosValue":I
    .local v5, "needleCosValue":I
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 228
    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 229
    .end local v1    # "width":F
    .end local v20    # "arrowBaseY":I
    .end local v22    # "arrowBaseX":I
    nop

    .line 230
    move/from16 v6, v30

    goto :goto_0

    .line 230
    .end local v0    # "needleY":I
    .end local v4    # "needleX":I
    .end local v5    # "needleCosValue":I
    .end local v14    # "needleCenterY":I
    .end local v27    # "points":[F
    .end local v28    # "diff":D
    .end local v30    # "needleCenterX":I
    .restart local v7    # "needleCenterY":I
    .restart local v8    # "needleCenterX":I
    .restart local v9    # "needleY":I
    .restart local v10    # "needleX":I
    .restart local v11    # "needleCosValue":I
    .restart local v13    # "diff":D
    :cond_0
    move/from16 v30, v8

    move v0, v9

    move v4, v10

    move v5, v11

    move-wide/from16 v28, v13

    const/4 v13, 0x1

    move v14, v7

    .line 230
    .end local v7    # "needleCenterY":I
    .end local v8    # "needleCenterX":I
    .end local v9    # "needleY":I
    .end local v10    # "needleX":I
    .end local v11    # "needleCosValue":I
    .end local v13    # "diff":D
    .restart local v0    # "needleY":I
    .restart local v4    # "needleX":I
    .restart local v5    # "needleCosValue":I
    .restart local v14    # "needleCenterY":I
    .restart local v28    # "diff":D
    .restart local v30    # "needleCenterX":I
    const/4 v1, 0x6

    new-array v1, v1, [F

    sub-int v6, v2, v15

    int-to-float v6, v6

    aput v6, v1, v19

    sub-int v6, v3, v5

    int-to-float v6, v6

    aput v6, v1, v13

    move/from16 v6, v30

    int-to-float v7, v6

    .line 230
    .end local v30    # "needleCenterX":I
    .local v6, "needleCenterX":I
    aput v7, v1, v18

    int-to-float v7, v14

    aput v7, v1, v17

    add-int v7, v2, v15

    int-to-float v7, v7

    aput v7, v1, v16

    add-int v7, v3, v5

    int-to-float v7, v7

    const/4 v8, 0x5

    aput v7, v1, v8

    move-object/from16 v27, v1

    .line 230
    .restart local v27    # "points":[F
    :goto_0
    move-object/from16 v1, v27

    .line 233
    .end local v27    # "points":[F
    .local v1, "points":[F
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-virtual {v7, v8, v1, v12, v13}, Lorg/achartengine/chart/DialChart;->drawPath(Landroid/graphics/Canvas;[FLandroid/graphics/Paint;Z)V

    .line 234
    return-void
.end method

.method private drawTicks(Landroid/graphics/Canvas;DDDDIIDDDLandroid/graphics/Paint;Z)V
    .locals 26
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "min"    # D
    .param p4, "max"    # D
    .param p6, "minAngle"    # D
    .param p8, "maxAngle"    # D
    .param p10, "centerX"    # I
    .param p11, "centerY"    # I
    .param p12, "longRadius"    # D
    .param p14, "shortRadius"    # D
    .param p16, "ticks"    # D
    .param p18, "paint"    # Landroid/graphics/Paint;
    .param p19, "labels"    # Z

    move/from16 v0, p10

    move/from16 v1, p11

    move-object/from16 v12, p18

    .line 175
    move-wide/from16 v6, p2

    .line 175
    .local v6, "i":D
    :goto_0
    move-wide v10, v6

    .line 175
    .end local v6    # "i":D
    .local v10, "i":D
    cmpg-double v6, v10, p4

    if-gtz v6, :cond_3

    .line 176
    move-object/from16 v13, p0

    move-wide v14, v10

    move-wide/from16 v16, p6

    move-wide/from16 v18, p8

    move-wide/from16 v20, p2

    move-wide/from16 v22, p4

    invoke-direct/range {v13 .. v23}, Lorg/achartengine/chart/DialChart;->getAngleForValue(DDDDD)D

    move-result-wide v13

    .line 177
    .local v13, "angle":D
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    .line 178
    .local v15, "sinValue":D
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    .line 179
    .local v17, "cosValue":D
    int-to-float v6, v0

    mul-double v7, p14, v15

    double-to-float v7, v7

    add-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 180
    .local v9, "x1":I
    int-to-float v6, v1

    mul-double v7, p14, v17

    double-to-float v7, v7

    add-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 181
    .local v8, "y1":I
    int-to-float v6, v0

    mul-double v4, p12, v15

    double-to-float v4, v4

    add-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 182
    .local v4, "x2":I
    int-to-float v5, v1

    mul-double v6, p12, v17

    double-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 183
    .local v5, "y2":I
    int-to-float v7, v9

    int-to-float v6, v8

    int-to-float v0, v4

    int-to-float v1, v5

    move/from16 v19, v6

    move-object/from16 v6, p1

    move v2, v8

    move/from16 v8, v19

    .line 183
    .end local v8    # "y1":I
    .local v2, "y1":I
    move v3, v9

    move v9, v0

    .line 183
    .end local v9    # "x1":I
    .local v3, "x1":I
    move-wide/from16 v24, v13

    move-wide v13, v10

    move v10, v1

    .line 183
    .end local v10    # "i":D
    .local v13, "i":D
    .local v24, "angle":D
    move-object v11, v12

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 184
    if-eqz p19, :cond_2

    .line 185
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 186
    if-gt v3, v4, :cond_0

    .line 187
    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 189
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "text":Ljava/lang/String;
    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    double-to-long v8, v13

    cmp-long v10, v6, v8

    if-nez v10, :cond_1

    .line 191
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    double-to-long v7, v13

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 193
    :cond_1
    int-to-float v6, v3

    int-to-float v7, v2

    move-object/from16 v8, p1

    invoke-virtual {v8, v1, v6, v7, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 193
    .end local v1    # "text":Ljava/lang/String;
    .end local v2    # "y1":I
    .end local v3    # "x1":I
    .end local v4    # "x2":I
    .end local v5    # "y2":I
    .end local v15    # "sinValue":D
    .end local v17    # "cosValue":D
    .end local v24    # "angle":D
    goto :goto_1

    .line 175
    :cond_2
    move-object/from16 v8, p1

    :goto_1
    add-double v6, v13, p16

    .line 175
    .end local v13    # "i":D
    .restart local v6    # "i":D
    move/from16 v0, p10

    move/from16 v1, p11

    goto/16 :goto_0

    .line 196
    .end local v6    # "i":D
    :cond_3
    move-object/from16 v8, p1

    return-void
.end method

.method private getAngleForValue(DDDDD)D
    .locals 6
    .param p1, "value"    # D
    .param p3, "minAngle"    # D
    .param p5, "maxAngle"    # D
    .param p7, "min"    # D
    .param p9, "max"    # D

    .line 150
    sub-double v0, p5, p3

    .line 151
    .local v0, "angleDiff":D
    sub-double v2, p9, p7

    .line 152
    .local v2, "diff":D
    sub-double v4, p1, p7

    mul-double/2addr v4, v0

    div-double/2addr v4, v2

    add-double/2addr v4, p3

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    return-wide v4
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V
    .locals 48
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "paint"    # Landroid/graphics/Paint;

    move-object/from16 v14, p0

    .line 61
    move-object/from16 v15, p6

    iget-object v0, v14, Lorg/achartengine/chart/DialChart;->mRenderer:Lorg/achartengine/renderer/DialRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/DialRenderer;->isAntialiasing()Z

    move-result v0

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 63
    iget-object v0, v14, Lorg/achartengine/chart/DialChart;->mRenderer:Lorg/achartengine/renderer/DialRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/DialRenderer;->getLabelsTextSize()F

    move-result v0

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 64
    iget-object v0, v14, Lorg/achartengine/chart/DialChart;->mRenderer:Lorg/achartengine/renderer/DialRenderer;

    div-int/lit8 v1, p5, 0x5

    const/4 v2, 0x0

    invoke-virtual {v14, v0, v1, v2}, Lorg/achartengine/chart/DialChart;->getLegendSize(Lorg/achartengine/renderer/DefaultRenderer;IF)I

    move-result v12

    .line 65
    .local v12, "legendSize":I
    move/from16 v20, p2

    .line 66
    .local v20, "left":I
    move/from16 v21, p3

    .line 67
    .local v21, "top":I
    add-int v22, p2, p4

    .line 69
    .local v22, "right":I
    iget-object v0, v14, Lorg/achartengine/chart/DialChart;->mDataset:Lorg/achartengine/model/CategorySeries;

    invoke-virtual {v0}, Lorg/achartengine/model/CategorySeries;->getItemCount()I

    move-result v13

    .line 70
    .local v13, "sLength":I
    new-array v11, v13, [Ljava/lang/String;

    .line 71
    .local v11, "titles":[Ljava/lang/String;
    const/16 v23, 0x0

    move/from16 v0, v23

    .line 71
    .local v0, "i":I
    :goto_0
    if-ge v0, v13, :cond_0

    .line 72
    iget-object v1, v14, Lorg/achartengine/chart/DialChart;->mDataset:Lorg/achartengine/model/CategorySeries;

    invoke-virtual {v1, v0}, Lorg/achartengine/model/CategorySeries;->getCategory(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v0

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    .end local v0    # "i":I
    :cond_0
    iget-object v0, v14, Lorg/achartengine/chart/DialChart;->mRenderer:Lorg/achartengine/renderer/DialRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/DialRenderer;->isFitLegend()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v2, v14, Lorg/achartengine/chart/DialChart;->mRenderer:Lorg/achartengine/renderer/DialRenderer;

    const/16 v16, 0x1

    move-object v0, v14

    move-object/from16 v1, p1

    move-object v3, v11

    move/from16 v4, v20

    move/from16 v5, v22

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move v9, v12

    move-object v10, v15

    move-object/from16 v24, v11

    move/from16 v11, v16

    .line 76
    .end local v11    # "titles":[Ljava/lang/String;
    .local v24, "titles":[Ljava/lang/String;
    invoke-virtual/range {v0 .. v11}, Lorg/achartengine/chart/DialChart;->drawLegend(Landroid/graphics/Canvas;Lorg/achartengine/renderer/DefaultRenderer;[Ljava/lang/String;IIIIIILandroid/graphics/Paint;Z)I

    move-result v0

    .line 79
    .end local v12    # "legendSize":I
    .local v0, "legendSize":I
    move/from16 v25, v0

    goto :goto_1

    .line 79
    .end local v0    # "legendSize":I
    .end local v24    # "titles":[Ljava/lang/String;
    .restart local v11    # "titles":[Ljava/lang/String;
    .restart local v12    # "legendSize":I
    :cond_1
    move-object/from16 v24, v11

    move/from16 v25, v12

    .line 79
    .end local v11    # "titles":[Ljava/lang/String;
    .end local v12    # "legendSize":I
    .restart local v24    # "titles":[Ljava/lang/String;
    .local v25, "legendSize":I
    :goto_1
    add-int v0, p3, p5

    sub-int v26, v0, v25

    .line 80
    .local v26, "bottom":I
    iget-object v1, v14, Lorg/achartengine/chart/DialChart;->mRenderer:Lorg/achartengine/renderer/DialRenderer;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v14

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object v7, v15

    invoke-virtual/range {v0 .. v9}, Lorg/achartengine/chart/DialChart;->drawBackground(Lorg/achartengine/renderer/DefaultRenderer;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 82
    sub-int v0, v22, v20

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int v1, v26, v21

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 83
    .local v12, "mRadius":I
    int-to-double v0, v12

    const-wide v2, 0x3fd6666666666666L    # 0.35

    mul-double/2addr v0, v2

    iget-object v2, v14, Lorg/achartengine/chart/DialChart;->mRenderer:Lorg/achartengine/renderer/DialRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/DialRenderer;->getScale()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v11, v0

    .line 84
    .local v11, "radius":I
    iget v0, v14, Lorg/achartengine/chart/DialChart;->mCenterX:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_2

    .line 85
    add-int v0, v20, v22

    div-int/lit8 v0, v0, 0x2

    iput v0, v14, Lorg/achartengine/chart/DialChart;->mCenterX:I

    .line 87
    :cond_2
    iget v0, v14, Lorg/achartengine/chart/DialChart;->mCenterY:I

    if-ne v0, v1, :cond_3

    .line 88
    add-int v0, v26, v21

    div-int/lit8 v0, v0, 0x2

    iput v0, v14, Lorg/achartengine/chart/DialChart;->mCenterY:I

    .line 90
    :cond_3
    int-to-float v0, v11

    const v1, 0x3f666666    # 0.9f

    mul-float v10, v0, v1

    .line 91
    .local v10, "shortRadius":F
    int-to-float v0, v11

    const v1, 0x3f8ccccd    # 1.1f

    mul-float v8, v0, v1

    .line 92
    .local v8, "longRadius":F
    iget-object v0, v14, Lorg/achartengine/chart/DialChart;->mRenderer:Lorg/achartengine/renderer/DialRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/DialRenderer;->getMinValue()D

    move-result-wide v0

    .line 93
    .local v0, "min":D
    iget-object v2, v14, Lorg/achartengine/chart/DialChart;->mRenderer:Lorg/achartengine/renderer/DialRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/DialRenderer;->getMaxValue()D

    move-result-wide v2

    .line 94
    .local v2, "max":D
    iget-object v4, v14, Lorg/achartengine/chart/DialChart;->mRenderer:Lorg/achartengine/renderer/DialRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/DialRenderer;->getAngleMin()D

    move-result-wide v27

    .line 95
    .local v27, "angleMin":D
    iget-object v4, v14, Lorg/achartengine/chart/DialChart;->mRenderer:Lorg/achartengine/renderer/DialRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/DialRenderer;->getAngleMax()D

    move-result-wide v29

    .line 96
    .local v29, "angleMax":D
    iget-object v4, v14, Lorg/achartengine/chart/DialChart;->mRenderer:Lorg/achartengine/renderer/DialRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/DialRenderer;->isMinValueSet()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v14, Lorg/achartengine/chart/DialChart;->mRenderer:Lorg/achartengine/renderer/DialRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/DialRenderer;->isMaxValueSet()Z

    move-result v4

    if-nez v4, :cond_8

    .line 97
    :cond_4
    iget-object v4, v14, Lorg/achartengine/chart/DialChart;->mRenderer:Lorg/achartengine/renderer/DialRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/DialRenderer;->getSeriesRendererCount()I

    move-result v4

    .line 98
    .local v4, "count":I
    move-wide v5, v2

    move-wide v1, v0

    move/from16 v0, v23

    .line 98
    .end local v2    # "max":D
    .local v0, "i":I
    .local v1, "min":D
    .local v5, "max":D
    :goto_2
    if-ge v0, v4, :cond_7

    .line 99
    iget-object v3, v14, Lorg/achartengine/chart/DialChart;->mDataset:Lorg/achartengine/model/CategorySeries;

    move/from16 v31, v4

    invoke-virtual {v3, v0}, Lorg/achartengine/model/CategorySeries;->getValue(I)D

    move-result-wide v3

    .line 100
    .end local v4    # "count":I
    .local v3, "value":D
    .local v31, "count":I
    iget-object v7, v14, Lorg/achartengine/chart/DialChart;->mRenderer:Lorg/achartengine/renderer/DialRenderer;

    invoke-virtual {v7}, Lorg/achartengine/renderer/DialRenderer;->isMinValueSet()Z

    move-result v7

    if-nez v7, :cond_5

    .line 101
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    .line 103
    :cond_5
    iget-object v7, v14, Lorg/achartengine/chart/DialChart;->mRenderer:Lorg/achartengine/renderer/DialRenderer;

    invoke-virtual {v7}, Lorg/achartengine/renderer/DialRenderer;->isMaxValueSet()Z

    move-result v7

    if-nez v7, :cond_6

    .line 104
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    .line 98
    .end local v3    # "value":D
    :cond_6
    add-int/lit8 v0, v0, 0x1

    move/from16 v4, v31

    goto :goto_2

    .line 108
    .end local v0    # "i":I
    .end local v31    # "count":I
    :cond_7
    move-wide v0, v1

    move-wide v2, v5

    .line 108
    .end local v1    # "min":D
    .end local v5    # "max":D
    .local v0, "min":D
    .restart local v2    # "max":D
    :cond_8
    cmpl-double v4, v0, v2

    if-nez v4, :cond_9

    .line 109
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v4

    .line 110
    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v2, v4

    .line 113
    .end local v0    # "min":D
    .end local v2    # "max":D
    .local v31, "max":D
    .local v33, "min":D
    :cond_9
    move-wide/from16 v33, v0

    move-wide/from16 v31, v2

    iget-object v0, v14, Lorg/achartengine/chart/DialChart;->mRenderer:Lorg/achartengine/renderer/DialRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/DialRenderer;->getLabelsColor()I

    move-result v0

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    iget-object v0, v14, Lorg/achartengine/chart/DialChart;->mRenderer:Lorg/achartengine/renderer/DialRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/DialRenderer;->getMinorTicksSpacing()D

    move-result-wide v0

    .line 115
    .local v0, "minorTicks":D
    iget-object v2, v14, Lorg/achartengine/chart/DialChart;->mRenderer:Lorg/achartengine/renderer/DialRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/DialRenderer;->getMajorTicksSpacing()D

    move-result-wide v2

    .line 116
    .local v2, "majorTicks":D
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v6, v0, v4

    if-nez v6, :cond_a

    .line 117
    sub-double v6, v31, v33

    const-wide/high16 v16, 0x403e000000000000L    # 30.0

    div-double v6, v6, v16

    .line 119
    .end local v0    # "minorTicks":D
    .local v6, "minorTicks":D
    move-wide/from16 v35, v6

    goto :goto_3

    .line 119
    .end local v6    # "minorTicks":D
    .restart local v0    # "minorTicks":D
    :cond_a
    move-wide/from16 v35, v0

    .line 119
    .end local v0    # "minorTicks":D
    .local v35, "minorTicks":D
    :goto_3
    cmpl-double v0, v2, v4

    if-nez v0, :cond_b

    .line 120
    sub-double v0, v31, v33

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    div-double/2addr v0, v4

    .line 122
    .end local v2    # "majorTicks":D
    .local v0, "majorTicks":D
    move-wide/from16 v37, v0

    goto :goto_4

    .line 122
    .end local v0    # "majorTicks":D
    .restart local v2    # "majorTicks":D
    :cond_b
    move-wide/from16 v37, v2

    .line 122
    .end local v2    # "majorTicks":D
    .local v37, "majorTicks":D
    :goto_4
    iget v9, v14, Lorg/achartengine/chart/DialChart;->mCenterX:I

    iget v6, v14, Lorg/achartengine/chart/DialChart;->mCenterY:I

    float-to-double v4, v8

    int-to-double v2, v11

    const/16 v19, 0x0

    move-object v0, v14

    move-object/from16 v1, p1

    move-wide/from16 v16, v2

    move-wide/from16 v2, v33

    move-wide/from16 v39, v4

    move-wide/from16 v4, v31

    move/from16 v18, v6

    move-wide/from16 v6, v27

    move/from16 v41, v8

    move/from16 v42, v9

    move-wide/from16 v8, v29

    .line 122
    .end local v8    # "longRadius":F
    .local v41, "longRadius":F
    move/from16 v43, v10

    move/from16 v10, v42

    .line 122
    .end local v10    # "shortRadius":F
    .local v43, "shortRadius":F
    move/from16 v42, v11

    move/from16 v11, v18

    .line 122
    .end local v11    # "radius":I
    .local v42, "radius":I
    move/from16 v45, v12

    move/from16 v44, v13

    move-wide/from16 v12, v39

    .line 122
    .end local v12    # "mRadius":I
    .end local v13    # "sLength":I
    .local v44, "sLength":I
    .local v45, "mRadius":I
    move-wide/from16 v14, v16

    move-wide/from16 v16, v35

    move-object/from16 v18, p6

    invoke-direct/range {v0 .. v19}, Lorg/achartengine/chart/DialChart;->drawTicks(Landroid/graphics/Canvas;DDDDIIDDDLandroid/graphics/Paint;Z)V

    .line 124
    move-object/from16 v14, p0

    iget v10, v14, Lorg/achartengine/chart/DialChart;->mCenterX:I

    iget v11, v14, Lorg/achartengine/chart/DialChart;->mCenterY:I

    move/from16 v15, v41

    float-to-double v12, v15

    .line 124
    .end local v41    # "longRadius":F
    .local v15, "longRadius":F
    move/from16 v8, v43

    float-to-double v6, v8

    .line 124
    .end local v43    # "shortRadius":F
    .local v8, "shortRadius":F
    const/16 v19, 0x1

    move-object v0, v14

    move-wide/from16 v16, v6

    move-wide/from16 v6, v27

    move/from16 v46, v8

    move-wide/from16 v8, v29

    .line 124
    .end local v8    # "shortRadius":F
    .local v46, "shortRadius":F
    move/from16 v39, v15

    move-wide/from16 v14, v16

    .line 124
    .end local v15    # "longRadius":F
    .local v39, "longRadius":F
    move-wide/from16 v16, v37

    invoke-direct/range {v0 .. v19}, Lorg/achartengine/chart/DialChart;->drawTicks(Landroid/graphics/Canvas;DDDDIIDDDLandroid/graphics/Paint;Z)V

    .line 127
    move-object/from16 v12, p0

    iget-object v0, v12, Lorg/achartengine/chart/DialChart;->mRenderer:Lorg/achartengine/renderer/DialRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/DialRenderer;->getSeriesRendererCount()I

    move-result v13

    .line 128
    .local v13, "count":I
    move/from16 v0, v23

    .line 128
    .local v0, "i":I
    :goto_5
    move v11, v0

    .line 128
    .end local v0    # "i":I
    .local v11, "i":I
    if-ge v11, v13, :cond_d

    .line 129
    iget-object v0, v12, Lorg/achartengine/chart/DialChart;->mDataset:Lorg/achartengine/model/CategorySeries;

    invoke-virtual {v0, v11}, Lorg/achartengine/model/CategorySeries;->getValue(I)D

    move-result-wide v1

    move-object v0, v12

    move-wide/from16 v3, v27

    move-wide/from16 v5, v29

    move-wide/from16 v7, v33

    move-wide/from16 v9, v31

    invoke-direct/range {v0 .. v10}, Lorg/achartengine/chart/DialChart;->getAngleForValue(DDDDD)D

    move-result-wide v14

    .line 130
    .local v14, "angle":D
    iget-object v0, v12, Lorg/achartengine/chart/DialChart;->mRenderer:Lorg/achartengine/renderer/DialRenderer;

    invoke-virtual {v0, v11}, Lorg/achartengine/renderer/DialRenderer;->getSeriesRendererAt(I)Lorg/achartengine/renderer/SimpleSeriesRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getColor()I

    move-result v0

    move-object/from16 v10, p6

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    iget-object v0, v12, Lorg/achartengine/chart/DialChart;->mRenderer:Lorg/achartengine/renderer/DialRenderer;

    invoke-virtual {v0, v11}, Lorg/achartengine/renderer/DialRenderer;->getVisualTypeForIndex(I)Lorg/achartengine/renderer/DialRenderer$Type;

    move-result-object v0

    sget-object v1, Lorg/achartengine/renderer/DialRenderer$Type;->ARROW:Lorg/achartengine/renderer/DialRenderer$Type;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    move v8, v0

    goto :goto_6

    :cond_c
    move/from16 v8, v23

    .line 132
    .local v8, "type":Z
    :goto_6
    iget v4, v12, Lorg/achartengine/chart/DialChart;->mCenterX:I

    iget v5, v12, Lorg/achartengine/chart/DialChart;->mCenterY:I

    move/from16 v9, v46

    float-to-double v6, v9

    .line 132
    .end local v46    # "shortRadius":F
    .local v9, "shortRadius":F
    move-object v0, v12

    move-object/from16 v1, p1

    move-wide v2, v14

    move/from16 v16, v9

    move-object v9, v10

    .line 132
    .end local v9    # "shortRadius":F
    .local v16, "shortRadius":F
    invoke-direct/range {v0 .. v9}, Lorg/achartengine/chart/DialChart;->drawNeedle(Landroid/graphics/Canvas;DIIDZLandroid/graphics/Paint;)V

    .line 128
    .end local v8    # "type":Z
    .end local v14    # "angle":D
    add-int/lit8 v0, v11, 0x1

    .line 128
    .end local v11    # "i":I
    .restart local v0    # "i":I
    move/from16 v46, v16

    goto :goto_5

    .line 134
    .end local v0    # "i":I
    .end local v16    # "shortRadius":F
    .restart local v46    # "shortRadius":F
    :cond_d
    move-object/from16 v10, p6

    move/from16 v16, v46

    .line 134
    .end local v46    # "shortRadius":F
    .restart local v16    # "shortRadius":F
    iget-object v2, v12, Lorg/achartengine/chart/DialChart;->mRenderer:Lorg/achartengine/renderer/DialRenderer;

    const/4 v11, 0x0

    move-object v0, v12

    move-object/from16 v1, p1

    move-object/from16 v3, v24

    move/from16 v4, v20

    move/from16 v5, v22

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, v25

    invoke-virtual/range {v0 .. v11}, Lorg/achartengine/chart/DialChart;->drawLegend(Landroid/graphics/Canvas;Lorg/achartengine/renderer/DefaultRenderer;[Ljava/lang/String;IIIIIILandroid/graphics/Paint;Z)I

    .line 135
    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/achartengine/chart/DialChart;->drawTitle(Landroid/graphics/Canvas;IIILandroid/graphics/Paint;)V

    .line 136
    return-void
.end method
