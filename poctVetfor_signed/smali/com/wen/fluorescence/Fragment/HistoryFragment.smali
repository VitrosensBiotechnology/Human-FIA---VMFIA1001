.class public Lcom/wen/fluorescence/Fragment/HistoryFragment;
.super Landroid/support/v4/app/Fragment;
.source "HistoryFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HistoryFragment"


# instance fields
.field private btnDelete:Landroid/widget/Button;

.field private btnExport:Landroid/widget/Button;

.field private btnGo:Landroid/widget/Button;

.field private btnInfo:Landroid/widget/Button;

.field private btnLIS:Landroid/widget/Button;

.field private btnNext:Landroid/widget/Button;

.field private btnPrevious:Landroid/widget/Button;

.field private btnPrint:Landroid/widget/Button;

.field private btnQuery:Landroid/widget/Button;

.field private cbSelectAll:Landroid/widget/CheckBox;

.field private condition:Lcom/wen/fluorescence/database/TestResultCondition;

.field private etPage:Landroid/widget/EditText;

.field private handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private listData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wen/fluorescence/database/TestResult;",
            ">;"
        }
    .end annotation
.end field

.field listener:Lcom/wen/fluorescence/util/MyOnClickListener;

.field private page:Lcom/wen/fluorescence/util/PageUtils;

.field private pageSize:I

.field private tableLayout:Landroid/widget/TableLayout;

.field private tvOperatorID:Landroid/widget/TextView;

.field private tvPage:Landroid/widget/TextView;

.field private tvPatientID:Landroid/widget/TextView;

.field private tvWaitData:Landroid/widget/TextView;

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->listData:Ljava/util/List;

    .line 76
    const/16 v0, 0x8

    iput v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->pageSize:I

    .line 78
    new-instance v0, Lcom/wen/fluorescence/Fragment/HistoryFragment$1;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment$1;-><init>(Lcom/wen/fluorescence/Fragment/HistoryFragment;)V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->handler:Landroid/os/Handler;

    .line 199
    new-instance v0, Lcom/wen/fluorescence/Fragment/HistoryFragment$3;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment$3;-><init>(Lcom/wen/fluorescence/Fragment/HistoryFragment;)V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/wen/fluorescence/Fragment/HistoryFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HistoryFragment;
    .param p1, "x1"    # Z

    .line 60
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->setAllSelectCheck(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/wen/fluorescence/Fragment/HistoryFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HistoryFragment;

    .line 60
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->goPrevPage()V

    return-void
.end method

.method static synthetic access$1000(Lcom/wen/fluorescence/Fragment/HistoryFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HistoryFragment;

    .line 60
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->listData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/wen/fluorescence/Fragment/HistoryFragment;)Landroid/widget/TableLayout;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HistoryFragment;

    .line 60
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->tableLayout:Landroid/widget/TableLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/wen/fluorescence/Fragment/HistoryFragment;)Lcom/wen/fluorescence/util/PageUtils;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HistoryFragment;

    .line 60
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->page:Lcom/wen/fluorescence/util/PageUtils;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/wen/fluorescence/Fragment/HistoryFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HistoryFragment;

    .line 60
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->user:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/wen/fluorescence/Fragment/HistoryFragment;)Lcom/wen/fluorescence/database/TestResultCondition;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HistoryFragment;

    .line 60
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->condition:Lcom/wen/fluorescence/database/TestResultCondition;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/wen/fluorescence/Fragment/HistoryFragment;Lcom/wen/fluorescence/database/TestResultCondition;)Lcom/wen/fluorescence/database/TestResultCondition;
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HistoryFragment;
    .param p1, "x1"    # Lcom/wen/fluorescence/database/TestResultCondition;

    .line 60
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->condition:Lcom/wen/fluorescence/database/TestResultCondition;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/wen/fluorescence/Fragment/HistoryFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HistoryFragment;

    .line 60
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->startQuery()V

    return-void
.end method

