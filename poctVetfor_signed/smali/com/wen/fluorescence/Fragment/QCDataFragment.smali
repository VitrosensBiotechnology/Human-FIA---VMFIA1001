.class public Lcom/wen/fluorescence/Fragment/QCDataFragment;
.super Landroid/support/v4/app/Fragment;
.source "QCDataFragment.java"


# instance fields
.field private btnDelete:Landroid/widget/Button;

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

.field private tvPage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->listData:Ljava/util/List;

    .line 63
    const/16 v0, 0x8

    iput v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->pageSize:I

    .line 66
    new-instance v0, Lcom/wen/fluorescence/Fragment/QCDataFragment$1;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/Fragment/QCDataFragment$1;-><init>(Lcom/wen/fluorescence/Fragment/QCDataFragment;)V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->handler:Landroid/os/Handler;

    .line 155
    new-instance v0, Lcom/wen/fluorescence/Fragment/QCDataFragment$3;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/Fragment/QCDataFragment$3;-><init>(Lcom/wen/fluorescence/Fragment/QCDataFragment;)V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/wen/fluorescence/Fragment/QCDataFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/QCDataFragment;
    .param p1, "x1"    # Z

    .line 49
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->setAllSelectCheck(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/wen/fluorescence/Fragment/QCDataFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/QCDataFragment;

    .line 49
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->goPrevPage()V

    return-void
.end method

.method static synthetic access$1000(Lcom/wen/fluorescence/Fragment/QCDataFragment;)Landroid/widget/TableLayout;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/QCDataFragment;

    .line 49
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->tableLayout:Landroid/widget/TableLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/wen/fluorescence/Fragment/QCDataFragment;)Lcom/wen/fluorescence/util/PageUtils;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/QCDataFragment;

    .line 49
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->page:Lcom/wen/fluorescence/util/PageUtils;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/wen/fluorescence/Fragment/QCDataFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/QCDataFragment;

    .line 49
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->startQuery()V

    return-void
.end method

.method static synthetic access$1300(Lcom/wen/fluorescence/Fragment/QCDataFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/QCDataFragment;

    .line 49
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->updateTestResult()V

    return-void
.end method

.method static synthetic access$1400(Lcom/wen/fluorescence/Fragment/QCDataFragment;)Lcom/wen/fluorescence/database/TestResultCondition;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/QCDataFragment;

    .line 49
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->condition:Lcom/wen/fluorescence/database/TestResultCondition;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/wen/fluorescence/Fragment/QCDataFragment;Lcom/wen/fluorescence/database/TestResultCondition;)Lcom/wen/fluorescence/database/TestResultCondition;
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/QCDataFragment;
    .param p1, "x1"    # Lcom/wen/fluorescence/database/TestResultCondition;

    .line 49
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->condition:Lcom/wen/fluorescence/database/TestResultCondition;

    return-object p1
.end method

