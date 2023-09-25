.class public Lorg/achartengine/chart/DoughnutChart;
.super Lorg/achartengine/chart/RoundChart;
.source "DoughnutChart.java"


# instance fields
.field private mDataset:Lorg/achartengine/model/MultipleCategorySeries;

.field private mStep:I


# direct methods
.method public constructor <init>(Lorg/achartengine/model/MultipleCategorySeries;Lorg/achartengine/renderer/DefaultRenderer;)V
    .locals 1
    .param p1, "dataset"    # Lorg/achartengine/model/MultipleCategorySeries;
    .param p2, "renderer"    # Lorg/achartengine/renderer/DefaultRenderer;

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lorg/achartengine/chart/RoundChart;-><init>(Lorg/achartengine/model/CategorySeries;Lorg/achartengine/renderer/DefaultRenderer;)V

    .line 48
    iput-object p1, p0, Lorg/achartengine/chart/DoughnutChart;->mDataset:Lorg/achartengine/model/MultipleCategorySeries;

    .line 49
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V
    .locals 47
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "paint"    # Landroid/graphics/Paint;

    move-object/from16 v15, p0

    .line 63
    move-object/from16 v14, p6

    iget-object v0, v15, Lorg/achartengine/chart/DoughnutChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/DefaultRenderer;->isAntialiasing()Z

    move-result v0

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 64
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    iget-object v0, v15, Lorg/achartengine/chart/DoughnutChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/DefaultRenderer;->getLabelsTextSize()F

    move-result v0

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 66
    iget-object v0, v15, Lorg/achartengine/chart/DoughnutChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    div-int/lit8 v1, p5, 0x5

    const/4 v2, 0x0

    invoke-virtual {v15, v0, v1, v2}, Lorg/achartengine/chart/DoughnutChart;->getLegendSize(Lorg/achartengine/renderer/DefaultRenderer;IF)I

    move-result v12

    .line 67
    .local v12, "legendSize":I
    move/from16 v23, p2

    .line 68
    .local v23, "left":I
    move/from16 v24, p3

    .line 69
    .local v24, "top":I
    add-int v25, p2, p4

    .line 70
    .local v25, "right":I
    iget-object v0, v15, Lorg/achartengine/chart/DoughnutChart;->mDataset:Lorg/achartengine/model/MultipleCategorySeries;

    invoke-virtual {v0}, Lorg/achartengine/model/MultipleCategorySeries;->getCategoriesCount()I

    move-result v13

    .line 71
    .local v13, "cLength":I
    new-array v11, v13, [Ljava/lang/String;

    .line 72
    .local v11, "categories":[Ljava/lang/String;
    const/16 v26, 0x0

    move/from16 v0, v26

    .line 72
    .local v0, "category":I
    :goto_0
    if-ge v0, v13, :cond_0

    .line 73
    iget-object v1, v15, Lorg/achartengine/chart/DoughnutChart;->mDataset:Lorg/achartengine/model/MultipleCategorySeries;

    invoke-virtual {v1, v0}, Lorg/achartengine/model/MultipleCategorySeries;->getCategory(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v0

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    .end local v0    # "category":I
    :cond_0
    iget-object v0, v15, Lorg/achartengine/chart/DoughnutChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/DefaultRenderer;->isFitLegend()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v2, v15, Lorg/achartengine/chart/DoughnutChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    const/16 v16, 0x1

    move-object v0, v15

    move-object/from16 v1, p1

    move-object v3, v11

    move/from16 v4, v23

    move/from16 v5, v25

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move v9, v12

    move-object v10, v14

    move-object/from16 v27, v11

    move/from16 v11, v16

    .line 76
    .end local v11    # "categories":[Ljava/lang/String;
    .local v27, "categories":[Ljava/lang/String;
    invoke-virtual/range {v0 .. v11}, Lorg/achartengine/chart/DoughnutChart;->drawLegend(Landroid/graphics/Canvas;Lorg/achartengine/renderer/DefaultRenderer;[Ljava/lang/String;IIIIIILandroid/graphics/Paint;Z)I

    move-result v0

    .line 80
    .end local v12    # "legendSize":I
    .local v0, "legendSize":I
    move/from16 v28, v0

    goto :goto_1

    .line 80
    .end local v0    # "legendSize":I
    .end local v27    # "categories":[Ljava/lang/String;
    .restart local v11    # "categories":[Ljava/lang/String;
    .restart local v12    # "legendSize":I
    :cond_1
    move-object/from16 v27, v11

    move/from16 v28, v12

    .line 80
    .end local v11    # "categories":[Ljava/lang/String;
    .end local v12    # "legendSize":I
    .restart local v27    # "categories":[Ljava/lang/String;
    .local v28, "legendSize":I
    :goto_1
    add-int v0, p3, p5

    sub-int v29, v0, v28

    .line 81
    .local v29, "bottom":I
    iget-object v1, v15, Lorg/achartengine/chart/DoughnutChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v15

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object v7, v14

    invoke-virtual/range {v0 .. v9}, Lorg/achartengine/chart/DoughnutChart;->drawBackground(Lorg/achartengine/renderer/DefaultRenderer;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 82
    const/4 v0, 0x7

    iput v0, v15, Lorg/achartengine/chart/DoughnutChart;->mStep:I

    .line 84
    sub-int v0, v25, v23

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int v1, v29, v24

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 85
    .local v12, "mRadius":I
    const-wide v0, 0x3fd6666666666666L    # 0.35

    iget-object v2, v15, Lorg/achartengine/chart/DoughnutChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/DefaultRenderer;->getScale()F

    move-result v2

    float-to-double v2, v2

    mul-double v30, v0, v2

    .line 86
    .local v30, "rCoef":D
    const-wide v0, 0x3fc999999999999aL    # 0.2

    int-to-double v2, v13

    div-double v32, v0, v2

    .line 87
    .local v32, "decCoef":D
    int-to-double v0, v12

    mul-double v0, v0, v30

    double-to-int v0, v0

    .line 88
    .local v0, "radius":I
    iget v1, v15, Lorg/achartengine/chart/DoughnutChart;->mCenterX:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_2

    .line 89
    add-int v1, v23, v25

    div-int/lit8 v1, v1, 0x2

    iput v1, v15, Lorg/achartengine/chart/DoughnutChart;->mCenterX:I

    .line 91
    :cond_2
    iget v1, v15, Lorg/achartengine/chart/DoughnutChart;->mCenterY:I

    if-ne v1, v2, :cond_3

    .line 92
    add-int v1, v29, v24

    div-int/lit8 v1, v1, 0x2

    iput v1, v15, Lorg/achartengine/chart/DoughnutChart;->mCenterY:I

    .line 94
    :cond_3
    int-to-float v1, v0

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v1, v2

    .line 95
    .local v1, "shortRadius":F
    int-to-float v2, v0

    const v3, 0x3f8ccccd    # 1.1f

    mul-float v34, v2, v3

    .line 96
    .local v34, "longRadius":F
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v2

    .line 97
    .local v11, "prevLabelsBounds":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    move v10, v0

    move v9, v1

    move/from16 v0, v26

    .line 97
    .end local v1    # "shortRadius":F
    .local v0, "category":I
    .local v9, "shortRadius":F
    .local v10, "radius":I
    :goto_2
    move v8, v0

    .line 97
    .end local v0    # "category":I
    .local v8, "category":I
    if-ge v8, v13, :cond_7

    .line 98
    iget-object v0, v15, Lorg/achartengine/chart/DoughnutChart;->mDataset:Lorg/achartengine/model/MultipleCategorySeries;

    invoke-virtual {v0, v8}, Lorg/achartengine/model/MultipleCategorySeries;->getItemCount(I)I

    move-result v7

    .line 99
    .local v7, "sLength":I
    const-wide/16 v0, 0x0

    .line 100
    .local v0, "total":D
    new-array v6, v7, [Ljava/lang/String;

    .line 101
    .local v6, "titles":[Ljava/lang/String;
    move-wide/from16 v35, v0

    move/from16 v0, v26

    .line 101
    .local v0, "i":I
    .local v35, "total":D
    :goto_3
    if-ge v0, v7, :cond_4

    .line 102
    iget-object v1, v15, Lorg/achartengine/chart/DoughnutChart;->mDataset:Lorg/achartengine/model/MultipleCategorySeries;

    invoke-virtual {v1, v8}, Lorg/achartengine/model/MultipleCategorySeries;->getValues(I)[D

    move-result-object v1

    aget-wide v2, v1, v0

    add-double v35, v35, v2

    .line 103
    iget-object v1, v15, Lorg/achartengine/chart/DoughnutChart;->mDataset:Lorg/achartengine/model/MultipleCategorySeries;

    invoke-virtual {v1, v8}, Lorg/achartengine/model/MultipleCategorySeries;->getTitles(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v0

    aput-object v1, v6, v0

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 105
    .end local v0    # "i":I
    :cond_4
    iget-object v0, v15, Lorg/achartengine/chart/DoughnutChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/DefaultRenderer;->getStartAngle()F

    move-result v0

    .line 106
    .local v0, "currentAngle":F
    new-instance v1, Landroid/graphics/RectF;

    iget v2, v15, Lorg/achartengine/chart/DoughnutChart;->mCenterX:I

    sub-int/2addr v2, v10

    int-to-float v2, v2

    iget v3, v15, Lorg/achartengine/chart/DoughnutChart;->mCenterY:I

    sub-int/2addr v3, v10

    int-to-float v3, v3

    iget v4, v15, Lorg/achartengine/chart/DoughnutChart;->mCenterX:I

    add-int/2addr v4, v10

    int-to-float v4, v4

    iget v5, v15, Lorg/achartengine/chart/DoughnutChart;->mCenterY:I

    add-int/2addr v5, v10

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v18, v1

    .line 108
    .local v18, "oval":Landroid/graphics/RectF;
    move/from16 v37, v0

    move/from16 v0, v26

    .line 108
    .local v0, "i":I
    .local v37, "currentAngle":F
    :goto_4
    move v5, v0

    .line 108
    .end local v0    # "i":I
    .local v5, "i":I
    if-ge v5, v7, :cond_5

    .line 109
    iget-object v0, v15, Lorg/achartengine/chart/DoughnutChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v0, v5}, Lorg/achartengine/renderer/DefaultRenderer;->getSeriesRendererAt(I)Lorg/achartengine/renderer/SimpleSeriesRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getColor()I

    move-result v0

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    iget-object v0, v15, Lorg/achartengine/chart/DoughnutChart;->mDataset:Lorg/achartengine/model/MultipleCategorySeries;

    invoke-virtual {v0, v8}, Lorg/achartengine/model/MultipleCategorySeries;->getValues(I)[D

    move-result-object v0

    aget-wide v1, v0, v5

    double-to-float v4, v1

    .line 111
    .local v4, "value":F
    float-to-double v0, v4

    div-double v0, v0, v35

    const-wide v2, 0x4076800000000000L    # 360.0

    mul-double/2addr v0, v2

    double-to-float v3, v0

    .line 112
    .local v3, "angle":F
    const/16 v21, 0x1

    move-object/from16 v17, p1

    move/from16 v19, v37

    move/from16 v20, v3

    move-object/from16 v22, v14

    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 113
    iget-object v0, v15, Lorg/achartengine/chart/DoughnutChart;->mDataset:Lorg/achartengine/model/MultipleCategorySeries;

    invoke-virtual {v0, v8}, Lorg/achartengine/model/MultipleCategorySeries;->getTitles(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v2, v0, v5

    iget-object v1, v15, Lorg/achartengine/chart/DoughnutChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    iget v0, v15, Lorg/achartengine/chart/DoughnutChart;->mCenterX:I

    move-object/from16 v38, v6

    iget v6, v15, Lorg/achartengine/chart/DoughnutChart;->mCenterY:I

    .line 113
    .end local v6    # "titles":[Ljava/lang/String;
    .local v38, "titles":[Ljava/lang/String;
    move/from16 v39, v0

    iget-object v0, v15, Lorg/achartengine/chart/DoughnutChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/DefaultRenderer;->getLabelsColor()I

    move-result v16

    const/16 v17, 0x1

    const/16 v19, 0x0

    move/from16 v20, v39

    move-object v0, v15

    move-object/from16 v21, v1

    move-object/from16 v1, p1

    move/from16 v22, v3

    move-object/from16 v3, v21

    .line 113
    .end local v3    # "angle":F
    .local v22, "angle":F
    move/from16 v21, v4

    move-object v4, v11

    .line 113
    .end local v4    # "value":F
    .local v21, "value":F
    move/from16 v39, v5

    move/from16 v5, v20

    .line 113
    .end local v5    # "i":I
    .local v39, "i":I
    move-object/from16 v20, v38

    .line 113
    .end local v38    # "titles":[Ljava/lang/String;
    .local v20, "titles":[Ljava/lang/String;
    move/from16 v38, v7

    move v7, v9

    .line 113
    .end local v7    # "sLength":I
    .local v38, "sLength":I
    move/from16 v40, v8

    move/from16 v8, v34

    .line 113
    .end local v8    # "category":I
    .local v40, "category":I
    move/from16 v41, v9

    move/from16 v9, v37

    .line 113
    .end local v9    # "shortRadius":F
    .local v41, "shortRadius":F
    move/from16 v42, v10

    move/from16 v10, v22

    .line 113
    .end local v10    # "radius":I
    .local v42, "radius":I
    move-object/from16 v43, v11

    move/from16 v11, v23

    .line 113
    .end local v11    # "prevLabelsBounds":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .local v43, "prevLabelsBounds":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    move/from16 v44, v12

    move/from16 v12, v25

    .line 113
    .end local v12    # "mRadius":I
    .local v44, "mRadius":I
    move/from16 v45, v13

    move/from16 v13, v16

    .line 113
    .end local v13    # "cLength":I
    .local v45, "cLength":I
    move-object/from16 v14, p6

    move/from16 v15, v17

    move/from16 v16, v19

    invoke-virtual/range {v0 .. v16}, Lorg/achartengine/chart/DoughnutChart;->drawLabel(Landroid/graphics/Canvas;Ljava/lang/String;Lorg/achartengine/renderer/DefaultRenderer;Ljava/util/List;IIFFFFIIILandroid/graphics/Paint;ZZ)V

    .line 116
    add-float v37, v37, v22

    .line 108
    .end local v21    # "value":F
    .end local v22    # "angle":F
    add-int/lit8 v0, v39, 0x1

    .line 108
    .end local v39    # "i":I
    .restart local v0    # "i":I
    move-object/from16 v6, v20

    move/from16 v7, v38

    move/from16 v8, v40

    move/from16 v9, v41

    move/from16 v10, v42

    move-object/from16 v11, v43

    move/from16 v12, v44

    move/from16 v13, v45

    move-object/from16 v15, p0

    goto/16 :goto_4

    .line 118
    .end local v0    # "i":I
    .end local v20    # "titles":[Ljava/lang/String;
    .end local v38    # "sLength":I
    .end local v40    # "category":I
    .end local v41    # "shortRadius":F
    .end local v42    # "radius":I
    .end local v43    # "prevLabelsBounds":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .end local v44    # "mRadius":I
    .end local v45    # "cLength":I
    .restart local v6    # "titles":[Ljava/lang/String;
    .restart local v7    # "sLength":I
    .restart local v8    # "category":I
    .restart local v9    # "shortRadius":F
    .restart local v10    # "radius":I
    .restart local v11    # "prevLabelsBounds":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .restart local v12    # "mRadius":I
    .restart local v13    # "cLength":I
    :cond_5
    move-object/from16 v20, v6

    move/from16 v38, v7

    move/from16 v40, v8

    move/from16 v41, v9

    move/from16 v42, v10

    move-object/from16 v43, v11

    move/from16 v44, v12

    move/from16 v45, v13

    .line 118
    .end local v6    # "titles":[Ljava/lang/String;
    .end local v7    # "sLength":I
    .end local v8    # "category":I
    .end local v9    # "shortRadius":F
    .end local v10    # "radius":I
    .end local v11    # "prevLabelsBounds":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .end local v12    # "mRadius":I
    .end local v13    # "cLength":I
    .restart local v20    # "titles":[Ljava/lang/String;
    .restart local v38    # "sLength":I
    .restart local v40    # "category":I
    .restart local v41    # "shortRadius":F
    .restart local v42    # "radius":I
    .restart local v43    # "prevLabelsBounds":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .restart local v44    # "mRadius":I
    .restart local v45    # "cLength":I
    move/from16 v12, v42

    int-to-double v0, v12

    .line 118
    .end local v42    # "radius":I
    .local v12, "radius":I
    move/from16 v13, v44

    int-to-double v2, v13

    .line 118
    .end local v44    # "mRadius":I
    .local v13, "mRadius":I
    mul-double v2, v2, v32

    sub-double/2addr v0, v2

    double-to-int v6, v0

    .line 119
    .end local v12    # "radius":I
    .local v6, "radius":I
    move/from16 v14, v41

    float-to-double v0, v14

    .line 119
    .end local v41    # "shortRadius":F
    .local v14, "shortRadius":F
    int-to-double v2, v13

    mul-double v2, v2, v32

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    sub-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float v9, v0

    .line 120
    .end local v14    # "shortRadius":F
    .restart local v9    # "shortRadius":F
    move-object/from16 v15, p0

    iget-object v0, v15, Lorg/achartengine/chart/DoughnutChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/DefaultRenderer;->getBackgroundColor()I

    move-result v0

    const/4 v7, -0x1

    if-eqz v0, :cond_6

    .line 121
    iget-object v0, v15, Lorg/achartengine/chart/DoughnutChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/DefaultRenderer;->getBackgroundColor()I

    move-result v0

    move-object/from16 v11, p6

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_5

    .line 123
    :cond_6
    move-object/from16 v11, p6

    invoke-virtual {v11, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    :goto_5
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 126
    new-instance v1, Landroid/graphics/RectF;

    iget v0, v15, Lorg/achartengine/chart/DoughnutChart;->mCenterX:I

    sub-int/2addr v0, v6

    int-to-float v0, v0

    iget v2, v15, Lorg/achartengine/chart/DoughnutChart;->mCenterY:I

    sub-int/2addr v2, v6

    int-to-float v2, v2

    iget v3, v15, Lorg/achartengine/chart/DoughnutChart;->mCenterX:I

    add-int/2addr v3, v6

    int-to-float v3, v3

    iget v4, v15, Lorg/achartengine/chart/DoughnutChart;->mCenterY:I

    add-int/2addr v4, v6

    int-to-float v4, v4

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 127
    .end local v18    # "oval":Landroid/graphics/RectF;
    .local v1, "oval":Landroid/graphics/RectF;
    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x1

    move-object/from16 v0, p1

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 128
    add-int/lit8 v10, v6, -0x1

    .line 97
    .end local v1    # "oval":Landroid/graphics/RectF;
    .end local v6    # "radius":I
    .end local v20    # "titles":[Ljava/lang/String;
    .end local v35    # "total":D
    .end local v37    # "currentAngle":F
    .end local v38    # "sLength":I
    .restart local v10    # "radius":I
    add-int/lit8 v0, v40, 0x1

    .line 97
    .end local v40    # "category":I
    .local v0, "category":I
    move-object v14, v11

    move v12, v13

    move-object/from16 v11, v43

    move/from16 v13, v45

    goto/16 :goto_2

    .line 130
    .end local v0    # "category":I
    .end local v43    # "prevLabelsBounds":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .end local v45    # "cLength":I
    .restart local v11    # "prevLabelsBounds":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .local v12, "mRadius":I
    .local v13, "cLength":I
    :cond_7
    move-object/from16 v43, v11

    move/from16 v45, v13

    move-object v11, v14

    move v14, v9

    move v13, v12

    move v12, v10

    .line 130
    .end local v9    # "shortRadius":F
    .end local v10    # "radius":I
    .end local v11    # "prevLabelsBounds":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .local v12, "radius":I
    .local v13, "mRadius":I
    .restart local v14    # "shortRadius":F
    .restart local v43    # "prevLabelsBounds":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .restart local v45    # "cLength":I
    move-object/from16 v10, v43

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 131
    .end local v43    # "prevLabelsBounds":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .local v10, "prevLabelsBounds":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    iget-object v2, v15, Lorg/achartengine/chart/DoughnutChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    const/16 v16, 0x0

    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v3, v27

    move/from16 v4, v23

    move/from16 v5, v25

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, v28

    move-object/from16 v17, v10

    move-object v10, v11

    .line 131
    .end local v10    # "prevLabelsBounds":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .local v17, "prevLabelsBounds":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    move/from16 v11, v16

    invoke-virtual/range {v0 .. v11}, Lorg/achartengine/chart/DoughnutChart;->drawLegend(Landroid/graphics/Canvas;Lorg/achartengine/renderer/DefaultRenderer;[Ljava/lang/String;IIIIIILandroid/graphics/Paint;Z)I

    .line 133
    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/achartengine/chart/DoughnutChart;->drawTitle(Landroid/graphics/Canvas;IIILandroid/graphics/Paint;)V

    .line 134
    return-void
.end method

.method public drawLegendShape(Landroid/graphics/Canvas;Lorg/achartengine/renderer/SimpleSeriesRenderer;FFILandroid/graphics/Paint;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "renderer"    # Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "seriesIndex"    # I
    .param p6, "paint"    # Landroid/graphics/Paint;

    .line 158
    iget v0, p0, Lorg/achartengine/chart/DoughnutChart;->mStep:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/achartengine/chart/DoughnutChart;->mStep:I

    .line 159
    const/high16 v0, 0x41200000    # 10.0f

    add-float/2addr v0, p3

    iget v1, p0, Lorg/achartengine/chart/DoughnutChart;->mStep:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/achartengine/chart/DoughnutChart;->mStep:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, p4, v1, p6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 160
    return-void
.end method

.method public getLegendShapeWidth(I)I
    .locals 1
    .param p1, "seriesIndex"    # I

    .line 143
    const/16 v0, 0xa

    return v0
.end method
