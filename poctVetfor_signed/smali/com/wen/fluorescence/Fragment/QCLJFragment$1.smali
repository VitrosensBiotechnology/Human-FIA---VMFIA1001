.class Lcom/wen/fluorescence/Fragment/QCLJFragment$1;
.super Ljava/lang/Object;
.source "QCLJFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/QCLJFragment;->startChart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/QCLJFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/QCLJFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/QCLJFragment;

    .line 300
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCLJFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .line 303
    move-object v0, p1

    check-cast v0, Lorg/achartengine/GraphicalView;

    .line 304
    .local v0, "gv":Lorg/achartengine/GraphicalView;
    invoke-virtual {v0}, Lorg/achartengine/GraphicalView;->getCurrentSeriesAndPoint()Lorg/achartengine/model/SeriesSelection;

    move-result-object v1

    .line 306
    .local v1, "ss":Lorg/achartengine/model/SeriesSelection;
    if-nez v1, :cond_0

    .line 307
    return-void

    .line 309
    :cond_0
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCLJFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->access$000(Lcom/wen/fluorescence/Fragment/QCLJFragment;)Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/achartengine/model/SeriesSelection;->getXValue()D

    move-result-wide v3

    invoke-virtual {v1}, Lorg/achartengine/model/SeriesSelection;->getValue()D

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->clickPoint(DD)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 310
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCLJFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->access$000(Lcom/wen/fluorescence/Fragment/QCLJFragment;)Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->getSelectPoint()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-int v2, v2

    .line 311
    .local v2, "x":I
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCLJFragment;

    invoke-static {v3}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->access$100(Lcom/wen/fluorescence/Fragment/QCLJFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v3}, Lcom/wen/fluorescence/database/TestResult;->getTestTime()Ljava/lang/String;

    move-result-object v3

    const-string v4, "yyyy-MM-dd"

    invoke-static {v3, v4}, Lcom/wen/fluorescence/util/DateUtils;->string2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    const-string v4, "yyyy-MM-dd"

    invoke-static {v3, v4}, Lcom/wen/fluorescence/util/DateUtils;->date2String(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 312
    .local v3, "dateTime":Ljava/lang/String;
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCLJFragment;

    invoke-static {v4}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->access$000(Lcom/wen/fluorescence/Fragment/QCLJFragment;)Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->getSelectPoint()Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    .line 313
    .local v4, "value":Ljava/lang/String;
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCLJFragment;

    invoke-static {v5}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->access$200(Lcom/wen/fluorescence/Fragment/QCLJFragment;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCLJFragment;

    const v8, 0x7f0c012e

    invoke-virtual {v7, v8}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCLJFragment;

    const v8, 0x7f0c0149

    invoke-virtual {v7, v8}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    .end local v2    # "x":I
    .end local v3    # "dateTime":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_1
    return-void
.end method
