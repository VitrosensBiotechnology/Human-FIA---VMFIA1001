.class public Lcom/wen/fluorescence/Fragment/SystemReagentFragment;
.super Landroid/support/v4/app/Fragment;
.source "SystemReagentFragment.java"


# instance fields
.field private barCodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private btnClearCalibration:Landroid/widget/Button;

.field private btnDetialInfo:Landroid/widget/Button;

.field private btnNext:Landroid/widget/Button;

.field private btnPrevious:Landroid/widget/Button;

.field listener:Lcom/wen/fluorescence/util/MyOnClickListener;

.field private logNumberList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pageSize:I

.field private pageUtils:Lcom/wen/fluorescence/util/PageUtils;

.field private selectLogNo:Ljava/lang/String;

.field private selectVersion:I

.field private tableLayout:Landroid/widget/TableLayout;

.field private test:Z

.field private tvPage:Landroid/widget/TextView;

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 67
    new-instance v0, Lcom/wen/fluorescence/util/PageUtils;

    invoke-direct {v0}, Lcom/wen/fluorescence/util/PageUtils;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->selectLogNo:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->logNumberList:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->barCodeList:Ljava/util/List;

    .line 75
    const/4 v0, 0x7

    iput v0, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->pageSize:I

    .line 252
    new-instance v0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment$2;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment$2;-><init>(Lcom/wen/fluorescence/Fragment/SystemReagentFragment;)V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    .line 277
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->test:Z

    return-void
.end method

