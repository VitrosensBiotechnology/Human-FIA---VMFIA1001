.class Lcom/huashi/otg/sdk/HsOtgApi$1;
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
    iput-object p1, p0, Lcom/huashi/otg/sdk/HsOtgApi$1;->this$0:Lcom/huashi/otg/sdk/HsOtgApi;

    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    const-string v1, "device"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    .line 37
    .local v1, "msg":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "deviceName":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 39
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 40
    .local v3, "msg1":Landroid/os/Message;
    iget-object v4, p0, Lcom/huashi/otg/sdk/HsOtgApi$1;->this$0:Lcom/huashi/otg/sdk/HsOtgApi;

    invoke-virtual {v4}, Lcom/huashi/otg/sdk/HsOtgApi;->init()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 42
    const/16 v4, 0x63

    iput v4, v3, Landroid/os/Message;->what:I

    .line 44
    const-string v4, "USB\u8bbe\u5907\u62d4\u51fa\uff0c\u5e94\u7528\u7a0b\u5e8f\u5373\u5c06\u5173\u95ed\u3002"

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 45
    iget-object v4, p0, Lcom/huashi/otg/sdk/HsOtgApi$1;->this$0:Lcom/huashi/otg/sdk/HsOtgApi;

    iget-object v4, v4, Lcom/huashi/otg/sdk/HsOtgApi;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 46
    iget-object v4, p0, Lcom/huashi/otg/sdk/HsOtgApi$1;->this$0:Lcom/huashi/otg/sdk/HsOtgApi;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/huashi/otg/sdk/HsOtgApi;->init_suss:Z

    .line 47
    iget-object v4, p0, Lcom/huashi/otg/sdk/HsOtgApi$1;->this$0:Lcom/huashi/otg/sdk/HsOtgApi;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/huashi/otg/sdk/HsOtgApi;->usbHepler:Lcom/huashi/otg/sdk/HsUsbHepler;

    .line 50
    .end local v1    # "msg":Landroid/hardware/usb/UsbDevice;
    .end local v2    # "deviceName":Ljava/lang/String;
    .end local v3    # "msg1":Landroid/os/Message;
    goto :goto_0

    .line 51
    :cond_0
    const-string v1, "com.android.USB_PERMISSION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 53
    .local v1, "msg2":Landroid/os/Message;
    const/16 v2, 0x64

    iput v2, v1, Landroid/os/Message;->what:I

    .line 54
    const-string v2, "USB\u8bbe\u5907\u65e0\u6743\u9650"

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 55
    iget-object v2, p0, Lcom/huashi/otg/sdk/HsOtgApi$1;->this$0:Lcom/huashi/otg/sdk/HsOtgApi;

    iget-object v2, v2, Lcom/huashi/otg/sdk/HsOtgApi;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 59
    .end local v1    # "msg2":Landroid/os/Message;
    :cond_1
    :goto_0
    return-void
.end method
