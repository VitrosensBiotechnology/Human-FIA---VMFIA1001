.class public Lcom/wen/fluorescence/Fragment/AccountFragment;
.super Landroid/support/v4/app/Fragment;
.source "AccountFragment.java"


# instance fields
.field private actvInspectingDoctor:Landroid/widget/AutoCompleteTextView;

.field private actvSubmittingDivision:Landroid/widget/AutoCompleteTextView;

.field private actvSubmittingDoctor:Landroid/widget/AutoCompleteTextView;

.field private btnFrom:Landroid/widget/Button;

.field private btnFrom2:Landroid/widget/Button;

.field private btnNext:Landroid/widget/Button;

.field private btnNext2:Landroid/widget/Button;

.field private btnPrevious:Landroid/widget/Button;

.field private btnPrevious2:Landroid/widget/Button;

.field private btnTestAccount:Landroid/widget/Button;

.field private btnTo:Landroid/widget/Button;

.field private btnTo2:Landroid/widget/Button;

.field private btnWorkLoadAccount:Landroid/widget/Button;

.field private cbInspectingDoctor:Landroid/widget/CheckBox;

.field private cbSubmittingDivision:Landroid/widget/CheckBox;

.field private cbSubmittingDoctor:Landroid/widget/CheckBox;

.field private listTestData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private listWorkLoad:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wen/fluorescence/database/WorkLoad;",
            ">;"
        }
    .end annotation
.end field

.field listener:Lcom/wen/fluorescence/util/MyOnClickListener;

.field private llTestAccount:Landroid/widget/LinearLayout;

.field private llWorkLoadAccount:Landroid/widget/LinearLayout;

.field private rbAccountForItem:Landroid/widget/RadioButton;

.field private rgAccountMode:Landroid/widget/RadioGroup;

.field private testPage:Lcom/wen/fluorescence/util/PageUtils;

.field private testTableLayout:Landroid/widget/TableLayout;

.field private tvPage:Landroid/widget/TextView;

.field private tvPage2:Landroid/widget/TextView;

.field private tvTestAccountMode:Landroid/widget/TextView;

.field private tvTimeFrom:Landroid/widget/TextView;

.field private tvTimeFrom2:Landroid/widget/TextView;

.field private tvTimeTo:Landroid/widget/TextView;

.field private tvTimeTo2:Landroid/widget/TextView;

.field private workloadPage:Lcom/wen/fluorescence/util/PageUtils;

