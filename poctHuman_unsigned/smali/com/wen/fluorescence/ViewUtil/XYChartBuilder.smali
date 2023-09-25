.class public abstract Lcom/wen/fluorescence/ViewUtil/XYChartBuilder;
.super Ljava/lang/Object;
.source "XYChartBuilder.java"


# instance fields
.field private context:Landroid/content/Context;

.field private mChartView:Lorg/achartengine/GraphicalView;

.field protected mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

.field protected mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/wen/fluorescence/ViewUtil/XYChartBuilder;->context:Landroid/content/Context;

    .line 24
    new-instance v0, Lorg/achartengine/model/XYMultipleSeriesDataset;

    invoke-direct {v0}, Lorg/achartengine/model/XYMultipleSeriesDataset;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/ViewUtil/XYChartBuilder;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    .line 25
    new-instance v0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-direct {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/ViewUtil/XYChartBuilder;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    .line 26
    return-void
.end method


# virtual methods
.method public getDataSetInstance()Lorg/achartengine/model/XYMultipleSeriesDataset;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/XYChartBuilder;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    return-object v0
.end method

.method public getRenderInstance()Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/XYChartBuilder;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/XYChartBuilder;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/wen/fluorescence/ViewUtil/XYChartBuilder;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    iget-object v2, p0, Lcom/wen/fluorescence/ViewUtil/XYChartBuilder;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    .line 52
    invoke-static {v0, v1, v2}, Lorg/achartengine/ChartFactory;->getLineChartView(Landroid/content/Context;Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)Lorg/achartengine/GraphicalView;

    move-result-object v0

    iput-object v0, p0, Lcom/wen/fluorescence/ViewUtil/XYChartBuilder;->mChartView:Lorg/achartengine/GraphicalView;

    .line 53
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/XYChartBuilder;->mChartView:Lorg/achartengine/GraphicalView;

    return-object v0
.end method

.method protected abstract initData(Lorg/achartengine/model/XYMultipleSeriesDataset;)V
.end method

.method protected abstract initRender(Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V
.end method

.method public repaint()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/XYChartBuilder;->mChartView:Lorg/achartengine/GraphicalView;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/XYChartBuilder;->mChartView:Lorg/achartengine/GraphicalView;

    invoke-virtual {v0}, Lorg/achartengine/GraphicalView;->repaint()V

    .line 60
    :cond_0
    return-void
.end method

.method public setData(Lorg/achartengine/model/XYMultipleSeriesDataset;)V
    .locals 0
    .param p1, "data"    # Lorg/achartengine/model/XYMultipleSeriesDataset;

    .line 39
    iput-object p1, p0, Lcom/wen/fluorescence/ViewUtil/XYChartBuilder;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    .line 40
    return-void
.end method

.method public setRender(Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V
    .locals 0
    .param p1, "render"    # Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    .line 47
    iput-object p1, p0, Lcom/wen/fluorescence/ViewUtil/XYChartBuilder;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    .line 48
    return-void
.end method
