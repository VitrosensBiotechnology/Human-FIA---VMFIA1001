.class Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$11;
.super Landroid/os/Handler;
.source "SystemAdvancedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    .line 551
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$11;->this$0:Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 554
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 555
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x100

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x105

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$11;->this$0:Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->access$600(Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 557
    :cond_1
    new-instance v0, Lcom/wen/fluorescence/ViewUtil/MyChartBuilder;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$11;->this$0:Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    invoke-virtual {v1}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$11;->this$0:Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    iget-object v3, v3, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->arrayData:[I

    invoke-direct {v0, v1, v3}, Lcom/wen/fluorescence/ViewUtil/MyChartBuilder;-><init>(Landroid/content/Context;[I)V

    .line 559
    .local v0, "chartBuilder":Lcom/wen/fluorescence/ViewUtil/MyChartBuilder;
    nop

    .line 560
    invoke-virtual {v0}, Lcom/wen/fluorescence/ViewUtil/MyChartBuilder;->getDataSetInstance()Lorg/achartengine/model/XYMultipleSeriesDataset;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/ViewUtil/MyChartBuilder;->initData(Lorg/achartengine/model/XYMultipleSeriesDataset;)V

    .line 561
    nop

    .line 562
    invoke-virtual {v0}, Lcom/wen/fluorescence/ViewUtil/MyChartBuilder;->getRenderInstance()Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-result-object v1

    .line 561
    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/ViewUtil/MyChartBuilder;->initRender(Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    .line 563
    new-instance v1, Lcom/wen/fluorescence/ViewUtil/MyCustomDialog;

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$11;->this$0:Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    invoke-virtual {v3}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v0}, Lcom/wen/fluorescence/ViewUtil/MyChartBuilder;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0d0160

    invoke-direct {v1, v3, v4, v5}, Lcom/wen/fluorescence/ViewUtil/MyCustomDialog;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    .line 565
    .local v1, "dialog":Lcom/wen/fluorescence/ViewUtil/MyCustomDialog;
    const/16 v3, 0x226

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/ViewUtil/MyCustomDialog;->setHeight(I)V

    .line 566
    const/16 v3, 0x2d0

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/ViewUtil/MyCustomDialog;->setWidth(I)V

    .line 567
    invoke-virtual {v1}, Lcom/wen/fluorescence/ViewUtil/MyCustomDialog;->show()V

    .line 568
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$11;->this$0:Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    invoke-static {v3}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->access$600(Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 570
    .end local v0    # "chartBuilder":Lcom/wen/fluorescence/ViewUtil/MyChartBuilder;
    .end local v1    # "dialog":Lcom/wen/fluorescence/ViewUtil/MyCustomDialog;
    nop

    .line 576
    :goto_0
    return-void
.end method
