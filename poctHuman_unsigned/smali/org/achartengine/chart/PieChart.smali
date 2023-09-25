.class public Lorg/achartengine/chart/PieChart;
.super Lorg/achartengine/chart/RoundChart;
.source "PieChart.java"


# instance fields
.field private mPieMapper:Lorg/achartengine/chart/PieMapper;


# direct methods
.method public constructor <init>(Lorg/achartengine/model/CategorySeries;Lorg/achartengine/renderer/DefaultRenderer;)V
    .locals 1
    .param p1, "dataset"    # Lorg/achartengine/model/CategorySeries;
    .param p2, "renderer"    # Lorg/achartengine/renderer/DefaultRenderer;

    .line 48
    invoke-direct {p0, p1, p2}, Lorg/achartengine/chart/RoundChart;-><init>(Lorg/achartengine/model/CategorySeries;Lorg/achartengine/renderer/DefaultRenderer;)V

    .line 49
    new-instance v0, Lorg/achartengine/chart/PieMapper;

    invoke-direct {v0}, Lorg/achartengine/chart/PieMapper;-><init>()V

    iput-object v0, p0, Lorg/achartengine/chart/PieChart;->mPieMapper:Lorg/achartengine/chart/PieMapper;

    .line 50
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V
    .locals 44
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "paint"    # Landroid/graphics/Paint;

    move-object/from16 v15, p0

    .line 64
    move-object/from16 v14, p6

    iget-object v0, v15, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/DefaultRenderer;->isAntialiasing()Z

    move-result v0

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 66
    iget-object v0, v15, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/DefaultRenderer;->getLabelsTextSize()F

    move-result v0

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 67
    iget-object v0, v15, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    div-int/lit8 v1, p5, 0x5

    const/4 v2, 0x0

    invoke-virtual {v15, v0, v1, v2}, Lorg/achartengine/chart/PieChart;->getLegendSize(Lorg/achartengine/renderer/DefaultRenderer;IF)I

    move-result v12

    .line 68
    .local v12, "legendSize":I
    move/from16 v17, p2

    .line 69
    .local v17, "left":I
    move/from16 v18, p3

    .line 70
    .local v18, "top":I
    add-int v19, p2, p4

    .line 71
    .local v19, "right":I
    iget-object v0, v15, Lorg/achartengine/chart/PieChart;->mDataset:Lorg/achartengine/model/CategorySeries;

    invoke-virtual {v0}, Lorg/achartengine/model/CategorySeries;->getItemCount()I

    move-result v13

    .line 72
    .local v13, "sLength":I
    const-wide/16 v0, 0x0

    .line 73
    .local v0, "total":D
    new-array v11, v13, [Ljava/lang/String;

    .line 74
    .local v11, "titles":[Ljava/lang/String;
    const/16 v16, 0x0

    move-wide/from16 v20, v0

    move/from16 v0, v16

    .line 74
    .local v0, "i":I
    .local v20, "total":D
    :goto_0
    if-ge v0, v13, :cond_0

    .line 75
    iget-object v1, v15, Lorg/achartengine/chart/PieChart;->mDataset:Lorg/achartengine/model/CategorySeries;

    invoke-virtual {v1, v0}, Lorg/achartengine/model/CategorySeries;->getValue(I)D

    move-result-wide v1

    add-double v20, v20, v1

    .line 76
    iget-object v1, v15, Lorg/achartengine/chart/PieChart;->mDataset:Lorg/achartengine/model/CategorySeries;

    invoke-virtual {v1, v0}, Lorg/achartengine/model/CategorySeries;->getCategory(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v0

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    .end local v0    # "i":I
    :cond_0
    iget-object v0, v15, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/DefaultRenderer;->isFitLegend()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v2, v15, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    const/16 v22, 0x1

    move-object v0, v15

    move-object/from16 v1, p1

    move-object v3, v11

    move/from16 v4, v17

    move/from16 v5, v19

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move v9, v12

    move-object v10, v14

    move-object/from16 v23, v11

    move/from16 v11, v22

    .line 79
    .end local v11    # "titles":[Ljava/lang/String;
    .local v23, "titles":[Ljava/lang/String;
    invoke-virtual/range {v0 .. v11}, Lorg/achartengine/chart/PieChart;->drawLegend(Landroid/graphics/Canvas;Lorg/achartengine/renderer/DefaultRenderer;[Ljava/lang/String;IIIIIILandroid/graphics/Paint;Z)I

    move-result v0

    .line 82
    .end local v12    # "legendSize":I
    .local v0, "legendSize":I
    move/from16 v22, v0

    goto :goto_1

    .line 82
    .end local v0    # "legendSize":I
    .end local v23    # "titles":[Ljava/lang/String;
    .restart local v11    # "titles":[Ljava/lang/String;
    .restart local v12    # "legendSize":I
    :cond_1
    move-object/from16 v23, v11

    move/from16 v22, v12

    .line 82
    .end local v11    # "titles":[Ljava/lang/String;
    .end local v12    # "legendSize":I
    .local v22, "legendSize":I
    .restart local v23    # "titles":[Ljava/lang/String;
    :goto_1
    add-int v0, p3, p5

    sub-int v24, v0, v22

    .line 83
    .local v24, "bottom":I
    iget-object v1, v15, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v15

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object v7, v14

    invoke-virtual/range {v0 .. v9}, Lorg/achartengine/chart/PieChart;->drawBackground(Lorg/achartengine/renderer/DefaultRenderer;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 85
    iget-object v0, v15, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/DefaultRenderer;->getStartAngle()F

    move-result v0

    .line 86
    .local v0, "currentAngle":F
    sub-int v1, v19, v17

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int v2, v24, v18

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 87
    .local v12, "mRadius":I
    int-to-double v1, v12

    const-wide v3, 0x3fd6666666666666L    # 0.35

    mul-double/2addr v1, v3

    iget-object v3, v15, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v3}, Lorg/achartengine/renderer/DefaultRenderer;->getScale()F

    move-result v3

    float-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v11, v1

    .line 89
    .local v11, "radius":I
    iget v1, v15, Lorg/achartengine/chart/PieChart;->mCenterX:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_2

    .line 90
    add-int v1, v17, v19

    div-int/lit8 v1, v1, 0x2

    iput v1, v15, Lorg/achartengine/chart/PieChart;->mCenterX:I

    .line 92
    :cond_2
    iget v1, v15, Lorg/achartengine/chart/PieChart;->mCenterY:I

    if-ne v1, v2, :cond_3

    .line 93
    add-int v1, v24, v18

    div-int/lit8 v1, v1, 0x2

    iput v1, v15, Lorg/achartengine/chart/PieChart;->mCenterY:I

    .line 97
    :cond_3
    iget-object v1, v15, Lorg/achartengine/chart/PieChart;->mPieMapper:Lorg/achartengine/chart/PieMapper;

    iget v2, v15, Lorg/achartengine/chart/PieChart;->mCenterX:I

    iget v3, v15, Lorg/achartengine/chart/PieChart;->mCenterY:I

    invoke-virtual {v1, v11, v2, v3}, Lorg/achartengine/chart/PieMapper;->setDimensions(III)V

    .line 98
    iget-object v1, v15, Lorg/achartengine/chart/PieChart;->mPieMapper:Lorg/achartengine/chart/PieMapper;

    invoke-virtual {v1, v13}, Lorg/achartengine/chart/PieMapper;->areAllSegmentPresent(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    move/from16 v25, v1

    .line 99
    .local v25, "loadPieCfg":Z
    if-eqz v25, :cond_4

    .line 100
    iget-object v1, v15, Lorg/achartengine/chart/PieChart;->mPieMapper:Lorg/achartengine/chart/PieMapper;

    invoke-virtual {v1}, Lorg/achartengine/chart/PieMapper;->clearPieSegments()V

    .line 103
    :cond_4
    int-to-float v1, v11

    const v2, 0x3f666666    # 0.9f

    mul-float v26, v1, v2

    .line 104
    .local v26, "shortRadius":F
    int-to-float v1, v11

    const v2, 0x3f8ccccd    # 1.1f

    mul-float v27, v1, v2

    .line 105
    .local v27, "longRadius":F
    new-instance v1, Landroid/graphics/RectF;

    iget v2, v15, Lorg/achartengine/chart/PieChart;->mCenterX:I

    sub-int/2addr v2, v11

    int-to-float v2, v2

    iget v3, v15, Lorg/achartengine/chart/PieChart;->mCenterY:I

    sub-int/2addr v3, v11

    int-to-float v3, v3

    iget v4, v15, Lorg/achartengine/chart/PieChart;->mCenterX:I

    add-int/2addr v4, v11

    int-to-float v4, v4

    iget v5, v15, Lorg/achartengine/chart/PieChart;->mCenterY:I

    add-int/2addr v5, v11

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v10, v1

    .line 107
    .local v10, "oval":Landroid/graphics/RectF;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v1

    .line 109
    .local v2, "prevLabelsBounds":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    move v1, v0

    .line 109
    .end local v0    # "currentAngle":F
    .local v1, "currentAngle":F
    .local v16, "i":I
    :goto_2
    move/from16 v0, v16

    .line 109
    .end local v16    # "i":I
    .local v0, "i":I
    if-ge v0, v13, :cond_9

    .line 110
    iget-object v3, v15, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v3, v0}, Lorg/achartengine/renderer/DefaultRenderer;->getSeriesRendererAt(I)Lorg/achartengine/renderer/SimpleSeriesRenderer;

    move-result-object v9

    .line 111
    .local v9, "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    invoke-virtual {v9}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->isGradientEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 112
    new-instance v16, Landroid/graphics/RadialGradient;

    iget v3, v15, Lorg/achartengine/chart/PieChart;->mCenterX:I

    int-to-float v4, v3

    iget v3, v15, Lorg/achartengine/chart/PieChart;->mCenterY:I

    int-to-float v5, v3

    invoke-virtual {v9}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getGradientStartColor()I

    move-result v7

    invoke-virtual {v9}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getGradientStopColor()I

    move-result v8

    sget-object v28, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object/from16 v3, v16

    move/from16 v6, v27

    move/from16 v29, v13

    move-object v13, v9

    move-object/from16 v9, v28

    .line 112
    .end local v9    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .local v13, "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .local v29, "sLength":I
    invoke-direct/range {v3 .. v9}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 115
    .local v3, "grad":Landroid/graphics/RadialGradient;
    invoke-virtual {v14, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 116
    .end local v3    # "grad":Landroid/graphics/RadialGradient;
    goto :goto_3

    .line 117
    .end local v29    # "sLength":I
    .restart local v9    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .local v13, "sLength":I
    :cond_5
    move/from16 v29, v13

    move-object v13, v9

    .line 117
    .end local v9    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .local v13, "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .restart local v29    # "sLength":I
    invoke-virtual {v13}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getColor()I

    move-result v3

    invoke-virtual {v14, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    :goto_3
    iget-object v3, v15, Lorg/achartengine/chart/PieChart;->mDataset:Lorg/achartengine/model/CategorySeries;

    invoke-virtual {v3, v0}, Lorg/achartengine/model/CategorySeries;->getValue(I)D

    move-result-wide v3

    double-to-float v9, v3

    .line 121
    .local v9, "value":F
    float-to-double v3, v9

    div-double v3, v3, v20

    const-wide v5, 0x4076800000000000L    # 360.0

    mul-double/2addr v3, v5

    double-to-float v8, v3

    .line 122
    .local v8, "angle":F
    invoke-virtual {v13}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->isHighlighted()Z

    move-result v3

    const/high16 v28, 0x40000000    # 2.0f

    if-eqz v3, :cond_6

    .line 123
    const/high16 v3, 0x42b40000    # 90.0f

    div-float v4, v8, v28

    add-float/2addr v4, v1

    sub-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 124
    .local v6, "rAngle":D
    int-to-double v3, v11

    const-wide v30, 0x3fb999999999999aL    # 0.1

    mul-double v3, v3, v30

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v32

    mul-double v3, v3, v32

    double-to-float v5, v3

    .line 125
    .local v5, "translateX":F
    int-to-double v3, v11

    mul-double v3, v3, v30

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v30

    mul-double v3, v3, v30

    double-to-float v4, v3

    .line 126
    .local v4, "translateY":F
    invoke-virtual {v10, v5, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 127
    const/16 v16, 0x1

    move v3, v0

    move-object/from16 v0, p1

    .line 127
    .end local v0    # "i":I
    .local v3, "i":I
    move/from16 v34, v1

    move-object v1, v10

    .line 127
    .end local v1    # "currentAngle":F
    .local v34, "currentAngle":F
    move-object/from16 v35, v2

    move/from16 v2, v34

    .line 127
    .end local v2    # "prevLabelsBounds":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .local v35, "prevLabelsBounds":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    move/from16 v36, v12

    move v12, v3

    move v3, v8

    .line 127
    .end local v3    # "i":I
    .local v12, "i":I
    .local v36, "mRadius":I
    move-wide/from16 v37, v6

    move v6, v4

    move/from16 v4, v16

    .line 127
    .end local v4    # "translateY":F
    .local v6, "translateY":F
    .local v37, "rAngle":D
    move v7, v5

    move-object v5, v14

    .line 127
    .end local v5    # "translateX":F
    .local v7, "translateX":F
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 128
    neg-float v0, v7

    neg-float v1, v6

    invoke-virtual {v10, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 129
    .end local v6    # "translateY":F
    .end local v7    # "translateX":F
    .end local v37    # "rAngle":D
    goto :goto_4

    .line 130
    .end local v34    # "currentAngle":F
    .end local v35    # "prevLabelsBounds":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .end local v36    # "mRadius":I
    .restart local v0    # "i":I
    .restart local v1    # "currentAngle":F
    .restart local v2    # "prevLabelsBounds":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .local v12, "mRadius":I
    :cond_6
    move/from16 v34, v1

    move-object/from16 v35, v2

    move/from16 v36, v12

    move v12, v0

    .line 130
    .end local v0    # "i":I
    .end local v1    # "currentAngle":F
    .end local v2    # "prevLabelsBounds":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .local v12, "i":I
    .restart local v34    # "currentAngle":F
    .restart local v35    # "prevLabelsBounds":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .restart local v36    # "mRadius":I
    const/4 v4, 0x1

    move-object/from16 v0, p1

    move-object v1, v10

    move/from16 v2, v34

    move v3, v8

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 132
    :goto_4
    invoke-virtual {v13}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getColor()I

    move-result v0

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    const/4 v0, 0x0

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 134
    iget-object v0, v15, Lorg/achartengine/chart/PieChart;->mDataset:Lorg/achartengine/model/CategorySeries;

    invoke-virtual {v0, v12}, Lorg/achartengine/model/CategorySeries;->getCategory(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v15, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    iget v5, v15, Lorg/achartengine/chart/PieChart;->mCenterX:I

    iget v6, v15, Lorg/achartengine/chart/PieChart;->mCenterY:I

    iget-object v0, v15, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/DefaultRenderer;->getLabelsColor()I

    move-result v16

    const/16 v30, 0x1

    const/16 v31, 0x0

    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v4, v35

    move/from16 v7, v26

    move/from16 v39, v8

    move/from16 v8, v27

    .line 134
    .end local v8    # "angle":F
    .local v39, "angle":F
    move/from16 v40, v9

    move/from16 v9, v34

    .line 134
    .end local v9    # "value":F
    .local v40, "value":F
    move-object/from16 v32, v10

    move/from16 v10, v39

    .line 134
    .end local v10    # "oval":Landroid/graphics/RectF;
    .local v32, "oval":Landroid/graphics/RectF;
    move/from16 v33, v11

    move/from16 v11, v17

    .line 134
    .end local v11    # "radius":I
    .local v33, "radius":I
    move/from16 v41, v12

    move/from16 v12, v19

    .line 134
    .end local v12    # "i":I
    .local v41, "i":I
    move-object/from16 v37, v13

    move/from16 v13, v16

    .line 134
    .end local v13    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .local v37, "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    move-object/from16 v14, p6

    move/from16 v15, v30

    move/from16 v16, v31

    invoke-virtual/range {v0 .. v16}, Lorg/achartengine/chart/PieChart;->drawLabel(Landroid/graphics/Canvas;Ljava/lang/String;Lorg/achartengine/renderer/DefaultRenderer;Ljava/util/List;IIFFFFIIILandroid/graphics/Paint;ZZ)V

    .line 137
    move-object/from16 v15, p0

    iget-object v0, v15, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/DefaultRenderer;->isDisplayValues()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 138
    iget-object v0, v15, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    move/from16 v14, v41

    invoke-virtual {v0, v14}, Lorg/achartengine/renderer/DefaultRenderer;->getSeriesRendererAt(I)Lorg/achartengine/renderer/SimpleSeriesRenderer;

    move-result-object v0

    .line 138
    .end local v41    # "i":I
    .local v14, "i":I
    invoke-virtual {v0}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getChartValuesFormat()Ljava/text/NumberFormat;

    move-result-object v0

    iget-object v1, v15, Lorg/achartengine/chart/PieChart;->mDataset:Lorg/achartengine/model/CategorySeries;

    invoke-virtual {v1, v14}, Lorg/achartengine/model/CategorySeries;->getValue(I)D

    move-result-wide v1

    invoke-virtual {v15, v0, v1, v2}, Lorg/achartengine/chart/PieChart;->getLabel(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v15, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    iget v5, v15, Lorg/achartengine/chart/PieChart;->mCenterX:I

    iget v6, v15, Lorg/achartengine/chart/PieChart;->mCenterY:I

    div-float v7, v26, v28

    div-float v8, v27, v28

    iget-object v0, v15, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/DefaultRenderer;->getLabelsColor()I

    move-result v13

    const/16 v16, 0x0

    const/16 v28, 0x1

    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v4, v35

    move/from16 v9, v34

    move/from16 v10, v39

    move/from16 v11, v17

    move/from16 v12, v19

    move/from16 v42, v14

    move-object/from16 v14, p6

    .line 138
    .end local v14    # "i":I
    .local v42, "i":I
    move/from16 v15, v16

    move/from16 v16, v28

    invoke-virtual/range {v0 .. v16}, Lorg/achartengine/chart/PieChart;->drawLabel(Landroid/graphics/Canvas;Ljava/lang/String;Lorg/achartengine/renderer/DefaultRenderer;Ljava/util/List;IIFFFFIIILandroid/graphics/Paint;ZZ)V

    goto :goto_5

    .line 146
    .end local v42    # "i":I
    .restart local v41    # "i":I
    :cond_7
    move/from16 v42, v41

    .line 146
    .end local v41    # "i":I
    .restart local v42    # "i":I
    :goto_5
    if-eqz v25, :cond_8

    .line 147
    move-object/from16 v12, p0

    iget-object v0, v12, Lorg/achartengine/chart/PieChart;->mPieMapper:Lorg/achartengine/chart/PieMapper;

    move/from16 v13, v34

    move/from16 v3, v39

    move/from16 v2, v40

    move/from16 v1, v42

    invoke-virtual {v0, v1, v2, v13, v3}, Lorg/achartengine/chart/PieMapper;->addPieSegment(IFFF)V

    goto :goto_6

    .line 149
    :cond_8
    move/from16 v13, v34

    move/from16 v3, v39

    move/from16 v2, v40

    move/from16 v1, v42

    move-object/from16 v12, p0

    .line 149
    .end local v34    # "currentAngle":F
    .end local v39    # "angle":F
    .end local v40    # "value":F
    .end local v42    # "i":I
    .local v1, "i":I
    .local v2, "value":F
    .local v3, "angle":F
    .local v13, "currentAngle":F
    :goto_6
    add-float v0, v13, v3

    .line 109
    .end local v2    # "value":F
    .end local v3    # "angle":F
    .end local v13    # "currentAngle":F
    .end local v37    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .local v0, "currentAngle":F
    add-int/lit8 v16, v1, 0x1

    .line 109
    .end local v1    # "i":I
    .restart local v16    # "i":I
    move-object/from16 v14, p6

    move v1, v0

    move-object v15, v12

    move/from16 v13, v29

    move-object/from16 v10, v32

    move/from16 v11, v33

    move-object/from16 v2, v35

    move/from16 v12, v36

    goto/16 :goto_2

    .line 151
    .end local v0    # "currentAngle":F
    .end local v16    # "i":I
    .end local v29    # "sLength":I
    .end local v32    # "oval":Landroid/graphics/RectF;
    .end local v33    # "radius":I
    .end local v35    # "prevLabelsBounds":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .end local v36    # "mRadius":I
    .local v1, "currentAngle":F
    .local v2, "prevLabelsBounds":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .restart local v10    # "oval":Landroid/graphics/RectF;
    .restart local v11    # "radius":I
    .local v12, "mRadius":I
    .local v13, "sLength":I
    :cond_9
    move-object/from16 v35, v2

    move-object/from16 v32, v10

    move/from16 v33, v11

    move/from16 v36, v12

    move/from16 v29, v13

    move-object v12, v15

    move v13, v1

    .line 151
    .end local v1    # "currentAngle":F
    .end local v2    # "prevLabelsBounds":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .end local v10    # "oval":Landroid/graphics/RectF;
    .end local v11    # "radius":I
    .end local v12    # "mRadius":I
    .local v13, "currentAngle":F
    .restart local v29    # "sLength":I
    .restart local v32    # "oval":Landroid/graphics/RectF;
    .restart local v33    # "radius":I
    .restart local v35    # "prevLabelsBounds":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .restart local v36    # "mRadius":I
    move-object/from16 v14, v35

    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 152
    .end local v35    # "prevLabelsBounds":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .local v14, "prevLabelsBounds":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    iget-object v2, v12, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    const/4 v11, 0x0

    move-object v0, v12

    move-object/from16 v1, p1

    move-object/from16 v3, v23

    move/from16 v4, v17

    move/from16 v5, v19

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, v22

    move-object/from16 v10, p6

    invoke-virtual/range {v0 .. v11}, Lorg/achartengine/chart/PieChart;->drawLegend(Landroid/graphics/Canvas;Lorg/achartengine/renderer/DefaultRenderer;[Ljava/lang/String;IIIIIILandroid/graphics/Paint;Z)I

    .line 153
    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/achartengine/chart/PieChart;->drawTitle(Landroid/graphics/Canvas;IIILandroid/graphics/Paint;)V

    .line 154
    return-void
.end method

.method public getSeriesAndPointForScreenCoordinate(Lorg/achartengine/model/Point;)Lorg/achartengine/model/SeriesSelection;
    .locals 1
    .param p1, "screenPoint"    # Lorg/achartengine/model/Point;

    .line 157
    iget-object v0, p0, Lorg/achartengine/chart/PieChart;->mPieMapper:Lorg/achartengine/chart/PieMapper;

    invoke-virtual {v0, p1}, Lorg/achartengine/chart/PieMapper;->getSeriesAndPointForScreenCoordinate(Lorg/achartengine/model/Point;)Lorg/achartengine/model/SeriesSelection;

    move-result-object v0

    return-object v0
.end method
