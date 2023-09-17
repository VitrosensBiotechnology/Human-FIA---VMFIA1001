.class Lcom/wen/fluorescence/Fragment/SystemReagentFragment$3;
.super Ljava/lang/Object;
.source "SystemReagentFragment.java"

# interfaces
.implements Lcom/wen/fluorescence/util/MyDialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->clearnCalibration()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SystemReagentFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SystemReagentFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SystemReagentFragment;

    .line 322
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SystemReagentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelListener()V
    .locals 0

    .line 340
    return-void
.end method

.method public okListener()V
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SystemReagentFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->access$200(Lcom/wen/fluorescence/Fragment/SystemReagentFragment;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 328
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SystemReagentFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SystemReagentFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->access$100(Lcom/wen/fluorescence/Fragment/SystemReagentFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/DBManager;->deleteIDChipInfoN(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SystemReagentFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SystemReagentFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->access$100(Lcom/wen/fluorescence/Fragment/SystemReagentFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/DBManager;->deleteIDChipInfoExN(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SystemReagentFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SystemReagentFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->access$100(Lcom/wen/fluorescence/Fragment/SystemReagentFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/DBManager;->deleteEquation(Ljava/lang/String;)V

    .line 333
    :cond_0
    invoke-static {}, Lcom/wen/fluorescence/util/IDCardUtil;->getInstance()Lcom/wen/fluorescence/util/IDCardUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SystemReagentFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->access$100(Lcom/wen/fluorescence/Fragment/SystemReagentFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/util/IDCardUtil;->deleteIDChip(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SystemReagentFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->access$700(Lcom/wen/fluorescence/Fragment/SystemReagentFragment;)V

    .line 335
    return-void
.end method
