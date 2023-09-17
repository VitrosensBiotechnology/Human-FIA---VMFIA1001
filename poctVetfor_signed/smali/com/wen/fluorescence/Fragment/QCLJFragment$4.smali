.class Lcom/wen/fluorescence/Fragment/QCLJFragment$4;
.super Ljava/lang/Object;
.source "QCLJFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/Fragment/QCLJFragment;
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

    .line 422
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/QCLJFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .line 425
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c0149

    const v2, 0x7f0c012e

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 427
    :sswitch_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/QCLJFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->access$000(Lcom/wen/fluorescence/Fragment/QCLJFragment;)Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->setPrevPointClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/QCLJFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->access$000(Lcom/wen/fluorescence/Fragment/QCLJFragment;)Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->getSelectPoint()Ljava/lang/String;

    move-result-object v0

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-int v0, v4

    .line 430
    .local v0, "x":I
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/QCLJFragment;

    invoke-static {v4}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->access$100(Lcom/wen/fluorescence/Fragment/QCLJFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v4}, Lcom/wen/fluorescence/database/TestResult;->getTestTime()Ljava/lang/String;

    move-result-object v4

    const-string v5, "yyyy-MM-dd"

    invoke-static {v4, v5}, Lcom/wen/fluorescence/util/DateUtils;->string2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    const-string v5, "yyyy-MM-dd"

    invoke-static {v4, v5}, Lcom/wen/fluorescence/util/DateUtils;->date2String(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 431
    .local v4, "dateTime":Ljava/lang/String;
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/QCLJFragment;

    invoke-static {v5}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->access$000(Lcom/wen/fluorescence/Fragment/QCLJFragment;)Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->getSelectPoint()Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v3, v5, v3

    .line 432
    .local v3, "value":Ljava/lang/String;
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/QCLJFragment;

    invoke-static {v5}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->access$200(Lcom/wen/fluorescence/Fragment/QCLJFragment;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/QCLJFragment;

    invoke-virtual {v7, v2}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/QCLJFragment;

    invoke-virtual {v2, v1}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    .end local v0    # "x":I
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "dateTime":Ljava/lang/String;
    goto/16 :goto_0

    .line 436
    :sswitch_1
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/QCLJFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->access$000(Lcom/wen/fluorescence/Fragment/QCLJFragment;)Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->setNextPointClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/QCLJFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->access$000(Lcom/wen/fluorescence/Fragment/QCLJFragment;)Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->getSelectPoint()Ljava/lang/String;

    move-result-object v0

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-int v0, v4

    .line 439
    .restart local v0    # "x":I
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/QCLJFragment;

    invoke-static {v4}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->access$100(Lcom/wen/fluorescence/Fragment/QCLJFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v4}, Lcom/wen/fluorescence/database/TestResult;->getTestTime()Ljava/lang/String;

    move-result-object v4

    const-string v5, "yyyy-MM-dd"

    invoke-static {v4, v5}, Lcom/wen/fluorescence/util/DateUtils;->string2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    const-string v5, "yyyy-MM-dd"

    invoke-static {v4, v5}, Lcom/wen/fluorescence/util/DateUtils;->date2String(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 440
    .restart local v4    # "dateTime":Ljava/lang/String;
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/QCLJFragment;

    invoke-static {v5}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->access$000(Lcom/wen/fluorescence/Fragment/QCLJFragment;)Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->getSelectPoint()Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v3, v5, v3

    .line 441
    .restart local v3    # "value":Ljava/lang/String;
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/QCLJFragment;

    invoke-static {v5}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->access$200(Lcom/wen/fluorescence/Fragment/QCLJFragment;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/QCLJFragment;

    invoke-virtual {v7, v2}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/QCLJFragment;

    invoke-virtual {v2, v1}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    .end local v0    # "x":I
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "dateTime":Ljava/lang/String;
    goto :goto_0

    .line 445
    :sswitch_2
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/QCLJFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->access$700(Lcom/wen/fluorescence/Fragment/QCLJFragment;)V

    .line 446
    goto :goto_0

    .line 448
    :sswitch_3
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/QCLJFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->access$800(Lcom/wen/fluorescence/Fragment/QCLJFragment;)V

    .line 451
    :cond_0
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f080046 -> :sswitch_3
        0x7f080050 -> :sswitch_2
        0x7f080056 -> :sswitch_1
        0x7f080057 -> :sswitch_0
    .end sparse-switch
.end method