.field private workloadTableLayout:Landroid/widget/TableLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->listTestData:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->listWorkLoad:Ljava/util/List;

    .line 158
    new-instance v0, Lcom/wen/fluorescence/Fragment/AccountFragment$2;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/Fragment/AccountFragment$2;-><init>(Lcom/wen/fluorescence/Fragment/AccountFragment;)V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/wen/fluorescence/Fragment/AccountFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/AccountFragment;

    .line 38
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->llTestAccount:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wen/fluorescence/Fragment/AccountFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/AccountFragment;

    .line 38
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->llWorkLoadAccount:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/wen/fluorescence/Fragment/AccountFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/AccountFragment;

    .line 38
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->tvTimeFrom2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/wen/fluorescence/Fragment/AccountFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/AccountFragment;

    .line 38
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->tvTimeTo2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/wen/fluorescence/Fragment/AccountFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/AccountFragment;
    .param p1, "x1"    # I

    .line 38
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/Fragment/AccountFragment;->accountTest(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/wen/fluorescence/Fragment/AccountFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/AccountFragment;

    .line 38
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/AccountFragment;->accountWorkLoad()V

    return-void
.end method

.method static synthetic access$400(Lcom/wen/fluorescence/Fragment/AccountFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/AccountFragment;

    .line 38
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/AccountFragment;->goPrevious()V

    return-void
.end method

.method static synthetic access$500(Lcom/wen/fluorescence/Fragment/AccountFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/AccountFragment;

    .line 38
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/AccountFragment;->goNext()V

    return-void
.end method

.method static synthetic access$600(Lcom/wen/fluorescence/Fragment/AccountFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/AccountFragment;

    .line 38
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/AccountFragment;->goPrevious2()V

    return-void
.end method

.method static synthetic access$700(Lcom/wen/fluorescence/Fragment/AccountFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/AccountFragment;

    .line 38
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/AccountFragment;->goNext2()V

    return-void
.end method

.method static synthetic access$800(Lcom/wen/fluorescence/Fragment/AccountFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/AccountFragment;

    .line 38
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->tvTimeFrom:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/wen/fluorescence/Fragment/AccountFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/AccountFragment;

    .line 38
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->tvTimeTo:Landroid/widget/TextView;

    return-object v0
.end method

.method private accountTest(I)V
    .locals 10
    .param p1, "pageNow"    # I

    .line 241
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->tvTimeFrom:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "from":Ljava/lang/String;
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->tvTimeTo:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "to":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " 00:00:00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    :cond_0
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " 23:59:59"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 249
    :cond_1
    const-string v2, "yyyy-MM-dd"

    .line 250
    invoke-static {v1, v2}, Lcom/wen/fluorescence/util/DateUtils;->string2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    const-string v3, "yyyy-MM-dd"

    .line 251
    invoke-static {v0, v3}, Lcom/wen/fluorescence/util/DateUtils;->string2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 249
    invoke-static {v2, v3}, Lcom/wen/fluorescence/util/DateUtils;->differBetweenDates(Ljava/util/Date;Ljava/util/Date;)I

    move-result v2

    if-gez v2, :cond_2

    .line 252
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0c01d4

    invoke-virtual {p0, v3}, Lcom/wen/fluorescence/Fragment/AccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 253
    return-void

    .line 255
    :cond_2
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->listTestData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 256
    const/4 v2, 0x0

    .line 257
    .local v2, "total":I
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->rbAccountForItem:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 258
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v3

    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wen/fluorescence/util/Global;->getUser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v1, v4}, Lcom/wen/fluorescence/database/DBManager;->queryTestItems(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 262
    .end local v2    # "total":I
    .local v8, "total":I
    :goto_0
    move v8, v2

    goto :goto_1

    .line 260
    .end local v8    # "total":I
    .restart local v2    # "total":I
    :cond_3
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v3

    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wen/fluorescence/util/Global;->getUser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v1, v4}, Lcom/wen/fluorescence/database/DBManager;->queryTestSimpleType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    .line 262
    .end local v2    # "total":I
    .restart local v8    # "total":I
    :goto_1
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->testPage:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v2, p1}, Lcom/wen/fluorescence/util/PageUtils;->setPageNow(I)V

    .line 263
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->testPage:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v2, v8}, Lcom/wen/fluorescence/util/PageUtils;->setTotalSize(I)V

    .line 264
    iget-object v9, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->listTestData:Ljava/util/List;

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v2

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->rbAccountForItem:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    xor-int/lit8 v5, v3, 0x1

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->testPage:Lcom/wen/fluorescence/util/PageUtils;

    .line 265
    invoke-virtual {v3}, Lcom/wen/fluorescence/util/PageUtils;->getPageSize()I

    move-result v6

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->testPage:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v3}, Lcom/wen/fluorescence/util/PageUtils;->getPageNow()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->testPage:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v4}, Lcom/wen/fluorescence/util/PageUtils;->getPageSize()I

    move-result v4

    mul-int v7, v3, v4

    .line 264
    move-object v3, v0

    move-object v4, v1

    invoke-virtual/range {v2 .. v7}, Lcom/wen/fluorescence/database/DBManager;->accountTestLimit(Ljava/lang/String;Ljava/lang/String;III)Ljava/util/List;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 266
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->rbAccountForItem:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 267
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->tvTestAccountMode:Landroid/widget/TextView;

    const v3, 0x7f0c00d2

    invoke-virtual {p0, v3}, Lcom/wen/fluorescence/Fragment/AccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 269
    :cond_4
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->tvTestAccountMode:Landroid/widget/TextView;

    const v3, 0x7f0c0154

    invoke-virtual {p0, v3}, Lcom/wen/fluorescence/Fragment/AccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    :goto_2
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->tvPage:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->testPage:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v4}, Lcom/wen/fluorescence/util/PageUtils;->getPageNow()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->testPage:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v4}, Lcom/wen/fluorescence/util/PageUtils;->getPageTotal()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/AccountFragment;->updateTestAccount()V

    .line 273
    return-void
