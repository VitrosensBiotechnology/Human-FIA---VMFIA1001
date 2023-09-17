.class public Lorg/achartengine/tools/Pan;
.super Lorg/achartengine/tools/AbstractTool;
.source "Pan.java"


# instance fields
.field private limitsReachedX:Z

.field private limitsReachedY:Z

.field private mPanListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/achartengine/tools/PanListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/achartengine/chart/AbstractChart;)V
    .locals 1
    .param p1, "chart"    # Lorg/achartengine/chart/AbstractChart;

    .line 42
    invoke-direct {p0, p1}, Lorg/achartengine/tools/AbstractTool;-><init>(Lorg/achartengine/chart/AbstractChart;)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/achartengine/tools/Pan;->mPanListeners:Ljava/util/List;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/achartengine/tools/Pan;->limitsReachedX:Z

    .line 34
    iput-boolean v0, p0, Lorg/achartengine/tools/Pan;->limitsReachedY:Z

    .line 43
    return-void
.end method

.method private getAxisRatio([D)D
    .locals 6
    .param p1, "range"    # [D

    .line 133
    const/4 v0, 0x1

    aget-wide v0, p1, v0

    const/4 v2, 0x0

    aget-wide v2, p1, v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const/4 v2, 0x3

    aget-wide v2, p1, v2

    const/4 v4, 0x2

    aget-wide v4, p1, v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private declared-synchronized notifyPanListeners()V
    .locals 2

    monitor-enter p0

    .line 140
    :try_start_0
    iget-object v0, p0, Lorg/achartengine/tools/Pan;->mPanListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 140
    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/achartengine/tools/PanListener;

    .line 141
    .local v1, "listener":Lorg/achartengine/tools/PanListener;
    invoke-interface {v1}, Lorg/achartengine/tools/PanListener;->panApplied()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    .end local v1    # "listener":Lorg/achartengine/tools/PanListener;
    goto :goto_0

    .line 143
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addPanListener(Lorg/achartengine/tools/PanListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/achartengine/tools/PanListener;

    monitor-enter p0

    .line 151
    :try_start_0
    iget-object v0, p0, Lorg/achartengine/tools/Pan;->mPanListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    monitor-exit p0

    return-void

    .line 150
    .end local p1    # "listener":Lorg/achartengine/tools/PanListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public apply(FFFF)V
    .locals 33
    .param p1, "oldX"    # F
    .param p2, "oldY"    # F
    .param p3, "newX"    # F
    .param p4, "newY"    # F

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    .line 54
    move/from16 v10, p4

    const/4 v0, 0x1

    .line 55
    .local v0, "notLimitedUp":Z
    const/4 v1, 0x1

    .line 56
    .local v1, "notLimitedBottom":Z
    const/4 v2, 0x1

    .line 57
    .local v2, "notLimitedLeft":Z
    const/4 v3, 0x1

    .line 58
    .local v3, "notLimitedRight":Z
    iget-object v4, v6, Lorg/achartengine/tools/Pan;->mChart:Lorg/achartengine/chart/AbstractChart;

    instance-of v4, v4, Lorg/achartengine/chart/XYChart;

    if-eqz v4, :cond_14

    .line 59
    iget-object v4, v6, Lorg/achartengine/tools/Pan;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getScalesCount()I

    move-result v11

    .line 60
    .local v11, "scales":I
    iget-object v4, v6, Lorg/achartengine/tools/Pan;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getPanLimits()[D

    move-result-object v12

    .line 61
    .local v12, "limits":[D
    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v12, :cond_0

    array-length v4, v12

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    move v4, v14

    goto :goto_0

    :cond_0
    move v4, v13

    :goto_0
    move v15, v4

    .line 62
    .local v15, "limited":Z
    iget-object v4, v6, Lorg/achartengine/tools/Pan;->mChart:Lorg/achartengine/chart/AbstractChart;

    move-object v5, v4

    check-cast v5, Lorg/achartengine/chart/XYChart;

    .line 63
    .local v5, "chart":Lorg/achartengine/chart/XYChart;
    move/from16 v16, v0

    move/from16 v17, v1

    move v0, v13

    .line 63
    .end local v1    # "notLimitedBottom":Z
    .local v0, "i":I
    .local v16, "notLimitedUp":Z
    .local v17, "notLimitedBottom":Z
    :goto_1
    move v4, v0

    .line 63
    .end local v0    # "i":I
    .local v4, "i":I
    if-ge v4, v11, :cond_13

    .line 64
    invoke-virtual {v6, v4}, Lorg/achartengine/tools/Pan;->getRange(I)[D

    move-result-object v1

    .line 65
    .local v1, "range":[D
    invoke-virtual {v5, v4}, Lorg/achartengine/chart/XYChart;->getCalcRange(I)[D

    move-result-object v18

    .line 66
    .local v18, "calcRange":[D
    iget-boolean v0, v6, Lorg/achartengine/tools/Pan;->limitsReachedX:Z

    const/16 v19, 0x3

    const/16 v20, 0x2

    if-eqz v0, :cond_3

    iget-boolean v0, v6, Lorg/achartengine/tools/Pan;->limitsReachedY:Z

    if-eqz v0, :cond_3

    aget-wide v21, v1, v13

    aget-wide v23, v1, v14

    cmpl-double v0, v21, v23

    if-nez v0, :cond_1

    aget-wide v21, v18, v13

    aget-wide v23, v18, v14

    cmpl-double v0, v21, v23

    if-eqz v0, :cond_2

    :cond_1
    aget-wide v21, v1, v20

    aget-wide v23, v1, v19

    cmpl-double v0, v21, v23

    if-nez v0, :cond_3

    aget-wide v21, v18, v20

    aget-wide v23, v18, v19

    cmpl-double v0, v21, v23

    if-nez v0, :cond_3

    .line 70
    :cond_2
    return-void

    .line 72
    :cond_3
    invoke-virtual {v6, v1, v4}, Lorg/achartengine/tools/Pan;->checkRange([DI)V

    .line 74
    invoke-virtual {v5, v7, v8, v4}, Lorg/achartengine/chart/XYChart;->toRealPoint(FFI)[D

    move-result-object v21

    .line 75
    .local v21, "realPoint":[D
    invoke-virtual {v5, v9, v10, v4}, Lorg/achartengine/chart/XYChart;->toRealPoint(FFI)[D

    move-result-object v22

    .line 76
    .local v22, "realPoint2":[D
    aget-wide v23, v21, v13

    aget-wide v25, v22, v13

    sub-double v23, v23, v25

    .line 77
    .local v23, "deltaX":D
    aget-wide v25, v21, v14

    aget-wide v27, v22, v14

    move/from16 v29, v15

    sub-double v14, v25, v27

    .line 78
    .end local v15    # "limited":Z
    .local v14, "deltaY":D
    .local v29, "limited":Z
    invoke-direct {v6, v1}, Lorg/achartengine/tools/Pan;->getAxisRatio([D)D

    move-result-wide v25

    .line 79
    .local v25, "ratio":D
    iget-object v0, v6, Lorg/achartengine/tools/Pan;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5, v0}, Lorg/achartengine/chart/XYChart;->isVertical(Lorg/achartengine/renderer/DefaultRenderer;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 80
    move/from16 v31, v4

    move-object/from16 v30, v5

    neg-double v4, v14

    .line 80
    .end local v4    # "i":I
    .end local v5    # "chart":Lorg/achartengine/chart/XYChart;
    .local v30, "chart":Lorg/achartengine/chart/XYChart;
    .local v31, "i":I
    mul-double v4, v4, v25

    .line 81
    .local v4, "newDeltaX":D
    div-double v27, v23, v25

    .line 82
    .local v27, "newDeltaY":D
    move-wide/from16 v23, v4

    .line 83
    move-wide/from16 v14, v27

    .line 83
    .end local v4    # "newDeltaX":D
    .end local v27    # "newDeltaY":D
    goto :goto_2

    .line 85
    .end local v30    # "chart":Lorg/achartengine/chart/XYChart;
    .end local v31    # "i":I
    .local v4, "i":I
    .restart local v5    # "chart":Lorg/achartengine/chart/XYChart;
    :cond_4
    move/from16 v31, v4

    move-object/from16 v30, v5

    .line 85
    .end local v4    # "i":I
    .end local v5    # "chart":Lorg/achartengine/chart/XYChart;
    .restart local v30    # "chart":Lorg/achartengine/chart/XYChart;
    .restart local v31    # "i":I
    :goto_2
    iget-object v0, v6, Lorg/achartengine/tools/Pan;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isPanXEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 86
    if-eqz v12, :cond_8

    .line 87
    if-eqz v2, :cond_6

    .line 88
    aget-wide v4, v12, v13

    aget-wide v27, v1, v13

    add-double v27, v27, v23

    cmpg-double v0, v4, v27

    if-gtz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    move v0, v13

    :goto_3
    move v2, v0

    .line 90
    :cond_6
    if-eqz v3, :cond_8

    .line 91
    const/4 v0, 0x1

    aget-wide v4, v12, v0

    aget-wide v27, v1, v0

    add-double v27, v27, v23

    cmpl-double v0, v4, v27

    if-ltz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_4

    :cond_7
    move v0, v13

    .line 94
    .end local v3    # "notLimitedRight":Z
    .local v0, "notLimitedRight":Z
    :goto_4
    move/from16 v28, v0

    move/from16 v27, v2

    goto :goto_5

    .line 94
    .end local v0    # "notLimitedRight":Z
    .restart local v3    # "notLimitedRight":Z
    :cond_8
    move/from16 v27, v2

    move/from16 v28, v3

    .line 94
    .end local v2    # "notLimitedLeft":Z
    .end local v3    # "notLimitedRight":Z
    .local v27, "notLimitedLeft":Z
    .local v28, "notLimitedRight":Z
    :goto_5
    if-eqz v29, :cond_a

    if-eqz v27, :cond_9

    if-eqz v28, :cond_9

    goto :goto_6

    .line 98
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, v6, Lorg/achartengine/tools/Pan;->limitsReachedX:Z

    .line 101
    move-object/from16 v32, v1

    goto :goto_7

    .line 95
    :cond_a
    :goto_6
    const/4 v0, 0x1

    aget-wide v2, v1, v13

    add-double v2, v2, v23

    aget-wide v4, v1, v0

    add-double v4, v4, v23

    move-object v0, v6

    move-object/from16 v32, v1

    move-wide v1, v2

    .line 95
    .end local v1    # "range":[D
    .local v32, "range":[D
    move-wide v3, v4

    move/from16 v5, v31

    invoke-virtual/range {v0 .. v5}, Lorg/achartengine/tools/Pan;->setXRange(DDI)V

    .line 96
    iput-boolean v13, v6, Lorg/achartengine/tools/Pan;->limitsReachedX:Z

    goto :goto_7

    .line 101
    .end local v27    # "notLimitedLeft":Z
    .end local v28    # "notLimitedRight":Z
    .end local v32    # "range":[D
    .restart local v1    # "range":[D
    .restart local v2    # "notLimitedLeft":Z
    .restart local v3    # "notLimitedRight":Z
    :cond_b
    move-object/from16 v32, v1

    move/from16 v27, v2

    move/from16 v28, v3

    .line 101
    .end local v1    # "range":[D
    .end local v2    # "notLimitedLeft":Z
    .end local v3    # "notLimitedRight":Z
    .restart local v27    # "notLimitedLeft":Z
    .restart local v28    # "notLimitedRight":Z
    .restart local v32    # "range":[D
    :goto_7
    iget-object v0, v6, Lorg/achartengine/tools/Pan;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isPanYEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 102
    if-eqz v12, :cond_f

    .line 103
    if-eqz v17, :cond_d

    .line 104
    aget-wide v0, v12, v20

    aget-wide v2, v32, v20

    add-double/2addr v2, v14

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_c

    const/4 v0, 0x1

    goto :goto_8

    :cond_c
    move v0, v13

    :goto_8
    move/from16 v17, v0

    .line 106
    :cond_d
    if-eqz v16, :cond_f

    .line 107
    aget-wide v0, v12, v19

    aget-wide v2, v32, v19

    add-double/2addr v2, v14

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_e

    const/4 v0, 0x1

    goto :goto_9

    :cond_e
    move v0, v13

    .line 110
    .end local v16    # "notLimitedUp":Z
    .local v0, "notLimitedUp":Z
    :goto_9
    move/from16 v16, v0

    .line 110
    .end local v0    # "notLimitedUp":Z
    .restart local v16    # "notLimitedUp":Z
    :cond_f
    if-eqz v29, :cond_11

    if-eqz v17, :cond_10

    if-eqz v16, :cond_10

    goto :goto_a

    .line 114
    :cond_10
    const/4 v5, 0x1

    iput-boolean v5, v6, Lorg/achartengine/tools/Pan;->limitsReachedY:Z

    .line 63
    .end local v14    # "deltaY":D
    .end local v18    # "calcRange":[D
    .end local v21    # "realPoint":[D
    .end local v22    # "realPoint2":[D
    .end local v23    # "deltaX":D
    .end local v25    # "ratio":D
    .end local v32    # "range":[D
    move/from16 v19, v5

    goto :goto_b

    .line 111
    .restart local v14    # "deltaY":D
    .restart local v18    # "calcRange":[D
    .restart local v21    # "realPoint":[D
    .restart local v22    # "realPoint2":[D
    .restart local v23    # "deltaX":D
    .restart local v25    # "ratio":D
    .restart local v32    # "range":[D
    :cond_11
    :goto_a
    const/4 v5, 0x1

    aget-wide v0, v32, v20

    add-double v1, v0, v14

    aget-wide v3, v32, v19

    add-double/2addr v3, v14

    move-object v0, v6

    move/from16 v19, v5

    move/from16 v5, v31

    invoke-virtual/range {v0 .. v5}, Lorg/achartengine/tools/Pan;->setYRange(DDI)V

    .line 112
    iput-boolean v13, v6, Lorg/achartengine/tools/Pan;->limitsReachedY:Z

    goto :goto_b

    .line 63
    .end local v14    # "deltaY":D
    .end local v18    # "calcRange":[D
    .end local v21    # "realPoint":[D
    .end local v22    # "realPoint2":[D
    .end local v23    # "deltaX":D
    .end local v25    # "ratio":D
    .end local v32    # "range":[D
    :cond_12
    const/16 v19, 0x1

    :goto_b
    add-int/lit8 v0, v31, 0x1

    .line 63
    .end local v31    # "i":I
    .local v0, "i":I
    move/from16 v14, v19

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v15, v29

    move-object/from16 v5, v30

    goto/16 :goto_1

    .line 118
    .end local v0    # "i":I
    .end local v11    # "scales":I
    .end local v12    # "limits":[D
    .end local v27    # "notLimitedLeft":Z
    .end local v28    # "notLimitedRight":Z
    .end local v29    # "limited":Z
    .end local v30    # "chart":Lorg/achartengine/chart/XYChart;
    .restart local v2    # "notLimitedLeft":Z
    .restart local v3    # "notLimitedRight":Z
    :cond_13
    nop

    .line 123
    move/from16 v0, v16

    move/from16 v1, v17

    goto :goto_c

    .line 119
    .end local v16    # "notLimitedUp":Z
    .end local v17    # "notLimitedBottom":Z
    .local v0, "notLimitedUp":Z
    .local v1, "notLimitedBottom":Z
    :cond_14
    iget-object v4, v6, Lorg/achartengine/tools/Pan;->mChart:Lorg/achartengine/chart/AbstractChart;

    check-cast v4, Lorg/achartengine/chart/RoundChart;

    .line 120
    .local v4, "chart":Lorg/achartengine/chart/RoundChart;
    invoke-virtual {v4}, Lorg/achartengine/chart/RoundChart;->getCenterX()I

    move-result v5

    sub-float v11, v9, v7

    float-to-int v11, v11

    add-int/2addr v5, v11

    invoke-virtual {v4, v5}, Lorg/achartengine/chart/RoundChart;->setCenterX(I)V

    .line 121
    invoke-virtual {v4}, Lorg/achartengine/chart/RoundChart;->getCenterY()I

    move-result v5

    sub-float v11, v10, v8

    float-to-int v11, v11

    add-int/2addr v5, v11

    invoke-virtual {v4, v5}, Lorg/achartengine/chart/RoundChart;->setCenterY(I)V

    .line 123
    .end local v4    # "chart":Lorg/achartengine/chart/RoundChart;
    :goto_c
    invoke-direct/range {p0 .. p0}, Lorg/achartengine/tools/Pan;->notifyPanListeners()V

    .line 124
    return-void
.end method

.method public declared-synchronized removePanListener(Lorg/achartengine/tools/PanListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/achartengine/tools/PanListener;

    monitor-enter p0

    .line 160
    :try_start_0
    iget-object v0, p0, Lorg/achartengine/tools/Pan;->mPanListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit p0

    return-void

    .line 159
    .end local p1    # "listener":Lorg/achartengine/tools/PanListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
