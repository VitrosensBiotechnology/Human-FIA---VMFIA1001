.class Lcom/wen/fluorescence/download/UpdateManager$2;
.super Landroid/os/Handler;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/download/UpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/download/UpdateManager;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/download/UpdateManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/download/UpdateManager;

    .line 57
    iput-object p1, p0, Lcom/wen/fluorescence/download/UpdateManager$2;->this$0:Lcom/wen/fluorescence/download/UpdateManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 60
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 61
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x7f0c002c

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 95
    :pswitch_0
    iget-object v0, p0, Lcom/wen/fluorescence/download/UpdateManager$2;->this$0:Lcom/wen/fluorescence/download/UpdateManager;

    invoke-static {v0}, Lcom/wen/fluorescence/download/UpdateManager;->access$100(Lcom/wen/fluorescence/download/UpdateManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/download/DownLoadDialog;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/download/DownLoadDialog;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/download/DownLoadDialog;->setProgress(I)V

    .line 96
    iget-object v0, p0, Lcom/wen/fluorescence/download/UpdateManager$2;->this$0:Lcom/wen/fluorescence/download/UpdateManager;

    invoke-static {v0}, Lcom/wen/fluorescence/download/UpdateManager;->access$100(Lcom/wen/fluorescence/download/UpdateManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/download/DownLoadDialog;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/download/DownLoadDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/download/DownLoadDialog;->setButtonEnable(Z)V

    goto/16 :goto_0

    .line 91
    :pswitch_1
    iget-object v0, p0, Lcom/wen/fluorescence/download/UpdateManager$2;->this$0:Lcom/wen/fluorescence/download/UpdateManager;

    invoke-static {v0}, Lcom/wen/fluorescence/download/UpdateManager;->access$100(Lcom/wen/fluorescence/download/UpdateManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;I)V

    .line 92
    iget-object v0, p0, Lcom/wen/fluorescence/download/UpdateManager$2;->this$0:Lcom/wen/fluorescence/download/UpdateManager;

    invoke-static {v0}, Lcom/wen/fluorescence/download/UpdateManager;->access$100(Lcom/wen/fluorescence/download/UpdateManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/download/DownLoadDialog;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/download/DownLoadDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/download/DownLoadDialog;->setDismiss()V

    .line 93
    goto/16 :goto_0

    .line 86
    :pswitch_2
    iget-object v0, p0, Lcom/wen/fluorescence/download/UpdateManager$2;->this$0:Lcom/wen/fluorescence/download/UpdateManager;

    invoke-static {v0}, Lcom/wen/fluorescence/download/UpdateManager;->access$100(Lcom/wen/fluorescence/download/UpdateManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/download/DownLoadDialog;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/download/DownLoadDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/download/DownLoadDialog;->setProgressComplete()V

    .line 87
    iget-object v0, p0, Lcom/wen/fluorescence/download/UpdateManager$2;->this$0:Lcom/wen/fluorescence/download/UpdateManager;

    invoke-static {v0}, Lcom/wen/fluorescence/download/UpdateManager;->access$100(Lcom/wen/fluorescence/download/UpdateManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/download/DownLoadDialog;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/download/DownLoadDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/download/DownLoadDialog;->setDismiss()V

    .line 88
    iget-object v0, p0, Lcom/wen/fluorescence/download/UpdateManager$2;->this$0:Lcom/wen/fluorescence/download/UpdateManager;

    invoke-static {v0}, Lcom/wen/fluorescence/download/UpdateManager;->access$100(Lcom/wen/fluorescence/download/UpdateManager;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/wen/fluorescence/download/DownloadTool;->localAPK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wen/fluorescence/download/UpdateManager$2;->this$0:Lcom/wen/fluorescence/download/UpdateManager;

    invoke-static {v2}, Lcom/wen/fluorescence/download/UpdateManager;->access$400(Lcom/wen/fluorescence/download/UpdateManager;)Lcom/wen/fluorescence/download/DownConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wen/fluorescence/download/DownConfig;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wen/fluorescence/util/AppUtil;->setInstallFullApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    goto :goto_0

    .line 82
    :pswitch_3
    iget-object v0, p0, Lcom/wen/fluorescence/download/UpdateManager$2;->this$0:Lcom/wen/fluorescence/download/UpdateManager;

    invoke-static {v0}, Lcom/wen/fluorescence/download/UpdateManager;->access$100(Lcom/wen/fluorescence/download/UpdateManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;I)V

    .line 83
    iget-object v0, p0, Lcom/wen/fluorescence/download/UpdateManager$2;->this$0:Lcom/wen/fluorescence/download/UpdateManager;

    invoke-static {v0}, Lcom/wen/fluorescence/download/UpdateManager;->access$100(Lcom/wen/fluorescence/download/UpdateManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/download/DownLoadDialog;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/download/DownLoadDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/download/DownLoadDialog;->setDismiss()V

    .line 84
    goto :goto_0

    .line 63
    :pswitch_4
    iget-object v0, p0, Lcom/wen/fluorescence/download/UpdateManager$2;->this$0:Lcom/wen/fluorescence/download/UpdateManager;

    invoke-static {v0}, Lcom/wen/fluorescence/download/UpdateManager;->access$100(Lcom/wen/fluorescence/download/UpdateManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/download/DownLoadDialog;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/download/DownLoadDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/download/DownLoadDialog;->setProgressComplete()V

    .line 64
    iget-object v0, p0, Lcom/wen/fluorescence/download/UpdateManager$2;->this$0:Lcom/wen/fluorescence/download/UpdateManager;

    invoke-static {v0}, Lcom/wen/fluorescence/download/UpdateManager;->access$100(Lcom/wen/fluorescence/download/UpdateManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/download/DownLoadDialog;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/download/DownLoadDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/download/DownLoadDialog;->setDismiss()V

    .line 65
    iget-object v0, p0, Lcom/wen/fluorescence/download/UpdateManager$2;->this$0:Lcom/wen/fluorescence/download/UpdateManager;

    invoke-static {v0}, Lcom/wen/fluorescence/download/UpdateManager;->access$200(Lcom/wen/fluorescence/download/UpdateManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/wen/fluorescence/download/UpdateManager$2;->this$0:Lcom/wen/fluorescence/download/UpdateManager;

    invoke-static {v0}, Lcom/wen/fluorescence/download/UpdateManager;->access$100(Lcom/wen/fluorescence/download/UpdateManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/download/UpdateManager$2;->this$0:Lcom/wen/fluorescence/download/UpdateManager;

    invoke-static {v1}, Lcom/wen/fluorescence/download/UpdateManager;->access$100(Lcom/wen/fluorescence/download/UpdateManager;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0024

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/wen/fluorescence/download/UpdateManager$2$1;

    invoke-direct {v2, p0}, Lcom/wen/fluorescence/download/UpdateManager$2$1;-><init>(Lcom/wen/fluorescence/download/UpdateManager$2;)V

    invoke-static {v0, v1, v2}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/download/UpdateManager$2;->this$0:Lcom/wen/fluorescence/download/UpdateManager;

    invoke-static {v0}, Lcom/wen/fluorescence/download/UpdateManager;->access$100(Lcom/wen/fluorescence/download/UpdateManager;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c01b7

    invoke-static {v0, v1}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;I)V

    .line 80
    nop

    .line 99
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
