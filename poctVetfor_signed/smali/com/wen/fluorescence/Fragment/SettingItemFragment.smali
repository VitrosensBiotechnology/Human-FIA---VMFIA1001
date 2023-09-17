.class public Lcom/wen/fluorescence/Fragment/SettingItemFragment;
.super Landroid/support/v4/app/Fragment;
.source "SettingItemFragment.java"


# instance fields
.field private btnAdd:Landroid/widget/Button;

.field private btnCancel:Landroid/widget/Button;

.field private btnEdit:Landroid/widget/Button;

.field private btnNext:Landroid/widget/Button;

.field private btnPrevious:Landroid/widget/Button;

.field private btnReset:Landroid/widget/Button;

.field private listData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wen/fluorescence/database/ItemPara;",
            ">;"
        }
    .end annotation
.end field

.field listener:Lcom/wen/fluorescence/util/MyOnClickListener;

.field private pageUtils:Lcom/wen/fluorescence/util/PageUtils;

.field private row:I

.field private selectItemPara:Lcom/wen/fluorescence/database/ItemPara;

.field private tableLayout:Landroid/widget/TableLayout;

.field private tvPage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->listData:Ljava/util/List;

    .line 48
    new-instance v0, Lcom/wen/fluorescence/util/PageUtils;

    invoke-direct {v0}, Lcom/wen/fluorescence/util/PageUtils;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    .line 51
    const/16 v0, 0x8

    iput v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->row:I

    .line 217
    new-instance v0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$2;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment$2;-><init>(Lcom/wen/fluorescence/Fragment/SettingItemFragment;)V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/wen/fluorescence/Fragment/SettingItemFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    .line 41
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->clearBackground()V

    return-void
.end method

.method static synthetic access$100(Lcom/wen/fluorescence/Fragment/SettingItemFragment;)Lcom/wen/fluorescence/database/ItemPara;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    .line 41
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->selectItemPara:Lcom/wen/fluorescence/database/ItemPara;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/wen/fluorescence/Fragment/SettingItemFragment;)Lcom/wen/fluorescence/util/PageUtils;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    .line 41
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    return-object v0
.end method

