.class public Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;
.super Landroid/support/v4/app/Fragment;
.source "SettingTemperatureFragment.java"


# instance fields
.field private btnCancel:Landroid/widget/Button;

.field private btnSure:Landroid/widget/Button;

.field checkedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private etTemperature:Landroid/widget/EditText;

.field listener:Lcom/wen/fluorescence/util/MyOnClickListener;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private rgTemperature:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 31
    new-instance v0, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment$1;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment$1;-><init>(Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;)V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;->mHandler:Landroid/os/Handler;

    .line 86
    new-instance v0, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment$2;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment$2;-><init>(Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;)V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;->checkedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 98
    new-instance v0, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment$3;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment$3;-><init>(Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;)V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;

    .line 24
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;->etTemperature:Landroid/widget/EditText;

    return-object v0
.end method

.method private initView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 74
    const v0, 0x7f080197

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;->rgTemperature:Landroid/widget/RadioGroup;

    .line 75
    const v0, 0x7f0800ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;->etTemperature:Landroid/widget/EditText;

    .line 76
    const v0, 0x7f080089

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;->btnSure:Landroid/widget/Button;

    .line 77
    const v0, 0x7f08003b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;->btnCancel:Landroid/widget/Button;

    .line 78
    return-void
.end method

.method private setViewIncident()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;->btnSure:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;->btnCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;->rgTemperature:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;->checkedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 84
    return-void
.end method


# virtual methods
.method public init()V
    .locals 6

    .line 62
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/Global;->getConfig()Lcom/wen/fluorescence/bean/SystemConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;->etTemperature:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wen/fluorescence/util/Global;->getConfig()Lcom/wen/fluorescence/bean/SystemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wen/fluorescence/bean/SystemConfig;->getTemp()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/Global;->getConfig()Lcom/wen/fluorescence/bean/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/bean/SystemConfig;->getTempSwitch()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;->rgTemperature:Landroid/widget/RadioGroup;

    const v1, 0x7f080171

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;->rgTemperature:Landroid/widget/RadioGroup;

    const v1, 0x7f080170

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 70
    :cond_1
    :goto_0
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

    .line 45
    const v0, 0x7f0a0060

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;->initView(Landroid/view/View;)V

    .line 47
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;->setViewIncident()V

    .line 48
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;->init()V

    .line 49
    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .locals 4
    .param p1, "hidden"    # Z

    .line 55
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 56
    if-nez p1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x100

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 59
    :cond_0
    return-void
.end method
