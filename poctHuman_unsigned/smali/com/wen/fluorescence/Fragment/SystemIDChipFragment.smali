.class public Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;
.super Landroid/support/v4/app/Fragment;
.source "SystemIDChipFragment.java"


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

.field private idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

.field private logNumberList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private spAlgorithmType:Landroid/widget/Spinner;

.field private spBarCode:Landroid/widget/Spinner;

.field private spIDCard:Landroid/widget/Spinner;

.field private spItemName:Landroid/widget/Spinner;

.field private spQualitativeFlag:Landroid/widget/Spinner;

.field private spSampleNo:Landroid/widget/Spinner;

.field private spSampleType:Landroid/widget/Spinner;

.field private spTCType:Landroid/widget/Spinner;

.field private spToCalcApex:Landroid/widget/Spinner;

.field private tvAddSample:Landroid/widget/TextView;

.field private tvAddSampleName:Landroid/widget/TextView;

.field private tvApexInterval:Landroid/widget/TextView;

.field private tvBatchNum:Landroid/widget/TextView;

.field private tvCoefficientSub:Landroid/widget/TextView;

.field private tvDecimalDigits:Landroid/widget/TextView;

.field private tvDensity:Landroid/widget/TextView;

.field private tvDimension:Landroid/widget/TextView;

.field private tvDivisionIndex:Landroid/widget/TextView;

.field private tvHatchTime:Landroid/widget/TextView;

.field private tvIsAddSample:Landroid/widget/TextView;

.field private tvIsCoefficientSeg:Landroid/widget/TextView;

.field private tvIsLog:Landroid/widget/TextView;

.field private tvIsRushTop:Landroid/widget/TextView;

.field private tvLastTime:Landroid/widget/TextView;

.field private tvLimitation:Landroid/widget/TextView;

.field private tvLog_x:Landroid/widget/TextView;

.field private tvLog_y:Landroid/widget/TextView;

.field private tvMultiProjectDenominator:Landroid/widget/TextView;

.field private tvMultiProjectMolecule:Landroid/widget/TextView;

.field private tvOtherAlgorithm:Landroid/widget/TextView;

.field private tvProjectName:Landroid/widget/TextView;

.field private tvQualitativeTestConclusion:Landroid/widget/TextView;

.field private tvQualitativeTestInterval:Landroid/widget/TextView;

.field private tvRushTop:Landroid/widget/TextView;

.field private tvRushTopName:Landroid/widget/TextView;

.field private tvSecondName:Landroid/widget/TextView;

.field private tvSegmentInterval:Landroid/widget/TextView;

.field private tvTestBound1:Landroid/widget/TextView;

.field private tvTestBound2:Landroid/widget/TextView;

.field private tvThresholdValue:Landroid/widget/TextView;

.field private tvThresholdValueResultHight:Landroid/widget/TextView;

.field private tvThresholdValueResultLow:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;

.field private tvToCutdownTime:Landroid/widget/TextView;

.field private tvUnCoefficientSeg:Landroid/widget/TextView;

.field private tvUnit:Landroid/widget/TextView;

.field private tvValue_tc:Landroid/widget/TextView;

.field private tvl_Count:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->logNumberList:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->barCodeList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;
    .param p1, "x1"    # I

    .line 26
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->updateIDChipInfo(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;)Lcom/wen/fluorescence/bean/IDChipInfoN;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;

    .line 26
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    return-object v0
.end method

