.class Lcom/wen/fluorescence/Fragment/QCDataFragment$7;
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

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$tvTimeFrom:Landroid/widget/TextView;

.field final synthetic val$tvTimeTo:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/QCDataFragment;Landroid/widget/AutoCompleteTextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/QCDataFragment;

    .line 438
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$7;->this$0:Lcom/wen/fluorescence/Fragment/QCDataFragment;

    iput-object p2, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$7;->val$actvLogNoNumber:Landroid/widget/AutoCompleteTextView;

    iput-object p3, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$7;->val$tvTimeFrom:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$7;->val$tvTimeTo:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$7;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "arg0"    # Landroid/view/View;

    .line 442
    invoke-super {p0, p1}, Lcom/wen/fluorescence/util/MyOnClickListener;->onClick(Landroid/view/View;)V

    .line 443
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$7;->val$actvLogNoNumber:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$7;->val$tvTimeFrom:Landroid/widget/TextView;

    .line 444
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$7;->val$tvTimeTo:Landroid/widget/TextView;

    .line 445
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$7;->this$0:Lcom/wen/fluorescence/Fragment/QCDataFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$7;->this$0:Lcom/wen/fluorescence/Fragment/QCDataFragment;

    const v2, 0x7f0c0102

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 447
    return-void

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$7;->val$tvTimeFrom:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$7;->val$tvTimeTo:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$7;->val$tvTimeFrom:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, "from":Ljava/lang/String;
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$7;->val$tvTimeTo:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 455
    .local v1, "to":Ljava/lang/String;
    const-string v2, "yyyy-MM-dd"

    .line 456
    invoke-static {v1, v2}, Lcom/wen/fluorescence/util/DateUtils;->string2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    const-string v3, "yyyy-MM-dd"

    .line 457
    invoke-static {v0, v3}, Lcom/wen/fluorescence/util/DateUtils;->string2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 455
    invoke-static {v2, v3}, Lcom/wen/fluorescence/util/DateUtils;->differBetweenDates(Ljava/util/Date;Ljava/util/Date;)I

    move-result v2

    if-gez v2, :cond_2

    .line 458
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$7;->this$0:Lcom/wen/fluorescence/Fragment/QCDataFragment;

    invoke-virtual {v2}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$7;->this$0:Lcom/wen/fluorescence/Fragment/QCDataFragment;

    const v4, 0x7f0c01d4

    .line 459
    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 458
    invoke-static {v2, v3}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 460
    return-void

    .line 462
    :cond_2
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$7;->this$0:Lcom/wen/fluorescence/Fragment/QCDataFragment;

    new-instance v3, Lcom/wen/fluorescence/database/TestResultCondition;

    invoke-direct {v3}, Lcom/wen/fluorescence/database/TestResultCondition;-><init>()V

    invoke-static {v2, v3}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->access$1402(Lcom/wen/fluorescence/Fragment/QCDataFragment;Lcom/wen/fluorescence/database/TestResultCondition;)Lcom/wen/fluorescence/database/TestResultCondition;

    .line 468
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$7;->this$0:Lcom/wen/fluorescence/Fragment/QCDataFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->access$1400(Lcom/wen/fluorescence/Fragment/QCDataFragment;)Lcom/wen/fluorescence/database/TestResultCondition;

    move-result-object v2

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$7;->val$tvTimeFrom:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/database/TestResultCondition;->setStartTime(Ljava/lang/String;)V

    .line 469
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$7;->val$tvTimeTo:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 470
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$7;->this$0:Lcom/wen/fluorescence/Fragment/QCDataFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->access$1400(Lcom/wen/fluorescence/Fragment/QCDataFragment;)Lcom/wen/fluorescence/database/TestResultCondition;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$7;->val$tvTimeTo:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " 23:59:59"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/database/TestResultCondition;->setEndTime(Ljava/lang/String;)V

    goto :goto_0

    .line 472
    :cond_3
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$7;->this$0:Lcom/wen/fluorescence/Fragment/QCDataFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->access$1400(Lcom/wen/fluorescence/Fragment/QCDataFragment;)Lcom/wen/fluorescence/database/TestResultCondition;

    move-result-object v2

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$7;->val$tvTimeTo:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/database/TestResultCondition;->setEndTime(Ljava/lang/String;)V

    .line 474
    :goto_0
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$7;->this$0:Lcom/wen/fluorescence/Fragment/QCDataFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->access$1100(Lcom/wen/fluorescence/Fragment/QCDataFragment;)Lcom/wen/fluorescence/util/PageUtils;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/util/PageUtils;->setPageNow(I)V

    .line 475
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$7;->this$0:Lcom/wen/fluorescence/Fragment/QCDataFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->access$1100(Lcom/wen/fluorescence/Fragment/QCDataFragment;)Lcom/wen/fluorescence/util/PageUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$7;->this$0:Lcom/wen/fluorescence/Fragment/QCDataFragment;

    invoke-virtual {v3}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v3

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$7;->this$0:Lcom/wen/fluorescence/Fragment/QCDataFragment;

    invoke-static {v4}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->access$1400(Lcom/wen/fluorescence/Fragment/QCDataFragment;)Lcom/wen/fluorescence/database/TestResultCondition;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wen/fluorescence/database/TestResultCondition;->getStartTime()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$7;->this$0:Lcom/wen/fluorescence/Fragment/QCDataFragment;

    invoke-static {v5}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->access$1400(Lcom/wen/fluorescence/Fragment/QCDataFragment;)Lcom/wen/fluorescence/database/TestResultCondition;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wen/fluorescence/database/TestResultCondition;->getEndTime()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$7;->val$actvLogNoNumber:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v6}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/wen/fluorescence/database/DBManager;->getTestResultCountForQCHistory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/util/PageUtils;->setTotalSize(I)V

    .line 476
    const-string v2, "a"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTotalSize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$7;->this$0:Lcom/wen/fluorescence/Fragment/QCDataFragment;

    invoke-static {v4}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->access$1100(Lcom/wen/fluorescence/Fragment/QCDataFragment;)Lcom/wen/fluorescence/util/PageUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wen/fluorescence/util/PageUtils;->getTotalSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$7;->this$0:Lcom/wen/fluorescence/Fragment/QCDataFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->access$1200(Lcom/wen/fluorescence/Fragment/QCDataFragment;)V

    .line 478
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$7;->this$0:Lcom/wen/fluorescence/Fragment/QCDataFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->access$1300(Lcom/wen/fluorescence/Fragment/QCDataFragment;)V

    .line 479
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$7;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 480
    return-void

    .line 450
    .end local v0    # "from":Ljava/lang/String;
    .end local v1    # "to":Ljava/lang/String;
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$7;->this$0:Lcom/wen/fluorescence/Fragment/QCDataFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$7;->this$0:Lcom/wen/fluorescence/Fragment/QCDataFragment;

    const v2, 0x7f0c00a4

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 451
    return-void
.end method
