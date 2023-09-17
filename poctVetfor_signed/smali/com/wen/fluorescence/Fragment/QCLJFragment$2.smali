.class Lcom/wen/fluorescence/Fragment/QCLJFragment$2;
.super Ljava/lang/Object;
.source "QCLJFragment.java"

# interfaces
.implements Lcom/wen/fluorescence/util/MyDialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/QCLJFragment;->deletePoints()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/QCLJFragment;

.field final synthetic val$iX:I


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/QCLJFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/QCLJFragment;

    .line 338
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/QCLJFragment;

    iput p2, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment$2;->val$iX:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelListener()V
    .locals 0

    .line 356
    return-void
.end method

.method public okListener()V
    .locals 6

    .line 341
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/QCLJFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->access$100(Lcom/wen/fluorescence/Fragment/QCLJFragment;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment$2;->val$iX:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v0}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "serialNumber":Ljava/lang/String;
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/QCLJFragment;

    invoke-virtual {v1}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wen/fluorescence/database/DBManager;->deleteTestResultBySerialNumber(Ljava/lang/String;)V

    .line 343
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/QCLJFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->access$100(Lcom/wen/fluorescence/Fragment/QCLJFragment;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment$2;->val$iX:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v1}, Lcom/wen/fluorescence/database/TestResult;->getTestTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "yyyy-MM-dd"

    invoke-static {v1, v2}, Lcom/wen/fluorescence/util/DateUtils;->string2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 344
    .local v1, "selectDate":Ljava/util/Date;
    const/4 v2, 0x0

    .line 344
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/QCLJFragment;

    invoke-static {v3}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->access$300(Lcom/wen/fluorescence/Fragment/QCLJFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 345
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/QCLJFragment;

    invoke-static {v3}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->access$300(Lcom/wen/fluorescence/Fragment/QCLJFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v3}, Lcom/wen/fluorescence/database/TestResult;->getTestTime()Ljava/lang/String;

    move-result-object v3

    const-string v4, "yyyy-MM-dd"

    invoke-static {v3, v4}, Lcom/wen/fluorescence/util/DateUtils;->string2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 346
    .local v3, "repetitionDate":Ljava/util/Date;
    invoke-static {v1, v3}, Lcom/wen/fluorescence/util/DateUtils;->isSameDay(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 347
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/QCLJFragment;

    invoke-virtual {v4}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v4

    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/QCLJFragment;

    invoke-static {v5}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->access$300(Lcom/wen/fluorescence/Fragment/QCLJFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v5}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wen/fluorescence/database/DBManager;->deleteTestResultBySerialNumber(Ljava/lang/String;)V

    .line 344
    .end local v3    # "repetitionDate":Ljava/util/Date;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 350
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/QCLJFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->access$400(Lcom/wen/fluorescence/Fragment/QCLJFragment;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->performClick()Z

    .line 351
    return-void
.end method
