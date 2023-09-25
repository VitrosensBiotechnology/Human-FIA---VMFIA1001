.class public Lorg/achartengine/chart/TimeChart;
.super Lorg/achartengine/chart/LineChart;
.source "TimeChart.java"


# static fields
.field public static final DAY:J = 0x5265c00L

.field public static final TYPE:Ljava/lang/String; = "Time"


# instance fields
.field private mDateFormat:Ljava/lang/String;

.field private mStartPoint:Ljava/lang/Double;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lorg/achartengine/chart/LineChart;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V
    .locals 0
    .param p1, "dataset"    # Lorg/achartengine/model/XYMultipleSeriesDataset;
    .param p2, "renderer"    # Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    .line 54
    invoke-direct {p0, p1, p2}, Lorg/achartengine/chart/LineChart;-><init>(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    .line 55
    return-void
.end method

.method private getDateFormat(DD)Ljava/text/DateFormat;
    .locals 9
    .param p1, "start"    # D
    .param p3, "end"    # D

    .line 127
    iget-object v0, p0, Lorg/achartengine/chart/TimeChart;->mDateFormat:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 128
    const/4 v0, 0x0

    .line 130
    .local v0, "format":Ljava/text/SimpleDateFormat;
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lorg/achartengine/chart/TimeChart;->mDateFormat:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 131
    return-object v0

    .line 132
    :catch_0
    move-exception v1

    .line 136
    .end local v0    # "format":Ljava/text/SimpleDateFormat;
    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/text/SimpleDateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    .line 137
    .local v1, "format":Ljava/text/DateFormat;
    sub-double v2, p3, p1

    .line 138
    .local v2, "diff":D
    const-wide v4, 0x4194997000000000L    # 8.64E7

    cmpl-double v6, v2, v4

    if-lez v6, :cond_1

    const-wide v6, 0x41b9bfcc00000000L    # 4.32E8

    cmpg-double v8, v2, v6

    if-gez v8, :cond_1

    .line 139
    const/4 v0, 0x3

    invoke-static {v0, v0}, Ljava/text/SimpleDateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v1

    goto :goto_0

    .line 140
    :cond_1
    cmpg-double v6, v2, v4

    if-gez v6, :cond_2

    .line 141
    invoke-static {v0}, Ljava/text/SimpleDateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    .line 143
    :cond_2
    :goto_0
    return-object v1
.end method


# virtual methods
.method protected drawXLabels(Ljava/util/List;[Ljava/lang/Double;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIDDD)V
    .locals 21
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

    .line 94
    .local p1, "xLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v12, p4

    move/from16 v13, p7

    .line 94
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v10

    .line 95
    .local v10, "length":I
    if-lez v10, :cond_2

    .line 96
    iget-object v0, v14, Lorg/achartengine/chart/TimeChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowLabels()Z

    move-result v7

    .line 97
    .local v7, "showLabels":Z
    iget-object v0, v14, Lorg/achartengine/chart/TimeChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowGridY()Z

    move-result v8

    .line 98
    .local v8, "showGridY":Z
    const/4 v0, 0x0

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    add-int/lit8 v3, v10, -0x1

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-direct {v14, v1, v2, v3, v4}, Lorg/achartengine/chart/TimeChart;->getDateFormat(DD)Ljava/text/DateFormat;

    move-result-object v9

    .line 99
    .local v9, "format":Ljava/text/DateFormat;
    nop

    .line 99
    .local v0, "i":I
    :goto_0
    move v11, v0

    .line 99
    .end local v0    # "i":I
    .local v11, "i":I
    if-ge v11, v10, :cond_2

    .line 100
    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    .line 101
    .local v5, "label":J
    move/from16 v4, p5

    int-to-double v0, v4

    long-to-double v2, v5

    sub-double v2, v2, p10

    mul-double v2, v2, p8

    add-double/2addr v0, v2

    double-to-float v3, v0

    .line 102
    .local v3, "xLabel":F
    if-eqz v7, :cond_0

    .line 103
    iget-object v0, v14, Lorg/achartengine/chart/TimeChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsColor()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    int-to-float v2, v13

    int-to-float v0, v13

    iget-object v1, v14, Lorg/achartengine/chart/TimeChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsTextSize()F

    move-result v1

    const/high16 v16, 0x40400000    # 3.0f

    div-float v1, v1, v16

    add-float v17, v0, v1

    move-object/from16 v0, p3

    move v1, v3

    move/from16 v18, v3

    .line 104
    .end local v3    # "xLabel":F
    .local v18, "xLabel":F
    move/from16 v4, v17

    move/from16 v19, v10

    move/from16 v20, v11

    move-wide v10, v5

    move-object v5, v12

    .line 104
    .end local v5    # "label":J
    .end local v11    # "i":I
    .local v10, "label":J
    .local v19, "length":I
    .local v20, "i":I
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 106
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    int-to-float v0, v13

    iget-object v1, v14, Lorg/achartengine/chart/TimeChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsTextSize()F

    move-result v1

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v1, v3

    div-float v1, v1, v16

    add-float/2addr v0, v1

    iget-object v1, v14, Lorg/achartengine/chart/TimeChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsPadding()F

    move-result v1

    add-float v4, v0, v1

    iget-object v0, v14, Lorg/achartengine/chart/TimeChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsAngle()F

    move-result v6

    move-object v0, v14

    move-object/from16 v1, p3

    move/from16 v3, v18

    invoke-virtual/range {v0 .. v6}, Lorg/achartengine/chart/TimeChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    goto :goto_1

    .line 109
    .end local v18    # "xLabel":F
    .end local v19    # "length":I
    .end local v20    # "i":I
    .restart local v3    # "xLabel":F
    .restart local v5    # "label":J
    .local v10, "length":I
    .restart local v11    # "i":I
    :cond_0
    move/from16 v18, v3

    move/from16 v19, v10

    move/from16 v20, v11

    move-wide v10, v5

    .line 109
    .end local v3    # "xLabel":F
    .end local v5    # "label":J
    .end local v11    # "i":I
    .local v10, "label":J
    .restart local v18    # "xLabel":F
    .restart local v19    # "length":I
    .restart local v20    # "i":I
    :goto_1
    if-eqz v8, :cond_1

    .line 110
    iget-object v0, v14, Lorg/achartengine/chart/TimeChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getGridColor()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    int-to-float v2, v13

    move/from16 v6, p6

    int-to-float v4, v6

    move-object/from16 v0, p3

    move/from16 v1, v18

    move/from16 v3, v18

    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 111
    .end local v10    # "label":J
    .end local v18    # "xLabel":F
    goto :goto_2

    .line 99
    :cond_1
    move/from16 v6, p6

    :goto_2
    add-int/lit8 v0, v20, 0x1

    .line 99
    .end local v20    # "i":I
    .restart local v0    # "i":I
    move/from16 v10, v19

    goto/16 :goto_0

    .line 115
    .end local v0    # "i":I
    .end local v7    # "showLabels":Z
    .end local v8    # "showGridY":Z
    .end local v9    # "format":Ljava/text/DateFormat;
    .end local v19    # "length":I
    .local v10, "length":I
    :cond_2
    move/from16 v6, p6

    move/from16 v19, v10

    .line 115
    .end local v10    # "length":I
    .restart local v19    # "length":I
    const/4 v4, 0x1

    move-object v0, v14

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object v3, v12

    move/from16 v5, p5

    move/from16 v6, p6

    move v7, v13

    move-wide/from16 v8, p8

    move/from16 v16, v19

    move-wide/from16 v10, p10

    .line 115
    .end local v19    # "length":I
    .local v16, "length":I
    move-wide/from16 v12, p12

    invoke-virtual/range {v0 .. v13}, Lorg/achartengine/chart/TimeChart;->drawXTextLabels([Ljava/lang/Double;Landroid/graphics/Canvas;Landroid/graphics/Paint;ZIIIDDD)V

    .line 117
    return-void
.end method

.method public getChartType()Ljava/lang/String;
    .locals 1

    .line 152
    const-string v0, "Time"

    return-object v0
.end method

.method public getDateFormat()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/achartengine/chart/TimeChart;->mDateFormat:Ljava/lang/String;

    return-object v0
.end method

.method protected getXLabels(DDI)Ljava/util/List;
    .locals 17
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

    move-object/from16 v0, p0

    .line 157
    move/from16 v1, p5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    iget-object v3, v0, Lorg/achartengine/chart/TimeChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isXRoundedLabels()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_7

    .line 159
    iget-object v3, v0, Lorg/achartengine/chart/TimeChart;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    invoke-virtual {v3}, Lorg/achartengine/model/XYMultipleSeriesDataset;->getSeriesCount()I

    move-result v3

    if-lez v3, :cond_6

    .line 160
    iget-object v3, v0, Lorg/achartengine/chart/TimeChart;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    invoke-virtual {v3, v4}, Lorg/achartengine/model/XYMultipleSeriesDataset;->getSeriesAt(I)Lorg/achartengine/model/XYSeries;

    move-result-object v3

    .line 161
    .local v3, "series":Lorg/achartengine/model/XYSeries;
    invoke-virtual {v3}, Lorg/achartengine/model/XYSeries;->getItemCount()I

    move-result v5

    .line 162
    .local v5, "length":I
    const/4 v6, 0x0

    .line 163
    .local v6, "intervalLength":I
    const/4 v7, -0x1

    .line 164
    .local v7, "startIndex":I
    move v8, v7

    move v7, v6

    move v6, v4

    .line 164
    .local v6, "i":I
    .local v7, "intervalLength":I
    .local v8, "startIndex":I
    :goto_0
    if-ge v6, v5, :cond_1

    .line 165
    invoke-virtual {v3, v6}, Lorg/achartengine/model/XYSeries;->getX(I)D

    move-result-wide v9

    .line 166
    .local v9, "value":D
    cmpg-double v11, p1, v9

    if-gtz v11, :cond_0

    cmpg-double v11, v9, p3

    if-gtz v11, :cond_0

    .line 167
    add-int/lit8 v7, v7, 0x1

    .line 168
    if-gez v8, :cond_0

    .line 169
    move v8, v6

    .line 164
    .end local v9    # "value":D
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 173
    .end local v6    # "i":I
    :cond_1
    if-ge v7, v1, :cond_3

    .line 174
    move v4, v8

    .line 174
    .local v4, "i":I
    :goto_1
    add-int v6, v8, v7

    if-ge v4, v6, :cond_2

    .line 175
    invoke-virtual {v3, v4}, Lorg/achartengine/model/XYSeries;->getX(I)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 188
    .end local v4    # "i":I
    :cond_2
    move-object v13, v3

    goto :goto_4

    .line 178
    :cond_3
    int-to-float v6, v7

    int-to-float v9, v1

    div-float/2addr v6, v9

    .line 179
    .local v6, "step":F
    const/4 v9, 0x0

    .line 180
    .local v9, "intervalCount":I
    nop

    .line 180
    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v5, :cond_5

    if-ge v9, v1, :cond_5

    .line 181
    int-to-float v10, v4

    mul-float/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-virtual {v3, v10}, Lorg/achartengine/model/XYSeries;->getX(I)D

    move-result-wide v10

    .line 182
    .local v10, "value":D
    cmpg-double v12, p1, v10

    if-gtz v12, :cond_4

    cmpg-double v12, v10, p3

    if-gtz v12, :cond_4

    .line 183
    move-object v13, v3

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 183
    .end local v3    # "series":Lorg/achartengine/model/XYSeries;
    .local v13, "series":Lorg/achartengine/model/XYSeries;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    add-int/lit8 v9, v9, 0x1

    .line 184
    .end local v10    # "value":D
    goto :goto_3

    .line 180
    .end local v13    # "series":Lorg/achartengine/model/XYSeries;
    .restart local v3    # "series":Lorg/achartengine/model/XYSeries;
    :cond_4
    move-object v13, v3

    .line 180
    .end local v3    # "series":Lorg/achartengine/model/XYSeries;
    .restart local v13    # "series":Lorg/achartengine/model/XYSeries;
    :goto_3
    add-int/lit8 v4, v4, 0x1

    move-object v3, v13

    goto :goto_2

    .line 188
    .end local v4    # "i":I
    .end local v6    # "step":F
    .end local v9    # "intervalCount":I
    .end local v13    # "series":Lorg/achartengine/model/XYSeries;
    .restart local v3    # "series":Lorg/achartengine/model/XYSeries;
    :cond_5
    move-object v13, v3

    .line 188
    .end local v3    # "series":Lorg/achartengine/model/XYSeries;
    .restart local v13    # "series":Lorg/achartengine/model/XYSeries;
    :goto_4
    return-object v2

    .line 190
    .end local v5    # "length":I
    .end local v7    # "intervalLength":I
    .end local v8    # "startIndex":I
    .end local v13    # "series":Lorg/achartengine/model/XYSeries;
    :cond_6
    invoke-super/range {p0 .. p5}, Lorg/achartengine/chart/LineChart;->getXLabels(DDI)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 193
    :cond_7
    iget-object v3, v0, Lorg/achartengine/chart/TimeChart;->mStartPoint:Ljava/lang/Double;

    const-wide v5, 0x4194997000000000L    # 8.64E7

    if-nez v3, :cond_8

    .line 194
    rem-double v7, p1, v5

    sub-double v7, p1, v7

    add-double/2addr v7, v5

    new-instance v3, Ljava/util/Date;

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    invoke-direct {v3, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3}, Ljava/util/Date;->getTimezoneOffset()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3c

    mul-int/lit16 v3, v3, 0x3e8

    int-to-double v9, v3

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, v0, Lorg/achartengine/chart/TimeChart;->mStartPoint:Ljava/lang/Double;

    .line 197
    :cond_8
    const/16 v3, 0x19

    if-le v1, v3, :cond_9

    .line 198
    const/16 v1, 0x19

    .line 202
    .end local p5    # "count":I
    .local v1, "count":I
    :cond_9
    sub-double v7, p3, p1

    int-to-double v9, v1

    div-double/2addr v7, v9

    .line 203
    .local v7, "cycleMath":D
    const-wide/16 v9, 0x0

    cmpg-double v3, v7, v9

    if-gtz v3, :cond_a

    .line 204
    return-object v2

    .line 206
    :cond_a
    const-wide v9, 0x4194997000000000L    # 8.64E7

    .line 208
    .local v9, "cycle":D
    cmpg-double v3, v7, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    if-gtz v3, :cond_b

    .line 209
    :goto_5
    div-double v11, v9, v5

    cmpg-double v3, v7, v11

    if-gez v3, :cond_c

    .line 210
    div-double/2addr v9, v5

    goto :goto_5

    .line 213
    :cond_b
    :goto_6
    cmpl-double v3, v7, v9

    if-lez v3, :cond_c

    .line 214
    mul-double/2addr v9, v5

    goto :goto_6

    .line 218
    :cond_c
    iget-object v3, v0, Lorg/achartengine/chart/TimeChart;->mStartPoint:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    iget-object v3, v0, Lorg/achartengine/chart/TimeChart;->mStartPoint:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    sub-double v11, v11, p1

    move-wide v15, v5

    div-double v4, v11, v9

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    mul-double/2addr v3, v9

    sub-double v5, v15, v3

    .line 219
    .local v5, "val":D
    const/4 v14, 0x0

    .line 219
    .local v14, "i":I
    :goto_7
    move v3, v14

    .line 220
    .end local v14    # "i":I
    .local v3, "i":I
    cmpg-double v4, v5, p3

    if-gez v4, :cond_d

    add-int/lit8 v14, v3, 0x1

    .line 220
    .restart local v14    # "i":I
    if-gt v3, v1, :cond_e

    .line 221
    .end local v3    # "i":I
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    add-double/2addr v5, v9

    goto :goto_7

    .line 225
    .end local v14    # "i":I
    .restart local v3    # "i":I
    :cond_d
    move v14, v3

    .line 225
    .end local v3    # "i":I
    .restart local v14    # "i":I
    :cond_e
    return-object v2
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lorg/achartengine/chart/TimeChart;->mDateFormat:Ljava/lang/String;

    .line 75
    return-void
.end method