.method static synthetic access$200(Lcom/wen/fluorescence/Fragment/QCDataFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/QCDataFragment;

    .line 49
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->goNextPage()V

    return-void
.end method

.method static synthetic access$300(Lcom/wen/fluorescence/Fragment/QCDataFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/QCDataFragment;

    .line 49
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->goPage()V

    return-void
.end method

.method static synthetic access$400(Lcom/wen/fluorescence/Fragment/QCDataFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/QCDataFragment;

    .line 49
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->query()V

    return-void
.end method

.method static synthetic access$500(Lcom/wen/fluorescence/Fragment/QCDataFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/QCDataFragment;

    .line 49
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->delete()V

    return-void
.end method

.method static synthetic access$600(Lcom/wen/fluorescence/Fragment/QCDataFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/QCDataFragment;

    .line 49
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->print()V

    return-void
.end method

.method static synthetic access$700(Lcom/wen/fluorescence/Fragment/QCDataFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/QCDataFragment;

    .line 49
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->sendLis()V

    return-void
.end method

.method static synthetic access$800(Lcom/wen/fluorescence/Fragment/QCDataFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/QCDataFragment;

    .line 49
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->setDetialInformationDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/wen/fluorescence/Fragment/QCDataFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/QCDataFragment;

    .line 49
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->listData:Ljava/util/List;

    return-object v0
.end method

.method private delete()V
    .locals 6

    .line 336
    const/4 v0, 0x0

    .line 337
    .local v0, "isSelected":Z
    const/4 v1, 0x0

    .line 337
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->listData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 338
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->tableLayout:Landroid/widget/TableLayout;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 339
    .local v2, "childrenView":Landroid/view/View;
    const v3, 0x7f080099

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 340
    .local v3, "cbSelect":Landroid/widget/CheckBox;
    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 341
    const/4 v0, 0x1

    .line 342
    goto :goto_1

    .line 337
    .end local v2    # "childrenView":Landroid/view/View;
    .end local v3    # "cbSelect":Landroid/widget/CheckBox;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 345
    .end local v1    # "i":I
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 346
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0c0166

    invoke-virtual {p0, v2}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 347
    return-void

    .line 350
    :cond_2
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0a0030

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 352
    .local v1, "view":Landroid/view/View;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 353
    .local v2, "dialog":Landroid/app/AlertDialog;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 354
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 355
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 357
    const v3, 0x7f080089

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 358
    .local v3, "btnSure":Landroid/widget/Button;
    const v4, 0x7f08003b

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 360
    .local v4, "btnCancel":Landroid/widget/Button;
    new-instance v5, Lcom/wen/fluorescence/Fragment/QCDataFragment$4;

    invoke-direct {v5, p0, v2}, Lcom/wen/fluorescence/Fragment/QCDataFragment$4;-><init>(Lcom/wen/fluorescence/Fragment/QCDataFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    new-instance v5, Lcom/wen/fluorescence/Fragment/QCDataFragment$5;

    invoke-direct {v5, p0, v2}, Lcom/wen/fluorescence/Fragment/QCDataFragment$5;-><init>(Lcom/wen/fluorescence/Fragment/QCDataFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    return-void
.end method

.method private goNextPage()V
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->page:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/PageUtils;->isHasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->page:Lcom/wen/fluorescence/util/PageUtils;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->page:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/PageUtils;->getPageNow()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/util/PageUtils;->setPageNow(I)V

    .line 297
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->startQuery()V

    .line 298
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->updateTestResult()V

    .line 300
    :cond_0
    return-void
.end method

.method private goPage()V
    .locals 2

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->etPage:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 319
    .local v0, "go":I
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->page:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/PageUtils;->getPageTotal()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 320
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->page:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v1, v0}, Lcom/wen/fluorescence/util/PageUtils;->setPageNow(I)V

    .line 321
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->startQuery()V

    .line 322
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->updateTestResult()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    .end local v0    # "go":I
    :cond_0
    goto :goto_0

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 330
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private goPrevPage()V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->page:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/PageUtils;->isHasPrev()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->page:Lcom/wen/fluorescence/util/PageUtils;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->page:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/PageUtils;->getPageNow()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/util/PageUtils;->setPageNow(I)V

    .line 308
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->startQuery()V

    .line 309
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->updateTestResult()V

    .line 311
    :cond_0
    return-void
.end method

.method private initDefaultTestResult()V
    .locals 8

    .line 274
    new-instance v0, Lcom/wen/fluorescence/database/TestResultCondition;

    invoke-direct {v0}, Lcom/wen/fluorescence/database/TestResultCondition;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->condition:Lcom/wen/fluorescence/database/TestResultCondition;

    .line 275
    new-instance v0, Lcom/wen/fluorescence/util/DateUtils;

    invoke-direct {v0}, Lcom/wen/fluorescence/util/DateUtils;-><init>()V

    .line 276
    .local v0, "du":Lcom/wen/fluorescence/util/DateUtils;
    const-string v1, "yyyy-MM-dd"

    invoke-static {v1}, Lcom/wen/fluorescence/util/DateUtils;->getSysemDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "today":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " 00:00:00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 278
    const-string v2, "yyyy-MM-dd"

    .line 280
    invoke-static {v1, v2}, Lcom/wen/fluorescence/util/DateUtils;->string2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 279
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/wen/fluorescence/util/DateUtils;->addDateSelf(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v2

    const-string v4, "yyyy-MM-dd"

    .line 278
    invoke-static {v2, v4}, Lcom/wen/fluorescence/util/DateUtils;->date2String(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 282
    .local v2, "tomorrow":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " 00:00:00"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 283
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->page:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v5

    sget-object v6, Lcom/wen/fluorescence/util/PublicFuction;->arraySample:[Ljava/lang/String;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    invoke-virtual {v5, v1, v2, v6}, Lcom/wen/fluorescence/database/DBManager;->getTestResultCountHistory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/wen/fluorescence/util/PageUtils;->setTotalSize(I)V

    .line 284
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->page:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v4, v3}, Lcom/wen/fluorescence/util/PageUtils;->setPageNow(I)V

    .line 285
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->condition:Lcom/wen/fluorescence/database/TestResultCondition;

    invoke-virtual {v3, v1}, Lcom/wen/fluorescence/database/TestResultCondition;->setStartTime(Ljava/lang/String;)V

    .line 286
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->condition:Lcom/wen/fluorescence/database/TestResultCondition;

    invoke-virtual {v3, v2}, Lcom/wen/fluorescence/database/TestResultCondition;->setEndTime(Ljava/lang/String;)V

    .line 287
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->startQuery()V

    .line 288
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->updateTestResult()V

    .line 289
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 101
    const v0, 0x7f0801d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->tableLayout:Landroid/widget/TableLayout;

    .line 102
    const v0, 0x7f08009a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->cbSelectAll:Landroid/widget/CheckBox;

    .line 103
    const v0, 0x7f080221

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->tvPage:Landroid/widget/TextView;

    .line 104
    const v0, 0x7f0800dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->etPage:Landroid/widget/EditText;

    .line 105
    const v0, 0x7f080067

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->btnPrevious:Landroid/widget/Button;

    .line 106
    const v0, 0x7f080063

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->btnNext:Landroid/widget/Button;

    .line 107
    const v0, 0x7f080055

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->btnGo:Landroid/widget/Button;

    .line 108
    const v0, 0x7f08006c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->btnQuery:Landroid/widget/Button;

    .line 109
    const v0, 0x7f080046

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->btnDelete:Landroid/widget/Button;

    .line 110
    const v0, 0x7f080069

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->btnPrint:Landroid/widget/Button;

    .line 111
    const v0, 0x7f08005b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->btnLIS:Landroid/widget/Button;

    .line 112
    const v0, 0x7f08005a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->btnInfo:Landroid/widget/Button;

    .line 113
    return-void
.end method

.method private print()V
    .locals 6

    .line 497
    const/4 v0, 0x0

    .line 498
    .local v0, "isSelected":Z
    const/4 v1, 0x0

    .line 498
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->listData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 499
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->tableLayout:Landroid/widget/TableLayout;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 500
    .local v2, "childrenView":Landroid/view/View;
    const v3, 0x7f080099

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 501
    .local v3, "cbSelect":Landroid/widget/CheckBox;
    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 502
    const/4 v0, 0x1

    .line 503
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/wen/fluorescence/Thread/PrinterThread;->getPrinterThread(Landroid/content/Context;)Lcom/wen/fluorescence/Thread/PrinterThread;

    move-result-object v4

    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->listData:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v4, v5}, Lcom/wen/fluorescence/Thread/PrinterThread;->addPrinter(Lcom/wen/fluorescence/database/TestResult;)V

    .line 498
    .end local v2    # "childrenView":Landroid/view/View;
    .end local v3    # "cbSelect":Landroid/widget/CheckBox;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 506
    .end local v1    # "i":I
    :cond_1
    if-nez v0, :cond_2

    .line 507
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0c0166

    invoke-virtual {p0, v2}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 508
    return-void

    .line 510
    :cond_2
    return-void
.end method

.method private query()V
    .locals 20

    .line 392
    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a0048

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 394
    .local v7, "view":Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 395
    .local v8, "dialog":Landroid/app/AlertDialog;
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 396
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 397
    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 398
    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x20008

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 399
    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 402
    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    .line 403
    .local v9, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    .line 404
    .local v10, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v0, 0x11

    invoke-virtual {v9, v0}, Landroid/view/Window;->setGravity(I)V

    .line 405
    const/4 v0, 0x6

    iput v0, v10, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 406
    const/16 v0, 0x276

    iput v0, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 407
    const/16 v0, 0x15e

    iput v0, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 408
    invoke-virtual {v9, v10}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 410
    const v0, 0x7f08001f

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/AutoCompleteTextView;

    .line 411
    .local v11, "actvLogNoNumber":Landroid/widget/AutoCompleteTextView;
    const v0, 0x7f080255

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/TextView;

    .line 412
    .local v12, "tvTimeFrom":Landroid/widget/TextView;
    const v0, 0x7f080258

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/TextView;

    .line 413
    .local v13, "tvTimeTo":Landroid/widget/TextView;
    const v0, 0x7f080040

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/Button;

    .line 414
    .local v14, "btnClear":Landroid/widget/Button;
    const v0, 0x7f080089

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/Button;

    .line 415
    .local v15, "btnSure":Landroid/widget/Button;
    const v0, 0x7f08003b

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/Button;

    .line 418
    .local v5, "btnCancel":Landroid/widget/Button;
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v0

    const-string v1, "logNO"

    .line 419
    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/DBManager;->queryGivenFieldDistinceInResult(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 420
    .local v4, "list_logNoNumber":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 421
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x109000a

    invoke-direct {v0, v1, v2, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    move-object v3, v0

    .line 423
    .local v3, "adapterlogNoNumber":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v11, v3}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 425
    new-instance v0, Lcom/wen/fluorescence/ViewUtil/DatePickerListener;

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/wen/fluorescence/ViewUtil/DatePickerListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    new-instance v0, Lcom/wen/fluorescence/ViewUtil/DatePickerListener;

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/wen/fluorescence/ViewUtil/DatePickerListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    new-instance v0, Lcom/wen/fluorescence/Fragment/QCDataFragment$6;

    invoke-direct {v0, v6, v11, v12, v13}, Lcom/wen/fluorescence/Fragment/QCDataFragment$6;-><init>(Lcom/wen/fluorescence/Fragment/QCDataFragment;Landroid/widget/AutoCompleteTextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    new-instance v2, Lcom/wen/fluorescence/Fragment/QCDataFragment$7;

    move-object v0, v2

    move-object v1, v6

    move-object/from16 v16, v7

    move-object v7, v2

    move-object v2, v11

    .line 438
    .end local v7    # "view":Landroid/view/View;
    .local v16, "view":Landroid/view/View;
    move-object/from16 v17, v3

    move-object v3, v12

    .line 438
    .end local v3    # "adapterlogNoNumber":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .local v17, "adapterlogNoNumber":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object/from16 v18, v4

    move-object v4, v13

    .line 438
    .end local v4    # "list_logNoNumber":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v18, "list_logNoNumber":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v19, v9

    move-object v9, v5

    move-object v5, v8

    .line 438
    .end local v5    # "btnCancel":Landroid/widget/Button;
    .local v9, "btnCancel":Landroid/widget/Button;
    .local v19, "dialogWindow":Landroid/view/Window;
    invoke-direct/range {v0 .. v5}, Lcom/wen/fluorescence/Fragment/QCDataFragment$7;-><init>(Lcom/wen/fluorescence/Fragment/QCDataFragment;Landroid/widget/AutoCompleteTextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/app/AlertDialog;)V

    invoke-virtual {v15, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    new-instance v0, Lcom/wen/fluorescence/Fragment/QCDataFragment$8;

    invoke-direct {v0, v6, v8}, Lcom/wen/fluorescence/Fragment/QCDataFragment$8;-><init>(Lcom/wen/fluorescence/Fragment/QCDataFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    return-void
.end method

.method private sendLis()V
    .locals 6

    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, "isSelected":Z
    const/4 v1, 0x0

    .line 191
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->listData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 192
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->tableLayout:Landroid/widget/TableLayout;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 193
    .local v2, "childrenView":Landroid/view/View;
    const v3, 0x7f080099

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 194
    .local v3, "cbSelect":Landroid/widget/CheckBox;
    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 195
    const/4 v0, 0x1

    .line 196
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->handler:Landroid/os/Handler;

    invoke-static {v4, v5}, Lcom/wen/fluorescence/Thread/LISThread;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/wen/fluorescence/Thread/LISThread;

    move-result-object v4

    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->listData:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v4, v5}, Lcom/wen/fluorescence/Thread/LISThread;->addTestResult(Lcom/wen/fluorescence/database/TestResult;)V

    .line 191
    .end local v2    # "childrenView":Landroid/view/View;
    .end local v3    # "cbSelect":Landroid/widget/CheckBox;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    .end local v1    # "i":I
    :cond_1
    if-nez v0, :cond_2

    .line 200
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0c0166

    invoke-virtual {p0, v2}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 201
    return-void

    .line 203
    :cond_2
    return-void
.end method

.method private setAllSelectCheck(Z)V
    .locals 4
    .param p1, "check"    # Z

    .line 146
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->listData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 147
    .local v0, "count":I
    const/4 v1, 0x0

    .line 147
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 148
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->tableLayout:Landroid/widget/TableLayout;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 149
    .local v2, "children":Landroid/view/View;
    const v3, 0x7f080099

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 150
    .local v3, "cbSelect":Landroid/widget/CheckBox;
    invoke-virtual {v3, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 147
    .end local v2    # "children":Landroid/view/View;
    .end local v3    # "cbSelect":Landroid/widget/CheckBox;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private setDetialInformationDialog()V
    .locals 7

    .line 517
    const/4 v0, 0x0

    .line 518
    .local v0, "selectCount":I
    const/4 v1, 0x0

    .line 519
    .local v1, "testResult":Lcom/wen/fluorescence/database/TestResult;
    const/4 v2, 0x0

    move-object v3, v1

    move v1, v0

    move v0, v2

    .line 519
    .local v0, "i":I
    .local v1, "selectCount":I
    .local v3, "testResult":Lcom/wen/fluorescence/database/TestResult;
    :goto_0
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->listData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 520
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->tableLayout:Landroid/widget/TableLayout;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 521
    .local v4, "childrenView":Landroid/view/View;
    const v5, 0x7f080099

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 522
    .local v5, "cbSelect":Landroid/widget/CheckBox;
    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 523
    add-int/lit8 v1, v1, 0x1

    .line 524
    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->listData:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    check-cast v3, Lcom/wen/fluorescence/database/TestResult;

    .line 519
    .end local v4    # "childrenView":Landroid/view/View;
    .end local v5    # "cbSelect":Landroid/widget/CheckBox;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 527
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    if-eq v1, v0, :cond_2

    .line 528
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f0c016a

    invoke-virtual {p0, v2}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 529
    return-void

    .line 531
    :cond_2
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->setDialogShow(Lcom/wen/fluorescence/database/TestResult;Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$DetialCallback;Z)V

    .line 532
    return-void
.end method

.method private setViewIncident()V
    .locals 4

    .line 116
    new-instance v0, Lcom/wen/fluorescence/util/PageUtils;

    invoke-direct {v0}, Lcom/wen/fluorescence/util/PageUtils;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->page:Lcom/wen/fluorescence/util/PageUtils;

    .line 117
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->page:Lcom/wen/fluorescence/util/PageUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/util/PageUtils;->setPageNow(I)V

    .line 118
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->page:Lcom/wen/fluorescence/util/PageUtils;

    iget v1, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->pageSize:I

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/util/PageUtils;->setPageSize(I)V

    .line 119
    const/4 v0, 0x0

    .line 119
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->pageSize:I

    if-ge v0, v1, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0a0047

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 121
    .local v1, "tableRow":Landroid/view/View;
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v2, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 119
    .end local v1    # "tableRow":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->cbSelectAll:Landroid/widget/CheckBox;

    new-instance v1, Lcom/wen/fluorescence/Fragment/QCDataFragment$2;

    invoke-direct {v1, p0}, Lcom/wen/fluorescence/Fragment/QCDataFragment$2;-><init>(Lcom/wen/fluorescence/Fragment/QCDataFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 129
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->btnPrevious:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->btnNext:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->btnGo:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->btnQuery:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->btnDelete:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->btnPrint:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->btnLIS:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->btnInfo:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->initDefaultTestResult()V

    .line 138
    return-void
.end method

.method private startQuery()V
    .locals 5

    .line 210
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->condition:Lcom/wen/fluorescence/database/TestResultCondition;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->page:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/PageUtils;->getPageSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResultCondition;->setLimit(I)V

    .line 211
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->condition:Lcom/wen/fluorescence/database/TestResultCondition;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->page:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/PageUtils;->getPageNow()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->page:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v2}, Lcom/wen/fluorescence/util/PageUtils;->getPageSize()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResultCondition;->setOffset(I)V

    .line 212
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->listData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 213
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->listData:Ljava/util/List;

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v1

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->condition:Lcom/wen/fluorescence/database/TestResultCondition;

    sget-object v3, Lcom/wen/fluorescence/util/PublicFuction;->arraySample:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/wen/fluorescence/database/DBManager;->queryQCTestResultByCondition(Lcom/wen/fluorescence/database/TestResultCondition;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 214
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->tvPage:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->page:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v2}, Lcom/wen/fluorescence/util/PageUtils;->getPageNow()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->page:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v2}, Lcom/wen/fluorescence/util/PageUtils;->getPageTotal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    return-void
.end method

.method private updateTestResult()V
    .locals 18

    .line 221
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->cbSelectAll:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 222
    iget-object v1, v0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->listData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 223
    .local v1, "count":I
    move v3, v2

    .line 223
    .local v3, "i":I
    :goto_0
    const v4, 0x7f08024a

    const v5, 0x7f080099

    const v6, 0x7f080213

    const v7, 0x7f08024f

    const v8, 0x7f080234

    const v9, 0x7f080228

    const v10, 0x7f08022a

    const v11, 0x7f080244

    if-ge v3, v1, :cond_2

    .line 224
    iget-object v12, v0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->tableLayout:Landroid/widget/TableLayout;

    add-int/lit8 v13, v3, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 225
    .local v12, "children":Landroid/view/View;
    if-nez v12, :cond_0

    .line 226
    goto/16 :goto_3

    .line 228
    :cond_0
    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 229
    .local v11, "tvSerialNumber":Landroid/widget/TextView;
    invoke-virtual {v12, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 230
    .local v10, "tvQCItem":Landroid/widget/TextView;
    invoke-virtual {v12, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 231
    .local v9, "tvQCBatchNo":Landroid/widget/TextView;
    invoke-virtual {v12, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 232
    .local v8, "tvResult":Landroid/widget/TextView;
    invoke-virtual {v12, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 233
    .local v7, "tvTestTime":Landroid/widget/TextView;
    invoke-virtual {v12, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 234
    .local v6, "tvLevel":Landroid/widget/TextView;
    invoke-virtual {v12, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 235
    .local v5, "cbSelect":Landroid/widget/CheckBox;
    invoke-virtual {v12, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 236
    .local v4, "tvTargetValue":Landroid/widget/TextView;
    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 237
    iget-object v13, v0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->listData:Ljava/util/List;

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v13}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v13, v0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->listData:Ljava/util/List;

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v13}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v13, v0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->listData:Ljava/util/List;

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v13}, Lcom/wen/fluorescence/database/TestResult;->getLogNo()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v13, v0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->listData:Ljava/util/List;

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v13}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v13, v0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->listData:Ljava/util/List;

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v13}, Lcom/wen/fluorescence/database/TestResult;->getTestTime()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v13, v0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->listData:Ljava/util/List;

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v13}, Lcom/wen/fluorescence/database/TestResult;->getLevel()I

    move-result v13

    if-nez v13, :cond_1

    const v13, 0x7f0c00ef

    :goto_1
    invoke-virtual {v0, v13}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    goto :goto_2

    :cond_1
    const v13, 0x7f0c00b9

    goto :goto_1

    :goto_2
    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->listData:Ljava/util/List;

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v14}, Lcom/wen/fluorescence/database/TestResult;->getHolder1()D

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    .end local v4    # "tvTargetValue":Landroid/widget/TextView;
    .end local v5    # "cbSelect":Landroid/widget/CheckBox;
    .end local v6    # "tvLevel":Landroid/widget/TextView;
    .end local v7    # "tvTestTime":Landroid/widget/TextView;
    .end local v8    # "tvResult":Landroid/widget/TextView;
    .end local v9    # "tvQCBatchNo":Landroid/widget/TextView;
    .end local v10    # "tvQCItem":Landroid/widget/TextView;
    .end local v11    # "tvSerialNumber":Landroid/widget/TextView;
    .end local v12    # "children":Landroid/view/View;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 246
    .end local v3    # "i":I
    :cond_2
    move v3, v1

    .line 246
    .restart local v3    # "i":I
    :goto_4
    iget-object v12, v0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v12}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v3, v12, :cond_4

    .line 247
    iget-object v12, v0, Lcom/wen/fluorescence/Fragment/QCDataFragment;->tableLayout:Landroid/widget/TableLayout;

    add-int/lit8 v13, v3, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 248
    .restart local v12    # "children":Landroid/view/View;
    if-nez v12, :cond_3

    .line 249
    goto :goto_5

    .line 251
    :cond_3
    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 252
    .local v13, "tvSerialNumber":Landroid/widget/TextView;
    invoke-virtual {v12, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 253
    .local v14, "tvQCItem":Landroid/widget/TextView;
    invoke-virtual {v12, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 254
    .local v15, "tvQCBatchNo":Landroid/widget/TextView;
    invoke-virtual {v12, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Landroid/widget/TextView;

    .line 255
    .restart local v8    # "tvResult":Landroid/widget/TextView;
    invoke-virtual {v12, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Landroid/widget/TextView;

    .line 256
    .restart local v7    # "tvTestTime":Landroid/widget/TextView;
    invoke-virtual {v12, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Landroid/widget/CheckBox;

    .line 257
    .restart local v5    # "cbSelect":Landroid/widget/CheckBox;
    invoke-virtual {v12, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Landroid/widget/TextView;

    .line 258
    .restart local v6    # "tvLevel":Landroid/widget/TextView;
    invoke-virtual {v12, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Landroid/widget/TextView;

    .line 259
    .restart local v4    # "tvTargetValue":Landroid/widget/TextView;
    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 260
    const-string v2, ""

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    const-string v2, ""

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    const-string v2, ""

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    const-string v2, ""

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    const-string v2, ""

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    const-string v2, ""

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    const-string v2, ""

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    .end local v4    # "tvTargetValue":Landroid/widget/TextView;
    .end local v5    # "cbSelect":Landroid/widget/CheckBox;
    .end local v6    # "tvLevel":Landroid/widget/TextView;
    .end local v7    # "tvTestTime":Landroid/widget/TextView;
    .end local v8    # "tvResult":Landroid/widget/TextView;
    .end local v12    # "children":Landroid/view/View;
    .end local v13    # "tvSerialNumber":Landroid/widget/TextView;
    .end local v14    # "tvQCItem":Landroid/widget/TextView;
    .end local v15    # "tvQCBatchNo":Landroid/widget/TextView;
    :goto_5
    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x0

    const v4, 0x7f08024a

    const v5, 0x7f080099

    const v6, 0x7f080213

    const v7, 0x7f08024f

    const v8, 0x7f080234

    goto/16 :goto_4

    .line 268
    .end local v3    # "i":I
    :cond_4
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

    .line 86
    const v0, 0x7f0a0046

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 87
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->initView(Landroid/view/View;)V

    .line 88
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->setViewIncident()V

    .line 89
    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .param p1, "hidden"    # Z

    .line 94
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 95
    if-nez p1, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->initDefaultTestResult()V

    .line 98
    :cond_0
    return-void
.end method
