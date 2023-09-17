.class public Lcom/wen/fluorescence/Fragment/QCFragment;
.super Landroid/support/v4/app/Fragment;
.source "QCFragment.java"

# interfaces
.implements Lcom/wen/fluorescence/Fragment/QCTestFragment$QCCallback;


# instance fields
.field private currentID:I

.field private qcDataFrgament:Landroid/support/v4/app/Fragment;

.field private qcLJFragment:Landroid/support/v4/app/Fragment;

.field private qcTestFragment:Landroid/support/v4/app/Fragment;

.field private rgQC:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/wen/fluorescence/Fragment/QCFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/QCFragment;
    .param p1, "x1"    # I

    .line 17
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/Fragment/QCFragment;->switchFragment(I)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 34
    const v0, 0x7f080192

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCFragment;->rgQC:Landroid/widget/RadioGroup;

    .line 35
    return-void
.end method

.method private setViewIncident()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCFragment;->rgQC:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/wen/fluorescence/Fragment/QCFragment$1;

    invoke-direct {v1, p0}, Lcom/wen/fluorescence/Fragment/QCFragment$1;-><init>(Lcom/wen/fluorescence/Fragment/QCFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 44
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCFragment;->rgQC:Landroid/widget/RadioGroup;

    const v1, 0x7f080177

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 45
    return-void
.end method

.method private switchFragment(I)V
    .locals 4
    .param p1, "rbID"    # I

    .line 49
    iget v0, p0, Lcom/wen/fluorescence/Fragment/QCFragment;->currentID:I

    if-ne p1, v0, :cond_0

    .line 50
    return-void

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/QCFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 53
    .local v0, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/QCFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    .line 54
    .local v1, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    .line 55
    .local v3, "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 56
    .end local v3    # "fragment":Landroid/support/v4/app/Fragment;
    goto :goto_0

    .line 57
    :cond_1
    const v2, 0x7f0800ac

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 59
    :pswitch_0
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/QCFragment;->qcTestFragment:Landroid/support/v4/app/Fragment;

    if-nez v3, :cond_2

    .line 60
    new-instance v3, Lcom/wen/fluorescence/Fragment/QCTestFragment;

    invoke-direct {v3}, Lcom/wen/fluorescence/Fragment/QCTestFragment;-><init>()V

    iput-object v3, p0, Lcom/wen/fluorescence/Fragment/QCFragment;->qcTestFragment:Landroid/support/v4/app/Fragment;

    .line 61
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/QCFragment;->qcTestFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    .line 63
    :cond_2
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/QCFragment;->qcTestFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 65
    goto :goto_1

    .line 75
    :pswitch_1
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/QCFragment;->qcLJFragment:Landroid/support/v4/app/Fragment;

    if-nez v3, :cond_3

    .line 76
    new-instance v3, Lcom/wen/fluorescence/Fragment/QCLJFragment;

    invoke-direct {v3}, Lcom/wen/fluorescence/Fragment/QCLJFragment;-><init>()V

    iput-object v3, p0, Lcom/wen/fluorescence/Fragment/QCFragment;->qcLJFragment:Landroid/support/v4/app/Fragment;

    .line 77
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/QCFragment;->qcLJFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    .line 79
    :cond_3
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/QCFragment;->qcLJFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 81
    goto :goto_1

    .line 67
    :pswitch_2
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/QCFragment;->qcDataFrgament:Landroid/support/v4/app/Fragment;

    if-nez v3, :cond_4

    .line 68
    new-instance v3, Lcom/wen/fluorescence/Fragment/QCDataFragment;

    invoke-direct {v3}, Lcom/wen/fluorescence/Fragment/QCDataFragment;-><init>()V

    iput-object v3, p0, Lcom/wen/fluorescence/Fragment/QCFragment;->qcDataFrgament:Landroid/support/v4/app/Fragment;

    .line 69
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/QCFragment;->qcDataFrgament:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    .line 71
    :cond_4
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/QCFragment;->qcDataFrgament:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 73
    nop

    .line 85
    :goto_1
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 86
    iput p1, p0, Lcom/wen/fluorescence/Fragment/QCFragment;->currentID:I

    .line 87
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f080175
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    .line 27
    const v0, 0x7f0a0049

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 28
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/QCFragment;->initView(Landroid/view/View;)V

    .line 29
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/QCFragment;->setViewIncident()V

    .line 30
    return-object v0
.end method

.method public setTabEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 92
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCFragment;->rgQC:Landroid/widget/RadioGroup;

    const v1, 0x7f080177

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 93
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCFragment;->rgQC:Landroid/widget/RadioGroup;

    const v1, 0x7f080175

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 94
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCFragment;->rgQC:Landroid/widget/RadioGroup;

    const v1, 0x7f080176

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 95
    return-void
.end method