.method static synthetic access$102(Lcom/wen/fluorescence/Fragment/SettingItemFragment;Lcom/wen/fluorescence/database/ItemPara;)Lcom/wen/fluorescence/database/ItemPara;
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingItemFragment;
    .param p1, "x1"    # Lcom/wen/fluorescence/database/ItemPara;

    .line 41
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->selectItemPara:Lcom/wen/fluorescence/database/ItemPara;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/wen/fluorescence/Fragment/SettingItemFragment;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingItemFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->initListData(IZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/wen/fluorescence/Fragment/SettingItemFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    .line 41
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->listData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/wen/fluorescence/Fragment/SettingItemFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingItemFragment;
    .param p1, "x1"    # Ljava/util/List;

    .line 41
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->listData:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/wen/fluorescence/Fragment/SettingItemFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingItemFragment;
    .param p1, "x1"    # I

    .line 41
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->updateTestResult(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/wen/fluorescence/Fragment/SettingItemFragment;Lcom/wen/fluorescence/database/ItemPara;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingItemFragment;
    .param p1, "x1"    # Lcom/wen/fluorescence/database/ItemPara;

    .line 41
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->changeUnit(Lcom/wen/fluorescence/database/ItemPara;)V

    return-void
.end method

.method static synthetic access$200(Lcom/wen/fluorescence/Fragment/SettingItemFragment;I)Lcom/wen/fluorescence/database/ItemPara;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingItemFragment;
    .param p1, "x1"    # I

    .line 41
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getSelectedItem(I)Lcom/wen/fluorescence/database/ItemPara;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/wen/fluorescence/Fragment/SettingItemFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    .line 41
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->btnCancel:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/wen/fluorescence/Fragment/SettingItemFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    .line 41
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->goPrevPage()V

    return-void
.end method

.method static synthetic access$500(Lcom/wen/fluorescence/Fragment/SettingItemFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    .line 41
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->goNextPage()V

    return-void
.end method

.method static synthetic access$600(Lcom/wen/fluorescence/Fragment/SettingItemFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    .line 41
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->resetItemParameters()V

    return-void
.end method

.method static synthetic access$700(Lcom/wen/fluorescence/Fragment/SettingItemFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    .line 41
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->addItemParameters()V

    return-void
.end method

.method static synthetic access$800(Lcom/wen/fluorescence/Fragment/SettingItemFragment;Lcom/wen/fluorescence/database/ItemPara;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingItemFragment;
    .param p1, "x1"    # Lcom/wen/fluorescence/database/ItemPara;

    .line 41
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->selectItemForEdit(Lcom/wen/fluorescence/database/ItemPara;)V

    return-void
.end method

.method static synthetic access$900(Lcom/wen/fluorescence/Fragment/SettingItemFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    .line 41
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->cancelEditRange()V

    return-void
.end method

.method private addItemParameters()V
    .locals 24

    .line 317
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a0036

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 319
    .local v0, "view":Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 320
    .local v1, "dialog":Landroid/app/AlertDialog;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 321
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 322
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 324
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x20008

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 325
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 328
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 329
    .local v2, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    .line 330
    .local v13, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    .line 331
    const/4 v3, 0x6

    iput v3, v13, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 332
    const/16 v3, 0x1ea

    iput v3, v13, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 334
    invoke-virtual {v2, v13}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 336
    const v3, 0x7f080089

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/Button;

    .line 337
    .local v14, "btnSure":Landroid/widget/Button;
    const v3, 0x7f08003b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/Button;

    .line 338
    .local v15, "btnCancel":Landroid/widget/Button;
    const v3, 0x7f0800d2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/widget/EditText;

    .line 339
    .local v16, "etItems":Landroid/widget/EditText;
    const v3, 0x7f0800c7

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroid/widget/EditText;

    .line 340
    .local v17, "etCodes":Landroid/widget/EditText;
    const v3, 0x7f0800e3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroid/widget/EditText;

    .line 341
    .local v18, "etMins":Landroid/widget/EditText;
    const v3, 0x7f0800e2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/widget/EditText;

    .line 342
    .local v19, "etMaxs":Landroid/widget/EditText;
    const v3, 0x7f0800f1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Landroid/widget/EditText;

    .line 343
    .local v20, "etUnit":Landroid/widget/EditText;
    const v3, 0x7f0800d3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Landroid/widget/EditText;

    .line 344
    .local v21, "etK":Landroid/widget/EditText;
    const v3, 0x7f0800c2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Landroid/widget/EditText;

    .line 349
    .local v22, "etB":Landroid/widget/EditText;
    new-instance v12, Lcom/wen/fluorescence/Fragment/SettingItemFragment$4;

    move-object v3, v12

    move-object/from16 v4, p0

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    move-object/from16 v9, v20

    move-object/from16 v10, v21

    move-object/from16 v11, v22

    move-object/from16 v23, v0

    move-object v0, v12

    move-object v12, v1

    .line 349
    .end local v0    # "view":Landroid/view/View;
    .local v23, "view":Landroid/view/View;
    invoke-direct/range {v3 .. v12}, Lcom/wen/fluorescence/Fragment/SettingItemFragment$4;-><init>(Lcom/wen/fluorescence/Fragment/SettingItemFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    new-instance v0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$5;

    move-object/from16 v3, p0

    invoke-direct {v0, v3, v1}, Lcom/wen/fluorescence/Fragment/SettingItemFragment$5;-><init>(Lcom/wen/fluorescence/Fragment/SettingItemFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v15, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    return-void
.end method

.method private cancelEditRange()V
    .locals 2

    .line 653
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->setRangeEditEnable(Z)V

    .line 654
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/PageUtils;->getPageNow()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->updateTestResult(I)V

    .line 655
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->btnCancel:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 656
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->btnEdit:Landroid/widget/Button;

    const v1, 0x7f0c00a0

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 657
    return-void
.end method

.method private changeUnit(Lcom/wen/fluorescence/database/ItemPara;)V
    .locals 32
    .param p1, "selectItemPara"    # Lcom/wen/fluorescence/database/ItemPara;

    .line 490
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a0037

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 492
    .local v0, "view":Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 493
    .local v1, "dialog":Landroid/app/AlertDialog;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 494
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 495
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 497
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x20008

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 498
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 501
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    .line 502
    .local v15, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v15}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v14

    .line 503
    .local v14, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x11

    invoke-virtual {v15, v3}, Landroid/view/Window;->setGravity(I)V

    .line 504
    const/4 v3, 0x6

    iput v3, v14, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 505
    const/16 v3, 0x334

    iput v3, v14, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 507
    invoke-virtual {v15, v14}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 509
    const v3, 0x7f080089

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/widget/Button;

    .line 510
    .local v13, "btnSure":Landroid/widget/Button;
    const v3, 0x7f08003b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/widget/Button;

    .line 511
    .local v12, "btnCancel":Landroid/widget/Button;
    const v3, 0x7f0800db

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/widget/EditText;

    .line 512
    .local v11, "etOriUnit":Landroid/widget/EditText;
    const v3, 0x7f0800ec

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/widget/EditText;

    .line 513
    .local v10, "etTarUnit1":Landroid/widget/EditText;
    const v3, 0x7f0800d4

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/widget/EditText;

    .line 514
    .local v9, "etK1":Landroid/widget/EditText;
    const v3, 0x7f0800c3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Landroid/widget/EditText;

    .line 515
    .local v8, "etB1":Landroid/widget/EditText;
    const v3, 0x7f0800ea

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Landroid/widget/EditText;

    .line 516
    .local v7, "etTarTemp1":Landroid/widget/EditText;
    const v3, 0x7f08009c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/widget/CheckBox;

    .line 517
    .local v6, "cbSelectUnit1":Landroid/widget/CheckBox;
    const v3, 0x7f0800ed

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/widget/EditText;

    .line 518
    .local v5, "etTarUnit2":Landroid/widget/EditText;
    const v3, 0x7f0800d5

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/widget/EditText;

    .line 519
    .local v4, "etK2":Landroid/widget/EditText;
    const v3, 0x7f0800c4

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 520
    .local v3, "etB2":Landroid/widget/EditText;
    const v2, 0x7f0800eb

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 521
    .local v2, "etTarTemp2":Landroid/widget/EditText;
    move-object/from16 v18, v12

    const v12, 0x7f08009d

    .line 521
    .end local v12    # "btnCancel":Landroid/widget/Button;
    .local v18, "btnCancel":Landroid/widget/Button;
    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/CheckBox;

    .line 523
    .local v12, "cbSelectUnit2":Landroid/widget/CheckBox;
    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Lcom/wen/fluorescence/database/ItemPara;->getUnit()Ljava/lang/String;

    move-result-object v0

    .line 523
    .end local v0    # "view":Landroid/view/View;
    .local v19, "view":Landroid/view/View;
    invoke-virtual {v11, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 524
    invoke-virtual/range {p1 .. p1}, Lcom/wen/fluorescence/database/ItemPara;->getTarUnit1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/wen/fluorescence/database/ItemPara;->getTarUnit1()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 525
    invoke-virtual/range {p1 .. p1}, Lcom/wen/fluorescence/database/ItemPara;->getTarK1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    goto :goto_1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/wen/fluorescence/database/ItemPara;->getTarK1()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 526
    invoke-virtual/range {p1 .. p1}, Lcom/wen/fluorescence/database/ItemPara;->getTarB1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    goto :goto_2

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/wen/fluorescence/database/ItemPara;->getTarB1()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 527
    invoke-virtual/range {p1 .. p1}, Lcom/wen/fluorescence/database/ItemPara;->getTarTemplate1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ""

    goto :goto_3

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/wen/fluorescence/database/ItemPara;->getTarTemplate1()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 528
    invoke-virtual/range {p1 .. p1}, Lcom/wen/fluorescence/database/ItemPara;->getTarPrintMode1()I

    move-result v0

    move-object/from16 v20, v7

    const/4 v7, 0x1

    .line 528
    .end local v7    # "etTarTemp1":Landroid/widget/EditText;
    .local v20, "etTarTemp1":Landroid/widget/EditText;
    if-ne v0, v7, :cond_4

    move v0, v7

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 530
    invoke-virtual/range {p1 .. p1}, Lcom/wen/fluorescence/database/ItemPara;->getTarUnit2()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, ""

    goto :goto_5

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/wen/fluorescence/database/ItemPara;->getTarUnit2()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 531
    invoke-virtual/range {p1 .. p1}, Lcom/wen/fluorescence/database/ItemPara;->getTarK2()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, ""

    goto :goto_6

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/wen/fluorescence/database/ItemPara;->getTarK2()Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 532
    invoke-virtual/range {p1 .. p1}, Lcom/wen/fluorescence/database/ItemPara;->getTarB2()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, ""

    goto :goto_7

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/wen/fluorescence/database/ItemPara;->getTarB2()Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 533
    invoke-virtual/range {p1 .. p1}, Lcom/wen/fluorescence/database/ItemPara;->getTarTemplate2()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, ""

    goto :goto_8

    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/wen/fluorescence/database/ItemPara;->getTarTemplate2()Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 534
    invoke-virtual/range {p1 .. p1}, Lcom/wen/fluorescence/database/ItemPara;->getTarPrintMode2()I

    move-result v0

    if-ne v0, v7, :cond_9

    goto :goto_9

    :cond_9
    const/4 v7, 0x0

    :goto_9
    invoke-virtual {v12, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 536
    new-instance v0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$9;

    move-object/from16 v17, v3

    move-object v3, v0

    .line 536
    .end local v3    # "etB2":Landroid/widget/EditText;
    .local v17, "etB2":Landroid/widget/EditText;
    move-object/from16 v21, v4

    move-object/from16 v4, p0

    .line 536
    .end local v4    # "etK2":Landroid/widget/EditText;
    .local v21, "etK2":Landroid/widget/EditText;
    move-object/from16 v22, v5

    move-object v5, v6

    .line 536
    .end local v5    # "etTarUnit2":Landroid/widget/EditText;
    .local v22, "etTarUnit2":Landroid/widget/EditText;
    move-object/from16 v23, v6

    move-object v6, v10

    .line 536
    .end local v6    # "cbSelectUnit1":Landroid/widget/CheckBox;
    .local v23, "cbSelectUnit1":Landroid/widget/CheckBox;
    move-object/from16 v7, v20

    move-object/from16 v24, v8

    move-object v8, v12

    .line 536
    .end local v8    # "etB1":Landroid/widget/EditText;
    .local v24, "etB1":Landroid/widget/EditText;
    move-object/from16 v25, v9

    move-object/from16 v9, v22

    .line 536
    .end local v9    # "etK1":Landroid/widget/EditText;
    .local v25, "etK1":Landroid/widget/EditText;
    move-object/from16 v26, v10

    move-object v10, v2

    .line 536
    .end local v10    # "etTarUnit1":Landroid/widget/EditText;
    .local v26, "etTarUnit1":Landroid/widget/EditText;
    move-object/from16 v27, v11

    move-object/from16 v11, p1

    .line 536
    .end local v11    # "etOriUnit":Landroid/widget/EditText;
    .local v27, "etOriUnit":Landroid/widget/EditText;
    move-object/from16 v28, v2

    move-object/from16 v2, v18

    move-object/from16 v18, v12

    move-object/from16 v12, v25

    .line 536
    .end local v12    # "cbSelectUnit2":Landroid/widget/CheckBox;
    .local v2, "btnCancel":Landroid/widget/Button;
    .local v18, "cbSelectUnit2":Landroid/widget/CheckBox;
    .local v28, "etTarTemp2":Landroid/widget/EditText;
    move-object/from16 v29, v2

    move-object v2, v13

    move-object/from16 v13, v24

    .line 536
    .end local v13    # "btnSure":Landroid/widget/Button;
    .local v2, "btnSure":Landroid/widget/Button;
    .local v29, "btnCancel":Landroid/widget/Button;
    move-object/from16 v30, v14

    move-object/from16 v14, v21

    .line 536
    .end local v14    # "lp":Landroid/view/WindowManager$LayoutParams;
    .local v30, "lp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v31, v15

    move-object/from16 v15, v17

    .line 536
    .end local v15    # "dialogWindow":Landroid/view/Window;
    .local v31, "dialogWindow":Landroid/view/Window;
    move-object/from16 v16, v1

    invoke-direct/range {v3 .. v16}, Lcom/wen/fluorescence/Fragment/SettingItemFragment$9;-><init>(Lcom/wen/fluorescence/Fragment/SettingItemFragment;Landroid/widget/CheckBox;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/wen/fluorescence/database/ItemPara;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 568
    new-instance v0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$10;

    move-object/from16 v3, p0

    invoke-direct {v0, v3, v1}, Lcom/wen/fluorescence/Fragment/SettingItemFragment$10;-><init>(Lcom/wen/fluorescence/Fragment/SettingItemFragment;Landroid/app/AlertDialog;)V

    move-object/from16 v4, v29

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 575
    .end local v29    # "btnCancel":Landroid/widget/Button;
    .local v4, "btnCancel":Landroid/widget/Button;
    return-void
.end method

.method private clearBackground()V
    .locals 8

    .line 122
    const/4 v0, 0x0

    .line 122
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v1}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v1, v0}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 124
    .local v1, "children":Landroid/view/View;
    const v2, 0x7f080209

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 125
    .local v2, "tvItem":Landroid/widget/TextView;
    const v3, 0x7f08020e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 126
    .local v3, "tvItemCode":Landroid/widget/TextView;
    const v4, 0x7f0800e1

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 127
    .local v4, "etRange":Landroid/widget/TextView;
    const v5, 0x7f0800f1

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 128
    .local v5, "etUnit":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f050066

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 129
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 130
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 131
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 122
    .end local v1    # "children":Landroid/view/View;
    .end local v2    # "tvItem":Landroid/widget/TextView;
    .end local v3    # "tvItemCode":Landroid/widget/TextView;
    .end local v4    # "etRange":Landroid/widget/TextView;
    .end local v5    # "etUnit":Landroid/widget/TextView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private getSelectedItem(I)Lcom/wen/fluorescence/database/ItemPara;
    .locals 5
    .param p1, "selectedIndex"    # I

    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, "bean":Lcom/wen/fluorescence/database/ItemPara;
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/PageUtils;->getPageNow()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v2}, Lcom/wen/fluorescence/util/PageUtils;->getPageSize()I

    move-result v2

    mul-int/2addr v1, v2

    .line 138
    .local v1, "offSet":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v2, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/ItemPara;>;"
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v3}, Lcom/wen/fluorescence/util/PageUtils;->getPageSize()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->listData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 140
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->listData:Ljava/util/List;

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v4}, Lcom/wen/fluorescence/util/PageUtils;->getPageSize()I

    move-result v4

    add-int/2addr v4, v1

    invoke-interface {v3, v1, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 142
    :cond_0
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->listData:Ljava/util/List;

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->listData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3, v1, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 144
    :goto_0
    add-int/lit8 v3, p1, 0x1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gt v3, v4, :cond_1

    .line 145
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/wen/fluorescence/database/ItemPara;

    .line 147
    :cond_1
    return-object v0
.end method

.method private goNextPage()V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/PageUtils;->isHasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/PageUtils;->getPageNow()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/util/PageUtils;->setPageNow(I)V

    .line 277
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/PageUtils;->getPageNow()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->updateTestResult(I)V

    .line 279
    :cond_0
    return-void
.end method

.method private goPrevPage()V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/PageUtils;->isHasPrev()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/PageUtils;->getPageNow()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/util/PageUtils;->setPageNow(I)V

    .line 287
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/PageUtils;->getPageNow()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->updateTestResult(I)V

    .line 289
    :cond_0
    return-void
.end method

.method private initListData(IZ)V
    .locals 4
    .param p1, "page"    # I
    .param p2, "last"    # Z

    .line 156
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->listData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, "type":I
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/Global;->getLanguage()I

    move-result v1

    const v2, 0x1a00001

    if-ne v1, v2, :cond_0

    .line 159
    const/4 v0, 0x0

    goto :goto_0

    .line 161
    :cond_0
    const/4 v0, 0x1

    .line 163
    :goto_0
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->listData:Ljava/util/List;

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/database/DBManager;->queryItemPara(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 164
    const-string v1, "Test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listDataSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->listData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->listData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/util/PageUtils;->setTotalSize(I)V

    .line 166
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v1, p1}, Lcom/wen/fluorescence/util/PageUtils;->setPageNow(I)V

    .line 167
    if-nez p2, :cond_1

    .line 168
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->updateTestResult(I)V

    goto :goto_1

    .line 170
    :cond_1
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/PageUtils;->getPageTotal()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->updateTestResult(I)V

    .line 172
    :goto_1
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 74
    const v0, 0x7f0801d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->tableLayout:Landroid/widget/TableLayout;

    .line 75
    const v0, 0x7f080221

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->tvPage:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f080067

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->btnPrevious:Landroid/widget/Button;

    .line 77
    const v0, 0x7f080063

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->btnNext:Landroid/widget/Button;

    .line 78
    const v0, 0x7f080033

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->btnAdd:Landroid/widget/Button;

    .line 79
    const v0, 0x7f080049

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->btnEdit:Landroid/widget/Button;

    .line 80
    const v0, 0x7f080071

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->btnReset:Landroid/widget/Button;

    .line 81
    const v0, 0x7f08003b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->btnCancel:Landroid/widget/Button;

    .line 82
    return-void
.end method

.method private resetItemParameters()V
    .locals 3

    .line 296
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c0184

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/wen/fluorescence/Fragment/SettingItemFragment$3;

    invoke-direct {v2, p0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment$3;-><init>(Lcom/wen/fluorescence/Fragment/SettingItemFragment;)V

    invoke-static {v0, v1, v2}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 310
    return-void
.end method

.method private selectItemForEdit(Lcom/wen/fluorescence/database/ItemPara;)V
    .locals 29
    .param p1, "selectItemPara"    # Lcom/wen/fluorescence/database/ItemPara;

    move-object/from16 v11, p0

    .line 391
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a0036

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 393
    .local v12, "view":Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    .line 394
    .local v13, "dialog":Landroid/app/AlertDialog;
    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 395
    invoke-virtual {v13}, Landroid/app/AlertDialog;->show()V

    .line 396
    invoke-virtual {v13}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 398
    invoke-virtual {v13}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x20008

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 399
    invoke-virtual {v13}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 402
    invoke-virtual {v13}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    .line 403
    .local v14, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v14}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    .line 404
    .local v15, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v0, 0x11

    invoke-virtual {v14, v0}, Landroid/view/Window;->setGravity(I)V

    .line 405
    const/4 v0, 0x6

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 406
    const/16 v0, 0x1ea

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 408
    invoke-virtual {v14, v15}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 410
    const v0, 0x7f080089

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/Button;

    .line 411
    .local v10, "btnSure":Landroid/widget/Button;
    const v0, 0x7f08003b

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/Button;

    .line 412
    .local v9, "btnCancel":Landroid/widget/Button;
    const v0, 0x7f0800d2

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/EditText;

    .line 413
    .local v8, "etItems":Landroid/widget/EditText;
    const v0, 0x7f0800c7

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/EditText;

    .line 414
    .local v7, "etCodes":Landroid/widget/EditText;
    const v0, 0x7f0800e3

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/EditText;

    .line 415
    .local v6, "etMins":Landroid/widget/EditText;
    const v0, 0x7f0800e2

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/EditText;

    .line 416
    .local v5, "etMaxs":Landroid/widget/EditText;
    const v0, 0x7f0800f1

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/EditText;

    .line 417
    .local v4, "etUnit":Landroid/widget/EditText;
    const v0, 0x7f0800d3

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/EditText;

    .line 418
    .local v3, "etK":Landroid/widget/EditText;
    const v0, 0x7f0800c2

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/EditText;

    .line 419
    .local v2, "etB":Landroid/widget/EditText;
    const v0, 0x7f080091

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/Button;

    .line 420
    .local v1, "btnUnit":Landroid/widget/Button;
    const v0, 0x7f08018a

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 422
    .local v0, "reviseLayout":Landroid/widget/LinearLayout;
    move-object/from16 v16, v9

    const/4 v9, 0x0

    .line 422
    .end local v9    # "btnCancel":Landroid/widget/Button;
    .local v16, "btnCancel":Landroid/widget/Button;
    invoke-virtual {v1, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 423
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 425
    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 426
    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 427
    invoke-virtual/range {p1 .. p1}, Lcom/wen/fluorescence/database/ItemPara;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 428
    invoke-virtual/range {p1 .. p1}, Lcom/wen/fluorescence/database/ItemPara;->getCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 429
    invoke-virtual/range {p1 .. p1}, Lcom/wen/fluorescence/database/ItemPara;->getMin()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 430
    invoke-virtual/range {p1 .. p1}, Lcom/wen/fluorescence/database/ItemPara;->getMax()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 431
    invoke-virtual/range {p1 .. p1}, Lcom/wen/fluorescence/database/ItemPara;->getUnit()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 432
    invoke-virtual/range {p1 .. p1}, Lcom/wen/fluorescence/database/ItemPara;->getK()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 433
    invoke-virtual/range {p1 .. p1}, Lcom/wen/fluorescence/database/ItemPara;->getB()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 435
    new-instance v9, Lcom/wen/fluorescence/Fragment/SettingItemFragment$6;

    move-object/from16 v17, v12

    move-object/from16 v12, p1

    invoke-direct {v9, v11, v12}, Lcom/wen/fluorescence/Fragment/SettingItemFragment$6;-><init>(Lcom/wen/fluorescence/Fragment/SettingItemFragment;Lcom/wen/fluorescence/database/ItemPara;)V

    .line 435
    .end local v12    # "view":Landroid/view/View;
    .local v17, "view":Landroid/view/View;
    invoke-virtual {v1, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    new-instance v9, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;

    move-object/from16 v18, v0

    move-object v0, v9

    .line 441
    .end local v0    # "reviseLayout":Landroid/widget/LinearLayout;
    .local v18, "reviseLayout":Landroid/widget/LinearLayout;
    move-object/from16 v19, v1

    move-object v1, v11

    .line 441
    .end local v1    # "btnUnit":Landroid/widget/Button;
    .local v19, "btnUnit":Landroid/widget/Button;
    move-object/from16 v20, v2

    move-object v2, v8

    .line 441
    .end local v2    # "etB":Landroid/widget/EditText;
    .local v20, "etB":Landroid/widget/EditText;
    move-object/from16 v21, v3

    move-object v3, v7

    .line 441
    .end local v3    # "etK":Landroid/widget/EditText;
    .local v21, "etK":Landroid/widget/EditText;
    move-object/from16 v22, v4

    move-object v4, v6

    .line 441
    .end local v4    # "etUnit":Landroid/widget/EditText;
    .local v22, "etUnit":Landroid/widget/EditText;
    move-object/from16 v23, v5

    .line 441
    .end local v5    # "etMaxs":Landroid/widget/EditText;
    .local v23, "etMaxs":Landroid/widget/EditText;
    move-object/from16 v24, v6

    move-object/from16 v6, v22

    .line 441
    .end local v6    # "etMins":Landroid/widget/EditText;
    .local v24, "etMins":Landroid/widget/EditText;
    move-object/from16 v25, v7

    move-object v7, v12

    .line 441
    .end local v7    # "etCodes":Landroid/widget/EditText;
    .local v25, "etCodes":Landroid/widget/EditText;
    move-object/from16 v26, v8

    move-object/from16 v8, v21

    .line 441
    .end local v8    # "etItems":Landroid/widget/EditText;
    .local v26, "etItems":Landroid/widget/EditText;
    move-object/from16 v27, v14

    move-object/from16 v12, v16

    move-object v14, v9

    move-object/from16 v9, v20

    .line 441
    .end local v14    # "dialogWindow":Landroid/view/Window;
    .end local v16    # "btnCancel":Landroid/widget/Button;
    .local v12, "btnCancel":Landroid/widget/Button;
    .local v27, "dialogWindow":Landroid/view/Window;
    move-object/from16 v28, v15

    move-object v15, v10

    move-object v10, v13

    .line 441
    .end local v10    # "btnSure":Landroid/widget/Button;
    .local v15, "btnSure":Landroid/widget/Button;
    .local v28, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-direct/range {v0 .. v10}, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;-><init>(Lcom/wen/fluorescence/Fragment/SettingItemFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/wen/fluorescence/database/ItemPara;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    invoke-virtual {v15, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    new-instance v0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$8;

    invoke-direct {v0, v11, v13}, Lcom/wen/fluorescence/Fragment/SettingItemFragment$8;-><init>(Lcom/wen/fluorescence/Fragment/SettingItemFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 486
    return-void
.end method

.method private setRangeEditEnable(Z)V
    .locals 9
    .param p1, "enable"    # Z

    .line 666
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v0

    .line 667
    .local v0, "count":I
    const/4 v1, 0x0

    move v2, v1

    .line 667
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 668
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v3, v2}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 669
    .local v3, "children":Landroid/view/View;
    const v4, 0x7f0800e1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 670
    .local v4, "etRange":Landroid/widget/TextView;
    const v5, 0x7f0800f1

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 671
    .local v5, "etUnit":Landroid/widget/TextView;
    const v6, 0x7f080209

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 672
    .local v6, "tvItem":Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 673
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    .line 677
    :cond_0
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 678
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 678
    .end local v3    # "children":Landroid/view/View;
    .end local v4    # "etRange":Landroid/widget/TextView;
    .end local v5    # "etUnit":Landroid/widget/TextView;
    .end local v6    # "tvItem":Landroid/widget/TextView;
    goto :goto_2

    .line 674
    .restart local v3    # "children":Landroid/view/View;
    .restart local v4    # "etRange":Landroid/widget/TextView;
    .restart local v5    # "etUnit":Landroid/widget/TextView;
    .restart local v6    # "tvItem":Landroid/widget/TextView;
    :cond_1
    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 675
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 667
    .end local v3    # "children":Landroid/view/View;
    .end local v4    # "etRange":Landroid/widget/TextView;
    .end local v5    # "etUnit":Landroid/widget/TextView;
    .end local v6    # "tvItem":Landroid/widget/TextView;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 681
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private setViewIncident()V
    .locals 5

    .line 85
    const/4 v0, 0x0

    move v1, v0

    .line 85
    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->row:I

    if-ge v1, v2, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0a0054

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 87
    .local v2, "tableRow":Landroid/view/View;
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v3, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 90
    move v3, v1

    .line 91
    .local v3, "index":I
    new-instance v4, Lcom/wen/fluorescence/Fragment/SettingItemFragment$1;

    invoke-direct {v4, p0, v2, v3}, Lcom/wen/fluorescence/Fragment/SettingItemFragment$1;-><init>(Lcom/wen/fluorescence/Fragment/SettingItemFragment;Landroid/view/View;I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    .end local v2    # "tableRow":Landroid/view/View;
    .end local v3    # "index":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    iget v2, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->row:I

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/util/PageUtils;->setPageSize(I)V

    .line 109
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->btnPrevious:Landroid/widget/Button;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->btnNext:Landroid/widget/Button;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->btnAdd:Landroid/widget/Button;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->btnEdit:Landroid/widget/Button;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->btnReset:Landroid/widget/Button;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->btnCancel:Landroid/widget/Button;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->initListData(IZ)V

    .line 116
    return-void
.end method

.method private updateTestResult(I)V
    .locals 16
    .param p1, "page"    # I

    move-object/from16 v0, p0

    .line 179
    invoke-direct/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->clearBackground()V

    .line 180
    add-int/lit8 v1, p1, -0x1

    iget-object v2, v0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v2}, Lcom/wen/fluorescence/util/PageUtils;->getPageSize()I

    move-result v2

    mul-int/2addr v1, v2

    .line 181
    .local v1, "start":I
    iget-object v2, v0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v2}, Lcom/wen/fluorescence/util/PageUtils;->getPageSize()I

    move-result v2

    add-int/2addr v2, v1

    .line 182
    .local v2, "end":I
    iget-object v3, v0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->listData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 183
    iget-object v3, v0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->listData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 185
    :cond_0
    move v3, v1

    .line 185
    .local v3, "i":I
    :goto_0
    const v4, 0x7f0800f1

    const v5, 0x7f0800e1

    const v6, 0x7f08023e

    const v7, 0x7f08020e

    const v8, 0x7f080209

    if-ge v3, v2, :cond_1

    .line 186
    iget-object v9, v0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->tableLayout:Landroid/widget/TableLayout;

    sub-int v10, v3, v1

    invoke-virtual {v9, v10}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 187
    .local v9, "children":Landroid/view/View;
    invoke-virtual {v9, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 188
    .local v8, "tvItem":Landroid/widget/TextView;
    invoke-virtual {v9, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 189
    .local v7, "tvItemCode":Landroid/widget/TextView;
    invoke-virtual {v9, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 190
    .local v6, "tvSampleType":Landroid/widget/TextView;
    invoke-virtual {v9, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 191
    .local v5, "tvRange":Landroid/widget/TextView;
    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 192
    .local v4, "etUnit":Landroid/widget/TextView;
    iget-object v10, v0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->listData:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/wen/fluorescence/database/ItemPara;

    invoke-virtual {v10}, Lcom/wen/fluorescence/database/ItemPara;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v10, v0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->listData:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/wen/fluorescence/database/ItemPara;

    invoke-virtual {v10}, Lcom/wen/fluorescence/database/ItemPara;->getCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v10, v0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->listData:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/wen/fluorescence/database/ItemPara;

    invoke-virtual {v10}, Lcom/wen/fluorescence/database/ItemPara;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->listData:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/wen/fluorescence/database/ItemPara;

    invoke-virtual {v11}, Lcom/wen/fluorescence/database/ItemPara;->getMin()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->listData:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/wen/fluorescence/database/ItemPara;

    invoke-virtual {v11}, Lcom/wen/fluorescence/database/ItemPara;->getMax()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v10, v0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->listData:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/wen/fluorescence/database/ItemPara;

    invoke-virtual {v10}, Lcom/wen/fluorescence/database/ItemPara;->getUnit()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    .end local v4    # "etUnit":Landroid/widget/TextView;
    .end local v5    # "tvRange":Landroid/widget/TextView;
    .end local v6    # "tvSampleType":Landroid/widget/TextView;
    .end local v7    # "tvItemCode":Landroid/widget/TextView;
    .end local v8    # "tvItem":Landroid/widget/TextView;
    .end local v9    # "children":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 199
    .end local v3    # "i":I
    :cond_1
    sub-int v3, v2, v1

    iget-object v9, v0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v9}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v9

    if-ge v3, v9, :cond_2

    .line 200
    sub-int v3, v2, v1

    .line 200
    .restart local v3    # "i":I
    :goto_1
    iget-object v9, v0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v9}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v9

    if-ge v3, v9, :cond_2

    .line 201
    iget-object v9, v0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v9, v3}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 202
    .restart local v9    # "children":Landroid/view/View;
    invoke-virtual {v9, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 203
    .local v10, "tvItem":Landroid/widget/TextView;
    invoke-virtual {v9, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 204
    .local v11, "tvItemCode":Landroid/widget/TextView;
    invoke-virtual {v9, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 205
    .local v12, "tvSampleType":Landroid/widget/TextView;
    invoke-virtual {v9, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 206
    .local v13, "tvRange":Landroid/widget/TextView;
    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 207
    .local v14, "etUnit":Landroid/widget/TextView;
    const-string v4, ""

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    const-string v4, ""

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    const-string v4, ""

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    const-string v4, ""

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    const-string v4, ""

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    .end local v9    # "children":Landroid/view/View;
    .end local v10    # "tvItem":Landroid/widget/TextView;
    .end local v11    # "tvItemCode":Landroid/widget/TextView;
    .end local v12    # "tvSampleType":Landroid/widget/TextView;
    .end local v13    # "tvRange":Landroid/widget/TextView;
    .end local v14    # "etUnit":Landroid/widget/TextView;
    add-int/lit8 v3, v3, 0x1

    const v4, 0x7f0800f1

    goto :goto_1

    .line 214
    .end local v3    # "i":I
    :cond_2
    iget-object v3, v0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->tvPage:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v5}, Lcom/wen/fluorescence/util/PageUtils;->getPageNow()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v5}, Lcom/wen/fluorescence/util/PageUtils;->getPageTotal()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
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
    const v0, 0x7f0a0035

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->initView(Landroid/view/View;)V

    .line 58
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->setViewIncident()V

    .line 59
    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .locals 2
    .param p1, "hidden"    # Z

    .line 64
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 65
    if-nez p1, :cond_0

    .line 66
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->initListData(IZ)V

    .line 67
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->clearBackground()V

    goto :goto_0

    .line 69
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->selectItemPara:Lcom/wen/fluorescence/database/ItemPara;

    .line 71
    :goto_0
    return-void
.end method
