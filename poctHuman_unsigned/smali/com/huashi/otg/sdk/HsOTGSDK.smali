.class public Lcom/huashi/otg/sdk/HsOTGSDK;
.super Ljava/lang/Object;
.source "HsOTGSDK.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HsOTGSdk"


# instance fields
.field epIn:Landroid/hardware/usb/UsbEndpoint;

.field epOut:Landroid/hardware/usb/UsbEndpoint;

.field instance:Landroid/content/Context;

.field mDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "activity"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/huashi/otg/sdk/HsOTGSDK;->instance:Landroid/content/Context;

    .line 27
    invoke-virtual {p0, p1}, Lcom/huashi/otg/sdk/HsOTGSDK;->initUSB(Landroid/content/Context;)I

    move-result v0

    .line 28
    .local v0, "ret":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 29
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 30
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 31
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 35
    :goto_0
    throw v1

    .line 37
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method private findIntfAndEpt(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;)I
    .locals 6
    .param p1, "manager"    # Landroid/hardware/usb/UsbManager;
    .param p2, "mUsbDevice"    # Landroid/hardware/usb/UsbDevice;

    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "mInterface":Landroid/hardware/usb/UsbInterface;
    const/16 v1, -0x63

    if-nez p2, :cond_0

    .line 66
    return v1

    .line 68
    :cond_0
    const/4 v2, 0x0

    .line 70
    .local v2, "connection":B
    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 71
    invoke-virtual {p2, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v3

    .line 72
    .local v3, "connection1":Landroid/hardware/usb/UsbInterface;
    move-object v0, v3

    .line 75
    .end local v3    # "connection1":Landroid/hardware/usb/UsbInterface;
    :cond_1
    if-eqz v0, :cond_5

    .line 76
    const/4 v3, 0x0

    .line 77
    .restart local v3    # "connection1":Landroid/hardware/usb/UsbInterface;
    invoke-virtual {p1, p2}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 78
    invoke-virtual {p1, p2}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v4

    .line 79
    .local v4, "connection11":Landroid/hardware/usb/UsbDeviceConnection;
    if-nez v4, :cond_2

    .line 80
    return v1

    .line 82
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 83
    iput-object v4, p0, Lcom/huashi/otg/sdk/HsOTGSDK;->mDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 84
    iget-object v5, p0, Lcom/huashi/otg/sdk/HsOTGSDK;->mDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-direct {p0, v5, v0}, Lcom/huashi/otg/sdk/HsOTGSDK;->getEndpoint(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbInterface;)V

    .line 85
    goto :goto_0

    .line 86
    :cond_3
    invoke-virtual {v4}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 89
    :goto_0
    return v1

    .line 92
    .end local v4    # "connection11":Landroid/hardware/usb/UsbDeviceConnection;
    :cond_4
    new-instance v1, Lcom/huashi/otg/sdk/HsOTGSDK$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/huashi/otg/sdk/HsOTGSDK$1;-><init>(Lcom/huashi/otg/sdk/HsOTGSDK;Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;)V

    .line 98
    invoke-virtual {v1}, Lcom/huashi/otg/sdk/HsOTGSDK$1;->start()V

    .line 99
    const/4 v1, -0x1

    return v1

    .line 102
    .end local v3    # "connection1":Landroid/hardware/usb/UsbInterface;
    :cond_5
    return v1
.end method

.method private getEndpoint(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbInterface;)V
    .locals 2
    .param p1, "mDeviceConnection"    # Landroid/hardware/usb/UsbDeviceConnection;
    .param p2, "mInterface"    # Landroid/hardware/usb/UsbInterface;

    .line 108
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {p2, v0}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v0

    iput-object v0, p0, Lcom/huashi/otg/sdk/HsOTGSDK;->epOut:Landroid/hardware/usb/UsbEndpoint;

    .line 112
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 113
    invoke-virtual {p2, v0}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v0

    iput-object v0, p0, Lcom/huashi/otg/sdk/HsOTGSDK;->epIn:Landroid/hardware/usb/UsbEndpoint;

    .line 116
    :cond_1
    return-void
.end method


# virtual methods
.method initUSB(Landroid/content/Context;)I
    .locals 8
    .param p1, "instance"    # Landroid/content/Context;

    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, "mUsbDevice":Landroid/hardware/usb/UsbDevice;
    const-string v1, "usb"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    .line 42
    .local v1, "manager":Landroid/hardware/usb/UsbManager;
    if-nez v1, :cond_0

    .line 43
    const/16 v2, -0x63

    return v2

    .line 45
    :cond_0
    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v2

    .line 46
    .local v2, "deviceList":Ljava/util/HashMap;, "Ljava/util/HashMap<**>;"
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 47
    .local v3, "deviceIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v4, "USBDeviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 58
    invoke-direct {p0, v1, v0}, Lcom/huashi/otg/sdk/HsOTGSDK;->findIntfAndEpt(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;)I

    move-result v5

    .line 59
    .local v5, "ret1":I
    return v5

    .line 50
    .end local v5    # "ret1":I
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/UsbDevice;

    .line 51
    .local v5, "ret":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {v5}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-virtual {v5}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {v5}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v6

    const/16 v7, 0x400

    if-ne v6, v7, :cond_1

    invoke-virtual {v5}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v6

    const v7, 0xc35a

    if-ne v6, v7, :cond_1

    .line 54
    move-object v0, v5

    .line 54
    .end local v5    # "ret":Landroid/hardware/usb/UsbDevice;
    goto :goto_0
.end method

.method public usbSendRecv([B[BJJI)V
    .locals 4
    .param p1, "send"    # [B
    .param p2, "recv"    # [B
    .param p3, "sendTime"    # J
    .param p5, "recvTime"    # J
    .param p7, "ret"    # I

    .line 119
    iget-object v0, p0, Lcom/huashi/otg/sdk/HsOTGSDK;->mDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/huashi/otg/sdk/HsOTGSDK;->epOut:Landroid/hardware/usb/UsbEndpoint;

    array-length v2, p1

    long-to-int v3, p3

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result p7

    .line 120
    iget-object v0, p0, Lcom/huashi/otg/sdk/HsOTGSDK;->mDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/huashi/otg/sdk/HsOTGSDK;->epIn:Landroid/hardware/usb/UsbEndpoint;

    array-length v2, p2

    long-to-int v3, p5

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result p7

    .line 121
    return-void
.end method
