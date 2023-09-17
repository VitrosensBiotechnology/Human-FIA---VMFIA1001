.class public Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;
.super Landroid/support/v4/app/Fragment;
.source "SystemCheckOutFragment.java"


# instance fields
.field private btnCancel:Landroid/widget/Button;

.field private btnCardIn:Landroid/widget/Button;

.field private btnCardOut:Landroid/widget/Button;

.field private btnEnableLanguage:Landroid/widget/Button;

.field private btnExit:Landroid/widget/Button;

.field private btnNext:Landroid/widget/Button;

.field private btnStartCheckOut:Landroid/widget/Button;

.field private btnStopCheckOut:Landroid/widget/Button;

.field private etDeviceID:Landroid/widget/EditText;

.field private iCodeIndex:I

.field private iStep:I

.field private isCheckOutAll:Z

.field private isHandSetHead:Z

.field private isStopCheckOut:Z

.field listener:Landroid/view/View$OnClickListener;

.field private row:I

.field private tableLayout:Landroid/widget/TableLayout;

.field private tvContent:Landroid/widget/TextView;

.field private tvTittle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 41
    const/16 v0, 0x8

    iput v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->row:I

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->isCheckOutAll:Z

    .line 43
    iput-boolean v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->isHandSetHead:Z

    .line 44
    iput-boolean v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->isStopCheckOut:Z

    .line 51
    iput v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->iStep:I

    .line 207
    new-instance v1, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment$5;

    invoke-direct {v1, p0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment$5;-><init>(Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;)V

    iput-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->listener:Landroid/view/View$OnClickListener;

    .line 557
    iput v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->iCodeIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->setCheckOutStatus(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;

    .line 37
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->tvContent:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;
    .param p1, "x1"    # Z

    .line 37
    iput-boolean p1, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->isHandSetHead:Z

    return p1
.end method

.method static synthetic access$300(Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;

    .line 37
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->etDeviceID:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;

    .line 37
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->startCheckOut()V

    return-void
.end method

.method static synthetic access$500(Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;

    .line 37
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->stopCheckOut()V

    return-void
.end method

.method static synthetic access$600(Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;

    .line 37
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->dealButtonNext()V

    return-void
.end method

.method static synthetic access$700(Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;

    .line 37
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->dealButtonCancel()V

    return-void
.end method

.method static synthetic access$800(Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 37
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->dealButtonCheckOutClick(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;

    .line 37
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->exitSystem()V

    return-void
.end method

.method private checkEthertNet()V
    .locals 2

    .line 623
    const-string v0, "\u4ee5\u592a\u7f51\u529f\u80fd\u68c0\u9a8c"

    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->setCheckOutStatus(Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->tvContent:Landroid/widget/TextView;

    const-string v1, "\u8bf7\u63d2\u5165\u7f51\u7ebf\uff0c\u5e76\u70b9\u51fb\'\u786e\u5b9a\'"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 625
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->btnNext:Landroid/widget/Button;

    const-string v1, "\u786e\u5b9a"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 626
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->btnCancel:Landroid/widget/Button;

    const-string v1, "\u53d6\u6d88"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 627
    return-void
.end method

.method private checkFan()V
    .locals 2

    .line 546
    const-string v0, "\u98ce\u6247\u529f\u80fd\u68c0\u9a8c"

    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->setCheckOutStatus(Ljava/lang/String;)V

    .line 547
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/wen/fluorescence/serialport/Protocol;->setFanSwitch(Z)V

    .line 548
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->tvContent:Landroid/widget/TextView;

    const-string v1, "\u98ce\u6247\u662f\u5426\u5df2\u7ecf\u6253\u5f00\uff1f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->btnNext:Landroid/widget/Button;

    const-string v1, "\u662f"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 550
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->btnCancel:Landroid/widget/Button;

    const-string v1, "\u5426"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 551
    return-void
.end method

.method private checkPrinter()V
    .locals 2

    .line 634
    const-string v0, "\u6253\u5370\u529f\u80fd\u9a8c\u8bc1"

    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->setCheckOutStatus(Ljava/lang/String;)V

    .line 635
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/Thread/PrinterThread;->getPrinterThread(Landroid/content/Context;)Lcom/wen/fluorescence/Thread/PrinterThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/Thread/PrinterThread;->testPrinter()V

    .line 636
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->tvContent:Landroid/widget/TextView;

    const-string v1, "\u6253\u5370\u673a\u662f\u5426\u6b63\u5e38\u5de5\u4f5c\uff1f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 637
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->btnNext:Landroid/widget/Button;

    const-string v1, "\u662f"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 638
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->btnCancel:Landroid/widget/Button;

    const-string v1, "\u5426"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 639
    return-void
.end method

.method private checkReadIDChip()V
    .locals 3

    .line 534
    const-string v0, "ID\u5361\u8bfb\u53d6\u529f\u80fd\u68c0\u9a8c"

    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->setCheckOutStatus(Ljava/lang/String;)V

    .line 535
    const-string v0, "\u8bf7\u63d2\u5165ID\u82af\u7247\uff0c\u7136\u540e\u8fdb\u884c\u70b9\u51fb\u2018\u786e\u5b9a\u2019"

    .line 536
    .local v0, "content":Ljava/lang/String;
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->btnNext:Landroid/widget/Button;

    const-string v2, "\u786e\u5b9a"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 538
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->btnCancel:Landroid/widget/Button;

    const-string v2, "\u53d6\u6d88"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 539
    return-void
.end method

.method private checkScanBarCode()V
    .locals 3

    .line 560
    const-string v0, "\u626b\u7801\u529f\u80fd\u68c0\u9a8c"

    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->setCheckOutStatus(Ljava/lang/String;)V

    .line 561
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->tvContent:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bf7\u63d2\u5165\u7b2c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->iCodeIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u5f20\u5361,\u7136\u540e\u70b9\u51fb\u2018\u786e\u5b9a\u2019"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 562
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->btnNext:Landroid/widget/Button;

    const-string v1, "\u786e\u5b9a"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 563
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->btnCancel:Landroid/widget/Button;

    const-string v1, "\u53d6\u6d88"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 564
    return-void
.end method

.method private checkSelfTest()V
    .locals 2

    .line 600
    const-string v0, "\u81ea\u68c0\u529f\u80fd\u68c0\u9a8c"

    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->setCheckOutStatus(Ljava/lang/String;)V

    .line 601
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->tvContent:Landroid/widget/TextView;

    const-string v1, "\u8bf7\u63d2\u5165\u81ea\u68c0\u5361\uff0c\u7136\u540e\u70b9\u51fb\u2018\u786e\u8ba4\u2019..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 602
    return-void
.end method

.method private continueCheckOut()V
    .locals 2

    .line 446
    iget-boolean v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->isCheckOutAll:Z

    if-nez v0, :cond_0

    .line 447
    return-void

    .line 449
    :cond_0
    iget-boolean v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->isStopCheckOut:Z

    if-eqz v0, :cond_1

    .line 450
    return-void

    .line 452
    :cond_1
    iget v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->iStep:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->iStep:I

    .line 453
    iget v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->iStep:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 476
    :pswitch_0
    const-string v0, "\u6e29\u63a7\u529f\u80fd\u68c0\u9a8c"

    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->setCheckOutStatus(Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->tvContent:Landroid/widget/TextView;

    const-string v1, "\u52a0\u70ed\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 473
    :pswitch_1
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->checkPrinter()V

    .line 474
    goto :goto_0

    .line 468
    :pswitch_2
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->checkEthertNet()V

    .line 469
    goto :goto_0

    .line 465
    :pswitch_3
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->checkSelfTest()V

    .line 466
    goto :goto_0

    .line 461
    :pswitch_4
    const/4 v0, 0x0

    iput v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->iCodeIndex:I

    .line 462
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->checkScanBarCode()V

    .line 463
    goto :goto_0

    .line 458
    :pswitch_5
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->checkFan()V

    .line 459
    goto :goto_0

    .line 455
    :pswitch_6
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->checkReadIDChip()V

    .line 456
    nop

    .line 480
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private dealButtonCancel()V
    .locals 3

    .line 380
    iget v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->iStep:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 381
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->tvContent:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    :cond_0
    iget v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->iStep:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 392
    :pswitch_0
    iget v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->iStep:I

    invoke-direct {p0, v0, v1}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->setCheckOutResult(II)V

    .line 393
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->continueCheckOut()V

    .line 397
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private dealButtonCheckOutClick(Ljava/lang/Object;)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/Object;

    .line 264
    if-nez p1, :cond_0

    .line 265
    return-void

    .line 267
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->isCheckOutAll:Z

    .line 268
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 269
    .local v1, "iTag":I
    iput v1, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->iStep:I

    .line 271
    invoke-direct {p0, v1, v0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->setCheckOutResult(II)V

    .line 272
    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 312
    :pswitch_0
    const-string v0, "\u6e29\u63a7\u529f\u80fd"

    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->setCheckOutStatus(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->tvContent:Landroid/widget/TextView;

    const-string v3, "\u6e29\u63a7\u529f\u80fd\u9a8c\u8bc1\u4e2d"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    invoke-static {v2}, Lcom/wen/fluorescence/serialport/Protocol;->setHeadSwitch(Z)V

    .line 315
    iput-boolean v2, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->isHandSetHead:Z

    .line 316
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v2, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment$7;

    invoke-direct {v2, p0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment$7;-><init>(Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 309
    :pswitch_1
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->checkPrinter()V

    .line 310
    goto :goto_0

    .line 306
    :pswitch_2
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->checkEthertNet()V

    .line 307
    goto :goto_0

    .line 301
    :pswitch_3
    const-string v0, "\u81ea\u68c0\u529f\u80fd\u68c0\u9a8c"

    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->setCheckOutStatus(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->tvContent:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->getLightData()V

    .line 304
    goto :goto_0

    .line 295
    :pswitch_4
    const-string v2, "\u626b\u7801\u9a8c\u8bc1"

    invoke-direct {p0, v2}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->setCheckOutStatus(Ljava/lang/String;)V

    .line 296
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->tvContent:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iput v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->iCodeIndex:I

    .line 298
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->getReagentInfo()V

    .line 299
    goto :goto_0

    .line 292
    :pswitch_5
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->checkFan()V

    .line 293
    goto :goto_0

    .line 278
    :pswitch_6
    const-string v3, "ID\u5361\u8bfb\u53d6\u529f\u80fd"

    invoke-direct {p0, v3}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->setCheckOutStatus(Ljava/lang/String;)V

    .line 279
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->tvContent:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/wen/fluorescence/Thread/TestThread;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/Thread/TestThread;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/wen/fluorescence/Thread/TestThread;->readIDChip(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 281
    const-string v0, "ID\u82af\u7247\u8bfb\u53d6\u5931\u8d25\uff0c\u8bf7\u63d2\u5165ID\u82af\u7247\u540e\u91cd\u8bd5\uff01"

    .line 282
    .local v0, "content":Ljava/lang/String;
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->setCheckOutResult(II)V

    .line 285
    .end local v0    # "content":Ljava/lang/String;
    goto :goto_0

    .line 288
    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->setCheckOutResult(II)V

    .line 290
    goto :goto_0

    .line 274
    :pswitch_7
    const-string v0, "\u7248\u672c\u53f7\u67e5\u8be2"

    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->setCheckOutStatus(Ljava/lang/String;)V

    .line 275
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->getVersion()V

    .line 276
    nop

    .line 324
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private dealButtonNext()V
    .locals 3

    .line 328
    iget v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->iStep:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 373
    :pswitch_0
    iget v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->iStep:I

    invoke-direct {p0, v0, v1}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->setCheckOutResult(II)V

    .line 374
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->continueCheckOut()V

    goto :goto_0

    .line 362
    :pswitch_1
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/util/NetUtil;->isNetworkConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->tvContent:Landroid/widget/TextView;

    const-string v1, "\u7f51\u7edc\u672a\u8fde\u63a5\uff0c\u8bf7\u63d2\u5165\u7f51\u7ebf\uff0c\n\u5e76\u70b9\u51fb\u2018\u786e\u5b9a\u2019\u7ee7\u7eed\u68c0\u9a8c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 366
    :cond_0
    iget v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->iStep:I

    invoke-direct {p0, v0, v1}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->setCheckOutResult(II)V

    .line 367
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->continueCheckOut()V

    .line 370
    goto :goto_0

    .line 358
    :pswitch_2
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->getLightData()V

    .line 360
    goto :goto_0

    .line 354
    :pswitch_3
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->getReagentInfo()V

    .line 356
    goto :goto_0

    .line 349
    :pswitch_4
    iget v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->iStep:I

    invoke-direct {p0, v0, v1}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->setCheckOutResult(II)V

    .line 350
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->continueCheckOut()V

    .line 352
    goto :goto_0

    .line 336
    :pswitch_5
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/Thread/TestThread;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/Thread/TestThread;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/wen/fluorescence/Thread/TestThread;->readIDChip(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 337
    const-string v0, "ID\u82af\u7247\u8bfb\u53d6\u5931\u8d25\uff0c\u8bf7\u63d2\u5165ID\u82af\u7247\u540e\u91cd\u8bd5\uff01"

    .line 338
    .local v0, "content":Ljava/lang/String;
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    .end local v0    # "content":Ljava/lang/String;
    goto :goto_0

    .line 342
    :cond_1
    iget v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->iStep:I

    invoke-direct {p0, v0, v1}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->setCheckOutResult(II)V

    .line 343
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->continueCheckOut()V

    .line 346
    goto :goto_0

    .line 331
    :pswitch_6
    iget v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->iStep:I

    invoke-direct {p0, v0, v1}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->setCheckOutResult(II)V

    .line 332
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->continueCheckOut()V

    .line 334
    nop

    .line 377
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private exitSystem()V
    .locals 3

    .line 244
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c018c

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment$6;

    invoke-direct {v2, p0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment$6;-><init>(Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;)V

    invoke-static {v0, v1, v2}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 256
    return-void
.end method

.method private getImageView(I)Landroid/widget/ImageView;
    .locals 2
    .param p1, "index"    # I

    .line 483
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v0, p1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080111

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private getTextView(I)Landroid/widget/TextView;
    .locals 2
    .param p1, "index"    # I

    .line 487
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v0, p1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080234

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private initView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 77
    const v0, 0x7f0801d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->tableLayout:Landroid/widget/TableLayout;

    .line 78
    const v0, 0x7f080080

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->btnStartCheckOut:Landroid/widget/Button;

    .line 79
    const v0, 0x7f080082

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->btnStopCheckOut:Landroid/widget/Button;

    .line 80
    const v0, 0x7f0801f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->tvContent:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f08025b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->tvTittle:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f080063

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->btnNext:Landroid/widget/Button;

    .line 83
    const v0, 0x7f08003b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->btnCancel:Landroid/widget/Button;

    .line 84
    const v0, 0x7f08003c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->btnCardIn:Landroid/widget/Button;

    .line 85
    const v0, 0x7f08003d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->btnCardOut:Landroid/widget/Button;

    .line 86
    const v0, 0x7f08004c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->btnExit:Landroid/widget/Button;

    .line 87
    const v0, 0x7f0800ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->etDeviceID:Landroid/widget/EditText;

    .line 88
    const v0, 0x7f08004a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->btnEnableLanguage:Landroid/widget/Button;

    .line 89
    return-void
.end method

.method private setCheckOutResult(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "statues"    # I

    .line 491
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 501
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0700ab

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 502
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "NG"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 497
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0700aa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 498
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    goto :goto_0

    .line 493
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0700ac

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 494
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "--"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    nop

    .line 505
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setCheckOutStatus(Ljava/lang/String;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/String;

    .line 438
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->tvTittle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    return-void
.end method

.method private setViewIncident()V
    .locals 10

    .line 93
    const/4 v0, 0x0

    move v1, v0

    .line 93
    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->row:I

    if-ge v1, v2, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0a005c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 95
    .local v2, "tableRow":Landroid/view/View;
    const v3, 0x7f0801fe

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 96
    .local v3, "tvFunction":Landroid/widget/TextView;
    const v4, 0x7f080111

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 97
    .local v4, "ivStatus":Landroid/widget/ImageView;
    const v5, 0x7f08003f

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 98
    .local v5, "btnCheckOut":Landroid/widget/Button;
    const v6, 0x7f080071

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 99
    .local v6, "btnReset":Landroid/widget/Button;
    const v7, 0x7f080234

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 100
    .local v7, "tvResult":Landroid/widget/TextView;
    const v8, 0x7f0700ac

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 101
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 102
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 103
    const-string v8, "--"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const/4 v8, 0x4

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 146
    :pswitch_0
    const-string v8, "\u6e29\u63a7\u529f\u80fd"

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    invoke-virtual {v6, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 148
    new-instance v8, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment$3;

    invoke-direct {v8, p0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment$3;-><init>(Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;)V

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 142
    :pswitch_1
    const-string v9, "\u6253\u5370\u529f\u80fd"

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 144
    goto :goto_1

    .line 134
    :pswitch_2
    const-string v9, "\u4ee5\u592a\u7f51\u529f\u80fd"

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 136
    goto :goto_1

    .line 130
    :pswitch_3
    const-string v9, "\u81ea\u68c0\u529f\u80fd"

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 132
    goto :goto_1

    .line 126
    :pswitch_4
    const-string v9, "\u626b\u7801\u529f\u80fd"

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 128
    goto :goto_1

    .line 114
    :pswitch_5
    const-string v8, "\u98ce\u6247\u529f\u80fd"

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {v6, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 116
    new-instance v8, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment$2;

    invoke-direct {v8, p0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment$2;-><init>(Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;)V

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    goto :goto_1

    .line 110
    :pswitch_6
    const-string v9, "ID\u5361\u8bfb\u53d6\u529f\u80fd"

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 112
    goto :goto_1

    .line 106
    :pswitch_7
    const-string v9, "\u8f6f\u4ef6\u7248\u672c\u6700\u65b0"

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 108
    nop

    .line 159
    :goto_1
    iget-object v8, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v8, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v8, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 93
    .end local v2    # "tableRow":Landroid/view/View;
    .end local v3    # "tvFunction":Landroid/widget/TextView;
    .end local v4    # "ivStatus":Landroid/widget/ImageView;
    .end local v5    # "btnCheckOut":Landroid/widget/Button;
    .end local v6    # "btnReset":Landroid/widget/Button;
    .end local v7    # "tvResult":Landroid/widget/TextView;
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 162
    .end local v1    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->btnStartCheckOut:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->btnStopCheckOut:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->btnNext:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->btnCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->btnCardIn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->btnCardOut:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->btnExit:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->btnEnableLanguage:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    invoke-static {}, Lcom/wen/fluorescence/util/PublicFuction;->readFileSdcardFile()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "deviceID":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    nop

    .line 175
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 174
    invoke-static {v1}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v1

    const-string v2, "DevicedID"

    const-string v3, ""

    .line 175
    invoke-virtual {v1, v2, v3}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    :cond_1
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->etDeviceID:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->etDeviceID:Landroid/widget/EditText;

    new-instance v2, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment$4;

    invoke-direct {v2, p0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment$4;-><init>(Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 205
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private startCheckOut()V
    .locals 3

    .line 403
    iget-boolean v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->isCheckOutAll:Z

    if-eqz v0, :cond_0

    .line 404
    return-void

    .line 406
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 406
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v2}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 409
    invoke-direct {p0, v1, v0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->setCheckOutResult(II)V

    .line 406
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 411
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->isCheckOutAll:Z

    .line 412
    iput-boolean v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->isStopCheckOut:Z

    .line 413
    iput v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->iStep:I

    .line 414
    const-string v0, "\u5f00\u59cb\u68c0\u9a8c..."

    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->setCheckOutStatus(Ljava/lang/String;)V

    .line 415
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->getVersion()V

    .line 416
    return-void
.end method

.method private stopCheckOut()V
    .locals 3

    .line 422
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->isStopCheckOut:Z

    .line 423
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->isCheckOutAll:Z

    .line 424
    iput-boolean v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->isHandSetHead:Z

    .line 425
    iput v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->iCodeIndex:I

    .line 426
    const/16 v1, 0xfa

    invoke-static {v1}, Lcom/wen/fluorescence/serialport/Protocol;->setHead(I)V

    .line 427
    invoke-static {v0}, Lcom/wen/fluorescence/serialport/Protocol;->setFanSwitch(Z)V

    .line 428
    const-string v1, "\u505c\u6b62\u68c0\u9a8c"

    invoke-direct {p0, v1}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->setCheckOutStatus(Ljava/lang/String;)V

    .line 429
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->tvContent:Landroid/widget/TextView;

    const-string v2, "\u505c\u6b62\u68c0\u9a8c..."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    move v1, v0

    .line 430
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v2}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 433
    invoke-direct {p0, v1, v0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->setCheckOutResult(II)V

    .line 430
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 435
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 56
    const v0, 0x7f0a005b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->initView(Landroid/view/View;)V

    .line 58
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->setViewIncident()V

    .line 59
    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .locals 4
    .param p1, "hidden"    # Z

    .line 64
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 65
    if-eqz p1, :cond_0

    .line 66
    const/16 v0, 0xfa

    invoke-static {v0}, Lcom/wen/fluorescence/serialport/Protocol;->setHead(I)V

    .line 67
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment$1;

    invoke-direct {v1, p0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment$1;-><init>(Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 74
    :cond_0
    return-void
.end method

.method public receiveBarCode(Ljava/lang/String;)V
    .locals 3
    .param p1, "barCode"    # Ljava/lang/String;

    .line 574
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->setCardOut()V

    .line 575
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ADCBE0123456"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 576
    iget v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->iCodeIndex:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 577
    iget v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->iCodeIndex:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->iCodeIndex:I

    .line 578
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->checkScanBarCode()V

    goto :goto_0

    .line 582
    :cond_0
    iget v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->iStep:I

    invoke-direct {p0, v0, v2}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->setCheckOutResult(II)V

    .line 583
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->tvContent:Landroid/widget/TextView;

    const-string v1, "\u626b\u7801\u529f\u80fd\u68c0\u9a8c\u5b8c\u6bd5."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->continueCheckOut()V

    goto :goto_0

    .line 588
    :cond_1
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->tvContent:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e8c\u7ef4\u7801\u8bc6\u522b\u9519\u8bef\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 590
    iget v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->iStep:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->setCheckOutResult(II)V

    .line 591
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->continueCheckOut()V

    .line 593
    :goto_0
    return-void
.end method

.method public receiveSelfTestResult(Z)V
    .locals 2
    .param p1, "success"    # Z

    .line 608
    if-eqz p1, :cond_0

    .line 610
    iget v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->iStep:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->setCheckOutResult(II)V

    goto :goto_0

    .line 613
    :cond_0
    iget v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->iStep:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->setCheckOutResult(II)V

    .line 615
    :goto_0
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->continueCheckOut()V

    .line 616
    return-void
.end method

.method public receiveTempControl(D)V
    .locals 4
    .param p1, "temp"    # D

    .line 646
    iget v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->iStep:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 647
    const-wide/high16 v2, 0x4041000000000000L    # 34.0

    cmpl-double v0, p1, v2

    if-ltz v0, :cond_1

    .line 648
    iget-boolean v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->isCheckOutAll:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->isHandSetHead:Z

    if-eqz v0, :cond_1

    .line 650
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->setCheckOutResult(II)V

    .line 651
    const/16 v0, 0xfa

    invoke-static {v0}, Lcom/wen/fluorescence/serialport/Protocol;->setHead(I)V

    .line 652
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->isCheckOutAll:Z

    .line 653
    iput-boolean v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->isHandSetHead:Z

    .line 654
    const-string v0, "\u68c0\u9a8c\u5b8c\u6210\uff01"

    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->setCheckOutStatus(Ljava/lang/String;)V

    .line 655
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->tvContent:Landroid/widget/TextView;

    const-string v1, "\u68c0\u9a8c\u5b8c\u6210..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 659
    :cond_1
    return-void
.end method

.method public receiveVersionMessage(Lcom/wen/fluorescence/bean/Version;)V
    .locals 4
    .param p1, "version"    # Lcom/wen/fluorescence/bean/Version;

    .line 514
    iget-boolean v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->isCheckOutAll:Z

    if-eqz v0, :cond_0

    .line 515
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/wen/fluorescence/serialport/Protocol;->setHeadSwitch(Z)V

    .line 516
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment$8;

    invoke-direct {v1, p0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment$8;-><init>(Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 523
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8f6f\u4ef6\u7248\u672c\u53f7\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/Global;->getFull_Version()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\u56fa\u4ef6\u7248\u672c\u53f7\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    invoke-virtual {p1}, Lcom/wen/fluorescence/bean/Version;->getFirmVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\u7248\u672c\u662f\u5426\u6700\u65b0?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 525
    .local v0, "strVersion":Ljava/lang/String;
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->btnNext:Landroid/widget/Button;

    const-string v2, "\u662f"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 527
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->btnCancel:Landroid/widget/Button;

    const-string v2, "\u5426"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 528
    return-void
.end method
