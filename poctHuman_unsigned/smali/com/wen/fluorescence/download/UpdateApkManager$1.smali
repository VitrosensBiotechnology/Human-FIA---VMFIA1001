.class Lcom/wen/fluorescence/download/UpdateApkManager$1;
.super Landroid/os/Handler;
.source "UpdateApkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/download/UpdateApkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/download/UpdateApkManager;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/download/UpdateApkManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/download/UpdateApkManager;

    .line 63
    iput-object p1, p0, Lcom/wen/fluorescence/download/UpdateApkManager$1;->this$0:Lcom/wen/fluorescence/download/UpdateApkManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 66
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 67
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x7f0c002c

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 102
    :pswitch_0
    iget-object v0, p0, Lcom/wen/fluorescence/download/UpdateApkManager$1;->this$0:Lcom/wen/fluorescence/download/UpdateApkManager;

    invoke-static {v0}, Lcom/wen/fluorescence/download/UpdateApkManager;->access$100(Lcom/wen/fluorescence/download/UpdateApkManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/download/DownLoadDialog;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/download/DownLoadDialog;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/download/DownLoadDialog;->setProgress(I)V

    .line 103
    iget-object v0, p0, Lcom/wen/fluorescence/download/UpdateApkManager$1;->this$0:Lcom/wen/fluorescence/download/UpdateApkManager;

    invoke-static {v0}, Lcom/wen/fluorescence/download/UpdateApkManager;->access$100(Lcom/wen/fluorescence/download/UpdateApkManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/download/DownLoadDialog;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/download/DownLoadDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/download/DownLoadDialog;->setButtonEnable(Z)V

    goto/16 :goto_0

    .line 98
    :pswitch_1
    iget-object v0, p0, Lcom/wen/fluorescence/download/UpdateApkManager$1;->this$0:Lcom/wen/fluorescence/download/UpdateApkManager;

    invoke-static {v0}, Lcom/wen/fluorescence/download/UpdateApkManager;->access$100(Lcom/wen/fluorescence/download/UpdateApkManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;I)V

    .line 99
    iget-object v0, p0, Lcom/wen/fluorescence/download/UpdateApkManager$1;->this$0:Lcom/wen/fluorescence/download/UpdateApkManager;

    invoke-static {v0}, Lcom/wen/fluorescence/download/UpdateApkManager;->access$100(Lcom/wen/fluorescence/download/UpdateApkManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/download/DownLoadDialog;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/download/DownLoadDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/download/DownLoadDialog;->setDismiss()V

    .line 100
    goto/16 :goto_0

    .line 90
    :pswitch_2
    iget-object v0, p0, Lcom/wen/fluorescence/download/UpdateApkManager$1;->this$0:Lcom/wen/fluorescence/download/UpdateApkManager;

    invoke-static {v0}, Lcom/wen/fluorescence/download/UpdateApkManager;->access$100(Lcom/wen/fluorescence/download/UpdateApkManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/download/DownLoadDialog;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/download/DownLoadDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/download/DownLoadDialog;->setProgressComplete()V

    .line 91
    iget-object v0, p0, Lcom/wen/fluorescence/download/UpdateApkManager$1;->this$0:Lcom/wen/fluorescence/download/UpdateApkManager;

    invoke-static {v0}, Lcom/wen/fluorescence/download/UpdateApkManager;->access$100(Lcom/wen/fluorescence/download/UpdateApkManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/download/DownLoadDialog;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/download/DownLoadDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/download/DownLoadDialog;->setDismiss()V

    .line 93
    iget-object v0, p0, Lcom/wen/fluorescence/download/UpdateApkManager$1;->this$0:Lcom/wen/fluorescence/download/UpdateApkManager;

    invoke-static {v0}, Lcom/wen/fluorescence/download/UpdateApkManager;->access$300(Lcom/wen/fluorescence/download/UpdateApkManager;)Lcom/wen/fluorescence/download/DownloadApkBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/download/DownloadApkBean;->getDownload_url()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "url":Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "fileName":Ljava/lang/String;
    iget-object v2, p0, Lcom/wen/fluorescence/download/UpdateApkManager$1;->this$0:Lcom/wen/fluorescence/download/UpdateApkManager;

    invoke-static {v2}, Lcom/wen/fluorescence/download/UpdateApkManager;->access$100(Lcom/wen/fluorescence/download/UpdateApkManager;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/wen/fluorescence/download/UpdateApkManager;->localAPK:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wen/fluorescence/util/AppUtil;->setInstallFullApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 96
    goto :goto_0

    .line 86
    .end local v0    # "url":Ljava/lang/String;
    .end local v1    # "fileName":Ljava/lang/String;
    :pswitch_3
    iget-object v0, p0, Lcom/wen/fluorescence/download/UpdateApkManager$1;->this$0:Lcom/wen/fluorescence/download/UpdateApkManager;

    invoke-static {v0}, Lcom/wen/fluorescence/download/UpdateApkManager;->access$100(Lcom/wen/fluorescence/download/UpdateApkManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;I)V

    .line 87
    iget-object v0, p0, Lcom/wen/fluorescence/download/UpdateApkManager$1;->this$0:Lcom/wen/fluorescence/download/UpdateApkManager;

    invoke-static {v0}, Lcom/wen/fluorescence/download/UpdateApkManager;->access$100(Lcom/wen/fluorescence/download/UpdateApkManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/download/DownLoadDialog;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/download/DownLoadDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/download/DownLoadDialog;->setDismiss()V

    .line 88
    goto :goto_0

    .line 69
    :pswitch_4
    iget-object v0, p0, Lcom/wen/fluorescence/download/UpdateApkManager$1;->this$0:Lcom/wen/fluorescence/download/UpdateApkManager;

    invoke-static {v0}, Lcom/wen/fluorescence/download/UpdateApkManager;->access$000(Lcom/wen/fluorescence/download/UpdateApkManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/wen/fluorescence/download/UpdateApkManager$1;->this$0:Lcom/wen/fluorescence/download/UpdateApkManager;

    invoke-static {v0}, Lcom/wen/fluorescence/download/UpdateApkManager;->access$100(Lcom/wen/fluorescence/download/UpdateApkManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/download/UpdateApkManager$1;->this$0:Lcom/wen/fluorescence/download/UpdateApkManager;

    invoke-static {v1}, Lcom/wen/fluorescence/download/UpdateApkManager;->access$100(Lcom/wen/fluorescence/download/UpdateApkManager;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0024

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/wen/fluorescence/download/UpdateApkManager$1$1;

    invoke-direct {v2, p0}, Lcom/wen/fluorescence/download/UpdateApkManager$1$1;-><init>(Lcom/wen/fluorescence/download/UpdateApkManager$1;)V

    invoke-static {v0, v1, v2}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/download/UpdateApkManager$1;->this$0:Lcom/wen/fluorescence/download/UpdateApkManager;

    invoke-static {v0}, Lcom/wen/fluorescence/download/UpdateApkManager;->access$100(Lcom/wen/fluorescence/download/UpdateApkManager;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c01b7

    invoke-static {v0, v1}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;I)V

    .line 84
    nop

    .line 106
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
