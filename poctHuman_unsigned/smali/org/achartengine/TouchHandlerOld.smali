.class public Lorg/achartengine/TouchHandlerOld;
.super Ljava/lang/Object;
.source "TouchHandlerOld.java"

# interfaces
.implements Lorg/achartengine/ITouchHandler;


# instance fields
.field private graphicalView:Lorg/achartengine/GraphicalView;

.field private mPan:Lorg/achartengine/tools/Pan;

.field private mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

.field private oldX:F

.field private oldY:F

.field private zoomR:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lorg/achartengine/GraphicalView;Lorg/achartengine/chart/AbstractChart;)V
    .locals 1
    .param p1, "view"    # Lorg/achartengine/GraphicalView;
    .param p2, "chart"    # Lorg/achartengine/chart/AbstractChart;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/achartengine/TouchHandlerOld;->zoomR:Landroid/graphics/RectF;

    .line 53
    iput-object p1, p0, Lorg/achartengine/TouchHandlerOld;->graphicalView:Lorg/achartengine/GraphicalView;

    .line 54
    iget-object v0, p0, Lorg/achartengine/TouchHandlerOld;->graphicalView:Lorg/achartengine/GraphicalView;

    invoke-virtual {v0}, Lorg/achartengine/GraphicalView;->getZoomRectangle()Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lorg/achartengine/TouchHandlerOld;->zoomR:Landroid/graphics/RectF;

    .line 55
    instance-of v0, p2, Lorg/achartengine/chart/XYChart;

    if-eqz v0, :cond_0

    .line 56
    move-object v0, p2

    check-cast v0, Lorg/achartengine/chart/XYChart;

    invoke-virtual {v0}, Lorg/achartengine/chart/XYChart;->getRenderer()Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-result-object v0

    iput-object v0, p0, Lorg/achartengine/TouchHandlerOld;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    goto :goto_0

    .line 58
    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/achartengine/chart/RoundChart;

    invoke-virtual {v0}, Lorg/achartengine/chart/RoundChart;->getRenderer()Lorg/achartengine/renderer/DefaultRenderer;

    move-result-object v0

    iput-object v0, p0, Lorg/achartengine/TouchHandlerOld;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    .line 60
    :goto_0
    iget-object v0, p0, Lorg/achartengine/TouchHandlerOld;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/DefaultRenderer;->isPanEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    new-instance v0, Lorg/achartengine/tools/Pan;

    invoke-direct {v0, p2}, Lorg/achartengine/tools/Pan;-><init>(Lorg/achartengine/chart/AbstractChart;)V

    iput-object v0, p0, Lorg/achartengine/TouchHandlerOld;->mPan:Lorg/achartengine/tools/Pan;

    .line 63
    :cond_1
    return-void
.end method


