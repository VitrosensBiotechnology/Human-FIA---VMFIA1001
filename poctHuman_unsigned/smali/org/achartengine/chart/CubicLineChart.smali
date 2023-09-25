.class public Lorg/achartengine/chart/CubicLineChart;
.super Lorg/achartengine/chart/LineChart;
.source "CubicLineChart.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "Cubic"


# instance fields
.field private firstMultiplier:F

.field private p1:Lorg/achartengine/model/Point;

.field private p2:Lorg/achartengine/model/Point;

.field private p3:Lorg/achartengine/model/Point;

.field private secondMultiplier:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Lorg/achartengine/chart/LineChart;-><init>()V

    .line 39
    new-instance v0, Lorg/achartengine/model/Point;

    invoke-direct {v0}, Lorg/achartengine/model/Point;-><init>()V

    iput-object v0, p0, Lorg/achartengine/chart/CubicLineChart;->p1:Lorg/achartengine/model/Point;

    .line 41
    new-instance v0, Lorg/achartengine/model/Point;

    invoke-direct {v0}, Lorg/achartengine/model/Point;-><init>()V

    iput-object v0, p0, Lorg/achartengine/chart/CubicLineChart;->p2:Lorg/achartengine/model/Point;

    .line 43
    new-instance v0, Lorg/achartengine/model/Point;

    invoke-direct {v0}, Lorg/achartengine/model/Point;-><init>()V

    iput-object v0, p0, Lorg/achartengine/chart/CubicLineChart;->p3:Lorg/achartengine/model/Point;

    .line 47
    const v0, 0x3ea8f5c3    # 0.33f

    iput v0, p0, Lorg/achartengine/chart/CubicLineChart;->firstMultiplier:F

    .line 49
    iget v0, p0, Lorg/achartengine/chart/CubicLineChart;->firstMultiplier:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iput v1, p0, Lorg/achartengine/chart/CubicLineChart;->secondMultiplier:F

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;F)V
    .locals 2
    .param p1, "dataset"    # Lorg/achartengine/model/XYMultipleSeriesDataset;
    .param p2, "renderer"    # Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    .param p3, "smoothness"    # F

    .line 65
    invoke-direct {p0, p1, p2}, Lorg/achartengine/chart/LineChart;-><init>(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    .line 39
    new-instance v0, Lorg/achartengine/model/Point;

    invoke-direct {v0}, Lorg/achartengine/model/Point;-><init>()V

    iput-object v0, p0, Lorg/achartengine/chart/CubicLineChart;->p1:Lorg/achartengine/model/Point;

    .line 41
    new-instance v0, Lorg/achartengine/model/Point;

    invoke-direct {v0}, Lorg/achartengine/model/Point;-><init>()V

    iput-object v0, p0, Lorg/achartengine/chart/CubicLineChart;->p2:Lorg/achartengine/model/Point;

    .line 43
    new-instance v0, Lorg/achartengine/model/Point;

    invoke-direct {v0}, Lorg/achartengine/model/Point;-><init>()V

    iput-object v0, p0, Lorg/achartengine/chart/CubicLineChart;->p3:Lorg/achartengine/model/Point;

    .line 66
    iput p3, p0, Lorg/achartengine/chart/CubicLineChart;->firstMultiplier:F

    .line 67
    iget v0, p0, Lorg/achartengine/chart/CubicLineChart;->firstMultiplier:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iput v1, p0, Lorg/achartengine/chart/CubicLineChart;->secondMultiplier:F

    .line 68
    return-void
.end method

.method private calc(Ljava/util/List;Lorg/achartengine/model/Point;IIF)V
    .locals 7
    .param p2, "result"    # Lorg/achartengine/model/Point;
    .param p3, "index1"    # I
    .param p4, "index2"    # I
    .param p5, "multiplier"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Lorg/achartengine/model/Point;",
            "IIF)V"
        }
    .end annotation

    .line 102
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 103
    .local v0, "p1x":F
    add-int/lit8 v1, p3, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 104
    .local v1, "p1y":F
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 105
    .local v2, "p2x":F
    add-int/lit8 v3, p4, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 107
    .local v3, "p2y":F
    sub-float v4, v2, v0

    .line 108
    .local v4, "diffX":F
    sub-float v5, v3, v1

    .line 109
    .local v5, "diffY":F
    mul-float v6, v4, p5

    add-float/2addr v6, v0

    invoke-virtual {p2, v6}, Lorg/achartengine/model/Point;->setX(F)V

    .line 110
    mul-float v6, v5, p5

    add-float/2addr v6, v1

    invoke-virtual {p2, v6}, Lorg/achartengine/model/Point;->setY(F)V

    .line 111
    return-void
