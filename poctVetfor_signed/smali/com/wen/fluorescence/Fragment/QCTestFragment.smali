.class public Lcom/wen/fluorescence/Fragment/QCTestFragment;
.super Landroid/support/v4/app/Fragment;
.source "QCTestFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wen/fluorescence/Fragment/QCTestFragment$QCCallback;
    }
.end annotation


# instance fields
.field private btnCardIn:Landroid/widget/Button;

.field private btnCardOut:Landroid/widget/Button;

.field private btnStartTest:Landroid/widget/Button;

.field private callBack:Lcom/wen/fluorescence/util/FragmentCallback;

.field private etTargetValue:Landroid/widget/EditText;

.field listener:Lcom/wen/fluorescence/util/MyOnClickListener;

.field private llResult:Landroid/widget/LinearLayout;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private rbLevelHight:Landroid/widget/RadioButton;

.field private rbLevelLow:Landroid/widget/RadioButton;

.field private rbQuickTest:Landroid/widget/RadioButton;

.field private rbStandardtest:Landroid/widget/RadioButton;

.field private serialNumber:Ljava/lang/String;

.field private testResult:Lcom/wen/fluorescence/database/TestResult;

.field private tvCountTime:Landroid/widget/TextView;

.field private tvItem:Landroid/widget/TextView;

.field private tvItem2:Landroid/widget/TextView;

.field private tvItem3:Landroid/widget/TextView;

.field private tvQCLogNo:Landroid/widget/TextView;

.field private tvResult:Landroid/widget/TextView;

.field private tvResult2:Landroid/widget/TextView;

.field private tvResult3:Landroid/widget/TextView;

.field private tvStatus:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 65
    new-instance v0, Lcom/wen/fluorescence/Fragment/QCTestFragment$1;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/Fragment/QCTestFragment$1;-><init>(Lcom/wen/fluorescence/Fragment/QCTestFragment;)V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->mHandler:Landroid/os/Handler;

    .line 273
    new-instance v0, Lcom/wen/fluorescence/Fragment/QCTestFragment$4;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/Fragment/QCTestFragment$4;-><init>(Lcom/wen/fluorescence/Fragment/QCTestFragment;)V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/wen/fluorescence/Fragment/QCTestFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/QCTestFragment;

    .line 51
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->testCancel()V

    return-void
.end method

