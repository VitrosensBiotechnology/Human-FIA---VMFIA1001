.class Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$1;
.super Lcom/wen/fluorescence/util/MyOnClickListener;
.source "DetialInfomationCowDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->setDialogShow(Lcom/wen/fluorescence/database/TestResult;Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$DetialCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;

.field final synthetic val$callback:Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$DetialCallback;

.field final synthetic val$canInput:Z

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;ZLandroid/app/AlertDialog;Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$DetialCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;

    .line 142
    iput-object p1, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$1;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;

    iput-boolean p2, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$1;->val$canInput:Z

    iput-object p3, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$1;->val$dialog:Landroid/app/AlertDialog;

    iput-object p4, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$1;->val$callback:Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$DetialCallback;

    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .line 145
    invoke-super {p0, p1}, Lcom/wen/fluorescence/util/MyOnClickListener;->onClick(Landroid/view/View;)V

    .line 146
    iget-boolean v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$1;->val$canInput:Z

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 148
    return-void

    .line 150
    :cond_0
    new-instance v0, Lcom/wen/fluorescence/database/TestResult;

    invoke-direct {v0}, Lcom/wen/fluorescence/database/TestResult;-><init>()V

    .line 152
    .local v0, "detialResult":Lcom/wen/fluorescence/database/TestResult;
    iget-object v1, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$1;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;

    iget-object v1, v1, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->actvTestOperator:Landroid/widget/AutoCompleteTextView;

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

    .line 153
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "&"

    const-string v3, "-"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "strName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xf

    if-le v2, v3, :cond_1

    .line 155
    iget-object v2, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$1;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;

    invoke-static {v2}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->access$000(Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$1;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;

    invoke-static {v3}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->access$000(Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c00fa

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 156
    return-void

    .line 158
    :cond_1
    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setName(Ljava/lang/String;)V

    .line 159
    iget-object v2, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$1;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;

    iget-object v2, v2, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->etSampleNumber:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "strSampleNumber":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 161
    iget-object v3, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$1;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;

    invoke-static {v3}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->access$000(Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$1;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;

    invoke-static {v4}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->access$000(Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c014f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 162
    return-void

    .line 164
    :cond_2
    invoke-virtual {v0, v2}, Lcom/wen/fluorescence/database/TestResult;->setSampleNumber(Ljava/lang/String;)V

    .line 165
    iget-object v3, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$1;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;

    iget-object v3, v3, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->actvCompany:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 166
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\'"

    const-string v5, "\u2019"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ";"

    const-string v5, "\uff1b"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "&"

    const-string v5, "-"

    .line 167
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 165
    invoke-virtual {v0, v3}, Lcom/wen/fluorescence/database/TestResult;->setSubmittingDivision(Ljava/lang/String;)V

    .line 168
    iget-object v3, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$1;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;

    iget-object v3, v3, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->actvNote:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\'"

    const-string v5, "\u2019"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ";"

    const-string v5, "\uff1b"

    .line 169
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "&"

    const-string v5, "-"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 168
    invoke-virtual {v0, v3}, Lcom/wen/fluorescence/database/TestResult;->setNote(Ljava/lang/String;)V

    .line 170
    iget-object v3, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$1;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;

    iget-object v3, v3, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->tvSubmittingTime:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\'"

    const-string v5, "\u2019"

    .line 171
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ";"

    const-string v5, "\uff1b"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "&"

    const-string v5, "-"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 170
    invoke-virtual {v0, v3}, Lcom/wen/fluorescence/database/TestResult;->setSubmittingTime(Ljava/lang/String;)V

    .line 172
    iget-object v3, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$1;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;

    iget-object v3, v3, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->tvBloodTime:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\'"

    const-string v5, "\u2019"

    .line 173
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ";"

    const-string v5, "\uff1b"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "&"

    const-string v5, "-"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 172
    invoke-virtual {v0, v3}, Lcom/wen/fluorescence/database/TestResult;->setInspectingTime(Ljava/lang/String;)V

    .line 174
    iget-object v3, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$1;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;

    iget-object v3, v3, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->spSampleStatus:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/wen/fluorescence/database/TestResult;->setHolder5(Ljava/lang/String;)V

    .line 175
    iget-object v3, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$1;->val$callback:Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$DetialCallback;

    if-eqz v3, :cond_3

    .line 176
    iget-object v3, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$1;->val$callback:Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$DetialCallback;

    invoke-interface {v3, v0}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$DetialCallback;->getDetialResult(Lcom/wen/fluorescence/database/TestResult;)V

    .line 177
    :cond_3
    iget-object v3, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 178
    return-void
.end method
