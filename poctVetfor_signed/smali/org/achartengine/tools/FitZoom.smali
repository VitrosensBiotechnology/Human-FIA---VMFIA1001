.class public Lorg/achartengine/tools/FitZoom;
.super Lorg/achartengine/tools/AbstractTool;
.source "FitZoom.java"


# direct methods
.method public constructor <init>(Lorg/achartengine/chart/AbstractChart;)V
    .locals 0
    .param p1, "chart"    # Lorg/achartengine/chart/AbstractChart;

    .line 32
    invoke-direct {p0, p1}, Lorg/achartengine/tools/AbstractTool;-><init>(Lorg/achartengine/chart/AbstractChart;)V

    .line 33
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 21

    .line 39
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/tools/FitZoom;->mChart:Lorg/achartengine/chart/AbstractChart;

    instance-of v1, v1, Lorg/achartengine/chart/XYChart;

    if-eqz v1, :cond_6

    .line 40
    iget-object v1, v0, Lorg/achartengine/tools/FitZoom;->mChart:Lorg/achartengine/chart/AbstractChart;

    check-cast v1, Lorg/achartengine/chart/XYChart;

    invoke-virtual {v1}, Lorg/achartengine/chart/XYChart;->getDataset()Lorg/achartengine/model/XYMultipleSeriesDataset;

    move-result-object v1

    if-nez v1, :cond_0

    .line 41
    return-void

    .line 43
    :cond_0
    iget-object v1, v0, Lorg/achartengine/tools/FitZoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getScalesCount()I

    move-result v1

    .line 44
    .local v1, "scales":I
    iget-object v2, v0, Lorg/achartengine/tools/FitZoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isInitialRangeSet()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 45
    nop

    .line 45
    .local v3, "i":I
    :goto_0
    move v2, v3

    .line 45
    .end local v3    # "i":I
    .local v2, "i":I
    if-ge v2, v1, :cond_5

    .line 46
    iget-object v3, v0, Lorg/achartengine/tools/FitZoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v3, v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isInitialRangeSet(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 47
    iget-object v3, v0, Lorg/achartengine/tools/FitZoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    iget-object v4, v0, Lorg/achartengine/tools/FitZoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4, v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getInitialRange(I)[D

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setRange([DI)V

    .line 45
    :cond_1
    add-int/lit8 v3, v2, 0x1

    .line 45
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 51
    .end local v3    # "i":I
    :cond_2
    iget-object v2, v0, Lorg/achartengine/tools/FitZoom;->mChart:Lorg/achartengine/chart/AbstractChart;

    check-cast v2, Lorg/achartengine/chart/XYChart;

    invoke-virtual {v2}, Lorg/achartengine/chart/XYChart;->getDataset()Lorg/achartengine/model/XYMultipleSeriesDataset;

    move-result-object v2

    invoke-virtual {v2}, Lorg/achartengine/model/XYMultipleSeriesDataset;->getSeries()[Lorg/achartengine/model/XYSeries;

    move-result-object v2

    .line 52
    .local v2, "series":[Lorg/achartengine/model/XYSeries;
    const/4 v4, 0x0

    .line 53
    .local v4, "range":[D
    array-length v5, v2

    .line 54
    .local v5, "length":I
    if-lez v5, :cond_5

    .line 55
    move-object v6, v4

    move v4, v3

    .line 55
    .local v4, "i":I
    .local v6, "range":[D
    :goto_1
    if-ge v4, v1, :cond_5

    .line 56
    const/4 v7, 0x4

    new-array v8, v7, [D

    fill-array-data v8, :array_0

    move-object v6, v8

    .line 58
    move v8, v3

    .line 58
    .local v8, "j":I
    :goto_2
    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ge v8, v5, :cond_4

    .line 59
    aget-object v12, v2, v8

    invoke-virtual {v12}, Lorg/achartengine/model/XYSeries;->getScaleNumber()I

    move-result v12

    if-ne v4, v12, :cond_3

    .line 60
    aget-wide v12, v6, v3

    aget-object v14, v2, v8

    invoke-virtual {v14}, Lorg/achartengine/model/XYSeries;->getMinX()D

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v12

    aput-wide v12, v6, v3

    .line 61
    aget-wide v12, v6, v11

    aget-object v14, v2, v8

    invoke-virtual {v14}, Lorg/achartengine/model/XYSeries;->getMaxX()D

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    aput-wide v12, v6, v11

    .line 62
    aget-wide v11, v6, v10

    aget-object v13, v2, v8

    invoke-virtual {v13}, Lorg/achartengine/model/XYSeries;->getMinY()D

    move-result-wide v13

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    aput-wide v11, v6, v10

    .line 63
    aget-wide v10, v6, v9

    aget-object v12, v2, v8

    invoke-virtual {v12}, Lorg/achartengine/model/XYSeries;->getMaxY()D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    aput-wide v10, v6, v9

    .line 58
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 66
    .end local v8    # "j":I
    :cond_4
    aget-wide v12, v6, v11

    aget-wide v14, v6, v3

    sub-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x4044000000000000L    # 40.0

    div-double/2addr v12, v14

    .line 67
    .local v12, "marginX":D
    aget-wide v16, v6, v9

    aget-wide v18, v6, v10

    sub-double v9, v16, v18

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    div-double/2addr v8, v14

    .line 68
    .local v8, "marginY":D
    iget-object v10, v0, Lorg/achartengine/tools/FitZoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    new-array v7, v7, [D

    aget-wide v14, v6, v3

    sub-double/2addr v14, v12

    aput-wide v14, v7, v3

    aget-wide v14, v6, v11

    add-double/2addr v14, v12

    aput-wide v14, v7, v11

    const/4 v11, 0x2

    aget-wide v14, v6, v11

    sub-double/2addr v14, v8

    aput-wide v14, v7, v11

    const/4 v11, 0x3

    aget-wide v14, v6, v11

    add-double/2addr v14, v8

    aput-wide v14, v7, v11

    invoke-virtual {v10, v7, v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setRange([DI)V

    .line 55
    .end local v8    # "marginY":D
    .end local v12    # "marginX":D
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 73
    .end local v1    # "scales":I
    .end local v2    # "series":[Lorg/achartengine/model/XYSeries;
    .end local v4    # "i":I
    .end local v5    # "length":I
    .end local v6    # "range":[D
    :cond_5
    goto :goto_3

    .line 74
    :cond_6
    iget-object v1, v0, Lorg/achartengine/tools/FitZoom;->mChart:Lorg/achartengine/chart/AbstractChart;

    check-cast v1, Lorg/achartengine/chart/RoundChart;

    invoke-virtual {v1}, Lorg/achartengine/chart/RoundChart;->getRenderer()Lorg/achartengine/renderer/DefaultRenderer;

    move-result-object v1

    .line 75
    .local v1, "renderer":Lorg/achartengine/renderer/DefaultRenderer;
    invoke-virtual {v1}, Lorg/achartengine/renderer/DefaultRenderer;->getOriginalScale()F

    move-result v2

    invoke-virtual {v1, v2}, Lorg/achartengine/renderer/DefaultRenderer;->setScale(F)V

    .line 77
    .end local v1    # "renderer":Lorg/achartengine/renderer/DefaultRenderer;
    :goto_3
    return-void

    nop

    :array_0
    .array-data 8
        0x7fefffffffffffffL    # Double.MAX_VALUE
        -0x10000000000001L
        0x7fefffffffffffffL    # Double.MAX_VALUE
        -0x10000000000001L
    .end array-data
.end method
