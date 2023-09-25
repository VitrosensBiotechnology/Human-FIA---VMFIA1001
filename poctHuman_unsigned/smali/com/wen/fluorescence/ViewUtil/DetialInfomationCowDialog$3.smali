.class Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$3;
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


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;

    .line 186
    iput-object p1, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$3;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;

    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 189
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$3;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;

    iget-object v0, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->actvCompany:Landroid/widget/AutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$3;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;

    iget-object v0, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->actvTestOperator:Landroid/widget/AutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$3;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;

    iget-object v0, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->actvNote:Landroid/widget/AutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$3;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;

    iget-object v0, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->tvBloodTime:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$3;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;

    iget-object v0, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->etSampleNumber:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$3;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;

    iget-object v0, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->actvNote:Landroid/widget/AutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$3;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;

    iget-object v0, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->spSampleStatus:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 197
    return-void
.end method
