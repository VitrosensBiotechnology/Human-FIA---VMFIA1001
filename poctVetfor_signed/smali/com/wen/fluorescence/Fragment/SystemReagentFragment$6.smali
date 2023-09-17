.class Lcom/wen/fluorescence/Fragment/SystemReagentFragment$6;
.super Ljava/lang/Object;
.source "SystemReagentFragment.java"

# interfaces
.implements Lcom/wen/fluorescence/net/CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->downloadApk()V
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

    .line 478
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SystemReagentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 491
    invoke-static {}, Lcom/wen/fluorescence/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 492
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Object;

    .line 481
    instance-of v0, p1, Lcom/wen/fluorescence/download/DownloadApkBean;

    if-eqz v0, :cond_0

    .line 482
    move-object v0, p1

    check-cast v0, Lcom/wen/fluorescence/download/DownloadApkBean;

    .line 483
    .local v0, "bean":Lcom/wen/fluorescence/download/DownloadApkBean;
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SystemReagentFragment;

    invoke-virtual {v1}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/wen/fluorescence/download/UpdateApkManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/download/UpdateApkManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wen/fluorescence/download/UpdateApkManager;->startUpdateConfig(Lcom/wen/fluorescence/download/DownloadApkBean;)V

    .line 487
    .end local v0    # "bean":Lcom/wen/fluorescence/download/DownloadApkBean;
    :cond_0
    return-void
.end method
