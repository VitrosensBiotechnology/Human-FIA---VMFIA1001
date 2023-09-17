.class public abstract Lorg/achartengine/chart/XYChart;
.super Lorg/achartengine/chart/AbstractChart;
.source "XYChart.java"


# instance fields
.field private clickableAreas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lorg/achartengine/chart/ClickableArea;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCalcRange:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[D>;"
        }
    .end annotation
.end field

.field private mCenter:Lorg/achartengine/model/Point;

.field protected mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

.field protected mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

.field private mScale:F

.field private mScreenR:Landroid/graphics/Rect;

.field private mTranslate:F


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Lorg/achartengine/chart/AbstractChart;-><init>()V

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/achartengine/chart/XYChart;->mCalcRange:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/achartengine/chart/XYChart;->clickableAreas:Ljava/util/Map;

    .line 76
    return-void
.end method

.method public constructor <init>(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V
    .locals 1
    .param p1, "dataset"    # Lorg/achartengine/model/XYMultipleSeriesDataset;
    .param p2, "renderer"    # Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    .line 84
    invoke-direct {p0}, Lorg/achartengine/chart/AbstractChart;-><init>()V

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/achartengine/chart/XYChart;->mCalcRange:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/achartengine/chart/XYChart;->clickableAreas:Ljava/util/Map;

    .line 85
    iput-object p1, p0, Lorg/achartengine/chart/XYChart;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    .line 86
    iput-object p2, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    .line 87
    return-void
.end method

.method private getLabelLinePos(Landroid/graphics/Paint$Align;)I
    .locals 2
    .param p1, "align"    # Landroid/graphics/Paint$Align;

    .line 817
    const/4 v0, 0x4

    .line 818
    .local v0, "pos":I
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    if-ne p1, v1, :cond_0

    .line 819
    neg-int v0, v0

    .line 821
    :cond_0
    return v0
.end method

.method private getValidLabels(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 478
    .local p1, "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 479
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 479
    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    .line 480
    .local v2, "label":Ljava/lang/Double;
    invoke-virtual {v2}, Ljava/lang/Double;->isNaN()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 481
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 481
    .end local v2    # "label":Ljava/lang/Double;
    goto :goto_0

    .line 484
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v0
.end method

.method private setStroke(Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLandroid/graphics/Paint$Style;Landroid/graphics/PathEffect;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "cap"    # Landroid/graphics/Paint$Cap;
    .param p2, "join"    # Landroid/graphics/Paint$Join;
    .param p3, "miter"    # F
    .param p4, "style"    # Landroid/graphics/Paint$Style;
    .param p5, "pathEffect"    # Landroid/graphics/PathEffect;
    .param p6, "paint"    # Landroid/graphics/Paint;

    .line 544
    invoke-virtual {p6, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 545
    invoke-virtual {p6, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 546
    invoke-virtual {p6, p3}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 547
    invoke-virtual {p6, p5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 548
    invoke-virtual {p6, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 549
    return-void
.end method

.method private transform(Landroid/graphics/Canvas;FZ)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "angle"    # F
    .param p3, "inverse"    # Z

    .line 641
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p3, :cond_0

    .line 642
    iget v1, p0, Lorg/achartengine/chart/XYChart;->mScale:F

    div-float/2addr v0, v1

    iget v1, p0, Lorg/achartengine/chart/XYChart;->mScale:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 643
    iget v0, p0, Lorg/achartengine/chart/XYChart;->mTranslate:F

    iget v1, p0, Lorg/achartengine/chart/XYChart;->mTranslate:F

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 644
    neg-float v0, p2

    iget-object v1, p0, Lorg/achartengine/chart/XYChart;->mCenter:Lorg/achartengine/model/Point;

    invoke-virtual {v1}, Lorg/achartengine/model/Point;->getX()F

    move-result v1

    iget-object v2, p0, Lorg/achartengine/chart/XYChart;->mCenter:Lorg/achartengine/model/Point;

    invoke-virtual {v2}, Lorg/achartengine/model/Point;->getY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_0

    .line 646
    :cond_0
    iget-object v1, p0, Lorg/achartengine/chart/XYChart;->mCenter:Lorg/achartengine/model/Point;

    invoke-virtual {v1}, Lorg/achartengine/model/Point;->getX()F

    move-result v1

    iget-object v2, p0, Lorg/achartengine/chart/XYChart;->mCenter:Lorg/achartengine/model/Point;

    invoke-virtual {v2}, Lorg/achartengine/model/Point;->getY()F

    move-result v2

    invoke-virtual {p1, p2, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 647
    iget v1, p0, Lorg/achartengine/chart/XYChart;->mTranslate:F

    neg-float v1, v1

    iget v2, p0, Lorg/achartengine/chart/XYChart;->mTranslate:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 648
    iget v1, p0, Lorg/achartengine/chart/XYChart;->mScale:F

    iget v2, p0, Lorg/achartengine/chart/XYChart;->mScale:F

    div-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 650
    :goto_0
    return-void
.end method


# virtual methods
.method protected abstract clickableAreasForPoints(Ljava/util/List;Ljava/util/List;FII)[Lorg/achartengine/chart/ClickableArea;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;FII)[",
            "Lorg/achartengine/chart/ClickableArea;"
        }
    .end annotation
.end method

.method public draw(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V
    .locals 113
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "paint"    # Landroid/graphics/Paint;

    move-object/from16 v15, p0

    move-object/from16 v13, p1

    move/from16 v14, p2

    move/from16 v12, p3

    move/from16 v11, p4

    move/from16 v10, p5

    .line 107
    move-object/from16 v9, p6

    iget-object v1, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isAntialiasing()Z

    move-result v1

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 108
    iget-object v1, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    div-int/lit8 v2, v10, 0x5

    iget-object v3, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getAxisTitleTextSize()F

    move-result v3

    invoke-virtual {v15, v1, v2, v3}, Lorg/achartengine/chart/XYChart;->getLegendSize(Lorg/achartengine/renderer/DefaultRenderer;IF)I

    move-result v16

    .line 109
    .local v16, "legendSize":I
    iget-object v1, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getMargins()[I

    move-result-object v17

    .line 110
    .local v17, "margins":[I
    const/4 v8, 0x1

    aget v1, v17, v8

    add-int v7, v14, v1

    .line 111
    .local v7, "left":I
    const/4 v6, 0x0

    aget v1, v17, v6

    add-int v5, v12, v1

    .line 112
    .local v5, "top":I
    add-int v1, v14, v11

    const/16 v18, 0x3

    aget v2, v17, v18

    sub-int v4, v1, v2

    .line 113
    .local v4, "right":I
    iget-object v1, v15, Lorg/achartengine/chart/XYChart;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    invoke-virtual {v1}, Lorg/achartengine/model/XYMultipleSeriesDataset;->getSeriesCount()I

    move-result v3

    .line 114
    .local v3, "sLength":I
    new-array v2, v3, [Ljava/lang/String;

    .line 115
    .local v2, "titles":[Ljava/lang/String;
    move v1, v6

    .line 115
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 116
    iget-object v6, v15, Lorg/achartengine/chart/XYChart;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    invoke-virtual {v6, v1}, Lorg/achartengine/model/XYMultipleSeriesDataset;->getSeriesAt(I)Lorg/achartengine/model/XYSeries;

    move-result-object v6

    invoke-virtual {v6}, Lorg/achartengine/model/XYSeries;->getTitle()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    .line 115
    add-int/lit8 v1, v1, 0x1

    const/4 v6, 0x0

    goto :goto_0

    .line 118
    .end local v1    # "i":I
    :cond_0
    iget-object v1, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isFitLegend()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowLegend()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    iget-object v6, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    const/16 v20, 0x1

    move-object v1, v15

    move-object/from16 v21, v2

    move-object v2, v13

    .line 119
    .end local v2    # "titles":[Ljava/lang/String;
    .local v21, "titles":[Ljava/lang/String;
    move/from16 v22, v3

    move-object v3, v6

    .line 119
    .end local v3    # "sLength":I
    .local v22, "sLength":I
    move v6, v4

    move-object/from16 v4, v21

    .line 119
    .end local v4    # "right":I
    .local v6, "right":I
    move v14, v5

    move v5, v7

    .line 119
    .end local v5    # "top":I
    .local v14, "top":I
    move/from16 v24, v6

    .line 119
    .end local v6    # "right":I
    .local v24, "right":I
    move v13, v7

    move v7, v12

    .line 119
    .end local v7    # "left":I
    .local v13, "left":I
    move v8, v11

    move v9, v10

    move/from16 v10, v16

    move-object/from16 v11, p6

    move/from16 v29, v13

    move v13, v12

    move/from16 v12, v20

    .line 119
    .end local v13    # "left":I
    .local v29, "left":I
    invoke-virtual/range {v1 .. v12}, Lorg/achartengine/chart/XYChart;->drawLegend(Landroid/graphics/Canvas;Lorg/achartengine/renderer/DefaultRenderer;[Ljava/lang/String;IIIIIILandroid/graphics/Paint;Z)I

    move-result v1

    .line 122
    .end local v16    # "legendSize":I
    .local v1, "legendSize":I
    move/from16 v19, v1

    goto :goto_1

    .line 122
    .end local v1    # "legendSize":I
    .end local v14    # "top":I
    .end local v21    # "titles":[Ljava/lang/String;
    .end local v22    # "sLength":I
    .end local v24    # "right":I
    .end local v29    # "left":I
    .restart local v2    # "titles":[Ljava/lang/String;
    .restart local v3    # "sLength":I
    .restart local v4    # "right":I
    .restart local v5    # "top":I
    .restart local v7    # "left":I
    .restart local v16    # "legendSize":I
    :cond_1
    move-object/from16 v21, v2

    move/from16 v22, v3

    move/from16 v24, v4

    move v14, v5

    move/from16 v29, v7

    move v13, v12

    .line 122
    .end local v2    # "titles":[Ljava/lang/String;
    .end local v3    # "sLength":I
    .end local v4    # "right":I
    .end local v5    # "top":I
    .end local v7    # "left":I
    .restart local v14    # "top":I
    .restart local v21    # "titles":[Ljava/lang/String;
    .restart local v22    # "sLength":I
    .restart local v24    # "right":I
    .restart local v29    # "left":I
    move/from16 v19, v16

    .line 122
    .end local v16    # "legendSize":I
    .local v19, "legendSize":I
    :goto_1
    move/from16 v11, p5

    add-int v1, v13, v11

    const/4 v12, 0x2

    aget v2, v17, v12

    sub-int/2addr v1, v2

    sub-int v10, v1, v19

    .line 123
    .local v10, "bottom":I
    iget-object v1, v15, Lorg/achartengine/chart/XYChart;->mScreenR:Landroid/graphics/Rect;

    if-nez v1, :cond_2

    .line 124
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v15, Lorg/achartengine/chart/XYChart;->mScreenR:Landroid/graphics/Rect;

    .line 126
    :cond_2
    iget-object v1, v15, Lorg/achartengine/chart/XYChart;->mScreenR:Landroid/graphics/Rect;

    move/from16 v9, v24

    move/from16 v3, v29

    invoke-virtual {v1, v3, v14, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 127
    .end local v24    # "right":I
    .end local v29    # "left":I
    .local v3, "left":I
    .local v9, "right":I
    iget-object v2, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    const/16 v16, 0x0

    const/16 v20, 0x0

    move-object v1, v15

    move v7, v3

    move-object/from16 v8, p1

    move-object v3, v8

    .line 127
    .end local v3    # "left":I
    .restart local v7    # "left":I
    move v6, v14

    move/from16 v14, p2

    move v4, v14

    .line 127
    .end local v14    # "top":I
    .local v6, "top":I
    move v5, v13

    move/from16 v30, v6

    move/from16 v6, p4

    .line 127
    .end local v6    # "top":I
    .local v30, "top":I
    move/from16 v31, v7

    move v7, v11

    .line 127
    .end local v7    # "left":I
    .local v31, "left":I
    move-object/from16 v8, p6

    move/from16 v23, v9

    move/from16 v9, v16

    .line 127
    .end local v9    # "right":I
    .local v23, "right":I
    move/from16 v16, v10

    move/from16 v10, v20

    .line 127
    .end local v10    # "bottom":I
    .local v16, "bottom":I
    invoke-virtual/range {v1 .. v10}, Lorg/achartengine/chart/XYChart;->drawBackground(Lorg/achartengine/renderer/DefaultRenderer;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 129
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getTextTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    iget-object v2, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getTextTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_3
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getTextTypefaceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    iget-object v2, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getTextTypefaceStyle()I

    move-result v2

    if-eq v1, v2, :cond_4

    goto :goto_2

    .line 141
    :cond_4
    move-object/from16 v10, p6

    goto :goto_3

    .line 134
    :cond_5
    :goto_2
    iget-object v1, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getTextTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 135
    iget-object v1, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getTextTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    move-object/from16 v10, p6

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_3

    .line 137
    :cond_6
    move-object/from16 v10, p6

    iget-object v1, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getTextTypefaceName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getTextTypefaceStyle()I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 141
    :goto_3
    iget-object v1, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getOrientation()Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    move-result-object v9

    .line 142
    .local v9, "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    sget-object v1, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->VERTICAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    if-ne v9, v1, :cond_7

    .line 143
    sub-int v4, v23, v19

    .line 144
    .end local v23    # "right":I
    .restart local v4    # "right":I
    add-int/lit8 v1, v19, -0x14

    add-int v1, v16, v1

    .line 146
    .end local v16    # "bottom":I
    .local v1, "bottom":I
    move v7, v1

    move v8, v4

    goto :goto_4

    .line 146
    .end local v1    # "bottom":I
    .end local v4    # "right":I
    .restart local v16    # "bottom":I
    .restart local v23    # "right":I
    :cond_7
    move/from16 v7, v16

    move/from16 v8, v23

    .line 146
    .end local v16    # "bottom":I
    .end local v23    # "right":I
    .local v7, "bottom":I
    .local v8, "right":I
    :goto_4
    invoke-virtual {v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->getAngle()I

    move-result v6

    .line 147
    .local v6, "angle":I
    const/16 v1, 0x5a

    if-ne v6, v1, :cond_8

    const/4 v1, 0x1

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    :goto_5
    move/from16 v20, v1

    .line 148
    .local v20, "rotate":Z
    int-to-float v1, v11

    move/from16 v5, p4

    int-to-float v2, v5

    div-float/2addr v1, v2

    iput v1, v15, Lorg/achartengine/chart/XYChart;->mScale:F

    .line 149
    sub-int v1, v5, v11

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    div-int/2addr v1, v12

    int-to-float v1, v1

    iput v1, v15, Lorg/achartengine/chart/XYChart;->mTranslate:F

    .line 150
    iget v1, v15, Lorg/achartengine/chart/XYChart;->mScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_9

    .line 151
    iget v1, v15, Lorg/achartengine/chart/XYChart;->mTranslate:F

    const/high16 v2, -0x40800000    # -1.0f

    mul-float/2addr v1, v2

    iput v1, v15, Lorg/achartengine/chart/XYChart;->mTranslate:F

    .line 153
    :cond_9
    new-instance v1, Lorg/achartengine/model/Point;

    add-int v2, v14, v5

    div-int/2addr v2, v12

    int-to-float v2, v2

    add-int v3, v13, v11

    div-int/2addr v3, v12

    int-to-float v3, v3

    invoke-direct {v1, v2, v3}, Lorg/achartengine/model/Point;-><init>(FF)V

    iput-object v1, v15, Lorg/achartengine/chart/XYChart;->mCenter:Lorg/achartengine/model/Point;

    .line 154
    if-eqz v20, :cond_a

    .line 155
    int-to-float v1, v6

    const/4 v3, 0x0

    move-object/from16 v4, p1

    invoke-direct {v15, v4, v1, v3}, Lorg/achartengine/chart/XYChart;->transform(Landroid/graphics/Canvas;FZ)V

    goto :goto_6

    .line 158
    :cond_a
    const/4 v3, 0x0

    move-object/from16 v4, p1

    :goto_6
    const v1, -0x7fffffff

    .line 159
    .local v1, "maxScaleNumber":I
    move v2, v1

    move v1, v3

    .line 159
    .local v1, "i":I
    .local v2, "maxScaleNumber":I
    :goto_7
    move/from16 v12, v22

    if-ge v1, v12, :cond_b

    .line 160
    .end local v22    # "sLength":I
    .local v12, "sLength":I
    iget-object v3, v15, Lorg/achartengine/chart/XYChart;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    invoke-virtual {v3, v1}, Lorg/achartengine/model/XYMultipleSeriesDataset;->getSeriesAt(I)Lorg/achartengine/model/XYSeries;

    move-result-object v3

    invoke-virtual {v3}, Lorg/achartengine/model/XYSeries;->getScaleNumber()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 159
    add-int/lit8 v1, v1, 0x1

    move/from16 v22, v12

    const/4 v3, 0x0

    const/4 v12, 0x2

    goto :goto_7

    .line 162
    .end local v1    # "i":I
    :cond_b
    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 163
    if-gez v2, :cond_c

    .line 164
    return-void

    .line 166
    :cond_c
    new-array v1, v2, [D

    .line 167
    .local v1, "minX":[D
    new-array v3, v2, [D

    .line 168
    .local v3, "maxX":[D
    new-array v13, v2, [D

    .line 169
    .local v13, "minY":[D
    new-array v14, v2, [D

    .line 170
    .local v14, "maxY":[D
    new-array v11, v2, [Z

    .line 171
    .local v11, "isMinXSet":[Z
    move-object/from16 v39, v9

    new-array v9, v2, [Z

    .line 172
    .local v9, "isMaxXSet":[Z
    .local v39, "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    move/from16 v40, v6

    new-array v6, v2, [Z

    .line 173
    .local v6, "isMinYSet":[Z
    .local v40, "angle":I
    new-array v5, v2, [Z

    .line 175
    .local v5, "isMaxYSet":[Z
    const/16 v16, 0x0

    .line 175
    .local v16, "i":I
    :goto_8
    move/from16 v42, v16

    .line 175
    .end local v16    # "i":I
    .local v42, "i":I
    move/from16 v10, v42

    if-ge v10, v2, :cond_e

    .line 176
    .end local v42    # "i":I
    .local v10, "i":I
    iget-object v4, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXAxisMin(I)D

    move-result-wide v22

    aput-wide v22, v1, v10

    .line 177
    iget-object v4, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXAxisMax(I)D

    move-result-wide v22

    aput-wide v22, v3, v10

    .line 178
    iget-object v4, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisMin(I)D

    move-result-wide v22

    aput-wide v22, v13, v10

    .line 179
    iget-object v4, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisMax(I)D

    move-result-wide v22

    aput-wide v22, v14, v10

    .line 180
    iget-object v4, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMinXSet(I)Z

    move-result v4

    aput-boolean v4, v11, v10

    .line 181
    iget-object v4, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMaxXSet(I)Z

    move-result v4

    aput-boolean v4, v9, v10

    .line 182
    iget-object v4, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMinYSet(I)Z

    move-result v4

    aput-boolean v4, v6, v10

    .line 183
    iget-object v4, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMaxYSet(I)Z

    move-result v4

    aput-boolean v4, v5, v10

    .line 184
    iget-object v4, v15, Lorg/achartengine/chart/XYChart;->mCalcRange:Ljava/util/Map;

    move/from16 v45, v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 184
    .end local v7    # "bottom":I
    .local v45, "bottom":I
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_d

    .line 185
    iget-object v4, v15, Lorg/achartengine/chart/XYChart;->mCalcRange:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move/from16 v46, v8

    const/4 v8, 0x4

    .line 185
    .end local v8    # "right":I
    .local v46, "right":I
    new-array v8, v8, [D

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 175
    .end local v46    # "right":I
    .restart local v8    # "right":I
    :cond_d
    move/from16 v46, v8

    .line 175
    .end local v8    # "right":I
    .restart local v46    # "right":I
    :goto_9
    add-int/lit8 v16, v10, 0x1

    .line 175
    .end local v10    # "i":I
    .restart local v16    # "i":I
    move/from16 v7, v45

    move/from16 v8, v46

    move-object/from16 v4, p1

    move-object/from16 v10, p6

    goto :goto_8

    .line 188
    .end local v16    # "i":I
    .end local v45    # "bottom":I
    .end local v46    # "right":I
    .restart local v7    # "bottom":I
    .restart local v8    # "right":I
    :cond_e
    move/from16 v45, v7

    move/from16 v46, v8

    .line 188
    .end local v7    # "bottom":I
    .end local v8    # "right":I
    .restart local v45    # "bottom":I
    .restart local v46    # "right":I
    new-array v10, v2, [D

    .line 189
    .local v10, "xPixelsPerUnit":[D
    new-array v8, v2, [D

    .line 190
    .local v8, "yPixelsPerUnit":[D
    const/4 v4, 0x0

    .line 190
    .local v4, "i":I
    :goto_a
    if-ge v4, v12, :cond_14

    .line 191
    iget-object v7, v15, Lorg/achartengine/chart/XYChart;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    invoke-virtual {v7, v4}, Lorg/achartengine/model/XYMultipleSeriesDataset;->getSeriesAt(I)Lorg/achartengine/model/XYSeries;

    move-result-object v7

    .line 192
    .local v7, "series":Lorg/achartengine/model/XYSeries;
    move/from16 v47, v12

    invoke-virtual {v7}, Lorg/achartengine/model/XYSeries;->getScaleNumber()I

    move-result v12

    .line 193
    .local v12, "scale":I
    .local v47, "sLength":I
    invoke-virtual {v7}, Lorg/achartengine/model/XYSeries;->getItemCount()I

    move-result v16

    if-nez v16, :cond_f

    .line 194
    nop

    .line 190
    move/from16 v51, v4

    move-object/from16 v50, v5

    move-object/from16 v52, v6

    move-object/from16 v49, v10

    move-object/from16 v48, v11

    const/16 v16, 0x1

    goto/16 :goto_e

    .line 196
    :cond_f
    aget-boolean v16, v11, v12

    if-nez v16, :cond_10

    .line 197
    move-object/from16 v49, v10

    move-object/from16 v48, v11

    invoke-virtual {v7}, Lorg/achartengine/model/XYSeries;->getMinX()D

    move-result-wide v10

    .line 198
    .end local v11    # "isMinXSet":[Z
    .local v10, "minimumX":D
    .local v48, "isMinXSet":[Z
    .local v49, "xPixelsPerUnit":[D
    move/from16 v51, v4

    move-object/from16 v50, v5

    aget-wide v4, v1, v12

    .line 198
    .end local v4    # "i":I
    .end local v5    # "isMaxYSet":[Z
    .local v50, "isMaxYSet":[Z
    .local v51, "i":I
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    aput-wide v4, v1, v12

    .line 199
    iget-object v4, v15, Lorg/achartengine/chart/XYChart;->mCalcRange:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    aget-wide v22, v1, v12

    const/4 v5, 0x0

    aput-wide v22, v4, v5

    .line 199
    .end local v10    # "minimumX":D
    goto :goto_b

    .line 201
    .end local v48    # "isMinXSet":[Z
    .end local v49    # "xPixelsPerUnit":[D
    .end local v50    # "isMaxYSet":[Z
    .end local v51    # "i":I
    .restart local v4    # "i":I
    .restart local v5    # "isMaxYSet":[Z
    .local v10, "xPixelsPerUnit":[D
    .restart local v11    # "isMinXSet":[Z
    :cond_10
    move/from16 v51, v4

    move-object/from16 v50, v5

    move-object/from16 v49, v10

    move-object/from16 v48, v11

    const/4 v5, 0x0

    .line 201
    .end local v4    # "i":I
    .end local v5    # "isMaxYSet":[Z
    .end local v10    # "xPixelsPerUnit":[D
    .end local v11    # "isMinXSet":[Z
    .restart local v48    # "isMinXSet":[Z
    .restart local v49    # "xPixelsPerUnit":[D
    .restart local v50    # "isMaxYSet":[Z
    .restart local v51    # "i":I
    :goto_b
    aget-boolean v4, v9, v12

    if-nez v4, :cond_11

    .line 202
    invoke-virtual {v7}, Lorg/achartengine/model/XYSeries;->getMaxX()D

    move-result-wide v10

    .line 203
    .local v10, "maximumX":D
    move-object/from16 v52, v6

    aget-wide v5, v3, v12

    .line 203
    .end local v6    # "isMinYSet":[Z
    .local v52, "isMinYSet":[Z
    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    aput-wide v4, v3, v12

    .line 204
    iget-object v4, v15, Lorg/achartengine/chart/XYChart;->mCalcRange:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    aget-wide v5, v3, v12

    const/16 v16, 0x1

    aput-wide v5, v4, v16

    .line 204
    .end local v10    # "maximumX":D
    goto :goto_c

    .line 206
    .end local v52    # "isMinYSet":[Z
    .restart local v6    # "isMinYSet":[Z
    :cond_11
    move-object/from16 v52, v6

    const/16 v16, 0x1

    .line 206
    .end local v6    # "isMinYSet":[Z
    .restart local v52    # "isMinYSet":[Z
    :goto_c
    aget-boolean v4, v52, v12

    if-nez v4, :cond_12

    .line 207
    invoke-virtual {v7}, Lorg/achartengine/model/XYSeries;->getMinY()D

    move-result-wide v4

    .line 208
    .local v4, "minimumY":D
    aget-wide v10, v13, v12

    double-to-float v6, v4

    move-wide/from16 v53, v4

    float-to-double v4, v6

    .line 208
    .end local v4    # "minimumY":D
    .local v53, "minimumY":D
    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    aput-wide v4, v13, v12

    .line 209
    iget-object v4, v15, Lorg/achartengine/chart/XYChart;->mCalcRange:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    aget-wide v5, v13, v12

    const/4 v10, 0x2

    aput-wide v5, v4, v10

    .line 209
    .end local v53    # "minimumY":D
    goto :goto_d

    .line 211
    :cond_12
    const/4 v10, 0x2

    :goto_d
    aget-boolean v4, v50, v12

    if-nez v4, :cond_13

    .line 212
    invoke-virtual {v7}, Lorg/achartengine/model/XYSeries;->getMaxY()D

    move-result-wide v4

    .line 213
    .local v4, "maximumY":D
    aget-wide v10, v14, v12

    double-to-float v6, v4

    move-wide/from16 v55, v4

    float-to-double v4, v6

    .line 213
    .end local v4    # "maximumY":D
    .local v55, "maximumY":D
    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    aput-wide v4, v14, v12

    .line 214
    iget-object v4, v15, Lorg/achartengine/chart/XYChart;->mCalcRange:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    aget-wide v5, v14, v12

    aput-wide v5, v4, v18

    .line 190
    .end local v7    # "series":Lorg/achartengine/model/XYSeries;
    .end local v12    # "scale":I
    .end local v55    # "maximumY":D
    :cond_13
    :goto_e
    add-int/lit8 v4, v51, 0x1

    .line 190
    .end local v51    # "i":I
    .local v4, "i":I
    move/from16 v12, v47

    move-object/from16 v11, v48

    move-object/from16 v10, v49

    move-object/from16 v5, v50

    move-object/from16 v6, v52

    goto/16 :goto_a

    .line 217
    .end local v4    # "i":I
    .end local v47    # "sLength":I
    .end local v48    # "isMinXSet":[Z
    .end local v49    # "xPixelsPerUnit":[D
    .end local v50    # "isMaxYSet":[Z
    .end local v52    # "isMinYSet":[Z
    .restart local v5    # "isMaxYSet":[Z
    .restart local v6    # "isMinYSet":[Z
    .local v10, "xPixelsPerUnit":[D
    .restart local v11    # "isMinXSet":[Z
    .local v12, "sLength":I
    :cond_14
    move-object/from16 v50, v5

    move-object/from16 v52, v6

    move-object/from16 v49, v10

    move-object/from16 v48, v11

    move/from16 v47, v12

    const/16 v16, 0x1

    .line 217
    .end local v5    # "isMaxYSet":[Z
    .end local v6    # "isMinYSet":[Z
    .end local v10    # "xPixelsPerUnit":[D
    .end local v11    # "isMinXSet":[Z
    .end local v12    # "sLength":I
    .restart local v47    # "sLength":I
    .restart local v48    # "isMinXSet":[Z
    .restart local v49    # "xPixelsPerUnit":[D
    .restart local v50    # "isMaxYSet":[Z
    .restart local v52    # "isMinYSet":[Z
    const/4 v4, 0x0

    .line 217
    .restart local v4    # "i":I
    :goto_f
    if-ge v4, v2, :cond_17

    .line 218
    aget-wide v5, v3, v4

    aget-wide v10, v1, v4

    sub-double/2addr v5, v10

    const-wide/16 v10, 0x0

    cmpl-double v7, v5, v10

    if-eqz v7, :cond_15

    .line 219
    move/from16 v12, v31

    sub-int v5, v46, v12

    .line 219
    .end local v31    # "left":I
    .local v12, "left":I
    int-to-double v5, v5

    aget-wide v22, v3, v4

    aget-wide v24, v1, v4

    sub-double v22, v22, v24

    div-double v5, v5, v22

    aput-wide v5, v49, v4

    goto :goto_10

    .line 221
    .end local v12    # "left":I
    .restart local v31    # "left":I
    :cond_15
    move/from16 v12, v31

    .line 221
    .end local v31    # "left":I
    .restart local v12    # "left":I
    :goto_10
    aget-wide v5, v14, v4

    aget-wide v22, v13, v4

    sub-double v5, v5, v22

    cmpl-double v7, v5, v10

    if-eqz v7, :cond_16

    .line 222
    move/from16 v11, v30

    sub-int v7, v45, v11

    .line 222
    .end local v30    # "top":I
    .local v11, "top":I
    int-to-double v5, v7

    aget-wide v22, v14, v4

    aget-wide v24, v13, v4

    sub-double v22, v22, v24

    div-double v5, v5, v22

    double-to-float v5, v5

    float-to-double v5, v5

    aput-wide v5, v8, v4

    goto :goto_11

    .line 217
    .end local v11    # "top":I
    .restart local v30    # "top":I
    :cond_16
    move/from16 v11, v30

    .line 217
    .end local v30    # "top":I
    .restart local v11    # "top":I
    :goto_11
    add-int/lit8 v4, v4, 0x1

    move/from16 v30, v11

    move/from16 v31, v12

    goto :goto_f

    .line 226
    .end local v4    # "i":I
    .end local v11    # "top":I
    .end local v12    # "left":I
    .restart local v30    # "top":I
    .restart local v31    # "left":I
    :cond_17
    move/from16 v11, v30

    move/from16 v12, v31

    .line 226
    .end local v30    # "top":I
    .end local v31    # "left":I
    .restart local v11    # "top":I
    .restart local v12    # "left":I
    const/4 v4, 0x0

    .line 231
    .local v4, "hasValues":Z
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v15, Lorg/achartengine/chart/XYChart;->clickableAreas:Ljava/util/Map;

    .line 232
    move/from16 v22, v4

    const/4 v4, 0x0

    .line 232
    .local v4, "i":I
    .local v22, "hasValues":Z
    :goto_12
    move v10, v4

    .line 232
    .end local v4    # "i":I
    .local v10, "i":I
    move/from16 v7, v47

    if-ge v10, v7, :cond_23

    .line 233
    .end local v47    # "sLength":I
    .local v7, "sLength":I
    iget-object v4, v15, Lorg/achartengine/chart/XYChart;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    invoke-virtual {v4, v10}, Lorg/achartengine/model/XYMultipleSeriesDataset;->getSeriesAt(I)Lorg/achartengine/model/XYSeries;

    move-result-object v6

    .line 234
    .local v6, "series":Lorg/achartengine/model/XYSeries;
    invoke-virtual {v6}, Lorg/achartengine/model/XYSeries;->getScaleNumber()I

    move-result v29

    .line 235
    .local v29, "scale":I
    invoke-virtual {v6}, Lorg/achartengine/model/XYSeries;->getItemCount()I

    move-result v4

    if-nez v4, :cond_18

    .line 236
    nop

    .line 232
    move-object/from16 v23, v1

    move/from16 v84, v2

    move-object/from16 v24, v3

    move/from16 v82, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move/from16 v61, v11

    move/from16 v89, v12

    move-object/from16 v86, v13

    move-object/from16 v62, v14

    move-object/from16 v87, v39

    move/from16 v79, v40

    move/from16 v12, v45

    move/from16 v85, v46

    move-object/from16 v39, v49

    move-object/from16 v26, v50

    move-object/from16 v28, v52

    move-object/from16 v13, p6

    move/from16 v25, p4

    move/from16 v40, v10

    goto/16 :goto_1d

    .line 239
    :cond_18
    const/16 v30, 0x1

    .line 240
    .end local v22    # "hasValues":Z
    .local v30, "hasValues":Z
    iget-object v4, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getSeriesRendererAt(I)Lorg/achartengine/renderer/SimpleSeriesRenderer;

    move-result-object v5

    .line 246
    .local v5, "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v4, "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    move/from16 v57, v2

    new-instance v2, Ljava/util/ArrayList;

    .line 247
    .end local v2    # "maxScaleNumber":I
    .local v57, "maxScaleNumber":I
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .local v2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    move/from16 v58, v7

    move-object/from16 v59, v9

    move/from16 v7, v45

    int-to-float v9, v7

    .line 248
    .end local v9    # "isMaxXSet":[Z
    .end local v45    # "bottom":I
    .local v7, "bottom":I
    .local v58, "sLength":I
    .local v59, "isMaxXSet":[Z
    move/from16 v61, v11

    move/from16 v60, v12

    int-to-double v11, v7

    .line 248
    .end local v11    # "top":I
    .end local v12    # "left":I
    .local v60, "left":I
    .local v61, "top":I
    aget-wide v22, v8, v29

    aget-wide v24, v13, v29

    mul-double v22, v22, v24

    add-double v11, v11, v22

    double-to-float v11, v11

    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 249
    .local v11, "yAxisValue":F
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    move-object v12, v9

    .line 251
    .local v12, "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    iget-object v9, v15, Lorg/achartengine/chart/XYChart;->clickableAreas:Ljava/util/Map;

    move-object/from16 v62, v14

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 251
    .end local v14    # "maxY":[D
    .local v62, "maxY":[D
    invoke-interface {v9, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    monitor-enter v6

    .line 254
    :try_start_0
    aget-wide v24, v1, v29

    aget-wide v26, v3, v29

    invoke-virtual {v5}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->isDisplayBoundingPoints()Z

    move-result v28

    move-object/from16 v23, v6

    invoke-virtual/range {v23 .. v28}, Lorg/achartengine/model/XYSeries;->getRange(DDZ)Ljava/util/SortedMap;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_11

    move-object v14, v9

    .line 256
    .local v14, "range":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Double;Ljava/lang/Double;>;"
    const/4 v9, -0x1

    .line 258
    .local v9, "startIndex":I
    move-object/from16 v63, v3

    :try_start_1
    invoke-interface {v14}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 258
    .end local v3    # "maxX":[D
    .local v63, "maxX":[D
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move/from16 v22, v9

    .line 258
    .end local v9    # "startIndex":I
    .local v3, "i$":Ljava/util/Iterator;
    .local v22, "startIndex":I
    :goto_13
    move-object v9, v3

    .line 258
    .end local v3    # "i$":Ljava/util/Iterator;
    .local v9, "i$":Ljava/util/Iterator;
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_10

    if-eqz v3, :cond_1f

    :try_start_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 259
    .local v3, "value":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/Double;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_d

    move-object/from16 v64, v5

    :try_start_3
    move-object/from16 v5, v23

    check-cast v5, Ljava/lang/Double;

    .line 259
    .end local v5    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .local v64, "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v23

    move-wide/from16 v65, v23

    .line 260
    .local v65, "xValue":D
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v23
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_c

    move-wide/from16 v67, v23

    .line 261
    .local v67, "yValue":D
    if-gez v22, :cond_1b

    move-object/from16 v70, v9

    move/from16 v69, v10

    move-wide/from16 v9, v67

    :try_start_4
    invoke-virtual {v15, v9, v10}, Lorg/achartengine/chart/XYChart;->isNullValue(D)Z

    move-result v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 261
    .end local v10    # "i":I
    .end local v67    # "yValue":D
    .local v9, "yValue":D
    .local v69, "i":I
    .local v70, "i$":Ljava/util/Iterator;
    if-eqz v5, :cond_1a

    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lorg/achartengine/chart/XYChart;->isRenderNullValues()Z

    move-result v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v5, :cond_19

    goto :goto_14

    .line 269
    :cond_19
    move/from16 v71, v11

    move-object/from16 v72, v12

    move-wide/from16 v11, v65

    goto/16 :goto_16

    .line 316
    .end local v3    # "value":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/Double;>;"
    .end local v9    # "yValue":D
    .end local v14    # "range":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Double;Ljava/lang/Double;>;"
    .end local v22    # "startIndex":I
    .end local v65    # "xValue":D
    .end local v70    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v0

    move-object/from16 v23, v1

    move-object/from16 v33, v2

    move-object/from16 v34, v4

    move-object/from16 v31, v8

    move/from16 v71, v11

    move-object v14, v12

    move-object/from16 v86, v13

    move-object/from16 v87, v39

    move/from16 v79, v40

    move/from16 v85, v46

    move-object/from16 v39, v49

    move-object/from16 v26, v50

    move-object/from16 v28, v52

    move/from16 v84, v57

    move/from16 v82, v58

    move-object/from16 v32, v59

    move/from16 v89, v60

    move-object/from16 v24, v63

    move-object/from16 v27, v64

    move/from16 v40, v69

    move-object/from16 v13, p6

    move/from16 v25, p4

    move-object v1, v0

    move-object v11, v6

    move v12, v7

    goto/16 :goto_1e

    .line 262
    .restart local v3    # "value":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/Double;>;"
    .restart local v9    # "yValue":D
    .restart local v14    # "range":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Double;Ljava/lang/Double;>;"
    .restart local v22    # "startIndex":I
    .restart local v65    # "xValue":D
    .restart local v70    # "i$":Ljava/util/Iterator;
    :cond_1a
    :goto_14
    move/from16 v71, v11

    move-object/from16 v72, v12

    move-wide/from16 v11, v65

    :try_start_6
    invoke-virtual {v6, v11, v12}, Lorg/achartengine/model/XYSeries;->getIndexForKey(D)I

    move-result v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 269
    .end local v12    # "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .end local v22    # "startIndex":I
    .end local v65    # "xValue":D
    .local v5, "startIndex":I
    .local v11, "xValue":D
    .local v71, "yAxisValue":F
    .local v72, "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    move/from16 v22, v5

    goto/16 :goto_16

    .line 316
    .end local v3    # "value":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/Double;>;"
    .end local v5    # "startIndex":I
    .end local v9    # "yValue":D
    .end local v11    # "xValue":D
    .end local v14    # "range":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Double;Ljava/lang/Double;>;"
    .end local v70    # "i$":Ljava/util/Iterator;
    :catchall_1
    move-exception v0

    move-object/from16 v23, v1

    move-object/from16 v33, v2

    move-object/from16 v34, v4

    move-object v11, v6

    move v12, v7

    move-object/from16 v31, v8

    move-object/from16 v86, v13

    move-object/from16 v87, v39

    move/from16 v79, v40

    move/from16 v85, v46

    move-object/from16 v39, v49

    move-object/from16 v26, v50

    move-object/from16 v28, v52

    move/from16 v84, v57

    move/from16 v82, v58

    move-object/from16 v32, v59

    move/from16 v89, v60

    move-object/from16 v24, v63

    move-object/from16 v27, v64

    move/from16 v40, v69

    move-object/from16 v14, v72

    .line 316
    .end local v1    # "minX":[D
    .end local v2    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v4    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v6    # "series":Lorg/achartengine/model/XYSeries;
    .end local v7    # "bottom":I
    .end local v8    # "yPixelsPerUnit":[D
    .end local v13    # "minY":[D
    .end local v46    # "right":I
    .end local v49    # "xPixelsPerUnit":[D
    .end local v50    # "isMaxYSet":[Z
    .end local v52    # "isMinYSet":[Z
    .end local v57    # "maxScaleNumber":I
    .end local v58    # "sLength":I
    .end local v59    # "isMaxXSet":[Z
    .end local v60    # "left":I
    .end local v63    # "maxX":[D
    .end local v64    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .end local v69    # "i":I
    .end local v72    # "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .local v11, "series":Lorg/achartengine/model/XYSeries;
    .local v12, "bottom":I
    .local v14, "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .local v23, "minX":[D
    .local v24, "maxX":[D
    .local v26, "isMaxYSet":[Z
    .local v27, "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .local v28, "isMinYSet":[Z
    .local v31, "yPixelsPerUnit":[D
    .local v32, "isMaxXSet":[Z
    .local v33, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .local v34, "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v39, "xPixelsPerUnit":[D
    .local v40, "i":I
    .local v79, "angle":I
    .local v82, "sLength":I
    .local v84, "maxScaleNumber":I
    .local v85, "right":I
    .local v86, "minY":[D
    .local v87, "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .local v89, "left":I
    :goto_15
    move-object/from16 v13, p6

    move/from16 v25, p4

    goto/16 :goto_1f

    .line 316
    .end local v14    # "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .end local v23    # "minX":[D
    .end local v24    # "maxX":[D
    .end local v26    # "isMaxYSet":[Z
    .end local v27    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .end local v28    # "isMinYSet":[Z
    .end local v31    # "yPixelsPerUnit":[D
    .end local v32    # "isMaxXSet":[Z
    .end local v33    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v34    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v71    # "yAxisValue":F
    .end local v79    # "angle":I
    .end local v82    # "sLength":I
    .end local v84    # "maxScaleNumber":I
    .end local v85    # "right":I
    .end local v86    # "minY":[D
    .end local v87    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .end local v89    # "left":I
    .restart local v1    # "minX":[D
    .restart local v2    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .restart local v4    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v6    # "series":Lorg/achartengine/model/XYSeries;
    .restart local v7    # "bottom":I
    .restart local v8    # "yPixelsPerUnit":[D
    .local v11, "yAxisValue":F
    .local v12, "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .restart local v13    # "minY":[D
    .local v39, "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .local v40, "angle":I
    .restart local v46    # "right":I
    .restart local v49    # "xPixelsPerUnit":[D
    .restart local v50    # "isMaxYSet":[Z
    .restart local v52    # "isMinYSet":[Z
    .restart local v57    # "maxScaleNumber":I
    .restart local v58    # "sLength":I
    .restart local v59    # "isMaxXSet":[Z
    .restart local v60    # "left":I
    .restart local v63    # "maxX":[D
    .restart local v64    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .restart local v69    # "i":I
    :catchall_2
    move-exception v0

    move/from16 v71, v11

    move-object/from16 v23, v1

    move-object/from16 v33, v2

    move-object/from16 v34, v4

    move-object v11, v6

    move-object/from16 v31, v8

    move-object v14, v12

    move-object/from16 v86, v13

    move-object/from16 v87, v39

    move/from16 v79, v40

    move/from16 v85, v46

    move-object/from16 v39, v49

    move-object/from16 v26, v50

    move-object/from16 v28, v52

    move/from16 v84, v57

    move/from16 v82, v58

    move-object/from16 v32, v59

    move/from16 v89, v60

    move-object/from16 v24, v63

    move-object/from16 v27, v64

    move/from16 v40, v69

    move-object/from16 v13, p6

    move/from16 v25, p4

    move-object v1, v0

    move v12, v7

    .line 316
    .end local v11    # "yAxisValue":F
    .end local v12    # "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .restart local v71    # "yAxisValue":F
    .restart local v72    # "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    goto/16 :goto_1e

    .line 269
    .end local v69    # "i":I
    .end local v71    # "yAxisValue":F
    .end local v72    # "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .restart local v3    # "value":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/Double;>;"
    .local v9, "i$":Ljava/util/Iterator;
    .restart local v10    # "i":I
    .restart local v11    # "yAxisValue":F
    .restart local v12    # "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .local v14, "range":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Double;Ljava/lang/Double;>;"
    .restart local v22    # "startIndex":I
    .restart local v65    # "xValue":D
    .restart local v67    # "yValue":D
    :cond_1b
    move-object/from16 v70, v9

    move/from16 v69, v10

    move/from16 v71, v11

    move-object/from16 v72, v12

    move-wide/from16 v11, v65

    move-wide/from16 v9, v67

    .line 269
    .end local v10    # "i":I
    .end local v12    # "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .end local v65    # "xValue":D
    .end local v67    # "yValue":D
    .local v9, "yValue":D
    .local v11, "xValue":D
    .restart local v69    # "i":I
    .restart local v70    # "i$":Ljava/util/Iterator;
    .restart local v71    # "yAxisValue":F
    .restart local v72    # "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    :goto_16
    :try_start_7
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    invoke-virtual {v15, v9, v10}, Lorg/achartengine/chart/XYChart;->isNullValue(D)Z

    move-result v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_b

    if-nez v5, :cond_1c

    .line 273
    move-object/from16 v73, v2

    move-object/from16 v74, v3

    move/from16 v5, v60

    int-to-double v2, v5

    .line 273
    .end local v2    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v3    # "value":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/Double;>;"
    .end local v60    # "left":I
    .local v5, "left":I
    .local v73, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .local v74, "value":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/Double;>;"
    :try_start_8
    aget-wide v23, v49, v29

    aget-wide v25, v1, v29

    sub-double v65, v11, v25

    mul-double v23, v23, v65

    add-double v2, v2, v23

    double-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    int-to-double v2, v7

    aget-wide v23, v8, v29

    aget-wide v25, v13, v29

    sub-double v67, v9, v25

    mul-double v23, v23, v67

    sub-double v2, v2, v23

    double-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 291
    move/from16 v76, v7

    move-object/from16 v75, v8

    goto/16 :goto_17

    .line 316
    .end local v9    # "yValue":D
    .end local v11    # "xValue":D
    .end local v14    # "range":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Double;Ljava/lang/Double;>;"
    .end local v22    # "startIndex":I
    .end local v70    # "i$":Ljava/util/Iterator;
    .end local v74    # "value":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/Double;>;"
    :catchall_3
    move-exception v0

    move-object/from16 v23, v1

    move-object/from16 v34, v4

    move/from16 v89, v5

    move-object v11, v6

    move v12, v7

    move-object/from16 v31, v8

    move-object/from16 v86, v13

    move-object/from16 v87, v39

    move/from16 v79, v40

    move/from16 v85, v46

    move-object/from16 v39, v49

    move-object/from16 v26, v50

    move-object/from16 v28, v52

    move/from16 v84, v57

    move/from16 v82, v58

    move-object/from16 v32, v59

    move-object/from16 v24, v63

    move-object/from16 v27, v64

    move/from16 v40, v69

    move-object/from16 v14, v72

    move-object/from16 v33, v73

    goto/16 :goto_15

    .line 275
    .end local v5    # "left":I
    .end local v73    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .restart local v2    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .restart local v3    # "value":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/Double;>;"
    .restart local v9    # "yValue":D
    .restart local v11    # "xValue":D
    .restart local v14    # "range":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Double;Ljava/lang/Double;>;"
    .restart local v22    # "startIndex":I
    .restart local v60    # "left":I
    .restart local v70    # "i$":Ljava/util/Iterator;
    :cond_1c
    move-object/from16 v73, v2

    move-object/from16 v74, v3

    move/from16 v5, v60

    .line 275
    .end local v2    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v3    # "value":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/Double;>;"
    .end local v60    # "left":I
    .restart local v5    # "left":I
    .restart local v73    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .restart local v74    # "value":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/Double;>;"
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lorg/achartengine/chart/XYChart;->isRenderNullValues()Z

    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_a

    if-eqz v2, :cond_1d

    .line 276
    int-to-double v2, v5

    :try_start_a
    aget-wide v23, v49, v29

    aget-wide v25, v1, v29

    sub-double v65, v11, v25

    mul-double v23, v23, v65

    add-double v2, v2, v23

    double-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    int-to-double v2, v7

    aget-wide v23, v8, v29
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    move/from16 v76, v7

    move-object/from16 v75, v8

    :try_start_b
    aget-wide v7, v13, v29

    .line 277
    .end local v7    # "bottom":I
    .end local v8    # "yPixelsPerUnit":[D
    .local v75, "yPixelsPerUnit":[D
    .local v76, "bottom":I
    neg-double v7, v7

    mul-double v23, v23, v7

    sub-double v2, v2, v23

    double-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 291
    .end local v9    # "yValue":D
    .end local v11    # "xValue":D
    .end local v74    # "value":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/Double;>;"
    .end local v75    # "yPixelsPerUnit":[D
    .end local v76    # "bottom":I
    .restart local v7    # "bottom":I
    .restart local v8    # "yPixelsPerUnit":[D
    :goto_17
    move-object/from16 v23, v1

    move-object v9, v4

    move-object v11, v6

    move-object/from16 v86, v13

    move-object/from16 v77, v14

    move-object/from16 v87, v39

    move/from16 v79, v40

    move/from16 v85, v46

    move-object/from16 v39, v49

    move-object/from16 v26, v50

    move-object/from16 v28, v52

    move/from16 v84, v57

    move/from16 v82, v58

    move-object/from16 v32, v59

    move-object/from16 v24, v63

    move-object/from16 v27, v64

    move/from16 v40, v69

    move-object/from16 v33, v70

    move-object/from16 v10, v72

    move-object/from16 v8, v73

    move-object/from16 v31, v75

    move/from16 v12, v76

    move-object/from16 v13, p6

    move/from16 v25, p4

    move v14, v5

    .line 291
    .end local v7    # "bottom":I
    .end local v8    # "yPixelsPerUnit":[D
    .restart local v75    # "yPixelsPerUnit":[D
    .restart local v76    # "bottom":I
    goto/16 :goto_19

    .line 316
    .end local v14    # "range":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Double;Ljava/lang/Double;>;"
    .end local v22    # "startIndex":I
    .end local v70    # "i$":Ljava/util/Iterator;
    :catchall_4
    move-exception v0

    move-object/from16 v23, v1

    move-object/from16 v34, v4

    move/from16 v89, v5

    move-object v11, v6

    move-object/from16 v86, v13

    move-object/from16 v87, v39

    move/from16 v79, v40

    move/from16 v85, v46

    move-object/from16 v39, v49

    move-object/from16 v26, v50

    move-object/from16 v28, v52

    move/from16 v84, v57

    move/from16 v82, v58

    move-object/from16 v32, v59

    move-object/from16 v24, v63

    move-object/from16 v27, v64

    move/from16 v40, v69

    move-object/from16 v14, v72

    move-object/from16 v33, v73

    move-object/from16 v31, v75

    move/from16 v12, v76

    goto/16 :goto_15

    .line 316
    .end local v75    # "yPixelsPerUnit":[D
    .end local v76    # "bottom":I
    .restart local v7    # "bottom":I
    .restart local v8    # "yPixelsPerUnit":[D
    :catchall_5
    move-exception v0

    move-object/from16 v23, v1

    move-object/from16 v34, v4

    move/from16 v89, v5

    move-object v11, v6

    move v12, v7

    move-object/from16 v31, v8

    move-object/from16 v86, v13

    move-object/from16 v87, v39

    move/from16 v79, v40

    move/from16 v85, v46

    move-object/from16 v39, v49

    move-object/from16 v26, v50

    move-object/from16 v28, v52

    move/from16 v84, v57

    move/from16 v82, v58

    move-object/from16 v32, v59

    move-object/from16 v24, v63

    move-object/from16 v27, v64

    move/from16 v40, v69

    move-object/from16 v14, v72

    move-object/from16 v33, v73

    move-object/from16 v13, p6

    move/from16 v25, p4

    move-object v1, v0

    .line 316
    .end local v7    # "bottom":I
    .end local v8    # "yPixelsPerUnit":[D
    .restart local v75    # "yPixelsPerUnit":[D
    .restart local v76    # "bottom":I
    goto/16 :goto_1e

    .line 279
    .end local v75    # "yPixelsPerUnit":[D
    .end local v76    # "bottom":I
    .restart local v7    # "bottom":I
    .restart local v8    # "yPixelsPerUnit":[D
    .restart local v9    # "yValue":D
    .restart local v11    # "xValue":D
    .restart local v14    # "range":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Double;Ljava/lang/Double;>;"
    .restart local v22    # "startIndex":I
    .restart local v70    # "i$":Ljava/util/Iterator;
    .restart local v74    # "value":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/Double;>;"
    :cond_1d
    move/from16 v76, v7

    move-object/from16 v75, v8

    .line 279
    .end local v7    # "bottom":I
    .end local v8    # "yPixelsPerUnit":[D
    .restart local v75    # "yPixelsPerUnit":[D
    .restart local v76    # "bottom":I
    :try_start_c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    if-lez v2, :cond_1e

    .line 280
    move-object/from16 v23, v1

    move-object v1, v15

    .line 280
    .end local v1    # "minX":[D
    .restart local v23    # "minX":[D
    move/from16 v8, v57

    move-object/from16 v7, v73

    move-object v2, v6

    .line 280
    .end local v57    # "maxScaleNumber":I
    .end local v73    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .local v7, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .local v8, "maxScaleNumber":I
    move-object/from16 v77, v14

    move-object/from16 v24, v63

    move-object/from16 v16, v74

    const/4 v14, 0x0

    move-object/from16 v3, p1

    .line 280
    .end local v14    # "range":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Double;Ljava/lang/Double;>;"
    .end local v63    # "maxX":[D
    .end local v74    # "value":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/Double;>;"
    .local v16, "value":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/Double;>;"
    .restart local v24    # "maxX":[D
    .local v77, "range":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Double;Ljava/lang/Double;>;"
    move-object/from16 v78, v4

    move-object/from16 v4, p6

    .line 280
    .end local v4    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v78, "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    move v14, v5

    move-object/from16 v26, v50

    move-object/from16 v27, v64

    move/from16 v25, p4

    move-object/from16 v5, v78

    .line 280
    .end local v5    # "left":I
    .end local v50    # "isMaxYSet":[Z
    .end local v64    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .local v14, "left":I
    .restart local v26    # "isMaxYSet":[Z
    .restart local v27    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    move-wide/from16 v80, v11

    move/from16 v79, v40

    move-object/from16 v28, v52

    move-object v11, v6

    move-object/from16 v6, v27

    .line 280
    .end local v6    # "series":Lorg/achartengine/model/XYSeries;
    .end local v40    # "angle":I
    .end local v52    # "isMinYSet":[Z
    .local v11, "series":Lorg/achartengine/model/XYSeries;
    .restart local v28    # "isMinYSet":[Z
    .restart local v79    # "angle":I
    .local v80, "xValue":D
    move-object/from16 v83, v7

    move/from16 v82, v58

    move/from16 v12, v76

    move/from16 v7, v71

    .line 280
    .end local v7    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v58    # "sLength":I
    .end local v76    # "bottom":I
    .local v12, "bottom":I
    .restart local v82    # "sLength":I
    .local v83, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    move/from16 v84, v8

    move/from16 v85, v46

    move-object/from16 v31, v75

    move/from16 v8, v69

    .line 280
    .end local v8    # "maxScaleNumber":I
    .end local v46    # "right":I
    .end local v75    # "yPixelsPerUnit":[D
    .restart local v31    # "yPixelsPerUnit":[D
    .restart local v84    # "maxScaleNumber":I
    .restart local v85    # "right":I
    move-wide/from16 v34, v9

    move-object/from16 v10, v39

    move-object/from16 v32, v59

    move-object/from16 v33, v70

    move-object v9, v10

    .line 280
    .end local v9    # "yValue":D
    .end local v39    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .end local v59    # "isMaxXSet":[Z
    .end local v70    # "i$":Ljava/util/Iterator;
    .local v10, "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .restart local v32    # "isMaxXSet":[Z
    .local v33, "i$":Ljava/util/Iterator;
    .local v34, "yValue":D
    move-object/from16 v87, v10

    move-object/from16 v86, v13

    move-object/from16 v39, v49

    move/from16 v40, v69

    move-object/from16 v13, p6

    move/from16 v10, v22

    .line 280
    .end local v10    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .end local v13    # "minY":[D
    .end local v49    # "xPixelsPerUnit":[D
    .end local v69    # "i":I
    .local v39, "xPixelsPerUnit":[D
    .local v40, "i":I
    .restart local v86    # "minY":[D
    .restart local v87    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    :try_start_d
    invoke-virtual/range {v1 .. v10}, Lorg/achartengine/chart/XYChart;->drawSeries(Lorg/achartengine/model/XYSeries;Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lorg/achartengine/renderer/SimpleSeriesRenderer;FILorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;I)V

    .line 282
    move-object v1, v15

    move-object/from16 v2, v78

    move-object/from16 v3, v83

    move/from16 v4, v71

    move/from16 v5, v40

    move/from16 v6, v22

    invoke-virtual/range {v1 .. v6}, Lorg/achartengine/chart/XYChart;->clickableAreasForPoints(Ljava/util/List;Ljava/util/List;FII)[Lorg/achartengine/chart/ClickableArea;

    move-result-object v1

    .line 284
    .local v1, "clickableAreasForSubSeries":[Lorg/achartengine/chart/ClickableArea;
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    move-object/from16 v10, v72

    :try_start_e
    invoke-virtual {v10, v2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 285
    .end local v72    # "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .local v10, "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    move-object/from16 v9, v78

    :try_start_f
    invoke-interface {v9}, Ljava/util/List;->clear()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 286
    .end local v78    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v9, "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    move-object/from16 v8, v83

    :try_start_10
    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 287
    .end local v83    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .local v8, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    const/16 v22, -0x1

    .line 287
    .end local v1    # "clickableAreasForSubSeries":[Lorg/achartengine/chart/ClickableArea;
    goto/16 :goto_18

    .line 316
    .end local v8    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v16    # "value":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/Double;>;"
    .end local v22    # "startIndex":I
    .end local v33    # "i$":Ljava/util/Iterator;
    .end local v34    # "yValue":D
    .end local v77    # "range":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Double;Ljava/lang/Double;>;"
    .end local v80    # "xValue":D
    .restart local v83    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    :catchall_6
    move-exception v0

    move-object v1, v0

    move-object/from16 v34, v9

    move/from16 v89, v14

    move-object/from16 v33, v83

    move-object v14, v10

    .line 316
    .end local v83    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .restart local v8    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    goto/16 :goto_1e

    .line 316
    .end local v8    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v9    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v78    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v83    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    :catchall_7
    move-exception v0

    move-object v1, v0

    move/from16 v89, v14

    move-object/from16 v34, v78

    move-object/from16 v33, v83

    move-object v14, v10

    .line 316
    .end local v78    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v83    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .restart local v8    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .restart local v9    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    goto/16 :goto_1e

    .line 316
    .end local v8    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v9    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v10    # "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .restart local v72    # "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .restart local v78    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v83    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    :catchall_8
    move-exception v0

    move-object v1, v0

    move/from16 v89, v14

    move-object/from16 v14, v72

    move-object/from16 v34, v78

    move-object/from16 v33, v83

    .line 316
    .end local v72    # "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .end local v78    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v83    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .restart local v8    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .restart local v9    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v10    # "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    goto/16 :goto_1e

    .line 289
    .end local v8    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v10    # "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .end local v12    # "bottom":I
    .end local v23    # "minX":[D
    .end local v24    # "maxX":[D
    .end local v26    # "isMaxYSet":[Z
    .end local v27    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .end local v28    # "isMinYSet":[Z
    .end local v31    # "yPixelsPerUnit":[D
    .end local v32    # "isMaxXSet":[Z
    .end local v79    # "angle":I
    .end local v82    # "sLength":I
    .end local v84    # "maxScaleNumber":I
    .end local v85    # "right":I
    .end local v86    # "minY":[D
    .end local v87    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .local v1, "minX":[D
    .restart local v4    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v5    # "left":I
    .restart local v6    # "series":Lorg/achartengine/model/XYSeries;
    .local v9, "yValue":D
    .local v11, "xValue":D
    .restart local v13    # "minY":[D
    .local v14, "range":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Double;Ljava/lang/Double;>;"
    .restart local v22    # "startIndex":I
    .local v39, "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .local v40, "angle":I
    .restart local v46    # "right":I
    .restart local v49    # "xPixelsPerUnit":[D
    .restart local v50    # "isMaxYSet":[Z
    .restart local v52    # "isMinYSet":[Z
    .restart local v57    # "maxScaleNumber":I
    .restart local v58    # "sLength":I
    .restart local v59    # "isMaxXSet":[Z
    .restart local v63    # "maxX":[D
    .restart local v64    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .restart local v69    # "i":I
    .restart local v70    # "i$":Ljava/util/Iterator;
    .restart local v72    # "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .restart local v73    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .restart local v74    # "value":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/Double;>;"
    .restart local v75    # "yPixelsPerUnit":[D
    .restart local v76    # "bottom":I
    :cond_1e
    move-object/from16 v23, v1

    move-wide/from16 v34, v9

    move-wide/from16 v80, v11

    move-object/from16 v86, v13

    move-object/from16 v77, v14

    move-object/from16 v87, v39

    move/from16 v79, v40

    move/from16 v85, v46

    move-object/from16 v39, v49

    move-object/from16 v26, v50

    move-object/from16 v28, v52

    move/from16 v84, v57

    move/from16 v82, v58

    move-object/from16 v32, v59

    move-object/from16 v24, v63

    move-object/from16 v27, v64

    move/from16 v40, v69

    move-object/from16 v33, v70

    move-object/from16 v10, v72

    move-object/from16 v8, v73

    move-object/from16 v16, v74

    move-object/from16 v31, v75

    move/from16 v12, v76

    move-object/from16 v13, p6

    move/from16 v25, p4

    move-object v9, v4

    move v14, v5

    move-object v11, v6

    .line 289
    .end local v1    # "minX":[D
    .end local v4    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v5    # "left":I
    .end local v6    # "series":Lorg/achartengine/model/XYSeries;
    .end local v13    # "minY":[D
    .end local v46    # "right":I
    .end local v49    # "xPixelsPerUnit":[D
    .end local v50    # "isMaxYSet":[Z
    .end local v52    # "isMinYSet":[Z
    .end local v57    # "maxScaleNumber":I
    .end local v58    # "sLength":I
    .end local v59    # "isMaxXSet":[Z
    .end local v63    # "maxX":[D
    .end local v64    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .end local v69    # "i":I
    .end local v70    # "i$":Ljava/util/Iterator;
    .end local v72    # "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .end local v73    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v74    # "value":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/Double;>;"
    .end local v75    # "yPixelsPerUnit":[D
    .end local v76    # "bottom":I
    .restart local v8    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .local v9, "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v10    # "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .local v11, "series":Lorg/achartengine/model/XYSeries;
    .restart local v12    # "bottom":I
    .local v14, "left":I
    .restart local v16    # "value":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/Double;>;"
    .restart local v23    # "minX":[D
    .restart local v24    # "maxX":[D
    .restart local v26    # "isMaxYSet":[Z
    .restart local v27    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .restart local v28    # "isMinYSet":[Z
    .restart local v31    # "yPixelsPerUnit":[D
    .restart local v32    # "isMaxXSet":[Z
    .restart local v33    # "i$":Ljava/util/Iterator;
    .restart local v34    # "yValue":D
    .local v39, "xPixelsPerUnit":[D
    .local v40, "i":I
    .restart local v77    # "range":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Double;Ljava/lang/Double;>;"
    .restart local v79    # "angle":I
    .restart local v80    # "xValue":D
    .restart local v82    # "sLength":I
    .restart local v84    # "maxScaleNumber":I
    .restart local v85    # "right":I
    .restart local v86    # "minY":[D
    .restart local v87    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    :goto_18
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_e

    .line 291
    .end local v16    # "value":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/Double;>;"
    .end local v34    # "yValue":D
    .end local v80    # "xValue":D
    :goto_19
    nop

    .line 258
    move-object v2, v8

    move-object v4, v9

    move-object v6, v11

    move v7, v12

    move/from16 v60, v14

    move-object/from16 v1, v23

    move-object/from16 v63, v24

    move-object/from16 v50, v26

    move-object/from16 v5, v27

    move-object/from16 v52, v28

    move-object/from16 v8, v31

    move-object/from16 v59, v32

    move-object/from16 v3, v33

    move-object/from16 v49, v39

    move/from16 v11, v71

    move-object/from16 v14, v77

    move/from16 v58, v82

    move/from16 v57, v84

    move/from16 v46, v85

    move-object/from16 v13, v86

    move-object/from16 v39, v87

    const/16 v16, 0x1

    move-object v12, v10

    move/from16 v10, v40

    move/from16 v40, v79

    goto/16 :goto_13

    .line 316
    .end local v8    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v9    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v10    # "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .end local v11    # "series":Lorg/achartengine/model/XYSeries;
    .end local v12    # "bottom":I
    .end local v14    # "left":I
    .end local v22    # "startIndex":I
    .end local v23    # "minX":[D
    .end local v24    # "maxX":[D
    .end local v26    # "isMaxYSet":[Z
    .end local v27    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .end local v28    # "isMinYSet":[Z
    .end local v31    # "yPixelsPerUnit":[D
    .end local v32    # "isMaxXSet":[Z
    .end local v33    # "i$":Ljava/util/Iterator;
    .end local v77    # "range":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Double;Ljava/lang/Double;>;"
    .end local v79    # "angle":I
    .end local v82    # "sLength":I
    .end local v84    # "maxScaleNumber":I
    .end local v85    # "right":I
    .end local v86    # "minY":[D
    .end local v87    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .restart local v1    # "minX":[D
    .restart local v4    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v5    # "left":I
    .restart local v6    # "series":Lorg/achartengine/model/XYSeries;
    .restart local v13    # "minY":[D
    .local v39, "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .local v40, "angle":I
    .restart local v46    # "right":I
    .restart local v49    # "xPixelsPerUnit":[D
    .restart local v50    # "isMaxYSet":[Z
    .restart local v52    # "isMinYSet":[Z
    .restart local v57    # "maxScaleNumber":I
    .restart local v58    # "sLength":I
    .restart local v59    # "isMaxXSet":[Z
    .restart local v63    # "maxX":[D
    .restart local v64    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .restart local v69    # "i":I
    .restart local v72    # "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .restart local v73    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .restart local v75    # "yPixelsPerUnit":[D
    .restart local v76    # "bottom":I
    :catchall_9
    move-exception v0

    move-object/from16 v23, v1

    move-object v11, v6

    move-object/from16 v86, v13

    move-object/from16 v87, v39

    move/from16 v79, v40

    move/from16 v85, v46

    move-object/from16 v39, v49

    move-object/from16 v26, v50

    move-object/from16 v28, v52

    move/from16 v84, v57

    move/from16 v82, v58

    move-object/from16 v32, v59

    move-object/from16 v24, v63

    move-object/from16 v27, v64

    move/from16 v40, v69

    move-object/from16 v31, v75

    move/from16 v12, v76

    move-object/from16 v13, p6

    move/from16 v25, p4

    move-object v1, v0

    move-object/from16 v34, v4

    move/from16 v89, v5

    move-object/from16 v14, v72

    move-object/from16 v33, v73

    .line 316
    .end local v1    # "minX":[D
    .end local v4    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v5    # "left":I
    .end local v6    # "series":Lorg/achartengine/model/XYSeries;
    .end local v13    # "minY":[D
    .end local v46    # "right":I
    .end local v49    # "xPixelsPerUnit":[D
    .end local v50    # "isMaxYSet":[Z
    .end local v52    # "isMinYSet":[Z
    .end local v57    # "maxScaleNumber":I
    .end local v58    # "sLength":I
    .end local v59    # "isMaxXSet":[Z
    .end local v63    # "maxX":[D
    .end local v64    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .end local v69    # "i":I
    .end local v72    # "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .end local v73    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v75    # "yPixelsPerUnit":[D
    .end local v76    # "bottom":I
    .restart local v8    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .restart local v9    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v10    # "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .restart local v11    # "series":Lorg/achartengine/model/XYSeries;
    .restart local v12    # "bottom":I
    .restart local v14    # "left":I
    .restart local v23    # "minX":[D
    .restart local v24    # "maxX":[D
    .restart local v26    # "isMaxYSet":[Z
    .restart local v27    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .restart local v28    # "isMinYSet":[Z
    .restart local v31    # "yPixelsPerUnit":[D
    .restart local v32    # "isMaxXSet":[Z
    .local v39, "xPixelsPerUnit":[D
    .local v40, "i":I
    .restart local v79    # "angle":I
    .restart local v82    # "sLength":I
    .restart local v84    # "maxScaleNumber":I
    .restart local v85    # "right":I
    .restart local v86    # "minY":[D
    .restart local v87    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    goto/16 :goto_1e

    .line 316
    .end local v9    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v10    # "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .end local v11    # "series":Lorg/achartengine/model/XYSeries;
    .end local v12    # "bottom":I
    .end local v14    # "left":I
    .end local v23    # "minX":[D
    .end local v24    # "maxX":[D
    .end local v26    # "isMaxYSet":[Z
    .end local v27    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .end local v28    # "isMinYSet":[Z
    .end local v31    # "yPixelsPerUnit":[D
    .end local v32    # "isMaxXSet":[Z
    .end local v79    # "angle":I
    .end local v82    # "sLength":I
    .end local v84    # "maxScaleNumber":I
    .end local v85    # "right":I
    .end local v86    # "minY":[D
    .end local v87    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .restart local v1    # "minX":[D
    .restart local v4    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v5    # "left":I
    .restart local v6    # "series":Lorg/achartengine/model/XYSeries;
    .local v7, "bottom":I
    .local v8, "yPixelsPerUnit":[D
    .restart local v13    # "minY":[D
    .local v39, "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .local v40, "angle":I
    .restart local v46    # "right":I
    .restart local v49    # "xPixelsPerUnit":[D
    .restart local v50    # "isMaxYSet":[Z
    .restart local v52    # "isMinYSet":[Z
    .restart local v57    # "maxScaleNumber":I
    .restart local v58    # "sLength":I
    .restart local v59    # "isMaxXSet":[Z
    .restart local v63    # "maxX":[D
    .restart local v64    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .restart local v69    # "i":I
    .restart local v72    # "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .restart local v73    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    :catchall_a
    move-exception v0

    move-object/from16 v23, v1

    move-object v11, v6

    move v12, v7

    move-object/from16 v31, v8

    move-object/from16 v86, v13

    move-object/from16 v87, v39

    move/from16 v79, v40

    move/from16 v85, v46

    move-object/from16 v39, v49

    move-object/from16 v26, v50

    move-object/from16 v28, v52

    move/from16 v84, v57

    move/from16 v82, v58

    move-object/from16 v32, v59

    move-object/from16 v24, v63

    move-object/from16 v27, v64

    move/from16 v40, v69

    move-object/from16 v13, p6

    move/from16 v25, p4

    move-object v1, v0

    move-object/from16 v34, v4

    move/from16 v89, v5

    move-object/from16 v14, v72

    move-object/from16 v33, v73

    .line 316
    .end local v1    # "minX":[D
    .end local v4    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v5    # "left":I
    .end local v6    # "series":Lorg/achartengine/model/XYSeries;
    .end local v7    # "bottom":I
    .end local v13    # "minY":[D
    .end local v46    # "right":I
    .end local v49    # "xPixelsPerUnit":[D
    .end local v50    # "isMaxYSet":[Z
    .end local v52    # "isMinYSet":[Z
    .end local v57    # "maxScaleNumber":I
    .end local v58    # "sLength":I
    .end local v59    # "isMaxXSet":[Z
    .end local v63    # "maxX":[D
    .end local v64    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .end local v69    # "i":I
    .end local v72    # "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .end local v73    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .local v8, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .restart local v9    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v10    # "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .restart local v11    # "series":Lorg/achartengine/model/XYSeries;
    .restart local v12    # "bottom":I
    .restart local v14    # "left":I
    .restart local v23    # "minX":[D
    .restart local v24    # "maxX":[D
    .restart local v26    # "isMaxYSet":[Z
    .restart local v27    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .restart local v28    # "isMinYSet":[Z
    .restart local v31    # "yPixelsPerUnit":[D
    .restart local v32    # "isMaxXSet":[Z
    .local v39, "xPixelsPerUnit":[D
    .local v40, "i":I
    .restart local v79    # "angle":I
    .restart local v82    # "sLength":I
    .restart local v84    # "maxScaleNumber":I
    .restart local v85    # "right":I
    .restart local v86    # "minY":[D
    .restart local v87    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    goto/16 :goto_1e

    .line 316
    .end local v9    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v10    # "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .end local v11    # "series":Lorg/achartengine/model/XYSeries;
    .end local v12    # "bottom":I
    .end local v14    # "left":I
    .end local v23    # "minX":[D
    .end local v24    # "maxX":[D
    .end local v26    # "isMaxYSet":[Z
    .end local v27    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .end local v28    # "isMinYSet":[Z
    .end local v31    # "yPixelsPerUnit":[D
    .end local v32    # "isMaxXSet":[Z
    .end local v79    # "angle":I
    .end local v82    # "sLength":I
    .end local v84    # "maxScaleNumber":I
    .end local v85    # "right":I
    .end local v86    # "minY":[D
    .end local v87    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .restart local v1    # "minX":[D
    .restart local v2    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .restart local v4    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v6    # "series":Lorg/achartengine/model/XYSeries;
    .restart local v7    # "bottom":I
    .local v8, "yPixelsPerUnit":[D
    .restart local v13    # "minY":[D
    .local v39, "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .local v40, "angle":I
    .restart local v46    # "right":I
    .restart local v49    # "xPixelsPerUnit":[D
    .restart local v50    # "isMaxYSet":[Z
    .restart local v52    # "isMinYSet":[Z
    .restart local v57    # "maxScaleNumber":I
    .restart local v58    # "sLength":I
    .restart local v59    # "isMaxXSet":[Z
    .restart local v60    # "left":I
    .restart local v63    # "maxX":[D
    .restart local v64    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .restart local v69    # "i":I
    .restart local v72    # "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    :catchall_b
    move-exception v0

    move-object/from16 v23, v1

    move-object v11, v6

    move v12, v7

    move-object/from16 v31, v8

    move-object/from16 v86, v13

    move-object/from16 v87, v39

    move/from16 v79, v40

    move/from16 v85, v46

    move-object/from16 v39, v49

    move-object/from16 v26, v50

    move-object/from16 v28, v52

    move/from16 v84, v57

    move/from16 v82, v58

    move-object/from16 v32, v59

    move-object/from16 v24, v63

    move-object/from16 v27, v64

    move/from16 v40, v69

    move-object/from16 v13, p6

    move/from16 v25, p4

    move-object v1, v0

    move-object/from16 v33, v2

    move-object/from16 v34, v4

    move/from16 v89, v60

    move-object/from16 v14, v72

    .line 316
    .end local v1    # "minX":[D
    .end local v2    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v4    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v6    # "series":Lorg/achartengine/model/XYSeries;
    .end local v7    # "bottom":I
    .end local v13    # "minY":[D
    .end local v46    # "right":I
    .end local v49    # "xPixelsPerUnit":[D
    .end local v50    # "isMaxYSet":[Z
    .end local v52    # "isMinYSet":[Z
    .end local v57    # "maxScaleNumber":I
    .end local v58    # "sLength":I
    .end local v59    # "isMaxXSet":[Z
    .end local v60    # "left":I
    .end local v63    # "maxX":[D
    .end local v64    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .end local v69    # "i":I
    .end local v72    # "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .local v8, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .restart local v9    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v10    # "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .restart local v11    # "series":Lorg/achartengine/model/XYSeries;
    .restart local v12    # "bottom":I
    .restart local v14    # "left":I
    .restart local v23    # "minX":[D
    .restart local v24    # "maxX":[D
    .restart local v26    # "isMaxYSet":[Z
    .restart local v27    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .restart local v28    # "isMinYSet":[Z
    .restart local v31    # "yPixelsPerUnit":[D
    .restart local v32    # "isMaxXSet":[Z
    .local v39, "xPixelsPerUnit":[D
    .local v40, "i":I
    .restart local v79    # "angle":I
    .restart local v82    # "sLength":I
    .restart local v84    # "maxScaleNumber":I
    .restart local v85    # "right":I
    .restart local v86    # "minY":[D
    .restart local v87    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    goto/16 :goto_1e

    .line 316
    .end local v9    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v14    # "left":I
    .end local v23    # "minX":[D
    .end local v24    # "maxX":[D
    .end local v26    # "isMaxYSet":[Z
    .end local v27    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .end local v28    # "isMinYSet":[Z
    .end local v31    # "yPixelsPerUnit":[D
    .end local v32    # "isMaxXSet":[Z
    .end local v71    # "yAxisValue":F
    .end local v79    # "angle":I
    .end local v82    # "sLength":I
    .end local v84    # "maxScaleNumber":I
    .end local v85    # "right":I
    .end local v86    # "minY":[D
    .end local v87    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .restart local v1    # "minX":[D
    .restart local v2    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .restart local v4    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v6    # "series":Lorg/achartengine/model/XYSeries;
    .restart local v7    # "bottom":I
    .local v8, "yPixelsPerUnit":[D
    .local v10, "i":I
    .local v11, "yAxisValue":F
    .local v12, "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .restart local v13    # "minY":[D
    .local v39, "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .local v40, "angle":I
    .restart local v46    # "right":I
    .restart local v49    # "xPixelsPerUnit":[D
    .restart local v50    # "isMaxYSet":[Z
    .restart local v52    # "isMinYSet":[Z
    .restart local v57    # "maxScaleNumber":I
    .restart local v58    # "sLength":I
    .restart local v59    # "isMaxXSet":[Z
    .restart local v60    # "left":I
    .restart local v63    # "maxX":[D
    .restart local v64    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    :catchall_c
    move-exception v0

    move-object/from16 v23, v1

    move-object/from16 v31, v8

    move/from16 v71, v11

    move-object/from16 v86, v13

    move-object/from16 v87, v39

    move/from16 v79, v40

    move/from16 v85, v46

    move-object/from16 v39, v49

    move-object/from16 v26, v50

    move-object/from16 v28, v52

    move/from16 v84, v57

    move/from16 v82, v58

    move-object/from16 v32, v59

    move-object/from16 v24, v63

    move-object/from16 v27, v64

    move-object/from16 v13, p6

    move/from16 v25, p4

    move-object v11, v6

    move/from16 v40, v10

    move-object v10, v12

    move v12, v7

    move-object v1, v0

    move-object/from16 v33, v2

    move-object/from16 v34, v4

    move-object v14, v10

    move/from16 v89, v60

    .line 316
    .end local v1    # "minX":[D
    .end local v2    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v4    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v6    # "series":Lorg/achartengine/model/XYSeries;
    .end local v7    # "bottom":I
    .end local v13    # "minY":[D
    .end local v46    # "right":I
    .end local v49    # "xPixelsPerUnit":[D
    .end local v50    # "isMaxYSet":[Z
    .end local v52    # "isMinYSet":[Z
    .end local v57    # "maxScaleNumber":I
    .end local v58    # "sLength":I
    .end local v59    # "isMaxXSet":[Z
    .end local v60    # "left":I
    .end local v63    # "maxX":[D
    .end local v64    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .local v8, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .restart local v9    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v10, "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .local v11, "series":Lorg/achartengine/model/XYSeries;
    .local v12, "bottom":I
    .restart local v14    # "left":I
    .restart local v23    # "minX":[D
    .restart local v24    # "maxX":[D
    .restart local v26    # "isMaxYSet":[Z
    .restart local v27    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .restart local v28    # "isMinYSet":[Z
    .restart local v31    # "yPixelsPerUnit":[D
    .restart local v32    # "isMaxXSet":[Z
    .local v39, "xPixelsPerUnit":[D
    .local v40, "i":I
    .restart local v71    # "yAxisValue":F
    .restart local v79    # "angle":I
    .restart local v82    # "sLength":I
    .restart local v84    # "maxScaleNumber":I
    .restart local v85    # "right":I
    .restart local v86    # "minY":[D
    .restart local v87    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    goto/16 :goto_1e

    .line 316
    .end local v9    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v14    # "left":I
    .end local v23    # "minX":[D
    .end local v24    # "maxX":[D
    .end local v26    # "isMaxYSet":[Z
    .end local v27    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .end local v28    # "isMinYSet":[Z
    .end local v31    # "yPixelsPerUnit":[D
    .end local v32    # "isMaxXSet":[Z
    .end local v71    # "yAxisValue":F
    .end local v79    # "angle":I
    .end local v82    # "sLength":I
    .end local v84    # "maxScaleNumber":I
    .end local v85    # "right":I
    .end local v86    # "minY":[D
    .end local v87    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .restart local v1    # "minX":[D
    .restart local v2    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .restart local v4    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v5, "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .restart local v6    # "series":Lorg/achartengine/model/XYSeries;
    .restart local v7    # "bottom":I
    .local v8, "yPixelsPerUnit":[D
    .local v10, "i":I
    .local v11, "yAxisValue":F
    .local v12, "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .restart local v13    # "minY":[D
    .local v39, "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .local v40, "angle":I
    .restart local v46    # "right":I
    .restart local v49    # "xPixelsPerUnit":[D
    .restart local v50    # "isMaxYSet":[Z
    .restart local v52    # "isMinYSet":[Z
    .restart local v57    # "maxScaleNumber":I
    .restart local v58    # "sLength":I
    .restart local v59    # "isMaxXSet":[Z
    .restart local v60    # "left":I
    .restart local v63    # "maxX":[D
    :catchall_d
    move-exception v0

    move-object/from16 v23, v1

    move-object/from16 v27, v5

    move-object/from16 v31, v8

    move/from16 v71, v11

    move-object/from16 v86, v13

    move-object/from16 v87, v39

    move/from16 v79, v40

    move/from16 v85, v46

    move-object/from16 v39, v49

    move-object/from16 v26, v50

    move-object/from16 v28, v52

    move/from16 v84, v57

    move/from16 v82, v58

    move-object/from16 v32, v59

    move-object/from16 v24, v63

    move-object/from16 v13, p6

    move/from16 v25, p4

    move-object v11, v6

    move/from16 v40, v10

    move-object v10, v12

    move v12, v7

    move-object v1, v0

    move-object/from16 v33, v2

    move-object/from16 v34, v4

    move-object v14, v10

    move/from16 v89, v60

    .line 316
    .end local v1    # "minX":[D
    .end local v2    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v4    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v5    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .end local v6    # "series":Lorg/achartengine/model/XYSeries;
    .end local v7    # "bottom":I
    .end local v13    # "minY":[D
    .end local v46    # "right":I
    .end local v49    # "xPixelsPerUnit":[D
    .end local v50    # "isMaxYSet":[Z
    .end local v52    # "isMinYSet":[Z
    .end local v57    # "maxScaleNumber":I
    .end local v58    # "sLength":I
    .end local v59    # "isMaxXSet":[Z
    .end local v60    # "left":I
    .end local v63    # "maxX":[D
    .local v8, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .restart local v9    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v10, "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .local v11, "series":Lorg/achartengine/model/XYSeries;
    .local v12, "bottom":I
    .restart local v14    # "left":I
    .restart local v23    # "minX":[D
    .restart local v24    # "maxX":[D
    .restart local v26    # "isMaxYSet":[Z
    .restart local v27    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .restart local v28    # "isMinYSet":[Z
    .restart local v31    # "yPixelsPerUnit":[D
    .restart local v32    # "isMaxXSet":[Z
    .local v39, "xPixelsPerUnit":[D
    .local v40, "i":I
    .restart local v71    # "yAxisValue":F
    .restart local v79    # "angle":I
    .restart local v82    # "sLength":I
    .restart local v84    # "maxScaleNumber":I
    .restart local v85    # "right":I
    .restart local v86    # "minY":[D
    .restart local v87    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    goto/16 :goto_1e

    .line 293
    .end local v9    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v23    # "minX":[D
    .end local v24    # "maxX":[D
    .end local v26    # "isMaxYSet":[Z
    .end local v27    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .end local v28    # "isMinYSet":[Z
    .end local v31    # "yPixelsPerUnit":[D
    .end local v32    # "isMaxXSet":[Z
    .end local v71    # "yAxisValue":F
    .end local v79    # "angle":I
    .end local v82    # "sLength":I
    .end local v84    # "maxScaleNumber":I
    .end local v85    # "right":I
    .end local v86    # "minY":[D
    .end local v87    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .restart local v1    # "minX":[D
    .restart local v2    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .restart local v4    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v5    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .restart local v6    # "series":Lorg/achartengine/model/XYSeries;
    .restart local v7    # "bottom":I
    .local v8, "yPixelsPerUnit":[D
    .local v10, "i":I
    .local v11, "yAxisValue":F
    .local v12, "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .restart local v13    # "minY":[D
    .local v14, "range":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Double;Ljava/lang/Double;>;"
    .restart local v22    # "startIndex":I
    .local v39, "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .local v40, "angle":I
    .restart local v46    # "right":I
    .restart local v49    # "xPixelsPerUnit":[D
    .restart local v50    # "isMaxYSet":[Z
    .restart local v52    # "isMinYSet":[Z
    .restart local v57    # "maxScaleNumber":I
    .restart local v58    # "sLength":I
    .restart local v59    # "isMaxXSet":[Z
    .restart local v60    # "left":I
    .restart local v63    # "maxX":[D
    :cond_1f
    move-object/from16 v23, v1

    move-object v9, v4

    move-object/from16 v27, v5

    move-object/from16 v31, v8

    move/from16 v71, v11

    move-object/from16 v86, v13

    move-object/from16 v77, v14

    move-object/from16 v87, v39

    move/from16 v79, v40

    move/from16 v85, v46

    move-object/from16 v39, v49

    move-object/from16 v26, v50

    move-object/from16 v28, v52

    move/from16 v84, v57

    move/from16 v82, v58

    move-object/from16 v32, v59

    move/from16 v14, v60

    move-object/from16 v24, v63

    move-object/from16 v13, p6

    move/from16 v25, p4

    move-object v8, v2

    move-object v11, v6

    move/from16 v40, v10

    move-object v10, v12

    move v12, v7

    .line 293
    .end local v1    # "minX":[D
    .end local v2    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v4    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v5    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .end local v6    # "series":Lorg/achartengine/model/XYSeries;
    .end local v7    # "bottom":I
    .end local v13    # "minY":[D
    .end local v46    # "right":I
    .end local v49    # "xPixelsPerUnit":[D
    .end local v50    # "isMaxYSet":[Z
    .end local v52    # "isMinYSet":[Z
    .end local v57    # "maxScaleNumber":I
    .end local v58    # "sLength":I
    .end local v59    # "isMaxXSet":[Z
    .end local v60    # "left":I
    .end local v63    # "maxX":[D
    .local v8, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .restart local v9    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v10, "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .local v11, "series":Lorg/achartengine/model/XYSeries;
    .local v12, "bottom":I
    .local v14, "left":I
    .restart local v23    # "minX":[D
    .restart local v24    # "maxX":[D
    .restart local v26    # "isMaxYSet":[Z
    .restart local v27    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .restart local v28    # "isMinYSet":[Z
    .restart local v31    # "yPixelsPerUnit":[D
    .restart local v32    # "isMaxXSet":[Z
    .local v39, "xPixelsPerUnit":[D
    .local v40, "i":I
    .restart local v71    # "yAxisValue":F
    .restart local v77    # "range":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Double;Ljava/lang/Double;>;"
    .restart local v79    # "angle":I
    .restart local v82    # "sLength":I
    .restart local v84    # "maxScaleNumber":I
    .restart local v85    # "right":I
    .restart local v86    # "minY":[D
    .restart local v87    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    :try_start_11
    invoke-virtual {v11}, Lorg/achartengine/model/XYSeries;->getAnnotationCount()I

    move-result v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_f

    move v7, v1

    .line 294
    .local v7, "count":I
    if-lez v7, :cond_21

    .line 295
    :try_start_12
    iget-object v1, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsColor()I

    move-result v1

    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 296
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    move-object v6, v1

    .line 297
    .local v6, "bound":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .line 297
    .local v1, "j":I
    :goto_1a
    move v5, v1

    .line 297
    .end local v1    # "j":I
    .local v5, "j":I
    if-ge v5, v7, :cond_21

    .line 298
    int-to-double v1, v14

    aget-wide v3, v39, v29

    invoke-virtual {v11, v5}, Lorg/achartengine/model/XYSeries;->getAnnotationX(I)D

    move-result-wide v33

    aget-wide v41, v23, v29

    sub-double v33, v33, v41

    mul-double v3, v3, v33

    add-double/2addr v1, v3

    double-to-float v4, v1

    .line 300
    .local v4, "xS":F
    int-to-double v1, v12

    aget-wide v33, v31, v29

    invoke-virtual {v11, v5}, Lorg/achartengine/model/XYSeries;->getAnnotationY(I)D

    move-result-wide v41

    aget-wide v43, v86, v29

    sub-double v41, v41, v43

    mul-double v33, v33, v41

    sub-double v1, v1, v33

    double-to-float v3, v1

    .line 302
    .local v3, "yS":F
    invoke-virtual {v11, v5}, Lorg/achartengine/model/XYSeries;->getAnnotationAt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v5}, Lorg/achartengine/model/XYSeries;->getAnnotationAt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    move/from16 v88, v7

    const/4 v7, 0x0

    invoke-virtual {v13, v1, v7, v2, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 304
    .end local v7    # "count":I
    .local v88, "count":I
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v4

    cmpg-float v1, v4, v1

    if-gez v1, :cond_20

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v3, v1

    if-gez v1, :cond_20

    .line 305
    invoke-virtual {v11, v5}, Lorg/achartengine/model/XYSeries;->getAnnotationAt(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, v15

    move-object/from16 v2, p1

    move/from16 v16, v3

    move-object v3, v7

    .line 305
    .end local v3    # "yS":F
    .local v16, "yS":F
    move v7, v4

    .line 305
    .end local v4    # "xS":F
    .local v7, "xS":F
    move/from16 v33, v5

    move/from16 v5, v16

    .line 305
    .end local v5    # "j":I
    .local v33, "j":I
    move-object/from16 v34, v6

    move-object v6, v13

    .line 305
    .end local v6    # "bound":Landroid/graphics/Rect;
    .local v34, "bound":Landroid/graphics/Rect;
    invoke-virtual/range {v1 .. v6}, Lorg/achartengine/chart/XYChart;->drawString(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_e

    .line 305
    .end local v7    # "xS":F
    .end local v16    # "yS":F
    goto :goto_1b

    .line 297
    .end local v33    # "j":I
    .end local v34    # "bound":Landroid/graphics/Rect;
    .restart local v5    # "j":I
    .restart local v6    # "bound":Landroid/graphics/Rect;
    :cond_20
    move/from16 v33, v5

    move-object/from16 v34, v6

    .line 297
    .end local v5    # "j":I
    .end local v6    # "bound":Landroid/graphics/Rect;
    .restart local v33    # "j":I
    .restart local v34    # "bound":Landroid/graphics/Rect;
    :goto_1b
    add-int/lit8 v1, v33, 0x1

    .line 297
    .end local v33    # "j":I
    .restart local v1    # "j":I
    move-object/from16 v6, v34

    move/from16 v7, v88

    goto :goto_1a

    .line 316
    .end local v1    # "j":I
    .end local v22    # "startIndex":I
    .end local v34    # "bound":Landroid/graphics/Rect;
    .end local v77    # "range":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Double;Ljava/lang/Double;>;"
    .end local v88    # "count":I
    :catchall_e
    move-exception v0

    move-object v1, v0

    move-object/from16 v33, v8

    move-object/from16 v34, v9

    move/from16 v89, v14

    move-object v14, v10

    goto/16 :goto_1e

    .line 310
    .local v7, "count":I
    .restart local v22    # "startIndex":I
    .restart local v77    # "range":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Double;Ljava/lang/Double;>;"
    :cond_21
    move/from16 v88, v7

    .line 310
    .end local v7    # "count":I
    .restart local v88    # "count":I
    :try_start_13
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_f

    if-lez v1, :cond_22

    .line 311
    move-object v1, v15

    move-object v2, v11

    move-object/from16 v3, p1

    move-object v4, v13

    move-object v5, v9

    move-object/from16 v6, v27

    move/from16 v16, v88

    move/from16 v7, v71

    .line 311
    .end local v88    # "count":I
    .local v16, "count":I
    move-object/from16 v33, v8

    move/from16 v8, v40

    .line 311
    .end local v8    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .local v33, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    move-object/from16 v34, v9

    move-object/from16 v9, v87

    .line 311
    .end local v9    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v34, "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    move/from16 v89, v14

    move-object v14, v10

    move/from16 v10, v22

    .line 311
    .end local v10    # "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .local v14, "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .restart local v89    # "left":I
    :try_start_14
    invoke-virtual/range {v1 .. v10}, Lorg/achartengine/chart/XYChart;->drawSeries(Lorg/achartengine/model/XYSeries;Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lorg/achartengine/renderer/SimpleSeriesRenderer;FILorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;I)V

    .line 312
    move-object v1, v15

    move-object/from16 v2, v34

    move-object/from16 v3, v33

    move/from16 v4, v71

    move/from16 v5, v40

    move/from16 v6, v22

    invoke-virtual/range {v1 .. v6}, Lorg/achartengine/chart/XYChart;->clickableAreasForPoints(Ljava/util/List;Ljava/util/List;FII)[Lorg/achartengine/chart/ClickableArea;

    move-result-object v1

    .line 314
    .local v1, "clickableAreasForSubSeries":[Lorg/achartengine/chart/ClickableArea;
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 314
    .end local v1    # "clickableAreasForSubSeries":[Lorg/achartengine/chart/ClickableArea;
    .end local v16    # "count":I
    .end local v22    # "startIndex":I
    .end local v77    # "range":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Double;Ljava/lang/Double;>;"
    goto :goto_1c

    .line 316
    .end local v33    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v34    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v89    # "left":I
    .restart local v8    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .restart local v9    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v10    # "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .local v14, "left":I
    :cond_22
    move-object/from16 v33, v8

    move-object/from16 v34, v9

    move/from16 v89, v14

    move-object v14, v10

    .line 316
    .end local v8    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v9    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v10    # "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .local v14, "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .restart local v33    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .restart local v34    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v89    # "left":I
    :goto_1c
    monitor-exit v11

    .line 232
    move/from16 v22, v30

    .line 232
    .end local v11    # "series":Lorg/achartengine/model/XYSeries;
    .end local v14    # "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .end local v27    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .end local v29    # "scale":I
    .end local v30    # "hasValues":Z
    .end local v33    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v34    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v71    # "yAxisValue":F
    .local v22, "hasValues":Z
    :goto_1d
    add-int/lit8 v4, v40, 0x1

    .line 232
    .end local v40    # "i":I
    .local v4, "i":I
    move/from16 v45, v12

    move-object/from16 v1, v23

    move-object/from16 v3, v24

    move-object/from16 v50, v26

    move-object/from16 v52, v28

    move-object/from16 v8, v31

    move-object/from16 v9, v32

    move-object/from16 v49, v39

    move/from16 v11, v61

    move-object/from16 v14, v62

    move/from16 v40, v79

    move/from16 v47, v82

    move/from16 v2, v84

    move/from16 v46, v85

    move-object/from16 v13, v86

    move-object/from16 v39, v87

    move/from16 v12, v89

    const/16 v16, 0x1

    goto/16 :goto_12

    .line 316
    .end local v4    # "i":I
    .end local v22    # "hasValues":Z
    .end local v89    # "left":I
    .restart local v8    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .restart local v9    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v10    # "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .restart local v11    # "series":Lorg/achartengine/model/XYSeries;
    .local v14, "left":I
    .restart local v27    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .restart local v29    # "scale":I
    .restart local v30    # "hasValues":Z
    .restart local v40    # "i":I
    .restart local v71    # "yAxisValue":F
    :catchall_f
    move-exception v0

    move-object/from16 v33, v8

    move-object/from16 v34, v9

    move/from16 v89, v14

    move-object v14, v10

    move-object v1, v0

    .line 316
    .end local v8    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v9    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v10    # "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .local v14, "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .restart local v33    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .restart local v34    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v89    # "left":I
    goto/16 :goto_1e

    .line 316
    .end local v14    # "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .end local v23    # "minX":[D
    .end local v24    # "maxX":[D
    .end local v26    # "isMaxYSet":[Z
    .end local v27    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .end local v28    # "isMinYSet":[Z
    .end local v31    # "yPixelsPerUnit":[D
    .end local v32    # "isMaxXSet":[Z
    .end local v33    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v34    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v71    # "yAxisValue":F
    .end local v79    # "angle":I
    .end local v82    # "sLength":I
    .end local v84    # "maxScaleNumber":I
    .end local v85    # "right":I
    .end local v86    # "minY":[D
    .end local v87    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .end local v89    # "left":I
    .local v1, "minX":[D
    .restart local v2    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .local v4, "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v5, "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .local v6, "series":Lorg/achartengine/model/XYSeries;
    .local v7, "bottom":I
    .local v8, "yPixelsPerUnit":[D
    .local v10, "i":I
    .local v11, "yAxisValue":F
    .local v12, "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .restart local v13    # "minY":[D
    .local v39, "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .local v40, "angle":I
    .restart local v46    # "right":I
    .restart local v49    # "xPixelsPerUnit":[D
    .restart local v50    # "isMaxYSet":[Z
    .restart local v52    # "isMinYSet":[Z
    .restart local v57    # "maxScaleNumber":I
    .restart local v58    # "sLength":I
    .restart local v59    # "isMaxXSet":[Z
    .restart local v60    # "left":I
    .restart local v63    # "maxX":[D
    :catchall_10
    move-exception v0

    move-object/from16 v23, v1

    move-object/from16 v33, v2

    move-object/from16 v34, v4

    move-object/from16 v27, v5

    move-object/from16 v31, v8

    move/from16 v71, v11

    move-object v14, v12

    move-object/from16 v86, v13

    move-object/from16 v87, v39

    move/from16 v79, v40

    move/from16 v85, v46

    move-object/from16 v39, v49

    move-object/from16 v26, v50

    move-object/from16 v28, v52

    move/from16 v84, v57

    move/from16 v82, v58

    move-object/from16 v32, v59

    move/from16 v89, v60

    move-object/from16 v24, v63

    move-object/from16 v13, p6

    move/from16 v25, p4

    move-object v11, v6

    move v12, v7

    move/from16 v40, v10

    move-object v1, v0

    .line 316
    .end local v1    # "minX":[D
    .end local v2    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v4    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v5    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .end local v6    # "series":Lorg/achartengine/model/XYSeries;
    .end local v7    # "bottom":I
    .end local v8    # "yPixelsPerUnit":[D
    .end local v10    # "i":I
    .end local v13    # "minY":[D
    .end local v46    # "right":I
    .end local v49    # "xPixelsPerUnit":[D
    .end local v50    # "isMaxYSet":[Z
    .end local v52    # "isMinYSet":[Z
    .end local v57    # "maxScaleNumber":I
    .end local v58    # "sLength":I
    .end local v59    # "isMaxXSet":[Z
    .end local v60    # "left":I
    .end local v63    # "maxX":[D
    .local v11, "series":Lorg/achartengine/model/XYSeries;
    .local v12, "bottom":I
    .restart local v14    # "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .restart local v23    # "minX":[D
    .restart local v24    # "maxX":[D
    .restart local v26    # "isMaxYSet":[Z
    .restart local v27    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .restart local v28    # "isMinYSet":[Z
    .restart local v31    # "yPixelsPerUnit":[D
    .restart local v32    # "isMaxXSet":[Z
    .restart local v33    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .restart local v34    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v39, "xPixelsPerUnit":[D
    .local v40, "i":I
    .restart local v71    # "yAxisValue":F
    .restart local v79    # "angle":I
    .restart local v82    # "sLength":I
    .restart local v84    # "maxScaleNumber":I
    .restart local v85    # "right":I
    .restart local v86    # "minY":[D
    .restart local v87    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .restart local v89    # "left":I
    goto :goto_1e

    .line 316
    .end local v14    # "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .end local v23    # "minX":[D
    .end local v24    # "maxX":[D
    .end local v26    # "isMaxYSet":[Z
    .end local v27    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .end local v28    # "isMinYSet":[Z
    .end local v31    # "yPixelsPerUnit":[D
    .end local v32    # "isMaxXSet":[Z
    .end local v33    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v34    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v71    # "yAxisValue":F
    .end local v79    # "angle":I
    .end local v82    # "sLength":I
    .end local v84    # "maxScaleNumber":I
    .end local v85    # "right":I
    .end local v86    # "minY":[D
    .end local v87    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .end local v89    # "left":I
    .restart local v1    # "minX":[D
    .restart local v2    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .local v3, "maxX":[D
    .restart local v4    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v5    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .restart local v6    # "series":Lorg/achartengine/model/XYSeries;
    .restart local v7    # "bottom":I
    .restart local v8    # "yPixelsPerUnit":[D
    .restart local v10    # "i":I
    .local v11, "yAxisValue":F
    .local v12, "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .restart local v13    # "minY":[D
    .local v39, "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .local v40, "angle":I
    .restart local v46    # "right":I
    .restart local v49    # "xPixelsPerUnit":[D
    .restart local v50    # "isMaxYSet":[Z
    .restart local v52    # "isMinYSet":[Z
    .restart local v57    # "maxScaleNumber":I
    .restart local v58    # "sLength":I
    .restart local v59    # "isMaxXSet":[Z
    .restart local v60    # "left":I
    :catchall_11
    move-exception v0

    move-object/from16 v23, v1

    move-object/from16 v33, v2

    move-object/from16 v24, v3

    move-object/from16 v34, v4

    move-object/from16 v27, v5

    move-object/from16 v31, v8

    move/from16 v71, v11

    move-object v14, v12

    move-object/from16 v86, v13

    move-object/from16 v87, v39

    move/from16 v79, v40

    move/from16 v85, v46

    move-object/from16 v39, v49

    move-object/from16 v26, v50

    move-object/from16 v28, v52

    move/from16 v84, v57

    move/from16 v82, v58

    move-object/from16 v32, v59

    move/from16 v89, v60

    move-object/from16 v13, p6

    move/from16 v25, p4

    move-object v11, v6

    move v12, v7

    move/from16 v40, v10

    move-object v1, v0

    .line 316
    .end local v1    # "minX":[D
    .end local v2    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v3    # "maxX":[D
    .end local v4    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v5    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .end local v6    # "series":Lorg/achartengine/model/XYSeries;
    .end local v7    # "bottom":I
    .end local v8    # "yPixelsPerUnit":[D
    .end local v10    # "i":I
    .end local v13    # "minY":[D
    .end local v46    # "right":I
    .end local v49    # "xPixelsPerUnit":[D
    .end local v50    # "isMaxYSet":[Z
    .end local v52    # "isMinYSet":[Z
    .end local v57    # "maxScaleNumber":I
    .end local v58    # "sLength":I
    .end local v59    # "isMaxXSet":[Z
    .end local v60    # "left":I
    .local v11, "series":Lorg/achartengine/model/XYSeries;
    .local v12, "bottom":I
    .restart local v14    # "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .restart local v23    # "minX":[D
    .restart local v24    # "maxX":[D
    .restart local v26    # "isMaxYSet":[Z
    .restart local v27    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .restart local v28    # "isMinYSet":[Z
    .restart local v31    # "yPixelsPerUnit":[D
    .restart local v32    # "isMaxXSet":[Z
    .restart local v33    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .restart local v34    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v39, "xPixelsPerUnit":[D
    .local v40, "i":I
    .restart local v71    # "yAxisValue":F
    .restart local v79    # "angle":I
    .restart local v82    # "sLength":I
    .restart local v84    # "maxScaleNumber":I
    .restart local v85    # "right":I
    .restart local v86    # "minY":[D
    .restart local v87    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .restart local v89    # "left":I
    :goto_1e
    monitor-exit v11
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_12

    throw v1

    :catchall_12
    move-exception v0

    :goto_1f
    move-object v1, v0

    goto :goto_1e

    .line 319
    .end local v23    # "minX":[D
    .end local v24    # "maxX":[D
    .end local v26    # "isMaxYSet":[Z
    .end local v27    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .end local v28    # "isMinYSet":[Z
    .end local v29    # "scale":I
    .end local v30    # "hasValues":Z
    .end local v31    # "yPixelsPerUnit":[D
    .end local v32    # "isMaxXSet":[Z
    .end local v33    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v34    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v61    # "top":I
    .end local v62    # "maxY":[D
    .end local v71    # "yAxisValue":F
    .end local v79    # "angle":I
    .end local v82    # "sLength":I
    .end local v84    # "maxScaleNumber":I
    .end local v85    # "right":I
    .end local v86    # "minY":[D
    .end local v87    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .end local v89    # "left":I
    .restart local v1    # "minX":[D
    .local v2, "maxScaleNumber":I
    .restart local v3    # "maxX":[D
    .local v7, "sLength":I
    .restart local v8    # "yPixelsPerUnit":[D
    .local v9, "isMaxXSet":[Z
    .local v11, "top":I
    .local v12, "left":I
    .restart local v13    # "minY":[D
    .local v14, "maxY":[D
    .restart local v22    # "hasValues":Z
    .local v39, "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .local v40, "angle":I
    .restart local v45    # "bottom":I
    .restart local v46    # "right":I
    .restart local v49    # "xPixelsPerUnit":[D
    .restart local v50    # "isMaxYSet":[Z
    .restart local v52    # "isMinYSet":[Z
    :cond_23
    move-object/from16 v23, v1

    move/from16 v84, v2

    move-object/from16 v24, v3

    move/from16 v82, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move/from16 v61, v11

    move/from16 v89, v12

    move-object/from16 v86, v13

    move-object/from16 v62, v14

    move-object/from16 v87, v39

    move/from16 v79, v40

    move/from16 v12, v45

    move/from16 v85, v46

    move-object/from16 v39, v49

    move-object/from16 v26, v50

    move-object/from16 v28, v52

    move-object/from16 v13, p6

    move/from16 v25, p4

    .line 319
    .end local v1    # "minX":[D
    .end local v2    # "maxScaleNumber":I
    .end local v3    # "maxX":[D
    .end local v7    # "sLength":I
    .end local v8    # "yPixelsPerUnit":[D
    .end local v9    # "isMaxXSet":[Z
    .end local v11    # "top":I
    .end local v13    # "minY":[D
    .end local v14    # "maxY":[D
    .end local v40    # "angle":I
    .end local v45    # "bottom":I
    .end local v46    # "right":I
    .end local v49    # "xPixelsPerUnit":[D
    .end local v50    # "isMaxYSet":[Z
    .end local v52    # "isMinYSet":[Z
    .local v12, "bottom":I
    .restart local v23    # "minX":[D
    .restart local v24    # "maxX":[D
    .restart local v26    # "isMaxYSet":[Z
    .restart local v28    # "isMinYSet":[Z
    .restart local v31    # "yPixelsPerUnit":[D
    .restart local v32    # "isMaxXSet":[Z
    .local v39, "xPixelsPerUnit":[D
    .restart local v61    # "top":I
    .restart local v62    # "maxY":[D
    .restart local v79    # "angle":I
    .restart local v82    # "sLength":I
    .restart local v84    # "maxScaleNumber":I
    .restart local v85    # "right":I
    .restart local v86    # "minY":[D
    .restart local v87    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .restart local v89    # "left":I
    iget-object v2, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object/from16 v27, v48

    move/from16 v11, p5

    sub-int v7, v11, v12

    .line 319
    .end local v48    # "isMinXSet":[Z
    .local v27, "isMinXSet":[Z
    const/4 v9, 0x1

    iget-object v1, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getMarginsColor()I

    move-result v10

    move-object v1, v15

    move-object/from16 v3, p1

    move-object/from16 v8, v62

    move/from16 v14, p2

    move v4, v14

    .line 319
    .end local v62    # "maxY":[D
    .local v8, "maxY":[D
    move v5, v12

    move/from16 v6, v25

    move/from16 v90, v12

    move-object v12, v8

    move-object v8, v13

    .line 319
    .end local v8    # "maxY":[D
    .local v12, "maxY":[D
    .local v90, "bottom":I
    invoke-virtual/range {v1 .. v10}, Lorg/achartengine/chart/XYChart;->drawBackground(Lorg/achartengine/renderer/DefaultRenderer;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 321
    iget-object v2, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    const/4 v1, 0x0

    aget v7, v17, v1

    iget-object v1, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getMarginsColor()I

    move-result v10

    move-object v1, v15

    move-object/from16 v8, v86

    move/from16 v16, p3

    move/from16 v5, v16

    .line 321
    .end local v86    # "minY":[D
    .local v8, "minY":[D
    move-object/from16 v91, v12

    move-object v12, v8

    move-object v8, v13

    .line 321
    .end local v8    # "minY":[D
    .local v12, "minY":[D
    .local v91, "maxY":[D
    invoke-virtual/range {v1 .. v10}, Lorg/achartengine/chart/XYChart;->drawBackground(Lorg/achartengine/renderer/DefaultRenderer;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 323
    sget-object v1, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->HORIZONTAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    move-object/from16 v10, v87

    if-ne v10, v1, :cond_24

    .line 324
    .end local v87    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .local v10, "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    iget-object v2, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    sub-int v6, v89, v14

    sub-int v7, v11, v16

    const/4 v9, 0x1

    iget-object v1, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getMarginsColor()I

    move-result v29

    move-object v1, v15

    move-object/from16 v3, p1

    move v4, v14

    move/from16 v5, v16

    move-object v8, v13

    move-object/from16 v92, v12

    move-object v12, v10

    move/from16 v10, v29

    .line 324
    .end local v10    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .local v12, "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .local v92, "minY":[D
    invoke-virtual/range {v1 .. v10}, Lorg/achartengine/chart/XYChart;->drawBackground(Lorg/achartengine/renderer/DefaultRenderer;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 326
    iget-object v2, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    aget v6, v17, v18

    sub-int v7, v11, v16

    iget-object v1, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getMarginsColor()I

    move-result v10

    move-object v1, v15

    move/from16 v4, v85

    invoke-virtual/range {v1 .. v10}, Lorg/achartengine/chart/XYChart;->drawBackground(Lorg/achartengine/renderer/DefaultRenderer;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 335
    move/from16 v93, v85

    goto :goto_20

    .line 328
    .end local v92    # "minY":[D
    .restart local v10    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .local v12, "minY":[D
    :cond_24
    move-object/from16 v92, v12

    move-object v12, v10

    .line 328
    .end local v10    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .local v12, "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .restart local v92    # "minY":[D
    sget-object v1, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->VERTICAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    if-ne v12, v1, :cond_25

    .line 329
    iget-object v2, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v10, v85

    sub-int v6, v25, v10

    .line 329
    .end local v85    # "right":I
    .local v10, "right":I
    sub-int v7, v11, v16

    const/4 v9, 0x1

    iget-object v1, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getMarginsColor()I

    move-result v18

    move-object v1, v15

    move-object/from16 v3, p1

    move v4, v10

    move/from16 v5, v16

    move-object v8, v13

    move/from16 v93, v10

    move/from16 v10, v18

    .line 329
    .end local v10    # "right":I
    .local v93, "right":I
    invoke-virtual/range {v1 .. v10}, Lorg/achartengine/chart/XYChart;->drawBackground(Lorg/achartengine/renderer/DefaultRenderer;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 331
    iget-object v2, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    sub-int v6, v89, v14

    sub-int v7, v11, v16

    iget-object v1, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getMarginsColor()I

    move-result v10

    move-object v1, v15

    move v4, v14

    invoke-virtual/range {v1 .. v10}, Lorg/achartengine/chart/XYChart;->drawBackground(Lorg/achartengine/renderer/DefaultRenderer;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    goto :goto_20

    .line 335
    .end local v93    # "right":I
    .restart local v85    # "right":I
    :cond_25
    move/from16 v93, v85

    .line 335
    .end local v85    # "right":I
    .restart local v93    # "right":I
    :goto_20
    iget-object v1, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowLabels()Z

    move-result v1

    if-eqz v1, :cond_26

    if-eqz v22, :cond_26

    const/4 v1, 0x1

    goto :goto_21

    :cond_26
    const/4 v1, 0x0

    :goto_21
    move/from16 v18, v1

    .line 336
    .local v18, "showLabels":Z
    iget-object v1, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowGridX()Z

    move-result v29

    .line 337
    .local v29, "showGridX":Z
    iget-object v1, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowCustomTextGrid()Z

    move-result v30

    .line 338
    .local v30, "showCustomTextGrid":Z
    if-nez v18, :cond_28

    if-eqz v29, :cond_27

    goto :goto_22

    .line 426
    :cond_27
    move/from16 v36, v11

    move-object v4, v12

    move-object v14, v13

    move-object v5, v15

    move/from16 v6, v16

    move/from16 v15, v61

    move/from16 v37, v82

    move/from16 v105, v84

    move/from16 v106, v89

    move/from16 v104, v90

    move-object/from16 v44, v91

    move-object/from16 v38, v92

    move/from16 v3, v93

    goto/16 :goto_2a

    .line 339
    :cond_28
    :goto_22
    const/4 v1, 0x0

    aget-wide v2, v23, v1

    aget-wide v4, v24, v1

    iget-object v1, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabels()I

    move-result v6

    move-object v1, v15

    invoke-virtual/range {v1 .. v6}, Lorg/achartengine/chart/XYChart;->getXLabels(DDI)Ljava/util/List;

    move-result-object v1

    invoke-direct {v15, v1}, Lorg/achartengine/chart/XYChart;->getValidLabels(Ljava/util/List;)Ljava/util/List;

    move-result-object v33

    .line 340
    .local v33, "xLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    move/from16 v9, v84

    move-object/from16 v8, v91

    move-object/from16 v10, v92

    invoke-virtual {v15, v10, v8, v9}, Lorg/achartengine/chart/XYChart;->getYLabels([D[DI)Ljava/util/Map;

    move-result-object v34

    .line 342
    .end local v84    # "maxScaleNumber":I
    .end local v91    # "maxY":[D
    .end local v92    # "minY":[D
    .local v8, "maxY":[D
    .local v9, "maxScaleNumber":I
    .local v10, "minY":[D
    .local v34, "allYLabels":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Double;>;>;"
    move/from16 v6, v89

    .line 343
    .local v6, "xLabelsLeft":I
    if-eqz v18, :cond_29

    .line 344
    iget-object v1, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsColor()I

    move-result v1

    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 345
    iget-object v1, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsTextSize()F

    move-result v1

    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 346
    iget-object v1, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsAlign()Landroid/graphics/Paint$Align;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 351
    :cond_29
    iget-object v1, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXTextLabelLocations()[Ljava/lang/Double;

    move-result-object v3

    const/16 v35, 0x0

    aget-wide v36, v39, v35

    aget-wide v40, v23, v35

    aget-wide v42, v24, v35

    move-object v1, v15

    move-object/from16 v2, v33

    move-object/from16 v4, p1

    move-object v5, v13

    move/from16 v7, v61

    move-object/from16 v38, v8

    move/from16 v8, v90

    .line 351
    .end local v8    # "maxY":[D
    .local v38, "maxY":[D
    move/from16 v94, v9

    move-object/from16 v44, v10

    move-wide/from16 v9, v36

    .line 351
    .end local v9    # "maxScaleNumber":I
    .end local v10    # "minY":[D
    .local v44, "minY":[D
    .local v94, "maxScaleNumber":I
    move/from16 v36, v11

    move-object/from16 v97, v12

    move/from16 v96, v61

    move/from16 v37, v82

    move/from16 v95, v89

    move/from16 v98, v90

    move-object/from16 v112, v44

    move-object/from16 v44, v38

    move-object/from16 v38, v112

    move-wide/from16 v11, v40

    .line 351
    .end local v12    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .end local v61    # "top":I
    .end local v82    # "sLength":I
    .end local v89    # "left":I
    .end local v90    # "bottom":I
    .local v37, "sLength":I
    .local v38, "minY":[D
    .local v44, "maxY":[D
    .local v95, "left":I
    .local v96, "top":I
    .local v97, "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .local v98, "bottom":I
    move-wide/from16 v13, v42

    invoke-virtual/range {v1 .. v14}, Lorg/achartengine/chart/XYChart;->drawXLabels(Ljava/util/List;[Ljava/lang/Double;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIDDD)V

    .line 353
    move-object v7, v15

    move-object/from16 v8, v34

    move-object/from16 v9, p1

    move-object/from16 v10, p6

    move/from16 v11, v94

    move/from16 v12, v95

    move/from16 v13, v93

    move/from16 v14, v98

    move-object v5, v15

    move-object/from16 v15, v31

    move-object/from16 v16, v38

    invoke-virtual/range {v7 .. v16}, Lorg/achartengine/chart/XYChart;->drawYLabels(Ljava/util/Map;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII[D[D)V

    .line 356
    if-eqz v18, :cond_30

    .line 357
    iget-object v1, v5, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsColor()I

    move-result v1

    move-object/from16 v14, p6

    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 358
    const/4 v1, 0x0

    .line 358
    .local v1, "i":I
    :goto_23
    move/from16 v15, v94

    if-ge v1, v15, :cond_2f

    .line 359
    .end local v94    # "maxScaleNumber":I
    .local v15, "maxScaleNumber":I
    iget-object v2, v5, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisAlign(I)Landroid/graphics/Paint$Align;

    move-result-object v2

    .line 360
    .local v2, "axisAlign":Landroid/graphics/Paint$Align;
    iget-object v3, v5, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v3, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYTextLabelLocations(I)[Ljava/lang/Double;

    move-result-object v3

    .line 361
    .local v3, "yTextLabelLocations":[Ljava/lang/Double;
    move-object v4, v3

    .line 361
    .local v4, "arr$":[Ljava/lang/Double;
    array-length v13, v4

    .line 361
    .local v13, "len$":I
    const/4 v7, 0x0

    .line 361
    .local v7, "i$":I
    :goto_24
    move v12, v7

    .line 361
    .end local v7    # "i$":I
    .local v12, "i$":I
    if-ge v12, v13, :cond_2e

    aget-object v11, v4, v12

    .line 362
    .local v11, "location":Ljava/lang/Double;
    aget-wide v7, v38, v1

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    cmpg-double v16, v7, v9

    if-gtz v16, :cond_2c

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    aget-wide v9, v44, v1

    cmpg-double v16, v7, v9

    if-gtz v16, :cond_2c

    .line 363
    move/from16 v10, v98

    int-to-double v7, v10

    .line 363
    .end local v98    # "bottom":I
    .local v10, "bottom":I
    aget-wide v40, v31, v1

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v42

    aget-wide v45, v38, v1

    sub-double v42, v42, v45

    mul-double v40, v40, v42

    sub-double v7, v7, v40

    double-to-float v9, v7

    .line 365
    .local v9, "yLabel":F
    iget-object v7, v5, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v7, v11, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYTextLabel(Ljava/lang/Double;I)Ljava/lang/String;

    move-result-object v16

    .line 366
    .local v16, "label":Ljava/lang/String;
    iget-object v7, v5, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v7, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsColor(I)I

    move-result v7

    invoke-virtual {v14, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 367
    iget-object v7, v5, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v7, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsAlign(I)Landroid/graphics/Paint$Align;

    move-result-object v7

    invoke-virtual {v14, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 368
    sget-object v7, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->HORIZONTAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    move-object/from16 v8, v97

    if-ne v8, v7, :cond_2b

    .line 369
    .end local v97    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .local v8, "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    sget-object v7, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    if-ne v2, v7, :cond_2a

    .line 370
    invoke-direct {v5, v2}, Lorg/achartengine/chart/XYChart;->getLabelLinePos(Landroid/graphics/Paint$Align;)I

    move-result v7

    move/from16 v99, v6

    move/from16 v6, v95

    add-int/2addr v7, v6

    .line 370
    .end local v95    # "left":I
    .local v6, "left":I
    .local v99, "xLabelsLeft":I
    int-to-float v7, v7

    move-object/from16 v100, v3

    int-to-float v3, v6

    .line 370
    .end local v3    # "yTextLabelLocations":[Ljava/lang/Double;
    .local v100, "yTextLabelLocations":[Ljava/lang/Double;
    move/from16 v35, v7

    move-object/from16 v7, p1

    move-object/from16 v101, v4

    move-object v4, v8

    move/from16 v8, v35

    .line 370
    .end local v8    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .local v4, "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .local v101, "arr$":[Ljava/lang/Double;
    move/from16 v35, v9

    .line 370
    .end local v9    # "yLabel":F
    .local v35, "yLabel":F
    move/from16 v102, v15

    move v15, v10

    move v10, v3

    .line 370
    .end local v10    # "bottom":I
    .local v15, "bottom":I
    .local v102, "maxScaleNumber":I
    move-object v3, v11

    move/from16 v11, v35

    .line 370
    .end local v11    # "location":Ljava/lang/Double;
    .local v3, "location":Ljava/lang/Double;
    move/from16 v40, v12

    move-object v12, v14

    .line 370
    .end local v12    # "i$":I
    .local v40, "i$":I
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 371
    int-to-float v10, v6

    iget-object v7, v5, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsVerticalPadding()F

    move-result v7

    sub-float v11, v35, v7

    iget-object v7, v5, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsAngle()F

    move-result v41

    move-object v7, v5

    move-object/from16 v8, p1

    move-object/from16 v9, v16

    move/from16 v42, v13

    move/from16 v13, v41

    .line 371
    .end local v13    # "len$":I
    .local v42, "len$":I
    invoke-virtual/range {v7 .. v13}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 377
    move-object/from16 v103, v3

    move/from16 v3, v93

    goto :goto_25

    .line 373
    .end local v35    # "yLabel":F
    .end local v40    # "i$":I
    .end local v42    # "len$":I
    .end local v99    # "xLabelsLeft":I
    .end local v100    # "yTextLabelLocations":[Ljava/lang/Double;
    .end local v101    # "arr$":[Ljava/lang/Double;
    .end local v102    # "maxScaleNumber":I
    .local v3, "yTextLabelLocations":[Ljava/lang/Double;
    .local v4, "arr$":[Ljava/lang/Double;
    .local v6, "xLabelsLeft":I
    .restart local v8    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .restart local v9    # "yLabel":F
    .restart local v10    # "bottom":I
    .restart local v11    # "location":Ljava/lang/Double;
    .restart local v12    # "i$":I
    .restart local v13    # "len$":I
    .local v15, "maxScaleNumber":I
    .restart local v95    # "left":I
    :cond_2a
    move-object/from16 v100, v3

    move-object/from16 v101, v4

    move/from16 v99, v6

    move-object v4, v8

    move/from16 v35, v9

    move-object v3, v11

    move/from16 v40, v12

    move/from16 v42, v13

    move/from16 v102, v15

    move/from16 v6, v95

    move v15, v10

    .line 373
    .end local v8    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .end local v9    # "yLabel":F
    .end local v10    # "bottom":I
    .end local v11    # "location":Ljava/lang/Double;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    .end local v95    # "left":I
    .local v3, "location":Ljava/lang/Double;
    .local v4, "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .local v6, "left":I
    .local v15, "bottom":I
    .restart local v35    # "yLabel":F
    .restart local v40    # "i$":I
    .restart local v42    # "len$":I
    .restart local v99    # "xLabelsLeft":I
    .restart local v100    # "yTextLabelLocations":[Ljava/lang/Double;
    .restart local v101    # "arr$":[Ljava/lang/Double;
    .restart local v102    # "maxScaleNumber":I
    move/from16 v13, v93

    int-to-float v8, v13

    .line 373
    .end local v93    # "right":I
    .local v13, "right":I
    invoke-direct {v5, v2}, Lorg/achartengine/chart/XYChart;->getLabelLinePos(Landroid/graphics/Paint$Align;)I

    move-result v7

    add-int/2addr v7, v13

    int-to-float v10, v7

    move-object/from16 v7, p1

    move/from16 v11, v35

    move-object v12, v14

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 374
    int-to-float v10, v13

    iget-object v7, v5, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsVerticalPadding()F

    move-result v7

    sub-float v11, v35, v7

    iget-object v7, v5, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsAngle()F

    move-result v41

    move-object v7, v5

    move-object/from16 v8, p1

    move-object/from16 v9, v16

    move-object/from16 v103, v3

    move v3, v13

    move/from16 v13, v41

    .line 374
    .end local v13    # "right":I
    .local v3, "right":I
    .local v103, "location":Ljava/lang/Double;
    invoke-virtual/range {v7 .. v13}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 377
    :goto_25
    if-eqz v30, :cond_2d

    .line 378
    iget-object v7, v5, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getGridColor()I

    move-result v7

    invoke-virtual {v14, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 379
    int-to-float v8, v6

    int-to-float v10, v3

    move-object/from16 v7, p1

    move/from16 v9, v35

    move/from16 v11, v35

    move-object v12, v14

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_26

    .line 382
    .end local v35    # "yLabel":F
    .end local v40    # "i$":I
    .end local v42    # "len$":I
    .end local v99    # "xLabelsLeft":I
    .end local v100    # "yTextLabelLocations":[Ljava/lang/Double;
    .end local v101    # "arr$":[Ljava/lang/Double;
    .end local v102    # "maxScaleNumber":I
    .end local v103    # "location":Ljava/lang/Double;
    .local v3, "yTextLabelLocations":[Ljava/lang/Double;
    .local v4, "arr$":[Ljava/lang/Double;
    .local v6, "xLabelsLeft":I
    .restart local v8    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .restart local v9    # "yLabel":F
    .restart local v10    # "bottom":I
    .restart local v11    # "location":Ljava/lang/Double;
    .restart local v12    # "i$":I
    .local v13, "len$":I
    .local v15, "maxScaleNumber":I
    .restart local v93    # "right":I
    .restart local v95    # "left":I
    :cond_2b
    move-object/from16 v100, v3

    move-object/from16 v101, v4

    move/from16 v99, v6

    move-object v4, v8

    move/from16 v35, v9

    move-object/from16 v103, v11

    move/from16 v40, v12

    move/from16 v42, v13

    move/from16 v102, v15

    move/from16 v3, v93

    move/from16 v6, v95

    move v15, v10

    .line 382
    .end local v8    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .end local v9    # "yLabel":F
    .end local v10    # "bottom":I
    .end local v11    # "location":Ljava/lang/Double;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    .end local v93    # "right":I
    .end local v95    # "left":I
    .local v3, "right":I
    .local v4, "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .local v6, "left":I
    .local v15, "bottom":I
    .restart local v35    # "yLabel":F
    .restart local v40    # "i$":I
    .restart local v42    # "len$":I
    .restart local v99    # "xLabelsLeft":I
    .restart local v100    # "yTextLabelLocations":[Ljava/lang/Double;
    .restart local v101    # "arr$":[Ljava/lang/Double;
    .restart local v102    # "maxScaleNumber":I
    .restart local v103    # "location":Ljava/lang/Double;
    invoke-direct {v5, v2}, Lorg/achartengine/chart/XYChart;->getLabelLinePos(Landroid/graphics/Paint$Align;)I

    move-result v7

    sub-int v8, v3, v7

    int-to-float v8, v8

    int-to-float v10, v3

    move-object/from16 v7, p1

    move/from16 v11, v35

    move-object v12, v14

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 383
    add-int/lit8 v8, v3, 0xa

    int-to-float v10, v8

    iget-object v7, v5, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsVerticalPadding()F

    move-result v7

    sub-float v11, v35, v7

    iget-object v7, v5, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsAngle()F

    move-result v13

    move-object v7, v5

    move-object/from16 v8, p1

    move-object/from16 v9, v16

    invoke-virtual/range {v7 .. v13}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 384
    if-eqz v30, :cond_2d

    .line 385
    iget-object v7, v5, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getGridColor()I

    move-result v7

    invoke-virtual {v14, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 386
    int-to-float v8, v3

    int-to-float v10, v6

    move-object/from16 v7, p1

    move/from16 v9, v35

    move/from16 v11, v35

    move-object v12, v14

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 386
    .end local v16    # "label":Ljava/lang/String;
    .end local v35    # "yLabel":F
    .end local v103    # "location":Ljava/lang/Double;
    goto :goto_26

    .line 361
    .end local v40    # "i$":I
    .end local v42    # "len$":I
    .end local v99    # "xLabelsLeft":I
    .end local v100    # "yTextLabelLocations":[Ljava/lang/Double;
    .end local v101    # "arr$":[Ljava/lang/Double;
    .end local v102    # "maxScaleNumber":I
    .local v3, "yTextLabelLocations":[Ljava/lang/Double;
    .local v4, "arr$":[Ljava/lang/Double;
    .local v6, "xLabelsLeft":I
    .restart local v12    # "i$":I
    .restart local v13    # "len$":I
    .local v15, "maxScaleNumber":I
    .restart local v93    # "right":I
    .restart local v95    # "left":I
    .restart local v97    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .restart local v98    # "bottom":I
    :cond_2c
    move-object/from16 v100, v3

    move-object/from16 v101, v4

    move/from16 v99, v6

    move/from16 v40, v12

    move/from16 v42, v13

    move/from16 v102, v15

    move/from16 v3, v93

    move/from16 v6, v95

    move-object/from16 v4, v97

    move/from16 v15, v98

    .line 361
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    .end local v93    # "right":I
    .end local v95    # "left":I
    .end local v97    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .end local v98    # "bottom":I
    .local v3, "right":I
    .local v4, "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .local v6, "left":I
    .local v15, "bottom":I
    .restart local v40    # "i$":I
    .restart local v42    # "len$":I
    .restart local v99    # "xLabelsLeft":I
    .restart local v100    # "yTextLabelLocations":[Ljava/lang/Double;
    .restart local v101    # "arr$":[Ljava/lang/Double;
    .restart local v102    # "maxScaleNumber":I
    :cond_2d
    :goto_26
    add-int/lit8 v7, v40, 0x1

    .line 361
    .end local v40    # "i$":I
    .restart local v7    # "i$":I
    move/from16 v93, v3

    move-object/from16 v97, v4

    move/from16 v95, v6

    move/from16 v98, v15

    move/from16 v13, v42

    move/from16 v6, v99

    move-object/from16 v3, v100

    move-object/from16 v4, v101

    move/from16 v15, v102

    goto/16 :goto_24

    .line 358
    .end local v2    # "axisAlign":Landroid/graphics/Paint$Align;
    .end local v3    # "right":I
    .end local v4    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .end local v7    # "i$":I
    .end local v42    # "len$":I
    .end local v99    # "xLabelsLeft":I
    .end local v100    # "yTextLabelLocations":[Ljava/lang/Double;
    .end local v101    # "arr$":[Ljava/lang/Double;
    .end local v102    # "maxScaleNumber":I
    .local v6, "xLabelsLeft":I
    .local v15, "maxScaleNumber":I
    .restart local v93    # "right":I
    .restart local v95    # "left":I
    .restart local v97    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .restart local v98    # "bottom":I
    :cond_2e
    move/from16 v99, v6

    move/from16 v102, v15

    move/from16 v3, v93

    move/from16 v6, v95

    move-object/from16 v4, v97

    move/from16 v15, v98

    .line 358
    .end local v93    # "right":I
    .end local v95    # "left":I
    .end local v97    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .end local v98    # "bottom":I
    .restart local v3    # "right":I
    .restart local v4    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .local v6, "left":I
    .local v15, "bottom":I
    .restart local v99    # "xLabelsLeft":I
    .restart local v102    # "maxScaleNumber":I
    add-int/lit8 v1, v1, 0x1

    move/from16 v6, v99

    move/from16 v94, v102

    goto/16 :goto_23

    .line 394
    .end local v1    # "i":I
    .end local v3    # "right":I
    .end local v4    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .end local v99    # "xLabelsLeft":I
    .end local v102    # "maxScaleNumber":I
    .local v6, "xLabelsLeft":I
    .local v15, "maxScaleNumber":I
    .restart local v93    # "right":I
    .restart local v95    # "left":I
    .restart local v97    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .restart local v98    # "bottom":I
    :cond_2f
    move/from16 v99, v6

    move/from16 v102, v15

    move/from16 v3, v93

    move/from16 v6, v95

    move-object/from16 v4, v97

    move/from16 v15, v98

    .line 394
    .end local v93    # "right":I
    .end local v95    # "left":I
    .end local v97    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .end local v98    # "bottom":I
    .restart local v3    # "right":I
    .restart local v4    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .local v6, "left":I
    .local v15, "bottom":I
    .restart local v99    # "xLabelsLeft":I
    .restart local v102    # "maxScaleNumber":I
    goto :goto_27

    .line 394
    .end local v3    # "right":I
    .end local v4    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .end local v15    # "bottom":I
    .end local v99    # "xLabelsLeft":I
    .end local v102    # "maxScaleNumber":I
    .local v6, "xLabelsLeft":I
    .restart local v93    # "right":I
    .restart local v94    # "maxScaleNumber":I
    .restart local v95    # "left":I
    .restart local v97    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .restart local v98    # "bottom":I
    :cond_30
    move-object/from16 v14, p6

    move/from16 v99, v6

    move/from16 v3, v93

    move/from16 v102, v94

    move/from16 v6, v95

    move-object/from16 v4, v97

    move/from16 v15, v98

    .line 394
    .end local v93    # "right":I
    .end local v94    # "maxScaleNumber":I
    .end local v95    # "left":I
    .end local v97    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .end local v98    # "bottom":I
    .restart local v3    # "right":I
    .restart local v4    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .local v6, "left":I
    .restart local v15    # "bottom":I
    .restart local v99    # "xLabelsLeft":I
    .restart local v102    # "maxScaleNumber":I
    :goto_27
    if-eqz v18, :cond_35

    .line 395
    iget-object v1, v5, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsColor()I

    move-result v1

    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 396
    iget-object v1, v5, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getAxisTitleTextSize()F

    move-result v1

    .line 397
    .local v1, "size":F
    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 398
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 399
    sget-object v2, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->HORIZONTAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    if-ne v4, v2, :cond_33

    .line 400
    iget-object v2, v5, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXTitle()Ljava/lang/String;

    move-result-object v9

    div-int/lit8 v2, v25, 0x2

    move/from16 v13, p2

    add-int/2addr v2, v13

    int-to-float v10, v2

    int-to-float v2, v15

    iget-object v7, v5, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsTextSize()F

    move-result v7

    const/high16 v8, 0x40800000    # 4.0f

    mul-float/2addr v7, v8

    const/high16 v8, 0x40400000    # 3.0f

    div-float/2addr v7, v8

    add-float/2addr v2, v7

    iget-object v7, v5, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsPadding()F

    move-result v7

    add-float/2addr v2, v7

    add-float v11, v2, v1

    const/4 v2, 0x0

    move-object v7, v5

    move-object/from16 v8, p1

    move-object v12, v14

    move/from16 v104, v15

    move v15, v13

    move v13, v2

    .line 400
    .end local v15    # "bottom":I
    .local v104, "bottom":I
    invoke-virtual/range {v7 .. v13}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 406
    const/4 v2, 0x0

    .line 406
    .local v2, "i":I
    :goto_28
    move/from16 v13, v102

    if-ge v2, v13, :cond_32

    .line 407
    .end local v102    # "maxScaleNumber":I
    .local v13, "maxScaleNumber":I
    iget-object v7, v5, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v7, v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisAlign(I)Landroid/graphics/Paint$Align;

    move-result-object v12

    .line 408
    .local v12, "axisAlign":Landroid/graphics/Paint$Align;
    sget-object v7, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    if-ne v12, v7, :cond_31

    .line 409
    iget-object v7, v5, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v7, v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYTitle(I)Ljava/lang/String;

    move-result-object v9

    int-to-float v7, v15

    add-float v10, v7, v1

    div-int/lit8 v7, v36, 0x2

    move/from16 v11, p3

    add-int/2addr v7, v11

    int-to-float v8, v7

    const/high16 v16, -0x3d4c0000    # -90.0f

    move-object v7, v5

    move/from16 v35, v8

    move-object/from16 v8, p1

    move/from16 v11, v35

    move-object/from16 v35, v12

    move-object v12, v14

    .line 409
    .end local v12    # "axisAlign":Landroid/graphics/Paint$Align;
    .local v35, "axisAlign":Landroid/graphics/Paint$Align;
    move/from16 v105, v13

    move/from16 v13, v16

    .line 409
    .end local v13    # "maxScaleNumber":I
    .local v105, "maxScaleNumber":I
    invoke-virtual/range {v7 .. v13}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 406
    move/from16 v106, v6

    move/from16 v6, p3

    goto :goto_29

    .line 411
    .end local v35    # "axisAlign":Landroid/graphics/Paint$Align;
    .end local v105    # "maxScaleNumber":I
    .restart local v12    # "axisAlign":Landroid/graphics/Paint$Align;
    .restart local v13    # "maxScaleNumber":I
    :cond_31
    move-object/from16 v35, v12

    move/from16 v105, v13

    .line 411
    .end local v12    # "axisAlign":Landroid/graphics/Paint$Align;
    .end local v13    # "maxScaleNumber":I
    .restart local v35    # "axisAlign":Landroid/graphics/Paint$Align;
    .restart local v105    # "maxScaleNumber":I
    iget-object v7, v5, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v7, v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYTitle(I)Ljava/lang/String;

    move-result-object v9

    add-int v7, v15, v25

    int-to-float v10, v7

    div-int/lit8 v7, v36, 0x2

    move/from16 v13, p3

    add-int/2addr v7, v13

    int-to-float v11, v7

    const/high16 v16, -0x3d4c0000    # -90.0f

    move-object v7, v5

    move-object/from16 v8, p1

    move-object v12, v14

    move/from16 v106, v6

    move v6, v13

    move/from16 v13, v16

    .line 411
    .end local v6    # "left":I
    .local v106, "left":I
    invoke-virtual/range {v7 .. v13}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 406
    .end local v35    # "axisAlign":Landroid/graphics/Paint$Align;
    :goto_29
    add-int/lit8 v2, v2, 0x1

    move/from16 v102, v105

    move/from16 v6, v106

    goto :goto_28

    .line 414
    .end local v2    # "i":I
    .end local v105    # "maxScaleNumber":I
    .end local v106    # "left":I
    .restart local v6    # "left":I
    .restart local v13    # "maxScaleNumber":I
    :cond_32
    move/from16 v106, v6

    move/from16 v105, v13

    move/from16 v6, p3

    .line 414
    .end local v6    # "left":I
    .end local v13    # "maxScaleNumber":I
    .restart local v105    # "maxScaleNumber":I
    .restart local v106    # "left":I
    iget-object v2, v5, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getChartTitleTextSize()F

    move-result v2

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 415
    iget-object v2, v5, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getChartTitle()Ljava/lang/String;

    move-result-object v9

    div-int/lit8 v2, v25, 0x2

    add-int/2addr v2, v15

    int-to-float v10, v2

    int-to-float v2, v6

    iget-object v7, v5, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getChartTitleTextSize()F

    move-result v7

    add-float v11, v2, v7

    const/4 v13, 0x0

    move-object v7, v5

    move-object/from16 v8, p1

    move-object v12, v14

    invoke-virtual/range {v7 .. v13}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 426
    move/from16 v15, v96

    goto/16 :goto_2a

    .line 417
    .end local v104    # "bottom":I
    .end local v105    # "maxScaleNumber":I
    .end local v106    # "left":I
    .restart local v6    # "left":I
    .restart local v15    # "bottom":I
    .restart local v102    # "maxScaleNumber":I
    :cond_33
    move/from16 v106, v6

    move/from16 v104, v15

    move/from16 v105, v102

    move/from16 v6, p3

    move/from16 v15, p2

    .line 417
    .end local v6    # "left":I
    .end local v15    # "bottom":I
    .end local v102    # "maxScaleNumber":I
    .restart local v104    # "bottom":I
    .restart local v105    # "maxScaleNumber":I
    .restart local v106    # "left":I
    sget-object v2, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->VERTICAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    if-ne v4, v2, :cond_34

    .line 418
    iget-object v2, v5, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXTitle()Ljava/lang/String;

    move-result-object v9

    div-int/lit8 v2, v25, 0x2

    add-int/2addr v2, v15

    int-to-float v10, v2

    add-int v2, v6, v36

    int-to-float v2, v2

    sub-float/2addr v2, v1

    iget-object v7, v5, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsPadding()F

    move-result v7

    add-float v11, v2, v7

    const/high16 v13, -0x3d4c0000    # -90.0f

    move-object v7, v5

    move-object/from16 v8, p1

    move-object v12, v14

    invoke-virtual/range {v7 .. v13}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 420
    iget-object v2, v5, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYTitle()Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v8, v3, 0x14

    int-to-float v10, v8

    div-int/lit8 v2, v36, 0x2

    add-int/2addr v2, v6

    int-to-float v11, v2

    const/4 v13, 0x0

    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v13}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 421
    iget-object v2, v5, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getChartTitleTextSize()F

    move-result v2

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 422
    iget-object v2, v5, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getChartTitle()Ljava/lang/String;

    move-result-object v9

    int-to-float v2, v15

    add-float v10, v2, v1

    div-int/lit8 v2, v36, 0x2

    move/from16 v13, v96

    add-int/2addr v2, v13

    .line 422
    .end local v96    # "top":I
    .local v13, "top":I
    int-to-float v11, v2

    const/4 v2, 0x0

    move v15, v13

    move v13, v2

    .line 422
    .end local v13    # "top":I
    .local v15, "top":I
    invoke-virtual/range {v7 .. v13}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 422
    .end local v1    # "size":F
    .end local v33    # "xLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v34    # "allYLabels":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Double;>;>;"
    .end local v99    # "xLabelsLeft":I
    goto :goto_2a

    .line 426
    .end local v15    # "top":I
    .restart local v96    # "top":I
    :cond_34
    move/from16 v15, v96

    .line 426
    .end local v96    # "top":I
    .restart local v15    # "top":I
    goto :goto_2a

    .line 426
    .end local v104    # "bottom":I
    .end local v105    # "maxScaleNumber":I
    .end local v106    # "left":I
    .restart local v6    # "left":I
    .local v15, "bottom":I
    .restart local v96    # "top":I
    .restart local v102    # "maxScaleNumber":I
    :cond_35
    move/from16 v106, v6

    move/from16 v104, v15

    move/from16 v15, v96

    move/from16 v105, v102

    move/from16 v6, p3

    .line 426
    .end local v6    # "left":I
    .end local v96    # "top":I
    .end local v102    # "maxScaleNumber":I
    .local v15, "top":I
    .restart local v104    # "bottom":I
    .restart local v105    # "maxScaleNumber":I
    .restart local v106    # "left":I
    :goto_2a
    sget-object v1, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->HORIZONTAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    if-ne v4, v1, :cond_36

    .line 427
    iget-object v7, v5, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    iget-object v1, v5, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsPadding()F

    move-result v1

    float-to-int v1, v1

    add-int v8, v6, v1

    const/4 v12, 0x0

    move-object v1, v5

    move-object/from16 v2, p1

    move v13, v3

    move-object v3, v7

    .line 427
    .end local v3    # "right":I
    .local v13, "right":I
    move-object v11, v4

    move-object/from16 v4, v21

    .line 427
    .end local v4    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .local v11, "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    move-object v10, v5

    move/from16 v5, v106

    move/from16 v16, v6

    move/from16 v9, v106

    move v6, v13

    .line 427
    .end local v106    # "left":I
    .local v9, "left":I
    move v7, v8

    move/from16 v8, v25

    move/from16 v107, v9

    move/from16 v9, v36

    .line 427
    .end local v9    # "left":I
    .local v107, "left":I
    move/from16 v10, v19

    move/from16 v108, v15

    move-object v15, v11

    move-object v11, v14

    .line 427
    .end local v11    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .local v15, "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .local v108, "top":I
    invoke-virtual/range {v1 .. v12}, Lorg/achartengine/chart/XYChart;->drawLegend(Landroid/graphics/Canvas;Lorg/achartengine/renderer/DefaultRenderer;[Ljava/lang/String;IIIIIILandroid/graphics/Paint;Z)I

    .line 435
    move-object/from16 v7, p1

    move/from16 v110, v13

    move-object/from16 v109, v15

    move/from16 v13, v79

    const/4 v8, 0x0

    move-object/from16 v15, p0

    goto :goto_2b

    .line 429
    .end local v13    # "right":I
    .end local v107    # "left":I
    .end local v108    # "top":I
    .restart local v3    # "right":I
    .restart local v4    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .local v15, "top":I
    .restart local v106    # "left":I
    :cond_36
    move v13, v3

    move/from16 v16, v6

    move/from16 v108, v15

    move/from16 v107, v106

    move-object v15, v4

    .line 429
    .end local v3    # "right":I
    .end local v4    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .end local v106    # "left":I
    .restart local v13    # "right":I
    .local v15, "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .restart local v107    # "left":I
    .restart local v108    # "top":I
    sget-object v1, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->VERTICAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    if-ne v15, v1, :cond_37

    .line 430
    move/from16 v12, v79

    int-to-float v1, v12

    .line 430
    .end local v79    # "angle":I
    .local v12, "angle":I
    move-object/from16 v10, p1

    const/4 v9, 0x1

    move-object/from16 v11, p0

    invoke-direct {v11, v10, v1, v9}, Lorg/achartengine/chart/XYChart;->transform(Landroid/graphics/Canvas;FZ)V

    .line 431
    iget-object v3, v11, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    iget-object v1, v11, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsPadding()F

    move-result v1

    float-to-int v1, v1

    add-int v7, v16, v1

    const/16 v33, 0x0

    move-object v1, v11

    move-object v2, v10

    move-object/from16 v4, v21

    move/from16 v5, v107

    move v6, v13

    move/from16 v8, v25

    move/from16 v9, v36

    move/from16 v10, v19

    move-object/from16 v109, v15

    move-object v15, v11

    move-object v11, v14

    .line 431
    .end local v15    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .local v109, "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    move/from16 v110, v13

    move v13, v12

    move/from16 v12, v33

    .line 431
    .end local v12    # "angle":I
    .local v13, "angle":I
    .local v110, "right":I
    invoke-virtual/range {v1 .. v12}, Lorg/achartengine/chart/XYChart;->drawLegend(Landroid/graphics/Canvas;Lorg/achartengine/renderer/DefaultRenderer;[Ljava/lang/String;IIIIIILandroid/graphics/Paint;Z)I

    .line 433
    int-to-float v1, v13

    move-object/from16 v7, p1

    const/4 v8, 0x0

    invoke-direct {v15, v7, v1, v8}, Lorg/achartengine/chart/XYChart;->transform(Landroid/graphics/Canvas;FZ)V

    goto :goto_2b

    .line 435
    .end local v109    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .end local v110    # "right":I
    .local v13, "right":I
    .restart local v15    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .restart local v79    # "angle":I
    :cond_37
    move-object/from16 v7, p1

    move/from16 v110, v13

    move-object/from16 v109, v15

    move/from16 v13, v79

    const/4 v8, 0x0

    move-object/from16 v15, p0

    .line 435
    .end local v15    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .end local v79    # "angle":I
    .local v13, "angle":I
    .restart local v109    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .restart local v110    # "right":I
    :goto_2b
    iget-object v1, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowAxes()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 436
    iget-object v1, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getAxesColor()I

    move-result v1

    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 437
    move/from16 v9, v107

    int-to-float v2, v9

    .line 437
    .end local v107    # "left":I
    .restart local v9    # "left":I
    move/from16 v10, v104

    int-to-float v3, v10

    .line 437
    .end local v104    # "bottom":I
    .restart local v10    # "bottom":I
    move/from16 v11, v110

    int-to-float v4, v11

    .line 437
    .end local v110    # "right":I
    .local v11, "right":I
    int-to-float v5, v10

    move-object v1, v7

    move-object v6, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 438
    const/4 v1, 0x0

    .line 439
    .local v1, "rightAxis":Z
    move v12, v1

    move v1, v8

    .line 439
    .local v1, "i":I
    .local v12, "rightAxis":Z
    :goto_2c
    move/from16 v6, v105

    if-ge v1, v6, :cond_39

    .line 439
    .end local v105    # "maxScaleNumber":I
    .local v6, "maxScaleNumber":I
    if-nez v12, :cond_39

    .line 440
    iget-object v2, v15, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisAlign(I)Landroid/graphics/Paint$Align;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    if-ne v2, v3, :cond_38

    const/4 v2, 0x1

    goto :goto_2d

    :cond_38
    move v2, v8

    :goto_2d
    move v12, v2

    .line 439
    add-int/lit8 v1, v1, 0x1

    move/from16 v105, v6

    goto :goto_2c

    .line 442
    .end local v1    # "i":I
    :cond_39
    sget-object v1, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->HORIZONTAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    move-object/from16 v8, v109

    if-ne v8, v1, :cond_3a

    .line 443
    .end local v109    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .restart local v8    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    int-to-float v2, v9

    move/from16 v5, v108

    int-to-float v3, v5

    .line 443
    .end local v108    # "top":I
    .local v5, "top":I
    int-to-float v4, v9

    int-to-float v1, v10

    move/from16 v33, v1

    move-object v1, v7

    move/from16 v111, v9

    move v9, v5

    move/from16 v5, v33

    .line 443
    .end local v5    # "top":I
    .local v9, "top":I
    .local v111, "left":I
    move/from16 v33, v6

    move-object v6, v14

    .line 443
    .end local v6    # "maxScaleNumber":I
    .local v33, "maxScaleNumber":I
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 444
    if-eqz v12, :cond_3c

    .line 445
    int-to-float v2, v11

    int-to-float v3, v9

    int-to-float v4, v11

    int-to-float v5, v10

    move-object v1, v7

    move-object v6, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2e

    .line 447
    .end local v33    # "maxScaleNumber":I
    .end local v111    # "left":I
    .restart local v6    # "maxScaleNumber":I
    .local v9, "left":I
    .restart local v108    # "top":I
    :cond_3a
    move/from16 v33, v6

    move/from16 v111, v9

    move/from16 v9, v108

    .line 447
    .end local v6    # "maxScaleNumber":I
    .end local v108    # "top":I
    .local v9, "top":I
    .restart local v33    # "maxScaleNumber":I
    .restart local v111    # "left":I
    sget-object v1, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->VERTICAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    if-ne v8, v1, :cond_3c

    .line 448
    int-to-float v2, v11

    int-to-float v3, v9

    int-to-float v4, v11

    int-to-float v5, v10

    move-object v1, v7

    move-object v6, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 448
    .end local v12    # "rightAxis":Z
    goto :goto_2e

    .line 451
    .end local v8    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .end local v9    # "top":I
    .end local v10    # "bottom":I
    .end local v11    # "right":I
    .end local v33    # "maxScaleNumber":I
    .end local v111    # "left":I
    .restart local v104    # "bottom":I
    .restart local v105    # "maxScaleNumber":I
    .restart local v107    # "left":I
    .restart local v108    # "top":I
    .restart local v109    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .restart local v110    # "right":I
    :cond_3b
    move/from16 v10, v104

    move/from16 v33, v105

    move/from16 v111, v107

    move/from16 v9, v108

    move-object/from16 v8, v109

    move/from16 v11, v110

    .line 451
    .end local v104    # "bottom":I
    .end local v105    # "maxScaleNumber":I
    .end local v107    # "left":I
    .end local v108    # "top":I
    .end local v109    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .end local v110    # "right":I
    .restart local v8    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .restart local v9    # "top":I
    .restart local v10    # "bottom":I
    .restart local v11    # "right":I
    .restart local v33    # "maxScaleNumber":I
    .restart local v111    # "left":I
    :cond_3c
    :goto_2e
    if-eqz v20, :cond_3d

    .line 452
    int-to-float v1, v13

    const/4 v2, 0x1

    invoke-direct {v15, v7, v1, v2}, Lorg/achartengine/chart/XYChart;->transform(Landroid/graphics/Canvas;FZ)V

    .line 454
    :cond_3d
    return-void
.end method

.method protected drawChartValuesText(Landroid/graphics/Canvas;Lorg/achartengine/model/XYSeries;Lorg/achartengine/renderer/SimpleSeriesRenderer;Landroid/graphics/Paint;Ljava/util/List;II)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "series"    # Lorg/achartengine/model/XYSeries;
    .param p3, "renderer"    # Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .param p4, "paint"    # Landroid/graphics/Paint;
    .param p6, "seriesIndex"    # I
    .param p7, "startIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Lorg/achartengine/model/XYSeries;",
            "Lorg/achartengine/renderer/SimpleSeriesRenderer;",
            "Landroid/graphics/Paint;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;II)V"
        }
    .end annotation

    .line 564
    .local p5, "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p5

    .line 564
    move/from16 v10, p7

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-le v0, v12, :cond_5

    .line 566
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 567
    .local v0, "previousPointX":F
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 568
    .local v1, "previousPointY":F
    move v13, v0

    move v14, v1

    move v0, v11

    .line 568
    .end local v1    # "previousPointY":F
    .local v0, "k":I
    .local v13, "previousPointX":F
    .local v14, "previousPointY":F
    :goto_0
    move v15, v0

    .line 568
    .end local v0    # "k":I
    .local v15, "k":I
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v15, v0, :cond_4

    .line 569
    const/4 v6, 0x2

    if-ne v15, v6, :cond_1

    .line 571
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual/range {p3 .. p3}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getDisplayChartValuesDistance()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    const/4 v5, 0x3

    if-gtz v0, :cond_0

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual/range {p3 .. p3}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getDisplayChartValuesDistance()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 574
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getChartValuesFormat()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v8, v10}, Lorg/achartengine/model/XYSeries;->getY(I)D

    move-result-wide v1

    invoke-virtual {v7, v0, v1, v2}, Lorg/achartengine/chart/XYChart;->getLabel(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual/range {p3 .. p3}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getChartValuesSpacing()F

    move-result v1

    sub-float v4, v0, v1

    const/16 v16, 0x0

    move-object v0, v7

    move-object/from16 v1, p1

    move v11, v5

    move-object/from16 v5, p4

    move v12, v6

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 577
    invoke-virtual/range {p3 .. p3}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getChartValuesFormat()Ljava/text/NumberFormat;

    move-result-object v0

    add-int/lit8 v1, v10, 0x1

    invoke-virtual {v8, v1}, Lorg/achartengine/model/XYSeries;->getY(I)D

    move-result-wide v1

    invoke-virtual {v7, v0, v1, v2}, Lorg/achartengine/chart/XYChart;->getLabel(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual/range {p3 .. p3}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getChartValuesSpacing()F

    move-result v1

    sub-float v4, v0, v1

    const/4 v6, 0x0

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 581
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 582
    .end local v13    # "previousPointX":F
    .local v0, "previousPointX":F
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 568
    .end local v0    # "previousPointX":F
    .end local v14    # "previousPointY":F
    .restart local v1    # "previousPointY":F
    .restart local v13    # "previousPointX":F
    :goto_1
    move v13, v0

    move v14, v1

    goto/16 :goto_2

    .line 584
    .end local v1    # "previousPointY":F
    .restart local v14    # "previousPointY":F
    :cond_1
    move v12, v6

    if-le v15, v12, :cond_3

    .line 587
    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float/2addr v0, v13

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual/range {p3 .. p3}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getDisplayChartValuesDistance()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2

    add-int/lit8 v0, v15, 0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float/2addr v0, v14

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual/range {p3 .. p3}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getDisplayChartValuesDistance()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 590
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getChartValuesFormat()Ljava/text/NumberFormat;

    move-result-object v0

    div-int/lit8 v1, v15, 0x2

    add-int/2addr v1, v10

    invoke-virtual {v8, v1}, Lorg/achartengine/model/XYSeries;->getY(I)D

    move-result-wide v1

    invoke-virtual {v7, v0, v1, v2}, Lorg/achartengine/chart/XYChart;->getLabel(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-int/lit8 v0, v15, 0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual/range {p3 .. p3}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getChartValuesSpacing()F

    move-result v1

    sub-float v4, v0, v1

    const/4 v6, 0x0

    move-object v0, v7

    move-object/from16 v1, p1

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v6}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 593
    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 594
    .end local v13    # "previousPointX":F
    .restart local v0    # "previousPointX":F
    add-int/lit8 v1, v15, 0x1

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto/16 :goto_1

    .line 568
    .end local v0    # "previousPointX":F
    .restart local v13    # "previousPointX":F
    :cond_3
    :goto_2
    add-int/lit8 v0, v15, 0x2

    .line 568
    .end local v15    # "k":I
    .local v0, "k":I
    const/4 v11, 0x0

    const/4 v12, 0x1

    goto/16 :goto_0

    .line 598
    .end local v0    # "k":I
    .end local v13    # "previousPointX":F
    .end local v14    # "previousPointY":F
    :cond_4
    goto :goto_4

    .line 599
    :cond_5
    const/16 v17, 0x0

    .line 599
    .local v17, "k":I
    :goto_3
    move/from16 v11, v17

    .line 599
    .end local v17    # "k":I
    .local v11, "k":I
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v11, v0, :cond_6

    .line 600
    invoke-virtual/range {p3 .. p3}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getChartValuesFormat()Ljava/text/NumberFormat;

    move-result-object v0

    div-int/lit8 v1, v11, 0x2

    add-int/2addr v1, v10

    invoke-virtual {v8, v1}, Lorg/achartengine/model/XYSeries;->getY(I)D

    move-result-wide v1

    invoke-virtual {v7, v0, v1, v2}, Lorg/achartengine/chart/XYChart;->getLabel(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-int/lit8 v0, v11, 0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual/range {p3 .. p3}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getChartValuesSpacing()F

    move-result v1

    sub-float v4, v0, v1

    const/4 v6, 0x0

    move-object v0, v7

    move-object/from16 v1, p1

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v6}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 599
    add-int/lit8 v17, v11, 0x2

    .line 599
    .end local v11    # "k":I
    .restart local v17    # "k":I
    goto :goto_3

    .line 605
    .end local v17    # "k":I
    :cond_6
    :goto_4
    return-void
.end method

.method public abstract drawSeries(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lorg/achartengine/renderer/SimpleSeriesRenderer;FII)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Lorg/achartengine/renderer/SimpleSeriesRenderer;",
            "FII)V"
        }
    .end annotation
.end method

.method protected drawSeries(Lorg/achartengine/model/XYSeries;Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lorg/achartengine/renderer/SimpleSeriesRenderer;FILorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;I)V
    .locals 17
    .param p1, "series"    # Lorg/achartengine/model/XYSeries;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "paint"    # Landroid/graphics/Paint;
    .param p5, "seriesRenderer"    # Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .param p6, "yAxisValue"    # F
    .param p7, "seriesIndex"    # I
    .param p8, "or"    # Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .param p9, "startIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/achartengine/model/XYSeries;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Lorg/achartengine/renderer/SimpleSeriesRenderer;",
            "FI",
            "Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;",
            "I)V"
        }
    .end annotation

    .line 503
    .local p4, "pointsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    move-object/from16 v8, p3

    .line 503
    invoke-virtual/range {p5 .. p5}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getStroke()Lorg/achartengine/renderer/BasicStroke;

    move-result-object v9

    .line 504
    .local v9, "stroke":Lorg/achartengine/renderer/BasicStroke;
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v10

    .line 505
    .local v10, "cap":Landroid/graphics/Paint$Cap;
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    move-result-object v11

    .line 506
    .local v11, "join":Landroid/graphics/Paint$Join;
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getStrokeMiter()F

    move-result v12

    .line 507
    .local v12, "miter":F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getPathEffect()Landroid/graphics/PathEffect;

    move-result-object v13

    .line 508
    .local v13, "pathEffect":Landroid/graphics/PathEffect;
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v14

    .line 509
    .local v14, "style":Landroid/graphics/Paint$Style;
    if-eqz v9, :cond_1

    .line 510
    const/4 v0, 0x0

    .line 511
    .local v0, "effect":Landroid/graphics/PathEffect;
    invoke-virtual {v9}, Lorg/achartengine/renderer/BasicStroke;->getIntervals()[F

    move-result-object v1

    if-eqz v1, :cond_0

    .line 512
    new-instance v1, Landroid/graphics/DashPathEffect;

    invoke-virtual {v9}, Lorg/achartengine/renderer/BasicStroke;->getIntervals()[F

    move-result-object v2

    invoke-virtual {v9}, Lorg/achartengine/renderer/BasicStroke;->getPhase()F

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    move-object v0, v1

    .line 514
    .end local v0    # "effect":Landroid/graphics/PathEffect;
    .local v7, "effect":Landroid/graphics/PathEffect;
    :cond_0
    move-object v7, v0

    invoke-virtual {v9}, Lorg/achartengine/renderer/BasicStroke;->getCap()Landroid/graphics/Paint$Cap;

    move-result-object v1

    invoke-virtual {v9}, Lorg/achartengine/renderer/BasicStroke;->getJoin()Landroid/graphics/Paint$Join;

    move-result-object v2

    invoke-virtual {v9}, Lorg/achartengine/renderer/BasicStroke;->getMiter()F

    move-result v3

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p0

    move-object v5, v7

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lorg/achartengine/chart/XYChart;->setStroke(Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLandroid/graphics/Paint$Style;Landroid/graphics/PathEffect;Landroid/graphics/Paint;)V

    .line 518
    .end local v7    # "effect":Landroid/graphics/PathEffect;
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v8

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p9

    invoke-virtual/range {v0 .. v7}, Lorg/achartengine/chart/XYChart;->drawSeries(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lorg/achartengine/renderer/SimpleSeriesRenderer;FII)V

    .line 519
    move-object/from16 v15, p0

    move-object/from16 v7, p5

    invoke-virtual {v15, v7}, Lorg/achartengine/chart/XYChart;->isRenderPoints(Lorg/achartengine/renderer/SimpleSeriesRenderer;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 520
    invoke-virtual/range {p0 .. p0}, Lorg/achartengine/chart/XYChart;->getPointsChart()Lorg/achartengine/chart/ScatterChart;

    move-result-object v16

    .line 521
    .local v16, "pointsChart":Lorg/achartengine/chart/ScatterChart;
    if-eqz v16, :cond_2

    .line 522
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    move-object v2, v8

    move-object/from16 v3, p4

    move-object v4, v7

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p9

    invoke-virtual/range {v0 .. v7}, Lorg/achartengine/chart/ScatterChart;->drawSeries(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lorg/achartengine/renderer/SimpleSeriesRenderer;FII)V

    .line 526
    .end local v16    # "pointsChart":Lorg/achartengine/chart/ScatterChart;
    :cond_2
    invoke-virtual/range {p5 .. p5}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getChartValuesTextSize()F

    move-result v0

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 527
    sget-object v0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->HORIZONTAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    move-object/from16 v7, p8

    if-ne v7, v0, :cond_3

    .line 528
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 530
    :cond_3
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 532
    :goto_0
    invoke-virtual/range {p5 .. p5}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->isDisplayChartValues()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 533
    invoke-virtual/range {p5 .. p5}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getChartValuesTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 534
    move-object v0, v15

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object v4, v8

    move-object/from16 v5, p4

    move/from16 v6, p7

    move/from16 v7, p9

    invoke-virtual/range {v0 .. v7}, Lorg/achartengine/chart/XYChart;->drawChartValuesText(Landroid/graphics/Canvas;Lorg/achartengine/model/XYSeries;Lorg/achartengine/renderer/SimpleSeriesRenderer;Landroid/graphics/Paint;Ljava/util/List;II)V

    .line 537
    :cond_4
    if-eqz v9, :cond_5

    .line 538
    move-object v0, v15

    move-object v1, v10

    move-object v2, v11

    move v3, v12

    move-object v4, v14

    move-object v5, v13

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lorg/achartengine/chart/XYChart;->setStroke(Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLandroid/graphics/Paint$Style;Landroid/graphics/PathEffect;Landroid/graphics/Paint;)V

    .line 540
    :cond_5
    return-void
.end method

.method protected drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "extraAngle"    # F

    .line 620
    iget-object v0, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getOrientation()Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->getAngle()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    add-float/2addr v0, p6

    .line 621
    .local v0, "angle":F
    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    .line 623
    invoke-virtual {p1, v0, p3, p4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 625
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lorg/achartengine/chart/XYChart;->drawString(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 626
    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    .line 627
    neg-float v1, v0

    invoke-virtual {p1, v1, p3, p4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 630
    :cond_1
    return-void
.end method

.method protected drawXLabels(Ljava/util/List;[Ljava/lang/Double;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIDDD)V
    .locals 20
    .param p2, "xTextLabelLocations"    # [Ljava/lang/Double;
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "paint"    # Landroid/graphics/Paint;
    .param p5, "left"    # I
    .param p6, "top"    # I
    .param p7, "bottom"    # I
    .param p8, "xPixelsPerUnit"    # D
    .param p10, "minX"    # D
    .param p12, "maxX"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;[",
            "Ljava/lang/Double;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "IIIDDD)V"
        }
    .end annotation

    .line 668
    .local p1, "xLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    move-object/from16 v14, p0

    move-object/from16 v15, p4

    move/from16 v12, p7

    .line 668
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    .line 669
    .local v13, "length":I
    iget-object v0, v14, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowLabels()Z

    move-result v16

    .line 670
    .local v16, "showLabels":Z
    iget-object v0, v14, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowGridY()Z

    move-result v17

    .line 671
    .local v17, "showGridY":Z
    const/4 v0, 0x0

    .line 671
    .local v0, "i":I
    :goto_0
    move v7, v0

    .line 671
    .end local v0    # "i":I
    .local v7, "i":I
    if-ge v7, v13, :cond_2

    .line 672
    move-object/from16 v10, p1

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    .line 673
    .local v8, "label":D
    move/from16 v11, p5

    int-to-double v0, v11

    sub-double v2, v8, p10

    mul-double v2, v2, p8

    add-double/2addr v0, v2

    double-to-float v6, v0

    .line 674
    .local v6, "xLabel":F
    if-eqz v16, :cond_0

    .line 675
    iget-object v0, v14, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsColor()I

    move-result v0

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 676
    int-to-float v2, v12

    int-to-float v0, v12

    iget-object v1, v14, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsTextSize()F

    move-result v1

    const/high16 v18, 0x40400000    # 3.0f

    div-float v1, v1, v18

    add-float v4, v0, v1

    move-object/from16 v0, p3

    move v1, v6

    move v3, v6

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 677
    iget-object v0, v14, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelFormat()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v14, v0, v8, v9}, Lorg/achartengine/chart/XYChart;->getLabel(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v2

    int-to-float v0, v12

    iget-object v1, v14, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsTextSize()F

    move-result v1

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v1, v3

    div-float v1, v1, v18

    add-float/2addr v0, v1

    iget-object v1, v14, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsPadding()F

    move-result v1

    add-float v4, v0, v1

    iget-object v0, v14, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsAngle()F

    move-result v18

    move-object v0, v14

    move-object/from16 v1, p3

    move v3, v6

    move/from16 v19, v6

    move/from16 v6, v18

    .line 677
    .end local v6    # "xLabel":F
    .local v19, "xLabel":F
    invoke-virtual/range {v0 .. v6}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    goto :goto_1

    .line 681
    .end local v19    # "xLabel":F
    .restart local v6    # "xLabel":F
    :cond_0
    move/from16 v19, v6

    .line 681
    .end local v6    # "xLabel":F
    .restart local v19    # "xLabel":F
    :goto_1
    if-eqz v17, :cond_1

    .line 682
    iget-object v0, v14, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getGridColor()I

    move-result v0

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 683
    int-to-float v2, v12

    move/from16 v6, p6

    int-to-float v4, v6

    move-object/from16 v0, p3

    move/from16 v1, v19

    move/from16 v3, v19

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 683
    .end local v8    # "label":D
    .end local v19    # "xLabel":F
    goto :goto_2

    .line 671
    :cond_1
    move/from16 v6, p6

    :goto_2
    add-int/lit8 v0, v7, 0x1

    .line 671
    .end local v7    # "i":I
    .restart local v0    # "i":I
    goto/16 :goto_0

    .line 686
    .end local v0    # "i":I
    :cond_2
    move-object/from16 v10, p1

    move/from16 v11, p5

    move/from16 v6, p6

    move-object v0, v14

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object v3, v15

    move/from16 v4, v16

    move v5, v11

    move v7, v12

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move/from16 v18, v13

    move-wide/from16 v12, p12

    .line 686
    .end local v13    # "length":I
    .local v18, "length":I
    invoke-virtual/range {v0 .. v13}, Lorg/achartengine/chart/XYChart;->drawXTextLabels([Ljava/lang/Double;Landroid/graphics/Canvas;Landroid/graphics/Paint;ZIIIDDD)V

    .line 688
    return-void
.end method

.method protected drawXTextLabels([Ljava/lang/Double;Landroid/graphics/Canvas;Landroid/graphics/Paint;ZIIIDDD)V
    .locals 19
    .param p1, "xTextLabelLocations"    # [Ljava/lang/Double;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "paint"    # Landroid/graphics/Paint;
    .param p4, "showLabels"    # Z
    .param p5, "left"    # I
    .param p6, "top"    # I
    .param p7, "bottom"    # I
    .param p8, "xPixelsPerUnit"    # D
    .param p10, "minX"    # D
    .param p12, "maxX"    # D

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    move/from16 v9, p7

    .line 771
    iget-object v0, v7, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowCustomTextGrid()Z

    move-result v12

    .line 772
    .local v12, "showCustomTextGrid":Z
    if-eqz p4, :cond_2

    .line 773
    iget-object v0, v7, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsColor()I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 774
    move-object/from16 v13, p1

    .line 774
    .local v13, "arr$":[Ljava/lang/Double;
    array-length v14, v13

    .line 774
    .local v14, "len$":I
    const/4 v0, 0x0

    .line 774
    .local v0, "i$":I
    :goto_0
    move v6, v0

    .line 774
    .end local v0    # "i$":I
    .local v6, "i$":I
    if-ge v6, v14, :cond_2

    aget-object v5, v13, v6

    .line 775
    .local v5, "location":Ljava/lang/Double;
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpg-double v2, p10, v0

    if-gtz v2, :cond_1

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpg-double v2, v0, p12

    if-gtz v2, :cond_1

    .line 776
    move/from16 v4, p5

    int-to-double v0, v4

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sub-double v2, v2, p10

    mul-double v2, v2, p8

    add-double/2addr v0, v2

    double-to-float v3, v0

    .line 777
    .local v3, "xLabel":F
    iget-object v0, v7, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsColor()I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 778
    int-to-float v2, v9

    int-to-float v0, v9

    iget-object v1, v7, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsTextSize()F

    move-result v1

    const/high16 v15, 0x40400000    # 3.0f

    div-float/2addr v1, v15

    add-float v16, v0, v1

    move-object/from16 v0, p2

    move v1, v3

    move/from16 v17, v3

    .line 778
    .end local v3    # "xLabel":F
    .local v17, "xLabel":F
    move/from16 v4, v16

    move-object v10, v5

    move-object v5, v8

    .line 778
    .end local v5    # "location":Ljava/lang/Double;
    .local v10, "location":Ljava/lang/Double;
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 780
    iget-object v0, v7, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXTextLabel(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v2

    int-to-float v0, v9

    iget-object v1, v7, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsTextSize()F

    move-result v1

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v1, v3

    div-float/2addr v1, v15

    add-float v4, v0, v1

    iget-object v0, v7, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsAngle()F

    move-result v11

    move-object v0, v7

    move-object/from16 v1, p2

    move/from16 v3, v17

    move v15, v6

    move v6, v11

    .line 780
    .end local v6    # "i$":I
    .local v15, "i$":I
    invoke-virtual/range {v0 .. v6}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 782
    if-eqz v12, :cond_0

    .line 783
    iget-object v0, v7, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getGridColor()I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 784
    int-to-float v2, v9

    move/from16 v6, p6

    int-to-float v4, v6

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v3, v17

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 784
    .end local v10    # "location":Ljava/lang/Double;
    .end local v17    # "xLabel":F
    goto :goto_1

    .line 774
    :cond_0
    move/from16 v6, p6

    goto :goto_1

    .line 774
    .end local v15    # "i$":I
    .restart local v6    # "i$":I
    :cond_1
    move v15, v6

    move/from16 v6, p6

    .line 774
    .end local v6    # "i$":I
    .restart local v15    # "i$":I
    :goto_1
    add-int/lit8 v0, v15, 0x1

    .line 774
    .end local v15    # "i$":I
    .restart local v0    # "i$":I
    goto/16 :goto_0

    .line 789
    .end local v0    # "i$":I
    .end local v13    # "arr$":[Ljava/lang/Double;
    .end local v14    # "len$":I
    :cond_2
    move/from16 v6, p6

    return-void
.end method

.method protected drawYLabels(Ljava/util/Map;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII[D[D)V
    .locals 27
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "paint"    # Landroid/graphics/Paint;
    .param p4, "maxScaleNumber"    # I
    .param p5, "left"    # I
    .param p6, "right"    # I
    .param p7, "bottom"    # I
    .param p8, "yPixelsPerUnit"    # [D
    .param p9, "minY"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;>;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "IIII[D[D)V"
        }
    .end annotation

    .line 705
    .local p1, "allYLabels":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Double;>;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p3

    move/from16 v9, p5

    move/from16 v10, p6

    .line 705
    iget-object v0, v7, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getOrientation()Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    move-result-object v11

    .line 706
    .local v11, "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    iget-object v0, v7, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowGridX()Z

    move-result v12

    .line 707
    .local v12, "showGridX":Z
    iget-object v0, v7, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowLabels()Z

    move-result v13

    .line 708
    .local v13, "showLabels":Z
    const/4 v0, 0x0

    .line 708
    .local v0, "i":I
    :goto_0
    move v15, v0

    .line 708
    .end local v0    # "i":I
    .local v15, "i":I
    move/from16 v6, p4

    if-ge v15, v6, :cond_9

    .line 709
    iget-object v0, v7, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0, v15}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsAlign(I)Landroid/graphics/Paint$Align;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 710
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v5, p1

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/List;

    .line 711
    .local v4, "yLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 712
    .local v3, "length":I
    const/4 v0, 0x0

    .line 712
    .local v0, "j":I
    :goto_1
    move v2, v0

    .line 712
    .end local v0    # "j":I
    .local v2, "j":I
    if-ge v2, v3, :cond_8

    .line 713
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 714
    .local v0, "label":D
    iget-object v14, v7, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v14, v15}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisAlign(I)Landroid/graphics/Paint$Align;

    move-result-object v14

    .line 715
    .local v14, "axisAlign":Landroid/graphics/Paint$Align;
    move/from16 v16, v2

    iget-object v2, v7, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    .line 715
    .end local v2    # "j":I
    .local v16, "j":I
    move/from16 v17, v3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 715
    .end local v3    # "length":I
    .local v17, "length":I
    invoke-virtual {v2, v3, v15}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYTextLabel(Ljava/lang/Double;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    :goto_2
    move/from16 v18, v2

    .line 716
    .local v18, "textLabel":Z
    move/from16 v3, p7

    move-object/from16 v20, v4

    int-to-double v4, v3

    .line 716
    .end local v4    # "yLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .local v20, "yLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    aget-wide v21, p8, v15

    aget-wide v23, p9, v15

    sub-double v23, v0, v23

    mul-double v21, v21, v23

    sub-double v4, v4, v21

    double-to-float v5, v4

    .line 717
    .local v5, "yLabel":F
    sget-object v2, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->HORIZONTAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    if-ne v11, v2, :cond_4

    .line 718
    if-eqz v13, :cond_2

    if-nez v18, :cond_2

    .line 719
    iget-object v2, v7, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2, v15}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsColor(I)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 720
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    if-ne v14, v2, :cond_1

    .line 721
    invoke-direct {v7, v14}, Lorg/achartengine/chart/XYChart;->getLabelLinePos(Landroid/graphics/Paint$Align;)I

    move-result v2

    add-int/2addr v2, v9

    int-to-float v2, v2

    int-to-float v4, v9

    move-object/from16 v25, v11

    move/from16 v26, v12

    move-wide v11, v0

    move-object/from16 v0, p2

    .line 721
    .end local v0    # "label":D
    .end local v12    # "showGridX":Z
    .local v11, "label":D
    .local v25, "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .local v26, "showGridX":Z
    move v1, v2

    move v2, v5

    move v3, v4

    move v4, v5

    move/from16 v19, v5

    move-object v5, v8

    .line 721
    .end local v5    # "yLabel":F
    .local v19, "yLabel":F
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 722
    iget-object v0, v7, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelFormat()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v7, v0, v11, v12}, Lorg/achartengine/chart/XYChart;->getLabel(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v2

    int-to-float v0, v9

    iget-object v1, v7, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsPadding()F

    move-result v1

    sub-float v3, v0, v1

    iget-object v0, v7, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsVerticalPadding()F

    move-result v0

    sub-float v4, v19, v0

    iget-object v0, v7, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsAngle()F

    move-result v21

    move-object v0, v7

    move-object/from16 v1, p2

    move/from16 v6, v21

    invoke-virtual/range {v0 .. v6}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    goto :goto_3

    .line 727
    .end local v19    # "yLabel":F
    .end local v25    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .end local v26    # "showGridX":Z
    .restart local v0    # "label":D
    .restart local v5    # "yLabel":F
    .local v11, "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .restart local v12    # "showGridX":Z
    :cond_1
    move/from16 v19, v5

    move-object/from16 v25, v11

    move/from16 v26, v12

    move-wide v11, v0

    .line 727
    .end local v0    # "label":D
    .end local v5    # "yLabel":F
    .end local v12    # "showGridX":Z
    .local v11, "label":D
    .restart local v19    # "yLabel":F
    .restart local v25    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .restart local v26    # "showGridX":Z
    int-to-float v1, v10

    invoke-direct {v7, v14}, Lorg/achartengine/chart/XYChart;->getLabelLinePos(Landroid/graphics/Paint$Align;)I

    move-result v0

    add-int/2addr v0, v10

    int-to-float v3, v0

    move-object/from16 v0, p2

    move/from16 v2, v19

    move/from16 v4, v19

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 728
    iget-object v0, v7, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelFormat()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v7, v0, v11, v12}, Lorg/achartengine/chart/XYChart;->getLabel(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v2

    int-to-float v0, v10

    iget-object v1, v7, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsPadding()F

    move-result v1

    add-float v3, v0, v1

    iget-object v0, v7, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsVerticalPadding()F

    move-result v0

    sub-float v4, v19, v0

    iget-object v0, v7, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsAngle()F

    move-result v6

    move-object v0, v7

    move-object/from16 v1, p2

    invoke-virtual/range {v0 .. v6}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    goto :goto_3

    .line 734
    .end local v19    # "yLabel":F
    .end local v25    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .end local v26    # "showGridX":Z
    .restart local v0    # "label":D
    .restart local v5    # "yLabel":F
    .local v11, "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .restart local v12    # "showGridX":Z
    :cond_2
    move/from16 v19, v5

    move-object/from16 v25, v11

    move/from16 v26, v12

    move-wide v11, v0

    .line 734
    .end local v0    # "label":D
    .end local v5    # "yLabel":F
    .end local v12    # "showGridX":Z
    .local v11, "label":D
    .restart local v19    # "yLabel":F
    .restart local v25    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .restart local v26    # "showGridX":Z
    :goto_3
    if-eqz v26, :cond_3

    .line 735
    iget-object v0, v7, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getGridColor()I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 736
    int-to-float v1, v9

    int-to-float v3, v10

    move-object/from16 v0, p2

    move/from16 v2, v19

    move/from16 v4, v19

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 712
    .end local v11    # "label":D
    .end local v14    # "axisAlign":Landroid/graphics/Paint$Align;
    .end local v18    # "textLabel":Z
    .end local v19    # "yLabel":F
    .end local v25    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .local v22, "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    :cond_3
    move-object/from16 v22, v25

    goto/16 :goto_5

    .line 738
    .end local v22    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .end local v26    # "showGridX":Z
    .restart local v0    # "label":D
    .restart local v5    # "yLabel":F
    .local v11, "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .restart local v12    # "showGridX":Z
    .restart local v14    # "axisAlign":Landroid/graphics/Paint$Align;
    .restart local v18    # "textLabel":Z
    :cond_4
    move/from16 v19, v5

    move-object/from16 v25, v11

    move/from16 v26, v12

    move-wide v11, v0

    .line 738
    .end local v0    # "label":D
    .end local v5    # "yLabel":F
    .end local v12    # "showGridX":Z
    .local v11, "label":D
    .restart local v19    # "yLabel":F
    .restart local v25    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .restart local v26    # "showGridX":Z
    sget-object v0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->VERTICAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    move-object/from16 v6, v25

    if-ne v6, v0, :cond_6

    .line 739
    .end local v25    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .local v6, "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    if-eqz v13, :cond_5

    if-nez v18, :cond_5

    .line 740
    iget-object v0, v7, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0, v15}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsColor(I)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 741
    invoke-direct {v7, v14}, Lorg/achartengine/chart/XYChart;->getLabelLinePos(Landroid/graphics/Paint$Align;)I

    move-result v0

    sub-int v0, v10, v0

    int-to-float v1, v0

    int-to-float v3, v10

    move-object/from16 v0, p2

    move/from16 v2, v19

    move/from16 v4, v19

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 742
    iget-object v0, v7, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelFormat()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v7, v0, v11, v12}, Lorg/achartengine/chart/XYChart;->getLabel(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v10, 0xa

    int-to-float v0, v0

    iget-object v1, v7, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsPadding()F

    move-result v1

    add-float v3, v0, v1

    iget-object v0, v7, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsVerticalPadding()F

    move-result v0

    sub-float v4, v19, v0

    iget-object v0, v7, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsAngle()F

    move-result v21

    move-object v0, v7

    move-object/from16 v1, p2

    move-object/from16 v22, v6

    move/from16 v6, v21

    .line 742
    .end local v6    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .restart local v22    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    invoke-virtual/range {v0 .. v6}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    goto :goto_4

    .line 746
    .end local v22    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .restart local v6    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    :cond_5
    move-object/from16 v22, v6

    .line 746
    .end local v6    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .restart local v22    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    :goto_4
    if-eqz v26, :cond_7

    .line 747
    iget-object v0, v7, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getGridColor()I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 748
    int-to-float v1, v10

    int-to-float v3, v9

    move-object/from16 v0, p2

    move/from16 v2, v19

    move/from16 v4, v19

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 748
    .end local v11    # "label":D
    .end local v14    # "axisAlign":Landroid/graphics/Paint$Align;
    .end local v18    # "textLabel":Z
    .end local v19    # "yLabel":F
    goto :goto_5

    .line 712
    .end local v22    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .restart local v6    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    :cond_6
    move-object/from16 v22, v6

    .line 712
    .end local v6    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .restart local v22    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    :cond_7
    :goto_5
    add-int/lit8 v0, v16, 0x1

    .line 712
    .end local v16    # "j":I
    .local v0, "j":I
    move-object/from16 v5, p1

    move/from16 v6, p4

    move/from16 v3, v17

    move-object/from16 v4, v20

    move-object/from16 v11, v22

    move/from16 v12, v26

    goto/16 :goto_1

    .line 708
    .end local v0    # "j":I
    .end local v17    # "length":I
    .end local v20    # "yLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v22    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .end local v26    # "showGridX":Z
    .local v11, "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .restart local v12    # "showGridX":Z
    :cond_8
    move-object/from16 v22, v11

    move/from16 v26, v12

    .line 708
    .end local v11    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .end local v12    # "showGridX":Z
    .restart local v22    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .restart local v26    # "showGridX":Z
    add-int/lit8 v0, v15, 0x1

    .line 708
    .end local v15    # "i":I
    .local v0, "i":I
    goto/16 :goto_0

    .line 753
    .end local v0    # "i":I
    .end local v22    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .end local v26    # "showGridX":Z
    .restart local v11    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .restart local v12    # "showGridX":Z
    :cond_9
    move-object/from16 v22, v11

    move/from16 v26, v12

    .line 753
    .end local v11    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .end local v12    # "showGridX":Z
    .restart local v22    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .restart local v26    # "showGridX":Z
    return-void
.end method

.method public getCalcRange(I)[D
    .locals 2
    .param p1, "scale"    # I

    .line 801
    iget-object v0, p0, Lorg/achartengine/chart/XYChart;->mCalcRange:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public abstract getChartType()Ljava/lang/String;
.end method

.method public getDataset()Lorg/achartengine/model/XYMultipleSeriesDataset;
    .locals 1

    .line 797
    iget-object v0, p0, Lorg/achartengine/chart/XYChart;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    return-object v0
.end method

.method public getDefaultMinimum()D
    .locals 2

    .line 943
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    return-wide v0
.end method

.method public getPointsChart()Lorg/achartengine/chart/ScatterChart;
    .locals 1

    .line 952
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRenderer()Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    .locals 1

    .line 793
    iget-object v0, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    return-object v0
.end method

.method protected getScreenR()Landroid/graphics/Rect;
    .locals 1

    .line 470
    iget-object v0, p0, Lorg/achartengine/chart/XYChart;->mScreenR:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSeriesAndPointForScreenCoordinate(Lorg/achartengine/model/Point;)Lorg/achartengine/model/SeriesSelection;
    .locals 13
    .param p1, "screenPoint"    # Lorg/achartengine/model/Point;

    .line 869
    iget-object v0, p0, Lorg/achartengine/chart/XYChart;->clickableAreas:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 870
    iget-object v0, p0, Lorg/achartengine/chart/XYChart;->clickableAreas:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 870
    .local v0, "seriesIndex":I
    :goto_0
    if-ltz v0, :cond_2

    .line 875
    const/4 v1, 0x0

    .line 876
    .local v1, "pointIndex":I
    iget-object v2, p0, Lorg/achartengine/chart/XYChart;->clickableAreas:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 878
    iget-object v2, p0, Lorg/achartengine/chart/XYChart;->clickableAreas:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v8, v1

    .line 878
    .end local v1    # "pointIndex":I
    .local v2, "i$":Ljava/util/Iterator;
    .local v8, "pointIndex":I
    :goto_1
    move-object v9, v2

    .line 878
    .end local v2    # "i$":Ljava/util/Iterator;
    .local v9, "i$":Ljava/util/Iterator;
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lorg/achartengine/chart/ClickableArea;

    .line 879
    .local v10, "area":Lorg/achartengine/chart/ClickableArea;
    if-eqz v10, :cond_0

    .line 880
    invoke-virtual {v10}, Lorg/achartengine/chart/ClickableArea;->getRect()Landroid/graphics/RectF;

    move-result-object v11

    .line 881
    .local v11, "rectangle":Landroid/graphics/RectF;
    if-eqz v11, :cond_0

    invoke-virtual {p1}, Lorg/achartengine/model/Point;->getX()F

    move-result v1

    invoke-virtual {p1}, Lorg/achartengine/model/Point;->getY()F

    move-result v2

    invoke-virtual {v11, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 882
    new-instance v12, Lorg/achartengine/model/SeriesSelection;

    invoke-virtual {v10}, Lorg/achartengine/chart/ClickableArea;->getX()D

    move-result-wide v4

    invoke-virtual {v10}, Lorg/achartengine/chart/ClickableArea;->getY()D

    move-result-wide v6

    move-object v1, v12

    move v2, v0

    move v3, v8

    invoke-direct/range {v1 .. v7}, Lorg/achartengine/model/SeriesSelection;-><init>(IIDD)V

    return-object v12

    .line 885
    .end local v11    # "rectangle":Landroid/graphics/RectF;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    .line 878
    .end local v10    # "area":Lorg/achartengine/chart/ClickableArea;
    move-object v2, v9

    goto :goto_1

    .line 870
    .end local v8    # "pointIndex":I
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 889
    .end local v0    # "seriesIndex":I
    :cond_2
    invoke-super {p0, p1}, Lorg/achartengine/chart/AbstractChart;->getSeriesAndPointForScreenCoordinate(Lorg/achartengine/model/Point;)Lorg/achartengine/model/SeriesSelection;

    move-result-object v0

    return-object v0
.end method

.method protected getXLabels(DDI)Ljava/util/List;
    .locals 1
    .param p1, "min"    # D
    .param p3, "max"    # D
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI)",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 457
    invoke-static {p1, p2, p3, p4, p5}, Lorg/achartengine/util/MathHelper;->getLabels(DDI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getYLabels([D[DI)Ljava/util/Map;
    .locals 8
    .param p1, "minY"    # [D
    .param p2, "maxY"    # [D
    .param p3, "maxScaleNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D[DI)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation

    .line 461
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 462
    .local v0, "allYLabels":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Double;>;>;"
    const/4 v1, 0x0

    .line 462
    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 463
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aget-wide v3, p1, v1

    aget-wide v5, p2, v1

    iget-object v7, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabels()I

    move-result v7

    invoke-static {v3, v4, v5, v6, v7}, Lorg/achartengine/util/MathHelper;->getLabels(DDI)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/achartengine/chart/XYChart;->getValidLabels(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 466
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method protected isRenderNullValues()Z
    .locals 1

    .line 925
    const/4 v0, 0x0

    return v0
.end method

.method public isRenderPoints(Lorg/achartengine/renderer/SimpleSeriesRenderer;)Z
    .locals 1
    .param p1, "renderer"    # Lorg/achartengine/renderer/SimpleSeriesRenderer;

    .line 934
    const/4 v0, 0x0

    return v0
.end method

.method public setCalcRange([DI)V
    .locals 2
    .param p1, "range"    # [D
    .param p2, "scale"    # I

    .line 805
    iget-object v0, p0, Lorg/achartengine/chart/XYChart;->mCalcRange:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    return-void
.end method

.method protected setDatasetRenderer(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V
    .locals 0
    .param p1, "dataset"    # Lorg/achartengine/model/XYMultipleSeriesDataset;
    .param p2, "renderer"    # Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    .line 92
    iput-object p1, p0, Lorg/achartengine/chart/XYChart;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    .line 93
    iput-object p2, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    .line 94
    return-void
.end method

.method protected setScreenR(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "screenR"    # Landroid/graphics/Rect;

    .line 474
    iput-object p1, p0, Lorg/achartengine/chart/XYChart;->mScreenR:Landroid/graphics/Rect;

    .line 475
    return-void
.end method

.method public toRealPoint(FF)[D
    .locals 1
    .param p1, "screenX"    # F
    .param p2, "screenY"    # F

    .line 809
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/achartengine/chart/XYChart;->toRealPoint(FFI)[D

    move-result-object v0

    return-object v0
.end method

.method public toRealPoint(FFI)[D
    .locals 20
    .param p1, "screenX"    # F
    .param p2, "screenY"    # F
    .param p3, "scale"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 832
    move/from16 v3, p3

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4, v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXAxisMin(I)D

    move-result-wide v4

    .line 833
    .local v4, "realMinX":D
    iget-object v6, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v6, v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXAxisMax(I)D

    move-result-wide v6

    .line 834
    .local v6, "realMaxX":D
    iget-object v8, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v8, v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisMin(I)D

    move-result-wide v8

    .line 835
    .local v8, "realMinY":D
    iget-object v10, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v10, v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisMax(I)D

    move-result-wide v10

    .line 836
    .local v10, "realMaxY":D
    iget-object v12, v0, Lorg/achartengine/chart/XYChart;->mScreenR:Landroid/graphics/Rect;

    const/4 v15, 0x2

    if-eqz v12, :cond_0

    .line 837
    new-array v12, v15, [D

    iget-object v15, v0, Lorg/achartengine/chart/XYChart;->mScreenR:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    int-to-float v15, v15

    sub-float v15, v1, v15

    float-to-double v13, v15

    sub-double v16, v6, v4

    mul-double v13, v13, v16

    iget-object v15, v0, Lorg/achartengine/chart/XYChart;->mScreenR:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    move-wide/from16 v18, v6

    int-to-double v6, v15

    .line 837
    .end local v6    # "realMaxX":D
    .local v18, "realMaxX":D
    div-double/2addr v13, v6

    add-double/2addr v13, v4

    const/4 v6, 0x0

    aput-wide v13, v12, v6

    iget-object v6, v0, Lorg/achartengine/chart/XYChart;->mScreenR:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, v0, Lorg/achartengine/chart/XYChart;->mScreenR:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    sub-float/2addr v6, v2

    float-to-double v6, v6

    sub-double v13, v10, v8

    mul-double/2addr v6, v13

    iget-object v13, v0, Lorg/achartengine/chart/XYChart;->mScreenR:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-double v13, v13

    div-double/2addr v6, v13

    add-double/2addr v6, v8

    const/4 v13, 0x1

    aput-wide v6, v12, v13

    return-object v12

    .line 842
    .end local v18    # "realMaxX":D
    .restart local v6    # "realMaxX":D
    :cond_0
    move-wide/from16 v18, v6

    const/4 v13, 0x1

    .line 842
    .end local v6    # "realMaxX":D
    .restart local v18    # "realMaxX":D
    new-array v6, v15, [D

    float-to-double v14, v1

    const/4 v7, 0x0

    aput-wide v14, v6, v7

    float-to-double v14, v2

    aput-wide v14, v6, v13

    return-object v6
.end method

.method public toScreenPoint([D)[D
    .locals 1
    .param p1, "realPoint"    # [D

    .line 813
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/achartengine/chart/XYChart;->toScreenPoint([DI)[D

    move-result-object v0

    return-object v0
.end method

.method public toScreenPoint([DI)[D
    .locals 17
    .param p1, "realPoint"    # [D
    .param p2, "scale"    # I

    move-object/from16 v0, p0

    .line 847
    move/from16 v1, p2

    iget-object v2, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXAxisMin(I)D

    move-result-wide v2

    .line 848
    .local v2, "realMinX":D
    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXAxisMax(I)D

    move-result-wide v4

    .line 849
    .local v4, "realMaxX":D
    iget-object v6, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v6, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisMin(I)D

    move-result-wide v6

    .line 850
    .local v6, "realMinY":D
    iget-object v8, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v8, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisMax(I)D

    move-result-wide v8

    .line 851
    .local v8, "realMaxY":D
    iget-object v10, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v10, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMinXSet(I)Z

    move-result v10

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v10, :cond_0

    iget-object v10, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v10, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMaxXSet(I)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v10, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMinXSet(I)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v10, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMaxYSet(I)Z

    move-result v10

    if-nez v10, :cond_1

    .line 853
    :cond_0
    invoke-virtual {v0, v1}, Lorg/achartengine/chart/XYChart;->getCalcRange(I)[D

    move-result-object v10

    .line 854
    .local v10, "calcRange":[D
    aget-wide v2, v10, v13

    .line 855
    aget-wide v4, v10, v12

    .line 856
    aget-wide v6, v10, v11

    .line 857
    const/4 v14, 0x3

    aget-wide v8, v10, v14

    .line 859
    .end local v10    # "calcRange":[D
    :cond_1
    iget-object v10, v0, Lorg/achartengine/chart/XYChart;->mScreenR:Landroid/graphics/Rect;

    if-eqz v10, :cond_2

    .line 860
    new-array v10, v11, [D

    aget-wide v14, p1, v13

    sub-double/2addr v14, v2

    iget-object v11, v0, Lorg/achartengine/chart/XYChart;->mScreenR:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-double v12, v11

    mul-double/2addr v14, v12

    sub-double v11, v4, v2

    div-double/2addr v14, v11

    iget-object v11, v0, Lorg/achartengine/chart/XYChart;->mScreenR:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    int-to-double v11, v11

    add-double/2addr v14, v11

    const/4 v11, 0x0

    aput-wide v14, v10, v11

    const/4 v11, 0x1

    aget-wide v12, p1, v11

    sub-double v11, v8, v12

    iget-object v13, v0, Lorg/achartengine/chart/XYChart;->mScreenR:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-double v13, v13

    mul-double/2addr v11, v13

    sub-double v13, v8, v6

    div-double/2addr v11, v13

    iget-object v13, v0, Lorg/achartengine/chart/XYChart;->mScreenR:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    int-to-double v13, v13

    add-double/2addr v11, v13

    const/4 v13, 0x1

    aput-wide v11, v10, v13

    return-object v10

    .line 864
    :cond_2
    return-object p1
.end method
