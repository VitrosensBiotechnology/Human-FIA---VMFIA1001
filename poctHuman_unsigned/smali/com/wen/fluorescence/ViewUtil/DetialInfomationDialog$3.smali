.class Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$3;
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


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    .line 293
    iput-object p1, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$3;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 296
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$3;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    iget-object v0, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvName:Landroid/widget/AutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$3;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    iget-object v0, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvAge:Landroid/widget/AutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$3;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    iget-object v0, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvBedNumber:Landroid/widget/AutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$3;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    iget-object v0, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvPatientNumber:Landroid/widget/AutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$3;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    iget-object v0, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvHospitalNumber:Landroid/widget/AutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$3;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    iget-object v0, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvSubmittingDivision:Landroid/widget/AutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$3;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    iget-object v0, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvSubmittingDoctor:Landroid/widget/AutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$3;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    iget-object v0, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->tvSubmittingTime:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$3;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    iget-object v0, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvReviewer:Landroid/widget/AutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$3;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    iget-object v0, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvInspectingDoctor:Landroid/widget/AutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$3;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    iget-object v0, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->tvInspectingTime:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$3;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    iget-object v0, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->actvNote:Landroid/widget/AutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$3;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    iget-object v0, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->spGender:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 309
    return-void
.end method
