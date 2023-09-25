.class public Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;
.super Ljava/lang/Object;
.source "DetialInfomationCowDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$DetialCallback;
    }
.end annotation


# static fields
.field private static dialog:Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;


# instance fields
.field actvCompany:Landroid/widget/AutoCompleteTextView;

.field actvNote:Landroid/widget/AutoCompleteTextView;

.field actvTestOperator:Landroid/widget/AutoCompleteTextView;

.field btnCancel:Landroid/widget/Button;

.field btnClear:Landroid/widget/Button;

.field btnSure:Landroid/widget/Button;

.field etOrgnization:Landroid/widget/EditText;

.field etSampleNumber:Landroid/widget/EditText;

.field private mContext:Landroid/content/Context;

.field spSampleStatus:Landroid/widget/Spinner;

.field tvBloodTime:Landroid/widget/TextView;

.field tvSubmittingTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;

    .line 35
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 49
    sget-object v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->dialog:Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->dialog:Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;

    goto :goto_0

    .line 52
    :cond_0
    sget-object v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->dialog:Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->setContext(Landroid/content/Context;)V

    .line 54
    :goto_0
    sget-object v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->dialog:Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;

    return-object v0
.end method

.method private setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    iput-object p1, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method private setUpTestResultforUI(Lcom/wen/fluorescence/database/TestResult;)V
    .locals 4
    .param p1, "lastResult"    # Lcom/wen/fluorescence/database/TestResult;

    .line 216
    if-nez p1, :cond_0

    .line 217
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->tvBloodTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getInspectingTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->tvSubmittingTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getSubmittingTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->actvCompany:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getSubmittingDivision()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->actvTestOperator:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->actvNote:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getNote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "sampleStatus":[Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v2, v0, v1

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getHolder5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    iget-object v2, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->spSampleStatus:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 227
    :cond_1
    iget-object v1, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->spSampleStatus:Landroid/widget/Spinner;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 229
    :goto_0
    return-void
.end method


# virtual methods
.method public setDialogShow(Lcom/wen/fluorescence/database/TestResult;Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$DetialCallback;Z)V
    .locals 17
    .param p1, "lastResult"    # Lcom/wen/fluorescence/database/TestResult;
    .param p2, "callback"    # Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$DetialCallback;
    .param p3, "canInput"    # Z

    move-object/from16 v0, p0

    .line 79
    move/from16 v1, p3

    iget-object v2, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0023

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 80
    .local v2, "view":Landroid/view/View;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 81
    .local v3, "dialog":Landroid/app/AlertDialog;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 82
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 83
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog;->setContentView(Landroid/view/View;)V

    .line 84
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x20008

    invoke-virtual {v4, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 85
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x12

    invoke-virtual {v4, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 86
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 87
    .local v4, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 88
    .local v5, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v6, 0x11

    invoke-virtual {v4, v6}, Landroid/view/Window;->setGravity(I)V

    .line 89
    const/4 v6, 0x6

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 90
    const/16 v6, 0x320

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 91
    const/16 v6, 0x1b8

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 92
    invoke-virtual {v4, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 96
    const v6, 0x7f08001c

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/AutoCompleteTextView;

    iput-object v6, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->actvCompany:Landroid/widget/AutoCompleteTextView;

    .line 97
    const v6, 0x7f080028

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/AutoCompleteTextView;

    iput-object v6, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->actvTestOperator:Landroid/widget/AutoCompleteTextView;

    .line 98
    const v6, 0x7f080021

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/AutoCompleteTextView;

    iput-object v6, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->actvNote:Landroid/widget/AutoCompleteTextView;

    .line 99
    const v6, 0x7f0801ef

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->tvBloodTime:Landroid/widget/TextView;

    .line 100
    const v6, 0x7f080249

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->tvSubmittingTime:Landroid/widget/TextView;

    .line 101
    const v6, 0x7f0801c4

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->spSampleStatus:Landroid/widget/Spinner;

    .line 102
    const v6, 0x7f0800e5

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->etSampleNumber:Landroid/widget/EditText;

    .line 103
    const v6, 0x7f0800da

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->etOrgnization:Landroid/widget/EditText;

    .line 105
    const v6, 0x7f080089

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->btnSure:Landroid/widget/Button;

    .line 106
    const v6, 0x7f080040

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->btnClear:Landroid/widget/Button;

    .line 107
    const v6, 0x7f08003b

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->btnCancel:Landroid/widget/Button;

    .line 110
    iget-object v6, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v6

    const-string v7, "submittingDivision"

    .line 111
    invoke-virtual {v6, v7}, Lcom/wen/fluorescence/database/DBManager;->queryGivenFieldDistinceInResult(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 112
    .local v6, "list_submittingDivision":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v7

    const-string v8, "name"

    .line 113
    invoke-virtual {v7, v8}, Lcom/wen/fluorescence/database/DBManager;->queryGivenFieldDistinceInResult(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 114
    .local v7, "list_name":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v8, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v8

    const-string v9, "note"

    .line 115
    invoke-virtual {v8, v9}, Lcom/wen/fluorescence/database/DBManager;->queryGivenFieldDistinceInResult(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 116
    .local v8, "list_note":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v9, Landroid/widget/ArrayAdapter;

    iget-object v10, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->mContext:Landroid/content/Context;

    const v11, 0x109000a

    invoke-direct {v9, v10, v11, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 119
    .local v9, "adapterSubmittingDivision":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v10, Landroid/widget/ArrayAdapter;

    iget-object v12, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->mContext:Landroid/content/Context;

    invoke-direct {v10, v12, v11, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 122
    .local v10, "adapterName":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v12, Landroid/widget/ArrayAdapter;

    iget-object v13, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->mContext:Landroid/content/Context;

    invoke-direct {v12, v13, v11, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    move-object v11, v12

    .line 125
    .local v11, "adapterNote":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v12, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->actvNote:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v12, v11}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 126
    iget-object v12, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->actvCompany:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v12, v9}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 127
    iget-object v12, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->actvTestOperator:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v12, v10}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    iget-object v12, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->etOrgnization:Landroid/widget/EditText;

    iget-object v13, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v13

    const-string v14, "OrganizationFragment"

    const-string v15, ""

    invoke-virtual {v13, v14, v15}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v12, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->etSampleNumber:Landroid/widget/EditText;

    invoke-virtual/range {p1 .. p1}, Lcom/wen/fluorescence/database/TestResult;->getSampleNumber()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 132
    new-instance v12, Landroid/widget/ArrayAdapter;

    iget-object v13, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->mContext:Landroid/content/Context;

    iget-object v14, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->mContext:Landroid/content/Context;

    .line 133
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f020007

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    const v15, 0x7f0a0057

    move-object/from16 v16, v2

    const v2, 0x7f0801a3

    .line 133
    .end local v2    # "view":Landroid/view/View;
    .local v16, "view":Landroid/view/View;
    invoke-direct {v12, v13, v15, v2, v14}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    move-object v2, v12

    .line 134
    .local v2, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v12, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->spSampleStatus:Landroid/widget/Spinner;

    invoke-virtual {v12, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 136
    if-eqz p1, :cond_0

    .line 137
    invoke-direct/range {p0 .. p1}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->setUpTestResultforUI(Lcom/wen/fluorescence/database/TestResult;)V

    .line 140
    :cond_0
    iget-object v13, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->tvBloodTime:Landroid/widget/TextView;

    new-instance v14, Lcom/wen/fluorescence/ViewUtil/DateTimerPickerListener;

    iget-object v15, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->mContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Lcom/wen/fluorescence/ViewUtil/DateTimerPickerListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v13, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->tvSubmittingTime:Landroid/widget/TextView;

    new-instance v14, Lcom/wen/fluorescence/ViewUtil/DateTimerPickerListener;

    iget-object v15, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->mContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Lcom/wen/fluorescence/ViewUtil/DateTimerPickerListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v13, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->btnSure:Landroid/widget/Button;

    new-instance v14, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$1;

    move-object/from16 v15, p2

    invoke-direct {v14, v0, v1, v3, v15}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$1;-><init>(Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;ZLandroid/app/AlertDialog;Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$DetialCallback;)V

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v13, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->btnCancel:Landroid/widget/Button;

    new-instance v14, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$2;

    invoke-direct {v14, v0, v3}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$2;-><init>(Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;Landroid/app/AlertDialog;)V

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v13, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->btnClear:Landroid/widget/Button;

    new-instance v14, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$3;

    invoke-direct {v14, v0}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$3;-><init>(Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;)V

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    if-nez v1, :cond_1

    .line 201
    iget-object v13, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->actvCompany:Landroid/widget/AutoCompleteTextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/AutoCompleteTextView;->setEnabled(Z)V

    .line 202
    iget-object v13, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->actvTestOperator:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v13, v14}, Landroid/widget/AutoCompleteTextView;->setEnabled(Z)V

    .line 203
    iget-object v13, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->actvNote:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v13, v14}, Landroid/widget/AutoCompleteTextView;->setEnabled(Z)V

    .line 204
    iget-object v13, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->tvBloodTime:Landroid/widget/TextView;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 205
    iget-object v13, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->tvSubmittingTime:Landroid/widget/TextView;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 206
    iget-object v13, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->spSampleStatus:Landroid/widget/Spinner;

    invoke-virtual {v13, v14}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 207
    iget-object v13, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->etSampleNumber:Landroid/widget/EditText;

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 208
    iget-object v13, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->btnCancel:Landroid/widget/Button;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setVisibility(I)V

    .line 209
    iget-object v13, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->btnClear:Landroid/widget/Button;

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setVisibility(I)V

    .line 210
    const-string v13, "ta"

    const-string v14, "====\u53ea\u8bfb\u7248\u672c."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_1
    return-void
.end method