# virtual methods
.method public addPanListener(Lorg/achartengine/tools/PanListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/achartengine/tools/PanListener;

    .line 121
    iget-object v0, p0, Lorg/achartengine/TouchHandlerOld;->mPan:Lorg/achartengine/tools/Pan;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lorg/achartengine/TouchHandlerOld;->mPan:Lorg/achartengine/tools/Pan;

    invoke-virtual {v0, p1}, Lorg/achartengine/tools/Pan;->addPanListener(Lorg/achartengine/tools/PanListener;)V

    .line 124
    :cond_0
    return-void
.end method

.method public addZoomListener(Lorg/achartengine/tools/ZoomListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/achartengine/tools/ZoomListener;

    .line 105
    return-void
.end method

.method public handleTouch(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 67
    .local v0, "action":I
    iget-object v1, p0, Lorg/achartengine/TouchHandlerOld;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 68
    iget v1, p0, Lorg/achartengine/TouchHandlerOld;->oldX:F

    cmpl-float v1, v1, v3

    if-gez v1, :cond_0

    iget v1, p0, Lorg/achartengine/TouchHandlerOld;->oldY:F

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_6

    .line 69
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 70
    .local v1, "newX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 71
    .local v3, "newY":F
    iget-object v4, p0, Lorg/achartengine/TouchHandlerOld;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/DefaultRenderer;->isPanEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 72
    iget-object v4, p0, Lorg/achartengine/TouchHandlerOld;->mPan:Lorg/achartengine/tools/Pan;

    iget v5, p0, Lorg/achartengine/TouchHandlerOld;->oldX:F

    iget v6, p0, Lorg/achartengine/TouchHandlerOld;->oldY:F

    invoke-virtual {v4, v5, v6, v1, v3}, Lorg/achartengine/tools/Pan;->apply(FFFF)V

    .line 74
    :cond_1
    iput v1, p0, Lorg/achartengine/TouchHandlerOld;->oldX:F

    .line 75
    iput v3, p0, Lorg/achartengine/TouchHandlerOld;->oldY:F

    .line 76
    iget-object v4, p0, Lorg/achartengine/TouchHandlerOld;->graphicalView:Lorg/achartengine/GraphicalView;

    invoke-virtual {v4}, Lorg/achartengine/GraphicalView;->repaint()V

    .line 77
    return v2

    .line 79
    .end local v1    # "newX":F
    .end local v3    # "newY":F
    :cond_2
    if-nez v0, :cond_5

    .line 80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lorg/achartengine/TouchHandlerOld;->oldX:F

    .line 81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lorg/achartengine/TouchHandlerOld;->oldY:F

    .line 82
    iget-object v1, p0, Lorg/achartengine/TouchHandlerOld;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/achartengine/TouchHandlerOld;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/DefaultRenderer;->isZoomEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/achartengine/TouchHandlerOld;->zoomR:Landroid/graphics/RectF;

    iget v3, p0, Lorg/achartengine/TouchHandlerOld;->oldX:F

    iget v4, p0, Lorg/achartengine/TouchHandlerOld;->oldY:F

    invoke-virtual {v1, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 83
    iget v1, p0, Lorg/achartengine/TouchHandlerOld;->oldX:F

    iget-object v3, p0, Lorg/achartengine/TouchHandlerOld;->zoomR:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lorg/achartengine/TouchHandlerOld;->zoomR:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    cmpg-float v1, v1, v3

    if-gez v1, :cond_3

    .line 84
    iget-object v1, p0, Lorg/achartengine/TouchHandlerOld;->graphicalView:Lorg/achartengine/GraphicalView;

    invoke-virtual {v1}, Lorg/achartengine/GraphicalView;->zoomIn()V

    goto :goto_0

    .line 85
    :cond_3
    iget v1, p0, Lorg/achartengine/TouchHandlerOld;->oldX:F

    iget-object v3, p0, Lorg/achartengine/TouchHandlerOld;->zoomR:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lorg/achartengine/TouchHandlerOld;->zoomR:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v4, v6

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    cmpg-float v1, v1, v3

    if-gez v1, :cond_4

    .line 86
    iget-object v1, p0, Lorg/achartengine/TouchHandlerOld;->graphicalView:Lorg/achartengine/GraphicalView;

    invoke-virtual {v1}, Lorg/achartengine/GraphicalView;->zoomOut()V

    goto :goto_0

    .line 88
    :cond_4
    iget-object v1, p0, Lorg/achartengine/TouchHandlerOld;->graphicalView:Lorg/achartengine/GraphicalView;

    invoke-virtual {v1}, Lorg/achartengine/GraphicalView;->zoomReset()V

    .line 90
    :goto_0
    return v2

    .line 92
    :cond_5
    if-ne v0, v2, :cond_6

    .line 93
    iput v3, p0, Lorg/achartengine/TouchHandlerOld;->oldX:F

    .line 94
    iput v3, p0, Lorg/achartengine/TouchHandlerOld;->oldY:F

    .line 96
    :cond_6
    iget-object v1, p0, Lorg/achartengine/TouchHandlerOld;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/DefaultRenderer;->isClickEnabled()Z

    move-result v1

    xor-int/2addr v1, v2

    return v1
.end method

.method public removePanListener(Lorg/achartengine/tools/PanListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/achartengine/tools/PanListener;

    .line 132
    iget-object v0, p0, Lorg/achartengine/TouchHandlerOld;->mPan:Lorg/achartengine/tools/Pan;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lorg/achartengine/TouchHandlerOld;->mPan:Lorg/achartengine/tools/Pan;

    invoke-virtual {v0, p1}, Lorg/achartengine/tools/Pan;->removePanListener(Lorg/achartengine/tools/PanListener;)V

    .line 135
    :cond_0
    return-void
.end method

.method public removeZoomListener(Lorg/achartengine/tools/ZoomListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/achartengine/tools/ZoomListener;

    .line 113
    return-void
.end method