.method static synthetic access$1600(Lcom/wen/fluorescence/Fragment/HistoryFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HistoryFragment;

    .line 60
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->updateTestResult()V

    return-void
.end method

.method static synthetic access$1700(Lcom/wen/fluorescence/Fragment/HistoryFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HistoryFragment;

    .line 60
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->initDefaultTestResult()V

    return-void
.end method

.method static synthetic access$200(Lcom/wen/fluorescence/Fragment/HistoryFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HistoryFragment;

    .line 60
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->goNextPage()V

    return-void
.end method

.method static synthetic access$300(Lcom/wen/fluorescence/Fragment/HistoryFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HistoryFragment;

    .line 60
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->goPage()V

    return-void
.end method

.method static synthetic access$400(Lcom/wen/fluorescence/Fragment/HistoryFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HistoryFragment;

    .line 60
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->query()V

    return-void
.end method

.method static synthetic access$500(Lcom/wen/fluorescence/Fragment/HistoryFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HistoryFragment;

    .line 60
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->delete()V

    return-void
.end method

.method static synthetic access$600(Lcom/wen/fluorescence/Fragment/HistoryFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HistoryFragment;

    .line 60
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->print()V

    return-void
.end method

.method static synthetic access$700(Lcom/wen/fluorescence/Fragment/HistoryFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HistoryFragment;

    .line 60
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->sendLis()V

    return-void
.end method

.method static synthetic access$800(Lcom/wen/fluorescence/Fragment/HistoryFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HistoryFragment;

    .line 60
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->setDetialInformationDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/wen/fluorescence/Fragment/HistoryFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HistoryFragment;

    .line 60
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->exportData()V

    return-void
.end method

.method private delete()V
    .locals 8

    .line 485
    const/4 v0, 0x0

    .line 486
    .local v0, "isSelected":Z
    const/4 v1, 0x0

    .line 486
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->listData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 487
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v2, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 488
    .local v2, "childrenView":Landroid/view/View;
    const v3, 0x7f080099

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 489
    .local v3, "cbSelect":Landroid/widget/CheckBox;
    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 490
    const/4 v0, 0x1

    .line 491
    goto :goto_1

    .line 486
    .end local v2    # "childrenView":Landroid/view/View;
    .end local v3    # "cbSelect":Landroid/widget/CheckBox;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 494
    .end local v1    # "i":I
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 495
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0c0166

    invoke-virtual {p0, v2}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 496
    return-void

    .line 499
    :cond_2
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0a0030

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 501
    .local v1, "view":Landroid/view/View;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 502
    .local v2, "dialog":Landroid/app/AlertDialog;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 503
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 504
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 506
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 507
    .local v3, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 508
    .local v4, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v5, 0x11

    invoke-virtual {v3, v5}, Landroid/view/Window;->setGravity(I)V

    .line 509
    const/4 v5, 0x6

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 510
    const/16 v5, 0x1f4

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 511
    const/16 v5, 0x12c

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 512
    invoke-virtual {v3, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 514
    const v5, 0x7f080089

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 515
    .local v5, "btnSure":Landroid/widget/Button;
    const v6, 0x7f08003b

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 517
    .local v6, "btnCancel":Landroid/widget/Button;
    new-instance v7, Lcom/wen/fluorescence/Fragment/HistoryFragment$6;

    invoke-direct {v7, p0, v2}, Lcom/wen/fluorescence/Fragment/HistoryFragment$6;-><init>(Lcom/wen/fluorescence/Fragment/HistoryFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 541
    new-instance v7, Lcom/wen/fluorescence/Fragment/HistoryFragment$7;

    invoke-direct {v7, p0, v2}, Lcom/wen/fluorescence/Fragment/HistoryFragment$7;-><init>(Lcom/wen/fluorescence/Fragment/HistoryFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 548
    return-void
.end method

.method private exportData()V
    .locals 4

    .line 237
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c01cd

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 238
    const v2, 0x7f0c0017

    invoke-virtual {p0, v2}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 237
    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs;->AlertDialogPunching(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 239
    return-void
.end method

.method private goNextPage()V
    .locals 2

    .line 444
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->page:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/PageUtils;->isHasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->page:Lcom/wen/fluorescence/util/PageUtils;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->page:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/PageUtils;->getPageNow()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/util/PageUtils;->setPageNow(I)V

    .line 446
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->startQuery()V

    .line 447
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->updateTestResult()V

    .line 449
    :cond_0
    return-void
.end method

.method private goPage()V
    .locals 2

    .line 467
    :try_start_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->etPage:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 468
    .local v0, "go":I
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->page:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/PageUtils;->getPageTotal()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 469
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->page:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v1, v0}, Lcom/wen/fluorescence/util/PageUtils;->setPageNow(I)V

    .line 470
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->startQuery()V

    .line 471
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->updateTestResult()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    .end local v0    # "go":I
    :cond_0
    goto :goto_0

    .line 475
    :catch_0
    move-exception v0

    .line 479
    :goto_0
    return-void
.end method

.method private goPrevPage()V
    .locals 2

    .line 455
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->page:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/PageUtils;->isHasPrev()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->page:Lcom/wen/fluorescence/util/PageUtils;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->page:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/PageUtils;->getPageNow()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/util/PageUtils;->setPageNow(I)V

    .line 457
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->startQuery()V

    .line 458
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->updateTestResult()V

    .line 460
    :cond_0
    return-void
.end method

.method private initDefaultTestResult()V
    .locals 8

    .line 409
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->showWaitUploadCount()V

    .line 411
    new-instance v0, Lcom/wen/fluorescence/database/TestResultCondition;

    invoke-direct {v0}, Lcom/wen/fluorescence/database/TestResultCondition;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->condition:Lcom/wen/fluorescence/database/TestResultCondition;

    .line 412
    new-instance v0, Lcom/wen/fluorescence/util/DateUtils;

    invoke-direct {v0}, Lcom/wen/fluorescence/util/DateUtils;-><init>()V

    .line 413
    .local v0, "du":Lcom/wen/fluorescence/util/DateUtils;
    const-string v1, "yyyy-MM-dd"

    invoke-static {v1}, Lcom/wen/fluorescence/util/DateUtils;->getSysemDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 414
    .local v1, "today":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " 00:00:00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 415
    const-string v2, "yyyy-MM-dd"

    .line 417
    invoke-static {v1, v2}, Lcom/wen/fluorescence/util/DateUtils;->string2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 416
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/wen/fluorescence/util/DateUtils;->addDateSelf(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v2

    const-string v4, "yyyy-MM-dd"

    .line 415
    invoke-static {v2, v4}, Lcom/wen/fluorescence/util/DateUtils;->date2String(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 419
    .local v2, "tomorrow":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " 00:00:00"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 420
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v4

    const-string v5, "login_user"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->user:Ljava/lang/String;

    .line 426
    const-string v4, "as"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TotalSize:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->page:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v6}, Lcom/wen/fluorescence/util/PageUtils;->getTotalSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->condition:Lcom/wen/fluorescence/database/TestResultCondition;

    invoke-virtual {v4, v1}, Lcom/wen/fluorescence/database/TestResultCondition;->setStartTime(Ljava/lang/String;)V

    .line 428
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->condition:Lcom/wen/fluorescence/database/TestResultCondition;

    invoke-virtual {v4, v2}, Lcom/wen/fluorescence/database/TestResultCondition;->setEndTime(Ljava/lang/String;)V

    .line 430
    const-string v4, "factory"

    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->user:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "super"

    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->user:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "admin"

    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->user:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 433
    :cond_0
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->page:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v5

    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->condition:Lcom/wen/fluorescence/database/TestResultCondition;

    iget-object v7, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->user:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/wen/fluorescence/database/DBManager;->getTestResultCountByCondition(Lcom/wen/fluorescence/database/TestResultCondition;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/wen/fluorescence/util/PageUtils;->setTotalSize(I)V

    goto :goto_1

    .line 431
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->page:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v5

    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->condition:Lcom/wen/fluorescence/database/TestResultCondition;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/wen/fluorescence/database/DBManager;->getTestResultCountByCondition(Lcom/wen/fluorescence/database/TestResultCondition;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/wen/fluorescence/util/PageUtils;->setTotalSize(I)V

    .line 435
    :goto_1
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->page:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v4, v3}, Lcom/wen/fluorescence/util/PageUtils;->setPageNow(I)V

    .line 436
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->startQuery()V

    .line 437
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->updateTestResult()V

    .line 438
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 122
    const v0, 0x7f080268

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->tvWaitData:Landroid/widget/TextView;

    .line 123
    const v0, 0x7f0801d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->tableLayout:Landroid/widget/TableLayout;

    .line 124
    const v0, 0x7f08009a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->cbSelectAll:Landroid/widget/CheckBox;

    .line 125
    const v0, 0x7f080221

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->tvPage:Landroid/widget/TextView;

    .line 126
    const v0, 0x7f0800dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->etPage:Landroid/widget/EditText;

    .line 127
    const v0, 0x7f080067

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->btnPrevious:Landroid/widget/Button;

    .line 128
    const v0, 0x7f080063

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->btnNext:Landroid/widget/Button;

    .line 129
    const v0, 0x7f080055

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->btnGo:Landroid/widget/Button;

    .line 130
    const v0, 0x7f08006c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->btnQuery:Landroid/widget/Button;

    .line 131
    const v0, 0x7f080046

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->btnDelete:Landroid/widget/Button;

    .line 132
    const v0, 0x7f080069

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->btnPrint:Landroid/widget/Button;

    .line 133
    const v0, 0x7f08005b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->btnLIS:Landroid/widget/Button;

    .line 134
    const v0, 0x7f08005a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->btnInfo:Landroid/widget/Button;

    .line 135
    const v0, 0x7f08004d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->btnExport:Landroid/widget/Button;

    .line 136
    const v0, 0x7f080224

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->tvPatientID:Landroid/widget/TextView;

    .line 137
    const v0, 0x7f080220

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->tvOperatorID:Landroid/widget/TextView;

    .line 138
    return-void
.end method

.method private print()V
    .locals 6

    .line 690
    const/4 v0, 0x0

    .line 691
    .local v0, "isSelected":Z
    const/4 v1, 0x0

    .line 691
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->listData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 692
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v2, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 693
    .local v2, "childrenView":Landroid/view/View;
    const v3, 0x7f080099

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 694
    .local v3, "cbSelect":Landroid/widget/CheckBox;
    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 695
    const/4 v0, 0x1

    .line 696
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/wen/fluorescence/Thread/PrinterThread;->getPrinterThread(Landroid/content/Context;)Lcom/wen/fluorescence/Thread/PrinterThread;

    move-result-object v4

    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->listData:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v4, v5}, Lcom/wen/fluorescence/Thread/PrinterThread;->addPrinter(Lcom/wen/fluorescence/database/TestResult;)V

    .line 691
    .end local v2    # "childrenView":Landroid/view/View;
    .end local v3    # "cbSelect":Landroid/widget/CheckBox;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 699
    .end local v1    # "i":I
    :cond_1
    if-nez v0, :cond_2

    .line 700
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0c0166

    invoke-virtual {p0, v2}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 701
    return-void

    .line 703
    :cond_2
    return-void
.end method

.method private query()V
    .locals 31

    .line 554
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a002f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 556
    .local v0, "view":Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 557
    .local v1, "dialog":Landroid/app/AlertDialog;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 558
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 559
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 561
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x20008

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 562
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 565
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 566
    .local v2, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    .line 567
    .local v12, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    .line 568
    const/4 v3, 0x6

    iput v3, v12, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 569
    const/16 v3, 0x28a

    iput v3, v12, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 570
    const/16 v3, 0x1d6

    iput v3, v12, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 571
    invoke-virtual {v2, v12}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 573
    const v3, 0x7f080022

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/widget/AutoCompleteTextView;

    .line 574
    .local v13, "actvPatientNo":Landroid/widget/AutoCompleteTextView;
    const v3, 0x7f080006

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/AutoCompleteTextView;

    .line 575
    .local v14, "actOperator":Landroid/widget/AutoCompleteTextView;
    const v3, 0x7f080025

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/AutoCompleteTextView;

    .line 576
    .local v15, "actvSampleNumber":Landroid/widget/AutoCompleteTextView;
    const v3, 0x7f080020

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/AutoCompleteTextView;

    .line 577
    .local v3, "actvName":Landroid/widget/AutoCompleteTextView;
    const v4, 0x7f080255

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Landroid/widget/TextView;

    .line 578
    .local v11, "tvTimeFrom":Landroid/widget/TextView;
    const v4, 0x7f080258

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Landroid/widget/TextView;

    .line 579
    .local v10, "tvTimeTo":Landroid/widget/TextView;
    const v4, 0x7f080040

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Landroid/widget/Button;

    .line 580
    .local v9, "btnClear":Landroid/widget/Button;
    const v4, 0x7f080089

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroid/widget/Button;

    .line 581
    .local v8, "btnSure":Landroid/widget/Button;
    const v4, 0x7f08003b

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroid/widget/Button;

    .line 584
    .local v7, "btnCancel":Landroid/widget/Button;
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v4

    const-string v5, "inspectingDoctor"

    .line 585
    invoke-virtual {v4, v5}, Lcom/wen/fluorescence/database/DBManager;->queryGivenFieldDistinceInResult(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 586
    .local v6, "list_Operator":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v4

    const-string v5, "patientNumber"

    .line 587
    invoke-virtual {v4, v5}, Lcom/wen/fluorescence/database/DBManager;->queryGivenFieldDistinceInResult(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 588
    .local v5, "list_patientNo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v4

    move-object/from16 v16, v0

    const-string v0, "sampleNumber"

    .line 589
    .end local v0    # "view":Landroid/view/View;
    .local v16, "view":Landroid/view/View;
    invoke-virtual {v4, v0}, Lcom/wen/fluorescence/database/DBManager;->queryGivenFieldDistinceInResult(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 590
    .local v0, "list_sampleNumber":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v4

    move-object/from16 v17, v2

    const-string v2, "name"

    .line 591
    .end local v2    # "dialogWindow":Landroid/view/Window;
    .local v17, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v4, v2}, Lcom/wen/fluorescence/database/DBManager;->queryGivenFieldDistinceInResult(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 592
    .local v2, "list_name":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Landroid/widget/ArrayAdapter;

    .line 593
    move-object/from16 v18, v7

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    .line 593
    .end local v7    # "btnCancel":Landroid/widget/Button;
    .local v18, "btnCancel":Landroid/widget/Button;
    move-object/from16 v19, v8

    const v8, 0x109000a

    .line 593
    .end local v8    # "btnSure":Landroid/widget/Button;
    .local v19, "btnSure":Landroid/widget/Button;
    invoke-direct {v4, v7, v8, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    move-object v7, v4

    .line 595
    .local v7, "adapterPatientNo":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v4, Landroid/widget/ArrayAdapter;

    .line 596
    move-object/from16 v20, v5

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 596
    .end local v5    # "list_patientNo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v20, "list_patientNo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v4, v5, v8, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    move-object v5, v4

    .line 598
    .local v5, "adapterOperator":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v4, Landroid/widget/ArrayAdapter;

    .line 599
    move-object/from16 v21, v6

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    .line 599
    .end local v6    # "list_Operator":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v21, "list_Operator":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v4, v6, v8, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    move-object v6, v4

    .line 601
    .local v6, "adapterSampleNumber":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v4, Landroid/widget/ArrayAdapter;

    .line 602
    move-object/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 602
    .end local v0    # "list_sampleNumber":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v22, "list_sampleNumber":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v4, v0, v8, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    move-object v0, v4

    .line 604
    .local v0, "adapterName":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v14, v5}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 605
    invoke-virtual {v13, v7}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 606
    invoke-virtual {v15, v6}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 607
    invoke-virtual {v3, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 609
    new-instance v4, Lcom/wen/fluorescence/ViewUtil/DatePickerListener;

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/wen/fluorescence/ViewUtil/DatePickerListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 610
    new-instance v4, Lcom/wen/fluorescence/ViewUtil/DatePickerListener;

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/wen/fluorescence/ViewUtil/DatePickerListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 612
    new-instance v8, Lcom/wen/fluorescence/Fragment/HistoryFragment$8;

    move-object v4, v8

    move-object/from16 v23, v5

    move-object/from16 v5, p0

    .line 612
    .end local v5    # "adapterOperator":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .local v23, "adapterOperator":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object/from16 v24, v6

    move-object v6, v14

    .line 612
    .end local v6    # "adapterSampleNumber":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .local v24, "adapterSampleNumber":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object/from16 v25, v0

    move-object/from16 v0, v18

    move-object/from16 v18, v7

    move-object v7, v13

    .line 612
    .end local v7    # "adapterPatientNo":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .local v0, "btnCancel":Landroid/widget/Button;
    .local v18, "adapterPatientNo":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .local v25, "adapterName":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object/from16 v26, v2

    move-object/from16 v27, v12

    move-object/from16 v2, v19

    move-object v12, v8

    move-object v8, v15

    .line 612
    .end local v12    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v19    # "btnSure":Landroid/widget/Button;
    .local v2, "btnSure":Landroid/widget/Button;
    .local v26, "list_name":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v27, "lp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v28, v0

    move-object v0, v9

    move-object v9, v3

    .line 612
    .end local v9    # "btnClear":Landroid/widget/Button;
    .local v0, "btnClear":Landroid/widget/Button;
    .local v28, "btnCancel":Landroid/widget/Button;
    move-object/from16 v19, v10

    move-object v10, v11

    .line 612
    .end local v10    # "tvTimeTo":Landroid/widget/TextView;
    .local v19, "tvTimeTo":Landroid/widget/TextView;
    move-object/from16 v29, v11

    move-object/from16 v11, v19

    .line 612
    .end local v11    # "tvTimeFrom":Landroid/widget/TextView;
    .local v29, "tvTimeFrom":Landroid/widget/TextView;
    invoke-direct/range {v4 .. v11}, Lcom/wen/fluorescence/Fragment/HistoryFragment$8;-><init>(Lcom/wen/fluorescence/Fragment/HistoryFragment;Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v0, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 625
    new-instance v12, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;

    move-object/from16 v30, v3

    move-object v3, v12

    .line 625
    .end local v3    # "actvName":Landroid/widget/AutoCompleteTextView;
    .local v30, "actvName":Landroid/widget/AutoCompleteTextView;
    move-object/from16 v4, p0

    move-object v5, v15

    move-object/from16 v6, v30

    move-object/from16 v7, v29

    move-object/from16 v8, v19

    move-object v9, v13

    move-object v10, v14

    move-object v11, v1

    invoke-direct/range {v3 .. v11}, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;-><init>(Lcom/wen/fluorescence/Fragment/HistoryFragment;Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 676
    new-instance v3, Lcom/wen/fluorescence/Fragment/HistoryFragment$10;

    invoke-direct {v3, v4, v1}, Lcom/wen/fluorescence/Fragment/HistoryFragment$10;-><init>(Lcom/wen/fluorescence/Fragment/HistoryFragment;Landroid/app/AlertDialog;)V

    move-object/from16 v5, v28

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 683
    .end local v28    # "btnCancel":Landroid/widget/Button;
    .local v5, "btnCancel":Landroid/widget/Button;
    return-void
.end method

.method private sendLis()V
    .locals 12

    .line 243
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/util/NetUtil;->isNetworkConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0c00fd

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 245
    return-void

    .line 247
    :cond_0
    const/4 v0, 0x0

    .line 248
    .local v0, "isSelected":Z
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    .line 273
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v1

    const-string v2, "LIS_SWITCH"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getBooleanData(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 274
    .local v1, "bSwitch":Z
    if-nez v1, :cond_1

    .line 275
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0c00e4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 276
    return-void

    .line 279
    :cond_1
    nop

    .line 279
    .local v3, "i":I
    :goto_0
    move v2, v3

    .line 279
    .end local v3    # "i":I
    .local v2, "i":I
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->listData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 280
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v3, v2}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 281
    .local v3, "childrenView":Landroid/view/View;
    const v4, 0x7f080099

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 282
    .local v4, "cbSelect":Landroid/widget/CheckBox;
    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 283
    const/4 v0, 0x1

    .line 285
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->handler:Landroid/os/Handler;

    invoke-static {v5, v6}, Lcom/wen/fluorescence/Thread/LISThread;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/wen/fluorescence/Thread/LISThread;

    move-result-object v5

    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->listData:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v5, v6}, Lcom/wen/fluorescence/Thread/LISThread;->addTestResult(Lcom/wen/fluorescence/database/TestResult;)V

    .line 287
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->listData:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v5}, Lcom/wen/fluorescence/database/TestResult;->getUploadStatus()I

    move-result v5

    if-nez v5, :cond_2

    .line 288
    move v5, v2

    .line 289
    .local v5, "finalI":I
    const-string v6, "postRawData"

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->listData:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/wen/fluorescence/database/TestResult;

    .line 290
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v9

    iget-object v10, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->listData:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v10}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/wen/fluorescence/database/DBManager;->queryOriResultBySerial(Ljava/lang/String;)Lcom/wen/fluorescence/database/OriResult;

    move-result-object v9

    .line 291
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v10

    iget-object v11, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->listData:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v11}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/wen/fluorescence/database/DBManager;->queryRawData(Ljava/lang/String;)Lcom/wen/fluorescence/database/RawData;

    move-result-object v10

    new-instance v11, Lcom/wen/fluorescence/Fragment/HistoryFragment$4;

    invoke-direct {v11, p0, v5}, Lcom/wen/fluorescence/Fragment/HistoryFragment$4;-><init>(Lcom/wen/fluorescence/Fragment/HistoryFragment;I)V

    .line 289
    invoke-static/range {v6 .. v11}, Lcom/wen/fluorescence/net/CHRequestManager;->postRawData(Ljava/lang/Object;Landroid/content/Context;Lcom/wen/fluorescence/database/TestResult;Lcom/wen/fluorescence/database/OriResult;Lcom/wen/fluorescence/database/RawData;Lcom/wen/fluorescence/net/CallBack;)V

    .line 299
    const-string v6, "postTestData"

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->listData:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/wen/fluorescence/database/TestResult;

    new-instance v9, Lcom/wen/fluorescence/Fragment/HistoryFragment$5;

    invoke-direct {v9, p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment$5;-><init>(Lcom/wen/fluorescence/Fragment/HistoryFragment;)V

    invoke-static {v6, v7, v8, v9}, Lcom/wen/fluorescence/net/CHRequestManager;->postTestData(Ljava/lang/Object;Landroid/content/Context;Lcom/wen/fluorescence/database/TestResult;Lcom/wen/fluorescence/net/CallBack;)V

    .line 279
    .end local v3    # "childrenView":Landroid/view/View;
    .end local v4    # "cbSelect":Landroid/widget/CheckBox;
    .end local v5    # "finalI":I
    :cond_2
    add-int/lit8 v3, v2, 0x1

    .line 279
    .end local v2    # "i":I
    .local v3, "i":I
    goto/16 :goto_0

    .line 311
    .end local v3    # "i":I
    :cond_3
    if-nez v0, :cond_4

    .line 312
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0c0166

    invoke-virtual {p0, v3}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 313
    return-void

    .line 315
    :cond_4
    return-void
.end method

.method private setAllSelectCheck(Z)V
    .locals 4
    .param p1, "check"    # Z

    .line 190
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->listData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 191
    .local v0, "count":I
    const/4 v1, 0x0

    .line 191
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 192
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v2, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 193
    .local v2, "children":Landroid/view/View;
    const v3, 0x7f080099

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 194
    .local v3, "cbSelect":Landroid/widget/CheckBox;
    invoke-virtual {v3, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 191
    .end local v2    # "children":Landroid/view/View;
    .end local v3    # "cbSelect":Landroid/widget/CheckBox;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private setDetialInformationDialog()V
    .locals 7

    .line 710
    const/4 v0, 0x0

    .line 711
    .local v0, "selectCount":I
    const/4 v1, 0x0

    .line 712
    .local v1, "testResult":Lcom/wen/fluorescence/database/TestResult;
    const/4 v2, 0x0

    move-object v3, v1

    move v1, v0

    move v0, v2

    .line 712
    .local v0, "i":I
    .local v1, "selectCount":I
    .local v3, "testResult":Lcom/wen/fluorescence/database/TestResult;
    :goto_0
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->listData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 713
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v4, v0}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 714
    .local v4, "childrenView":Landroid/view/View;
    const v5, 0x7f080099

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 715
    .local v5, "cbSelect":Landroid/widget/CheckBox;
    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 716
    add-int/lit8 v1, v1, 0x1

    .line 717
    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->listData:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    check-cast v3, Lcom/wen/fluorescence/database/TestResult;

    .line 712
    .end local v4    # "childrenView":Landroid/view/View;
    .end local v5    # "cbSelect":Landroid/widget/CheckBox;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 720
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    if-eq v1, v0, :cond_2

    .line 721
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f0c016a

    invoke-virtual {p0, v2}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 722
    return-void

    .line 724
    :cond_2
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wen/fluorescence/util/Global;->getSoftType()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_3

    .line 725
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    move-result-object v0

    invoke-virtual {v0, v3, v5, v2}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->setDialogShow(Lcom/wen/fluorescence/database/TestResult;Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$DetialCallback;Z)V

    goto :goto_2

    .line 726
    :cond_3
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wen/fluorescence/util/Global;->getSoftType()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_4

    .line 727
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;

    move-result-object v0

    invoke-virtual {v0, v3, v5, v2}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->setDialogShow(Lcom/wen/fluorescence/database/TestResult;Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$DetialCallback;Z)V

    goto :goto_2

    .line 728
    :cond_4
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wen/fluorescence/util/Global;->getSoftType()I

    move-result v2

    if-ne v2, v0, :cond_6

    .line 729
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v3}, Lcom/wen/fluorescence/database/TestResult;->getPatientNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "--"

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Lcom/wen/fluorescence/database/TestResult;->getPatientNumber()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v0, v2, v5}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 731
    :cond_6
    :goto_2
    return-void
.end method

.method private setViewIncident()V
    .locals 9

    .line 141
    new-instance v0, Lcom/wen/fluorescence/util/PageUtils;

    invoke-direct {v0}, Lcom/wen/fluorescence/util/PageUtils;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->page:Lcom/wen/fluorescence/util/PageUtils;

    .line 142
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->page:Lcom/wen/fluorescence/util/PageUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/util/PageUtils;->setPageNow(I)V

    .line 143
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->page:Lcom/wen/fluorescence/util/PageUtils;

    iget v2, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->pageSize:I

    invoke-virtual {v0, v2}, Lcom/wen/fluorescence/util/PageUtils;->setPageSize(I)V

    .line 144
    const/4 v0, 0x0

    move v2, v0

    .line 144
    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->pageSize:I

    const/16 v4, 0x8

    if-ge v2, v3, :cond_2

    .line 145
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v5, 0x7f0a0032

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 146
    .local v3, "tableRow":Landroid/view/View;
    const v5, 0x7f0801a2

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v5, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 148
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wen/fluorescence/util/Global;->getSoftType()I

    move-result v5

    if-ne v5, v1, :cond_0

    .line 149
    const v5, 0x7f08019f

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 150
    const v5, 0x7f08019e

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 152
    :cond_0
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v5

    const/4 v6, 0x7

    const v7, 0x7f0801a0

    const v8, 0x7f0801a1

    if-ne v5, v6, :cond_1

    .line 153
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 154
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 156
    :cond_1
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 157
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 144
    .end local v3    # "tableRow":Landroid/view/View;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    .end local v2    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->cbSelectAll:Landroid/widget/CheckBox;

    new-instance v2, Lcom/wen/fluorescence/Fragment/HistoryFragment$2;

    invoke-direct {v2, p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment$2;-><init>(Lcom/wen/fluorescence/Fragment/HistoryFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 166
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->btnPrevious:Landroid/widget/Button;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->btnNext:Landroid/widget/Button;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->btnGo:Landroid/widget/Button;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->btnQuery:Landroid/widget/Button;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->btnDelete:Landroid/widget/Button;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->btnPrint:Landroid/widget/Button;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->btnLIS:Landroid/widget/Button;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->btnInfo:Landroid/widget/Button;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->btnExport:Landroid/widget/Button;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->initDefaultTestResult()V

    .line 176
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->btnLIS:Landroid/widget/Button;

    const v2, 0x7f0c016d

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 177
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/Global;->getSoftType()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 178
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->tvPatientID:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->tvOperatorID:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->btnInfo:Landroid/widget/Button;

    const v1, 0x7f0c0078

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 182
    :cond_3
    return-void
.end method

.method private showWaitUploadCount()V
    .locals 8

    .line 735
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 736
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/Global;->getUser()Ljava/lang/String;

    move-result-object v0

    .line 737
    .local v0, "user":Ljava/lang/String;
    const-string v1, "factory"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "super"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "admin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 738
    :cond_0
    const-string v0, ""

    .line 740
    :cond_1
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wen/fluorescence/database/DBManager;->getNoUploadForTestResult(Ljava/lang/String;)I

    move-result v1

    .line 741
    .local v1, "count":I
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->tvWaitData:Landroid/widget/TextView;

    const v3, 0x7f0c01cc

    invoke-virtual {p0, v3}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 743
    .end local v0    # "user":Ljava/lang/String;
    .end local v1    # "count":I
    :cond_2
    return-void
.end method

.method private startQuery()V
    .locals 4

    .line 321
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->condition:Lcom/wen/fluorescence/database/TestResultCondition;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->page:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/PageUtils;->getPageSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResultCondition;->setLimit(I)V

    .line 322
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->condition:Lcom/wen/fluorescence/database/TestResultCondition;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->page:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/PageUtils;->getPageNow()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->page:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v2}, Lcom/wen/fluorescence/util/PageUtils;->getPageSize()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResultCondition;->setOffset(I)V

    .line 323
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->listData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 324
    const-string v0, "factory"

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "super"

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "admin"

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->listData:Ljava/util/List;

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v1

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->condition:Lcom/wen/fluorescence/database/TestResultCondition;

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->user:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/wen/fluorescence/database/DBManager;->queryTestResultByCondition(Lcom/wen/fluorescence/database/TestResultCondition;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 325
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->listData:Ljava/util/List;

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v1

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->condition:Lcom/wen/fluorescence/database/TestResultCondition;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/wen/fluorescence/database/DBManager;->queryTestResultByCondition(Lcom/wen/fluorescence/database/TestResultCondition;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 329
    :goto_1
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->tvPage:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->page:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v2}, Lcom/wen/fluorescence/util/PageUtils;->getPageNow()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->page:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v2}, Lcom/wen/fluorescence/util/PageUtils;->getPageTotal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    return-void
.end method

.method private updateTestResult()V
    .locals 19

    .line 336
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->cbSelectAll:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 337
    iget-object v1, v0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->listData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 338
    .local v1, "count":I
    move v3, v2

    .line 338
    .local v3, "i":I
    :goto_0
    const v4, 0x7f080099

    const v5, 0x7f08023d

    const v6, 0x7f08025e

    const v7, 0x7f080224

    const v8, 0x7f080220

    const v9, 0x7f08024f

    const v10, 0x7f08023e

    const v11, 0x7f080234

    const v12, 0x7f08021d

    const v13, 0x7f080209

    const v14, 0x7f08023c

    const v15, 0x7f080244

    if-ge v3, v1, :cond_4

    .line 339
    iget-object v2, v0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v2, v3}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 340
    .local v2, "children":Landroid/view/View;
    invoke-virtual {v2, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 341
    .local v15, "tvSerialNumber":Landroid/widget/TextView;
    invoke-virtual {v2, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 342
    .local v14, "tvSampleNumber":Landroid/widget/TextView;
    invoke-virtual {v2, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 343
    .local v13, "tvItem":Landroid/widget/TextView;
    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 344
    .local v12, "tvName":Landroid/widget/TextView;
    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 345
    .local v11, "tvResult":Landroid/widget/TextView;
    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 346
    .local v10, "tvSampleType":Landroid/widget/TextView;
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 347
    .local v9, "tvTestTime":Landroid/widget/TextView;
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 348
    .local v8, "tvOperatorID":Landroid/widget/TextView;
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 349
    .local v7, "tvPatientID":Landroid/widget/TextView;
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 350
    .local v6, "tvUploadState":Landroid/widget/TextView;
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 351
    .local v5, "tvSampleTubeNo":Landroid/widget/TextView;
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 352
    .local v4, "cbSelect":Landroid/widget/CheckBox;
    move-object/from16 v16, v2

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 353
    .end local v2    # "children":Landroid/view/View;
    .local v16, "children":Landroid/view/View;
    iget-object v2, v0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->listData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v2}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v2, v0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->listData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v2}, Lcom/wen/fluorescence/database/TestResult;->getSampleNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v2, v0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->listData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v2}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->listData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v2}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->listData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v2}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v4

    iget-object v4, v0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->listData:Ljava/util/List;

    .line 356
    .end local v4    # "cbSelect":Landroid/widget/CheckBox;
    .local v17, "cbSelect":Landroid/widget/CheckBox;
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v4}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 357
    iget-object v2, v0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->listData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v2}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 359
    .end local v17    # "cbSelect":Landroid/widget/CheckBox;
    .restart local v4    # "cbSelect":Landroid/widget/CheckBox;
    :cond_0
    move-object/from16 v17, v4

    .line 359
    .end local v4    # "cbSelect":Landroid/widget/CheckBox;
    .restart local v17    # "cbSelect":Landroid/widget/CheckBox;
    :cond_1
    iget-object v2, v0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->listData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v2}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    :goto_1
    iget-object v2, v0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->listData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wen/fluorescence/database/TestResult;

    invoke-static {v2}, Lcom/wen/fluorescence/util/PublicFuction;->getShowResult2(Lcom/wen/fluorescence/database/TestResult;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v2, v0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->listData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v2}, Lcom/wen/fluorescence/database/TestResult;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v2, v0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->listData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v2}, Lcom/wen/fluorescence/database/TestResult;->getSimpleType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v2, v0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->listData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v2}, Lcom/wen/fluorescence/database/TestResult;->getTestTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v2, v0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->listData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v2}, Lcom/wen/fluorescence/database/TestResult;->getInspectingDoctor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    iget-object v2, v0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->listData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v2}, Lcom/wen/fluorescence/database/TestResult;->getPatientNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v2

    const/4 v4, 0x7

    if-ne v2, v4, :cond_3

    .line 369
    iget-object v2, v0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->listData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v2}, Lcom/wen/fluorescence/database/TestResult;->getUploadStatus()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    const v2, 0x7f0c01ba

    :goto_2
    invoke-virtual {v0, v2}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_2
    const v2, 0x7f0c0103

    goto :goto_2

    :goto_3
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v2, v0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->listData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v2}, Lcom/wen/fluorescence/database/TestResult;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    .end local v5    # "tvSampleTubeNo":Landroid/widget/TextView;
    .end local v6    # "tvUploadState":Landroid/widget/TextView;
    .end local v7    # "tvPatientID":Landroid/widget/TextView;
    .end local v8    # "tvOperatorID":Landroid/widget/TextView;
    .end local v9    # "tvTestTime":Landroid/widget/TextView;
    .end local v10    # "tvSampleType":Landroid/widget/TextView;
    .end local v11    # "tvResult":Landroid/widget/TextView;
    .end local v12    # "tvName":Landroid/widget/TextView;
    .end local v13    # "tvItem":Landroid/widget/TextView;
    .end local v14    # "tvSampleNumber":Landroid/widget/TextView;
    .end local v15    # "tvSerialNumber":Landroid/widget/TextView;
    .end local v16    # "children":Landroid/view/View;
    .end local v17    # "cbSelect":Landroid/widget/CheckBox;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 374
    .end local v3    # "i":I
    :cond_4
    iget-object v2, v0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v2}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 375
    move v2, v1

    .line 375
    .local v2, "i":I
    :goto_4
    iget-object v3, v0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v3}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 376
    iget-object v3, v0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v3, v2}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 377
    .local v3, "children":Landroid/view/View;
    invoke-virtual {v3, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Landroid/widget/TextView;

    .line 378
    .restart local v15    # "tvSerialNumber":Landroid/widget/TextView;
    invoke-virtual {v3, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v14, v16

    check-cast v14, Landroid/widget/TextView;

    .line 379
    .restart local v14    # "tvSampleNumber":Landroid/widget/TextView;
    invoke-virtual {v3, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Landroid/widget/TextView;

    .line 380
    .restart local v13    # "tvItem":Landroid/widget/TextView;
    invoke-virtual {v3, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Landroid/widget/TextView;

    .line 381
    .restart local v12    # "tvName":Landroid/widget/TextView;
    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v11, v16

    check-cast v11, Landroid/widget/TextView;

    .line 382
    .restart local v11    # "tvResult":Landroid/widget/TextView;
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Landroid/widget/TextView;

    .line 383
    .restart local v10    # "tvSampleType":Landroid/widget/TextView;
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Landroid/widget/TextView;

    .line 384
    .restart local v9    # "tvTestTime":Landroid/widget/TextView;
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Landroid/widget/TextView;

    .line 385
    .restart local v8    # "tvOperatorID":Landroid/widget/TextView;
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Landroid/widget/TextView;

    .line 386
    .restart local v7    # "tvPatientID":Landroid/widget/TextView;
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Landroid/widget/TextView;

    .line 387
    .restart local v6    # "tvUploadState":Landroid/widget/TextView;
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Landroid/widget/TextView;

    .line 388
    .restart local v5    # "tvSampleTubeNo":Landroid/widget/TextView;
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Landroid/widget/CheckBox;

    .line 389
    .restart local v4    # "cbSelect":Landroid/widget/CheckBox;
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 390
    const-string v0, ""

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    const-string v0, ""

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    const-string v0, ""

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    const-string v0, ""

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    const-string v0, ""

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    const-string v0, ""

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    const-string v0, ""

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    const-string v0, ""

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    const-string v0, ""

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    const-string v0, ""

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    const-string v0, ""

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    .end local v3    # "children":Landroid/view/View;
    .end local v4    # "cbSelect":Landroid/widget/CheckBox;
    .end local v5    # "tvSampleTubeNo":Landroid/widget/TextView;
    .end local v6    # "tvUploadState":Landroid/widget/TextView;
    .end local v7    # "tvPatientID":Landroid/widget/TextView;
    .end local v8    # "tvOperatorID":Landroid/widget/TextView;
    .end local v9    # "tvTestTime":Landroid/widget/TextView;
    .end local v10    # "tvSampleType":Landroid/widget/TextView;
    .end local v11    # "tvResult":Landroid/widget/TextView;
    .end local v12    # "tvName":Landroid/widget/TextView;
    .end local v13    # "tvItem":Landroid/widget/TextView;
    .end local v14    # "tvSampleNumber":Landroid/widget/TextView;
    .end local v15    # "tvSerialNumber":Landroid/widget/TextView;
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    const v4, 0x7f080099

    const v5, 0x7f08023d

    const v6, 0x7f08025e

    const v7, 0x7f080224

    const v8, 0x7f080220

    const v9, 0x7f08024f

    const v10, 0x7f08023e

    const v11, 0x7f080234

    const v12, 0x7f08021d

    const v13, 0x7f080209

    const v14, 0x7f08023c

    const v15, 0x7f080244

    goto/16 :goto_4

    .line 403
    .end local v2    # "i":I
    :cond_5
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
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

    .line 97
    const/4 v0, 0x0

    const v1, 0x7f0a0031

    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 98
    .local v1, "view":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->initView(Landroid/view/View;)V

    .line 100
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v2

    const v3, 0x7f08023d

    const v4, 0x7f08025e

    const/4 v5, 0x7

    if-ne v2, v5, :cond_0

    .line 101
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->tvWaitData:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 103
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment;->tvWaitData:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 107
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 109
    :goto_0
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->setViewIncident()V

    .line 110
    return-object v1
.end method

.method public onDestroyView()V
    .locals 1

    .line 747
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 748
    const-string v0, "HistoryFragment"

    invoke-static {v0}, Lcom/wen/fluorescence/net/RequestManager;->cancelRequest(Ljava/lang/Object;)V

    .line 749
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .param p1, "hidden"    # Z

    .line 115
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 116
    if-nez p1, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->initDefaultTestResult()V

    .line 119
    :cond_0
    return-void
.end method
