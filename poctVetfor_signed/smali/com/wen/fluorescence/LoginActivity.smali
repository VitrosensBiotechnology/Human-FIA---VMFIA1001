.class public Lcom/wen/fluorescence/LoginActivity;
.super Lcom/wen/fluorescence/BaseActivity;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private btnLogin:Landroid/widget/Button;

.field private etPassword:Landroid/widget/EditText;

.field private isOpen:Z

.field private ivEyes:Landroid/widget/ImageView;

.field private tvUserName:Landroid/widget/AutoCompleteTextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/wen/fluorescence/BaseActivity;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wen/fluorescence/LoginActivity;->isOpen:Z

    return-void
.end method

.method private changeIDChipsSave()V
    .locals 7

    .line 177
    invoke-static {p0}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v0

    const-string v1, "HasChange"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getBooleanData(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 178
    .local v0, "bHasChange":Z
    if-eqz v0, :cond_0

    .line 179
    return-void

    .line 181
    :cond_0
    invoke-static {}, Lcom/wen/fluorescence/util/IDCardUtil;->getInstance()Lcom/wen/fluorescence/util/IDCardUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/IDCardUtil;->getLocalAllIDChipsInfo()Ljava/util/List;

    move-result-object v1

    .line 182
    .local v1, "chipInfoNList":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/bean/IDChipInfoN;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 183
    move v3, v2

    .line 183
    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 185
    invoke-static {p0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget-object v5, v5, Lcom/wen/fluorescence/bean/IDChipInfoN;->new_barCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/wen/fluorescence/database/DBManager;->queryIDChipInfoNForBarCode(Ljava/lang/String;)Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v4

    if-nez v4, :cond_1

    .line 186
    invoke-static {p0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wen/fluorescence/bean/IDChipInfoN;

    invoke-virtual {v4, v5}, Lcom/wen/fluorescence/database/DBManager;->addIDChipInfoN(Lcom/wen/fluorescence/bean/IDChipInfoN;)V

    .line 187
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget-object v4, v4, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    if-eqz v4, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget-object v4, v4, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    array-length v4, v4

    if-lez v4, :cond_1

    .line 188
    move v4, v2

    .line 188
    .local v4, "j":I
    :goto_1
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v5, v5, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_ItemCount:I

    if-ge v4, v5, :cond_1

    .line 189
    invoke-static {p0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v5

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget-object v6, v6, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Lcom/wen/fluorescence/database/DBManager;->addIDChipInfoExN(Lcom/wen/fluorescence/bean/IDChipInfoExN;)V

    .line 188
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 193
    .end local v4    # "j":I
    :cond_1
    invoke-static {}, Lcom/wen/fluorescence/util/IDCardUtil;->getInstance()Lcom/wen/fluorescence/util/IDCardUtil;

    move-result-object v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget-object v5, v5, Lcom/wen/fluorescence/bean/IDChipInfoN;->new_barCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/wen/fluorescence/util/IDCardUtil;->deleteIDChip(Ljava/lang/String;)V

    .line 183
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 195
    .end local v3    # "i":I
    :cond_2
    invoke-static {p0}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v2

    const-string v3, "HasChange"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->setBooleanData(Ljava/lang/String;Z)V

    .line 197
    :cond_3
    return-void
.end method

.method private goMain()V
    .locals 5

    .line 157
    iget-object v0, p0, Lcom/wen/fluorescence/LoginActivity;->tvUserName:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/wen/fluorescence/LoginActivity;->etPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "password":Ljava/lang/String;
    invoke-static {p0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/wen/fluorescence/database/DBManager;->loginCheck(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 160
    .local v2, "isLogin":Z
    if-eqz v2, :cond_0

    .line 161
    invoke-static {p0}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v3

    const-string v4, "Last_Login"

    invoke-virtual {v3, v4, v0}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->setStringData(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-static {p0}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v3

    const-string v4, "login_user"

    invoke-virtual {v3, v4, v0}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->setStringData(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/wen/fluorescence/util/Global;->setUser(Ljava/lang/String;)V

    .line 164
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/wen/fluorescence/MainActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Lcom/wen/fluorescence/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 165
    invoke-virtual {p0}, Lcom/wen/fluorescence/LoginActivity;->finish()V

    .line 170
    return-void

    .line 167
    :cond_0
    const v3, 0x7f0c0062

    invoke-virtual {p0, v3}, Lcom/wen/fluorescence/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/wen/fluorescence/util/MyDialog;->showSure(Landroid/content/Context;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method private initData()V
    .locals 18

    .line 66
    move-object/from16 v0, p0

    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/util/Global;->setAppHasStart(Z)V

    .line 67
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/wen/fluorescence/util/IDCardUtil;->localPath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 69
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 71
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wen/fluorescence/database/DBManager;->initYRItemParas()V

    .line 72
    invoke-static/range {p0 .. p0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wen/fluorescence/database/DBManager;->updateItemParas17()V

    .line 73
    invoke-static/range {p0 .. p0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v3

    const-string v4, "2019-nCoV"

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/DBManager;->queryItemParasExits(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 74
    invoke-static/range {p0 .. p0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v4

    const-string v5, "E2"

    const-string v6, "-"

    const-string v7, "0"

    const-string v8, "0"

    const-string v9, "500"

    const-string v10, "pg/mL"

    invoke-virtual/range {v4 .. v10}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_1
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/wen/fluorescence/LoginActivity$1;

    invoke-direct {v4, v0}, Lcom/wen/fluorescence/LoginActivity$1;-><init>(Lcom/wen/fluorescence/LoginActivity;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 83
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 86
    invoke-static {}, Lcom/wen/fluorescence/download/DownloadTool;->initDownloadTool()V

    .line 88
    invoke-static {}, Lcom/wen/fluorescence/util/IDCardUtil;->getInstance()Lcom/wen/fluorescence/util/IDCardUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wen/fluorescence/util/IDCardUtil;->getIDChipsName()Ljava/util/List;

    move-result-object v3

    .line 89
    .local v3, "idNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    move v5, v4

    .line 89
    .local v5, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 90
    invoke-static {}, Lcom/wen/fluorescence/util/IDCardUtil;->getInstance()Lcom/wen/fluorescence/util/IDCardUtil;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/wen/fluorescence/util/IDCardUtil;->localPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".bin"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/wen/fluorescence/util/IDCardUtil;->getIDChipVersion(Ljava/lang/String;)I

    move-result v6

    .line 91
    .local v6, "version":I
    const/4 v7, 0x3

    if-ge v6, v7, :cond_2

    .line 92
    invoke-static {}, Lcom/wen/fluorescence/util/IDCardUtil;->getInstance()Lcom/wen/fluorescence/util/IDCardUtil;

    move-result-object v7

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/wen/fluorescence/util/IDCardUtil;->deleteIDChip(Ljava/lang/String;)V

    .line 89
    .end local v6    # "version":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 95
    .end local v5    # "i":I
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/wen/fluorescence/LoginActivity;->changeIDChipsSave()V

    .line 96
    invoke-static/range {p0 .. p0}, Lcom/wen/fluorescence/util/PublicFuction;->getLocaleLanguage(Landroid/content/Context;)V

    .line 97
    invoke-static/range {p0 .. p0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wen/fluorescence/database/DBManager;->queryAllUser()Ljava/util/List;

    move-result-object v5

    .line 98
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/bean/User;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v6, "userNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v7, v4

    .line 99
    .local v7, "i":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 100
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/wen/fluorescence/bean/User;

    invoke-virtual {v8}, Lcom/wen/fluorescence/bean/User;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 102
    .end local v7    # "i":I
    :cond_4
    new-instance v7, Landroid/widget/ArrayAdapter;

    const v8, 0x7f0a0057

    const v9, 0x7f0801a3

    invoke-direct {v7, v0, v8, v9, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 103
    .local v7, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v8, v0, Lcom/wen/fluorescence/LoginActivity;->tvUserName:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v8, v7}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 104
    iget-object v8, v0, Lcom/wen/fluorescence/LoginActivity;->tvUserName:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v8, v4}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 127
    invoke-static/range {p0 .. p0}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v4

    const-string v8, "Last_Login"

    const-string v9, "guest"

    invoke-virtual {v4, v8, v9}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 128
    .local v4, "defaultUser":Ljava/lang/String;
    const-string v8, "super"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "factory"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 129
    :cond_5
    const-string v4, "guest"

    .line 131
    :cond_6
    iget-object v8, v0, Lcom/wen/fluorescence/LoginActivity;->tvUserName:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v8, v4}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-static/range {p0 .. p0}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v8

    const-string v9, "SP_TEST_MODE"

    invoke-virtual {v8, v9, v2}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->setBooleanData(Ljava/lang/String;Z)V

    .line 133
    return-void
.end method

.method private initView()V
    .locals 1

    .line 57
    const v0, 0x7f0800de

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wen/fluorescence/LoginActivity;->etPassword:Landroid/widget/EditText;

    .line 58
    const v0, 0x7f08010e

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wen/fluorescence/LoginActivity;->ivEyes:Landroid/widget/ImageView;

    .line 59
    const v0, 0x7f08005e

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/LoginActivity;->btnLogin:Landroid/widget/Button;

    .line 60
    const v0, 0x7f08025f

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/wen/fluorescence/LoginActivity;->tvUserName:Landroid/widget/AutoCompleteTextView;

    .line 61
    iget-object v0, p0, Lcom/wen/fluorescence/LoginActivity;->btnLogin:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/wen/fluorescence/LoginActivity;->ivEyes:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 201
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08005e

    if-eq v0, v1, :cond_2

    const v1, 0x7f08010e

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    iget-boolean v0, p0, Lcom/wen/fluorescence/LoginActivity;->isOpen:Z

    if-eqz v0, :cond_1

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wen/fluorescence/LoginActivity;->isOpen:Z

    .line 144
    iget-object v0, p0, Lcom/wen/fluorescence/LoginActivity;->ivEyes:Landroid/widget/ImageView;

    const v1, 0x7f070098

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 145
    iget-object v0, p0, Lcom/wen/fluorescence/LoginActivity;->etPassword:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    .line 147
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wen/fluorescence/LoginActivity;->isOpen:Z

    .line 148
    iget-object v0, p0, Lcom/wen/fluorescence/LoginActivity;->ivEyes:Landroid/widget/ImageView;

    const v1, 0x7f07009a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 149
    iget-object v0, p0, Lcom/wen/fluorescence/LoginActivity;->etPassword:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    .line 139
    :cond_2
    invoke-direct {p0}, Lcom/wen/fluorescence/LoginActivity;->goMain()V

    .line 140
    nop

    .line 153
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 49
    invoke-super {p0, p1}, Lcom/wen/fluorescence/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f0a001f

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/LoginActivity;->setContentView(I)V

    .line 51
    invoke-direct {p0}, Lcom/wen/fluorescence/LoginActivity;->initView()V

    .line 52
    invoke-direct {p0}, Lcom/wen/fluorescence/LoginActivity;->initData()V

    .line 53
    return-void
.end method
