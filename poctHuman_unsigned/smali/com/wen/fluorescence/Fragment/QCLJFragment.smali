.class public Lcom/wen/fluorescence/Fragment/QCLJFragment;
.super Landroid/support/v4/app/Fragment;
.source "QCLJFragment.java"


# instance fields
.field private btnDelete:Landroid/widget/Button;

.field private btnFigure:Landroid/widget/Button;

.field private btnFrom:Landroid/widget/Button;

.field private btnGoNext:Landroid/widget/Button;

.field private btnGoPrev:Landroid/widget/Button;

.field private btnTo:Landroid/widget/Button;

.field private cbLevel1:Landroid/widget/CheckBox;

.field private cbLevel2:Landroid/widget/CheckBox;

.field private chartBuilder:Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;

.field checkedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field clickListener:Landroid/view/View$OnClickListener;

.field private newResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wen/fluorescence/database/TestResult;",
            ">;"
        }
    .end annotation
.end field

.field private oldResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wen/fluorescence/database/TestResult;",
            ">;"
        }
    .end annotation
.end field

.field private repetitionResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wen/fluorescence/database/TestResult;",
            ">;"
        }
    .end annotation
.end field

.field private rlFigure:Landroid/widget/RelativeLayout;

.field private spBatNo:Landroid/widget/Spinner;

.field private spItem:Landroid/widget/Spinner;

.field private tvSelectContent:Landroid/widget/TextView;

.field private tvTimeFrom:Landroid/widget/TextView;

