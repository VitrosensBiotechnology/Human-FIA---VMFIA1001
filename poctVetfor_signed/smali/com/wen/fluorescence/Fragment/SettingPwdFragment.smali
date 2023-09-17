.class public Lcom/wen/fluorescence/Fragment/SettingPwdFragment;
.super Landroid/support/v4/app/Fragment;
.source "SettingPwdFragment.java"


# instance fields
.field private btnSure:Landroid/widget/Button;

.field private etNewPwd:Landroid/widget/EditText;

.field private etOldPwd:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/wen/fluorescence/Fragment/SettingPwdFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingPwdFragment;

    .line 23
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingPwdFragment;->etOldPwd:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wen/fluorescence/Fragment/SettingPwdFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingPwdFragment;

    .line 23
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingPwdFragment;->etNewPwd:Landroid/widget/EditText;

    return-object v0
.end method

.method private initView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 39
    const v0, 0x7f0800d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingPwdFragment;->etOldPwd:Landroid/widget/EditText;

    .line 40
    const v0, 0x7f0800d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingPwdFragment;->etNewPwd:Landroid/widget/EditText;

    .line 41
    const v0, 0x7f080089

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingPwdFragment;->btnSure:Landroid/widget/Button;

    .line 42
    return-void
.end method

.method private setViewIncident()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingPwdFragment;->btnSure:Landroid/widget/Button;

    new-instance v1, Lcom/wen/fluorescence/Fragment/SettingPwdFragment$1;

    invoke-direct {v1, p0}, Lcom/wen/fluorescence/Fragment/SettingPwdFragment$1;-><init>(Lcom/wen/fluorescence/Fragment/SettingPwdFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
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

    .line 32
    const v0, 0x7f0a002c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 33
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/SettingPwdFragment;->initView(Landroid/view/View;)V

    .line 34
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingPwdFragment;->setViewIncident()V

    .line 35
    return-object v0
.end method
