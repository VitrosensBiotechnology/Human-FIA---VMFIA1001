.class public Lcom/wen/fluorescence/Fragment/HomeFragment;
.super Landroid/support/v4/app/Fragment;
.source "HomeFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HomeFragment"


# instance fields
.field public final MSG_SCAN_APPID:I

.field private ScanFaileCount:I

.field private api:Lcom/huashi/otg/sdk/HsOtgApi;

.field btnCancel:Landroid/widget/Button;

.field private btnCardIn:Landroid/widget/Button;

.field private btnCardOut:Landroid/widget/Button;

.field private btnInfo:Landroid/widget/Button;

.field private btnPrint:Landroid/widget/Button;

.field private btnReadID:Landroid/widget/Button;

.field private btnReadIDChip:Landroid/widget/Button;

.field private btnSample1:Landroid/widget/Button;

.field private btnSample2:Landroid/widget/Button;

.field private btnSample3:Landroid/widget/Button;

.field private btnSample4:Landroid/widget/Button;

.field private btnSample5:Landroid/widget/Button;

.field private btnStartTest:Landroid/widget/Button;

.field private callBack:Lcom/wen/fluorescence/util/FragmentCallback;

.field private cbAutoPrint:Landroid/widget/CheckBox;

.field private detialResult:Lcom/wen/fluorescence/database/TestResult;

.field private djLayout:Landroid/widget/LinearLayout;

.field private etIdentityCard:Landroid/widget/EditText;

.field private etName:Landroid/widget/EditText;

.field private etPatientNo:Landroid/widget/EditText;

.field private etSampleNumber:Landroid/widget/EditText;

.field etScan:Landroid/widget/EditText;

.field private etSerialNumber:Landroid/widget/EditText;

.field private fsLayout:Landroid/widget/LinearLayout;

.field ivClose:Landroid/widget/ImageView;

.field listener:Lcom/wen/fluorescence/util/MyOnClickListener;

.field private llReferenceRange:Landroid/widget/LinearLayout;

.field private llResult:Landroid/widget/LinearLayout;

.field private llResultLayout:Landroid/widget/LinearLayout;

.field private llVerdict:Landroid/widget/LinearLayout;

.field private llVerdictLayout:Landroid/widget/LinearLayout;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private m_Con:Z

.field private rbQuickTest:Landroid/widget/RadioButton;

.field private rbStandardtest:Landroid/widget/RadioButton;

.field private scanCodeAppId:Ljava/lang/String;

.field private scanDialog:Landroid/app/AlertDialog;

.field private spSimpleType:Landroid/widget/Spinner;

.field private testResult:Lcom/wen/fluorescence/database/TestResult;

.field private testResultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wen/fluorescence/database/TestResult;",
            ">;"
        }
    .end annotation
.end field

.field private tvBatchNO:Landroid/widget/TextView;

.field private tvCount:Landroid/widget/TextView;

.field private tvCountTime:Landroid/widget/TextView;

.field private tvItem:Landroid/widget/TextView;

.field private tvItem2:Landroid/widget/TextView;

.field private tvItem3:Landroid/widget/TextView;

.field tvPreTip:Landroid/widget/TextView;

.field private tvReferenceRange:Landroid/widget/TextView;

.field private tvReferenceRange2:Landroid/widget/TextView;

.field private tvReferenceRange3:Landroid/widget/TextView;

.field private tvResult:Landroid/widget/TextView;

.field private tvResult2:Landroid/widget/TextView;

.field private tvResult3:Landroid/widget/TextView;

.field private tvStatus:Landroid/widget/TextView;

.field private tvVerdict:Landroid/widget/TextView;

.field private tvVerdict2:Landroid/widget/TextView;

.field private tvVerdict3:Landroid/widget/TextView;

.field private tvVerdictTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 86
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 88
    const/16 v0, 0x222

    iput v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->MSG_SCAN_APPID:I

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->testResultList:Ljava/util/List;

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->ScanFaileCount:I

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->api:Lcom/huashi/otg/sdk/HsOtgApi;

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->scanCodeAppId:Ljava/lang/String;

    .line 117
    new-instance v0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/Fragment/HomeFragment$1;-><init>(Lcom/wen/fluorescence/Fragment/HomeFragment;)V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->mHandler:Landroid/os/Handler;

    .line 590
    new-instance v0, Lcom/wen/fluorescence/Fragment/HomeFragment$6;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/Fragment/HomeFragment$6;-><init>(Lcom/wen/fluorescence/Fragment/HomeFragment;)V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/wen/fluorescence/Fragment/HomeFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;
    .param p1, "x1"    # Z

    .line 86
    iput-boolean p1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->m_Con:Z

    return p1
.end method