.method static synthetic access$000(Lcom/wen/fluorescence/Fragment/SystemReagentFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemReagentFragment;

    .line 61
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->clearnBackground()V

    return-void
.end method

.method static synthetic access$100(Lcom/wen/fluorescence/Fragment/SystemReagentFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemReagentFragment;

    .line 61
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->selectLogNo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/wen/fluorescence/Fragment/SystemReagentFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemReagentFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->selectLogNo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/wen/fluorescence/Fragment/SystemReagentFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemReagentFragment;

    .line 61
    iget v0, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->selectVersion:I

    return v0
.end method

.method static synthetic access$202(Lcom/wen/fluorescence/Fragment/SystemReagentFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemReagentFragment;
    .param p1, "x1"    # I

    .line 61
    iput p1, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->selectVersion:I

    return p1
.end method

.method static synthetic access$300(Lcom/wen/fluorescence/Fragment/SystemReagentFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemReagentFragment;

    .line 61
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->goPrevPage()V

    return-void
.end method

.method static synthetic access$400(Lcom/wen/fluorescence/Fragment/SystemReagentFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemReagentFragment;

    .line 61
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->goNextPage()V

    return-void
.end method

.method static synthetic access$500(Lcom/wen/fluorescence/Fragment/SystemReagentFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemReagentFragment;

    .line 61
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->detialInformation()V

    return-void
.end method

.method static synthetic access$600(Lcom/wen/fluorescence/Fragment/SystemReagentFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemReagentFragment;

    .line 61
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->clearnCalibration()V

    return-void
.end method

.method static synthetic access$700(Lcom/wen/fluorescence/Fragment/SystemReagentFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemReagentFragment;

    .line 61
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->initData()V

    return-void
.end method

.method private binDownloadDialog()V
    .locals 8

    .line 369
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a0025

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 371
    .local v0, "view":Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 372
    .local v1, "dialog":Landroid/app/AlertDialog;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 373
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 374
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 376
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x20008

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 377
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 380
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 381
    .local v2, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 382
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/view/Window;->setGravity(I)V

    .line 383
    const/4 v4, 0x6

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 384
    const/16 v4, 0x1f4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 385
    const/16 v4, 0x12c

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 386
    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 388
    const v4, 0x7f0800c6

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 389
    .local v4, "etBarCode":Landroid/widget/EditText;
    const v5, 0x7f080089

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 390
    .local v5, "btnSure":Landroid/widget/Button;
    const v6, 0x7f08003b

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 392
    .local v6, "btnCancel":Landroid/widget/Button;
    new-instance v7, Lcom/wen/fluorescence/Fragment/SystemReagentFragment$4;

    invoke-direct {v7, p0, v4, v1}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment$4;-><init>(Lcom/wen/fluorescence/Fragment/SystemReagentFragment;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    new-instance v7, Lcom/wen/fluorescence/Fragment/SystemReagentFragment$5;

    invoke-direct {v7, p0, v1}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment$5;-><init>(Lcom/wen/fluorescence/Fragment/SystemReagentFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    return-void
.end method

.method private clearnBackground()V
    .locals 8

    .line 239
    const/4 v0, 0x0

    move v1, v0

    .line 239
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v2}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 240
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v2, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 241
    .local v2, "children":Landroid/view/View;
    const v3, 0x7f080209

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 242
    .local v3, "tvItem":Landroid/widget/TextView;
    const v4, 0x7f0801ee

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 243
    .local v4, "tvBatchNum":Landroid/widget/TextView;
    const v5, 0x7f080261

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 244
    .local v5, "tvValidity":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f050066

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 245
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 246
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 239
    .end local v2    # "children":Landroid/view/View;
    .end local v3    # "tvItem":Landroid/widget/TextView;
    .end local v4    # "tvBatchNum":Landroid/widget/TextView;
    .end local v5    # "tvValidity":Landroid/widget/TextView;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    .end local v1    # "i":I
    :cond_0
    const-string v1, ""

    iput-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->selectLogNo:Ljava/lang/String;

    .line 249
    iput v0, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->selectVersion:I

    .line 250
    return-void
.end method

.method private clearnCalibration()V
    .locals 3

    .line 318
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->selectLogNo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c0166

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 320
    return-void

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c0174

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/wen/fluorescence/Fragment/SystemReagentFragment$3;

    invoke-direct {v2, p0}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment$3;-><init>(Lcom/wen/fluorescence/Fragment/SystemReagentFragment;)V

    invoke-static {v0, v1, v2}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 342
    return-void
.end method

.method private detialInformation()V
    .locals 20

    .line 283
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->selectLogNo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0c0166

    invoke-virtual {v0, v2}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 285
    return-void

    .line 287
    :cond_0
    invoke-static {}, Lcom/wen/fluorescence/util/IDCardUtil;->getInstance()Lcom/wen/fluorescence/util/IDCardUtil;

    move-result-object v1

    iget-object v2, v0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->selectLogNo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/util/IDCardUtil;->queryIDChipInfo(Ljava/lang/String;)Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v1

    .line 288
    .local v1, "chipInfo":Lcom/wen/fluorescence/bean/IDChipInfo;
    iget-boolean v2, v0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->test:Z

    if-eqz v2, :cond_3

    .line 289
    const/4 v2, 0x0

    .line 290
    .local v2, "index":I
    iget-object v3, v1, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_dimension:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_1

    move v9, v5

    goto :goto_0

    :cond_1
    move v9, v4

    .line 291
    .local v9, "mSubFlag":Z
    :goto_0
    iget-object v3, v1, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_unlog:I

    if-lez v3, :cond_2

    move v10, v5

    goto :goto_1

    :cond_2
    move v10, v4

    .line 292
    .local v10, "mLogFlag":Z
    :goto_1
    new-instance v6, Lcom/wen/fluorescence/arithmetic/FitCalcute;

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v6, v3}, Lcom/wen/fluorescence/arithmetic/FitCalcute;-><init>(Landroid/content/Context;)V

    .line 293
    .local v6, "fit":Lcom/wen/fluorescence/arithmetic/FitCalcute;
    iget-object v3, v1, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v3, v3, v2

    iget-object v7, v3, Lcom/wen/fluorescence/bean/IDChipInfoEx;->cc:[D

    iget-object v3, v1, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v3, v3, v2

    iget-object v8, v3, Lcom/wen/fluorescence/bean/IDChipInfoEx;->tc:[D

    iget-object v3, v1, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v3, v3, v2

    iget v11, v3, Lcom/wen/fluorescence/bean/IDChipInfoEx;->l_count:I

    iget-object v3, v1, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v3, v3, v2

    iget v12, v3, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_divisionIndex:I

    iget-object v3, v1, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v3, v3, v2

    iget-object v13, v3, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_dimen:[I

    invoke-virtual/range {v6 .. v13}, Lcom/wen/fluorescence/arithmetic/FitCalcute;->FitRise([D[DZZII[I)I

    .line 296
    const-wide/16 v3, 0x0

    .line 298
    .local v3, "tc":D
    :goto_2
    const-wide/high16 v7, 0x4014000000000000L    # 5.0

    cmpg-double v5, v3, v7

    if-gez v5, :cond_3

    .line 299
    iget-object v5, v1, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v5, v5, v2

    iget-object v14, v5, Lcom/wen/fluorescence/bean/IDChipInfoEx;->cc:[D

    iget-object v5, v1, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v5, v5, v2

    iget-object v15, v5, Lcom/wen/fluorescence/bean/IDChipInfoEx;->tc:[D

    iget-object v5, v1, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/wen/fluorescence/bean/IDChipInfoEx;->l_count:I

    iget-object v7, v1, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v7, v7, v2

    iget v7, v7, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_divisionIndex:I

    move-object v11, v6

    move-wide v12, v3

    move/from16 v16, v9

    move/from16 v17, v10

    move/from16 v18, v5

    move/from16 v19, v7

    invoke-virtual/range {v11 .. v19}, Lcom/wen/fluorescence/arithmetic/FitCalcute;->GetChromaRise(D[D[DZZII)D

    move-result-wide v7

    .line 302
    .local v7, "Kvalue":D
    const-string v5, "as"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "T/C:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v12, ",K:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const-wide v11, 0x3f847ae147ae147bL    # 0.01

    add-double/2addr v3, v11

    .line 304
    invoke-static {}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getInstance()Lcom/wen/fluorescence/arithmetic/TestAnalyzer;

    move-result-object v5

    const/4 v11, 0x2

    invoke-virtual {v5, v11, v3, v4}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->reserveDecimals(ID)D

    move-result-wide v3

    goto :goto_2

    .line 312
    .end local v2    # "index":I
    .end local v3    # "tc":D
    .end local v6    # "fit":Lcom/wen/fluorescence/arithmetic/FitCalcute;
    .end local v7    # "Kvalue":D
    .end local v9    # "mSubFlag":Z
    .end local v10    # "mLogFlag":Z
    :cond_3
    return-void
.end method

.method private downloadApk()V
    .locals 3

    .line 474
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/util/NetUtil;->isNetworkConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 475
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0c00fd

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 476
    return-void

    .line 478
    :cond_0
    const-string v0, "downloadApk"

    new-instance v1, Lcom/wen/fluorescence/Fragment/SystemReagentFragment$6;

    invoke-direct {v1, p0}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment$6;-><init>(Lcom/wen/fluorescence/Fragment/SystemReagentFragment;)V

    invoke-static {v0, v1}, Lcom/wen/fluorescence/net/CHRequestManager;->downloadApkFile(Ljava/lang/Object;Lcom/wen/fluorescence/net/CallBack;)V

    .line 494
    return-void
.end method

.method private goNextPage()V
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/PageUtils;->isHasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/PageUtils;->getPageNow()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/util/PageUtils;->setPageNow(I)V

    .line 350
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->updateData()V

    .line 352
    :cond_0
    return-void
.end method

.method private goPrevPage()V
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/PageUtils;->isHasPrev()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/PageUtils;->getPageNow()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/util/PageUtils;->setPageNow(I)V

    .line 360
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->updateData()V

    .line 362
    :cond_0
    return-void
.end method

.method private initData()V
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->logNumberList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 142
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->barCodeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 151
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/database/DBManager;->queryAllIDChipInfoN()Ljava/util/List;

    move-result-object v0

    .line 152
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/bean/IDChipInfoN;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 153
    const/4 v1, 0x0

    .line 153
    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 154
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->logNumberList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget-object v3, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->new_logNo:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->barCodeList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget-object v3, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->new_barCode:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->barCodeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 160
    .local v1, "count":I
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v2, v1}, Lcom/wen/fluorescence/util/PageUtils;->setTotalSize(I)V

    .line 161
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/util/PageUtils;->setPageNow(I)V

    .line 162
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->updateData()V

    .line 163
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 97
    const v0, 0x7f0801d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->tableLayout:Landroid/widget/TableLayout;

    .line 98
    const v0, 0x7f080221

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->tvPage:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f080067

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->btnPrevious:Landroid/widget/Button;

    .line 100
    const v0, 0x7f080063

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->btnNext:Landroid/widget/Button;

    .line 101
    const v0, 0x7f080048

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->btnDetialInfo:Landroid/widget/Button;

    .line 102
    const v0, 0x7f080041

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->btnClearCalibration:Landroid/widget/Button;

    .line 103
    return-void
.end method

.method private setViewIncident()V
    .locals 4

    .line 106
    const/4 v0, 0x0

    .line 106
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->pageSize:I

    if-ge v0, v1, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0a005e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 108
    .local v1, "tableRow":Landroid/view/View;
    new-instance v2, Lcom/wen/fluorescence/Fragment/SystemReagentFragment$1;

    invoke-direct {v2, p0, v1}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment$1;-><init>(Lcom/wen/fluorescence/Fragment/SystemReagentFragment;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v2, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 106
    .end local v1    # "tableRow":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    iget v1, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->pageSize:I

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/util/PageUtils;->setPageSize(I)V

    .line 132
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->btnPrevious:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->btnNext:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->btnDetialInfo:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->btnClearCalibration:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->btnDetialInfo:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 138
    return-void
.end method

.method private updateData()V
    .locals 12

    .line 167
    :try_start_0
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->clearnBackground()V

    .line 168
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/PageUtils;->getPageNow()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/PageUtils;->getPageSize()I

    move-result v1

    mul-int/2addr v0, v1

    .line 169
    .local v0, "offset":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v1, "listData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v2, "listBarCode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-ltz v0, :cond_1

    .line 173
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v3}, Lcom/wen/fluorescence/util/PageUtils;->getPageSize()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->logNumberList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 174
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->logNumberList:Ljava/util/List;

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v4}, Lcom/wen/fluorescence/util/PageUtils;->getPageSize()I

    move-result v4

    add-int/2addr v4, v0

    invoke-interface {v3, v0, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    move-object v1, v3

    .line 175
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->barCodeList:Ljava/util/List;

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v4}, Lcom/wen/fluorescence/util/PageUtils;->getPageSize()I

    move-result v4

    add-int/2addr v4, v0

    invoke-interface {v3, v0, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 177
    :cond_0
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->logNumberList:Ljava/util/List;

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->logNumberList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3, v0, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    move-object v1, v3

    .line 178
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->barCodeList:Ljava/util/List;

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->barCodeList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3, v0, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    move-object v2, v3

    .line 181
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->tvPage:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v5}, Lcom/wen/fluorescence/util/PageUtils;->getPageNow()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v5}, Lcom/wen/fluorescence/util/PageUtils;->getPageTotal()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    const/4 v3, 0x0

    .line 183
    .local v3, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const v5, 0x7f080261

    const v6, 0x7f0801ee

    const v7, 0x7f080209

    if-ge v3, v4, :cond_5

    .line 184
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v4, v3}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 185
    .local v4, "children":Landroid/view/View;
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 186
    .local v7, "tvItem":Landroid/widget/TextView;
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 187
    .local v6, "tvBatchNum":Landroid/widget/TextView;
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 189
    .local v5, "tvValidity":Landroid/widget/TextView;
    invoke-static {}, Lcom/wen/fluorescence/util/IDCardUtil;->getInstance()Lcom/wen/fluorescence/util/IDCardUtil;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/wen/fluorescence/util/IDCardUtil;->localPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".bin"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/wen/fluorescence/util/IDCardUtil;->getIDChipVersion(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->version:I

    .line 191
    iget v8, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->version:I

    const/16 v9, 0x7d0

    const/4 v10, 0x4

    if-nez v8, :cond_2

    .line 192
    iput v10, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->version:I

    .line 194
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v8

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/wen/fluorescence/database/DBManager;->queryIDChipInfoNForBarCode(Ljava/lang/String;)Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v8

    .line 195
    .local v8, "idChipInfoN":Lcom/wen/fluorescence/bean/IDChipInfoN;
    iget-object v10, v8, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_title:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v10, v8, Lcom/wen/fluorescence/bean/IDChipInfoN;->new_logNo:Ljava/lang/String;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v10, v8, Lcom/wen/fluorescence/bean/IDChipInfoN;->new_barCode:Ljava/lang/String;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 198
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, v8, Lcom/wen/fluorescence/bean/IDChipInfoN;->lastYear:I

    add-int/2addr v9, v11

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "-"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v8, Lcom/wen/fluorescence/bean/IDChipInfoN;->lastMonth:I

    .line 199
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "-"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v8, Lcom/wen/fluorescence/bean/IDChipInfoN;->lastDay:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 198
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget v9, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->version:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 201
    .end local v8    # "idChipInfoN":Lcom/wen/fluorescence/bean/IDChipInfoN;
    goto/16 :goto_2

    :cond_2
    iget v8, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->version:I

    const/4 v11, 0x3

    if-ne v8, v11, :cond_3

    .line 202
    invoke-static {}, Lcom/wen/fluorescence/util/IDCardUtil;->getInstance()Lcom/wen/fluorescence/util/IDCardUtil;

    move-result-object v8

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/wen/fluorescence/util/IDCardUtil;->queryIDChipInfo(Ljava/lang/String;)Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v8

    .line 203
    .local v8, "idChipInfo":Lcom/wen/fluorescence/bean/IDChipInfo;
    iget-object v9, v8, Lcom/wen/fluorescence/bean/IDChipInfo;->m_title:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v9, v8, Lcom/wen/fluorescence/bean/IDChipInfo;->m_barCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v9, v8, Lcom/wen/fluorescence/bean/IDChipInfo;->m_barCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 206
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v8, Lcom/wen/fluorescence/bean/IDChipInfo;->m_testtime:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget v9, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->version:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 208
    .end local v8    # "idChipInfo":Lcom/wen/fluorescence/bean/IDChipInfo;
    goto :goto_2

    :cond_3
    iget v8, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->version:I

    if-ne v8, v10, :cond_4

    .line 209
    invoke-static {}, Lcom/wen/fluorescence/util/IDCardUtil;->getInstance()Lcom/wen/fluorescence/util/IDCardUtil;

    move-result-object v8

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/wen/fluorescence/util/IDCardUtil;->queryIDChipInfoN(Ljava/lang/String;)Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v8

    .line 210
    .local v8, "idChipInfoN":Lcom/wen/fluorescence/bean/IDChipInfoN;
    iget-object v10, v8, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_title:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v10, v8, Lcom/wen/fluorescence/bean/IDChipInfoN;->new_logNo:Ljava/lang/String;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v10, v8, Lcom/wen/fluorescence/bean/IDChipInfoN;->new_barCode:Ljava/lang/String;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 213
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, v8, Lcom/wen/fluorescence/bean/IDChipInfoN;->lastYear:I

    add-int/2addr v9, v11

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "-"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v8, Lcom/wen/fluorescence/bean/IDChipInfoN;->lastMonth:I

    .line 214
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "-"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v8, Lcom/wen/fluorescence/bean/IDChipInfoN;->lastDay:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 213
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget v9, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->version:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 183
    .end local v4    # "children":Landroid/view/View;
    .end local v5    # "tvValidity":Landroid/widget/TextView;
    .end local v6    # "tvBatchNum":Landroid/widget/TextView;
    .end local v7    # "tvItem":Landroid/widget/TextView;
    .end local v8    # "idChipInfoN":Lcom/wen/fluorescence/bean/IDChipInfoN;
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 219
    .end local v3    # "i":I
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v4}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 220
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 220
    .restart local v3    # "i":I
    :goto_3
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v4}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 221
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v4, v3}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 222
    .restart local v4    # "children":Landroid/view/View;
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 223
    .local v8, "tvItem":Landroid/widget/TextView;
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 224
    .local v9, "tvBatchNum":Landroid/widget/TextView;
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 225
    .local v10, "tvValidity":Landroid/widget/TextView;
    const-string v11, ""

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    const-string v11, ""

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v4    # "children":Landroid/view/View;
    .end local v8    # "tvItem":Landroid/widget/TextView;
    .end local v9    # "tvBatchNum":Landroid/widget/TextView;
    .end local v10    # "tvValidity":Landroid/widget/TextView;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 232
    .end local v0    # "offset":I
    .end local v1    # "listData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "listBarCode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "i":I
    :cond_6
    goto :goto_4

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 233
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
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

    .line 80
    const v0, 0x7f0a004d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 81
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->initView(Landroid/view/View;)V

    .line 82
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->setViewIncident()V

    .line 83
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->initData()V

    .line 84
    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .param p1, "hidden"    # Z

    .line 89
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 90
    if-nez p1, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->initData()V

    .line 92
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->clearnBackground()V

    .line 94
    :cond_0
    return-void
.end method
