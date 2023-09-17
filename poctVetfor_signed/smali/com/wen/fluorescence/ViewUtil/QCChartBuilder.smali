.class public Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;
.super Lcom/wen/fluorescence/ViewUtil/XYChartBuilder;
.source "QCChartBuilder.java"


# instance fields
.field private AV:D

.field private array:[D

.field private backgroundCorlor:I

.field private context:Landroid/content/Context;

.field private iNormalPoint:I

.field private iOutOfPoint:I

.field private iSeriesIndex:I

.field private iWarningPoint:I

.field private isShowCure:Z

.field private oldX:D

.field private oldY:D

.field private sd:D

.field private sd1H:D

.field private sd1L:D

.field private sd2H:D

.field private sd2L:D

.field private sd3H:D

.field private sd3L:D

.field private xLabelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private xyColor:I

.field private xyText:I


# direct methods
.method public constructor <init>(Landroid/content/Context;[D)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "array"    # [D

    .line 53
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/ViewUtil/XYChartBuilder;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->array:[D

    .line 28
    const v0, -0xafafb0

    iput v0, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->xyText:I

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->backgroundCorlor:I

    .line 30
    const v0, -0x7f7f80

    iput v0, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->xyColor:I

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->iSeriesIndex:I

    .line 37
    const-wide/high16 v1, 0x4008000000000000L    # 3.0

    iput-wide v1, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->sd:D

    .line 38
    const-wide/high16 v1, 0x4031000000000000L    # 17.0

    iput-wide v1, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->sd1L:D

    const-wide/high16 v1, 0x4037000000000000L    # 23.0

    iput-wide v1, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->sd1H:D

    .line 39
    const-wide/high16 v1, 0x402c000000000000L    # 14.0

    iput-wide v1, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->sd2L:D

    const-wide/high16 v1, 0x403a000000000000L    # 26.0

    iput-wide v1, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->sd2H:D

    .line 40
    const-wide/high16 v1, 0x4026000000000000L    # 11.0

    iput-wide v1, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->sd3L:D

    const-wide/high16 v1, 0x403d000000000000L    # 29.0

    iput-wide v1, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->sd3H:D

    .line 41
    const-wide/high16 v1, 0x4034000000000000L    # 20.0

    iput-wide v1, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->AV:D

    .line 44
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->xLabelMap:Ljava/util/Map;

    .line 47
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    iput-wide v1, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->oldX:D

    .line 48
    iput-wide v1, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->oldY:D

    .line 50
    iput-boolean v0, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->isShowCure:Z

    .line 54
    iput-object p2, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->array:[D

    .line 55
    iput-object p1, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->context:Landroid/content/Context;

    .line 56
    return-void
.end method

.method private addPointRenderer(Lorg/achartengine/renderer/XYMultipleSeriesRenderer;I)V
    .locals 3
    .param p1, "mRenderer"    # Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    .param p2, "color"    # I

    .line 373
    new-instance v0, Lorg/achartengine/renderer/XYSeriesRenderer;

    invoke-direct {v0}, Lorg/achartengine/renderer/XYSeriesRenderer;-><init>()V

    .line 374
    .local v0, "rendererT":Lorg/achartengine/renderer/XYSeriesRenderer;
    iget v1, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->iSeriesIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->iSeriesIndex:I

    invoke-virtual {p1, v1, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addSeriesRenderer(ILorg/achartengine/renderer/SimpleSeriesRenderer;)V

    .line 375
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/achartengine/renderer/XYSeriesRenderer;->setDisplayChartValues(Z)V

    .line 376
    invoke-virtual {v0, p2}, Lorg/achartengine/renderer/XYSeriesRenderer;->setColor(I)V

    .line 377
    sget-object v2, Lorg/achartengine/chart/PointStyle;->CIRCLE:Lorg/achartengine/chart/PointStyle;

    invoke-virtual {v0, v2}, Lorg/achartengine/renderer/XYSeriesRenderer;->setPointStyle(Lorg/achartengine/chart/PointStyle;)V

    .line 378
    invoke-virtual {v0, v1}, Lorg/achartengine/renderer/XYSeriesRenderer;->setFillPoints(Z)V

    .line 379
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lorg/achartengine/renderer/XYSeriesRenderer;->setDisplayChartValuesDistance(I)V

    .line 380
    sget-object v1, Lorg/achartengine/renderer/BasicStroke;->SOLID:Lorg/achartengine/renderer/BasicStroke;

    invoke-virtual {v0, v1}, Lorg/achartengine/renderer/XYSeriesRenderer;->setStroke(Lorg/achartengine/renderer/BasicStroke;)V

    .line 381
    return-void
.end method

.method private initSeriesRenderer(Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V
    .locals 8
    .param p1, "mRenderer"    # Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    .line 310
    const/4 v0, 0x0

    iput v0, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->iSeriesIndex:I

    .line 312
    new-instance v1, Lorg/achartengine/renderer/XYSeriesRenderer;

    invoke-direct {v1}, Lorg/achartengine/renderer/XYSeriesRenderer;-><init>()V

    .line 313
    .local v1, "renderer":Lorg/achartengine/renderer/XYSeriesRenderer;
    iget-boolean v2, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->isShowCure:Z

    if-eqz v2, :cond_0

    .line 314
    iget v2, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->iSeriesIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->iSeriesIndex:I

    invoke-virtual {p1, v2, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addSeriesRenderer(ILorg/achartengine/renderer/SimpleSeriesRenderer;)V

    .line 317
    :cond_0
    sget-object v2, Lorg/achartengine/chart/PointStyle;->CIRCLE:Lorg/achartengine/chart/PointStyle;

    invoke-virtual {v1, v2}, Lorg/achartengine/renderer/XYSeriesRenderer;->setPointStyle(Lorg/achartengine/chart/PointStyle;)V

    .line 318
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/achartengine/renderer/XYSeriesRenderer;->setFillPoints(Z)V

    .line 319
    invoke-virtual {v1, v2}, Lorg/achartengine/renderer/XYSeriesRenderer;->setDisplayChartValues(Z)V

    .line 320
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Lorg/achartengine/renderer/XYSeriesRenderer;->setDisplayChartValuesDistance(I)V

    .line 321
    const v3, -0x993c10

    invoke-virtual {v1, v3}, Lorg/achartengine/renderer/XYSeriesRenderer;->setColor(I)V

    .line 322
    sget-object v3, Lorg/achartengine/renderer/BasicStroke;->SOLID:Lorg/achartengine/renderer/BasicStroke;

    invoke-virtual {v1, v3}, Lorg/achartengine/renderer/XYSeriesRenderer;->setStroke(Lorg/achartengine/renderer/BasicStroke;)V

    .line 323
    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {v1, v3}, Lorg/achartengine/renderer/XYSeriesRenderer;->setLineWidth(F)V

    .line 324
    invoke-virtual {v1, v2}, Lorg/achartengine/renderer/XYSeriesRenderer;->setHighlighted(Z)V

    .line 328
    new-instance v2, Lorg/achartengine/renderer/XYSeriesRenderer;

    invoke-direct {v2}, Lorg/achartengine/renderer/XYSeriesRenderer;-><init>()V

    .line 329
    .local v2, "renderer1":Lorg/achartengine/renderer/XYSeriesRenderer;
    iget v3, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->iSeriesIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->iSeriesIndex:I

    invoke-virtual {p1, v3, v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addSeriesRenderer(ILorg/achartengine/renderer/SimpleSeriesRenderer;)V

    .line 330
    iget v3, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->iSeriesIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->iSeriesIndex:I

    invoke-virtual {p1, v3, v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addSeriesRenderer(ILorg/achartengine/renderer/SimpleSeriesRenderer;)V

    .line 331
    invoke-virtual {v2, v0}, Lorg/achartengine/renderer/XYSeriesRenderer;->setDisplayChartValues(Z)V

    .line 332
    const v3, -0xba23e4    # -2.6300079E38f

    invoke-virtual {v2, v3}, Lorg/achartengine/renderer/XYSeriesRenderer;->setColor(I)V

    .line 333
    sget-object v3, Lorg/achartengine/renderer/BasicStroke;->DASHED:Lorg/achartengine/renderer/BasicStroke;

    invoke-virtual {v2, v3}, Lorg/achartengine/renderer/XYSeriesRenderer;->setStroke(Lorg/achartengine/renderer/BasicStroke;)V

    .line 334
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lorg/achartengine/renderer/XYSeriesRenderer;->setLineWidth(F)V

    .line 336
    new-instance v4, Lorg/achartengine/renderer/XYSeriesRenderer;

    invoke-direct {v4}, Lorg/achartengine/renderer/XYSeriesRenderer;-><init>()V

    .line 337
    .local v4, "renderer2":Lorg/achartengine/renderer/XYSeriesRenderer;
    iget v5, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->iSeriesIndex:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->iSeriesIndex:I

    invoke-virtual {p1, v5, v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addSeriesRenderer(ILorg/achartengine/renderer/SimpleSeriesRenderer;)V

    .line 338
    iget v5, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->iSeriesIndex:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->iSeriesIndex:I

    invoke-virtual {p1, v5, v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addSeriesRenderer(ILorg/achartengine/renderer/SimpleSeriesRenderer;)V

    .line 339
    invoke-virtual {v4, v0}, Lorg/achartengine/renderer/XYSeriesRenderer;->setDisplayChartValues(Z)V

    .line 340
    const v5, -0xa60be

    invoke-virtual {v4, v5}, Lorg/achartengine/renderer/XYSeriesRenderer;->setColor(I)V

    .line 341
    sget-object v5, Lorg/achartengine/renderer/BasicStroke;->DASHED:Lorg/achartengine/renderer/BasicStroke;

    invoke-virtual {v4, v5}, Lorg/achartengine/renderer/XYSeriesRenderer;->setStroke(Lorg/achartengine/renderer/BasicStroke;)V

    .line 342
    invoke-virtual {v4, v3}, Lorg/achartengine/renderer/XYSeriesRenderer;->setLineWidth(F)V

    .line 344
    new-instance v3, Lorg/achartengine/renderer/XYSeriesRenderer;

    invoke-direct {v3}, Lorg/achartengine/renderer/XYSeriesRenderer;-><init>()V

    .line 345
    .local v3, "renderer3":Lorg/achartengine/renderer/XYSeriesRenderer;
    iget v5, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->iSeriesIndex:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->iSeriesIndex:I

    invoke-virtual {p1, v5, v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addSeriesRenderer(ILorg/achartengine/renderer/SimpleSeriesRenderer;)V

    .line 346
    iget v5, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->iSeriesIndex:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->iSeriesIndex:I

    invoke-virtual {p1, v5, v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addSeriesRenderer(ILorg/achartengine/renderer/SimpleSeriesRenderer;)V

    .line 347
    invoke-virtual {v3, v0}, Lorg/achartengine/renderer/XYSeriesRenderer;->setDisplayChartValues(Z)V

    .line 348
    const v5, -0xcd6203

    invoke-virtual {v3, v5}, Lorg/achartengine/renderer/XYSeriesRenderer;->setColor(I)V

    .line 349
    sget-object v5, Lorg/achartengine/renderer/BasicStroke;->SOLID:Lorg/achartengine/renderer/BasicStroke;

    invoke-virtual {v3, v5}, Lorg/achartengine/renderer/XYSeriesRenderer;->setStroke(Lorg/achartengine/renderer/BasicStroke;)V

    .line 351
    new-instance v5, Lorg/achartengine/renderer/XYSeriesRenderer;

    invoke-direct {v5}, Lorg/achartengine/renderer/XYSeriesRenderer;-><init>()V

    .line 352
    .local v5, "renderer4":Lorg/achartengine/renderer/XYSeriesRenderer;
    iget v6, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->iSeriesIndex:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->iSeriesIndex:I

    invoke-virtual {p1, v6, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addSeriesRenderer(ILorg/achartengine/renderer/SimpleSeriesRenderer;)V

    .line 353
    invoke-virtual {v5, v0}, Lorg/achartengine/renderer/XYSeriesRenderer;->setDisplayChartValues(Z)V

    .line 354
    const v6, -0x6a6a6b

    invoke-virtual {v5, v6}, Lorg/achartengine/renderer/XYSeriesRenderer;->setColor(I)V

    .line 355
    sget-object v6, Lorg/achartengine/renderer/BasicStroke;->SOLID:Lorg/achartengine/renderer/BasicStroke;

    invoke-virtual {v5, v6}, Lorg/achartengine/renderer/XYSeriesRenderer;->setStroke(Lorg/achartengine/renderer/BasicStroke;)V

    .line 356
    iget-boolean v6, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->isShowCure:Z

    if-nez v6, :cond_1

    .line 357
    return-void

    .line 360
    :cond_1
    move v6, v0

    .line 360
    .local v6, "i":I
    :goto_0
    iget v7, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->iNormalPoint:I

    if-ge v6, v7, :cond_2

    .line 361
    const v7, -0xd11593

    invoke-direct {p0, p1, v7}, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->addPointRenderer(Lorg/achartengine/renderer/XYMultipleSeriesRenderer;I)V

    .line 360
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 363
    .end local v6    # "i":I
    :cond_2
    move v6, v0

    .line 363
    .restart local v6    # "i":I
    :goto_1
    iget v7, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->iWarningPoint:I

    if-ge v6, v7, :cond_3

    .line 364
    const v7, -0xc5dbe

    invoke-direct {p0, p1, v7}, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->addPointRenderer(Lorg/achartengine/renderer/XYMultipleSeriesRenderer;I)V

    .line 363
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 366
    .end local v6    # "i":I
    :cond_3
    nop

    .line 366
    .local v0, "i":I
    :goto_2
    iget v6, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->iOutOfPoint:I

    if-ge v0, v6, :cond_4

    .line 367
    const v6, -0x15bbbd

    invoke-direct {p0, p1, v6}, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->addPointRenderer(Lorg/achartengine/renderer/XYMultipleSeriesRenderer;I)V

    .line 366
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 369
    .end local v0    # "i":I
    :cond_4
    return-void
.end method


# virtual methods
.method public clickPoint(DD)Z
    .locals 6
    .param p1, "x"    # D
    .param p3, "y"    # D

    .line 88
    iget-boolean v0, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->isShowCure:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 89
    return v1

    .line 92
    :cond_0
    const/4 v0, 0x0

    .line 93
    .local v0, "isPoint":Z
    move v2, v1

    .line 93
    .local v2, "j":I
    :goto_0
    iget-object v3, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->array:[D

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 94
    int-to-double v3, v2

    cmpl-double v5, v3, p1

    if-nez v5, :cond_1

    iget-object v3, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->array:[D

    aget-wide v4, v3, v2

    cmpl-double v3, v4, p3

    if-nez v3, :cond_1

    .line 95
    const/4 v0, 0x1

    .line 96
    goto :goto_1

    .line 93
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    .end local v2    # "j":I
    :cond_2
    :goto_1
    if-eqz v0, :cond_4

    .line 102
    iget-wide v1, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->oldY:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    const/4 v1, 0x1

    if-ltz v5, :cond_3

    .line 103
    iget-object v2, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    iget-object v3, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    invoke-virtual {v3}, Lorg/achartengine/model/XYMultipleSeriesDataset;->getSeriesCount()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lorg/achartengine/model/XYMultipleSeriesDataset;->removeSeries(I)V

    .line 104
    iget v2, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->iSeriesIndex:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->iSeriesIndex:I

    .line 107
    :cond_3
    new-instance v2, Lorg/achartengine/model/XYSeries;

    const-string v3, "Click"

    invoke-direct {v2, v3}, Lorg/achartengine/model/XYSeries;-><init>(Ljava/lang/String;)V

    .line 108
    .local v2, "seriesTest":Lorg/achartengine/model/XYSeries;
    invoke-virtual {v2, p1, p2, p3, p4}, Lorg/achartengine/model/XYSeries;->add(DD)V

    .line 109
    iput-wide p1, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->oldX:D

    .line 110
    iput-wide p3, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->oldY:D

    .line 111
    iget-object v3, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    invoke-virtual {v3, v2}, Lorg/achartengine/model/XYMultipleSeriesDataset;->addSeries(Lorg/achartengine/model/XYSeries;)V

    .line 112
    iget-object v3, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    const/high16 v4, -0x1000000

    invoke-direct {p0, v3, v4}, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->addPointRenderer(Lorg/achartengine/renderer/XYMultipleSeriesRenderer;I)V

    .line 115
    invoke-virtual {p0}, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->repaint()V

    .line 116
    return v1

    .line 118
    .end local v2    # "seriesTest":Lorg/achartengine/model/XYSeries;
    :cond_4
    return v1
.end method

.method public getSelectPoint()Ljava/lang/String;
    .locals 3

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->oldX:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->oldY:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initData(Lorg/achartengine/model/XYMultipleSeriesDataset;)V
    .locals 21
    .param p1, "mDataset"    # Lorg/achartengine/model/XYMultipleSeriesDataset;

    move-object/from16 v0, p0

    .line 158
    move-object/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Series "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lorg/achartengine/model/XYMultipleSeriesDataset;->getSeriesCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "seriesTitle":Ljava/lang/String;
    new-instance v3, Lorg/achartengine/model/XYSeries;

    invoke-direct {v3, v2}, Lorg/achartengine/model/XYSeries;-><init>(Ljava/lang/String;)V

    .line 160
    .local v3, "series":Lorg/achartengine/model/XYSeries;
    const/4 v5, 0x0

    .line 160
    .local v5, "i":I
    :goto_0
    iget-object v6, v0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->array:[D

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 161
    int-to-double v6, v5

    iget-object v8, v0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->array:[D

    aget-wide v9, v8, v5

    invoke-virtual {v3, v6, v7, v9, v10}, Lorg/achartengine/model/XYSeries;->add(DD)V

    .line 160
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 163
    .end local v5    # "i":I
    :cond_0
    iget-boolean v5, v0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->isShowCure:Z

    if-eqz v5, :cond_1

    .line 164
    invoke-virtual {v1, v3}, Lorg/achartengine/model/XYMultipleSeriesDataset;->addSeries(Lorg/achartengine/model/XYSeries;)V

    .line 167
    :cond_1
    new-instance v5, Lorg/achartengine/model/XYSeries;

    const-string v6, "1sd"

    invoke-direct {v5, v6}, Lorg/achartengine/model/XYSeries;-><init>(Ljava/lang/String;)V

    .line 168
    .local v5, "seriesSD1L":Lorg/achartengine/model/XYSeries;
    new-instance v6, Lorg/achartengine/model/XYSeries;

    const-string v7, "1sd"

    invoke-direct {v6, v7}, Lorg/achartengine/model/XYSeries;-><init>(Ljava/lang/String;)V

    .line 169
    .local v6, "seriesSD1H":Lorg/achartengine/model/XYSeries;
    const/4 v7, 0x0

    .line 169
    .local v7, "i":I
    :goto_1
    iget-object v8, v0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->array:[D

    array-length v8, v8

    if-ge v7, v8, :cond_2

    .line 170
    int-to-double v8, v7

    iget-wide v10, v0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->sd1L:D

    invoke-virtual {v5, v8, v9, v10, v11}, Lorg/achartengine/model/XYSeries;->add(DD)V

    .line 171
    int-to-double v8, v7

    iget-wide v10, v0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->sd1H:D

    invoke-virtual {v6, v8, v9, v10, v11}, Lorg/achartengine/model/XYSeries;->add(DD)V

    .line 169
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 173
    .end local v7    # "i":I
    :cond_2
    invoke-virtual {v1, v5}, Lorg/achartengine/model/XYMultipleSeriesDataset;->addSeries(Lorg/achartengine/model/XYSeries;)V

    .line 174
    invoke-virtual {v1, v6}, Lorg/achartengine/model/XYMultipleSeriesDataset;->addSeries(Lorg/achartengine/model/XYSeries;)V

    .line 176
    new-instance v7, Lorg/achartengine/model/XYSeries;

    const-string v8, "2sd"

    invoke-direct {v7, v8}, Lorg/achartengine/model/XYSeries;-><init>(Ljava/lang/String;)V

    .line 177
    .local v7, "seriesSD2L":Lorg/achartengine/model/XYSeries;
    new-instance v8, Lorg/achartengine/model/XYSeries;

    const-string v9, "2sd"

    invoke-direct {v8, v9}, Lorg/achartengine/model/XYSeries;-><init>(Ljava/lang/String;)V

    .line 178
    .local v8, "seriesSD2H":Lorg/achartengine/model/XYSeries;
    const/4 v9, 0x0

    .line 178
    .local v9, "i":I
    :goto_2
    iget-object v10, v0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->array:[D

    array-length v10, v10

    if-ge v9, v10, :cond_3

    .line 179
    int-to-double v10, v9

    iget-wide v12, v0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->sd2L:D

    invoke-virtual {v7, v10, v11, v12, v13}, Lorg/achartengine/model/XYSeries;->add(DD)V

    .line 180
    int-to-double v10, v9

    iget-wide v12, v0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->sd2H:D

    invoke-virtual {v8, v10, v11, v12, v13}, Lorg/achartengine/model/XYSeries;->add(DD)V

    .line 178
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 182
    .end local v9    # "i":I
    :cond_3
    invoke-virtual {v1, v7}, Lorg/achartengine/model/XYMultipleSeriesDataset;->addSeries(Lorg/achartengine/model/XYSeries;)V

    .line 183
    invoke-virtual {v1, v8}, Lorg/achartengine/model/XYMultipleSeriesDataset;->addSeries(Lorg/achartengine/model/XYSeries;)V

    .line 185
    new-instance v9, Lorg/achartengine/model/XYSeries;

    const-string v10, "3sd"

    invoke-direct {v9, v10}, Lorg/achartengine/model/XYSeries;-><init>(Ljava/lang/String;)V

    .line 186
    .local v9, "seriesSD3L":Lorg/achartengine/model/XYSeries;
    new-instance v10, Lorg/achartengine/model/XYSeries;

    const-string v11, "3sd"

    invoke-direct {v10, v11}, Lorg/achartengine/model/XYSeries;-><init>(Ljava/lang/String;)V

    .line 187
    .local v10, "seriesSD3H":Lorg/achartengine/model/XYSeries;
    const/4 v11, 0x0

    .line 187
    .local v11, "i":I
    :goto_3
    iget-object v12, v0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->array:[D

    array-length v12, v12

    if-ge v11, v12, :cond_4

    .line 188
    int-to-double v12, v11

    iget-wide v14, v0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->sd3L:D

    invoke-virtual {v9, v12, v13, v14, v15}, Lorg/achartengine/model/XYSeries;->add(DD)V

    .line 189
    int-to-double v12, v11

    iget-wide v14, v0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->sd3H:D

    invoke-virtual {v10, v12, v13, v14, v15}, Lorg/achartengine/model/XYSeries;->add(DD)V

    .line 187
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 191
    .end local v11    # "i":I
    :cond_4
    invoke-virtual {v1, v9}, Lorg/achartengine/model/XYMultipleSeriesDataset;->addSeries(Lorg/achartengine/model/XYSeries;)V

    .line 192
    invoke-virtual {v1, v10}, Lorg/achartengine/model/XYMultipleSeriesDataset;->addSeries(Lorg/achartengine/model/XYSeries;)V

    .line 194
    new-instance v11, Lorg/achartengine/model/XYSeries;

    const-string v12, "AV"

    invoke-direct {v11, v12}, Lorg/achartengine/model/XYSeries;-><init>(Ljava/lang/String;)V

    .line 195
    .local v11, "seriesAV":Lorg/achartengine/model/XYSeries;
    const/4 v12, 0x0

    .line 195
    .local v12, "i":I
    :goto_4
    iget-object v13, v0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->array:[D

    array-length v13, v13

    if-ge v12, v13, :cond_5

    .line 196
    int-to-double v13, v12

    move-object/from16 v16, v5

    iget-wide v4, v0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->AV:D

    .line 196
    .end local v5    # "seriesSD1L":Lorg/achartengine/model/XYSeries;
    .local v16, "seriesSD1L":Lorg/achartengine/model/XYSeries;
    invoke-virtual {v11, v13, v14, v4, v5}, Lorg/achartengine/model/XYSeries;->add(DD)V

    .line 195
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v5, v16

    goto :goto_4

    .line 198
    .end local v12    # "i":I
    .end local v16    # "seriesSD1L":Lorg/achartengine/model/XYSeries;
    .restart local v5    # "seriesSD1L":Lorg/achartengine/model/XYSeries;
    :cond_5
    move-object/from16 v16, v5

    .line 198
    .end local v5    # "seriesSD1L":Lorg/achartengine/model/XYSeries;
    .restart local v16    # "seriesSD1L":Lorg/achartengine/model/XYSeries;
    invoke-virtual {v1, v11}, Lorg/achartengine/model/XYMultipleSeriesDataset;->addSeries(Lorg/achartengine/model/XYSeries;)V

    .line 199
    iget-boolean v4, v0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->isShowCure:Z

    if-nez v4, :cond_6

    .line 200
    return-void

    .line 203
    :cond_6
    const/4 v4, 0x0

    iput v4, v0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->iNormalPoint:I

    .line 204
    iput v4, v0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->iWarningPoint:I

    .line 205
    iput v4, v0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->iOutOfPoint:I

    .line 207
    move v5, v4

    .line 207
    .local v5, "i":I
    :goto_5
    iget-object v12, v0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->array:[D

    array-length v12, v12

    if-ge v5, v12, :cond_8

    .line 208
    iget-object v12, v0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->array:[D

    aget-wide v13, v12, v5

    move/from16 v18, v5

    iget-wide v4, v0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->sd1L:D

    .line 208
    .end local v5    # "i":I
    .local v18, "i":I
    cmpl-double v12, v13, v4

    if-ltz v12, :cond_7

    iget-object v4, v0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->array:[D

    aget-wide v12, v4, v18

    iget-wide v4, v0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->sd1H:D

    cmpg-double v14, v12, v4

    if-gtz v14, :cond_7

    .line 210
    new-instance v4, Lorg/achartengine/model/XYSeries;

    const-string v5, "Normal"

    invoke-direct {v4, v5}, Lorg/achartengine/model/XYSeries;-><init>(Ljava/lang/String;)V

    .line 211
    .local v4, "seriesTest":Lorg/achartengine/model/XYSeries;
    move/from16 v5, v18

    int-to-double v12, v5

    .line 211
    .end local v18    # "i":I
    .restart local v5    # "i":I
    iget-object v14, v0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->array:[D

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    aget-wide v2, v14, v5

    .line 211
    .end local v2    # "seriesTitle":Ljava/lang/String;
    .end local v3    # "series":Lorg/achartengine/model/XYSeries;
    .local v19, "seriesTitle":Ljava/lang/String;
    .local v20, "series":Lorg/achartengine/model/XYSeries;
    invoke-virtual {v4, v12, v13, v2, v3}, Lorg/achartengine/model/XYSeries;->add(DD)V

    .line 212
    invoke-virtual {v1, v4}, Lorg/achartengine/model/XYMultipleSeriesDataset;->addSeries(Lorg/achartengine/model/XYSeries;)V

    .line 213
    iget v2, v0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->iNormalPoint:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->iNormalPoint:I

    .line 213
    .end local v4    # "seriesTest":Lorg/achartengine/model/XYSeries;
    goto :goto_6

    .line 207
    .end local v5    # "i":I
    .end local v19    # "seriesTitle":Ljava/lang/String;
    .end local v20    # "series":Lorg/achartengine/model/XYSeries;
    .restart local v2    # "seriesTitle":Ljava/lang/String;
    .restart local v3    # "series":Lorg/achartengine/model/XYSeries;
    .restart local v18    # "i":I
    :cond_7
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move/from16 v5, v18

    .line 207
    .end local v2    # "seriesTitle":Ljava/lang/String;
    .end local v3    # "series":Lorg/achartengine/model/XYSeries;
    .end local v18    # "i":I
    .restart local v5    # "i":I
    .restart local v19    # "seriesTitle":Ljava/lang/String;
    .restart local v20    # "series":Lorg/achartengine/model/XYSeries;
    :goto_6
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    const/4 v4, 0x0

    goto :goto_5

    .line 216
    .end local v5    # "i":I
    .end local v19    # "seriesTitle":Ljava/lang/String;
    .end local v20    # "series":Lorg/achartengine/model/XYSeries;
    .restart local v2    # "seriesTitle":Ljava/lang/String;
    .restart local v3    # "series":Lorg/achartengine/model/XYSeries;
    :cond_8
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    .line 216
    .end local v2    # "seriesTitle":Ljava/lang/String;
    .end local v3    # "series":Lorg/achartengine/model/XYSeries;
    .restart local v19    # "seriesTitle":Ljava/lang/String;
    .restart local v20    # "series":Lorg/achartengine/model/XYSeries;
    const/4 v2, 0x0

    .line 216
    .local v2, "i":I
    :goto_7
    iget-object v3, v0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->array:[D

    array-length v3, v3

    if-ge v2, v3, :cond_c

    .line 217
    iget-object v3, v0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->array:[D

    aget-wide v4, v3, v2

    iget-wide v12, v0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->sd1L:D

    cmpg-double v3, v4, v12

    if-gez v3, :cond_9

    iget-object v3, v0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->array:[D

    aget-wide v4, v3, v2

    iget-wide v12, v0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->sd2L:D

    cmpl-double v3, v4, v12

    if-gez v3, :cond_a

    :cond_9
    iget-object v3, v0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->array:[D

    aget-wide v4, v3, v2

    iget-wide v12, v0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->sd1H:D

    cmpl-double v3, v4, v12

    if-lez v3, :cond_b

    iget-object v3, v0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->array:[D

    aget-wide v4, v3, v2

    iget-wide v12, v0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->sd2H:D

    cmpg-double v3, v4, v12

    if-gtz v3, :cond_b

    .line 218
    :cond_a
    new-instance v3, Lorg/achartengine/model/XYSeries;

    const-string v4, "Warning"

    invoke-direct {v3, v4}, Lorg/achartengine/model/XYSeries;-><init>(Ljava/lang/String;)V

    .line 219
    .local v3, "seriesTest":Lorg/achartengine/model/XYSeries;
    int-to-double v4, v2

    iget-object v12, v0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->array:[D

    aget-wide v13, v12, v2

    invoke-virtual {v3, v4, v5, v13, v14}, Lorg/achartengine/model/XYSeries;->add(DD)V

    .line 220
    invoke-virtual {v1, v3}, Lorg/achartengine/model/XYMultipleSeriesDataset;->addSeries(Lorg/achartengine/model/XYSeries;)V

    .line 221
    iget v4, v0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->iWarningPoint:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->iWarningPoint:I

    .line 216
    .end local v3    # "seriesTest":Lorg/achartengine/model/XYSeries;
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 224
    .end local v2    # "i":I
    :cond_c
    const/16 v17, 0x0

    .line 224
    .local v17, "i":I
    :goto_8
    move/from16 v2, v17

    .line 224
    .end local v17    # "i":I
    .restart local v2    # "i":I
    iget-object v3, v0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->array:[D

    array-length v3, v3

    if-ge v2, v3, :cond_f

    .line 225
    iget-object v3, v0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->array:[D

    aget-wide v4, v3, v2

    iget-wide v12, v0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->sd2L:D

    cmpg-double v3, v4, v12

    if-ltz v3, :cond_d

    iget-object v3, v0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->array:[D

    aget-wide v4, v3, v2

    iget-wide v12, v0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->sd2H:D

    cmpl-double v3, v4, v12

    if-lez v3, :cond_e

    .line 226
    :cond_d
    new-instance v3, Lorg/achartengine/model/XYSeries;

    const-string v4, "Out Of Control"

    invoke-direct {v3, v4}, Lorg/achartengine/model/XYSeries;-><init>(Ljava/lang/String;)V

    .line 227
    .restart local v3    # "seriesTest":Lorg/achartengine/model/XYSeries;
    int-to-double v4, v2

    iget-object v12, v0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->array:[D

    aget-wide v13, v12, v2

    invoke-virtual {v3, v4, v5, v13, v14}, Lorg/achartengine/model/XYSeries;->add(DD)V

    .line 228
    invoke-virtual {v1, v3}, Lorg/achartengine/model/XYMultipleSeriesDataset;->addSeries(Lorg/achartengine/model/XYSeries;)V

    .line 229
    iget v4, v0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->iOutOfPoint:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->iOutOfPoint:I

    .line 224
    .end local v3    # "seriesTest":Lorg/achartengine/model/XYSeries;
    :cond_e
    add-int/lit8 v17, v2, 0x1

    .line 224
    .end local v2    # "i":I
    .restart local v17    # "i":I
    goto :goto_8

    .line 232
    .end local v17    # "i":I
    :cond_f
    return-void
.end method

.method public initReferenceData(DDZ)V
    .locals 4
    .param p1, "sd"    # D
    .param p3, "AV"    # D
    .param p5, "isShowCure"    # Z

    .line 60
    sub-double v0, p3, p1

    iput-wide v0, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->sd1L:D

    .line 61
    add-double v0, p3, p1

    iput-wide v0, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->sd1H:D

    .line 62
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double v2, v0, p1

    sub-double v2, p3, v2

    iput-wide v2, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->sd2L:D

    .line 63
    mul-double/2addr v0, p1

    add-double/2addr v0, p3

    iput-wide v0, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->sd2H:D

    .line 64
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    mul-double v2, v0, p1

    sub-double v2, p3, v2

    iput-wide v2, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->sd3L:D

    .line 65
    mul-double/2addr v0, p1

    add-double/2addr v0, p3

    iput-wide v0, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->sd3H:D

    .line 66
    iput-wide p3, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->AV:D

    .line 67
    iput-wide p1, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->sd:D

    .line 68
    iput-boolean p5, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->isShowCure:Z

    .line 69
    return-void
.end method

.method public initRender(Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V
    .locals 9
    .param p1, "mRenderer"    # Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    .line 236
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setApplyBackgroundColor(Z)V

    .line 239
    iget v1, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->backgroundCorlor:I

    invoke-virtual {p1, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setBackgroundColor(I)V

    .line 241
    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-static {v2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setMarginsColor(I)V

    .line 243
    iget v1, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->xyColor:I

    invoke-virtual {p1, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setAxesColor(I)V

    .line 248
    invoke-virtual {p1, v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setInScroll(Z)V

    .line 250
    iget v1, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->xyColor:I

    invoke-virtual {p1, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setLabelsColor(I)V

    .line 251
    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {p1, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setLabelsTextSize(F)V

    .line 253
    invoke-virtual {p1, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setLegendTextSize(F)V

    .line 255
    invoke-virtual {p1, v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setShowLegend(Z)V

    .line 260
    invoke-virtual {p1, v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setPanEnabled(Z)V

    .line 262
    invoke-virtual {p1, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setZoomEnabled(Z)V

    .line 263
    invoke-virtual {p1, v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setZoomButtonsVisible(Z)V

    .line 266
    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p1, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setPointSize(F)V

    .line 268
    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p1, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYLabelsPadding(F)V

    .line 269
    invoke-virtual {p1, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXLabelsPadding(F)V

    .line 270
    iget-wide v3, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->sd3L:D

    iget-wide v5, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->sd:D

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v7

    sub-double/2addr v3, v5

    invoke-virtual {p1, v3, v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYAxisMin(D)V

    .line 271
    iget-wide v3, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->sd3H:D

    iget-wide v5, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->sd:D

    div-double/2addr v5, v7

    add-double/2addr v3, v5

    invoke-virtual {p1, v3, v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYAxisMax(D)V

    .line 274
    iget v1, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->xyText:I

    invoke-virtual {p1, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXLabelsColor(I)V

    .line 275
    invoke-virtual {p1, v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXLabels(I)V

    .line 279
    iget-object v1, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->xLabelMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 280
    .local v1, "xIndexs":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 281
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 282
    .local v3, "xKey":I
    int-to-double v4, v3

    iget-object v6, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->xLabelMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addXTextLabel(DLjava/lang/String;)V

    .line 283
    .end local v3    # "xKey":I
    goto :goto_0

    .line 285
    :cond_0
    iget v3, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->xyText:I

    invoke-virtual {p1, v2, v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYLabelsColor(II)V

    .line 286
    invoke-virtual {p1, v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYLabels(I)V

    .line 287
    iget-wide v3, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->AV:D

    const-string v5, "AV        "

    invoke-virtual {p1, v3, v4, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addYTextLabel(DLjava/lang/String;)V

    .line 288
    iget-wide v3, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->sd1L:D

    const-string v5, "1sd        "

    invoke-virtual {p1, v3, v4, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addYTextLabel(DLjava/lang/String;)V

    .line 289
    iget-wide v3, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->sd1H:D

    const-string v5, "1sd        "

    invoke-virtual {p1, v3, v4, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addYTextLabel(DLjava/lang/String;)V

    .line 290
    iget-wide v3, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->sd2L:D

    const-string v5, "2sd        "

    invoke-virtual {p1, v3, v4, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addYTextLabel(DLjava/lang/String;)V

    .line 291
    iget-wide v3, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->sd2H:D

    const-string v5, "2sd        "

    invoke-virtual {p1, v3, v4, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addYTextLabel(DLjava/lang/String;)V

    .line 292
    iget-wide v3, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->sd3L:D

    const-string v5, "3sd        "

    invoke-virtual {p1, v3, v4, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addYTextLabel(DLjava/lang/String;)V

    .line 293
    iget-wide v3, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->sd3H:D

    const-string v5, "3sd        "

    invoke-virtual {p1, v3, v4, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addYTextLabel(DLjava/lang/String;)V

    .line 296
    invoke-virtual {p1, v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setShowGridX(Z)V

    .line 297
    invoke-virtual {p1, v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setShowGridY(Z)V

    .line 299
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->initSeriesRenderer(Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    .line 302
    invoke-virtual {p1, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setClickEnabled(Z)V

    .line 303
    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setSelectableBuffer(I)V

    .line 305
    return-void
.end method

.method public setNextPointClick()Z
    .locals 6

    .line 123
    iget-boolean v0, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->isShowCure:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 124
    return v1

    .line 126
    :cond_0
    iget-wide v2, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->oldX:D

    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->array:[D

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    int-to-double v4, v0

    cmpg-double v0, v2, v4

    if-gez v0, :cond_1

    .line 127
    iget-wide v0, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->oldX:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    .line 128
    .local v0, "x":D
    iget-object v2, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->array:[D

    double-to-int v3, v0

    aget-wide v3, v2, v3

    .line 129
    .local v3, "y":D
    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->clickPoint(DD)Z

    move-result v2

    return v2

    .line 131
    .end local v0    # "x":D
    .end local v3    # "y":D
    :cond_1
    return v1
.end method

.method public setPrevPointClick()Z
    .locals 6

    .line 135
    iget-boolean v0, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->isShowCure:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 136
    return v1

    .line 138
    :cond_0
    iget-wide v2, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->oldX:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_1

    .line 139
    iget-wide v0, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->oldX:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    .line 140
    .local v0, "x":D
    iget-object v2, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->array:[D

    double-to-int v3, v0

    aget-wide v3, v2, v3

    .line 141
    .local v3, "y":D
    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->clickPoint(DD)Z

    move-result v2

    return v2

    .line 143
    .end local v0    # "x":D
    .end local v3    # "y":D
    :cond_1
    return v1
.end method

.method public setXLabelMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 78
    .local p1, "xLabelMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->xLabelMap:Ljava/util/Map;

    .line 79
    return-void
.end method