.method static synthetic access$200(Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;Lcom/wen/fluorescence/bean/IDChipInfoExN;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;
    .param p1, "x1"    # Lcom/wen/fluorescence/bean/IDChipInfoExN;

    .line 26
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->setUpIdChipInfoExN(Lcom/wen/fluorescence/bean/IDChipInfoExN;)V

    return-void
.end method

.method static synthetic access$300(Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;

    .line 26
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->spSampleType:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$400(Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;

    .line 26
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvIsCoefficientSeg:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;

    .line 26
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvUnCoefficientSeg:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;

    .line 26
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvSegmentInterval:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;

    .line 26
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvCoefficientSub:Landroid/widget/TextView;

    return-object v0
.end method

.method private init()V
    .locals 6

    .line 670
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->logNumberList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 671
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->barCodeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 677
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/database/DBManager;->queryAllIDChipInfoN()Ljava/util/List;

    move-result-object v0

    .line 678
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/bean/IDChipInfoN;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 679
    const/4 v1, 0x0

    .line 679
    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 680
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->logNumberList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget-object v3, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->new_logNo:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->barCodeList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget-object v3, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->new_barCode:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 679
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 685
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0a0058

    const v4, 0x7f0801a3

    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->logNumberList:Ljava/util/List;

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 686
    .local v1, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->spBarCode:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 687
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 102
    const v0, 0x7f0801bb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->spBarCode:Landroid/widget/Spinner;

    .line 103
    const v0, 0x7f0801c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->spItemName:Landroid/widget/Spinner;

    .line 104
    const v0, 0x7f08025a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvTitle:Landroid/widget/TextView;

    .line 105
    const v0, 0x7f0801be

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->spIDCard:Landroid/widget/Spinner;

    .line 106
    const v0, 0x7f0801ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvBatchNum:Landroid/widget/TextView;

    .line 107
    const v0, 0x7f0801ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvApexInterval:Landroid/widget/TextView;

    .line 108
    const v0, 0x7f0801c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->spQualitativeFlag:Landroid/widget/Spinner;

    .line 109
    const v0, 0x7f0801c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->spToCalcApex:Landroid/widget/Spinner;

    .line 110
    const v1, 0x7f080205

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvIsAddSample:Landroid/widget/TextView;

    .line 111
    const v1, 0x7f0801eb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvAddSampleName:Landroid/widget/TextView;

    .line 112
    const v1, 0x7f0801ea

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvAddSample:Landroid/widget/TextView;

    .line 113
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->spToCalcApex:Landroid/widget/Spinner;

    .line 114
    const v0, 0x7f080207

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvIsRushTop:Landroid/widget/TextView;

    .line 115
    const v0, 0x7f08023a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvRushTopName:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f080239

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvRushTop:Landroid/widget/TextView;

    .line 117
    const v0, 0x7f080212

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvLastTime:Landroid/widget/TextView;

    .line 118
    const v0, 0x7f080200

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvHatchTime:Landroid/widget/TextView;

    .line 119
    const v0, 0x7f080227

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvProjectName:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f08025d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvUnit:Landroid/widget/TextView;

    .line 121
    const v0, 0x7f0801f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvDecimalDigits:Landroid/widget/TextView;

    .line 122
    const v0, 0x7f0801c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->spTCType:Landroid/widget/Spinner;

    .line 123
    const v0, 0x7f08021c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvMultiProjectMolecule:Landroid/widget/TextView;

    .line 124
    const v0, 0x7f08021b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvMultiProjectDenominator:Landroid/widget/TextView;

    .line 125
    const v0, 0x7f08026c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvl_Count:Landroid/widget/TextView;

    .line 126
    const v0, 0x7f0801ba

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->spAlgorithmType:Landroid/widget/Spinner;

    .line 127
    const v0, 0x7f080208

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvIsLog:Landroid/widget/TextView;

    .line 128
    const v0, 0x7f0801f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvDimension:Landroid/widget/TextView;

    .line 129
    const v0, 0x7f0801fa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvDivisionIndex:Landroid/widget/TextView;

    .line 130
    const v0, 0x7f080214

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvLimitation:Landroid/widget/TextView;

    .line 131
    const v0, 0x7f080215

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvLog_x:Landroid/widget/TextView;

    .line 132
    const v0, 0x7f080216

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvLog_y:Landroid/widget/TextView;

    .line 133
    const v0, 0x7f0801c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->spSampleType:Landroid/widget/Spinner;

    .line 134
    const v0, 0x7f080206

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvIsCoefficientSeg:Landroid/widget/TextView;

    .line 135
    const v0, 0x7f08025c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvUnCoefficientSeg:Landroid/widget/TextView;

    .line 136
    const v0, 0x7f080240

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvSegmentInterval:Landroid/widget/TextView;

    .line 137
    const v0, 0x7f0801f1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvCoefficientSub:Landroid/widget/TextView;

    .line 138
    const v0, 0x7f0801f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvDensity:Landroid/widget/TextView;

    .line 139
    const v0, 0x7f080262

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvValue_tc:Landroid/widget/TextView;

    .line 140
    const v0, 0x7f08024d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvTestBound1:Landroid/widget/TextView;

    .line 141
    const v0, 0x7f08024e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvTestBound2:Landroid/widget/TextView;

    .line 142
    const v0, 0x7f08023f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvSecondName:Landroid/widget/TextView;

    .line 143
    const v0, 0x7f080251

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvThresholdValue:Landroid/widget/TextView;

    .line 144
    const v0, 0x7f080253

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvThresholdValueResultLow:Landroid/widget/TextView;

    .line 145
    const v0, 0x7f080252

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvThresholdValueResultHight:Landroid/widget/TextView;

    .line 146
    const v0, 0x7f08022e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvQualitativeTestInterval:Landroid/widget/TextView;

    .line 147
    const v0, 0x7f08022d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvQualitativeTestConclusion:Landroid/widget/TextView;

    .line 148
    const v0, 0x7f0801c3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->spSampleNo:Landroid/widget/Spinner;

    .line 149
    return-void
.end method

.method private setUpIdChipInfoExN(Lcom/wen/fluorescence/bean/IDChipInfoExN;)V
    .locals 13
    .param p1, "idChipInfoExN"    # Lcom/wen/fluorescence/bean/IDChipInfoExN;

    .line 520
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 521
    .local v0, "tcTypeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v1, v1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_ItemCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 522
    const-string v1, "T2/C"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    const-string v1, "T1/C"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    const-string v1, "T1/C"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    const-string v1, "\uff08T1+T2\uff09/C"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    const-string v1, "T1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    const-string v1, "T2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    const-string v1, "C"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    const-string v1, "T1+T2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    const-string v1, "T2+C"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    const-string v1, "C/T2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    const-string v1, "C/T1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    const-string v1, "T1/T2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    const-string v1, "T2/T1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 537
    :cond_0
    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    :goto_0
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0a0058

    const v5, 0x7f0801a3

    invoke-direct {v1, v3, v4, v5, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 539
    .local v1, "adapter":Landroid/widget/ArrayAdapter;
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->spTCType:Landroid/widget/Spinner;

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 540
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->spTCType:Landroid/widget/Spinner;

    iget v4, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_calcMethod:I

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 541
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->spTCType:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 542
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->spAlgorithmType:Landroid/widget/Spinner;

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->AlgorithmType:I

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 544
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->spSampleNo:Landroid/widget/Spinner;

    new-instance v5, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment$4;

    invoke-direct {v5, p0, p1}, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment$4;-><init>(Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;Lcom/wen/fluorescence/bean/IDChipInfoExN;)V

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 577
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvProjectName:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_projectName:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvUnit:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_unit:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvDecimalDigits:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_decimalDigits:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    iget v3, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_t:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v3, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_ItemCount:I

    if-eq v3, v2, :cond_1

    .line 583
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvMultiProjectMolecule:Landroid/widget/TextView;

    const-string v7, "X1"

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 584
    :cond_1
    iget v3, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_t:I

    if-ne v3, v2, :cond_2

    .line 585
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvMultiProjectMolecule:Landroid/widget/TextView;

    const-string v7, "X2"

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 586
    :cond_2
    iget v3, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_t:I

    if-ne v3, v6, :cond_3

    .line 587
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvMultiProjectMolecule:Landroid/widget/TextView;

    const-string v7, "X3"

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 588
    :cond_3
    iget v3, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_t:I

    if-ne v3, v5, :cond_4

    .line 589
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvMultiProjectMolecule:Landroid/widget/TextView;

    const-string v7, "X4"

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 590
    :cond_4
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v3, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_ItemCount:I

    if-ne v3, v2, :cond_5

    .line 591
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvMultiProjectMolecule:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 593
    :cond_5
    :goto_1
    iget v3, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_c:I

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v3, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_ItemCount:I

    if-eq v3, v2, :cond_6

    .line 594
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvMultiProjectDenominator:Landroid/widget/TextView;

    const-string v5, "X1"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 595
    :cond_6
    iget v3, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_c:I

    if-ne v3, v2, :cond_7

    .line 596
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvMultiProjectDenominator:Landroid/widget/TextView;

    const-string v5, "X2"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 597
    :cond_7
    iget v3, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_c:I

    if-ne v3, v6, :cond_8

    .line 598
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvMultiProjectDenominator:Landroid/widget/TextView;

    const-string v5, "X3"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 599
    :cond_8
    iget v3, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_c:I

    if-ne v3, v5, :cond_9

    .line 600
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvMultiProjectDenominator:Landroid/widget/TextView;

    const-string v5, "X4"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 601
    :cond_9
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v3, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_ItemCount:I

    if-ne v3, v2, :cond_a

    .line 602
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvMultiProjectDenominator:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    :cond_a
    :goto_2
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvl_Count:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->l_count:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 606
    iget v3, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_unlog:I

    if-ne v3, v2, :cond_b

    .line 607
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvIsLog:Landroid/widget/TextView;

    const-string v5, "\u662f"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 609
    :cond_b
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvIsLog:Landroid/widget/TextView;

    const-string v5, "\u5426"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 612
    :goto_3
    iget v3, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_dimension:I

    if-ne v3, v2, :cond_c

    .line 613
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvDimension:Landroid/widget/TextView;

    const-string v5, "\u662f"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 615
    :cond_c
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvDimension:Landroid/widget/TextView;

    const-string v5, "\u5426"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    :goto_4
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvDivisionIndex:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_divisionIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 620
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvLimitation:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_dimen:[I

    aget v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_dimen:[I

    aget v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    iget v3, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->x_isOtherAlglog:I

    if-ne v3, v2, :cond_d

    .line 622
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvLog_x:Landroid/widget/TextView;

    const-string v5, "\u662f"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 624
    :cond_d
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvLog_x:Landroid/widget/TextView;

    const-string v5, "\u5426"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    :goto_5
    iget v3, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->y_isOtherAlglog:I

    if-ne v3, v2, :cond_e

    .line 628
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvLog_y:Landroid/widget/TextView;

    const-string v5, "\u662f"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 630
    :cond_e
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvLog_y:Landroid/widget/TextView;

    const-string v5, "\u5426"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 633
    :goto_6
    const-string v3, ""

    .line 634
    .local v3, "strDensity":Ljava/lang/String;
    const-string v5, ""

    .line 635
    .local v5, "strValue_tc":Ljava/lang/String;
    move-object v6, v5

    move-object v5, v3

    move v3, v4

    .line 635
    .local v3, "j":I
    .local v5, "strDensity":Ljava/lang/String;
    .local v6, "strValue_tc":Ljava/lang/String;
    :goto_7
    iget v7, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->l_count:I

    if-ge v3, v7, :cond_f

    .line 636
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->cc:[D

    aget-wide v9, v8, v3

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 637
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->tc:[D

    aget-wide v9, v8, v3

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 635
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 639
    .end local v3    # "j":I
    :cond_f
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvDensity:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 640
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvValue_tc:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 642
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvTestBound1:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_testBound:[[D

    aget-object v8, v8, v4

    aget-wide v9, v8, v4

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_testBound:[[D

    aget-object v8, v8, v4

    aget-wide v9, v8, v2

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvTestBound2:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_testBound:[[D

    aget-object v8, v8, v2

    aget-wide v9, v8, v4

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_testBound:[[D

    aget-object v8, v8, v2

    aget-wide v9, v8, v2

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 644
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvSecondName:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_projectName:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvThresholdValue:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->thresholdValue:D

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 648
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvThresholdValueResultLow:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->thresholdValueResult:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 650
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvThresholdValueResultHight:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->thresholdValueResult:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 652
    const-string v3, ""

    .line 653
    .local v3, "str1":Ljava/lang/String;
    move-object v7, v3

    move v3, v4

    .line 653
    .local v3, "i":I
    .local v7, "str1":Ljava/lang/String;
    :goto_8
    iget-object v8, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->resultOfDensity:[Ljava/lang/String;

    array-length v8, v8

    if-ge v3, v8, :cond_10

    .line 654
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->resultOfDensity:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 653
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 656
    .end local v3    # "i":I
    :cond_10
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvQualitativeTestConclusion:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 658
    const-string v3, ""

    .line 659
    .local v3, "str2":Ljava/lang/String;
    move-object v8, v3

    move v3, v4

    .line 659
    .local v3, "i":I
    .local v8, "str2":Ljava/lang/String;
    :goto_9
    iget-object v9, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->intervalDensity:[D

    array-length v9, v9

    if-ge v3, v9, :cond_11

    .line 660
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->intervalDensity:[D

    aget-wide v11, v10, v3

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v10, "; "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 659
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 662
    .end local v3    # "i":I
    :cond_11
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvQualitativeTestInterval:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 663
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvSecondName:Landroid/widget/TextView;

    iget-object v9, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_projectName:[Ljava/lang/String;

    aget-object v2, v9, v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 665
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->spSampleNo:Landroid/widget/Spinner;

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 666
    return-void
.end method

.method private setViewIncident()V
    .locals 15

    .line 152
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->init()V

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v0, "spIDCardList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "\u666e\u901a\u5361"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    const-string v1, "\u4e09\u8054\u5361"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    const-string v1, "\u516d\u8054\u5361"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0a0058

    const v4, 0x7f0801a3

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 159
    .local v1, "adapter1":Landroid/widget/ArrayAdapter;
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->spIDCard:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 160
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->spIDCard:Landroid/widget/Spinner;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 162
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v2, "QaulitativeFlagList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v6, "\u5b9a\u91cf\u6d4b\u8bd5"

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    const-string v6, "\u5b9a\u6027\u6d4b\u8bd5"

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    const-string v6, "\u534a\u5b9a\u91cf\u6d4b\u8bd5"

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v6, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const v8, 0x7f0a0057

    invoke-direct {v6, v7, v8, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 167
    .local v6, "adapter2":Landroid/widget/ArrayAdapter;
    iget-object v7, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->spQualitativeFlag:Landroid/widget/Spinner;

    invoke-virtual {v7, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 168
    iget-object v7, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->spQualitativeFlag:Landroid/widget/Spinner;

    invoke-virtual {v7, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 170
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v7, "toCalcApexList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v9, "\u6700\u5927\u5747\u503c\u6cd5"

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    const-string v9, "\u5e38\u89c4\u9762\u79ef\u6cd5"

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v9, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-direct {v9, v10, v8, v4, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    move-object v8, v9

    .line 174
    .local v8, "adapter3":Landroid/widget/ArrayAdapter;
    iget-object v9, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->spToCalcApex:Landroid/widget/Spinner;

    invoke-virtual {v9, v8}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 175
    iget-object v9, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->spToCalcApex:Landroid/widget/Spinner;

    invoke-virtual {v9, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 177
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v9, "AlgorithmList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v10, "\u591a\u9879\u5f0f\u62df\u5408"

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    const-string v10, "\u56db\u53c2\u6570\u62df\u5408"

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    const-string v10, "\u7ebf\u6027\u56de\u5f52\u62df\u5408"

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    const-string v10, "\u4e09\u6b21\u6837\u6761\u63d2\u503c\u6cd5"

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    const-string v10, "\u5bf9\u6570\u51fd\u6570\u62df\u5408"

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    const-string v10, "\u6307\u6570\u51fd\u6570\u62df\u5408"

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    const-string v10, "Logit-log\u76f4\u7ebf\u62df\u5408"

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    const-string v10, "\u7ebf\u6027\u63d2\u503c\u6cd5"

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v10, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-direct {v10, v11, v3, v4, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 187
    .local v10, "adapter4":Landroid/widget/ArrayAdapter;
    iget-object v11, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->spAlgorithmType:Landroid/widget/Spinner;

    invoke-virtual {v11, v10}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 189
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v11, "sampleNoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v12, "\u6837\u672c\u4e00"

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    const-string v12, "\u6837\u672c\u4e8c"

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    const-string v12, "\u6837\u672c\u4e09"

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    const-string v12, "\u6837\u672c\u56db"

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    const-string v12, "\u6837\u672c\u4e94"

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v12, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-direct {v12, v13, v3, v4, v11}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    move-object v3, v12

    .line 196
    .local v3, "adapter5":Landroid/widget/ArrayAdapter;
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->spSampleNo:Landroid/widget/Spinner;

    invoke-virtual {v4, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 198
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v4, "sampleTypeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v12, "\u8840\u6e05/\u8840\u6d46"

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    const-string v12, "\u5168\u8840"

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    const-string v12, "\u5c3f\u6db2"

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    const-string v12, "\u7caa\u4fbf"

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    const-string v12, "\u8d28\u63a7\u6db2"

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    const-string v12, "\u672b\u68a2\u8840"

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    const-string v12, "\u5934\u53d1"

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    const-string v12, "\u817f\u6bdb"

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    const-string v12, "\u814b\u6bdb"

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    const-string v12, "\u553e\u6db2"

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    const-string v12, "\u6bdb\u53d1"

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    const-string v12, "\u7cae\u98df\u8c37\u7269"

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    const-string v12, "\u9972\u6599\u53ca\u539f\u6599"

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    const-string v12, "\u7cae\u6cb9"

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    const-string v12, "\u5c0f\u9ea6\u53ca\u9762\u7c89"

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    const-string v12, "\u539f\u5976"

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    const-string v12, "\u5976\u5236\u54c1"

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    const-string v12, "\u9178\u5976"

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    const-string v12, "\u719f\u98df"

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    const-string v12, "\u7ec4\u7ec7"

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    const-string v12, "\u6c34\u4ea7\u54c1"

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    const-string v12, "\u755c\u79bd"

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    const-string v12, "\u679c\u852c"

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    const-string v12, "\u4e2d\u836f\u6750"

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    const-string v12, "\u6c34\u8d28"

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    const-string v12, "\u8c46\u5236\u54c1"

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    const-string v12, "\u690d\u7269\u6cb9"

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    const-string v12, "\u8702\u871c"

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    const-string v12, "\u70df\u8349"

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    const-string v12, "\u5176\u5b83"

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    const-string v12, "UTM/VTM"

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    new-instance v12, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    const v14, 0x1090003

    invoke-direct {v12, v13, v14, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 231
    .local v12, "adapter6":Landroid/widget/ArrayAdapter;
    iget-object v13, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->spSampleType:Landroid/widget/Spinner;

    invoke-virtual {v13, v12}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 232
    iget-object v13, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->spSampleType:Landroid/widget/Spinner;

    invoke-virtual {v13, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 234
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->spBarCode:Landroid/widget/Spinner;

    new-instance v13, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment$1;

    invoke-direct {v13, p0}, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment$1;-><init>(Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;)V

    invoke-virtual {v5, v13}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 245
    return-void
.end method

.method private updateIDChipInfo(I)V
    .locals 9
    .param p1, "position"    # I

    .line 249
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->barCodeList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/DBManager;->queryIDChipInfoNForBarCode(Ljava/lang/String;)Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v0

    const v1, 0x7f0801a3

    const v2, 0x7f0a0058

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_7

    .line 251
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v0

    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->barCodeList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/wen/fluorescence/database/DBManager;->queryIDChipInfoNForBarCode(Ljava/lang/String;)Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v0

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    .line 252
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v0

    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->barCodeList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/wen/fluorescence/database/DBManager;->queryIDChipInfoExNForBarCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 253
    .local v0, "idChipInfoExNList":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/bean/IDChipInfoExN;>;"
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lcom/wen/fluorescence/bean/IDChipInfoExN;

    invoke-interface {v0, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/wen/fluorescence/bean/IDChipInfoExN;

    iput-object v6, v5, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    .line 254
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    invoke-virtual {v5}, Lcom/wen/fluorescence/bean/IDChipInfoN;->println()V

    .line 255
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    if-eqz v5, :cond_6

    .line 257
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v5, "itemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v6, v3

    .line 258
    .local v6, "i":I
    :goto_0
    iget-object v7, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v7, v7, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_ItemCount:I

    if-ge v6, v7, :cond_0

    .line 259
    iget-object v7, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget-object v7, v7, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_projectName:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 261
    .end local v6    # "i":I
    :cond_0
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v3, v6, v2, v1, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    move-object v1, v3

    .line 262
    .local v1, "itemAdapter":Landroid/widget/ArrayAdapter;
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->spItemName:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 263
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->spItemName:Landroid/widget/Spinner;

    new-instance v3, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment$2;

    invoke-direct {v3, p0}, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment$2;-><init>(Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 277
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->spIDCard:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v3, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->cardsCounts:I

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 278
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvBatchNum:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget-object v3, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->new_barCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v2, v2, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_ItemCount:I

    if-ne v2, v4, :cond_1

    .line 280
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvApexInterval:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v6, v6, Lcom/wen/fluorescence/bean/IDChipInfoN;->T1_start:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v6, v6, Lcom/wen/fluorescence/bean/IDChipInfoN;->T1_end:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v6, v6, Lcom/wen/fluorescence/bean/IDChipInfoN;->T2_start:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v6, v6, Lcom/wen/fluorescence/bean/IDChipInfoN;->T2_end:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v6, v6, Lcom/wen/fluorescence/bean/IDChipInfoN;->C_start:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v6, v6, Lcom/wen/fluorescence/bean/IDChipInfoN;->C_end:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 283
    :cond_1
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvApexInterval:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v6, v6, Lcom/wen/fluorescence/bean/IDChipInfoN;->X1_start:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v6, v6, Lcom/wen/fluorescence/bean/IDChipInfoN;->X1_end:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v6, v6, Lcom/wen/fluorescence/bean/IDChipInfoN;->X2_start:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v6, v6, Lcom/wen/fluorescence/bean/IDChipInfoN;->X2_end:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v6, v6, Lcom/wen/fluorescence/bean/IDChipInfoN;->X3_start:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v6, v6, Lcom/wen/fluorescence/bean/IDChipInfoN;->X3_end:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v6, v6, Lcom/wen/fluorescence/bean/IDChipInfoN;->X4_start:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v6, v6, Lcom/wen/fluorescence/bean/IDChipInfoN;->X4_end:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    :goto_1
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->spQualitativeFlag:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v3, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->qualitativeFlag:I

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 288
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->spToCalcApex:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v3, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->toCalcApex:I

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 290
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v2, v2, Lcom/wen/fluorescence/bean/IDChipInfoN;->isAddSample:I

    if-ne v2, v4, :cond_2

    .line 291
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvIsAddSample:Landroid/widget/TextView;

    const-string v3, "\u662f"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 293
    :cond_2
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvIsAddSample:Landroid/widget/TextView;

    const-string v3, "\u5426"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    :goto_2
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget-object v3, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v2, v2, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_ItemCount:I

    if-ne v2, v4, :cond_3

    .line 300
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v2, v2, Lcom/wen/fluorescence/bean/IDChipInfoN;->AddSampleName:I

    packed-switch v2, :pswitch_data_0

    .line 312
    goto :goto_3

    .line 308
    :pswitch_0
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvAddSampleName:Landroid/widget/TextView;

    const-string v3, "C"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    goto :goto_3

    .line 305
    :pswitch_1
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvAddSampleName:Landroid/widget/TextView;

    const-string v3, "T2"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    goto :goto_3

    .line 302
    :pswitch_2
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvAddSampleName:Landroid/widget/TextView;

    const-string v3, "T1"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    goto :goto_3

    .line 315
    :cond_3
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v2, v2, Lcom/wen/fluorescence/bean/IDChipInfoN;->AddSampleName:I

    packed-switch v2, :pswitch_data_1

    goto :goto_3

    .line 326
    :pswitch_3
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvAddSampleName:Landroid/widget/TextView;

    const-string v3, "X4"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    goto :goto_3

    .line 323
    :pswitch_4
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvAddSampleName:Landroid/widget/TextView;

    const-string v3, "X3"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    goto :goto_3

    .line 320
    :pswitch_5
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvAddSampleName:Landroid/widget/TextView;

    const-string v3, "X2"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    goto :goto_3

    .line 317
    :pswitch_6
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvAddSampleName:Landroid/widget/TextView;

    const-string v3, "X1"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    nop

    .line 332
    :goto_3
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvAddSample:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v6, v6, Lcom/wen/fluorescence/bean/IDChipInfoN;->addSample:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvHatchTime:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v6, v6, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_countdowntime:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\u5206"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v6, v6, Lcom/wen/fluorescence/bean/IDChipInfoN;->s_countdowntime:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\u79d2"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v2, v2, Lcom/wen/fluorescence/bean/IDChipInfoN;->isRushTop:I

    if-ne v2, v4, :cond_4

    .line 336
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvIsRushTop:Landroid/widget/TextView;

    const-string v3, "\u662f"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 338
    :cond_4
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvIsRushTop:Landroid/widget/TextView;

    const-string v3, "\u5426"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    :goto_4
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v2, v2, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_ItemCount:I

    if-ne v2, v4, :cond_5

    .line 341
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v2, v2, Lcom/wen/fluorescence/bean/IDChipInfoN;->RushTopName:I

    packed-switch v2, :pswitch_data_2

    .line 353
    goto :goto_5

    .line 349
    :pswitch_7
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvRushTopName:Landroid/widget/TextView;

    const-string v3, "C"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    goto :goto_5

    .line 346
    :pswitch_8
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvRushTopName:Landroid/widget/TextView;

    const-string v3, "T2"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    goto :goto_5

    .line 343
    :pswitch_9
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvRushTopName:Landroid/widget/TextView;

    const-string v3, "T1"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    goto :goto_5

    .line 356
    :cond_5
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v2, v2, Lcom/wen/fluorescence/bean/IDChipInfoN;->RushTopName:I

    packed-switch v2, :pswitch_data_3

    goto :goto_5

    .line 367
    :pswitch_a
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvRushTopName:Landroid/widget/TextView;

    const-string v3, "X4"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    goto :goto_5

    .line 364
    :pswitch_b
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvRushTopName:Landroid/widget/TextView;

    const-string v3, "X3"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    goto :goto_5

    .line 361
    :pswitch_c
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvRushTopName:Landroid/widget/TextView;

    const-string v3, "X2"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    goto :goto_5

    .line 358
    :pswitch_d
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvRushTopName:Landroid/widget/TextView;

    const-string v3, "X1"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    nop

    .line 374
    :goto_5
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvRushTop:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v4, v4, Lcom/wen/fluorescence/bean/IDChipInfoN;->rushTop:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvLastTime:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "20"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v4, v4, Lcom/wen/fluorescence/bean/IDChipInfoN;->lastYear:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v4, v4, Lcom/wen/fluorescence/bean/IDChipInfoN;->lastMonth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v4, v4, Lcom/wen/fluorescence/bean/IDChipInfoN;->lastDay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    .end local v1    # "itemAdapter":Landroid/widget/ArrayAdapter;
    .end local v5    # "itemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_6

    .line 378
    :cond_6
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "ID\u82af\u7247\u89e3\u6790\u51fa\u9519!"

    invoke-static {v1, v2}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 380
    .end local v0    # "idChipInfoExNList":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/bean/IDChipInfoExN;>;"
    :goto_6
    goto/16 :goto_e

    :cond_7
    invoke-static {}, Lcom/wen/fluorescence/util/IDCardUtil;->getInstance()Lcom/wen/fluorescence/util/IDCardUtil;

    move-result-object v0

    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->barCodeList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/wen/fluorescence/util/IDCardUtil;->isIDChipExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 381
    invoke-static {}, Lcom/wen/fluorescence/util/IDCardUtil;->getInstance()Lcom/wen/fluorescence/util/IDCardUtil;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/wen/fluorescence/util/IDCardUtil;->localPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->barCodeList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".bin"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/wen/fluorescence/util/IDCardUtil;->getIDChipVersion(Ljava/lang/String;)I

    move-result v0

    .line 382
    .local v0, "version":I
    const/4 v5, 0x3

    if-ne v0, v5, :cond_8

    .line 383
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "ID\u82af\u7247\u7248\u672c\u592a\u65e7!"

    invoke-static {v1, v2}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 385
    :cond_8
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/wen/fluorescence/util/IDCardUtil;->localPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->barCodeList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".bin"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 386
    .local v5, "file":Ljava/io/File;
    invoke-static {}, Lcom/wen/fluorescence/util/IDCardUtil;->getInstance()Lcom/wen/fluorescence/util/IDCardUtil;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/wen/fluorescence/util/IDCardUtil;->parseIDChipInfoFor14(Ljava/io/File;)Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v6

    iput-object v6, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    .line 387
    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    if-eqz v6, :cond_f

    .line 389
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .local v6, "itemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v7, v3

    .line 390
    .local v7, "i":I
    :goto_7
    iget-object v8, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v8, v8, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_ItemCount:I

    if-ge v7, v8, :cond_9

    .line 391
    iget-object v8, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_projectName:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 393
    .end local v7    # "i":I
    :cond_9
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v3, v7, v2, v1, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    move-object v1, v3

    .line 394
    .restart local v1    # "itemAdapter":Landroid/widget/ArrayAdapter;
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->spItemName:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 395
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->spItemName:Landroid/widget/Spinner;

    new-instance v3, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment$3;

    invoke-direct {v3, p0}, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment$3;-><init>(Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 409
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->spIDCard:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v3, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->cardsCounts:I

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 410
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvBatchNum:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget-object v3, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->new_barCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v2, v2, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_ItemCount:I

    if-ne v2, v4, :cond_a

    .line 412
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvApexInterval:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v7, v7, Lcom/wen/fluorescence/bean/IDChipInfoN;->T1_start:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v7, v7, Lcom/wen/fluorescence/bean/IDChipInfoN;->T1_end:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ";"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v7, v7, Lcom/wen/fluorescence/bean/IDChipInfoN;->T2_start:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v7, v7, Lcom/wen/fluorescence/bean/IDChipInfoN;->T2_end:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ";"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v7, v7, Lcom/wen/fluorescence/bean/IDChipInfoN;->C_start:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v7, v7, Lcom/wen/fluorescence/bean/IDChipInfoN;->C_end:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ";"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 415
    :cond_a
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvApexInterval:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v7, v7, Lcom/wen/fluorescence/bean/IDChipInfoN;->X1_start:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v7, v7, Lcom/wen/fluorescence/bean/IDChipInfoN;->X1_end:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ";"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v7, v7, Lcom/wen/fluorescence/bean/IDChipInfoN;->X2_start:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v7, v7, Lcom/wen/fluorescence/bean/IDChipInfoN;->X2_end:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ";"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v7, v7, Lcom/wen/fluorescence/bean/IDChipInfoN;->X3_start:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v7, v7, Lcom/wen/fluorescence/bean/IDChipInfoN;->X3_end:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ";"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v7, v7, Lcom/wen/fluorescence/bean/IDChipInfoN;->X4_start:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v7, v7, Lcom/wen/fluorescence/bean/IDChipInfoN;->X4_end:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ";"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    :goto_8
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->spQualitativeFlag:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v3, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->qualitativeFlag:I

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 420
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->spToCalcApex:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v3, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->toCalcApex:I

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 422
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v2, v2, Lcom/wen/fluorescence/bean/IDChipInfoN;->isAddSample:I

    if-ne v2, v4, :cond_b

    .line 423
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvIsAddSample:Landroid/widget/TextView;

    const-string v3, "\u662f"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 425
    :cond_b
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvIsAddSample:Landroid/widget/TextView;

    const-string v3, "\u5426"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    :goto_9
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget-object v3, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v2, v2, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_ItemCount:I

    if-ne v2, v4, :cond_c

    .line 432
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v2, v2, Lcom/wen/fluorescence/bean/IDChipInfoN;->AddSampleName:I

    packed-switch v2, :pswitch_data_4

    .line 444
    goto :goto_a

    .line 440
    :pswitch_e
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvAddSampleName:Landroid/widget/TextView;

    const-string v3, "C"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    goto :goto_a

    .line 437
    :pswitch_f
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvAddSampleName:Landroid/widget/TextView;

    const-string v3, "T2"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    goto :goto_a

    .line 434
    :pswitch_10
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvAddSampleName:Landroid/widget/TextView;

    const-string v3, "T1"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    goto :goto_a

    .line 447
    :cond_c
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v2, v2, Lcom/wen/fluorescence/bean/IDChipInfoN;->AddSampleName:I

    packed-switch v2, :pswitch_data_5

    goto :goto_a

    .line 458
    :pswitch_11
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvAddSampleName:Landroid/widget/TextView;

    const-string v3, "X4"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    goto :goto_a

    .line 455
    :pswitch_12
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvAddSampleName:Landroid/widget/TextView;

    const-string v3, "X3"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    goto :goto_a

    .line 452
    :pswitch_13
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvAddSampleName:Landroid/widget/TextView;

    const-string v3, "X2"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    goto :goto_a

    .line 449
    :pswitch_14
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvAddSampleName:Landroid/widget/TextView;

    const-string v3, "X1"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    nop

    .line 464
    :goto_a
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvAddSample:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v7, v7, Lcom/wen/fluorescence/bean/IDChipInfoN;->addSample:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvHatchTime:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v7, v7, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_countdowntime:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "\u5206"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v7, v7, Lcom/wen/fluorescence/bean/IDChipInfoN;->s_countdowntime:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "\u79d2"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v2, v2, Lcom/wen/fluorescence/bean/IDChipInfoN;->isRushTop:I

    if-ne v2, v4, :cond_d

    .line 468
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvIsRushTop:Landroid/widget/TextView;

    const-string v3, "\u662f"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 470
    :cond_d
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvIsRushTop:Landroid/widget/TextView;

    const-string v3, "\u5426"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    :goto_b
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v2, v2, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_ItemCount:I

    if-ne v2, v4, :cond_e

    .line 473
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v2, v2, Lcom/wen/fluorescence/bean/IDChipInfoN;->RushTopName:I

    packed-switch v2, :pswitch_data_6

    .line 485
    goto :goto_c

    .line 481
    :pswitch_15
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvRushTopName:Landroid/widget/TextView;

    const-string v3, "C"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    goto :goto_c

    .line 478
    :pswitch_16
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvRushTopName:Landroid/widget/TextView;

    const-string v3, "T2"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    goto :goto_c

    .line 475
    :pswitch_17
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvRushTopName:Landroid/widget/TextView;

    const-string v3, "T1"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    goto :goto_c

    .line 488
    :cond_e
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v2, v2, Lcom/wen/fluorescence/bean/IDChipInfoN;->RushTopName:I

    packed-switch v2, :pswitch_data_7

    goto :goto_c

    .line 499
    :pswitch_18
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvRushTopName:Landroid/widget/TextView;

    const-string v3, "X4"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    goto :goto_c

    .line 496
    :pswitch_19
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvRushTopName:Landroid/widget/TextView;

    const-string v3, "X3"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    goto :goto_c

    .line 493
    :pswitch_1a
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvRushTopName:Landroid/widget/TextView;

    const-string v3, "X2"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    goto :goto_c

    .line 490
    :pswitch_1b
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvRushTopName:Landroid/widget/TextView;

    const-string v3, "X1"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    nop

    .line 506
    :goto_c
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvRushTop:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v4, v4, Lcom/wen/fluorescence/bean/IDChipInfoN;->rushTop:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->tvLastTime:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "20"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v4, v4, Lcom/wen/fluorescence/bean/IDChipInfoN;->lastYear:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v4, v4, Lcom/wen/fluorescence/bean/IDChipInfoN;->lastMonth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v4, v4, Lcom/wen/fluorescence/bean/IDChipInfoN;->lastDay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    .end local v1    # "itemAdapter":Landroid/widget/ArrayAdapter;
    .end local v6    # "itemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_d

    .line 510
    :cond_f
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "ID\u82af\u7247\u89e3\u6790\u51fa\u9519!"

    invoke-static {v1, v2}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 513
    .end local v0    # "version":I
    .end local v5    # "file":Ljava/io/File;
    :goto_d
    goto :goto_e

    .line 514
    :cond_10
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "ID\u82af\u7247\u4e0d\u5b58\u5728!"

    invoke-static {v0, v1}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 516
    :goto_e
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
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

    .line 87
    const v0, 0x7f0a002b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 88
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->initView(Landroid/view/View;)V

    .line 89
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->setViewIncident()V

    .line 90
    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .param p1, "hidden"    # Z

    .line 95
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 96
    if-nez p1, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->init()V

    .line 99
    :cond_0
    return-void
.end method