.end method

.method private accountWorkLoad()V
    .locals 9

    .line 279
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->listWorkLoad:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 280
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->tvTimeFrom2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "from":Ljava/lang/String;
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->tvTimeTo2:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 282
    .local v1, "to":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " 00:00:00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    :cond_0
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " 23:59:59"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 288
    :cond_1
    const-string v2, "yyyy-MM-dd"

    .line 289
    invoke-static {v1, v2}, Lcom/wen/fluorescence/util/DateUtils;->string2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    const-string v3, "yyyy-MM-dd"

    .line 290
    invoke-static {v0, v3}, Lcom/wen/fluorescence/util/DateUtils;->string2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 288
    invoke-static {v2, v3}, Lcom/wen/fluorescence/util/DateUtils;->differBetweenDates(Ljava/util/Date;Ljava/util/Date;)I

    move-result v2

    if-gez v2, :cond_2

    .line 291
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0c01d4

    invoke-virtual {p0, v3}, Lcom/wen/fluorescence/Fragment/AccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 292
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/AccountFragment;->updateWorkLoadAccount()V

    .line 293
    return-void

    .line 295
    :cond_2
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->cbSubmittingDoctor:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->actvSubmittingDoctor:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v5, v2

    goto :goto_1

    :cond_3
    const-string v2, ""

    goto :goto_0

    .line 296
    .local v5, "submittingDoctor":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->cbSubmittingDivision:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->actvSubmittingDivision:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    move-object v6, v2

    goto :goto_3

    :cond_4
    const-string v2, ""

    goto :goto_2

    .line 297
    .local v6, "submittingDivision":Ljava/lang/String;
    :goto_3
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->cbInspectingDoctor:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->actvInspectingDoctor:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    move-object v7, v2

    goto :goto_5

    :cond_5
    const-string v2, ""

    goto :goto_4

    .line 298
    .local v7, "inspectingDoctor":Ljava/lang/String;
    :goto_5
    iget-object v8, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->listWorkLoad:Ljava/util/List;

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v2

    move-object v3, v0

    move-object v4, v1

    invoke-virtual/range {v2 .. v7}, Lcom/wen/fluorescence/database/DBManager;->accountWorkLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wen/fluorescence/database/WorkLoad;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->workloadPage:Lcom/wen/fluorescence/util/PageUtils;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/util/PageUtils;->setTotalSize(I)V

    .line 300
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/AccountFragment;->updateWorkLoadAccount()V

    .line 301
    return-void
.end method

.method private goNext()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->testPage:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/PageUtils;->isHasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->testPage:Lcom/wen/fluorescence/util/PageUtils;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->testPage:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/PageUtils;->getPageNow()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/util/PageUtils;->setPageNow(I)V

    .line 213
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->testPage:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/PageUtils;->getPageNow()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/AccountFragment;->accountTest(I)V

    .line 215
    :cond_0
    return-void
.end method

.method private goNext2()V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->workloadPage:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/PageUtils;->isHasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->workloadPage:Lcom/wen/fluorescence/util/PageUtils;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->workloadPage:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/PageUtils;->getPageNow()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/util/PageUtils;->setPageNow(I)V

    .line 233
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/AccountFragment;->accountWorkLoad()V

    .line 235
    :cond_0
    return-void
.end method

.method private goPrevious()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->testPage:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/PageUtils;->isHasPrev()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->testPage:Lcom/wen/fluorescence/util/PageUtils;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->testPage:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/PageUtils;->getPageNow()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/util/PageUtils;->setPageNow(I)V

    .line 203
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->testPage:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/PageUtils;->getPageNow()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/AccountFragment;->accountTest(I)V

    .line 205
    :cond_0
    return-void
.end method

