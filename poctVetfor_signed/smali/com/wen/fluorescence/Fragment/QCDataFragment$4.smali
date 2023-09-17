.class Lcom/wen/fluorescence/Fragment/QCDataFragment$4;
.super Lcom/wen/fluorescence/util/MyOnClickListener;
.source "QCDataFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/QCDataFragment;->delete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/QCDataFragment;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/QCDataFragment;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/QCDataFragment;

    .line 360
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/QCDataFragment;

    iput-object p2, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$4;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .line 363
    invoke-super {p0, p1}, Lcom/wen/fluorescence/util/MyOnClickListener;->onClick(Landroid/view/View;)V

    .line 364
    const/4 v0, 0x0

    .line 364
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/QCDataFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->access$900(Lcom/wen/fluorescence/Fragment/QCDataFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 365
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/QCDataFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->access$1000(Lcom/wen/fluorescence/Fragment/QCDataFragment;)Landroid/widget/TableLayout;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 366
    .local v1, "childrenView":Landroid/view/View;
    const v2, 0x7f080099

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 367
    .local v2, "cbSelect":Landroid/widget/CheckBox;
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 368
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/QCDataFragment;

    invoke-virtual {v3}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v3

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/QCDataFragment;

    invoke-static {v4}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->access$900(Lcom/wen/fluorescence/Fragment/QCDataFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v4}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/DBManager;->deleteTestResultBySerialNumber(Ljava/lang/String;)V

    .line 364
    .end local v1    # "childrenView":Landroid/view/View;
    .end local v2    # "cbSelect":Landroid/widget/CheckBox;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 372
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/QCDataFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->access$1100(Lcom/wen/fluorescence/Fragment/QCDataFragment;)Lcom/wen/fluorescence/util/PageUtils;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/util/PageUtils;->setPageNow(I)V

    .line 373
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/QCDataFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->access$1200(Lcom/wen/fluorescence/Fragment/QCDataFragment;)V

    .line 374
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/QCDataFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->access$1300(Lcom/wen/fluorescence/Fragment/QCDataFragment;)V

    .line 375
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$4;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 376
    return-void
.end method
