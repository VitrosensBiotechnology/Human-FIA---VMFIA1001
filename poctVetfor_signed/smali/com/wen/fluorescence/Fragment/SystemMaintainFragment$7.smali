.class Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$7;
.super Ljava/lang/Object;
.source "SystemMaintainFragment.java"

# interfaces
.implements Lcom/wen/fluorescence/util/MyDialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->setFirmWareUpgrading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

.field final synthetic val$fileData:[B

.field final synthetic val$version:Lcom/wen/fluorescence/bean/Version;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;[BLcom/wen/fluorescence/bean/Version;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

    .line 385
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$7;->this$0:Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

    iput-object p2, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$7;->val$fileData:[B

    iput-object p3, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$7;->val$version:Lcom/wen/fluorescence/bean/Version;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelListener()V
    .locals 0

    .line 396
    return-void
.end method

.method public okListener()V
    .locals 3

    .line 388
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$7;->this$0:Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/util/UpgradeDialog;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/UpgradeDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/UpgradeDialog;->setShow()V

    .line 389
    invoke-static {}, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->getInstance()Lcom/wen/fluorescence/util/MCUUpgradeUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$7;->val$fileData:[B

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$7;->val$version:Lcom/wen/fluorescence/bean/Version;

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->setFileData([BLcom/wen/fluorescence/bean/Version;)V

    .line 390
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->getBoradInfo()V

    .line 391
    return-void
.end method