.method static synthetic access$100(Lcom/wen/fluorescence/Fragment/HomeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;

    .line 86
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->startTest()V

    return-void
.end method

.method static synthetic access$1000(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;

    .line 86
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->spSimpleType:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/wen/fluorescence/Fragment/HomeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;

    .line 86
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->testComplete()V

    return-void
.end method

.method static synthetic access$1200(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;

    .line 86
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvCountTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;

    .line 86
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/wen/fluorescence/Fragment/HomeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;

    .line 86
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->testError()V

    return-void
.end method

.method static synthetic access$1500(Lcom/wen/fluorescence/Fragment/HomeFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;

    .line 86
    iget v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->ScanFaileCount:I

    return v0
.end method

.method static synthetic access$1508(Lcom/wen/fluorescence/Fragment/HomeFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;

    .line 86
    iget v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->ScanFaileCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->ScanFaileCount:I

    return v0
.end method

.method static synthetic access$1600(Lcom/wen/fluorescence/Fragment/HomeFragment;)Lcom/wen/fluorescence/database/TestResult;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;

    .line 86
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->testResult:Lcom/wen/fluorescence/database/TestResult;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/wen/fluorescence/Fragment/HomeFragment;Lcom/wen/fluorescence/util/MyPassDialogInterface;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;
    .param p1, "x1"    # Lcom/wen/fluorescence/util/MyPassDialogInterface;

    .line 86
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/Fragment/HomeFragment;->showEnterBarcodeDialog(Lcom/wen/fluorescence/util/MyPassDialogInterface;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/wen/fluorescence/Fragment/HomeFragment;)Lcom/wen/fluorescence/util/FragmentCallback;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;

    .line 86
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->callBack:Lcom/wen/fluorescence/util/FragmentCallback;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/wen/fluorescence/Fragment/HomeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;

    .line 86
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->initHandler()V

    return-void
.end method

.method static synthetic access$200(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;

    .line 86
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->etName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/wen/fluorescence/Fragment/HomeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;

    .line 86
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->showScanDialog()V

    return-void
.end method

.method static synthetic access$2100(Lcom/wen/fluorescence/Fragment/HomeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;

    .line 86
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->startReadIDChip()V

    return-void
.end method

.method static synthetic access$2200(Lcom/wen/fluorescence/Fragment/HomeFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;

    .line 86
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->testResultList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/wen/fluorescence/Fragment/HomeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;

    .line 86
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->addDetialInfomation()V

    return-void
.end method

.method static synthetic access$2400(Lcom/wen/fluorescence/Fragment/HomeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;

    .line 86
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->addCowDetialInfomation()V

    return-void
.end method

.method static synthetic access$2500(Lcom/wen/fluorescence/Fragment/HomeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;

    .line 86
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->readIDCard()V

    return-void
.end method

.method static synthetic access$2600(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;

    .line 86
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvCount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;

    .line 86
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->btnSample1:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;

    .line 86
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->btnSample2:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;

    .line 86
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->btnSample3:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;

    .line 86
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->etIdentityCard:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;

    .line 86
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->btnSample4:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;

    .line 86
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->btnSample5:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/wen/fluorescence/Fragment/HomeFragment;Lcom/wen/fluorescence/database/TestResult;)Lcom/wen/fluorescence/database/TestResult;
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;
    .param p1, "x1"    # Lcom/wen/fluorescence/database/TestResult;

    .line 86
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->detialResult:Lcom/wen/fluorescence/database/TestResult;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;

    .line 86
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->etSampleNumber:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;

    .line 86
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->etPatientNo:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/wen/fluorescence/Fragment/HomeFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 86
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->scanCodeAppId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/wen/fluorescence/Fragment/HomeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;

    .line 86
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->testCancelEasy11()V

    return-void
.end method

.method static synthetic access$3700(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;

    .line 86
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->scanDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/wen/fluorescence/Fragment/HomeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;

    .line 86
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->testCancel()V

    return-void
.end method

.method static synthetic access$500(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;

    .line 86
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvResult:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;

    .line 86
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvVerdict:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;

    .line 86
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/wen/fluorescence/Fragment/HomeFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/wen/fluorescence/Fragment/HomeFragment;->setTestStatus(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/wen/fluorescence/Fragment/HomeFragment;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;
    .param p1, "x1"    # [Ljava/lang/String;

    .line 86
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/Fragment/HomeFragment;->showSampleSelectDialog([Ljava/lang/String;)V

    return-void
.end method

.method private addCowDetialInfomation()V
    .locals 4

    .line 790
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->detialResult:Lcom/wen/fluorescence/database/TestResult;

    if-nez v0, :cond_0

    .line 791
    new-instance v0, Lcom/wen/fluorescence/database/TestResult;

    invoke-direct {v0}, Lcom/wen/fluorescence/database/TestResult;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->detialResult:Lcom/wen/fluorescence/database/TestResult;

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->detialResult:Lcom/wen/fluorescence/database/TestResult;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->etSampleNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setSampleNumber(Ljava/lang/String;)V

    .line 794
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->detialResult:Lcom/wen/fluorescence/database/TestResult;

    new-instance v2, Lcom/wen/fluorescence/Fragment/HomeFragment$14;

    invoke-direct {v2, p0}, Lcom/wen/fluorescence/Fragment/HomeFragment$14;-><init>(Lcom/wen/fluorescence/Fragment/HomeFragment;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->setDialogShow(Lcom/wen/fluorescence/database/TestResult;Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$DetialCallback;Z)V

    .line 801
    return-void
.end method

.method private addDetialInfomation()V
    .locals 4

    .line 771
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->detialResult:Lcom/wen/fluorescence/database/TestResult;

    if-nez v0, :cond_0

    .line 772
    new-instance v0, Lcom/wen/fluorescence/database/TestResult;

    invoke-direct {v0}, Lcom/wen/fluorescence/database/TestResult;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->detialResult:Lcom/wen/fluorescence/database/TestResult;

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->detialResult:Lcom/wen/fluorescence/database/TestResult;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->etSampleNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setSampleNumber(Ljava/lang/String;)V

    .line 775
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->detialResult:Lcom/wen/fluorescence/database/TestResult;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->etPatientNo:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setPatientNumber(Ljava/lang/String;)V

    .line 776
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->detialResult:Lcom/wen/fluorescence/database/TestResult;

    new-instance v2, Lcom/wen/fluorescence/Fragment/HomeFragment$13;

    invoke-direct {v2, p0}, Lcom/wen/fluorescence/Fragment/HomeFragment$13;-><init>(Lcom/wen/fluorescence/Fragment/HomeFragment;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->setDialogShow(Lcom/wen/fluorescence/database/TestResult;Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$DetialCallback;Z)V

    .line 784
    return-void
.end method

.method private autoDealSampleNumber()V
    .locals 11

    .line 1459
    const/4 v0, -0x1

    .line 1462
    .local v0, "sampleText":I
    :try_start_0
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->etSampleNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v0, v1

    .line 1463
    if-gtz v0, :cond_0

    .line 1464
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v1

    const-string v2, "SAMPLE_AUTO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1465
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wen/fluorescence/database/DBManager;->getMaxSampleNumber()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1464
    invoke-virtual {v1, v2, v3}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->setStringData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1467
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1468
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v1

    const-string v2, "SAMPLE_AUTO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->setStringData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1509
    :goto_0
    goto/16 :goto_4

    .line 1470
    :catch_0
    move-exception v1

    .line 1472
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->etSampleNumber:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1473
    .local v2, "strSample":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1474
    .local v3, "iIndex":I
    const/4 v4, 0x0

    move v5, v4

    .line 1474
    .local v5, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 1475
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1476
    move v3, v5

    .line 1477
    goto :goto_2

    .line 1474
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1480
    .end local v5    # "i":I
    :cond_2
    :goto_2
    if-eqz v3, :cond_4

    .line 1481
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1483
    .local v5, "strDigit":Ljava/lang/String;
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1484
    .local v6, "iDigit":I
    add-int/lit8 v6, v6, 0x1

    .line 1486
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v7

    const-string v8, "SAMPLE_AUTO"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1487
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1486
    invoke-virtual {v7, v8, v4}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->setStringData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1495
    .end local v6    # "iDigit":I
    goto :goto_3

    .line 1488
    :catch_1
    move-exception v4

    .line 1490
    .local v4, "e1":Ljava/lang/Exception;
    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1491
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/DBManager;->getMaxSampleNumber()I

    move-result v6

    .line 1492
    .local v6, "maxNum":I
    add-int/lit8 v6, v6, 0x1

    .line 1493
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v7

    const-string v8, "SAMPLE_AUTO"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->setStringData(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    .end local v4    # "e1":Ljava/lang/Exception;
    .end local v5    # "strDigit":Ljava/lang/String;
    .end local v6    # "maxNum":I
    :cond_3
    :goto_3
    goto :goto_4

    .line 1497
    :cond_4
    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1498
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wen/fluorescence/database/DBManager;->getMaxSampleNumber()I

    move-result v4

    .line 1499
    .local v4, "maxNum":I
    add-int/lit8 v4, v4, 0x1

    .line 1500
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->etSampleNumber:Landroid/widget/EditText;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1501
    add-int/lit8 v4, v4, 0x1

    .line 1502
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v5

    const-string v6, "SAMPLE_AUTO"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->setStringData(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    .end local v4    # "maxNum":I
    goto :goto_4

    .line 1504
    :cond_5
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wen/fluorescence/database/DBManager;->getMaxSampleNumber()I

    move-result v4

    .line 1505
    .restart local v4    # "maxNum":I
    add-int/lit8 v4, v4, 0x1

    .line 1506
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v5

    const-string v6, "SAMPLE_AUTO"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->setStringData(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "strSample":Ljava/lang/String;
    .end local v3    # "iIndex":I
    .end local v4    # "maxNum":I
    :goto_4
    return-void
.end method

.method private checkSerialNumber()V
    .locals 7

    .line 1441
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->etSerialNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1442
    .local v0, "strDate":Ljava/lang/String;
    const-string v1, "yyyyMMdd"

    invoke-static {v1}, Lcom/wen/fluorescence/util/DateUtils;->getNowDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1443
    .local v1, "nowDate":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1444
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wen/fluorescence/database/DBManager;->getMaxSerialNumber()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 1445
    .local v2, "nextNumber":I
    new-instance v3, Lcom/wen/fluorescence/util/DateUtils;

    invoke-direct {v3}, Lcom/wen/fluorescence/util/DateUtils;-><init>()V

    .line 1446
    .local v3, "du":Lcom/wen/fluorescence/util/DateUtils;
    const-string v4, "yyyyMMdd"

    invoke-static {v4}, Lcom/wen/fluorescence/util/DateUtils;->getSysemDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1447
    .local v4, "str":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Lcom/wen/fluorescence/util/DateUtils;->polishingZero(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1448
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->etSerialNumber:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1450
    .end local v2    # "nextNumber":I
    .end local v3    # "du":Lcom/wen/fluorescence/util/DateUtils;
    .end local v4    # "str":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private init()V
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/wen/fluorescence/serialport/CommActivity;->initAVGHandler(Landroid/os/Handler;)V

    .line 527
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/wen/fluorescence/serialport/DoSerialData;->getInstance(Landroid/os/Handler;)Lcom/wen/fluorescence/serialport/DoSerialData;

    .line 528
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->setTextSerialNumber()V

    .line 529
    return-void
.end method

.method private initHandler()V
    .locals 2

    .line 414
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/wen/fluorescence/serialport/CommActivity;->initAVGHandler(Landroid/os/Handler;)V

    .line 415
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/wen/fluorescence/serialport/DoSerialData;->getInstance(Landroid/os/Handler;)Lcom/wen/fluorescence/serialport/DoSerialData;

    .line 416
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/Thread/TestThread;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/Thread/TestThread;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/Thread/TestThread;->setmHandler(Landroid/os/Handler;)V

    .line 417
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .line 426
    const v0, 0x7f0800fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->fsLayout:Landroid/widget/LinearLayout;

    .line 427
    const v1, 0x7f0800b7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->djLayout:Landroid/widget/LinearLayout;

    .line 428
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wen/fluorescence/util/Global;->getSoftType()I

    move-result v2

    const/16 v3, 0x8

    const v4, 0x7f0801c6

    const v5, 0x7f0800e5

    const v6, 0x7f0800e9

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 440
    :pswitch_0
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->djLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->etSerialNumber:Landroid/widget/EditText;

    .line 441
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->djLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->etSampleNumber:Landroid/widget/EditText;

    .line 442
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->djLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->spSimpleType:Landroid/widget/Spinner;

    .line 443
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->djLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0800d7

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->etName:Landroid/widget/EditText;

    .line 444
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->djLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0800d1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->etIdentityCard:Landroid/widget/EditText;

    .line 445
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 431
    :pswitch_1
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->fsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->etSerialNumber:Landroid/widget/EditText;

    .line 432
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->fsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->etSampleNumber:Landroid/widget/EditText;

    .line 433
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->fsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->spSimpleType:Landroid/widget/Spinner;

    .line 434
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->fsLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f08005a

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->btnInfo:Landroid/widget/Button;

    .line 435
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 437
    nop

    .line 449
    :goto_0
    const v0, 0x7f08006e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->btnReadID:Landroid/widget/Button;

    .line 450
    const v0, 0x7f08017e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->rbStandardtest:Landroid/widget/RadioButton;

    .line 451
    const v0, 0x7f080178

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->rbQuickTest:Landroid/widget/RadioButton;

    .line 452
    const v0, 0x7f08003c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->btnCardIn:Landroid/widget/Button;

    .line 453
    const v0, 0x7f08003d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->btnCardOut:Landroid/widget/Button;

    .line 454
    const v0, 0x7f080081

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->btnStartTest:Landroid/widget/Button;

    .line 455
    const v0, 0x7f08006f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->btnReadIDChip:Landroid/widget/Button;

    .line 456
    const v0, 0x7f080069

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->btnPrint:Landroid/widget/Button;

    .line 457
    const v0, 0x7f080095

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->cbAutoPrint:Landroid/widget/CheckBox;

    .line 458
    const v0, 0x7f080230

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvReferenceRange:Landroid/widget/TextView;

    .line 459
    const v0, 0x7f080231

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvReferenceRange2:Landroid/widget/TextView;

    .line 460
    const v0, 0x7f080232

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvReferenceRange3:Landroid/widget/TextView;

    .line 461
    const v0, 0x7f080209

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvItem:Landroid/widget/TextView;

    .line 462
    const v0, 0x7f080234

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvResult:Landroid/widget/TextView;

    .line 463
    const v0, 0x7f08020c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvItem2:Landroid/widget/TextView;

    .line 464
    const v0, 0x7f080237

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvResult2:Landroid/widget/TextView;

    .line 465
    const v0, 0x7f08020d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvItem3:Landroid/widget/TextView;

    .line 466
    const v0, 0x7f080238

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvResult3:Landroid/widget/TextView;

    .line 467
    const v0, 0x7f0801f4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvCountTime:Landroid/widget/TextView;

    .line 468
    const v0, 0x7f080246

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvStatus:Landroid/widget/TextView;

    .line 469
    const v0, 0x7f08012d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->llResult:Landroid/widget/LinearLayout;

    .line 470
    const v0, 0x7f08012e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->llResultLayout:Landroid/widget/LinearLayout;

    .line 471
    const v0, 0x7f08012c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->llReferenceRange:Landroid/widget/LinearLayout;

    .line 472
    const v0, 0x7f0801ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvBatchNO:Landroid/widget/TextView;

    .line 473
    const v0, 0x7f0800df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->etPatientNo:Landroid/widget/EditText;

    .line 475
    const v0, 0x7f080137

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->llVerdict:Landroid/widget/LinearLayout;

    .line 476
    const v0, 0x7f080138

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->llVerdictLayout:Landroid/widget/LinearLayout;

    .line 477
    const v0, 0x7f080263

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvVerdict:Landroid/widget/TextView;

    .line 478
    const v0, 0x7f080264

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvVerdict2:Landroid/widget/TextView;

    .line 479
    const v0, 0x7f080265

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvVerdict3:Landroid/widget/TextView;

    .line 480
    const v0, 0x7f080266

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvVerdictTitle:Landroid/widget/TextView;

    .line 481
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private readIDCard()V
    .locals 9

    .line 383
    new-instance v0, Lcom/huashi/otg/sdk/HsOtgApi;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/huashi/otg/sdk/HsOtgApi;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->api:Lcom/huashi/otg/sdk/HsOtgApi;

    .line 384
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->api:Lcom/huashi/otg/sdk/HsOtgApi;

    invoke-virtual {v0}, Lcom/huashi/otg/sdk/HsOtgApi;->init()I

    move-result v0

    .line 385
    .local v0, "ret":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 386
    iput-boolean v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->m_Con:Z

    goto :goto_0

    .line 388
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->m_Con:Z

    .line 391
    :goto_0
    const-string v2, "authen-->"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->api:Lcom/huashi/otg/sdk/HsOtgApi;

    const-wide/16 v5, 0xc8

    invoke-virtual {v4, v5, v6, v5, v6}, Lcom/huashi/otg/sdk/HsOtgApi;->Authenticate(JJ)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->api:Lcom/huashi/otg/sdk/HsOtgApi;

    invoke-virtual {v2, v5, v6, v5, v6}, Lcom/huashi/otg/sdk/HsOtgApi;->Authenticate(JJ)I

    .line 396
    new-instance v2, Lcom/huashi/otg/sdk/HSIDCardInfo;

    invoke-direct {v2}, Lcom/huashi/otg/sdk/HSIDCardInfo;-><init>()V

    .line 397
    .local v2, "ici":Lcom/huashi/otg/sdk/HSIDCardInfo;
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->api:Lcom/huashi/otg/sdk/HsOtgApi;

    const-wide/16 v5, 0xc8

    const-wide/16 v7, 0x514

    move-object v4, v2

    invoke-virtual/range {v3 .. v8}, Lcom/huashi/otg/sdk/HsOtgApi;->ReadCard(Lcom/huashi/otg/sdk/HSIDCardInfo;JJ)I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 398
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 399
    .local v1, "msg":Landroid/os/Message;
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 400
    const/16 v3, 0xa

    iput v3, v1, Landroid/os/Message;->what:I

    .line 401
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 403
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private setTestInfo()V
    .locals 5

    .line 1006
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->detialResult:Lcom/wen/fluorescence/database/TestResult;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->testResult:Lcom/wen/fluorescence/database/TestResult;

    .line 1007
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->testResult:Lcom/wen/fluorescence/database/TestResult;

    if-nez v0, :cond_0

    .line 1008
    new-instance v0, Lcom/wen/fluorescence/database/TestResult;

    invoke-direct {v0}, Lcom/wen/fluorescence/database/TestResult;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->testResult:Lcom/wen/fluorescence/database/TestResult;

    .line 1010
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->testResult:Lcom/wen/fluorescence/database/TestResult;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->etPatientNo:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setPatientNumber(Ljava/lang/String;)V

    .line 1011
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->testResult:Lcom/wen/fluorescence/database/TestResult;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->etSerialNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setSerialNumber(Ljava/lang/String;)V

    .line 1012
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->testResult:Lcom/wen/fluorescence/database/TestResult;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->etSampleNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setSampleNumber(Ljava/lang/String;)V

    .line 1013
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->testResult:Lcom/wen/fluorescence/database/TestResult;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->spSimpleType:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setSimpleType(Ljava/lang/String;)V

    .line 1014
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->testResult:Lcom/wen/fluorescence/database/TestResult;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->rbQuickTest:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setTestMode(I)V

    .line 1015
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v0

    .line 1016
    .local v0, "spu":Lcom/wen/fluorescence/util/SharedPreferencesUtils;
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->testResult:Lcom/wen/fluorescence/database/TestResult;

    const-string v3, "DetectorUnitSetting"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/database/TestResult;->setDoctorNumber(Ljava/lang/String;)V

    .line 1017
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/Global;->getSoftType()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 1018
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->testResult:Lcom/wen/fluorescence/database/TestResult;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->etName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/database/TestResult;->setName(Ljava/lang/String;)V

    .line 1019
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->testResult:Lcom/wen/fluorescence/database/TestResult;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->etIdentityCard:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/database/TestResult;->setPatientNumber(Ljava/lang/String;)V

    .line 1021
    :cond_1
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    .line 1022
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->testResult:Lcom/wen/fluorescence/database/TestResult;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->scanCodeAppId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/database/TestResult;->setAppId(Ljava/lang/String;)V

    .line 1024
    :cond_2
    return-void
.end method

.method private setTestStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "ch"    # Ljava/lang/String;
    .param p2, "en"    # Ljava/lang/String;

    .line 810
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/Global;->getLanguage()I

    move-result v0

    const v1, 0x1a00001

    if-ne v0, v1, :cond_0

    .line 811
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 813
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 815
    :goto_0
    return-void
.end method

.method private setTextSerialNumber()V
    .locals 6

    .line 1422
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/database/DBManager;->getMaxSerialNumber()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 1423
    .local v0, "nextNumber":I
    new-instance v2, Lcom/wen/fluorescence/util/DateUtils;

    invoke-direct {v2}, Lcom/wen/fluorescence/util/DateUtils;-><init>()V

    .line 1424
    .local v2, "du":Lcom/wen/fluorescence/util/DateUtils;
    const-string v3, "yyyyMMdd"

    invoke-static {v3}, Lcom/wen/fluorescence/util/DateUtils;->getSysemDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1426
    .local v3, "str":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Lcom/wen/fluorescence/util/DateUtils;->polishingZero(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1427
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->etSerialNumber:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1429
    if-ne v0, v1, :cond_0

    .line 1430
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v1

    const-string v4, "SAMPLE_AUTO"

    const-string v5, "1"

    invoke-virtual {v1, v4, v5}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->setStringData(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    :cond_0
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v1

    const-string v4, "SAMPLE_AUTO"

    const-string v5, "1"

    invoke-virtual {v1, v4, v5}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1433
    .local v1, "nextSample":Ljava/lang/String;
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->etSampleNumber:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1434
    return-void
.end method

.method private setViewEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 1027
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/Global;->getSoftType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1028
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->etName:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1029
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->etIdentityCard:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1031
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->rbQuickTest:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 1032
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->rbStandardtest:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 1033
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->spSimpleType:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1034
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->etSampleNumber:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1035
    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    .line 1036
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1037
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->llResult:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1039
    :cond_1
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1040
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->llResult:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1042
    :goto_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->callBack:Lcom/wen/fluorescence/util/FragmentCallback;

    invoke-interface {v0, p1}, Lcom/wen/fluorescence/util/FragmentCallback;->setTabEnable(Z)V

    .line 1043
    return-void
.end method

.method private setViewIncident()V
    .locals 5

    .line 485
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/Global;->getSoftType()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/Global;->getSoftType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->btnInfo:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    :cond_1
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->btnCardIn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 489
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->btnCardOut:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->btnStartTest:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 491
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->btnReadIDChip:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->btnPrint:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 493
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->btnReadID:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->rbStandardtest:Landroid/widget/RadioButton;

    new-instance v1, Lcom/wen/fluorescence/Fragment/HomeFragment$2;

    invoke-direct {v1, p0}, Lcom/wen/fluorescence/Fragment/HomeFragment$2;-><init>(Lcom/wen/fluorescence/Fragment/HomeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 502
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->rbQuickTest:Landroid/widget/RadioButton;

    new-instance v1, Lcom/wen/fluorescence/Fragment/HomeFragment$3;

    invoke-direct {v1, p0}, Lcom/wen/fluorescence/Fragment/HomeFragment$3;-><init>(Lcom/wen/fluorescence/Fragment/HomeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 510
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v0

    const-string v1, "STANDARD_MODE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getBooleanData(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 511
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->rbStandardtest:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 514
    :cond_2
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0a0057

    const v3, 0x7f0801a3

    sget-object v4, Lcom/wen/fluorescence/util/PublicFuction;->arraySample:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 516
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->spSimpleType:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 517
    invoke-static {}, Lcom/wen/fluorescence/Thread/TempTimer;->getInstance()Lcom/wen/fluorescence/Thread/TempTimer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/Thread/TempTimer;->startTempTimer()V

    .line 519
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x1a00002

    invoke-static {v1, v2}, Lcom/wen/fluorescence/util/SaveLanguaeInfo;->getLanguage(Landroid/content/Context;I)I

    move-result v1

    const v2, 0x1a00008

    if-ne v1, v2, :cond_3

    .line 521
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->btnReadIDChip:Landroid/widget/Button;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 523
    :cond_3
    return-void
.end method

.method private showEnterBarcodeDialog(Lcom/wen/fluorescence/util/MyPassDialogInterface;)V
    .locals 17
    .param p1, "passDialogInterface"    # Lcom/wen/fluorescence/util/MyPassDialogInterface;

    .line 532
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a003a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 534
    .local v0, "view":Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 535
    .local v1, "budiler":Landroid/app/AlertDialog;
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 536
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 537
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 539
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 540
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    .line 541
    .local v9, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x26c

    iput v3, v9, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 542
    const/16 v3, 0x15e

    iput v3, v9, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 543
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 544
    const v3, 0x7f0801cb

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/widget/Spinner;

    .line 545
    .local v10, "spinnerLot":Landroid/widget/Spinner;
    const v3, 0x7f080089

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/widget/Button;

    .line 546
    .local v11, "btnSure":Landroid/widget/Button;
    const v3, 0x7f08003b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/widget/Button;

    .line 551
    .local v12, "btnCancel":Landroid/widget/Button;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v3

    .line 552
    .local v13, "logNumberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/wen/fluorescence/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wen/fluorescence/database/DBManager;->queryAllIDChipInfoNDesc()Ljava/util/List;

    move-result-object v14

    .line 553
    .local v14, "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/bean/IDChipInfoN;>;"
    if-eqz v14, :cond_0

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 554
    nop

    .line 554
    .local v2, "i":I
    :goto_0
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 556
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget-object v4, v4, Lcom/wen/fluorescence/bean/IDChipInfoN;->new_logNo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget-object v4, v4, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 560
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-static {}, Lcom/wen/fluorescence/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0057

    const v5, 0x7f0801a3

    invoke-direct {v2, v3, v4, v5, v13}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 562
    .local v2, "adapter":Landroid/widget/ArrayAdapter;
    invoke-virtual {v10, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 564
    new-instance v3, Lcom/wen/fluorescence/Fragment/HomeFragment$4;

    move-object/from16 v15, p0

    move-object/from16 v8, p1

    invoke-direct {v3, v15, v8, v1}, Lcom/wen/fluorescence/Fragment/HomeFragment$4;-><init>(Lcom/wen/fluorescence/Fragment/HomeFragment;Lcom/wen/fluorescence/util/MyPassDialogInterface;Landroid/app/AlertDialog;)V

    invoke-virtual {v12, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 571
    new-instance v7, Lcom/wen/fluorescence/Fragment/HomeFragment$5;

    move-object v3, v7

    move-object v4, v15

    move-object v5, v14

    move-object v6, v10

    move-object/from16 v16, v0

    move-object v0, v7

    move-object v7, v8

    .line 571
    .end local v0    # "view":Landroid/view/View;
    .local v16, "view":Landroid/view/View;
    move-object v8, v1

    invoke-direct/range {v3 .. v8}, Lcom/wen/fluorescence/Fragment/HomeFragment$5;-><init>(Lcom/wen/fluorescence/Fragment/HomeFragment;Ljava/util/List;Landroid/widget/Spinner;Lcom/wen/fluorescence/util/MyPassDialogInterface;Landroid/app/AlertDialog;)V

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 587
    return-void
.end method

.method private showSampleSelectDialog([Ljava/lang/String;)V
    .locals 9
    .param p1, "sampleType"    # [Ljava/lang/String;

    .line 641
    sput-object p1, Lcom/wen/fluorescence/util/PublicFuction;->arraySample:[Ljava/lang/String;

    .line 642
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/wen/fluorescence/util/PublicFuction;->arraySample:[Ljava/lang/String;

    const v3, 0x7f0a0057

    const v4, 0x7f0801a3

    invoke-direct {v0, v1, v3, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 644
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->spSimpleType:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 645
    .local v1, "oriSampleType":Ljava/lang/String;
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->spSimpleType:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 646
    const/4 v2, 0x0

    move v3, v2

    .line 646
    .local v3, "i":I
    :goto_0
    sget-object v4, Lcom/wen/fluorescence/util/PublicFuction;->arraySample:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 647
    sget-object v4, Lcom/wen/fluorescence/util/PublicFuction;->arraySample:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 648
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->spSimpleType:Landroid/widget/Spinner;

    invoke-virtual {v4, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 646
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 651
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0a004e

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 653
    .local v3, "view":Landroid/view/View;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 654
    .local v4, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v4, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 655
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 656
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 658
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const v6, 0x20008

    invoke-virtual {v5, v6}, Landroid/view/Window;->clearFlags(I)V

    .line 659
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x12

    invoke-virtual {v5, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 661
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 662
    .local v5, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 663
    .local v6, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v7, 0x11

    invoke-virtual {v5, v7}, Landroid/view/Window;->setGravity(I)V

    .line 664
    const/4 v7, 0x6

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 665
    const/16 v7, 0x334

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 666
    const/16 v7, 0x140

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 667
    invoke-virtual {v5, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 669
    const v7, 0x7f080073

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->btnSample1:Landroid/widget/Button;

    .line 670
    const v7, 0x7f080074

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->btnSample2:Landroid/widget/Button;

    .line 671
    const v7, 0x7f080075

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->btnSample3:Landroid/widget/Button;

    .line 672
    const v7, 0x7f080076

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->btnSample4:Landroid/widget/Button;

    .line 673
    const v7, 0x7f080077

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->btnSample5:Landroid/widget/Button;

    .line 674
    iget-object v7, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->btnSample1:Landroid/widget/Button;

    aget-object v2, p1, v2

    invoke-virtual {v7, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 675
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->btnSample2:Landroid/widget/Button;

    const/4 v7, 0x1

    aget-object v7, p1, v7

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 676
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->btnSample3:Landroid/widget/Button;

    const/4 v7, 0x2

    aget-object v7, p1, v7

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 677
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->btnSample4:Landroid/widget/Button;

    const/4 v7, 0x3

    aget-object v7, p1, v7

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 678
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->btnSample5:Landroid/widget/Button;

    const/4 v7, 0x4

    aget-object v7, p1, v7

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 680
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->btnSample1:Landroid/widget/Button;

    new-instance v7, Lcom/wen/fluorescence/Fragment/HomeFragment$7;

    invoke-direct {v7, p0, v4, p1}, Lcom/wen/fluorescence/Fragment/HomeFragment$7;-><init>(Lcom/wen/fluorescence/Fragment/HomeFragment;Landroid/app/AlertDialog;[Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 690
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->btnSample2:Landroid/widget/Button;

    new-instance v7, Lcom/wen/fluorescence/Fragment/HomeFragment$8;

    invoke-direct {v7, p0, v4, p1}, Lcom/wen/fluorescence/Fragment/HomeFragment$8;-><init>(Lcom/wen/fluorescence/Fragment/HomeFragment;Landroid/app/AlertDialog;[Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 700
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->btnSample3:Landroid/widget/Button;

    new-instance v7, Lcom/wen/fluorescence/Fragment/HomeFragment$9;

    invoke-direct {v7, p0, v4, p1}, Lcom/wen/fluorescence/Fragment/HomeFragment$9;-><init>(Lcom/wen/fluorescence/Fragment/HomeFragment;Landroid/app/AlertDialog;[Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 710
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->btnSample4:Landroid/widget/Button;

    new-instance v7, Lcom/wen/fluorescence/Fragment/HomeFragment$10;

    invoke-direct {v7, p0, v4, p1}, Lcom/wen/fluorescence/Fragment/HomeFragment$10;-><init>(Lcom/wen/fluorescence/Fragment/HomeFragment;Landroid/app/AlertDialog;[Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 720
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->btnSample5:Landroid/widget/Button;

    new-instance v7, Lcom/wen/fluorescence/Fragment/HomeFragment$11;

    invoke-direct {v7, p0, v4, p1}, Lcom/wen/fluorescence/Fragment/HomeFragment$11;-><init>(Lcom/wen/fluorescence/Fragment/HomeFragment;Landroid/app/AlertDialog;[Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 731
    const v2, 0x7f0801f3

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvCount:Landroid/widget/TextView;

    .line 732
    invoke-static {}, Lcom/wen/fluorescence/Thread/MyCircleTimer;->getInstance()Lcom/wen/fluorescence/Thread/MyCircleTimer;

    move-result-object v2

    new-instance v7, Lcom/wen/fluorescence/Fragment/HomeFragment$12;

    invoke-direct {v7, p0, p1}, Lcom/wen/fluorescence/Fragment/HomeFragment$12;-><init>(Lcom/wen/fluorescence/Fragment/HomeFragment;[Ljava/lang/String;)V

    const/16 v8, 0x3e8

    invoke-virtual {v2, v7, v8}, Lcom/wen/fluorescence/Thread/MyCircleTimer;->setCircleTimerStart(Lcom/wen/fluorescence/Thread/MyCircleTimer$TimerOutCallBack;I)V

    .line 765
    return-void
.end method

.method private showScanDialog()V
    .locals 3

    .line 1521
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->scanDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 1522
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a0026

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1524
    .local v0, "view":Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->scanDialog:Landroid/app/AlertDialog;

    .line 1525
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->scanDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 1526
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->scanDialog:Landroid/app/AlertDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1527
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->scanDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x20008

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 1528
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->scanDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1531
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->scanDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 1532
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->scanDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1533
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1534
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x190

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1535
    const/16 v2, 0xfa

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1536
    const/16 v2, 0x50

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1537
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->scanDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1539
    const v2, 0x7f0800e7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->etScan:Landroid/widget/EditText;

    .line 1540
    const v2, 0x7f08010c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->ivClose:Landroid/widget/ImageView;

    .line 1541
    const v2, 0x7f08003b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->btnCancel:Landroid/widget/Button;

    .line 1542
    const v2, 0x7f080225

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvPreTip:Landroid/widget/TextView;

    .line 1544
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->scanDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1546
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->etScan:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1547
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->ivClose:Landroid/widget/ImageView;

    new-instance v1, Lcom/wen/fluorescence/Fragment/HomeFragment$21;

    invoke-direct {v1, p0}, Lcom/wen/fluorescence/Fragment/HomeFragment$21;-><init>(Lcom/wen/fluorescence/Fragment/HomeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1554
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->etScan:Landroid/widget/EditText;

    new-instance v1, Lcom/wen/fluorescence/Fragment/HomeFragment$22;

    invoke-direct {v1, p0}, Lcom/wen/fluorescence/Fragment/HomeFragment$22;-><init>(Lcom/wen/fluorescence/Fragment/HomeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1571
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->btnCancel:Landroid/widget/Button;

    new-instance v1, Lcom/wen/fluorescence/Fragment/HomeFragment$23;

    invoke-direct {v1, p0}, Lcom/wen/fluorescence/Fragment/HomeFragment$23;-><init>(Lcom/wen/fluorescence/Fragment/HomeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1578
    return-void
.end method

.method private startReadIDChip()V
    .locals 8

    .line 822
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/Thread/TestThread;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/Thread/TestThread;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/Thread/TestThread;->readIDChip(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 827
    :cond_0
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/util/NetUtil;->isNetworkConnect(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 828
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0c00fd

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 829
    return-void

    .line 831
    :cond_1
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f0a0025

    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 833
    .local v0, "view":Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 834
    .local v1, "dialog":Landroid/app/AlertDialog;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 835
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 836
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 838
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x20008

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 839
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 842
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 843
    .local v2, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 844
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/view/Window;->setGravity(I)V

    .line 845
    const/4 v4, 0x6

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 846
    const/16 v4, 0x1f4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 847
    const/16 v4, 0x12c

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 848
    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 850
    const v4, 0x7f0800c6

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 851
    .local v4, "etBarCode":Landroid/widget/EditText;
    const v5, 0x7f080089

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 852
    .local v5, "btnSure":Landroid/widget/Button;
    const v6, 0x7f08003b

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 854
    .local v6, "btnCancel":Landroid/widget/Button;
    new-instance v7, Lcom/wen/fluorescence/Fragment/HomeFragment$15;

    invoke-direct {v7, p0, v4, v1}, Lcom/wen/fluorescence/Fragment/HomeFragment$15;-><init>(Lcom/wen/fluorescence/Fragment/HomeFragment;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 921
    new-instance v7, Lcom/wen/fluorescence/Fragment/HomeFragment$16;

    invoke-direct {v7, p0, v1}, Lcom/wen/fluorescence/Fragment/HomeFragment$16;-><init>(Lcom/wen/fluorescence/Fragment/HomeFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 929
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    .end local v2    # "dialogWindow":Landroid/view/Window;
    .end local v3    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "etBarCode":Landroid/widget/EditText;
    .end local v5    # "btnSure":Landroid/widget/Button;
    .end local v6    # "btnCancel":Landroid/widget/Button;
    :goto_0
    return-void
.end method

.method private startTest()V
    .locals 6

    .line 936
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 937
    invoke-static {}, Lcom/wen/fluorescence/Thread/UploadDataForCloudsTimer;->getInstance()Lcom/wen/fluorescence/Thread/UploadDataForCloudsTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/Thread/UploadDataForCloudsTimer;->setTimerTotalCancel()V

    .line 939
    :cond_0
    invoke-static {}, Lcom/wen/fluorescence/Thread/TotalTimer;->getInstance()Lcom/wen/fluorescence/Thread/TotalTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/Thread/TotalTimer;->setTimerTotalStart(Landroid/os/Handler;)V

    .line 940
    const/4 v0, 0x0

    iput v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->ScanFaileCount:I

    .line 941
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/util/Global;->setTestStatus(Z)V

    .line 942
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->testResult:Lcom/wen/fluorescence/database/TestResult;

    .line 943
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->testResultList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 944
    invoke-static {}, Lcom/wen/fluorescence/Thread/TempTimer;->getInstance()Lcom/wen/fluorescence/Thread/TempTimer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/Thread/TempTimer;->stopTempTimer()V

    .line 945
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->checkSerialNumber()V

    .line 946
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->autoDealSampleNumber()V

    .line 947
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->rbQuickTest:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 948
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/wen/fluorescence/Thread/TestThread;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/Thread/TestThread;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wen/fluorescence/Thread/TestThread;->setTestMode(I)V

    goto :goto_0

    .line 950
    :cond_1
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/wen/fluorescence/Thread/TestThread;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/Thread/TestThread;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/Thread/TestThread;->setTestMode(I)V

    .line 951
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 952
    .local v3, "startTime":J
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Lcom/wen/fluorescence/Thread/StandarTimer;->getInstance(Landroid/os/Handler;)Lcom/wen/fluorescence/Thread/StandarTimer;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcom/wen/fluorescence/Thread/StandarTimer;->setStartTime(J)V

    .line 955
    .end local v3    # "startTime":J
    :goto_0
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvBatchNO:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 956
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvItem:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 957
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvReferenceRange:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 958
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvItem2:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 959
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvItem3:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 960
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvResult:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 961
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvResult2:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 962
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvResult3:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 963
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvVerdict:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 964
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvVerdict2:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 965
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvVerdict3:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 966
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvReferenceRange2:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 967
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvReferenceRange3:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 970
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->llResultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 971
    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->setViewEnable(Z)V

    .line 973
    const-string v0, "Start Testing"

    invoke-static {}, Lcom/wen/fluorescence/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0c01a1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/wen/fluorescence/Fragment/HomeFragment;->setTestStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->setTestInfo()V

    .line 975
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/Thread/TestThread;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/Thread/TestThread;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->spSimpleType:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/Thread/TestThread;->setSampleType(Ljava/lang/String;)V

    .line 977
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v0

    const-string v1, "SP_TEST_MODE"

    .line 978
    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getBooleanData(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 977
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 979
    .local v0, "bTestMode":Z
    if-eqz v0, :cond_2

    .line 980
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->getReagentInfo()V

    goto :goto_1

    .line 982
    :cond_2
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v1

    const-string v2, "SP_DEFAULT_LOT"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 983
    .local v1, "defaultLogNum":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/wen/fluorescence/database/DBManager;->lotNumToBarcode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 984
    .local v2, "defaultBarcode":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 985
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/wen/fluorescence/Thread/TestThread;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/Thread/TestThread;

    move-result-object v3

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->testResult:Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v3, v4, v2}, Lcom/wen/fluorescence/Thread/TestThread;->startTest(Lcom/wen/fluorescence/database/TestResult;Ljava/lang/String;)V

    goto :goto_1

    .line 987
    :cond_3
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "\u5f53\u524d\u4e3a\u514d\u6761\u7801\u6a21\u5f0f\uff0c\u9ed8\u8ba4\u7684\u6279\u53f7\u4e0d\u5b58\u5728\uff01"

    new-instance v5, Lcom/wen/fluorescence/Fragment/HomeFragment$17;

    invoke-direct {v5, p0}, Lcom/wen/fluorescence/Fragment/HomeFragment$17;-><init>(Lcom/wen/fluorescence/Fragment/HomeFragment;)V

    invoke-static {v3, v4, v5}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 1000
    .end local v1    # "defaultLogNum":Ljava/lang/String;
    .end local v2    # "defaultBarcode":Ljava/lang/String;
    :goto_1
    return-void
.end method

.method private testCancel()V
    .locals 2

    .line 1360
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->setViewEnable(Z)V

    .line 1361
    invoke-static {}, Lcom/wen/fluorescence/Thread/TotalTimer;->getInstance()Lcom/wen/fluorescence/Thread/TotalTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/Thread/TotalTimer;->setTimerTotalCancel()V

    .line 1362
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/wen/fluorescence/Thread/StandarTimer;->getInstance(Landroid/os/Handler;)Lcom/wen/fluorescence/Thread/StandarTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/Thread/StandarTimer;->setStandarTimerStop()V

    .line 1363
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/util/Global;->setTestStatus(Z)V

    .line 1364
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->setCardOut()V

    .line 1365
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->detialResult:Lcom/wen/fluorescence/database/TestResult;

    .line 1366
    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->testResult:Lcom/wen/fluorescence/database/TestResult;

    .line 1367
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvCountTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1368
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvBatchNO:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1369
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvItem:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1370
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvResult:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1371
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvVerdict:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1372
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvReferenceRange:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1373
    const v0, 0x7f0c019f

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->setTestStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->etScan:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1375
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->etScan:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1377
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvPreTip:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1378
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvPreTip:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1380
    :cond_1
    return-void
.end method

.method private testCancelEasy11()V
    .locals 2

    .line 1383
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->setViewEnable(Z)V

    .line 1384
    invoke-static {}, Lcom/wen/fluorescence/Thread/TotalTimer;->getInstance()Lcom/wen/fluorescence/Thread/TotalTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/Thread/TotalTimer;->setTimerTotalCancel()V

    .line 1385
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/wen/fluorescence/Thread/StandarTimer;->getInstance(Landroid/os/Handler;)Lcom/wen/fluorescence/Thread/StandarTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/Thread/StandarTimer;->setStandarTimerStop()V

    .line 1386
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/util/Global;->setTestStatus(Z)V

    .line 1387
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->setCardOut()V

    .line 1388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->detialResult:Lcom/wen/fluorescence/database/TestResult;

    .line 1389
    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->testResult:Lcom/wen/fluorescence/database/TestResult;

    .line 1390
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvCountTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1391
    const v0, 0x7f0c019f

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->setTestStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->etScan:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1393
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->etScan:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1395
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvPreTip:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1396
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvPreTip:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1398
    :cond_1
    return-void
.end method

.method private testComplete()V
    .locals 25

    .line 1050
    move-object/from16 v0, p0

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/wen/fluorescence/Fragment/HomeFragment;->setViewEnable(Z)V

    .line 1051
    invoke-static {}, Lcom/wen/fluorescence/Thread/TotalTimer;->getInstance()Lcom/wen/fluorescence/Thread/TotalTimer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wen/fluorescence/Thread/TotalTimer;->setTimerTotalCancel()V

    .line 1052
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/util/Global;->setTestStatus(Z)V

    .line 1054
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wen/fluorescence/database/DBManager;->getTestResultCount()I

    move-result v2

    .line 1055
    .local v2, "totalTest":I
    const/16 v4, 0x4650

    if-lt v2, v4, :cond_0

    .line 1056
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v4

    const/16 v5, 0xc8

    invoke-virtual {v4, v5}, Lcom/wen/fluorescence/database/DBManager;->deleteMinTestResult(I)V

    .line 1059
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/wen/fluorescence/Thread/TestThread;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/Thread/TestThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wen/fluorescence/Thread/TestThread;->fetchRawData()Lcom/wen/fluorescence/database/RawData;

    move-result-object v4

    .line 1060
    .local v4, "rawData":Lcom/wen/fluorescence/database/RawData;
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/wen/fluorescence/Thread/TestThread;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/Thread/TestThread;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wen/fluorescence/Thread/TestThread;->fetchOriginalData()Lcom/wen/fluorescence/database/OriResult;

    move-result-object v11

    .line 1061
    .local v11, "oriResult":Lcom/wen/fluorescence/database/OriResult;
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wen/fluorescence/util/Global;->getdTemp()D

    move-result-wide v5

    invoke-virtual {v11, v5, v6}, Lcom/wen/fluorescence/database/OriResult;->setCalTemp(D)V

    .line 1062
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/wen/fluorescence/Thread/TestThread;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/Thread/TestThread;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wen/fluorescence/Thread/TestThread;->getResultList()Ljava/util/List;

    move-result-object v12

    .line 1063
    .local v12, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    iget-object v5, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->testResultList:Ljava/util/List;

    invoke-interface {v5, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1066
    iget-object v5, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvBatchNO:Landroid/widget/TextView;

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getLogNo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1067
    iget-object v5, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->llResult:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1068
    iget-object v5, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->llReferenceRange:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1070
    move v5, v3

    .line 1070
    .local v5, "i":I
    :goto_0
    iget-object v6, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->testResultList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_27

    .line 1071
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v6

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/wen/fluorescence/database/DBManager;->queryItemParaForName(Ljava/lang/String;)Lcom/wen/fluorescence/database/ItemPara;

    move-result-object v6

    .line 1072
    .local v6, "itemPara":Lcom/wen/fluorescence/database/ItemPara;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/ItemPara;->getMax()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Lcom/wen/fluorescence/database/ItemPara;->getMax()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_2
    :goto_1
    const-string v7, "-"

    .line 1073
    .local v7, "max":Ljava/lang/String;
    :goto_2
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/ItemPara;->getMin()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v6}, Lcom/wen/fluorescence/database/ItemPara;->getMin()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_4
    :goto_3
    const-string v8, "-"

    .line 1074
    .local v8, "min":Ljava/lang/String;
    :goto_4
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v9}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v9

    .line 1078
    .local v9, "unit":Ljava/lang/String;
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/wen/fluorescence/database/TestResult;

    invoke-static {v10}, Lcom/wen/fluorescence/util/PublicFuction;->getShowResultFor2(Lcom/wen/fluorescence/database/TestResult;)Lcom/wen/fluorescence/bean/TemResultBean;

    move-result-object v10

    .line 1082
    .local v10, "temResultBean":Lcom/wen/fluorescence/bean/TemResultBean;
    invoke-virtual {v10}, Lcom/wen/fluorescence/bean/TemResultBean;->getCode()I

    move-result v13

    .line 1084
    .local v13, "code":I
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v14

    invoke-virtual {v14}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v14

    const/4 v15, 0x2

    const/16 v3, 0x8

    if-le v14, v15, :cond_19

    .line 1085
    iget-object v14, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvItem2:Landroid/widget/TextView;

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1086
    iget-object v14, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvItem3:Landroid/widget/TextView;

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1087
    iget-object v14, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvResult2:Landroid/widget/TextView;

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1088
    iget-object v14, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvResult3:Landroid/widget/TextView;

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1089
    iget-object v14, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvReferenceRange2:Landroid/widget/TextView;

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1090
    iget-object v14, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvReferenceRange3:Landroid/widget/TextView;

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1091
    if-nez v5, :cond_b

    .line 1092
    if-eq v13, v1, :cond_5

    .line 1093
    iget-object v14, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvResult:Landroid/widget/TextView;

    invoke-virtual {v10}, Lcom/wen/fluorescence/bean/TemResultBean;->getResult()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1094
    iget-object v14, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->llVerdictLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_6

    .line 1096
    :cond_5
    invoke-virtual {v10}, Lcom/wen/fluorescence/bean/TemResultBean;->getResult()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1097
    iget-object v14, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->llResultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_5

    .line 1099
    :cond_6
    iget-object v14, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvResult:Landroid/widget/TextView;

    invoke-virtual {v10}, Lcom/wen/fluorescence/bean/TemResultBean;->getResult()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1102
    :goto_5
    invoke-virtual {v10}, Lcom/wen/fluorescence/bean/TemResultBean;->getVerdict()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1103
    iget-object v14, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->llVerdictLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_6

    .line 1105
    :cond_7
    iget-object v14, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->llVerdictLayout:Landroid/widget/LinearLayout;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1106
    iget-object v14, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvVerdict:Landroid/widget/TextView;

    invoke-virtual {v10}, Lcom/wen/fluorescence/bean/TemResultBean;->getVerdict()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1110
    :goto_6
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1111
    .local v14, "range":Ljava/lang/String;
    if-eqz v6, :cond_9

    .line 1112
    invoke-virtual {v6}, Lcom/wen/fluorescence/database/ItemPara;->getTarPrintMode1()I

    move-result v15

    if-ne v15, v1, :cond_8

    .line 1113
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v1, v16

    check-cast v1, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v1}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v1

    move/from16 v17, v2

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/ItemPara;->getTarTemplate1()Ljava/lang/String;

    move-result-object v2

    .line 1113
    .end local v2    # "totalTest":I
    .local v17, "totalTest":I
    invoke-static {v3, v8, v7, v1, v2}, Lcom/wen/fluorescence/util/PublicFuction;->getUnitRange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_7

    .line 1115
    .end local v17    # "totalTest":I
    .restart local v2    # "totalTest":I
    :cond_8
    move/from16 v17, v2

    .line 1115
    .end local v2    # "totalTest":I
    .restart local v17    # "totalTest":I
    :goto_7
    invoke-virtual {v6}, Lcom/wen/fluorescence/database/ItemPara;->getTarPrintMode2()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 1116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v3}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/ItemPara;->getTarTemplate2()Ljava/lang/String;

    move-result-object v15

    invoke-static {v2, v8, v7, v3, v15}, Lcom/wen/fluorescence/util/PublicFuction;->getUnitRange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_8

    .line 1119
    .end local v17    # "totalTest":I
    .restart local v2    # "totalTest":I
    :cond_9
    move/from16 v17, v2

    .line 1119
    .end local v2    # "totalTest":I
    .restart local v17    # "totalTest":I
    :cond_a
    :goto_8
    iget-object v1, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvReferenceRange:Landroid/widget/TextView;

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1120
    iget-object v1, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvItem:Landroid/widget/TextView;

    invoke-virtual {v10}, Lcom/wen/fluorescence/bean/TemResultBean;->getItemName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1121
    .end local v14    # "range":Ljava/lang/String;
    goto/16 :goto_c

    .line 1121
    .end local v17    # "totalTest":I
    .restart local v2    # "totalTest":I
    :cond_b
    move/from16 v17, v2

    .line 1121
    .end local v2    # "totalTest":I
    .restart local v17    # "totalTest":I
    const/4 v1, 0x1

    if-ne v5, v1, :cond_11

    .line 1122
    iget-object v1, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvItem2:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1123
    iget-object v1, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvResult2:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1124
    iget-object v1, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvReferenceRange2:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1126
    iget-object v1, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvItem2:Landroid/widget/TextView;

    invoke-virtual {v10}, Lcom/wen/fluorescence/bean/TemResultBean;->getItemName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1129
    .local v1, "range":Ljava/lang/String;
    if-eqz v6, :cond_d

    .line 1130
    invoke-virtual {v6}, Lcom/wen/fluorescence/database/ItemPara;->getTarPrintMode1()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    .line 1131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v14}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/ItemPara;->getTarTemplate1()Ljava/lang/String;

    move-result-object v15

    invoke-static {v3, v8, v7, v14, v15}, Lcom/wen/fluorescence/util/PublicFuction;->getUnitRange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1133
    :cond_c
    invoke-virtual {v6}, Lcom/wen/fluorescence/database/ItemPara;->getTarPrintMode2()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    .line 1134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v14}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/ItemPara;->getTarTemplate2()Ljava/lang/String;

    move-result-object v15

    invoke-static {v3, v8, v7, v14, v15}, Lcom/wen/fluorescence/util/PublicFuction;->getUnitRange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1137
    :cond_d
    iget-object v2, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvReferenceRange2:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1139
    const/4 v2, 0x1

    if-eq v13, v2, :cond_e

    .line 1140
    iget-object v2, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvResult2:Landroid/widget/TextView;

    invoke-virtual {v10}, Lcom/wen/fluorescence/bean/TemResultBean;->getResult()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1141
    iget-object v2, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->llVerdictLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_a

    .line 1143
    :cond_e
    const/16 v3, 0x8

    invoke-virtual {v10}, Lcom/wen/fluorescence/bean/TemResultBean;->getResult()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1144
    iget-object v2, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->llResultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_9

    .line 1146
    :cond_f
    iget-object v2, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvResult2:Landroid/widget/TextView;

    invoke-virtual {v10}, Lcom/wen/fluorescence/bean/TemResultBean;->getResult()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1149
    :goto_9
    invoke-virtual {v10}, Lcom/wen/fluorescence/bean/TemResultBean;->getVerdict()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1150
    iget-object v2, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->llVerdictLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_a

    .line 1152
    :cond_10
    iget-object v2, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->llVerdictLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1153
    iget-object v2, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvVerdict2:Landroid/widget/TextView;

    invoke-virtual {v10}, Lcom/wen/fluorescence/bean/TemResultBean;->getVerdict()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1156
    .end local v1    # "range":Ljava/lang/String;
    :goto_a
    goto/16 :goto_c

    :cond_11
    if-ne v5, v15, :cond_17

    .line 1157
    iget-object v1, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvItem3:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1158
    iget-object v1, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvResult3:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1159
    iget-object v1, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvReferenceRange3:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1160
    iget-object v1, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvItem3:Landroid/widget/TextView;

    invoke-virtual {v10}, Lcom/wen/fluorescence/bean/TemResultBean;->getItemName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1163
    .restart local v1    # "range":Ljava/lang/String;
    if-eqz v6, :cond_13

    .line 1164
    invoke-virtual {v6}, Lcom/wen/fluorescence/database/ItemPara;->getTarPrintMode1()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 1165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v14}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/ItemPara;->getTarTemplate1()Ljava/lang/String;

    move-result-object v15

    invoke-static {v3, v8, v7, v14, v15}, Lcom/wen/fluorescence/util/PublicFuction;->getUnitRange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1167
    :cond_12
    invoke-virtual {v6}, Lcom/wen/fluorescence/database/ItemPara;->getTarPrintMode2()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    .line 1168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v14}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/ItemPara;->getTarTemplate2()Ljava/lang/String;

    move-result-object v15

    invoke-static {v3, v8, v7, v14, v15}, Lcom/wen/fluorescence/util/PublicFuction;->getUnitRange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1171
    :cond_13
    iget-object v2, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvReferenceRange3:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1173
    const/4 v2, 0x1

    if-eq v13, v2, :cond_14

    .line 1174
    iget-object v2, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvResult3:Landroid/widget/TextView;

    invoke-virtual {v10}, Lcom/wen/fluorescence/bean/TemResultBean;->getResult()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1175
    iget-object v2, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->llVerdictLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_c

    .line 1177
    :cond_14
    const/16 v3, 0x8

    invoke-virtual {v10}, Lcom/wen/fluorescence/bean/TemResultBean;->getResult()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1178
    iget-object v2, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->llResultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_b

    .line 1180
    :cond_15
    iget-object v2, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvResult3:Landroid/widget/TextView;

    invoke-virtual {v10}, Lcom/wen/fluorescence/bean/TemResultBean;->getResult()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1183
    :goto_b
    invoke-virtual {v10}, Lcom/wen/fluorescence/bean/TemResultBean;->getVerdict()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1184
    iget-object v2, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->llVerdictLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_c

    .line 1186
    :cond_16
    iget-object v2, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->llVerdictLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1187
    iget-object v2, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvVerdict3:Landroid/widget/TextView;

    invoke-virtual {v10}, Lcom/wen/fluorescence/bean/TemResultBean;->getVerdict()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1191
    .end local v1    # "range":Ljava/lang/String;
    :cond_17
    :goto_c
    iget-object v1, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->testResultList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v1}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeFlag()I

    move-result v1

    if-nez v1, :cond_18

    .line 1192
    iget-object v1, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->llReferenceRange:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_15

    .line 1194
    :cond_18
    iget-object v1, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->llReferenceRange:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_15

    .line 1198
    .end local v17    # "totalTest":I
    .restart local v2    # "totalTest":I
    :cond_19
    move/from16 v17, v2

    move v2, v3

    .line 1198
    .end local v2    # "totalTest":I
    .restart local v17    # "totalTest":I
    iget-object v1, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->llVerdictLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1199
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wen/fluorescence/database/TestResult;

    invoke-static {v1}, Lcom/wen/fluorescence/util/PublicFuction;->getShowResult2(Lcom/wen/fluorescence/database/TestResult;)Ljava/lang/String;

    move-result-object v1

    .line 1200
    .local v1, "sShowResult":Ljava/lang/String;
    if-nez v5, :cond_1d

    .line 1201
    iget-object v2, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvResult:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1203
    iget-object v2, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvItem:Landroid/widget/TextView;

    invoke-virtual {v10}, Lcom/wen/fluorescence/bean/TemResultBean;->getItemName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1206
    .local v2, "range":Ljava/lang/String;
    if-eqz v6, :cond_1c

    .line 1207
    invoke-virtual {v6}, Lcom/wen/fluorescence/database/ItemPara;->getTarPrintMode1()I

    move-result v3

    const/4 v14, 0x1

    if-ne v3, v14, :cond_1a

    .line 1208
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "  "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v15}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v19, v2

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/ItemPara;->getTarTemplate1()Ljava/lang/String;

    move-result-object v2

    .line 1208
    .end local v2    # "range":Ljava/lang/String;
    .local v19, "range":Ljava/lang/String;
    invoke-static {v14, v8, v7, v15, v2}, Lcom/wen/fluorescence/util/PublicFuction;->getUnitRange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1208
    .end local v19    # "range":Ljava/lang/String;
    .restart local v2    # "range":Ljava/lang/String;
    goto :goto_d

    .line 1210
    :cond_1a
    move-object/from16 v19, v2

    :goto_d
    invoke-virtual {v6}, Lcom/wen/fluorescence/database/ItemPara;->getTarPrintMode2()I

    move-result v3

    const/4 v14, 0x1

    if-ne v3, v14, :cond_1b

    .line 1211
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "  "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v15}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v20, v2

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/ItemPara;->getTarTemplate2()Ljava/lang/String;

    move-result-object v2

    .line 1211
    .end local v2    # "range":Ljava/lang/String;
    .local v20, "range":Ljava/lang/String;
    invoke-static {v14, v8, v7, v15, v2}, Lcom/wen/fluorescence/util/PublicFuction;->getUnitRange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1211
    .end local v20    # "range":Ljava/lang/String;
    .restart local v2    # "range":Ljava/lang/String;
    goto :goto_e

    .line 1214
    :cond_1b
    move-object/from16 v20, v2

    .line 1214
    .end local v2    # "range":Ljava/lang/String;
    .restart local v20    # "range":Ljava/lang/String;
    goto :goto_e

    .line 1214
    .end local v20    # "range":Ljava/lang/String;
    .restart local v2    # "range":Ljava/lang/String;
    :cond_1c
    move-object/from16 v19, v2

    :goto_e
    iget-object v3, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvReferenceRange:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1216
    .end local v2    # "range":Ljava/lang/String;
    nop

    .line 1247
    .end local v1    # "sShowResult":Ljava/lang/String;
    .local v23, "sShowResult":Ljava/lang/String;
    :goto_f
    move-object/from16 v23, v1

    goto/16 :goto_14

    .line 1216
    .end local v23    # "sShowResult":Ljava/lang/String;
    .restart local v1    # "sShowResult":Ljava/lang/String;
    :cond_1d
    const/4 v2, 0x1

    if-ne v5, v2, :cond_21

    .line 1217
    iget-object v2, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvResult2:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1219
    iget-object v2, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvItem2:Landroid/widget/TextView;

    invoke-virtual {v10}, Lcom/wen/fluorescence/bean/TemResultBean;->getItemName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1222
    .restart local v2    # "range":Ljava/lang/String;
    if-eqz v6, :cond_20

    .line 1223
    invoke-virtual {v6}, Lcom/wen/fluorescence/database/ItemPara;->getTarPrintMode1()I

    move-result v3

    const/4 v14, 0x1

    if-ne v3, v14, :cond_1e

    .line 1224
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v15}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v21, v2

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/ItemPara;->getTarTemplate1()Ljava/lang/String;

    move-result-object v2

    .line 1224
    .end local v2    # "range":Ljava/lang/String;
    .local v21, "range":Ljava/lang/String;
    invoke-static {v14, v8, v7, v15, v2}, Lcom/wen/fluorescence/util/PublicFuction;->getUnitRange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1224
    .end local v21    # "range":Ljava/lang/String;
    .restart local v2    # "range":Ljava/lang/String;
    goto :goto_10

    .line 1226
    :cond_1e
    move-object/from16 v21, v2

    :goto_10
    invoke-virtual {v6}, Lcom/wen/fluorescence/database/ItemPara;->getTarPrintMode2()I

    move-result v3

    const/4 v14, 0x1

    if-ne v3, v14, :cond_1f

    .line 1227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v15}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v22, v2

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/ItemPara;->getTarTemplate2()Ljava/lang/String;

    move-result-object v2

    .line 1227
    .end local v2    # "range":Ljava/lang/String;
    .local v22, "range":Ljava/lang/String;
    invoke-static {v14, v8, v7, v15, v2}, Lcom/wen/fluorescence/util/PublicFuction;->getUnitRange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1227
    .end local v22    # "range":Ljava/lang/String;
    .restart local v2    # "range":Ljava/lang/String;
    goto :goto_11

    .line 1230
    :cond_1f
    move-object/from16 v22, v2

    .line 1230
    .end local v2    # "range":Ljava/lang/String;
    .restart local v22    # "range":Ljava/lang/String;
    goto :goto_11

    .line 1230
    .end local v22    # "range":Ljava/lang/String;
    .restart local v2    # "range":Ljava/lang/String;
    :cond_20
    move-object/from16 v21, v2

    :goto_11
    iget-object v3, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvReferenceRange2:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1231
    .end local v2    # "range":Ljava/lang/String;
    goto/16 :goto_f

    :cond_21
    const/4 v2, 0x2

    if-ne v5, v2, :cond_25

    .line 1232
    iget-object v2, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvResult3:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1234
    iget-object v2, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvItem3:Landroid/widget/TextView;

    invoke-virtual {v10}, Lcom/wen/fluorescence/bean/TemResultBean;->getItemName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1237
    .restart local v2    # "range":Ljava/lang/String;
    if-eqz v6, :cond_23

    .line 1238
    invoke-virtual {v6}, Lcom/wen/fluorescence/database/ItemPara;->getTarPrintMode1()I

    move-result v3

    const/4 v14, 0x1

    if-ne v3, v14, :cond_22

    .line 1239
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "  "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v15}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v23, v1

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/ItemPara;->getTarTemplate1()Ljava/lang/String;

    move-result-object v1

    .line 1239
    .end local v1    # "sShowResult":Ljava/lang/String;
    .restart local v23    # "sShowResult":Ljava/lang/String;
    invoke-static {v14, v8, v7, v15, v1}, Lcom/wen/fluorescence/util/PublicFuction;->getUnitRange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_12

    .line 1241
    .end local v23    # "sShowResult":Ljava/lang/String;
    .restart local v1    # "sShowResult":Ljava/lang/String;
    :cond_22
    move-object/from16 v23, v1

    .line 1241
    .end local v1    # "sShowResult":Ljava/lang/String;
    .restart local v23    # "sShowResult":Ljava/lang/String;
    :goto_12
    invoke-virtual {v6}, Lcom/wen/fluorescence/database/ItemPara;->getTarPrintMode2()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_24

    .line 1242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "  "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v15}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/ItemPara;->getTarTemplate2()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v8, v7, v15, v3}, Lcom/wen/fluorescence/util/PublicFuction;->getUnitRange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_13

    .line 1245
    .end local v23    # "sShowResult":Ljava/lang/String;
    .restart local v1    # "sShowResult":Ljava/lang/String;
    :cond_23
    move-object/from16 v23, v1

    .line 1245
    .end local v1    # "sShowResult":Ljava/lang/String;
    .restart local v23    # "sShowResult":Ljava/lang/String;
    :cond_24
    :goto_13
    iget-object v1, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvReferenceRange3:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1245
    .end local v2    # "range":Ljava/lang/String;
    goto :goto_14

    .line 1247
    .end local v23    # "sShowResult":Ljava/lang/String;
    .restart local v1    # "sShowResult":Ljava/lang/String;
    :cond_25
    move-object/from16 v23, v1

    .line 1247
    .end local v1    # "sShowResult":Ljava/lang/String;
    .restart local v23    # "sShowResult":Ljava/lang/String;
    :goto_14
    iget-object v1, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->testResultList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v1}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeFlag()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_26

    .line 1248
    iget-object v1, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->llReferenceRange:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_15

    .line 1250
    :cond_26
    iget-object v1, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->llReferenceRange:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1070
    .end local v6    # "itemPara":Lcom/wen/fluorescence/database/ItemPara;
    .end local v7    # "max":Ljava/lang/String;
    .end local v8    # "min":Ljava/lang/String;
    .end local v9    # "unit":Ljava/lang/String;
    .end local v10    # "temResultBean":Lcom/wen/fluorescence/bean/TemResultBean;
    .end local v13    # "code":I
    .end local v23    # "sShowResult":Ljava/lang/String;
    :goto_15
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v17

    const/4 v1, 0x1

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1271
    .end local v5    # "i":I
    .end local v17    # "totalTest":I
    .local v2, "totalTest":I
    :cond_27
    move/from16 v17, v2

    .line 1271
    .end local v2    # "totalTest":I
    .restart local v17    # "totalTest":I
    iget-object v1, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->cbAutoPrint:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1272
    const/4 v1, 0x0

    .line 1272
    .local v1, "i":I
    :goto_16
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 1273
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/wen/fluorescence/Thread/PrinterThread;->getPrinterThread(Landroid/content/Context;)Lcom/wen/fluorescence/Thread/PrinterThread;

    move-result-object v2

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/Thread/PrinterThread;->addPrinter(Lcom/wen/fluorescence/database/TestResult;)V

    .line 1272
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 1277
    .end local v1    # "i":I
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/wen/fluorescence/database/DBManager;->addOriResult(Lcom/wen/fluorescence/database/OriResult;)V

    .line 1278
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/wen/fluorescence/database/DBManager;->addRawData(Lcom/wen/fluorescence/database/RawData;)V

    .line 1279
    const/4 v1, 0x0

    .line 1279
    .restart local v1    # "i":I
    :goto_17
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 1280
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v2

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/database/DBManager;->addTestResult(Lcom/wen/fluorescence/database/TestResult;)V

    .line 1281
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v3}, Lcom/wen/fluorescence/Thread/LISThread;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/wen/fluorescence/Thread/LISThread;

    move-result-object v2

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/Thread/LISThread;->addTestResult(Lcom/wen/fluorescence/database/TestResult;)V

    .line 1279
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 1284
    .end local v1    # "i":I
    :cond_29
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v1

    iget-object v2, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->testResultList:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v2}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/database/DBManager;->queryTestResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1285
    .local v1, "uploadTestResult":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    move v2, v15

    .line 1285
    .local v2, "i":I
    :goto_18
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2a

    .line 1286
    move v3, v2

    .line 1287
    .local v3, "finalI":I
    const-string v5, "postRawData"

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    new-instance v10, Lcom/wen/fluorescence/Fragment/HomeFragment$18;

    invoke-direct {v10, v0, v1, v3}, Lcom/wen/fluorescence/Fragment/HomeFragment$18;-><init>(Lcom/wen/fluorescence/Fragment/HomeFragment;Ljava/util/List;I)V

    move-object v8, v11

    move-object v9, v4

    invoke-static/range {v5 .. v10}, Lcom/wen/fluorescence/net/CHRequestManager;->postRawData(Ljava/lang/Object;Landroid/content/Context;Lcom/wen/fluorescence/database/TestResult;Lcom/wen/fluorescence/database/OriResult;Lcom/wen/fluorescence/database/RawData;Lcom/wen/fluorescence/net/CallBack;)V

    .line 1296
    const-string v5, "postTestData"

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    new-instance v8, Lcom/wen/fluorescence/Fragment/HomeFragment$19;

    invoke-direct {v8, v0}, Lcom/wen/fluorescence/Fragment/HomeFragment$19;-><init>(Lcom/wen/fluorescence/Fragment/HomeFragment;)V

    invoke-static {v5, v6, v7, v8}, Lcom/wen/fluorescence/net/CHRequestManager;->postTestData(Ljava/lang/Object;Landroid/content/Context;Lcom/wen/fluorescence/database/TestResult;Lcom/wen/fluorescence/net/CallBack;)V

    .line 1285
    .end local v3    # "finalI":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 1306
    .end local v2    # "i":I
    :cond_2a
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2b

    .line 1307
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v2

    const-string v5, "EASY11_URL"

    const-string v6, "https://covid.testeasy.com.cn/prod-api/api/uploadData"

    invoke-virtual {v2, v5, v6}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1308
    .local v2, "url":Ljava/lang/String;
    nop

    .line 1308
    .local v15, "i":I
    :goto_19
    move v5, v15

    .line 1308
    .end local v15    # "i":I
    .restart local v5    # "i":I
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2b

    .line 1309
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getAppId()Ljava/lang/String;

    move-result-object v6

    .line 1310
    .local v6, "appId":Ljava/lang/String;
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v7

    .line 1311
    .local v7, "serialNumber":Ljava/lang/String;
    const-string v18, "HomeFragment"

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v20, v8

    check-cast v20, Lcom/wen/fluorescence/database/TestResult;

    const-string v21, ""

    const-string v22, ""

    const-string v23, ""

    new-instance v8, Lcom/wen/fluorescence/Fragment/HomeFragment$20;

    invoke-direct {v8, v0, v7}, Lcom/wen/fluorescence/Fragment/HomeFragment$20;-><init>(Lcom/wen/fluorescence/Fragment/HomeFragment;Ljava/lang/String;)V

    move-object/from16 v19, v2

    move-object/from16 v24, v8

    invoke-static/range {v18 .. v24}, Lcom/wen/fluorescence/net/RequestManager;->SendToCloudPlatFormEasy11(Ljava/lang/Object;Ljava/lang/String;Lcom/wen/fluorescence/database/TestResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wen/fluorescence/net/CallBack;)V

    .line 1308
    .end local v6    # "appId":Ljava/lang/String;
    .end local v7    # "serialNumber":Ljava/lang/String;
    add-int/lit8 v15, v5, 0x1

    .line 1308
    .end local v5    # "i":I
    .restart local v15    # "i":I
    goto :goto_19

    .line 1342
    .end local v2    # "url":Ljava/lang/String;
    .end local v15    # "i":I
    :cond_2b
    invoke-direct/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->setTextSerialNumber()V

    .line 1343
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v2

    if-ne v2, v3, :cond_2d

    .line 1344
    iget-object v2, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->scanDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_2c

    iget-object v2, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->etScan:Landroid/widget/EditText;

    if-eqz v2, :cond_2c

    .line 1345
    iget-object v2, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->etScan:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1347
    :cond_2c
    invoke-direct/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->showScanDialog()V

    goto :goto_1a

    .line 1349
    :cond_2d
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->detialResult:Lcom/wen/fluorescence/database/TestResult;

    .line 1350
    iget-object v2, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->etPatientNo:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1353
    :goto_1a
    invoke-static {}, Lcom/wen/fluorescence/Thread/TempTimer;->getInstance()Lcom/wen/fluorescence/Thread/TempTimer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wen/fluorescence/Thread/TempTimer;->startTempTimer()V

    .line 1354
    return-void
.end method

.method private testError()V
    .locals 2

    .line 1404
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->setViewEnable(Z)V

    .line 1405
    invoke-static {}, Lcom/wen/fluorescence/Thread/TotalTimer;->getInstance()Lcom/wen/fluorescence/Thread/TotalTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/Thread/TotalTimer;->setTimerTotalCancel()V

    .line 1406
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/util/Global;->setTestStatus(Z)V

    .line 1407
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->setCardOut()V

    .line 1408
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->detialResult:Lcom/wen/fluorescence/database/TestResult;

    .line 1409
    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->testResult:Lcom/wen/fluorescence/database/TestResult;

    .line 1410
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvCountTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1411
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvBatchNO:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1412
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvItem:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1413
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvResult:Landroid/widget/TextView;

    const v1, 0x7f0c00a6

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1414
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 421
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 422
    move-object v0, p1

    check-cast v0, Lcom/wen/fluorescence/util/FragmentCallback;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment;->callBack:Lcom/wen/fluorescence/util/FragmentCallback;

    .line 423
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

    .line 374
    const v0, 0x7f0a0033

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 375
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->initView(Landroid/view/View;)V

    .line 376
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->setViewIncident()V

    .line 377
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->init()V

    .line 378
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .line 1582
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 1583
    const-string v0, "HomeFragment"

    invoke-static {v0}, Lcom/wen/fluorescence/net/RequestManager;->cancelRequest(Ljava/lang/Object;)V

    .line 1584
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .param p1, "hidden"    # Z

    .line 407
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 408
    if-nez p1, :cond_0

    .line 409
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->init()V

    .line 411
    :cond_0
    return-void
.end method