.method static synthetic access$100(Lcom/wen/fluorescence/Fragment/QCTestFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/QCTestFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->setTestStatus(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/wen/fluorescence/Fragment/QCTestFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/QCTestFragment;

    .line 51
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->testError()V

    return-void
.end method

.method static synthetic access$300(Lcom/wen/fluorescence/Fragment/QCTestFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/QCTestFragment;

    .line 51
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->testComplete()V

    return-void
.end method

.method static synthetic access$400(Lcom/wen/fluorescence/Fragment/QCTestFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/QCTestFragment;

    .line 51
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->tvCountTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/wen/fluorescence/Fragment/QCTestFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/QCTestFragment;

    .line 51
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/wen/fluorescence/Fragment/QCTestFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/QCTestFragment;

    .line 51
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->startTest()V

    return-void
.end method

.method static synthetic access$700(Lcom/wen/fluorescence/Fragment/QCTestFragment;)Lcom/wen/fluorescence/database/TestResult;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/QCTestFragment;

    .line 51
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->testResult:Lcom/wen/fluorescence/database/TestResult;

    return-object v0
.end method

.method static synthetic access$800(Lcom/wen/fluorescence/Fragment/QCTestFragment;)Lcom/wen/fluorescence/util/FragmentCallback;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/QCTestFragment;

    .line 51
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->callBack:Lcom/wen/fluorescence/util/FragmentCallback;

    return-object v0
.end method

.method static synthetic access$900(Lcom/wen/fluorescence/Fragment/QCTestFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/QCTestFragment;

    .line 51
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->initHandler()V

    return-void
.end method

.method private checkSerialNumber()V
    .locals 7

    .line 333
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->serialNumber:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "strDate":Ljava/lang/String;
    const-string v1, "yyyyMMdd"

    invoke-static {v1}, Lcom/wen/fluorescence/util/DateUtils;->getNowDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 335
    .local v1, "nowDate":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wen/fluorescence/database/DBManager;->getMaxSerialNumber()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 337
    .local v2, "nextNumber":I
    new-instance v3, Lcom/wen/fluorescence/util/DateUtils;

    invoke-direct {v3}, Lcom/wen/fluorescence/util/DateUtils;-><init>()V

    .line 338
    .local v3, "du":Lcom/wen/fluorescence/util/DateUtils;
    const-string v4, "yyyyMMdd"

    invoke-static {v4}, Lcom/wen/fluorescence/util/DateUtils;->getSysemDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 339
    .local v4, "str":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Lcom/wen/fluorescence/util/DateUtils;->polishingZero(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 340
    iput-object v4, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->serialNumber:Ljava/lang/String;

    .line 342
    .end local v2    # "nextNumber":I
    .end local v3    # "du":Lcom/wen/fluorescence/util/DateUtils;
    .end local v4    # "str":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private init()V
    .locals 0

    .line 268
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->initHandler()V

    .line 269
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->setTextSerialNumber()V

    .line 270
    return-void
.end method

.method private initHandler()V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/wen/fluorescence/serialport/CommActivity;->initAVGHandler(Landroid/os/Handler;)V

    .line 299
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/wen/fluorescence/serialport/DoSerialData;->getInstance(Landroid/os/Handler;)Lcom/wen/fluorescence/serialport/DoSerialData;

    .line 300
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 222
    const v0, 0x7f08003c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->btnCardIn:Landroid/widget/Button;

    .line 223
    const v0, 0x7f08003d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->btnCardOut:Landroid/widget/Button;

    .line 224
    const v0, 0x7f080081

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->btnStartTest:Landroid/widget/Button;

    .line 225
    const v0, 0x7f08022b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->tvQCLogNo:Landroid/widget/TextView;

    .line 226
    const v0, 0x7f080209

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->tvItem:Landroid/widget/TextView;

    .line 227
    const v0, 0x7f080234

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->tvResult:Landroid/widget/TextView;

    .line 228
    const v0, 0x7f08020c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->tvItem2:Landroid/widget/TextView;

    .line 229
    const v0, 0x7f080237

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->tvResult2:Landroid/widget/TextView;

    .line 230
    const v0, 0x7f08020d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->tvItem3:Landroid/widget/TextView;

    .line 231
    const v0, 0x7f080238

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->tvResult3:Landroid/widget/TextView;

    .line 232
    const v0, 0x7f0801f4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->tvCountTime:Landroid/widget/TextView;

    .line 233
    const v0, 0x7f080246

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->tvStatus:Landroid/widget/TextView;

    .line 234
    const v0, 0x7f08017e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->rbStandardtest:Landroid/widget/RadioButton;

    .line 235
    const v0, 0x7f080178

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->rbQuickTest:Landroid/widget/RadioButton;

    .line 236
    const v0, 0x7f08016a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->rbLevelLow:Landroid/widget/RadioButton;

    .line 237
    const v0, 0x7f080169

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->rbLevelHight:Landroid/widget/RadioButton;

    .line 238
    const v0, 0x7f08012d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->llResult:Landroid/widget/LinearLayout;

    .line 239
    const v0, 0x7f0800ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->etTargetValue:Landroid/widget/EditText;

    .line 240
    return-void
.end method

.method private setTestInfo()V
    .locals 3

    .line 392
    new-instance v0, Lcom/wen/fluorescence/database/TestResult;

    invoke-direct {v0}, Lcom/wen/fluorescence/database/TestResult;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->testResult:Lcom/wen/fluorescence/database/TestResult;

    .line 393
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->testResult:Lcom/wen/fluorescence/database/TestResult;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->serialNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setSerialNumber(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->testResult:Lcom/wen/fluorescence/database/TestResult;

    const-string v1, "QC Sample"

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setSampleNumber(Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->testResult:Lcom/wen/fluorescence/database/TestResult;

    sget-object v1, Lcom/wen/fluorescence/util/PublicFuction;->arraySample:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setSimpleType(Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->testResult:Lcom/wen/fluorescence/database/TestResult;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->rbQuickTest:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setTestMode(I)V

    .line 397
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->testResult:Lcom/wen/fluorescence/database/TestResult;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->rbLevelLow:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setLevel(I)V

    .line 398
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->etTargetValue:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->testResult:Lcom/wen/fluorescence/database/TestResult;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->etTargetValue:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/database/TestResult;->setHolder1(D)V

    .line 400
    :cond_0
    return-void
.end method

.method private setTestStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "ch"    # Ljava/lang/String;
    .param p2, "en"    # Ljava/lang/String;

    .line 381
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/Global;->getLanguage()I

    move-result v0

    const v1, 0x1a00001

    if-ne v0, v1, :cond_0

    .line 382
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    :goto_0
    return-void
.end method

.method private setTextSerialNumber()V
    .locals 5

    .line 349
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/database/DBManager;->getMaxSerialNumber()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 350
    .local v0, "nextNumber":I
    new-instance v1, Lcom/wen/fluorescence/util/DateUtils;

    invoke-direct {v1}, Lcom/wen/fluorescence/util/DateUtils;-><init>()V

    .line 351
    .local v1, "du":Lcom/wen/fluorescence/util/DateUtils;
    const-string v2, "yyyyMMdd"

    invoke-static {v2}, Lcom/wen/fluorescence/util/DateUtils;->getSysemDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 352
    .local v2, "str":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Lcom/wen/fluorescence/util/DateUtils;->polishingZero(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 353
    iput-object v2, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->serialNumber:Ljava/lang/String;

    .line 354
    return-void
.end method

.method private setViewEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 358
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->rbQuickTest:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 359
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->rbStandardtest:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 360
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->rbLevelLow:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 361
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->rbLevelHight:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 362
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->etTargetValue:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 363
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/wen/fluorescence/Fragment/QCTestFragment$QCCallback;

    invoke-interface {v0, p1}, Lcom/wen/fluorescence/Fragment/QCTestFragment$QCCallback;->setTabEnable(Z)V

    .line 364
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 365
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->tvStatus:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 366
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->llResult:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 368
    :cond_0
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->llResult:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 371
    :goto_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->callBack:Lcom/wen/fluorescence/util/FragmentCallback;

    invoke-interface {v0, p1}, Lcom/wen/fluorescence/util/FragmentCallback;->setTabEnable(Z)V

    .line 372
    return-void
.end method

.method private setViewIncident()V
    .locals 3

    .line 243
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->btnCardIn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->btnCardOut:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->btnStartTest:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->rbStandardtest:Landroid/widget/RadioButton;

    new-instance v1, Lcom/wen/fluorescence/Fragment/QCTestFragment$2;

    invoke-direct {v1, p0}, Lcom/wen/fluorescence/Fragment/QCTestFragment$2;-><init>(Lcom/wen/fluorescence/Fragment/QCTestFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 254
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->rbQuickTest:Landroid/widget/RadioButton;

    new-instance v1, Lcom/wen/fluorescence/Fragment/QCTestFragment$3;

    invoke-direct {v1, p0}, Lcom/wen/fluorescence/Fragment/QCTestFragment$3;-><init>(Lcom/wen/fluorescence/Fragment/QCTestFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 262
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v0

    const-string v1, "STANDARD_MODE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getBooleanData(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->rbStandardtest:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 265
    :cond_0
    return-void
.end method

.method private startTest()V
    .locals 4

    .line 306
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/util/Global;->setTestStatus(Z)V

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->testResult:Lcom/wen/fluorescence/database/TestResult;

    .line 308
    invoke-static {}, Lcom/wen/fluorescence/Thread/TempTimer;->getInstance()Lcom/wen/fluorescence/Thread/TempTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/Thread/TempTimer;->stopTempTimer()V

    .line 309
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->checkSerialNumber()V

    .line 310
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->rbQuickTest:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/Thread/TestThread;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/Thread/TestThread;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/wen/fluorescence/Thread/TestThread;->setTestMode(I)V

    goto :goto_0

    .line 313
    :cond_0
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/Thread/TestThread;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/Thread/TestThread;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/Thread/TestThread;->setTestMode(I)V

    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 315
    .local v0, "startTime":J
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->mHandler:Landroid/os/Handler;

    invoke-static {v3}, Lcom/wen/fluorescence/Thread/StandarTimer;->getInstance(Landroid/os/Handler;)Lcom/wen/fluorescence/Thread/StandarTimer;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/wen/fluorescence/Thread/StandarTimer;->setStartTime(J)V

    .line 318
    .end local v0    # "startTime":J
    :goto_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->tvQCLogNo:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->tvItem:Landroid/widget/TextView;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    invoke-direct {p0, v2}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->setViewEnable(Z)V

    .line 321
    const-string v0, "Start Testing"

    const-string v1, "Start Testing"

    invoke-direct {p0, v0, v1}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->setTestStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/Thread/TestThread;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/Thread/TestThread;

    move-result-object v0

    const-string v1, "QC"

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/Thread/TestThread;->setSampleType(Ljava/lang/String;)V

    .line 324
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->setTestInfo()V

    .line 325
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->getReagentInfo()V

    .line 326
    return-void
.end method

.method private testCancel()V
    .locals 2

    .line 407
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->setViewEnable(Z)V

    .line 408
    invoke-static {}, Lcom/wen/fluorescence/Thread/TotalTimer;->getInstance()Lcom/wen/fluorescence/Thread/TotalTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/Thread/TotalTimer;->setTimerTotalCancel()V

    .line 409
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->setCardOut()V

    .line 410
    invoke-static {}, Lcom/wen/fluorescence/Thread/TempTimer;->getInstance()Lcom/wen/fluorescence/Thread/TempTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/Thread/TempTimer;->startTempTimer()V

    .line 411
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/util/Global;->setTestStatus(Z)V

    .line 412
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->tvCountTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->tvItem:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->tvQCLogNo:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->tvResult:Landroid/widget/TextView;

    const v1, 0x7f0c019f

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    return-void
.end method

.method private testComplete()V
    .locals 9

    .line 438
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->setViewEnable(Z)V

    .line 439
    invoke-static {}, Lcom/wen/fluorescence/Thread/TotalTimer;->getInstance()Lcom/wen/fluorescence/Thread/TotalTimer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/Thread/TotalTimer;->setTimerTotalCancel()V

    .line 440
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->setCardOut()V

    .line 441
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/util/Global;->setTestStatus(Z)V

    .line 443
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/database/DBManager;->getTestResultCount()I

    move-result v1

    .line 444
    .local v1, "totalTest":I
    const v3, 0xc350

    if-lt v1, v3, :cond_0

    .line 445
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/DBManager;->deleteMinTestResult(I)V

    .line 448
    :cond_0
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/wen/fluorescence/Thread/TestThread;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/Thread/TestThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wen/fluorescence/Thread/TestThread;->fetchRawData()Lcom/wen/fluorescence/database/RawData;

    move-result-object v3

    .line 449
    .local v3, "rawData":Lcom/wen/fluorescence/database/RawData;
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/wen/fluorescence/Thread/TestThread;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/Thread/TestThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wen/fluorescence/Thread/TestThread;->fetchOriginalData()Lcom/wen/fluorescence/database/OriResult;

    move-result-object v4

    .line 450
    .local v4, "oriResult":Lcom/wen/fluorescence/database/OriResult;
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/wen/fluorescence/Thread/TestThread;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/Thread/TestThread;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wen/fluorescence/Thread/TestThread;->getResultList()Ljava/util/List;

    move-result-object v5

    .line 453
    .local v5, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->tvQCLogNo:Landroid/widget/TextView;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getLogNo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->tvItem:Landroid/widget/TextView;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->tvResult:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v8}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v8}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v0, :cond_1

    .line 459
    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->tvItem2:Landroid/widget/TextView;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->tvResult2:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v8}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v0}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v6, 0x2

    if-le v0, v6, :cond_2

    .line 464
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->tvItem3:Landroid/widget/TextView;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->tvResult3:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v8}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    :cond_2
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/wen/fluorescence/database/DBManager;->addOriResult(Lcom/wen/fluorescence/database/OriResult;)V

    .line 470
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/wen/fluorescence/database/DBManager;->addRawData(Lcom/wen/fluorescence/database/RawData;)V

    .line 471
    nop

    .line 471
    .local v2, "i":I
    :goto_0
    move v0, v2

    .line 471
    .end local v2    # "i":I
    .local v0, "i":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 472
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v2

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v2, v6}, Lcom/wen/fluorescence/database/DBManager;->addTestResult(Lcom/wen/fluorescence/database/TestResult;)V

    .line 473
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v6}, Lcom/wen/fluorescence/Thread/LISThread;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/wen/fluorescence/Thread/LISThread;

    move-result-object v2

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v2, v6}, Lcom/wen/fluorescence/Thread/LISThread;->addTestResult(Lcom/wen/fluorescence/database/TestResult;)V

    .line 471
    add-int/lit8 v2, v0, 0x1

    .line 471
    .end local v0    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 476
    .end local v2    # "i":I
    :cond_3
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->setTextSerialNumber()V

    .line 477
    return-void
.end method

.method private testError()V
    .locals 2

    .line 423
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->setViewEnable(Z)V

    .line 424
    invoke-static {}, Lcom/wen/fluorescence/Thread/TotalTimer;->getInstance()Lcom/wen/fluorescence/Thread/TotalTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/Thread/TotalTimer;->setTimerTotalCancel()V

    .line 425
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->setCardOut()V

    .line 426
    invoke-static {}, Lcom/wen/fluorescence/Thread/TempTimer;->getInstance()Lcom/wen/fluorescence/Thread/TempTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/Thread/TempTimer;->startTempTimer()V

    .line 427
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/util/Global;->setTestStatus(Z)V

    .line 428
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->tvCountTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 429
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->tvItem:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->tvQCLogNo:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->tvResult:Landroid/widget/TextView;

    const v1, 0x7f0c00a6

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 209
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 210
    move-object v0, p1

    check-cast v0, Lcom/wen/fluorescence/util/FragmentCallback;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment;->callBack:Lcom/wen/fluorescence/util/FragmentCallback;

    .line 211
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

    .line 200
    const v0, 0x7f0a004b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 201
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->initView(Landroid/view/View;)V

    .line 202
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->setViewIncident()V

    .line 203
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->init()V

    .line 204
    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .param p1, "hidden"    # Z

    .line 215
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 216
    if-nez p1, :cond_0

    .line 217
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->init()V

    .line 219
    :cond_0
    return-void
.end method
