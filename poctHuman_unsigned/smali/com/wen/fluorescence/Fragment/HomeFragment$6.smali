.class Lcom/wen/fluorescence/Fragment/HomeFragment$6;
.super Lcom/wen/fluorescence/util/MyOnClickListener;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/Fragment/HomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/HomeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;

    .line 590
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .line 593
    invoke-super {p0, p1}, Lcom/wen/fluorescence/util/MyOnClickListener;->onClick(Landroid/view/View;)V

    .line 595
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/Global;->getTestStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    const v2, 0x7f0c0120

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 597
    return-void

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$1900(Lcom/wen/fluorescence/Fragment/HomeFragment;)V

    .line 600
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    .line 608
    :sswitch_0
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 609
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$2000(Lcom/wen/fluorescence/Fragment/HomeFragment;)V

    goto :goto_1

    .line 611
    :cond_1
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$100(Lcom/wen/fluorescence/Fragment/HomeFragment;)V

    .line 613
    goto :goto_1

    .line 615
    :sswitch_1
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$2100(Lcom/wen/fluorescence/Fragment/HomeFragment;)V

    .line 616
    goto :goto_1

    .line 630
    :sswitch_2
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$2500(Lcom/wen/fluorescence/Fragment/HomeFragment;)V

    goto :goto_1

    .line 618
    :sswitch_3
    const/4 v0, 0x0

    .line 618
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$2200(Lcom/wen/fluorescence/Fragment/HomeFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 619
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-virtual {v1}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/wen/fluorescence/Thread/PrinterThread;->getPrinterThread(Landroid/content/Context;)Lcom/wen/fluorescence/Thread/PrinterThread;

    move-result-object v1

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$2200(Lcom/wen/fluorescence/Fragment/HomeFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/Thread/PrinterThread;->addPrinter(Lcom/wen/fluorescence/database/TestResult;)V

    .line 618
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 621
    .end local v0    # "i":I
    :cond_2
    goto :goto_1

    .line 623
    :sswitch_4
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/Global;->getSoftType()I

    move-result v0

    if-nez v0, :cond_3

    .line 624
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$2300(Lcom/wen/fluorescence/Fragment/HomeFragment;)V

    goto :goto_1

    .line 626
    :cond_3
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$2400(Lcom/wen/fluorescence/Fragment/HomeFragment;)V

    .line 628
    goto :goto_1

    .line 605
    :sswitch_5
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->setCardOut()V

    .line 606
    goto :goto_1

    .line 602
    :sswitch_6
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->setCardIn()V

    .line 603
    nop

    .line 633
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f08003c -> :sswitch_6
        0x7f08003d -> :sswitch_5
        0x7f08005a -> :sswitch_4
        0x7f080069 -> :sswitch_3
        0x7f08006e -> :sswitch_2
        0x7f08006f -> :sswitch_1
        0x7f080081 -> :sswitch_0
    .end sparse-switch
.end method
