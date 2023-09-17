.class Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$1;
.super Lcom/wen/fluorescence/util/MyOnClickListener;
.source "DetialInfomationDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->setDialogShow(Lcom/wen/fluorescence/database/TestResult;Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$DetialCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

.field final synthetic val$callback:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$DetialCallback;

.field final synthetic val$canInput:Z

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;ZLandroid/app/AlertDialog;Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$DetialCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    .line 207
    iput-object p1, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$1;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    iput-boolean p2, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$1;->val$canInput:Z

    iput-object p3, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$1;->val$dialog:Landroid/app/AlertDialog;

    iput-object p4, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$1;->val$callback:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$DetialCallback;

    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "arg0"    # Landroid/view/View;

    .line 210
    invoke-super {p0, p1}, Lcom/wen/fluorescence/util/MyOnClickListener;->onClick(Landroid/view/View;)V

    .line 211
    iget-boolean v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$1;->val$canInput:Z

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 213
    return-void

    .line 215
    :cond_0
    new-instance v0, Lcom/wen/fluorescence/database/TestResult;

    invoke-direct {v0}, Lcom/wen/fluorescence/database/TestResult;-><init>()V

    .line 217
    .local v0, "detialResult":Lcom/wen/fluorescence/database/TestResult;
    iget-object v1, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$1;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    iget-object v1, v1, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvName:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\'"

    const-string v3, "\u2019"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ";"

    const-string v3, "\uff1b"

    .line 218
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "&"

    const-string v3, "-"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, "strName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xf

    if-le v2, v3, :cond_1

    .line 220
    iget-object v2, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$1;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    invoke-static {v2}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->access$000(Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$1;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    invoke-static {v3}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->access$000(Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c00fa

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 221
    return-void

    .line 223
    :cond_1
    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setName(Ljava/lang/String;)V

    .line 224
    iget-object v2, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$1;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    iget-object v2, v2, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->etSampleNumber:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "strSampleNumber":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 226
    iget-object v3, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$1;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    invoke-static {v3}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->access$000(Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$1;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    invoke-static {v4}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->access$000(Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c014f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 227
    return-void

    .line 229
    :cond_2
    const/4 v4, 0x0

    .line 231
    .local v4, "iAge":I
    :try_start_0
    iget-object v5, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$1;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    iget-object v5, v5, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvAge:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v5}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 233
    goto :goto_0

    .line 232
    :catch_0
    move-exception v5

    .line 234
    :goto_0
    const/16 v5, 0xc8

    if-gt v4, v5, :cond_8

    if-gez v4, :cond_3

    goto/16 :goto_1

    .line 238
    :cond_3
    invoke-virtual {v0, v4}, Lcom/wen/fluorescence/database/TestResult;->setAge(I)V

    .line 239
    iget-object v5, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$1;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    iget-object v5, v5, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvSubmittingDoctor:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v5}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 240
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\'"

    const-string v7, "\u2019"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ";"

    const-string v7, "\uff1b"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "&"

    const-string v7, "-"

    .line 241
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 242
    .local v5, "strSubmittingDoctor":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v3, :cond_4

    .line 243
    iget-object v3, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$1;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    .line 244
    invoke-static {v3}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->access$000(Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;)Landroid/content/Context;

    move-result-object v3

    iget-object v6, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$1;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    invoke-static {v6}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->access$000(Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0c016e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 245
    return-void

    .line 247
    :cond_4
    invoke-virtual {v0, v5}, Lcom/wen/fluorescence/database/TestResult;->setSubmittingDoctor(Ljava/lang/String;)V

    .line 248
    iget-object v6, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$1;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    iget-object v6, v6, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvReviewer:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v6}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\'"

    const-string v8, "\u2019"

    .line 249
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ";"

    const-string v8, "\uff1b"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "&"

    const-string v8, "-"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 250
    .local v6, "strReviewer":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v3, :cond_5

    .line 251
    iget-object v3, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$1;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    invoke-static {v3}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->access$000(Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;)Landroid/content/Context;

    move-result-object v3

    iget-object v7, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$1;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    .line 252
    invoke-static {v7}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->access$000(Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0c0079

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 251
    invoke-static {v3, v7}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 253
    return-void

    .line 255
    :cond_5
    invoke-virtual {v0, v6}, Lcom/wen/fluorescence/database/TestResult;->setReviewer(Ljava/lang/String;)V

    .line 256
    iget-object v7, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$1;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    iget-object v7, v7, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->spGender:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/wen/fluorescence/database/TestResult;->setSex(I)V

    .line 257
    iget-object v7, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$1;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    iget-object v7, v7, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvPatientNumber:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v7}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\'"

    const-string v9, "\u2019"

    .line 258
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ";"

    const-string v9, "\uff1b"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "&"

    const-string v9, "-"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 257
    invoke-virtual {v0, v7}, Lcom/wen/fluorescence/database/TestResult;->setPatientNumber(Ljava/lang/String;)V

    .line 259
    iget-object v7, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$1;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    iget-object v7, v7, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvHospitalNumber:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v7}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\'"

    const-string v9, "\u2019"

    .line 260
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ";"

    const-string v9, "\uff1b"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "&"

    const-string v9, "-"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 259
    invoke-virtual {v0, v7}, Lcom/wen/fluorescence/database/TestResult;->setDoctorNumber(Ljava/lang/String;)V

    .line 261
    iget-object v7, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$1;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    iget-object v7, v7, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvBedNumber:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v7}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\'"

    const-string v9, "\u2019"

    .line 262
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ";"

    const-string v9, "\uff1b"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "&"

    const-string v9, "-"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 261
    invoke-virtual {v0, v7}, Lcom/wen/fluorescence/database/TestResult;->setBedNumber(Ljava/lang/String;)V

    .line 263
    iget-object v7, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$1;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    iget-object v7, v7, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvSubmittingDivision:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v7}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v7

    .line 264
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\'"

    const-string v9, "\u2019"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ";"

    const-string v9, "\uff1b"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "&"

    const-string v9, "-"

    .line 265
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 263
    invoke-virtual {v0, v7}, Lcom/wen/fluorescence/database/TestResult;->setSubmittingDivision(Ljava/lang/String;)V

    .line 266
    iget-object v7, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$1;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    iget-object v7, v7, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->tvSubmittingTime:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\'"

    const-string v9, "\u2019"

    .line 267
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ";"

    const-string v9, "\uff1b"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "&"

    const-string v9, "-"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 266
    invoke-virtual {v0, v7}, Lcom/wen/fluorescence/database/TestResult;->setSubmittingTime(Ljava/lang/String;)V

    .line 268
    iget-object v7, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$1;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    iget-object v7, v7, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvInspectingDoctor:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v7}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v7

    .line 269
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\'"

    const-string v9, "\u2019"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ";"

    const-string v9, "\uff1b"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "&"

    const-string v9, "-"

    .line 270
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 271
    .local v7, "strInspectingDoctor":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/wen/fluorescence/database/TestResult;->setSampleNumber(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v3, :cond_6

    .line 273
    iget-object v3, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$1;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    invoke-static {v3}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->access$000(Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;)Landroid/content/Context;

    move-result-object v3

    iget-object v8, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$1;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    .line 274
    invoke-static {v8}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->access$000(Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0c00c8

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 273
    invoke-static {v3, v8}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 275
    return-void

    .line 277
    :cond_6
    invoke-virtual {v0, v7}, Lcom/wen/fluorescence/database/TestResult;->setInspectingDoctor(Ljava/lang/String;)V

    .line 278
    iget-object v3, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$1;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    iget-object v3, v3, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->tvInspectingTime:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v8, "\'"

    const-string v9, "\u2019"

    .line 279
    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v8, ";"

    const-string v9, "\uff1b"

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "&"

    const-string v9, "-"

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 278
    invoke-virtual {v0, v3}, Lcom/wen/fluorescence/database/TestResult;->setInspectingTime(Ljava/lang/String;)V

    .line 280
    iget-object v3, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$1;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    iget-object v3, v3, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvNote:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v8, "\'"

    const-string v9, "\u2019"

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v8, ";"

    const-string v9, "\uff1b"

    .line 281
    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "&"

    const-string v9, "-"

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 280
    invoke-virtual {v0, v3}, Lcom/wen/fluorescence/database/TestResult;->setNote(Ljava/lang/String;)V

    .line 282
    iget-object v3, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$1;->val$callback:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$DetialCallback;

    if-eqz v3, :cond_7

    .line 283
    iget-object v3, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$1;->val$callback:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$DetialCallback;

    invoke-interface {v3, v0}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$DetialCallback;->getDetialResult(Lcom/wen/fluorescence/database/TestResult;)V

    .line 284
    :cond_7
    iget-object v3, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 285
    return-void

    .line 235
    .end local v5    # "strSubmittingDoctor":Ljava/lang/String;
    .end local v6    # "strReviewer":Ljava/lang/String;
    .end local v7    # "strInspectingDoctor":Ljava/lang/String;
    :cond_8
    :goto_1
    iget-object v3, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$1;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    invoke-static {v3}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->access$000(Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;)Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$1;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    invoke-static {v5}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->access$000(Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c0065

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 236
    return-void
.end method
