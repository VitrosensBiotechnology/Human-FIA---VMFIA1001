.class Lcom/wen/fluorescence/Fragment/HistoryFragment$8;
.super Lcom/wen/fluorescence/util/MyOnClickListener;
.source "HistoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/HistoryFragment;->query()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

.field final synthetic val$actOperator:Landroid/widget/AutoCompleteTextView;

.field final synthetic val$actvName:Landroid/widget/AutoCompleteTextView;

.field final synthetic val$actvPatientNo:Landroid/widget/AutoCompleteTextView;

.field final synthetic val$actvSampleNumber:Landroid/widget/AutoCompleteTextView;

.field final synthetic val$tvTimeFrom:Landroid/widget/TextView;

.field final synthetic val$tvTimeTo:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/HistoryFragment;Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/HistoryFragment;

    .line 612
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$8;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    iput-object p2, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$8;->val$actOperator:Landroid/widget/AutoCompleteTextView;

    iput-object p3, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$8;->val$actvPatientNo:Landroid/widget/AutoCompleteTextView;

    iput-object p4, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$8;->val$actvSampleNumber:Landroid/widget/AutoCompleteTextView;

    iput-object p5, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$8;->val$actvName:Landroid/widget/AutoCompleteTextView;

    iput-object p6, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$8;->val$tvTimeFrom:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$8;->val$tvTimeTo:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .line 615
    invoke-super {p0, p1}, Lcom/wen/fluorescence/util/MyOnClickListener;->onClick(Landroid/view/View;)V

    .line 616
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$8;->val$actOperator:Landroid/widget/AutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$8;->val$actvPatientNo:Landroid/widget/AutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$8;->val$actvSampleNumber:Landroid/widget/AutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 619
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$8;->val$actvName:Landroid/widget/AutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 620
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$8;->val$tvTimeFrom:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$8;->val$tvTimeTo:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 622
    return-void
.end method
