.class public Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;
.super Landroid/support/v4/app/Fragment;
.source "SystemSelfTestFragment.java"


# instance fields
.field private bResult0:Z

.field private bResult1:Z

.field private bResult2:Z

.field private bResult3:Z

.field private btnCardIn:Landroid/widget/Button;

.field private btnCardOut:Landroid/widget/Button;

.field private btnPrint:Landroid/widget/Button;

.field private btnTest:Landroid/widget/Button;

.field listener:Landroid/view/View$OnClickListener;

.field private tvResult0:Landroid/widget/TextView;

.field private tvResult1:Landroid/widget/TextView;

.field private tvResult2:Landroid/widget/TextView;

.field private tvResult3:Landroid/widget/TextView;

.field private tvStatus:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 82
    new-instance v0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment$1;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment$1;-><init>(Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;)V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->listener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;

    .line 30
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->tvStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;

    .line 30
    iget-boolean v0, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->bResult1:Z

    return v0
.end method

.method static synthetic access$200(Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;

    .line 30
    iget-boolean v0, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->bResult2:Z

    return v0
.end method

.method static synthetic access$300(Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;

    .line 30
    iget-boolean v0, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->bResult0:Z

    return v0
.end method

.method static synthetic access$400(Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;

    .line 30
    iget-boolean v0, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->bResult3:Z

    return v0
.end method

.method private initView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 64
    const v0, 0x7f080235

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->tvResult0:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f080236

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->tvResult1:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f080237

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->tvResult2:Landroid/widget/TextView;

    .line 67
    const v0, 0x7f080238

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->tvResult3:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f08003c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->btnCardIn:Landroid/widget/Button;

    .line 69
    const v0, 0x7f08003d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->btnCardOut:Landroid/widget/Button;

    .line 70
    const v0, 0x7f080069

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->btnPrint:Landroid/widget/Button;

    .line 71
    const v0, 0x7f08008c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->btnTest:Landroid/widget/Button;

    .line 72
    const v0, 0x7f080246

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->tvStatus:Landroid/widget/TextView;

    .line 73
    return-void
.end method

.method private setViewIncident()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->btnCardIn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->btnCardOut:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->btnPrint:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->btnTest:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
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

    .line 40
    const v0, 0x7f0a005f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 41
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->initView(Landroid/view/View;)V

    .line 42
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->setViewIncident()V

    .line 43
    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .locals 2
    .param p1, "hidden"    # Z

    .line 48
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 49
    if-nez p1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->tvResult0:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->tvResult1:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->tvResult2:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->tvResult3:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->tvStatus:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->bResult0:Z

    .line 56
    iput-boolean v0, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->bResult1:Z

    .line 57
    iput-boolean v0, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->bResult2:Z

    .line 58
    iput-boolean v0, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->bResult3:Z

    .line 59
    invoke-static {}, Lcom/wen/fluorescence/Thread/TempTimer;->getInstance()Lcom/wen/fluorescence/Thread/TempTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/Thread/TempTimer;->stopTempTimer()V

    goto :goto_0

    .line 60
    :cond_0
    invoke-static {}, Lcom/wen/fluorescence/Thread/TempTimer;->getInstance()Lcom/wen/fluorescence/Thread/TempTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/Thread/TempTimer;->startTempTimer()V

    .line 61
    :goto_0
    return-void
.end method

.method public setQCResult(IZ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "bResult"    # Z

    .line 136
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    return-void

    .line 139
    :cond_0
    const v0, 0x7f0c0056

    const v1, 0x7f0c0104

    packed-switch p1, :pswitch_data_0

    goto :goto_4

    .line 154
    :pswitch_0
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->tvResult3:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iput-boolean p2, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->bResult3:Z

    goto :goto_4

    .line 150
    :pswitch_1
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->tvResult2:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iput-boolean p2, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->bResult2:Z

    .line 152
    goto :goto_4

    .line 146
    :pswitch_2
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->tvResult1:Landroid/widget/TextView;

    if-eqz p2, :cond_3

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iput-boolean p2, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->bResult1:Z

    .line 148
    goto :goto_4

    .line 141
    :pswitch_3
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->setViewEnable2(Z)V

    .line 142
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->tvResult0:Landroid/widget/TextView;

    if-eqz p2, :cond_4

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iput-boolean p2, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->bResult0:Z

    .line 144
    nop

    .line 158
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setViewEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 161
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->btnCardIn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 162
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->btnCardOut:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 163
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->btnPrint:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 164
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->btnTest:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 165
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-virtual {v0, p1}, Lcom/wen/fluorescence/Fragment/SystemFragment;->setTabEnable(Z)V

    .line 166
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/wen/fluorescence/MainActivity;

    invoke-virtual {v0, p1}, Lcom/wen/fluorescence/MainActivity;->setTabEnable(Z)V

    .line 167
    if-nez p1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->tvStatus:Landroid/widget/TextView;

    const v1, 0x7f0c012a

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->tvResult0:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->tvResult1:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->tvResult2:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->tvResult3:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->tvStatus:Landroid/widget/TextView;

    const v1, 0x7f0c0125

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    :goto_0
    return-void
.end method

.method public setViewEnable2(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 179
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->btnCardIn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 180
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->btnCardOut:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 181
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->btnPrint:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 182
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->btnTest:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 183
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-virtual {v0, p1}, Lcom/wen/fluorescence/Fragment/SystemFragment;->setTabEnable(Z)V

    .line 184
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/wen/fluorescence/MainActivity;

    invoke-virtual {v0, p1}, Lcom/wen/fluorescence/MainActivity;->setTabEnable(Z)V

    .line 186
    return-void
.end method