.end method


# virtual methods
.method protected drawPath(Landroid/graphics/Canvas;Ljava/util/List;Landroid/graphics/Paint;Z)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "paint"    # Landroid/graphics/Paint;
    .param p4, "circular"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/Paint;",
            "Z)V"
        }
    .end annotation

    .line 72
    .local p2, "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    move-object/from16 v12, p0

    move-object/from16 v13, p2

    .line 72
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    move-object v14, v0

    .line 73
    .local v14, "p":Landroid/graphics/Path;
    const/4 v11, 0x0

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 74
    .local v9, "x":F
    const/4 v8, 0x1

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 75
    .local v7, "y":F
    invoke-virtual {v14, v9, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 77
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    .line 78
    .local v0, "length":I
    if-eqz p4, :cond_0

    .line 79
    add-int/lit8 v0, v0, -0x4

    .line 82
    .end local v0    # "length":I
    .local v6, "length":I
    :cond_0
    move v6, v0

    move v0, v11

    .line 82
    .local v0, "i":I
    :goto_0
    move v5, v0

    .line 82
    .end local v0    # "i":I
    .local v5, "i":I
    if-ge v5, v6, :cond_3

    .line 83
    add-int/lit8 v0, v5, 0x2

    if-ge v0, v6, :cond_1

    add-int/lit8 v0, v5, 0x2

    goto :goto_1

    :cond_1
    move v0, v5

    :goto_1
    move v4, v0

    .line 84
    .local v4, "nextIndex":I
    add-int/lit8 v0, v5, 0x4

    if-ge v0, v6, :cond_2

    add-int/lit8 v0, v5, 0x4

    move v10, v0

    goto :goto_2

    :cond_2
    move v10, v4

    .line 85
    .local v10, "nextNextIndex":I
    :goto_2
    iget-object v2, v12, Lorg/achartengine/chart/CubicLineChart;->p1:Lorg/achartengine/model/Point;

    iget v3, v12, Lorg/achartengine/chart/CubicLineChart;->secondMultiplier:F

    move-object v0, v12

    move-object v1, v13

    move v15, v3

    move v3, v5

    move/from16 v16, v4

    .line 85
    .end local v4    # "nextIndex":I
    .local v16, "nextIndex":I
    move/from16 v17, v5

    move v5, v15

    .line 85
    .end local v5    # "i":I
    .local v17, "i":I
    invoke-direct/range {v0 .. v5}, Lorg/achartengine/chart/CubicLineChart;->calc(Ljava/util/List;Lorg/achartengine/model/Point;IIF)V

    .line 86
    iget-object v0, v12, Lorg/achartengine/chart/CubicLineChart;->p2:Lorg/achartengine/model/Point;

    move/from16 v5, v16

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 86
    .end local v16    # "nextIndex":I
    .local v5, "nextIndex":I
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/achartengine/model/Point;->setX(F)V

    .line 87
    iget-object v0, v12, Lorg/achartengine/chart/CubicLineChart;->p2:Lorg/achartengine/model/Point;

    add-int/lit8 v4, v5, 0x1

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/achartengine/model/Point;->setY(F)V

    .line 88
    iget-object v0, v12, Lorg/achartengine/chart/CubicLineChart;->p3:Lorg/achartengine/model/Point;

    iget v1, v12, Lorg/achartengine/chart/CubicLineChart;->firstMultiplier:F

    move v15, v6

    move-object v6, v12

    .line 88
    .end local v6    # "length":I
    .local v15, "length":I
    move/from16 v16, v7

    move-object v7, v13

    .line 88
    .end local v7    # "y":F
    .local v16, "y":F
    move v4, v8

    move-object v8, v0

    move v0, v9

    move v9, v5

    .line 88
    .end local v9    # "x":F
    .local v0, "x":F
    move v3, v11

    move v11, v1

    invoke-direct/range {v6 .. v11}, Lorg/achartengine/chart/CubicLineChart;->calc(Ljava/util/List;Lorg/achartengine/model/Point;IIF)V

    .line 90
    iget-object v1, v12, Lorg/achartengine/chart/CubicLineChart;->p1:Lorg/achartengine/model/Point;

    invoke-virtual {v1}, Lorg/achartengine/model/Point;->getX()F

    move-result v2

    iget-object v1, v12, Lorg/achartengine/chart/CubicLineChart;->p1:Lorg/achartengine/model/Point;

    invoke-virtual {v1}, Lorg/achartengine/model/Point;->getY()F

    move-result v6

    iget-object v1, v12, Lorg/achartengine/chart/CubicLineChart;->p2:Lorg/achartengine/model/Point;

    invoke-virtual {v1}, Lorg/achartengine/model/Point;->getX()F

    move-result v7

    iget-object v1, v12, Lorg/achartengine/chart/CubicLineChart;->p2:Lorg/achartengine/model/Point;

    invoke-virtual {v1}, Lorg/achartengine/model/Point;->getY()F

    move-result v8

    iget-object v1, v12, Lorg/achartengine/chart/CubicLineChart;->p3:Lorg/achartengine/model/Point;

    invoke-virtual {v1}, Lorg/achartengine/model/Point;->getX()F

    move-result v9

    iget-object v1, v12, Lorg/achartengine/chart/CubicLineChart;->p3:Lorg/achartengine/model/Point;

    invoke-virtual {v1}, Lorg/achartengine/model/Point;->getY()F

    move-result v11

    move-object v1, v14

    move/from16 v18, v0

    move v0, v3

    move v3, v6

    .line 90
    .end local v0    # "x":F
    .local v18, "x":F
    move v6, v4

    move v4, v7

    move/from16 v19, v5

    move v5, v8

    .line 90
    .end local v5    # "nextIndex":I
    .local v19, "nextIndex":I
    move v8, v6

    move v6, v9

    move v7, v11

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 82
    .end local v10    # "nextNextIndex":I
    .end local v19    # "nextIndex":I
    add-int/lit8 v1, v17, 0x2

    .line 82
    .end local v17    # "i":I
    .local v1, "i":I
    move v11, v0

    move v0, v1

    move v6, v15

    move/from16 v7, v16

    move/from16 v9, v18

    goto/16 :goto_0

    .line 92
    .end local v1    # "i":I
    .end local v15    # "length":I
    .end local v16    # "y":F
    .end local v18    # "x":F
    .restart local v6    # "length":I
    .restart local v7    # "y":F
    .restart local v9    # "x":F
    :cond_3
    move v15, v6

    move/from16 v16, v7

    move/from16 v18, v9

    move v0, v11

    .line 92
    .end local v6    # "length":I
    .end local v7    # "y":F
    .end local v9    # "x":F
    .restart local v15    # "length":I
    .restart local v16    # "y":F
    .restart local v18    # "x":F
    if-eqz p4, :cond_5

    .line 93
    move v1, v15

    .line 93
    .restart local v1    # "i":I
    :goto_3
    add-int/lit8 v6, v15, 0x4

    if-ge v1, v6, :cond_4

    .line 94
    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v14, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 93
    add-int/lit8 v1, v1, 0x2

    goto :goto_3

    .line 96
    .end local v1    # "i":I
    :cond_4
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 98
    :cond_5
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v14, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 99
    return-void
.end method

.method public getChartType()Ljava/lang/String;
    .locals 1

    .line 119
    const-string v0, "Cubic"

    return-object v0
.end method
