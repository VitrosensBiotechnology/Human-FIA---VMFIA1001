.class public Lcom/wen/fluorescence/Fragment/SystemRDFragment;
.super Landroid/support/v4/app/Fragment;
.source "SystemRDFragment.java"


# instance fields
.field private TestTimes:I

.field private arrayData:[I

.field private btnSave:Landroid/widget/Button;

.field private btnStart:Landroid/widget/Button;

.field private cbAutoPrint:Landroid/widget/CheckBox;

.field private etDelayTime:Landroid/widget/EditText;

.field private etSN:Landroid/widget/EditText;

.field private etTotalTime:Landroid/widget/EditText;

.field listener:Landroid/view/View$OnClickListener;

.field private llCurves:Landroid/widget/RelativeLayout;

.field private mHandler:Landroid/os/Handler;

.field private rgMacTypeVersion:Landroid/widget/RadioGroup;

.field private tvStatus:Landroid/widget/TextView;

.field private tvTestTimes:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 69
    new-instance v0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$2;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/Fragment/SystemRDFragment$2;-><init>(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->mHandler:Landroid/os/Handler;

    .line 234
    new-instance v0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$6;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/Fragment/SystemRDFragment$6;-><init>(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->listener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    .line 39
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)[I
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    .line 39
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->arrayData:[I

    return-object v0
.end method

.method static synthetic access$1000(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    .line 39
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->exitSystem()V

    return-void
.end method

.method static synthetic access$1100(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    .line 39
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->etSN:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    .line 39
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->llCurves:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    .line 39
    iget v0, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->TestTimes:I

    return v0
.end method

.method static synthetic access$302(Lcom/wen/fluorescence/Fragment/SystemRDFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemRDFragment;
    .param p1, "x1"    # I

    .line 39
    iput p1, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->TestTimes:I

    return p1
.end method

.method static synthetic access$400(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    .line 39
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->tvTestTimes:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    .line 39
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->etTotalTime:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    .line 39
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->btnStart:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    .line 39
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->etDelayTime:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    .line 39
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->cbAutoPrint:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$900(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    .line 39
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->tvStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method private exitSystem()V
    .locals 3

    .line 221
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u91cd\u542f\u8f6f\u4ef6\u65b9\u80fd\u751f\u6548\uff0c\u786e\u5b9a\u9000\u51fa\u8f6f\u4ef6\u5417?"

    new-instance v2, Lcom/wen/fluorescence/Fragment/SystemRDFragment$5;

    invoke-direct {v2, p0}, Lcom/wen/fluorescence/Fragment/SystemRDFragment$5;-><init>(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)V

    invoke-static {v0, v1, v2}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 232
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 161
    const v0, 0x7f0800c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->etDelayTime:Landroid/widget/EditText;

    .line 162
    const v0, 0x7f0800f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->etTotalTime:Landroid/widget/EditText;

    .line 163
    const v0, 0x7f080250

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->tvTestTimes:Landroid/widget/TextView;

    .line 164
    const v0, 0x7f08007f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->btnStart:Landroid/widget/Button;

    .line 165
    const v0, 0x7f080078

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->btnSave:Landroid/widget/Button;

    .line 166
    const v0, 0x7f080124

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->llCurves:Landroid/widget/RelativeLayout;

    .line 167
    const v0, 0x7f080191

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->rgMacTypeVersion:Landroid/widget/RadioGroup;

    .line 168
    const v0, 0x7f080095

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->cbAutoPrint:Landroid/widget/CheckBox;

    .line 169
    const v0, 0x7f080246

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->tvStatus:Landroid/widget/TextView;

    .line 170
    const v0, 0x7f0800e4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->etSN:Landroid/widget/EditText;

    .line 171
    return-void
.end method

.method private setViewIncident()V
    .locals 3

    .line 174
    const/4 v0, 0x0

    iput v0, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->TestTimes:I

    .line 175
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->btnStart:Landroid/widget/Button;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->btnSave:Landroid/widget/Button;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v1

    const-string v2, "MAC_Type"

    invoke-virtual {v1, v2, v0}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getIntData(Ljava/lang/String;I)I

    move-result v0

    .line 178
    .local v0, "macType":I
    if-nez v0, :cond_0

    .line 179
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->rgMacTypeVersion:Landroid/widget/RadioGroup;

    const v2, 0x7f08015e

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->rgMacTypeVersion:Landroid/widget/RadioGroup;

    const v2, 0x7f08015a

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 183
    :goto_0
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->etSN:Landroid/widget/EditText;

    invoke-static {}, Lcom/wen/fluorescence/util/PublicFuction;->readSNSdcardFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->rgMacTypeVersion:Landroid/widget/RadioGroup;

    new-instance v2, Lcom/wen/fluorescence/Fragment/SystemRDFragment$3;

    invoke-direct {v2, p0}, Lcom/wen/fluorescence/Fragment/SystemRDFragment$3;-><init>(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 195
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->etSN:Landroid/widget/EditText;

    new-instance v2, Lcom/wen/fluorescence/Fragment/SystemRDFragment$4;

    invoke-direct {v2, p0}, Lcom/wen/fluorescence/Fragment/SystemRDFragment$4;-><init>(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 218
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

    .line 153
    const v0, 0x7f0a004c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 154
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->initView(Landroid/view/View;)V

    .line 155
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->setViewIncident()V

    .line 156
    return-object v0
.end method

.method public receiveCurrentData([I)V
    .locals 4
    .param p1, "data"    # [I

    .line 59
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->arrayData:[I

    .line 60
    iget v0, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->TestTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->TestTimes:I

    .line 61
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->tvStatus:Landroid/widget/TextView;

    const-string v1, "Received data..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/wen/fluorescence/Fragment/SystemRDFragment$1;

    invoke-direct {v1, p0}, Lcom/wen/fluorescence/Fragment/SystemRDFragment$1;-><init>(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 67
    return-void
.end method
