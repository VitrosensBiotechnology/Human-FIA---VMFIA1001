.class public Lcom/wen/fluorescence/ViewUtil/MyChartBuilder;
.super Lcom/wen/fluorescence/ViewUtil/XYChartBuilder;
.source "MyChartBuilder.java"


# instance fields
.field private array:[I

.field private bgColor:I

.field private context:Landroid/content/Context;

.field private textbg:I

.field private xyText:I


# direct methods
.method public constructor <init>(Landroid/content/Context;[I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "array"    # [I

    .line 23
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/ViewUtil/XYChartBuilder;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wen/fluorescence/ViewUtil/MyChartBuilder;->array:[I

    .line 17
    const v0, 0x6495ed

    iput v0, p0, Lcom/wen/fluorescence/ViewUtil/MyChartBuilder;->bgColor:I

    .line 18
    const v0, 0xff7f00

    iput v0, p0, Lcom/wen/fluorescence/ViewUtil/MyChartBuilder;->xyText:I

    .line 19
    const v0, 0xffebcd

    iput v0, p0, Lcom/wen/fluorescence/ViewUtil/MyChartBuilder;->textbg:I

    .line 24
    iput-object p2, p0, Lcom/wen/fluorescence/ViewUtil/MyChartBuilder;->array:[I

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/wen/fluorescence/ViewUtil/MyChartBuilder;->bgColor:I

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/wen/fluorescence/ViewUtil/MyChartBuilder;->xyText:I

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/wen/fluorescence/ViewUtil/MyChartBuilder;->textbg:I

    .line 28
    iput-object p1, p0, Lcom/wen/fluorescence/ViewUtil/MyChartBuilder;->context:Landroid/content/Context;

    .line 29
    return-void
.end method

.method private getHightValue()I
    .locals 5

    .line 61
    invoke-direct {p0}, Lcom/wen/fluorescence/ViewUtil/MyChartBuilder;->getMaxValue()I

    move-result v0

    invoke-direct {p0}, Lcom/wen/fluorescence/ViewUtil/MyChartBuilder;->getMaxValue()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v1, v3

    double-to-int v1, v1

    add-int/2addr v0, v1

    .line 62
    .local v0, "lower":I
    return v0
.end method

.method private getLowerValue()I
    .locals 5

    .line 56
    invoke-direct {p0}, Lcom/wen/fluorescence/ViewUtil/MyChartBuilder;->getMaxValue()I

    move-result v0

    invoke-direct {p0}, Lcom/wen/fluorescence/ViewUtil/MyChartBuilder;->getMaxValue()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v1, v3

    double-to-int v1, v1

    sub-int/2addr v0, v1

    .line 57
    .local v0, "lower":I
    return v0
.end method

.method private getMaxValue()I
    .locals 3

    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "max":I
    const/4 v1, 0x0

    .line 47
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/wen/fluorescence/ViewUtil/MyChartBuilder;->array:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 48
    iget-object v2, p0, Lcom/wen/fluorescence/ViewUtil/MyChartBuilder;->array:[I

    aget v2, v2, v1

    if-le v2, v0, :cond_0

    .line 49
    iget-object v2, p0, Lcom/wen/fluorescence/ViewUtil/MyChartBuilder;->array:[I

    aget v0, v2, v1

    .line 47
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    .end local v1    # "i":I
    :cond_1
    return v0
.end method


# virtual methods
.method public initData(Lorg/achartengine/model/XYMultipleSeriesDataset;)V
    .locals 7
    .param p1, "mDataset"    # Lorg/achartengine/model/XYMultipleSeriesDataset;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Series "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/achartengine/model/XYMultipleSeriesDataset;->getSeriesCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "seriesTitle":Ljava/lang/String;
    new-instance v1, Lorg/achartengine/model/XYSeries;

    invoke-direct {v1, v0}, Lorg/achartengine/model/XYSeries;-><init>(Ljava/lang/String;)V

    .line 35
    .local v1, "series":Lorg/achartengine/model/XYSeries;
    const/4 v2, 0x0

    .line 35
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/wen/fluorescence/ViewUtil/MyChartBuilder;->array:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 36
    iget-object v3, p0, Lcom/wen/fluorescence/ViewUtil/MyChartBuilder;->array:[I

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 37
    goto :goto_1

    .line 39
    :cond_0
    int-to-double v3, v2

    iget-object v5, p0, Lcom/wen/fluorescence/ViewUtil/MyChartBuilder;->array:[I

    aget v5, v5, v2

    int-to-double v5, v5

    invoke-virtual {v1, v3, v4, v5, v6}, Lorg/achartengine/model/XYSeries;->add(DD)V

    .line 35
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 41
    .end local v2    # "i":I
    :cond_1
    :goto_1
    invoke-virtual {p1, v1}, Lorg/achartengine/model/XYMultipleSeriesDataset;->addSeries(Lorg/achartengine/model/XYSeries;)V

    .line 42
    return-void
.end method

.method public initRender(Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V
    .locals 4
    .param p1, "mRenderer"    # Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    .line 68
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setApplyBackgroundColor(Z)V

    .line 71
    iget v1, p0, Lcom/wen/fluorescence/ViewUtil/MyChartBuilder;->textbg:I

    invoke-virtual {p1, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setBackgroundColor(I)V

    .line 73
    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-static {v2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setMarginsColor(I)V

    .line 75
    iget v1, p0, Lcom/wen/fluorescence/ViewUtil/MyChartBuilder;->bgColor:I

    invoke-virtual {p1, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setAxesColor(I)V

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Max:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/wen/fluorescence/ViewUtil/MyChartBuilder;->getMaxValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  \u8303\u56f4\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-direct {p0}, Lcom/wen/fluorescence/ViewUtil/MyChartBuilder;->getLowerValue()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/wen/fluorescence/ViewUtil/MyChartBuilder;->getHightValue()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-virtual {p1, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setChartTitle(Ljava/lang/String;)V

    .line 79
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {p1, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setChartTitleTextSize(F)V

    .line 81
    invoke-virtual {p1, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setInScroll(Z)V

    .line 83
    iget v1, p0, Lcom/wen/fluorescence/ViewUtil/MyChartBuilder;->bgColor:I

    invoke-virtual {p1, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setLabelsColor(I)V

    .line 84
    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {p1, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setLabelsTextSize(F)V

    .line 86
    invoke-virtual {p1, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setLegendTextSize(F)V

    .line 88
    invoke-virtual {p1, v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setShowLegend(Z)V

    .line 90
    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {p1, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setMargins([I)V

    .line 92
    invoke-virtual {p1, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setPanEnabled(Z)V

    .line 94
    invoke-virtual {p1, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setZoomEnabled(Z)V

    .line 95
    invoke-virtual {p1, v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setZoomButtonsVisible(Z)V

    .line 98
    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {p1, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setPointSize(F)V

    .line 100
    const/high16 v1, -0x3f600000    # -5.0f

    invoke-virtual {p1, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYLabelsPadding(F)V

    .line 103
    iget v1, p0, Lcom/wen/fluorescence/ViewUtil/MyChartBuilder;->xyText:I

    invoke-virtual {p1, v2, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYLabelsColor(II)V

    .line 104
    iget v1, p0, Lcom/wen/fluorescence/ViewUtil/MyChartBuilder;->xyText:I

    invoke-virtual {p1, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXLabelsColor(I)V

    .line 105
    invoke-virtual {p1, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setShowGrid(Z)V

    .line 106
    const v1, -0x414142

    invoke-virtual {p1, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setGridColor(I)V

    .line 108
    new-instance v1, Lorg/achartengine/renderer/XYSeriesRenderer;

    invoke-direct {v1}, Lorg/achartengine/renderer/XYSeriesRenderer;-><init>()V

    .line 109
    .local v1, "renderer":Lorg/achartengine/renderer/XYSeriesRenderer;
    invoke-virtual {p1, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addSeriesRenderer(Lorg/achartengine/renderer/SimpleSeriesRenderer;)V

    .line 111
    sget-object v2, Lorg/achartengine/chart/PointStyle;->CIRCLE:Lorg/achartengine/chart/PointStyle;

    invoke-virtual {v1, v2}, Lorg/achartengine/renderer/XYSeriesRenderer;->setPointStyle(Lorg/achartengine/chart/PointStyle;)V

    .line 112
    invoke-virtual {v1, v0}, Lorg/achartengine/renderer/XYSeriesRenderer;->setFillPoints(Z)V

    .line 113
    invoke-virtual {v1, v0}, Lorg/achartengine/renderer/XYSeriesRenderer;->setDisplayChartValues(Z)V

    .line 114
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lorg/achartengine/renderer/XYSeriesRenderer;->setDisplayChartValuesDistance(I)V

    .line 117
    invoke-virtual {p1, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setClickEnabled(Z)V

    .line 118
    invoke-virtual {p1, v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setSelectableBuffer(I)V

    .line 119
    return-void

    :array_0
    .array-data 4
        0x1e
        0x1e
        0x5
        0x19
    .end array-data
.end method
