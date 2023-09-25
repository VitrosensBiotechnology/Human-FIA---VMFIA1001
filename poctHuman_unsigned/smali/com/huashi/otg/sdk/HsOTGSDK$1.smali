.class Lcom/huashi/otg/sdk/HsOTGSDK$1;
.super Ljava/lang/Thread;
.source "HsOTGSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huashi/otg/sdk/HsOTGSDK;->findIntfAndEpt(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huashi/otg/sdk/HsOTGSDK;

.field private final synthetic val$mUsbDevice:Landroid/hardware/usb/UsbDevice;

.field private final synthetic val$manager:Landroid/hardware/usb/UsbManager;


# direct methods
.method constructor <init>(Lcom/huashi/otg/sdk/HsOTGSDK;Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huashi/otg/sdk/HsOTGSDK$1;->this$0:Lcom/huashi/otg/sdk/HsOTGSDK;

    iput-object p2, p0, Lcom/huashi/otg/sdk/HsOTGSDK$1;->val$manager:Landroid/hardware/usb/UsbManager;

    iput-object p3, p0, Lcom/huashi/otg/sdk/HsOTGSDK$1;->val$mUsbDevice:Landroid/hardware/usb/UsbDevice;

    .line 92
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/huashi/otg/sdk/HsOTGSDK$1;->this$0:Lcom/huashi/otg/sdk/HsOTGSDK;

    iget-object v0, v0, Lcom/huashi/otg/sdk/HsOTGSDK;->instance:Landroid/content/Context;

    .line 95
    .local v0, "var10000":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.USB_PERMISSION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 96
    .local v1, "pi":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/huashi/otg/sdk/HsOTGSDK$1;->val$manager:Landroid/hardware/usb/UsbManager;

    iget-object v3, p0, Lcom/huashi/otg/sdk/HsOTGSDK$1;->val$mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2, v3, v1}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    .line 97
    return-void
.end method