.method private goPrevious2()V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->workloadPage:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/PageUtils;->isHasPrev()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->workloadPage:Lcom/wen/fluorescence/util/PageUtils;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->workloadPage:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/PageUtils;->getPageNow()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/util/PageUtils;->setPageNow(I)V

    .line 223
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/AccountFragment;->accountWorkLoad()V

    .line 225
    :cond_0
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 69
    const v0, 0x7f08018c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->rgAccountMode:Landroid/widget/RadioGroup;

    .line 70
    const v0, 0x7f080132

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->llTestAccount:Landroid/widget/LinearLayout;

    .line 71
    const v0, 0x7f080139

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->llWorkLoadAccount:Landroid/widget/LinearLayout;

    .line 73
    const v0, 0x7f080255

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->tvTimeFrom:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f080258

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->tvTimeTo:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f08008d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->btnTestAccount:Landroid/widget/Button;

    .line 76
    const v0, 0x7f080067

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->btnPrevious:Landroid/widget/Button;

    .line 77
    const v0, 0x7f080063

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->btnNext:Landroid/widget/Button;

    .line 78
    const v0, 0x7f0801dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->testTableLayout:Landroid/widget/TableLayout;

    .line 79
    const v0, 0x7f080154

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->rbAccountForItem:Landroid/widget/RadioButton;

    .line 80
    const v0, 0x7f08024c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->tvTestAccountMode:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f080221

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->tvPage:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f080052

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->btnFrom:Landroid/widget/Button;

    .line 83
    const v0, 0x7f08008f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->btnTo:Landroid/widget/Button;

    .line 85
    const v0, 0x7f080256

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->tvTimeFrom2:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f080259

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->tvTimeTo2:Landroid/widget/TextView;

    .line 87
    const v0, 0x7f080068

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->btnPrevious2:Landroid/widget/Button;

    .line 88
    const v0, 0x7f080064

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->btnNext2:Landroid/widget/Button;

    .line 89
    const v0, 0x7f080274

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->workloadTableLayout:Landroid/widget/TableLayout;

    .line 90
    const v0, 0x7f080092

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->btnWorkLoadAccount:Landroid/widget/Button;

    .line 91
    const v0, 0x7f080222

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->tvPage2:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f080053

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->btnFrom2:Landroid/widget/Button;

    .line 93
    const v0, 0x7f080090

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->btnTo2:Landroid/widget/Button;

    .line 94
    const v0, 0x7f0800a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->cbSubmittingDoctor:Landroid/widget/CheckBox;

    .line 95
    const v0, 0x7f08009f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->cbSubmittingDivision:Landroid/widget/CheckBox;

    .line 96
    const v0, 0x7f080096

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->cbInspectingDoctor:Landroid/widget/CheckBox;

    .line 97
    const v0, 0x7f080027

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->actvSubmittingDoctor:Landroid/widget/AutoCompleteTextView;

    .line 98
    const v0, 0x7f080026

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->actvSubmittingDivision:Landroid/widget/AutoCompleteTextView;

    .line 99
    const v0, 0x7f08001e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->actvInspectingDoctor:Landroid/widget/AutoCompleteTextView;

    .line 100
    return-void
.end method

