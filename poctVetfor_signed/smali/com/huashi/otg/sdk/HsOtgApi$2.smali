.class Lcom/huashi/otg/sdk/HsOtgApi$2;
.super Landroid/content/BroadcastReceiver;
.source "HsOtgApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huashi/otg/sdk/HsOtgApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huashi/otg/sdk/HsOtgApi;


# direct methods
.method constructor <init>(Lcom/huashi/otg/sdk/HsOtgApi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huashi/otg/sdk/HsOtgApi$2;->this$0:Lcom/huashi/otg/sdk/HsOtgApi;

    .line 62
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "action":Ljava/lang/String;
    const-string v1, "mUsbReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string v1, "com.android.USB_PERMISSION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 69
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 70
    .local v1, "msg":Landroid/os/Message;
    monitor-enter p0

    .line 71
    :try_start_0
    const-string v2, "device"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    .line 72
    .local v2, "device":Landroid/hardware/usb/UsbDevice;
    const-string v3, "permission"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    if-eqz v2, :cond_2

    .line 74
    const-string v3, "mUsbReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\u6709\u6743\u9650"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v3, p0, Lcom/huashi/otg/sdk/HsOtgApi$2;->this$0:Lcom/huashi/otg/sdk/HsOtgApi;

    iget-object v3, v3, Lcom/huashi/otg/sdk/HsOtgApi;->usbHepler:Lcom/huashi/otg/sdk/HsUsbHepler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 77
    :try_start_1
    iget-object v3, p0, Lcom/huashi/otg/sdk/HsOtgApi$2;->this$0:Lcom/huashi/otg/sdk/HsOtgApi;

    new-instance v4, Lcom/huashi/otg/sdk/HsUsbHepler;

    iget-object v5, p0, Lcom/huashi/otg/sdk/HsOtgApi$2;->this$0:Lcom/huashi/otg/sdk/HsOtgApi;

    iget-object v5, v5, Lcom/huashi/otg/sdk/HsOtgApi;->instance:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/huashi/otg/sdk/HsUsbHepler;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/huashi/otg/sdk/HsOtgApi;->usbHepler:Lcom/huashi/otg/sdk/HsUsbHepler;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    goto :goto_0

    :catch_0
    move-exception v3

    .line 80
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v3}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 83
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/huashi/otg/sdk/HsOtgApi$2;->this$0:Lcom/huashi/otg/sdk/HsOtgApi;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/huashi/otg/sdk/HsOtgApi;->init_suss:Z

    .line 84
    iput v4, v1, Landroid/os/Message;->what:I

    .line 85
    iget-object v3, p0, Lcom/huashi/otg/sdk/HsOtgApi$2;->this$0:Lcom/huashi/otg/sdk/HsOtgApi;

    iget-object v3, v3, Lcom/huashi/otg/sdk/HsOtgApi;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 87
    goto :goto_1

    .line 88
    :cond_1
    const-string v3, "mUsbReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "permission denied for device \u6ca1\u6709\u6743\u9650"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v3, p0, Lcom/huashi/otg/sdk/HsOtgApi$2;->this$0:Lcom/huashi/otg/sdk/HsOtgApi;

    iput-boolean v4, v3, Lcom/huashi/otg/sdk/HsOtgApi;->init_suss:Z

    .line 90
    const/16 v3, -0x63

    iput v3, v1, Landroid/os/Message;->what:I

    .line 91
    iget-object v3, p0, Lcom/huashi/otg/sdk/HsOtgApi$2;->this$0:Lcom/huashi/otg/sdk/HsOtgApi;

    iget-object v3, v3, Lcom/huashi/otg/sdk/HsOtgApi;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 70
    .end local v2    # "device":Landroid/hardware/usb/UsbDevice;
    :cond_2
    :goto_1
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 95
    .end local v1    # "msg":Landroid/os/Message;
    :cond_3
    :goto_2
    return-void
.end method
