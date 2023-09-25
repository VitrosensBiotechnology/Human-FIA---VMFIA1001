.class public Lorg/achartengine/tools/Zoom;
.super Lorg/achartengine/tools/AbstractTool;
.source "Zoom.java"


# static fields
.field public static final ZOOM_AXIS_X:I = 0x1

.field public static final ZOOM_AXIS_XY:I = 0x0

.field public static final ZOOM_AXIS_Y:I = 0x2


# instance fields
.field private limitsReachedX:Z

.field private limitsReachedY:Z

.field private mZoomIn:Z

.field private mZoomListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/achartengine/tools/ZoomListener;",
            ">;"
        }
    .end annotation
.end field

.field private mZoomRate:F


# direct methods
.method public constructor <init>(Lorg/achartengine/chart/AbstractChart;ZF)V
    .locals 1
    .param p1, "chart"    # Lorg/achartengine/chart/AbstractChart;
    .param p2, "in"    # Z
    .param p3, "rate"    # F

    .line 56
    invoke-direct {p0, p1}, Lorg/achartengine/tools/AbstractTool;-><init>(Lorg/achartengine/chart/AbstractChart;)V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/achartengine/tools/Zoom;->mZoomListeners:Ljava/util/List;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/achartengine/tools/Zoom;->limitsReachedX:Z

    .line 39
    iput-boolean v0, p0, Lorg/achartengine/tools/Zoom;->limitsReachedY:Z

    .line 57
    iput-boolean p2, p0, Lorg/achartengine/tools/Zoom;->mZoomIn:Z

    .line 58
    invoke-virtual {p0, p3}, Lorg/achartengine/tools/Zoom;->setZoomRate(F)V

    .line 59
    return-void
.end method