.method private setViewIncident()V
    .locals 9

    .line 104
    new-instance v0, Lcom/wen/fluorescence/util/PageUtils;

    invoke-direct {v0}, Lcom/wen/fluorescence/util/PageUtils;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->testPage:Lcom/wen/fluorescence/util/PageUtils;

    .line 105
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->testPage:Lcom/wen/fluorescence/util/PageUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/util/PageUtils;->setPageNow(I)V

    .line 106
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->testPage:Lcom/wen/fluorescence/util/PageUtils;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/wen/fluorescence/util/PageUtils;->setPageSize(I)V

    .line 107
    const-string v0, "yyyy-MM-dd"

    invoke-static {v0}, Lcom/wen/fluorescence/util/DateUtils;->getSysemDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "date":Ljava/lang/String;
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->tvTimeFrom:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->tvTimeTo:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    const/4 v3, 0x0

    move v4, v3

    .line 110
    .local v4, "i":I
    :goto_0
    const/4 v5, 0x0

    if-ge v4, v2, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0a001d

    invoke-virtual {v6, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 112
    .local v5, "tableRow":Landroid/view/View;
    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->testTableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v6, v5}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 110
    .end local v5    # "tableRow":Landroid/view/View;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 114
    .end local v4    # "i":I
    :cond_0
    new-instance v4, Lcom/wen/fluorescence/ViewUtil/DatePickerListener;

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/wen/fluorescence/ViewUtil/DatePickerListener;-><init>(Landroid/content/Context;)V

    .line 115
    .local v4, "dialogFrom":Lcom/wen/fluorescence/ViewUtil/DatePickerListener;
    new-instance v6, Lcom/wen/fluorescence/ViewUtil/DatePickerListener;

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/wen/fluorescence/ViewUtil/DatePickerListener;-><init>(Landroid/content/Context;)V

    .line 116
    .local v6, "dialogTo":Lcom/wen/fluorescence/ViewUtil/DatePickerListener;
    iget-object v7, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->tvTimeFrom:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v7, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->tvTimeTo:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v7, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->btnTestAccount:Landroid/widget/Button;

    iget-object v8, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v7, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->btnPrevious:Landroid/widget/Button;

    iget-object v8, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v7, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->btnNext:Landroid/widget/Button;

    iget-object v8, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v7, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->btnFrom:Landroid/widget/Button;

    iget-object v8, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v7, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->btnTo:Landroid/widget/Button;

    iget-object v8, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    new-instance v7, Lcom/wen/fluorescence/util/PageUtils;

    invoke-direct {v7}, Lcom/wen/fluorescence/util/PageUtils;-><init>()V

    iput-object v7, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->workloadPage:Lcom/wen/fluorescence/util/PageUtils;

    .line 125
    iget-object v7, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->workloadPage:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v7, v1}, Lcom/wen/fluorescence/util/PageUtils;->setPageNow(I)V

    .line 126
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->workloadPage:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/util/PageUtils;->setPageSize(I)V

    .line 127
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->tvTimeFrom2:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->tvTimeTo2:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    nop

    .line 129
    .local v3, "i":I
    :goto_1
    move v1, v3

    .line 129
    .end local v3    # "i":I
    .local v1, "i":I
    if-ge v1, v2, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v7, 0x7f0a001e

    invoke-virtual {v3, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 131
    .local v3, "tableRow":Landroid/view/View;
    iget-object v7, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->workloadTableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v7, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 129
    .end local v3    # "tableRow":Landroid/view/View;
    add-int/lit8 v3, v1, 0x1

    .line 129
    .end local v1    # "i":I
    .local v3, "i":I
    goto :goto_1

    .line 133
    .end local v3    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->tvTimeFrom2:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->tvTimeTo2:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->btnWorkLoadAccount:Landroid/widget/Button;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->btnPrevious2:Landroid/widget/Button;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->btnNext2:Landroid/widget/Button;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->btnFrom2:Landroid/widget/Button;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->btnTo2:Landroid/widget/Button;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->rgAccountMode:Landroid/widget/RadioGroup;

    new-instance v2, Lcom/wen/fluorescence/Fragment/AccountFragment$1;

    invoke-direct {v2, p0}, Lcom/wen/fluorescence/Fragment/AccountFragment$1;-><init>(Lcom/wen/fluorescence/Fragment/AccountFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 156
    return-void
.end method

.method private updateTestAccount()V
    .locals 8

    .line 308
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->listTestData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 309
    .local v0, "count":I
    const/4 v1, 0x0

    .line 309
    .local v1, "i":I
    :goto_0
    const v2, 0x7f0801f3

    const v3, 0x7f080209

    if-ge v1, v0, :cond_0

    .line 310
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->testTableLayout:Landroid/widget/TableLayout;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 311
    .local v4, "children":Landroid/view/View;
    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 312
    .local v3, "tvItem":Landroid/widget/TextView;
    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 313
    .local v2, "tvCount":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->listTestData:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->listTestData:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    .end local v2    # "tvCount":Landroid/widget/TextView;
    .end local v3    # "tvItem":Landroid/widget/TextView;
    .end local v4    # "children":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 317
    .end local v1    # "i":I
    :cond_0
    move v1, v0

    .line 317
    .restart local v1    # "i":I
    :goto_1
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->testTableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v4}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_1

    .line 318
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->testTableLayout:Landroid/widget/TableLayout;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 319
    .restart local v4    # "children":Landroid/view/View;
    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 320
    .local v5, "tvItem":Landroid/widget/TextView;
    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 321
    .local v6, "tvCount":Landroid/widget/TextView;
    const-string v7, ""

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    .end local v4    # "children":Landroid/view/View;
    .end local v5    # "tvItem":Landroid/widget/TextView;
    .end local v6    # "tvCount":Landroid/widget/TextView;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 324
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private updateWorkLoadAccount()V
    .locals 12

    .line 330
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->tvPage2:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->workloadPage:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v2}, Lcom/wen/fluorescence/util/PageUtils;->getPageNow()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->workloadPage:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v2}, Lcom/wen/fluorescence/util/PageUtils;->getPageTotal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->listWorkLoad:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 332
    .local v0, "count":I
    const/4 v1, 0x0

    .line 332
    .local v1, "i":I
    :goto_0
    const v2, 0x7f08026a

    const v3, 0x7f080202

    const v4, 0x7f080247

    const v5, 0x7f080248

    if-ge v1, v0, :cond_1

    .line 333
    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->workloadTableLayout:Landroid/widget/TableLayout;

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 334
    .local v6, "children":Landroid/view/View;
    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 335
    .local v5, "tvSubmittingDoctor":Landroid/widget/TextView;
    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 336
    .local v4, "tvSubmittingDivision":Landroid/widget/TextView;
    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 337
    .local v3, "tvInspectingDoctor":Landroid/widget/TextView;
    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 338
    .local v2, "tvWorkLoadCount":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->listWorkLoad:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/WorkLoad;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/WorkLoad;->getSample()I

    move-result v7

    if-eqz v7, :cond_0

    .line 339
    iget-object v7, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->listWorkLoad:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/WorkLoad;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/WorkLoad;->getSubmittingdoctor()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    iget-object v7, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->listWorkLoad:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/WorkLoad;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/WorkLoad;->getDivision()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    iget-object v7, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->listWorkLoad:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/WorkLoad;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/WorkLoad;->getInspectingDoctor()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v7, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->listWorkLoad:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/WorkLoad;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/WorkLoad;->getSample()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 344
    :cond_0
    const-string v7, ""

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    const-string v7, ""

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    const-string v7, ""

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    const-string v7, ""

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    .end local v2    # "tvWorkLoadCount":Landroid/widget/TextView;
    .end local v3    # "tvInspectingDoctor":Landroid/widget/TextView;
    .end local v4    # "tvSubmittingDivision":Landroid/widget/TextView;
    .end local v5    # "tvSubmittingDoctor":Landroid/widget/TextView;
    .end local v6    # "children":Landroid/view/View;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 351
    .end local v1    # "i":I
    :cond_1
    move v1, v0

    .line 351
    .restart local v1    # "i":I
    :goto_2
    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->workloadTableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v6}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_2

    .line 352
    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/AccountFragment;->workloadTableLayout:Landroid/widget/TableLayout;

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 353
    .restart local v6    # "children":Landroid/view/View;
    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 354
    .local v7, "tvSubmittingDoctor":Landroid/widget/TextView;
    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 355
    .local v8, "tvSubmittingDivision":Landroid/widget/TextView;
    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 356
    .local v9, "tvInspectingDoctor":Landroid/widget/TextView;
    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 357
    .local v10, "tvWorkLoadCount":Landroid/widget/TextView;
    const-string v11, ""

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    const-string v11, ""

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    const-string v11, ""

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    .end local v6    # "children":Landroid/view/View;
    .end local v7    # "tvSubmittingDoctor":Landroid/widget/TextView;
    .end local v8    # "tvSubmittingDivision":Landroid/widget/TextView;
    .end local v9    # "tvInspectingDoctor":Landroid/widget/TextView;
    .end local v10    # "tvWorkLoadCount":Landroid/widget/TextView;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 362
    .end local v1    # "i":I
    :cond_2
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

    .line 62
    const v0, 0x7f0a001c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/AccountFragment;->initView(Landroid/view/View;)V

    .line 64
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/AccountFragment;->setViewIncident()V

    .line 65
    return-object v0
.end method
