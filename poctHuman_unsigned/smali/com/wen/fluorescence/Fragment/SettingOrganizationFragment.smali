.class public Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment;
.super Landroid/support/v4/app/Fragment;
.source "SettingOrganizationFragment.java"


# instance fields
.field private btnCancel:Landroid/widget/Button;

.field private btnSure:Landroid/widget/Button;

.field private etDetectorSetting:Landroid/widget/EditText;

.field listener:Lcom/wen/fluorescence/util/MyOnClickListener;

.field private rgSampleType:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 58
    new-instance v0, Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment$2;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment$2;-><init>(Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment;)V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment;

    .line 20
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment;->etDetectorSetting:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public initView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 36
    const v0, 0x7f0800c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment;->etDetectorSetting:Landroid/widget/EditText;

    .line 37
    const v0, 0x7f080089

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment;->btnSure:Landroid/widget/Button;

    .line 38
    const v0, 0x7f08003b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment;->btnCancel:Landroid/widget/Button;

    .line 39
    const v0, 0x7f080193

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment;->rgSampleType:Landroid/widget/RadioGroup;

    .line 40
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

    .line 29
    const v0, 0x7f0a0044

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 30
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment;->initView(Landroid/view/View;)V

    .line 31
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment;->setViewIncident()V

    .line 32
    return-object v0
.end method

.method public setViewIncident()V
    .locals 5

    .line 43
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment;->btnSure:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment;->btnCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v0

    const-string v1, "OrganizationFragment"

    const-string v2, ""

    .line 46
    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "organization":Ljava/lang/String;
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment;->etDetectorSetting:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment;->rgSampleType:Landroid/widget/RadioGroup;

    new-instance v2, Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment$1;

    invoke-direct {v2, p0}, Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment$1;-><init>(Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 54
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment;->rgSampleType:Landroid/widget/RadioGroup;

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v2

    const-string v3, "SP_DEFAULT_SAMPLE_MODE"

    .line 55
    const v4, 0x7f08015b

    invoke-virtual {v2, v3, v4}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getIntData(Ljava/lang/String;I)I

    move-result v2

    .line 54
    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 56
    return-void
.end method
