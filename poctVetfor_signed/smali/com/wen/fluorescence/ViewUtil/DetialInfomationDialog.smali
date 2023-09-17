.class public Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;
.super Ljava/lang/Object;
.source "DetialInfomationDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$DetialCallback;
    }
.end annotation


# static fields
.field private static dialog:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;


# instance fields
.field private SampleCount:I

.field actvAge:Landroid/widget/AutoCompleteTextView;

.field actvBedNumber:Landroid/widget/AutoCompleteTextView;

.field actvHospitalNumber:Landroid/widget/AutoCompleteTextView;

.field actvInspectingDoctor:Landroid/widget/AutoCompleteTextView;

.field actvName:Landroid/widget/AutoCompleteTextView;

.field actvNote:Landroid/widget/AutoCompleteTextView;

.field actvPatientNumber:Landroid/widget/AutoCompleteTextView;

.field actvReviewer:Landroid/widget/AutoCompleteTextView;

.field actvSubmittingDivision:Landroid/widget/AutoCompleteTextView;

.field actvSubmittingDoctor:Landroid/widget/AutoCompleteTextView;

.field btnCancel:Landroid/widget/Button;

.field btnClear:Landroid/widget/Button;

.field btnLIS:Landroid/widget/Button;

.field btnSure:Landroid/widget/Button;

.field etOrgnization:Landroid/widget/EditText;

.field etSampleNumber:Landroid/widget/EditText;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field spGender:Landroid/widget/Spinner;

.field tvInspectingTime:Landroid/widget/TextView;

