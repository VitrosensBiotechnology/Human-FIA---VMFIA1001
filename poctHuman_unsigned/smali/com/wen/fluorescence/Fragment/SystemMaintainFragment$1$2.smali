.class Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$1$2;
.super Ljava/lang/Object;
.source "SystemMaintainFragment.java"

# interfaces
.implements Lcom/wen/fluorescence/net/CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$1;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$1;

    .line 173
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$1$2;->this$1:Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 183
    invoke-static {}, Lcom/wen/fluorescence/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 184
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Object;

    .line 176
    instance-of v0, p1, Lcom/wen/fluorescence/download/DownloadApkBean;

    if-eqz v0, :cond_0

    .line 177
    move-object v0, p1

    check-cast v0, Lcom/wen/fluorescence/download/DownloadApkBean;

    .line 178
    .local v0, "bean":Lcom/wen/fluorescence/download/DownloadApkBean;
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$1$2;->this$1:Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$1;

    iget-object v1, v1, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

    invoke-virtual {v1}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/wen/fluorescence/download/UpdateApkManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/download/UpdateApkManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wen/fluorescence/download/UpdateApkManager;->startUpdateConfig(Lcom/wen/fluorescence/download/DownloadApkBean;)V

    .line 180
    .end local v0    # "bean":Lcom/wen/fluorescence/download/DownloadApkBean;
    :cond_0
    return-void
.end method
