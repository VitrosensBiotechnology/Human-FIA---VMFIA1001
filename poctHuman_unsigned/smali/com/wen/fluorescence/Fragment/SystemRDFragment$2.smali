.class Lcom/wen/fluorescence/Fragment/SystemRDFragment$2;
.super Landroid/os/Handler;
.source "SystemRDFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/Fragment/SystemRDFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    .line 70
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 73
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 74
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 142
    :pswitch_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->access$900(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "start collecting..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->getLightData()V

    goto/16 :goto_4

    .line 76
    :pswitch_1
    new-instance v0, Lcom/wen/fluorescence/ViewUtil/MyChartBuilder;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    invoke-virtual {v1}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    .line 77
    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->access$100(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)[I

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/wen/fluorescence/ViewUtil/MyChartBuilder;-><init>(Landroid/content/Context;[I)V

    .line 78
    .local v0, "chartBuilder":Lcom/wen/fluorescence/ViewUtil/MyChartBuilder;
    nop

    .line 79
    invoke-virtual {v0}, Lcom/wen/fluorescence/ViewUtil/MyChartBuilder;->getDataSetInstance()Lorg/achartengine/model/XYMultipleSeriesDataset;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/ViewUtil/MyChartBuilder;->initData(Lorg/achartengine/model/XYMultipleSeriesDataset;)V

    .line 80
    nop

    .line 81
    invoke-virtual {v0}, Lcom/wen/fluorescence/ViewUtil/MyChartBuilder;->getRenderInstance()Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/ViewUtil/MyChartBuilder;->initRender(Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    .line 82
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->access$200(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->access$200(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->access$200(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0}, Lcom/wen/fluorescence/ViewUtil/MyChartBuilder;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 86
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->access$400(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    invoke-static {v3}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->access$300(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const/4 v1, 0x1

    .line 89
    .local v1, "bZero":Z
    const/4 v2, 0x1

    .line 90
    .local v2, "bMax":Z
    const/4 v3, 0x0

    .line 90
    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    invoke-static {v4}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->access$100(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)[I

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_4

    .line 91
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    invoke-static {v4}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->access$100(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)[I

    move-result-object v4

    aget v4, v4, v3

    if-eqz v4, :cond_1

    .line 92
    const/4 v1, 0x0

    .line 94
    :cond_1
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    invoke-static {v4}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->access$100(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)[I

    move-result-object v4

    aget v4, v4, v3

    const v5, 0xffff

    if-eq v4, v5, :cond_2

    .line 95
    const/4 v2, 0x0

    .line 97
    :cond_2
    if-nez v1, :cond_3

    if-nez v2, :cond_3

    .line 98
    goto :goto_1

    .line 90
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 101
    .end local v3    # "i":I
    :cond_4
    :goto_1
    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 102
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    invoke-virtual {v4}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "\u8b66\u544a\uff1a\u66f2\u7ebf\u5168\u4e3a0\uff01"

    invoke-static {v4, v5, v3}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 103
    new-instance v3, Lcom/wen/fluorescence/printer/Printer;

    invoke-direct {v3}, Lcom/wen/fluorescence/printer/Printer;-><init>()V

    .line 104
    .local v3, "printer":Lcom/wen/fluorescence/printer/Printer;
    invoke-virtual {v3}, Lcom/wen/fluorescence/printer/Printer;->printerZero()V

    .line 105
    return-void

    .line 107
    .end local v3    # "printer":Lcom/wen/fluorescence/printer/Printer;
    :cond_5
    if-eqz v2, :cond_6

    .line 108
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    invoke-virtual {v4}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "\u8b66\u544a\uff1a\u66f2\u7ebf\u5168\u4e3a65535\uff01"

    invoke-static {v4, v5, v3}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 109
    new-instance v3, Lcom/wen/fluorescence/printer/Printer;

    invoke-direct {v3}, Lcom/wen/fluorescence/printer/Printer;-><init>()V

    .line 110
    .restart local v3    # "printer":Lcom/wen/fluorescence/printer/Printer;
    invoke-virtual {v3}, Lcom/wen/fluorescence/printer/Printer;->printerMax()V

    .line 111
    return-void

    .line 114
    .end local v3    # "printer":Lcom/wen/fluorescence/printer/Printer;
    :cond_6
    :try_start_0
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    invoke-static {v4}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->access$300(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)I

    move-result v4

    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    invoke-static {v5}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->access$500(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-lt v4, v5, :cond_7

    .line 115
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    invoke-static {v4}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->access$600(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)Landroid/widget/Button;

    move-result-object v4

    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    const v6, 0x7f0c017b

    invoke-virtual {v5, v6}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    invoke-virtual {v4}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "\u8001\u5316\u5b8c\u6210\uff01"

    invoke-static {v4, v5, v3}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 118
    :cond_7
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    invoke-static {v3}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->access$600(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    const v5, 0x7f0c017f

    invoke-virtual {v4, v5}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 120
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    invoke-static {v3}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->access$700(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0x101

    if-nez v3, :cond_8

    .line 121
    const/16 v3, 0xc8

    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    .line 122
    invoke-static {v5}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->access$700(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    add-int/2addr v3, v5

    int-to-long v5, v3

    .line 121
    invoke-virtual {p0, v4, v5, v6}, Lcom/wen/fluorescence/Fragment/SystemRDFragment$2;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 124
    :cond_8
    const-wide/16 v5, 0xc8

    invoke-virtual {p0, v4, v5, v6}, Lcom/wen/fluorescence/Fragment/SystemRDFragment$2;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_9
    :goto_2
    goto :goto_3

    .line 127
    :catch_0
    move-exception v3

    .line 128
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 131
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_3
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    invoke-static {v3}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->access$800(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 132
    new-instance v3, Lcom/wen/fluorescence/database/TestResult;

    invoke-direct {v3}, Lcom/wen/fluorescence/database/TestResult;-><init>()V

    .line 133
    .local v3, "result":Lcom/wen/fluorescence/database/TestResult;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    invoke-static {v5}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->access$300(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/TestResult;->setResult(Ljava/lang/String;)V

    .line 134
    const-string v4, "PCT"

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/TestResult;->setItem(Ljava/lang/String;)V

    .line 135
    const-string v4, "ng/ml"

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/TestResult;->setUnit(Ljava/lang/String;)V

    .line 136
    const-string v4, "RD"

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/TestResult;->setName(Ljava/lang/String;)V

    .line 137
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    invoke-virtual {v4}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/wen/fluorescence/Thread/PrinterThread;->getPrinterThread(Landroid/content/Context;)Lcom/wen/fluorescence/Thread/PrinterThread;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/wen/fluorescence/Thread/PrinterThread;->addPrinter(Lcom/wen/fluorescence/database/TestResult;)V

    .line 140
    .end local v0    # "chartBuilder":Lcom/wen/fluorescence/ViewUtil/MyChartBuilder;
    .end local v1    # "bZero":Z
    .end local v2    # "bMax":Z
    .end local v3    # "result":Lcom/wen/fluorescence/database/TestResult;
    :cond_a
    nop

    .line 147
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