.field tvSubmittingTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->SampleCount:I

    .line 351
    new-instance v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$5;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$5;-><init>(Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;)V

    iput-object v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->mHandler:Landroid/os/Handler;

    .line 46
    iput-object p1, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    .line 37
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$108(Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;)I
    .locals 2
    .param p0, "x0"    # Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    .line 37
    iget v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->SampleCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->SampleCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    .line 37
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;Lcom/wen/fluorescence/database/TestResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;
    .param p1, "x1"    # Lcom/wen/fluorescence/database/TestResult;

    .line 37
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->setUpTestResultforUI(Lcom/wen/fluorescence/database/TestResult;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 54
    sget-object v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->dialog:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->dialog:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    goto :goto_0

    .line 57
    :cond_0
    sget-object v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->dialog:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->setContext(Landroid/content/Context;)V

    .line 59
    :goto_0
    sget-object v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->dialog:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    return-object v0
.end method

.method private setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    iput-object p1, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method

.method private setUpTestResultforUI(Lcom/wen/fluorescence/database/TestResult;)V
    .locals 3
    .param p1, "lastResult"    # Lcom/wen/fluorescence/database/TestResult;

    .line 382
    if-nez p1, :cond_0

    .line 383
    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->tvSubmittingTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getSubmittingTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->tvInspectingTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getInspectingTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvName:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvAge:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getAge()I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getAge()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvPatientNumber:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getPatientNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvHospitalNumber:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getDoctorNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvBedNumber:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getBedNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvNote:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getNote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->spGender:Landroid/widget/Spinner;

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getSex()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 393
    const-string v0, "as"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastResult.getSex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getSex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvSubmittingDivision:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getSubmittingDivision()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvSubmittingDoctor:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getSubmittingDoctor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvInspectingDoctor:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getInspectingDoctor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvReviewer:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getReviewer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    return-void
.end method


# virtual methods
.method public setDialogShow(Lcom/wen/fluorescence/database/TestResult;Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$DetialCallback;Z)V
    .locals 29
    .param p1, "lastResult"    # Lcom/wen/fluorescence/database/TestResult;
    .param p2, "callback"    # Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$DetialCallback;
    .param p3, "canInput"    # Z

    move-object/from16 v0, p0

    .line 91
    move/from16 v1, p3

    const/4 v2, 0x0

    iput v2, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->SampleCount:I

    .line 92
    iget-object v3, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0034

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 93
    .local v3, "view":Landroid/view/View;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 102
    .local v4, "dialog":Landroid/app/AlertDialog;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 103
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 104
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog;->setContentView(Landroid/view/View;)V

    .line 105
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const v6, 0x20008

    invoke-virtual {v5, v6}, Landroid/view/Window;->clearFlags(I)V

    .line 106
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x12

    invoke-virtual {v5, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 107
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 108
    .local v5, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 109
    .local v6, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v7, 0x11

    invoke-virtual {v5, v7}, Landroid/view/Window;->setGravity(I)V

    .line 110
    const/4 v7, 0x6

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 111
    const/16 v7, 0x384

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 112
    const/16 v7, 0x208

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 113
    invoke-virtual {v5, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 115
    const v7, 0x7f080020

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/AutoCompleteTextView;

    iput-object v7, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvName:Landroid/widget/AutoCompleteTextView;

    .line 116
    const v7, 0x7f08001a

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/AutoCompleteTextView;

    iput-object v7, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvAge:Landroid/widget/AutoCompleteTextView;

    .line 117
    const v7, 0x7f08001b

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/AutoCompleteTextView;

    iput-object v7, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvBedNumber:Landroid/widget/AutoCompleteTextView;

    .line 118
    const v7, 0x7f080023

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/AutoCompleteTextView;

    iput-object v7, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvPatientNumber:Landroid/widget/AutoCompleteTextView;

    .line 119
    const v7, 0x7f08001d

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/AutoCompleteTextView;

    iput-object v7, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvHospitalNumber:Landroid/widget/AutoCompleteTextView;

    .line 120
    const v7, 0x7f080026

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/AutoCompleteTextView;

    iput-object v7, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvSubmittingDivision:Landroid/widget/AutoCompleteTextView;

    .line 121
    const v7, 0x7f080027

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/AutoCompleteTextView;

    iput-object v7, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvSubmittingDoctor:Landroid/widget/AutoCompleteTextView;

    .line 122
    const v7, 0x7f080249

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->tvSubmittingTime:Landroid/widget/TextView;

    .line 123
    const v7, 0x7f080024

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/AutoCompleteTextView;

    iput-object v7, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvReviewer:Landroid/widget/AutoCompleteTextView;

    .line 124
    const v7, 0x7f08001e

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/AutoCompleteTextView;

    iput-object v7, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvInspectingDoctor:Landroid/widget/AutoCompleteTextView;

    .line 125
    const v7, 0x7f080203

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->tvInspectingTime:Landroid/widget/TextView;

    .line 126
    const v7, 0x7f080021

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/AutoCompleteTextView;

    iput-object v7, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvNote:Landroid/widget/AutoCompleteTextView;

    .line 127
    const v7, 0x7f0801bd

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    iput-object v7, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->spGender:Landroid/widget/Spinner;

    .line 128
    const v7, 0x7f0800e5

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->etSampleNumber:Landroid/widget/EditText;

    .line 129
    const v7, 0x7f0800da

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->etOrgnization:Landroid/widget/EditText;

    .line 131
    const v7, 0x7f080089

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->btnSure:Landroid/widget/Button;

    .line 132
    const v7, 0x7f080040

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->btnClear:Landroid/widget/Button;

    .line 133
    const v7, 0x7f08003b

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->btnCancel:Landroid/widget/Button;

    .line 134
    const v7, 0x7f08005b

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->btnLIS:Landroid/widget/Button;

    .line 136
    iget-object v7, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->etSampleNumber:Landroid/widget/EditText;

    invoke-virtual/range {p1 .. p1}, Lcom/wen/fluorescence/database/TestResult;->getSampleNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v7, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v7

    const-string v8, "patientNumber"

    .line 140
    invoke-virtual {v7, v8}, Lcom/wen/fluorescence/database/DBManager;->queryGivenFieldDistinceInResult(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 141
    .local v7, "list_patientNumber":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v8, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v8

    const-string v9, "doctorNumber"

    .line 142
    invoke-virtual {v8, v9}, Lcom/wen/fluorescence/database/DBManager;->queryGivenFieldDistinceInResult(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 143
    .local v8, "list_doctorNumber":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v9, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v9

    const-string v10, "bedNumber"

    .line 144
    invoke-virtual {v9, v10}, Lcom/wen/fluorescence/database/DBManager;->queryGivenFieldDistinceInResult(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 145
    .local v9, "list_bedNumber":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v10

    const-string v11, "submittingDivision"

    .line 146
    invoke-virtual {v10, v11}, Lcom/wen/fluorescence/database/DBManager;->queryGivenFieldDistinceInResult(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 147
    .local v10, "list_submittingDivision":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v11, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v11

    const-string v12, "submittingDoctor"

    .line 148
    invoke-virtual {v11, v12}, Lcom/wen/fluorescence/database/DBManager;->queryGivenFieldDistinceInResult(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 149
    .local v11, "list_submittingDoctor":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v12, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v12

    const-string v13, "inspectingDoctor"

    .line 150
    invoke-virtual {v12, v13}, Lcom/wen/fluorescence/database/DBManager;->queryGivenFieldDistinceInResult(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 151
    .local v12, "list_inspectingDoctor":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v13, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v13

    const-string v14, "reviewer"

    .line 152
    invoke-virtual {v13, v14}, Lcom/wen/fluorescence/database/DBManager;->queryGivenFieldDistinceInResult(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 153
    .local v13, "list_reviewer":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v14, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v14

    const-string v15, "name"

    .line 154
    invoke-virtual {v14, v15}, Lcom/wen/fluorescence/database/DBManager;->queryGivenFieldDistinceInResult(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 155
    .local v14, "list_name":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v15, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v15

    const-string v2, "note"

    .line 156
    invoke-virtual {v15, v2}, Lcom/wen/fluorescence/database/DBManager;->queryGivenFieldDistinceInResult(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 157
    .local v2, "list_note":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v15, Landroid/widget/ArrayAdapter;

    move-object/from16 v16, v3

    iget-object v3, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->mContext:Landroid/content/Context;

    .line 157
    .end local v3    # "view":Landroid/view/View;
    .local v16, "view":Landroid/view/View;
    move-object/from16 v17, v5

    const v5, 0x109000a

    .line 157
    .end local v5    # "dialogWindow":Landroid/view/Window;
    .local v17, "dialogWindow":Landroid/view/Window;
    invoke-direct {v15, v3, v5, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    move-object v3, v15

    .line 160
    .local v3, "adapterPatientNumber":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v15, Landroid/widget/ArrayAdapter;

    move-object/from16 v18, v6

    iget-object v6, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->mContext:Landroid/content/Context;

    .line 160
    .end local v6    # "lp":Landroid/view/WindowManager$LayoutParams;
    .local v18, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {v15, v6, v5, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    move-object v6, v15

    .line 163
    .local v6, "adapterDoctorNumber":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v15, Landroid/widget/ArrayAdapter;

    move-object/from16 v19, v7

    iget-object v7, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->mContext:Landroid/content/Context;

    .line 163
    .end local v7    # "list_patientNumber":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v19, "list_patientNumber":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v15, v7, v5, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    move-object v7, v15

    .line 166
    .local v7, "adapterBedNumber":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v15, Landroid/widget/ArrayAdapter;

    move-object/from16 v20, v8

    iget-object v8, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->mContext:Landroid/content/Context;

    .line 166
    .end local v8    # "list_doctorNumber":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v20, "list_doctorNumber":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v15, v8, v5, v10}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    move-object v8, v15

    .line 169
    .local v8, "adapterSubmittingDivision":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v15, Landroid/widget/ArrayAdapter;

    move-object/from16 v21, v9

    iget-object v9, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->mContext:Landroid/content/Context;

    .line 169
    .end local v9    # "list_bedNumber":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v21, "list_bedNumber":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v15, v9, v5, v11}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    move-object v9, v15

    .line 172
    .local v9, "adapterSubmittingDoctor":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v15, Landroid/widget/ArrayAdapter;

    move-object/from16 v22, v10

    iget-object v10, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->mContext:Landroid/content/Context;

    .line 172
    .end local v10    # "list_submittingDivision":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v22, "list_submittingDivision":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v15, v10, v5, v12}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    move-object v10, v15

    .line 175
    .local v10, "adapterInspectingDoctor":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v15, Landroid/widget/ArrayAdapter;

    move-object/from16 v23, v11

    iget-object v11, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->mContext:Landroid/content/Context;

    .line 175
    .end local v11    # "list_submittingDoctor":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v23, "list_submittingDoctor":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v15, v11, v5, v13}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    move-object v11, v15

    .line 178
    .local v11, "adapterReviewer":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v15, Landroid/widget/ArrayAdapter;

    move-object/from16 v24, v12

    iget-object v12, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->mContext:Landroid/content/Context;

    .line 178
    .end local v12    # "list_inspectingDoctor":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v24, "list_inspectingDoctor":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v15, v12, v5, v14}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    move-object v12, v15

    .line 181
    .local v12, "adapterName":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v15, Landroid/widget/ArrayAdapter;

    move-object/from16 v25, v13

    iget-object v13, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->mContext:Landroid/content/Context;

    .line 181
    .end local v13    # "list_reviewer":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v25, "list_reviewer":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v15, v13, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    move-object v5, v15

    .line 184
    .local v5, "adapterNote":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v13, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvName:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v13, v12}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 185
    iget-object v13, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvNote:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v13, v5}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 186
    iget-object v13, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvHospitalNumber:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v13, v6}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 187
    iget-object v13, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvPatientNumber:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v13, v3}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 188
    iget-object v13, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvBedNumber:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v13, v7}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 189
    iget-object v13, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvSubmittingDoctor:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v13, v9}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 190
    iget-object v13, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvSubmittingDivision:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v13, v8}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 191
    iget-object v13, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvReviewer:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v13, v11}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 192
    iget-object v13, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvInspectingDoctor:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v13, v10}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 194
    iget-object v13, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->etOrgnization:Landroid/widget/EditText;

    iget-object v15, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v15

    move-object/from16 v26, v2

    const-string v2, "OrganizationFragment"

    .line 194
    .end local v2    # "list_note":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v26, "list_note":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v27, v3

    const-string v3, ""

    .line 194
    .end local v3    # "adapterPatientNumber":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .local v27, "adapterPatientNumber":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v15, v2, v3}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 197
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->mContext:Landroid/content/Context;

    iget-object v13, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->mContext:Landroid/content/Context;

    .line 198
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v15, 0x7f020006

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    const v15, 0x7f0a0057

    move-object/from16 v28, v5

    const v5, 0x7f0801a3

    .line 198
    .end local v5    # "adapterNote":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .local v28, "adapterNote":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-direct {v2, v3, v15, v5, v13}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 199
    .local v2, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v3, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->spGender:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 201
    if-eqz p1, :cond_0

    .line 202
    invoke-direct/range {p0 .. p1}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->setUpTestResultforUI(Lcom/wen/fluorescence/database/TestResult;)V

    .line 205
    :cond_0
    iget-object v5, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->tvSubmittingTime:Landroid/widget/TextView;

    new-instance v13, Lcom/wen/fluorescence/ViewUtil/DateTimerPickerListener;

    iget-object v15, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->mContext:Landroid/content/Context;

    invoke-direct {v13, v15}, Lcom/wen/fluorescence/ViewUtil/DateTimerPickerListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v5, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->tvInspectingTime:Landroid/widget/TextView;

    new-instance v13, Lcom/wen/fluorescence/ViewUtil/DateTimerPickerListener;

    iget-object v15, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->mContext:Landroid/content/Context;

    invoke-direct {v13, v15}, Lcom/wen/fluorescence/ViewUtil/DateTimerPickerListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v5, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->btnSure:Landroid/widget/Button;

    new-instance v13, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$1;

    move-object/from16 v15, p2

    invoke-direct {v13, v0, v1, v4, v15}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$1;-><init>(Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;ZLandroid/app/AlertDialog;Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$DetialCallback;)V

    invoke-virtual {v5, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object v5, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->btnCancel:Landroid/widget/Button;

    new-instance v13, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$2;

    invoke-direct {v13, v0, v4}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$2;-><init>(Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;Landroid/app/AlertDialog;)V

    invoke-virtual {v5, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iget-object v5, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->btnClear:Landroid/widget/Button;

    new-instance v13, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$3;

    invoke-direct {v13, v0}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$3;-><init>(Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;)V

    invoke-virtual {v5, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    iget-object v5, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->btnLIS:Landroid/widget/Button;

    new-instance v13, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$4;

    invoke-direct {v13, v0}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$4;-><init>(Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;)V

    invoke-virtual {v5, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    iget-object v5, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->btnLIS:Landroid/widget/Button;

    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 329
    if-nez v1, :cond_1

    .line 330
    iget-object v5, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvName:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v5, v13}, Landroid/widget/AutoCompleteTextView;->setEnabled(Z)V

    .line 331
    iget-object v5, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvAge:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v5, v13}, Landroid/widget/AutoCompleteTextView;->setEnabled(Z)V

    .line 332
    iget-object v5, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvBedNumber:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v5, v13}, Landroid/widget/AutoCompleteTextView;->setEnabled(Z)V

    .line 333
    iget-object v5, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvPatientNumber:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v5, v13}, Landroid/widget/AutoCompleteTextView;->setEnabled(Z)V

    .line 334
    iget-object v5, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvHospitalNumber:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v5, v13}, Landroid/widget/AutoCompleteTextView;->setEnabled(Z)V

    .line 335
    iget-object v5, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvSubmittingDivision:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v5, v13}, Landroid/widget/AutoCompleteTextView;->setEnabled(Z)V

    .line 336
    iget-object v5, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvSubmittingDoctor:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v5, v13}, Landroid/widget/AutoCompleteTextView;->setEnabled(Z)V

    .line 337
    iget-object v5, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->tvSubmittingTime:Landroid/widget/TextView;

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 338
    iget-object v5, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvReviewer:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v5, v13}, Landroid/widget/AutoCompleteTextView;->setEnabled(Z)V

    .line 339
    iget-object v5, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvInspectingDoctor:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v5, v13}, Landroid/widget/AutoCompleteTextView;->setEnabled(Z)V

    .line 340
    iget-object v5, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->tvInspectingTime:Landroid/widget/TextView;

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 341
    iget-object v5, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvNote:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v5, v13}, Landroid/widget/AutoCompleteTextView;->setEnabled(Z)V

    .line 342
    iget-object v5, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->spGender:Landroid/widget/Spinner;

    invoke-virtual {v5, v13}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 343
    iget-object v5, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->etSampleNumber:Landroid/widget/EditText;

    invoke-virtual {v5, v13}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 344
    iget-object v5, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->btnCancel:Landroid/widget/Button;

    const/16 v13, 0x8

    invoke-virtual {v5, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 345
    iget-object v5, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->btnClear:Landroid/widget/Button;

    invoke-virtual {v5, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 346
    iget-object v5, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->btnLIS:Landroid/widget/Button;

    invoke-virtual {v5, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 347
    const-string v5, "ta"

    const-string v13, "====\u53ea\u8bfb\u7248\u672c."

    invoke-static {v5, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_1
    return-void
.end method
