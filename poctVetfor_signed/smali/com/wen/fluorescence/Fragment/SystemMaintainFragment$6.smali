.class Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$6;
.super Ljava/lang/Object;
.source "SystemMaintainFragment.java"

# interfaces
.implements Lcom/wen/fluorescence/util/MyDialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->logOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

    .line 289
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelListener()V
    .locals 0

    .line 300
    return-void
.end method

.method public okListener()V
    .locals 4

    .line 292
    invoke-static {}, Lcom/wen/fluorescence/Thread/UploadDataForCloudsTimer;->getInstance()Lcom/wen/fluorescence/Thread/UploadDataForCloudsTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/Thread/UploadDataForCloudsTimer;->setTimerTotalCancel()V

    .line 293
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

    invoke-virtual {v2}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/wen/fluorescence/LoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->startActivity(Landroid/content/Intent;)V

    .line 294
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 295
    return-void
.end method
