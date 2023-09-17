.class Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$9;
.super Ljava/lang/Object;
.source "SystemMaintainFragment.java"

# interfaces
.implements Lcom/wen/fluorescence/util/MyDialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->enterMode()V
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

    .line 510
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$9;->this$0:Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelListener()V
    .locals 0

    .line 522
    return-void
.end method

.method public okListener()V
    .locals 3

    .line 513
    const/16 v0, 0xfa

    invoke-static {v0}, Lcom/wen/fluorescence/serialport/Protocol;->setHead(I)V

    .line 515
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$9;->this$0:Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "wenfia.db"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->deleteDatabase(Ljava/lang/String;)Z

    .line 516
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$9;->this$0:Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$9;->this$0:Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

    const v2, 0x7f0c0147

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wen/fluorescence/util/MyDialog;->showOneNotDismiss(Landroid/content/Context;Ljava/lang/String;)V

    .line 517
    return-void
.end method
