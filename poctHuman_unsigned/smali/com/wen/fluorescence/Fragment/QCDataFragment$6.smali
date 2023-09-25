.class Lcom/wen/fluorescence/Fragment/QCDataFragment$6;
.super Lcom/wen/fluorescence/util/MyOnClickListener;
.source "QCDataFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/QCDataFragment;->query()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/QCDataFragment;

.field final synthetic val$actvLogNoNumber:Landroid/widget/AutoCompleteTextView;

.field final synthetic val$tvTimeFrom:Landroid/widget/TextView;

.field final synthetic val$tvTimeTo:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/QCDataFragment;Landroid/widget/AutoCompleteTextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/QCDataFragment;

    .line 428
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/QCDataFragment;

    iput-object p2, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$6;->val$actvLogNoNumber:Landroid/widget/AutoCompleteTextView;

    iput-object p3, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$6;->val$tvTimeFrom:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$6;->val$tvTimeTo:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .line 431
    invoke-super {p0, p1}, Lcom/wen/fluorescence/util/MyOnClickListener;->onClick(Landroid/view/View;)V

    .line 432
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$6;->val$actvLogNoNumber:Landroid/widget/AutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$6;->val$tvTimeFrom:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$6;->val$tvTimeTo:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    return-void
.end method