.method private declared-synchronized notifyZoomListeners(Lorg/achartengine/tools/ZoomEvent;)V
    .locals 2
    .param p1, "e"    # Lorg/achartengine/tools/ZoomEvent;

    monitor-enter p0

    .line 162
    :try_start_0
    iget-object v0, p0, Lorg/achartengine/tools/Zoom;->mZoomListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 162
    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/achartengine/tools/ZoomListener;

    .line 163
    .local v1, "listener":Lorg/achartengine/tools/ZoomListener;
    invoke-interface {v1, p1}, Lorg/achartengine/tools/ZoomListener;->zoomApplied(Lorg/achartengine/tools/ZoomEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    .end local v1    # "listener":Lorg/achartengine/tools/ZoomListener;
    goto :goto_0

    .line 165
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void

    .line 161
    .end local p1    # "e":Lorg/achartengine/tools/ZoomEvent;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized addZoomListener(Lorg/achartengine/tools/ZoomListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/achartengine/tools/ZoomListener;

    monitor-enter p0

    .line 182
    :try_start_0
    iget-object v0, p0, Lorg/achartengine/tools/Zoom;->mZoomListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    monitor-exit p0

    return-void

    .line 181
    .end local p1    # "listener":Lorg/achartengine/tools/ZoomListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public apply(I)V
    .locals 37
    .param p1, "zoom_axis"    # I

    move-object/from16 v6, p0

    .line 74
    move/from16 v7, p1

    iget-object v0, v6, Lorg/achartengine/tools/Zoom;->mChart:Lorg/achartengine/chart/AbstractChart;

    instance-of v0, v0, Lorg/achartengine/chart/XYChart;

    if-eqz v0, :cond_16

    .line 75
    iget-object v0, v6, Lorg/achartengine/tools/Zoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getScalesCount()I

    move-result v8

    .line 76
    .local v8, "scales":I
    const/4 v9, 0x0

    move v0, v9

    .line 76
    .local v0, "i":I
    :goto_0
    move v10, v0

    .line 76
    .end local v0    # "i":I
    .local v10, "i":I
    if-ge v10, v8, :cond_15

    .line 77
    invoke-virtual {v6, v10}, Lorg/achartengine/tools/Zoom;->getRange(I)[D

    move-result-object v11

    .line 78
    .local v11, "range":[D
    invoke-virtual {v6, v11, v10}, Lorg/achartengine/tools/Zoom;->checkRange([DI)V

    .line 79
    iget-object v0, v6, Lorg/achartengine/tools/Zoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getZoomLimits()[D

    move-result-object v12

    .line 81
    .local v12, "limits":[D
    aget-wide v0, v11, v9

    const/4 v2, 0x1

    aget-wide v3, v11, v2

    add-double/2addr v0, v3

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    div-double v15, v0, v13

    .line 82
    .local v15, "centerX":D
    const/4 v5, 0x2

    aget-wide v0, v11, v5

    const/4 v3, 0x3

    aget-wide v17, v11, v3

    add-double v0, v0, v17

    div-double v17, v0, v13

    .line 83
    .local v17, "centerY":D
    aget-wide v0, v11, v2

    aget-wide v19, v11, v9

    sub-double v0, v0, v19

    .line 84
    .local v0, "newWidth":D
    aget-wide v19, v11, v3

    aget-wide v21, v11, v5

    sub-double v19, v19, v21

    .line 85
    .local v19, "newHeight":D
    div-double v21, v0, v13

    sub-double v21, v15, v21

    .line 86
    .local v21, "newXMin":D
    div-double v23, v0, v13

    add-double v23, v15, v23

    .line 87
    .local v23, "newXMax":D
    div-double v25, v19, v13

    sub-double v25, v17, v25

    .line 88
    .local v25, "newYMin":D
    div-double v27, v19, v13

    add-double v27, v17, v27

    .line 91
    .local v27, "newYMax":D
    if-nez v10, :cond_4

    .line 92
    if-eqz v12, :cond_1

    aget-wide v29, v12, v9

    cmpg-double v4, v21, v29

    if-lez v4, :cond_0

    aget-wide v29, v12, v2

    cmpl-double v4, v23, v29

    if-ltz v4, :cond_1

    :cond_0
    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v9

    :goto_1
    iput-boolean v4, v6, Lorg/achartengine/tools/Zoom;->limitsReachedX:Z

    .line 93
    if-eqz v12, :cond_3

    aget-wide v29, v12, v5

    cmpg-double v4, v25, v29

    if-lez v4, :cond_2

    aget-wide v29, v12, v3

    cmpl-double v4, v27, v29

    if-ltz v4, :cond_3

    :cond_2
    move v4, v2

    goto :goto_2

    :cond_3
    move v4, v9

    :goto_2
    iput-boolean v4, v6, Lorg/achartengine/tools/Zoom;->limitsReachedY:Z

    .line 96
    :cond_4
    iget-boolean v4, v6, Lorg/achartengine/tools/Zoom;->mZoomIn:Z

    if-eqz v4, :cond_b

    .line 97
    iget-object v4, v6, Lorg/achartengine/tools/Zoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isZoomXEnabled()Z

    move-result v4

    const/high16 v29, 0x3f800000    # 1.0f

    if-eqz v4, :cond_7

    if-eq v7, v2, :cond_5

    if-nez v7, :cond_7

    .line 98
    :cond_5
    iget-boolean v4, v6, Lorg/achartengine/tools/Zoom;->limitsReachedX:Z

    if-eqz v4, :cond_6

    iget v4, v6, Lorg/achartengine/tools/Zoom;->mZoomRate:F

    cmpg-float v4, v4, v29

    if-gez v4, :cond_6

    goto :goto_3

    .line 101
    :cond_6
    iget v4, v6, Lorg/achartengine/tools/Zoom;->mZoomRate:F

    float-to-double v13, v4

    div-double/2addr v0, v13

    .line 105
    :cond_7
    :goto_3
    iget-object v4, v6, Lorg/achartengine/tools/Zoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isZoomYEnabled()Z

    move-result v4

    if-eqz v4, :cond_a

    if-eq v7, v5, :cond_8

    if-nez v7, :cond_a

    .line 106
    :cond_8
    iget-boolean v4, v6, Lorg/achartengine/tools/Zoom;->limitsReachedY:Z

    if-eqz v4, :cond_9

    iget v4, v6, Lorg/achartengine/tools/Zoom;->mZoomRate:F

    cmpg-float v4, v4, v29

    if-gez v4, :cond_9

    goto :goto_4

    .line 108
    :cond_9
    iget v4, v6, Lorg/achartengine/tools/Zoom;->mZoomRate:F

    float-to-double v13, v4

    div-double v19, v19, v13

    .line 124
    .end local v19    # "newHeight":D
    .local v13, "newHeight":D
    :cond_a
    :goto_4
    move-wide/from16 v13, v19

    goto :goto_5

    .line 112
    .end local v13    # "newHeight":D
    .restart local v19    # "newHeight":D
    :cond_b
    iget-object v4, v6, Lorg/achartengine/tools/Zoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isZoomXEnabled()Z

    move-result v4

    if-eqz v4, :cond_d

    iget-boolean v4, v6, Lorg/achartengine/tools/Zoom;->limitsReachedX:Z

    if-nez v4, :cond_d

    if-eq v7, v2, :cond_c

    if-nez v7, :cond_d

    .line 114
    :cond_c
    iget v4, v6, Lorg/achartengine/tools/Zoom;->mZoomRate:F

    float-to-double v13, v4

    mul-double/2addr v0, v13

    .line 117
    :cond_d
    iget-object v4, v6, Lorg/achartengine/tools/Zoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isZoomYEnabled()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-boolean v4, v6, Lorg/achartengine/tools/Zoom;->limitsReachedY:Z

    if-nez v4, :cond_a

    if-eq v7, v5, :cond_e

    if-nez v7, :cond_a

    .line 119
    :cond_e
    iget v4, v6, Lorg/achartengine/tools/Zoom;->mZoomRate:F

    float-to-double v13, v4

    mul-double v19, v19, v13

    goto :goto_4

    .line 124
    .end local v19    # "newHeight":D
    .restart local v13    # "newHeight":D
    :goto_5
    if-eqz v12, :cond_f

    .line 125
    iget-object v4, v6, Lorg/achartengine/tools/Zoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getZoomInLimitX()D

    move-result-wide v3

    aget-wide v19, v12, v2

    aget-wide v29, v12, v9

    move/from16 v31, v10

    sub-double v9, v19, v29

    .line 125
    .end local v10    # "i":I
    .local v31, "i":I
    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    .line 126
    .local v3, "minX":D
    iget-object v9, v6, Lorg/achartengine/tools/Zoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getZoomInLimitY()D

    move-result-wide v9

    const/16 v19, 0x3

    aget-wide v19, v12, v19

    aget-wide v29, v12, v5

    move-wide/from16 v32, v3

    sub-double v2, v19, v29

    .line 126
    .end local v3    # "minX":D
    .local v32, "minX":D
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 129
    .local v2, "minY":D
    move-wide/from16 v9, v32

    goto :goto_6

    .line 128
    .end local v2    # "minY":D
    .end local v31    # "i":I
    .end local v32    # "minX":D
    .restart local v10    # "i":I
    :cond_f
    move/from16 v31, v10

    .line 128
    .end local v10    # "i":I
    .restart local v31    # "i":I
    iget-object v2, v6, Lorg/achartengine/tools/Zoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getZoomInLimitX()D

    move-result-wide v3

    .line 129
    .restart local v3    # "minX":D
    iget-object v2, v6, Lorg/achartengine/tools/Zoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getZoomInLimitY()D

    move-result-wide v9

    move-wide/from16 v35, v3

    move-wide v2, v9

    move-wide/from16 v9, v35

    .line 129
    .end local v3    # "minX":D
    .restart local v2    # "minY":D
    .local v9, "minX":D
    :goto_6
    move-wide v3, v2

    .line 131
    .end local v2    # "minY":D
    .local v3, "minY":D
    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v19

    .line 132
    .end local v0    # "newWidth":D
    .local v19, "newWidth":D
    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v13

    .line 134
    iget-object v0, v6, Lorg/achartengine/tools/Zoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isZoomXEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    if-eq v7, v0, :cond_11

    if-nez v7, :cond_10

    goto :goto_7

    .line 139
    :cond_10
    move-wide/from16 v29, v3

    move/from16 v34, v8

    move v8, v5

    goto :goto_8

    .line 135
    :cond_11
    :goto_7
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double v29, v19, v0

    sub-double v21, v15, v29

    .line 136
    div-double v29, v19, v0

    add-double v23, v15, v29

    .line 137
    move-object v0, v6

    move-wide/from16 v1, v21

    move-wide/from16 v29, v3

    move-wide/from16 v3, v23

    .line 137
    .end local v3    # "minY":D
    .local v29, "minY":D
    move/from16 v34, v8

    move v8, v5

    move/from16 v5, v31

    .line 137
    .end local v8    # "scales":I
    .local v34, "scales":I
    invoke-virtual/range {v0 .. v5}, Lorg/achartengine/tools/Zoom;->setXRange(DDI)V

    goto :goto_8

    .line 139
    .end local v29    # "minY":D
    .end local v34    # "scales":I
    .restart local v3    # "minY":D
    .restart local v8    # "scales":I
    :cond_12
    move-wide/from16 v29, v3

    move/from16 v34, v8

    move v8, v5

    .line 139
    .end local v3    # "minY":D
    .end local v8    # "scales":I
    .restart local v29    # "minY":D
    .restart local v34    # "scales":I
    :goto_8
    iget-object v0, v6, Lorg/achartengine/tools/Zoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isZoomYEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    if-eq v7, v8, :cond_13

    if-nez v7, :cond_14

    .line 140
    :cond_13
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double v2, v13, v0

    sub-double v25, v17, v2

    .line 141
    div-double v0, v13, v0

    add-double v27, v17, v0

    .line 142
    move-object v0, v6

    move-wide/from16 v1, v25

    move-wide/from16 v3, v27

    move/from16 v5, v31

    invoke-virtual/range {v0 .. v5}, Lorg/achartengine/tools/Zoom;->setYRange(DDI)V

    .line 76
    .end local v9    # "minX":D
    .end local v11    # "range":[D
    .end local v12    # "limits":[D
    .end local v13    # "newHeight":D
    .end local v15    # "centerX":D
    .end local v17    # "centerY":D
    .end local v19    # "newWidth":D
    .end local v21    # "newXMin":D
    .end local v23    # "newXMax":D
    .end local v25    # "newYMin":D
    .end local v27    # "newYMax":D
    .end local v29    # "minY":D
    :cond_14
    add-int/lit8 v0, v31, 0x1

    .line 76
    .end local v31    # "i":I
    .local v0, "i":I
    move/from16 v8, v34

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 145
    .end local v0    # "i":I
    .end local v34    # "scales":I
    :cond_15
    goto :goto_9

    .line 146
    :cond_16
    iget-object v0, v6, Lorg/achartengine/tools/Zoom;->mChart:Lorg/achartengine/chart/AbstractChart;

    check-cast v0, Lorg/achartengine/chart/RoundChart;

    invoke-virtual {v0}, Lorg/achartengine/chart/RoundChart;->getRenderer()Lorg/achartengine/renderer/DefaultRenderer;

    move-result-object v0

    .line 147
    .local v0, "renderer":Lorg/achartengine/renderer/DefaultRenderer;
    iget-boolean v1, v6, Lorg/achartengine/tools/Zoom;->mZoomIn:Z

    if-eqz v1, :cond_17

    .line 148
    invoke-virtual {v0}, Lorg/achartengine/renderer/DefaultRenderer;->getScale()F

    move-result v1

    iget v2, v6, Lorg/achartengine/tools/Zoom;->mZoomRate:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/achartengine/renderer/DefaultRenderer;->setScale(F)V

    goto :goto_9

    .line 150
    :cond_17
    invoke-virtual {v0}, Lorg/achartengine/renderer/DefaultRenderer;->getScale()F

    move-result v1

    iget v2, v6, Lorg/achartengine/tools/Zoom;->mZoomRate:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/achartengine/renderer/DefaultRenderer;->setScale(F)V

    .line 153
    .end local v0    # "renderer":Lorg/achartengine/renderer/DefaultRenderer;
    :goto_9
    new-instance v0, Lorg/achartengine/tools/ZoomEvent;

    iget-boolean v1, v6, Lorg/achartengine/tools/Zoom;->mZoomIn:Z

    iget v2, v6, Lorg/achartengine/tools/Zoom;->mZoomRate:F

    invoke-direct {v0, v1, v2}, Lorg/achartengine/tools/ZoomEvent;-><init>(ZF)V

    invoke-direct {v6, v0}, Lorg/achartengine/tools/Zoom;->notifyZoomListeners(Lorg/achartengine/tools/ZoomEvent;)V

    .line 154
    return-void
.end method

.method public declared-synchronized notifyZoomResetListeners()V
    .locals 2

    monitor-enter p0

    .line 171
    :try_start_0
    iget-object v0, p0, Lorg/achartengine/tools/Zoom;->mZoomListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 171
    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/achartengine/tools/ZoomListener;

    .line 172
    .local v1, "listener":Lorg/achartengine/tools/ZoomListener;
    invoke-interface {v1}, Lorg/achartengine/tools/ZoomListener;->zoomReset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    .end local v1    # "listener":Lorg/achartengine/tools/ZoomListener;
    goto :goto_0

    .line 174
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeZoomListener(Lorg/achartengine/tools/ZoomListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/achartengine/tools/ZoomListener;

    monitor-enter p0

    .line 191
    :try_start_0
    iget-object v0, p0, Lorg/achartengine/tools/Zoom;->mZoomListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    monitor-exit p0

    return-void

    .line 190
    .end local p1    # "listener":Lorg/achartengine/tools/ZoomListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setZoomRate(F)V
    .locals 0
    .param p1, "rate"    # F

    .line 67
    iput p1, p0, Lorg/achartengine/tools/Zoom;->mZoomRate:F

    .line 68
    return-void
.end method