.field private tvTimeTo:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->oldResults:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->newResults:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->repetitionResults:Ljava/util/List;

    .line 397
    new-instance v0, Lcom/wen/fluorescence/Fragment/QCLJFragment$3;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/Fragment/QCLJFragment$3;-><init>(Lcom/wen/fluorescence/Fragment/QCLJFragment;)V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->checkedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 422
    new-instance v0, Lcom/wen/fluorescence/Fragment/QCLJFragment$4;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/Fragment/QCLJFragment$4;-><init>(Lcom/wen/fluorescence/Fragment/QCLJFragment;)V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->clickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/wen/fluorescence/Fragment/QCLJFragment;)Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/QCLJFragment;

    .line 44
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->chartBuilder:Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wen/fluorescence/Fragment/QCLJFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/QCLJFragment;

    .line 44
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->newResults:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/wen/fluorescence/Fragment/QCLJFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/QCLJFragment;

    .line 44
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->tvSelectContent:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/wen/fluorescence/Fragment/QCLJFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/QCLJFragment;

    .line 44
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->repetitionResults:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/wen/fluorescence/Fragment/QCLJFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/QCLJFragment;

    .line 44
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->btnFigure:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/wen/fluorescence/Fragment/QCLJFragment;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/QCLJFragment;

    .line 44
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->cbLevel1:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$600(Lcom/wen/fluorescence/Fragment/QCLJFragment;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/QCLJFragment;

    .line 44
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->cbLevel2:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$700(Lcom/wen/fluorescence/Fragment/QCLJFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/QCLJFragment;

    .line 44
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->startChart()V

    return-void
.end method

.method static synthetic access$800(Lcom/wen/fluorescence/Fragment/QCLJFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/QCLJFragment;

    .line 44
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->deletePoints()V

    return-void
.end method

.method private deletePoints()V
    .locals 5

    .line 326
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->chartBuilder:Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;

    invoke-virtual {v0}, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->getSelectPoint()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 327
    .local v0, "sX":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-int v1, v1

    .line 328
    .local v1, "iX":I
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->newResults:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_0

    goto :goto_1

    .line 332
    :cond_0
    const-string v2, ""

    .line 333
    .local v2, "tips":Ljava/lang/String;
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->repetitionResults:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 334
    const v3, 0x7f0c0189

    invoke-virtual {p0, v3}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 336
    :cond_1
    const v3, 0x7f0c0188

    invoke-virtual {p0, v3}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 338
    :goto_0
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/wen/fluorescence/Fragment/QCLJFragment$2;

    invoke-direct {v4, p0, v1}, Lcom/wen/fluorescence/Fragment/QCLJFragment$2;-><init>(Lcom/wen/fluorescence/Fragment/QCLJFragment;I)V

    invoke-static {v3, v2, v4}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 358
    return-void

    .line 329
    .end local v2    # "tips":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0c0166

    invoke-virtual {p0, v3}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 330
    return-void
.end method

.method private initChart()V
    .locals 11

    .line 134
    const/16 v0, 0xa

    new-array v0, v0, [D

    .line 135
    .local v0, "array":[D
    const/4 v1, 0x0

    .line 135
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 136
    const/16 v2, 0x14

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    int-to-double v2, v2

    aput-wide v2, v0, v1

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;-><init>(Landroid/content/Context;[D)V

    iput-object v1, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->chartBuilder:Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;

    .line 140
    invoke-static {v0}, Lcom/wen/fluorescence/util/MathUtils;->getAverage([D)D

    move-result-wide v1

    .line 141
    .local v1, "av":D
    invoke-static {v0}, Lcom/wen/fluorescence/util/MathUtils;->getStandardDevition([D)D

    move-result-wide v9

    .line 143
    .local v9, "sd":D
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->chartBuilder:Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;

    const/4 v8, 0x0

    move-wide v4, v9

    move-wide v6, v1

    invoke-virtual/range {v3 .. v8}, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->initReferenceData(DDZ)V

    .line 145
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->chartBuilder:Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->chartBuilder:Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;

    .line 146
    invoke-virtual {v4}, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->getDataSetInstance()Lorg/achartengine/model/XYMultipleSeriesDataset;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->initData(Lorg/achartengine/model/XYMultipleSeriesDataset;)V

    .line 148
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->chartBuilder:Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->chartBuilder:Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;

    .line 149
    invoke-virtual {v4}, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->getRenderInstance()Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-result-object v4

    .line 148
    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->initRender(Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    .line 150
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->chartBuilder:Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;

    invoke-virtual {v3}, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->getView()Landroid/view/View;

    move-result-object v3

    .line 151
    .local v3, "chartView":Landroid/view/View;
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->rlFigure:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 152
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->rlFigure:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 153
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 95
    const v0, 0x7f08019d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->rlFigure:Landroid/widget/RelativeLayout;

    .line 96
    const v0, 0x7f080057

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->btnGoPrev:Landroid/widget/Button;

    .line 97
    const v0, 0x7f080056

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->btnGoNext:Landroid/widget/Button;

    .line 98
    const v0, 0x7f0801bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->spItem:Landroid/widget/Spinner;

    .line 99
    const v0, 0x7f0801bc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->spBatNo:Landroid/widget/Spinner;

    .line 100
    const v0, 0x7f080242

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->tvSelectContent:Landroid/widget/TextView;

    .line 101
    const v0, 0x7f080052

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->btnFrom:Landroid/widget/Button;

    .line 102
    const v0, 0x7f08008f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->btnTo:Landroid/widget/Button;

    .line 103
    const v0, 0x7f080255

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->tvTimeFrom:Landroid/widget/TextView;

    .line 104
    const v0, 0x7f080258

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->tvTimeTo:Landroid/widget/TextView;

    .line 105
    const v0, 0x7f080097

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->cbLevel1:Landroid/widget/CheckBox;

    .line 106
    const v0, 0x7f080098

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->cbLevel2:Landroid/widget/CheckBox;

    .line 107
    const v0, 0x7f080050

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->btnFigure:Landroid/widget/Button;

    .line 108
    const v0, 0x7f080046

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->btnDelete:Landroid/widget/Button;

    .line 109
    return-void
.end method

.method private setUpLJInfor()V
    .locals 8

    .line 81
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/database/DBManager;->queryQCItemResult()Ljava/util/List;

    move-result-object v0

    .line 82
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0801a3

    const v4, 0x7f0a0057

    invoke-direct {v1, v2, v4, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 84
    .local v1, "_Adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->spItem:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 85
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 86
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 87
    .local v2, "item":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/wen/fluorescence/database/DBManager;->queryQCItemBatNo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 88
    .local v5, "logNos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v6, v7, v4, v3, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    move-object v3, v6

    .line 90
    .local v3, "logNoAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->spBatNo:Landroid/widget/Spinner;

    invoke-virtual {v4, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 92
    .end local v2    # "item":Ljava/lang/String;
    .end local v3    # "logNoAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v5    # "logNos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private setViewIncident()V
    .locals 4

    .line 112
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->initChart()V

    .line 113
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->setUpLJInfor()V

    .line 115
    const-string v0, "yyyy-MM-dd"

    invoke-static {v0}, Lcom/wen/fluorescence/util/DateUtils;->getSysemDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "nowDate":Ljava/lang/String;
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->tvTimeFrom:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->tvTimeTo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->btnGoPrev:Landroid/widget/Button;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->btnGoNext:Landroid/widget/Button;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->btnFigure:Landroid/widget/Button;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->btnDelete:Landroid/widget/Button;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->btnFrom:Landroid/widget/Button;

    new-instance v2, Lcom/wen/fluorescence/ViewUtil/DatePickerListener;

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/wen/fluorescence/ViewUtil/DatePickerListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->btnTo:Landroid/widget/Button;

    new-instance v2, Lcom/wen/fluorescence/ViewUtil/DatePickerListener;

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/wen/fluorescence/ViewUtil/DatePickerListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->cbLevel1:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->checkedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 126
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->cbLevel2:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->checkedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 127
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->cbLevel1:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 128
    return-void
.end method

.method private startChart()V
    .locals 19

    .line 160
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->spItem:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-ltz v1, :cond_17

    iget-object v1, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->spBatNo:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-gez v1, :cond_0

    goto/16 :goto_a

    .line 164
    :cond_0
    iget-object v1, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->tvTimeFrom:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->tvTimeTo:Landroid/widget/TextView;

    .line 165
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0c00a4

    invoke-virtual {v0, v2}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 167
    return-void

    .line 169
    :cond_1
    iget-object v1, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->tvTimeFrom:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "from":Ljava/lang/String;
    iget-object v2, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->tvTimeTo:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, "to":Ljava/lang/String;
    const-string v3, "yyyy-MM-dd"

    .line 172
    invoke-static {v2, v3}, Lcom/wen/fluorescence/util/DateUtils;->string2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    const-string v4, "yyyy-MM-dd"

    .line 173
    invoke-static {v1, v4}, Lcom/wen/fluorescence/util/DateUtils;->string2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 171
    invoke-static {v3, v4}, Lcom/wen/fluorescence/util/DateUtils;->differBetweenDates(Ljava/util/Date;Ljava/util/Date;)I

    move-result v3

    if-gez v3, :cond_2

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0c01d4

    .line 175
    invoke-virtual {v0, v4}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 174
    invoke-static {v3, v4}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 176
    return-void

    .line 179
    :cond_2
    iget-object v3, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->oldResults:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 180
    iget-object v3, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->newResults:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 181
    iget-object v3, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->repetitionResults:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 183
    new-instance v3, Lcom/wen/fluorescence/database/TestResultCondition;

    invoke-direct {v3}, Lcom/wen/fluorescence/database/TestResultCondition;-><init>()V

    .line 184
    .local v3, "condition":Lcom/wen/fluorescence/database/TestResultCondition;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " 00:00:00"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/TestResultCondition;->setStartTime(Ljava/lang/String;)V

    .line 185
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " 23:59:59"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/TestResultCondition;->setEndTime(Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v4

    const-string v5, "QC"

    iget-object v6, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->cbLevel1:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    invoke-virtual {v4, v3, v5, v6}, Lcom/wen/fluorescence/database/DBManager;->queryQCTestResultByCondition(Lcom/wen/fluorescence/database/TestResultCondition;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->oldResults:Ljava/util/List;

    .line 188
    iget-object v4, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->oldResults:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_3

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0c00db

    .line 190
    invoke-virtual {v0, v5}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 189
    invoke-static {v4, v5}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 191
    return-void

    .line 193
    :cond_3
    const-string v4, "QC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "oldResults:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->oldResults:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v4, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->newResults:Ljava/util/List;

    iget-object v6, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->oldResults:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    move v4, v7

    .line 196
    .local v4, "i":I
    :goto_0
    iget-object v6, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->oldResults:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_7

    .line 197
    iget-object v6, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->oldResults:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getTestTime()Ljava/lang/String;

    move-result-object v6

    const-string v9, "yyyy-MM-dd"

    invoke-static {v6, v9}, Lcom/wen/fluorescence/util/DateUtils;->string2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    .line 198
    .local v6, "oldDate":Ljava/util/Date;
    const/4 v9, 0x0

    .line 199
    .local v9, "isSameDay":Z
    move v10, v8

    .line 199
    .local v10, "j":I
    :goto_1
    iget-object v11, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->newResults:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_5

    .line 200
    iget-object v11, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->newResults:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v11}, Lcom/wen/fluorescence/database/TestResult;->getTestTime()Ljava/lang/String;

    move-result-object v11

    const-string v12, "yyyy-MM-dd"

    invoke-static {v11, v12}, Lcom/wen/fluorescence/util/DateUtils;->string2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    .line 201
    .local v11, "newDate":Ljava/util/Date;
    invoke-static {v6, v11}, Lcom/wen/fluorescence/util/DateUtils;->isSameDay(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 202
    const/4 v9, 0x1

    .line 203
    iget-object v12, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->repetitionResults:Ljava/util/List;

    iget-object v13, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->oldResults:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    goto :goto_2

    .line 199
    .end local v11    # "newDate":Ljava/util/Date;
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 207
    .end local v10    # "j":I
    :cond_5
    :goto_2
    if-nez v9, :cond_6

    .line 208
    iget-object v10, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->newResults:Ljava/util/List;

    iget-object v11, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->oldResults:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    .end local v6    # "oldDate":Ljava/util/Date;
    .end local v9    # "isSameDay":Z
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 211
    .end local v4    # "i":I
    :cond_7
    const-string v4, "QC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "newResults:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->newResults:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "  repetitionResults:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->repetitionResults:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v4, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->newResults:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v5, :cond_8

    .line 214
    iget-object v4, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->newResults:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 215
    iget-object v4, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->newResults:Ljava/util/List;

    iget-object v6, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->oldResults:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 216
    iget-object v4, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->repetitionResults:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 217
    const-string v4, "QC"

    const-string v6, "\u6240\u9009\u65e5\u671f\u53ea\u6709\u4e00\u5929\u4e14\u6709\u591a\u4e2a\u6570\u636e,\u5219\u663e\u793a\u8fd9\u5929\u7684\u6240\u6709\u6570\u636e."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_8
    iget-object v4, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->repetitionResults:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_c

    .line 221
    iget-object v4, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->newResults:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v4}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v4

    const-string v6, ">"

    const-string v9, ""

    invoke-virtual {v4, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "<"

    const-string v9, ""

    .line 222
    invoke-virtual {v4, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v6, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->newResults:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v6

    const-string v9, ">"

    const-string v10, ""

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "<"

    const-string v10, ""

    .line 223
    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v9, "."

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    sub-int/2addr v4, v6

    sub-int/2addr v4, v7

    .line 224
    .local v4, "decimals":I
    move v6, v8

    .line 224
    .local v6, "i":I
    :goto_3
    iget-object v9, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->newResults:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_c

    .line 225
    iget-object v9, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->newResults:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v9}, Lcom/wen/fluorescence/database/TestResult;->getTestTime()Ljava/lang/String;

    move-result-object v9

    const-string v10, "yyyy-MM-dd"

    invoke-static {v9, v10}, Lcom/wen/fluorescence/util/DateUtils;->string2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    .line 226
    .local v9, "newDate":Ljava/util/Date;
    iget-object v10, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->newResults:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v10}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v10

    const-string v11, ">"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "<"

    const-string v12, ""

    .line 227
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 226
    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 228
    .local v10, "sum":D
    const/4 v12, 0x1

    .line 229
    .local v12, "iCount":I
    move-wide v13, v10

    move v10, v8

    .line 229
    .local v10, "j":I
    .local v13, "sum":D
    :goto_4
    iget-object v11, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->repetitionResults:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_a

    .line 230
    iget-object v11, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->repetitionResults:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v11}, Lcom/wen/fluorescence/database/TestResult;->getTestTime()Ljava/lang/String;

    move-result-object v11

    const-string v15, "yyyy-MM-dd"

    invoke-static {v11, v15}, Lcom/wen/fluorescence/util/DateUtils;->string2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    .line 231
    .local v11, "repetitionDate":Ljava/util/Date;
    invoke-static {v9, v11}, Lcom/wen/fluorescence/util/DateUtils;->isSameDay(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 232
    iget-object v15, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->repetitionResults:Ljava/util/List;

    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v15}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v15

    const-string v8, ">"

    const-string v5, ""

    invoke-virtual {v15, v8, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "<"

    const-string v15, ""

    .line 233
    invoke-virtual {v5, v8, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 232
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v17

    .line 234
    .local v17, "repetitionResult":D
    add-double v13, v13, v17

    .line 235
    add-int/lit8 v12, v12, 0x1

    .line 229
    .end local v11    # "repetitionDate":Ljava/util/Date;
    .end local v17    # "repetitionResult":D
    :cond_9
    add-int/lit8 v10, v10, 0x1

    const/4 v5, 0x2

    const/4 v8, 0x0

    goto :goto_4

    .line 238
    .end local v10    # "j":I
    :cond_a
    if-le v12, v7, :cond_b

    .line 239
    iget-object v5, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->newResults:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wen/fluorescence/database/TestResult;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v10, v12

    div-double v10, v13, v10

    invoke-static {v10, v11, v4}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/wen/fluorescence/database/TestResult;->setResult(Ljava/lang/String;)V

    .line 240
    const-string v5, "QC"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sum:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v10, "  iCount:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "  Result:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->newResults:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v10}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .end local v9    # "newDate":Ljava/util/Date;
    .end local v12    # "iCount":I
    .end local v13    # "sum":D
    :cond_b
    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x2

    const/4 v8, 0x0

    goto/16 :goto_3

    .line 245
    .end local v4    # "decimals":I
    .end local v6    # "i":I
    :cond_c
    iget-object v4, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->newResults:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [D

    .line 246
    .local v4, "arrayData":[D
    const/4 v5, 0x0

    .line 246
    .local v5, "i":I
    :goto_5
    iget-object v6, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->newResults:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_d

    .line 247
    iget-object v6, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->newResults:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v6

    const-string v8, ">"

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "<"

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 248
    .local v6, "result":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    aput-wide v8, v4, v5

    .line 246
    .end local v6    # "result":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 250
    .end local v5    # "i":I
    :cond_d
    iget-object v5, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->tvSelectContent:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    new-instance v5, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;-><init>(Landroid/content/Context;[D)V

    iput-object v5, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->chartBuilder:Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;

    .line 253
    invoke-static {v4}, Lcom/wen/fluorescence/util/MathUtils;->getAverage([D)D

    move-result-wide v5

    .line 254
    .local v5, "av":D
    invoke-static {v4}, Lcom/wen/fluorescence/util/MathUtils;->getStandardDevition([D)D

    move-result-wide v14

    .line 256
    .local v14, "sd":D
    iget-object v8, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->chartBuilder:Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;

    const/4 v13, 0x1

    move-wide v9, v14

    move-wide v11, v5

    invoke-virtual/range {v8 .. v13}, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->initReferenceData(DDZ)V

    .line 259
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 260
    .local v8, "mapLabel":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v9, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->newResults:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    .line 261
    .local v9, "resultSize":I
    rem-int/lit8 v10, v9, 0x2

    if-nez v10, :cond_e

    goto :goto_6

    :cond_e
    const/4 v7, 0x0

    .line 262
    .local v7, "isO":Z
    :goto_6
    const/16 v16, 0x0

    .line 262
    .local v16, "i":I
    :goto_7
    move/from16 v10, v16

    .line 262
    .end local v16    # "i":I
    .local v10, "i":I
    if-ge v10, v9, :cond_16

    .line 263
    iget-object v11, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->newResults:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v11}, Lcom/wen/fluorescence/database/TestResult;->getTestTime()Ljava/lang/String;

    move-result-object v11

    const-string v12, "yyyy-MM-dd"

    invoke-static {v11, v12}, Lcom/wen/fluorescence/util/DateUtils;->string2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    const-string v12, "MM-dd"

    invoke-static {v11, v12}, Lcom/wen/fluorescence/util/DateUtils;->date2String(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 264
    .local v11, "dateTime":Ljava/lang/String;
    const/16 v12, 0xf

    if-gt v9, v12, :cond_10

    .line 265
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v8, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .end local v11    # "dateTime":Ljava/lang/String;
    :cond_f
    :goto_8
    const/4 v13, 0x2

    goto :goto_9

    .line 266
    .restart local v11    # "dateTime":Ljava/lang/String;
    :cond_10
    const/16 v12, 0x1e

    if-gt v9, v12, :cond_11

    .line 267
    rem-int/lit8 v12, v10, 0x2

    if-nez v12, :cond_f

    .line 268
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v8, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 273
    :cond_11
    if-nez v10, :cond_12

    .line 274
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v8, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 275
    :cond_12
    add-int/lit8 v12, v9, -0x1

    if-ne v12, v10, :cond_13

    .line 276
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v8, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 278
    :cond_13
    if-eqz v7, :cond_14

    .line 279
    div-int/lit8 v12, v9, 0x2

    if-ne v12, v10, :cond_f

    .line 280
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v8, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 283
    :cond_14
    add-int/lit8 v12, v9, 0x1

    const/4 v13, 0x2

    div-int/2addr v12, v13

    if-ne v12, v10, :cond_15

    .line 284
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v8, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .end local v11    # "dateTime":Ljava/lang/String;
    :cond_15
    :goto_9
    add-int/lit8 v16, v10, 0x1

    .line 262
    .end local v10    # "i":I
    .restart local v16    # "i":I
    goto :goto_7

    .line 292
    .end local v16    # "i":I
    :cond_16
    iget-object v10, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->chartBuilder:Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;

    invoke-virtual {v10, v8}, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->setXLabelMap(Ljava/util/Map;)V

    .line 294
    iget-object v10, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->chartBuilder:Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;

    iget-object v11, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->chartBuilder:Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;

    .line 295
    invoke-virtual {v11}, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->getDataSetInstance()Lorg/achartengine/model/XYMultipleSeriesDataset;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->initData(Lorg/achartengine/model/XYMultipleSeriesDataset;)V

    .line 297
    iget-object v10, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->chartBuilder:Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;

    iget-object v11, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->chartBuilder:Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;

    .line 298
    invoke-virtual {v11}, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->getRenderInstance()Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-result-object v11

    .line 297
    invoke-virtual {v10, v11}, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->initRender(Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    .line 299
    iget-object v10, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->chartBuilder:Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;

    invoke-virtual {v10}, Lcom/wen/fluorescence/ViewUtil/QCChartBuilder;->getView()Landroid/view/View;

    move-result-object v10

    .line 300
    .local v10, "chartView":Landroid/view/View;
    new-instance v11, Lcom/wen/fluorescence/Fragment/QCLJFragment$1;

    invoke-direct {v11, v0}, Lcom/wen/fluorescence/Fragment/QCLJFragment$1;-><init>(Lcom/wen/fluorescence/Fragment/QCLJFragment;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    iget-object v11, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->rlFigure:Landroid/widget/RelativeLayout;

    invoke-virtual {v11}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 318
    iget-object v11, v0, Lcom/wen/fluorescence/Fragment/QCLJFragment;->rlFigure:Landroid/widget/RelativeLayout;

    invoke-virtual {v11, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 319
    return-void

    .line 161
    .end local v1    # "from":Ljava/lang/String;
    .end local v2    # "to":Ljava/lang/String;
    .end local v3    # "condition":Lcom/wen/fluorescence/database/TestResultCondition;
    .end local v4    # "arrayData":[D
    .end local v5    # "av":D
    .end local v7    # "isO":Z
    .end local v8    # "mapLabel":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v9    # "resultSize":I
    .end local v10    # "chartView":Landroid/view/View;
    .end local v14    # "sd":D
    :cond_17
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0c0166

    invoke-virtual {v0, v2}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 162
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

    .line 63
    const v0, 0x7f0a004a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 64
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->initView(Landroid/view/View;)V

    .line 65
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->setViewIncident()V

    .line 66
    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .param p1, "hidden"    # Z

    .line 71
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 72
    if-nez p1, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->setUpLJInfor()V

    .line 75
    :cond_0
    return-void
.end method
