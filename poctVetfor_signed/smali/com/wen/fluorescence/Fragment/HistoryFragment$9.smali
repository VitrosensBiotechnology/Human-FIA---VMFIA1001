.class Lcom/wen/fluorescence/Fragment/HistoryFragment$9;
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

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$tvTimeFrom:Landroid/widget/TextView;

.field final synthetic val$tvTimeTo:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/HistoryFragment;Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/HistoryFragment;

    .line 625
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    iput-object p2, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;->val$actvSampleNumber:Landroid/widget/AutoCompleteTextView;

    iput-object p3, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;->val$actvName:Landroid/widget/AutoCompleteTextView;

    iput-object p4, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;->val$tvTimeFrom:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;->val$tvTimeTo:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;->val$actvPatientNo:Landroid/widget/AutoCompleteTextView;

    iput-object p7, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;->val$actOperator:Landroid/widget/AutoCompleteTextView;

    iput-object p8, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .line 629
    invoke-super {p0, p1}, Lcom/wen/fluorescence/util/MyOnClickListener;->onClick(Landroid/view/View;)V

    .line 630
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;->val$actvSampleNumber:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;->val$actvName:Landroid/widget/AutoCompleteTextView;

    .line 631
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;->val$tvTimeFrom:Landroid/widget/TextView;

    .line 632
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;->val$tvTimeTo:Landroid/widget/TextView;

    .line 633
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;->val$actvPatientNo:Landroid/widget/AutoCompleteTextView;

    .line 634
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;->val$actOperator:Landroid/widget/AutoCompleteTextView;

    .line 635
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->access$1700(Lcom/wen/fluorescence/Fragment/HistoryFragment;)V

    .line 637
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 638
    return-void

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;->val$tvTimeFrom:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 641
    .local v0, "from":Ljava/lang/String;
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;->val$tvTimeTo:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 642
    .local v1, "to":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "yyyy-MM-dd"

    .line 643
    invoke-static {v1, v2}, Lcom/wen/fluorescence/util/DateUtils;->string2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    const-string v3, "yyyy-MM-dd"

    .line 644
    invoke-static {v0, v3}, Lcom/wen/fluorescence/util/DateUtils;->string2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 642
    invoke-static {v2, v3}, Lcom/wen/fluorescence/util/DateUtils;->differBetweenDates(Ljava/util/Date;Ljava/util/Date;)I

    move-result v2

    if-gez v2, :cond_1

    .line 645
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-virtual {v2}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    const v4, 0x7f0c01d4

    .line 646
    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 645
    invoke-static {v2, v3}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 647
    return-void

    .line 649
    :cond_1
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    new-instance v3, Lcom/wen/fluorescence/database/TestResultCondition;

    invoke-direct {v3}, Lcom/wen/fluorescence/database/TestResultCondition;-><init>()V

    invoke-static {v2, v3}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->access$1402(Lcom/wen/fluorescence/Fragment/HistoryFragment;Lcom/wen/fluorescence/database/TestResultCondition;)Lcom/wen/fluorescence/database/TestResultCondition;

    .line 650
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->access$1400(Lcom/wen/fluorescence/Fragment/HistoryFragment;)Lcom/wen/fluorescence/database/TestResultCondition;

    move-result-object v2

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;->val$tvTimeFrom:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/database/TestResultCondition;->setStartTime(Ljava/lang/String;)V

    .line 651
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;->val$tvTimeTo:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 652
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->access$1400(Lcom/wen/fluorescence/Fragment/HistoryFragment;)Lcom/wen/fluorescence/database/TestResultCondition;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;->val$tvTimeTo:Landroid/widget/TextView;

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

    .line 660
    :cond_2
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->access$1400(Lcom/wen/fluorescence/Fragment/HistoryFragment;)Lcom/wen/fluorescence/database/TestResultCondition;

    move-result-object v2

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;->val$actvSampleNumber:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/database/TestResultCondition;->setSampleNumber(Ljava/lang/String;)V

    .line 661
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->access$1400(Lcom/wen/fluorescence/Fragment/HistoryFragment;)Lcom/wen/fluorescence/database/TestResultCondition;

    move-result-object v2

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;->val$actvName:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/database/TestResultCondition;->setName(Ljava/lang/String;)V

    .line 662
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->access$1400(Lcom/wen/fluorescence/Fragment/HistoryFragment;)Lcom/wen/fluorescence/database/TestResultCondition;

    move-result-object v2

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;->val$actvPatientNo:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/database/TestResultCondition;->setPatientNo(Ljava/lang/String;)V

    .line 663
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->access$1400(Lcom/wen/fluorescence/Fragment/HistoryFragment;)Lcom/wen/fluorescence/database/TestResultCondition;

    move-result-object v2

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;->val$actOperator:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/database/TestResultCondition;->setOperator(Ljava/lang/String;)V

    .line 664
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->access$1200(Lcom/wen/fluorescence/Fragment/HistoryFragment;)Lcom/wen/fluorescence/util/PageUtils;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/util/PageUtils;->setPageNow(I)V

    .line 665
    const-string v2, "factory"

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-static {v3}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->access$1300(Lcom/wen/fluorescence/Fragment/HistoryFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "super"

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-static {v3}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->access$1300(Lcom/wen/fluorescence/Fragment/HistoryFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "admin"

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-static {v3}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->access$1300(Lcom/wen/fluorescence/Fragment/HistoryFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 668
    :cond_3
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->access$1200(Lcom/wen/fluorescence/Fragment/HistoryFragment;)Lcom/wen/fluorescence/util/PageUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-virtual {v3}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v3

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-static {v4}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->access$1400(Lcom/wen/fluorescence/Fragment/HistoryFragment;)Lcom/wen/fluorescence/database/TestResultCondition;

    move-result-object v4

    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-static {v5}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->access$1300(Lcom/wen/fluorescence/Fragment/HistoryFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/wen/fluorescence/database/DBManager;->getTestResultCountByCondition(Lcom/wen/fluorescence/database/TestResultCondition;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/util/PageUtils;->setTotalSize(I)V

    goto :goto_1

    .line 666
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->access$1200(Lcom/wen/fluorescence/Fragment/HistoryFragment;)Lcom/wen/fluorescence/util/PageUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-virtual {v3}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v3

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-static {v4}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->access$1400(Lcom/wen/fluorescence/Fragment/HistoryFragment;)Lcom/wen/fluorescence/database/TestResultCondition;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/wen/fluorescence/database/DBManager;->getTestResultCountByCondition(Lcom/wen/fluorescence/database/TestResultCondition;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/util/PageUtils;->setTotalSize(I)V

    .line 670
    :goto_1
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->access$1500(Lcom/wen/fluorescence/Fragment/HistoryFragment;)V

    .line 671
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->access$1600(Lcom/wen/fluorescence/Fragment/HistoryFragment;)V

    .line 672
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$9;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 673
    return-void
.end method
