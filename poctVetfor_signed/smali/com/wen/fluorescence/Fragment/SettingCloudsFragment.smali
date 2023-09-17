.class public Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;
.super Landroid/support/v4/app/Fragment;
.source "SettingCloudsFragment.java"


# instance fields
.field private btnCancel:Landroid/widget/Button;

.field private btnSure:Landroid/widget/Button;

.field private btnTestConnection:Landroid/widget/Button;

.field private etAppId:Landroid/widget/EditText;

.field private etUrl:Landroid/widget/EditText;

.field listener:Lcom/wen/fluorescence/util/MyOnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 54
    new-instance v0, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment$1;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment$1;-><init>(Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;)V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;

    .line 25
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;->etUrl:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;

    .line 25
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;->etAppId:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public initView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 40
    const v0, 0x7f0800f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;->etUrl:Landroid/widget/EditText;

    .line 41
    const v0, 0x7f0800c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;->etAppId:Landroid/widget/EditText;

    .line 42
    const v0, 0x7f080089

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;->btnSure:Landroid/widget/Button;

    .line 43
    const v0, 0x7f08003b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;->btnCancel:Landroid/widget/Button;

    .line 44
    const v0, 0x7f08008e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;->btnTestConnection:Landroid/widget/Button;

    .line 45
    return-void
.end method

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

    .line 33
    const v0, 0x7f0a0052

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 34
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;->initView(Landroid/view/View;)V

    .line 35
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;->setViewIncident()V

    .line 36
    return-object v0
.end method

.method public setViewIncident()V
    .locals 4

    .line 48
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;->etUrl:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v1

    const-string v2, "EASY11_URL"

    const-string v3, "https://covid.testeasy.com.cn/prod-api/api/uploadData"

    invoke-virtual {v1, v2, v3}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;->btnSure:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;->btnCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;->btnTestConnection:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method
