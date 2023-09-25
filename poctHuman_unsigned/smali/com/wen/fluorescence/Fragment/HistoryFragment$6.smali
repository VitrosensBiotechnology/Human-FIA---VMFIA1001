.class Lcom/wen/fluorescence/Fragment/HistoryFragment$6;
.super Lcom/wen/fluorescence/util/MyOnClickListener;
.source "HistoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/HistoryFragment;->delete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/HistoryFragment;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/HistoryFragment;

    .line 517
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    iput-object p2, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$6;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .line 520
    invoke-super {p0, p1}, Lcom/wen/fluorescence/util/MyOnClickListener;->onClick(Landroid/view/View;)V

    .line 521
    const/4 v0, 0x0

    .line 521
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->access$1000(Lcom/wen/fluorescence/Fragment/HistoryFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 522
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->access$1100(Lcom/wen/fluorescence/Fragment/HistoryFragment;)Landroid/widget/TableLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 523
    .local v1, "childrenView":Landroid/view/View;
    const v2, 0x7f080099

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 524
    .local v2, "cbSelect":Landroid/widget/CheckBox;
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 525
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-virtual {v3}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v3

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-static {v4}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->access$1000(Lcom/wen/fluorescence/Fragment/HistoryFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v4}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/DBManager;->deleteTestResultBySerialNumber(Ljava/lang/String;)V

    .line 521
    .end local v1    # "childrenView":Landroid/view/View;
    .end local v2    # "cbSelect":Landroid/widget/CheckBox;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 529
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->access$1200(Lcom/wen/fluorescence/Fragment/HistoryFragment;)Lcom/wen/fluorescence/util/PageUtils;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/util/PageUtils;->setPageNow(I)V

    .line 530
    const-string v0, "factory"

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->access$1300(Lcom/wen/fluorescence/Fragment/HistoryFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "super"

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->access$1300(Lcom/wen/fluorescence/Fragment/HistoryFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "admin"

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->access$1300(Lcom/wen/fluorescence/Fragment/HistoryFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 533
    :cond_2
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->access$1200(Lcom/wen/fluorescence/Fragment/HistoryFragment;)Lcom/wen/fluorescence/util/PageUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-virtual {v1}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v1

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->access$1400(Lcom/wen/fluorescence/Fragment/HistoryFragment;)Lcom/wen/fluorescence/database/TestResultCondition;

    move-result-object v2

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-static {v3}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->access$1300(Lcom/wen/fluorescence/Fragment/HistoryFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/wen/fluorescence/database/DBManager;->getTestResultCountByCondition(Lcom/wen/fluorescence/database/TestResultCondition;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/util/PageUtils;->setTotalSize(I)V

    goto :goto_2

    .line 531
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->access$1200(Lcom/wen/fluorescence/Fragment/HistoryFragment;)Lcom/wen/fluorescence/util/PageUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-virtual {v1}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v1

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->access$1400(Lcom/wen/fluorescence/Fragment/HistoryFragment;)Lcom/wen/fluorescence/database/TestResultCondition;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/wen/fluorescence/database/DBManager;->getTestResultCountByCondition(Lcom/wen/fluorescence/database/TestResultCondition;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/util/PageUtils;->setTotalSize(I)V

    .line 535
    :goto_2
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->access$1500(Lcom/wen/fluorescence/Fragment/HistoryFragment;)V

    .line 536
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->access$1600(Lcom/wen/fluorescence/Fragment/HistoryFragment;)V

    .line 537
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$6;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 538
    return-void
.end method
