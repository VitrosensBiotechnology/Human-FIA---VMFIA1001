.class public Lcom/huashi/otg/sdk/HsOtgApi;
.super Ljava/lang/Object;
.source "HsOtgApi.java"


# static fields
.field private static final ACTION_USB_PERMISSION:Ljava/lang/String; = "com.android.example.USB_PERMISSION"


# instance fields
.field handler:Landroid/os/Handler;

.field init_suss:Z

.field instance:Landroid/content/Context;

.field private final mUsbReceiver:Landroid/content/BroadcastReceiver;

.field private final mUsbReceiver1:Landroid/content/BroadcastReceiver;

.field m_New:Z

.field private path:Ljava/lang/String;

.field usbHepler:Lcom/huashi/otg/sdk/HsUsbHepler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "instance"    # Landroid/content/Context;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huashi/otg/sdk/HsOtgApi;->m_New:Z

    .line 27
    iput-boolean v0, p0, Lcom/huashi/otg/sdk/HsOtgApi;->init_suss:Z

    .line 32
    new-instance v0, Lcom/huashi/otg/sdk/HsOtgApi$1;

    invoke-direct {v0, p0}, Lcom/huashi/otg/sdk/HsOtgApi$1;-><init>(Lcom/huashi/otg/sdk/HsOtgApi;)V

    iput-object v0, p0, Lcom/huashi/otg/sdk/HsOtgApi;->mUsbReceiver1:Landroid/content/BroadcastReceiver;

    .line 62
    new-instance v0, Lcom/huashi/otg/sdk/HsOtgApi$2;

    invoke-direct {v0, p0}, Lcom/huashi/otg/sdk/HsOtgApi$2;-><init>(Lcom/huashi/otg/sdk/HsOtgApi;)V

    iput-object v0, p0, Lcom/huashi/otg/sdk/HsOtgApi;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    .line 99
    iput-object p1, p0, Lcom/huashi/otg/sdk/HsOtgApi;->handler:Landroid/os/Handler;

    .line 100
    iput-object p2, p0, Lcom/huashi/otg/sdk/HsOtgApi;->instance:Landroid/content/Context;

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huashi/otg/sdk/HsOtgApi;->m_New:Z

    .line 102
    return-void
.end method


# virtual methods
.method public Authenticate(JJ)I
    .locals 2
    .param p1, "sendTime"    # J
    .param p3, "recvTime"    # J

    .line 157
    iget-boolean v0, p0, Lcom/huashi/otg/sdk/HsOtgApi;->init_suss:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/huashi/otg/sdk/HsOtgApi;->usbHepler:Lcom/huashi/otg/sdk/HsUsbHepler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/huashi/otg/sdk/HsUsbHepler;->FindCard(JJ)I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/huashi/otg/sdk/HsOtgApi;->usbHepler:Lcom/huashi/otg/sdk/HsUsbHepler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/huashi/otg/sdk/HsUsbHepler;->SelectCard(JJ)I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    return v1
.end method

.method public GetSAMID()Ljava/lang/String;
    .locals 2

    .line 149
    const-string v0, ""

    .line 150
    .local v0, "sam":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/huashi/otg/sdk/HsOtgApi;->init_suss:Z

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/huashi/otg/sdk/HsOtgApi;->usbHepler:Lcom/huashi/otg/sdk/HsUsbHepler;

    invoke-virtual {v1}, Lcom/huashi/otg/sdk/HsUsbHepler;->getSAMID()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public NotAuthenticate(JJ)I
    .locals 1
    .param p1, "sendTime"    # J
    .param p3, "recvTime"    # J

    .line 161
    iget-boolean v0, p0, Lcom/huashi/otg/sdk/HsOtgApi;->init_suss:Z

    if-nez v0, :cond_0

    .line 162
    const/4 v0, 0x0

    return v0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/huashi/otg/sdk/HsOtgApi;->usbHepler:Lcom/huashi/otg/sdk/HsUsbHepler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/huashi/otg/sdk/HsUsbHepler;->FindCard(JJ)I

    .line 165
    iget-object v0, p0, Lcom/huashi/otg/sdk/HsOtgApi;->usbHepler:Lcom/huashi/otg/sdk/HsUsbHepler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/huashi/otg/sdk/HsUsbHepler;->SelectCard(JJ)I

    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method public ReadCard(Lcom/huashi/otg/sdk/HSIDCardInfo;JJ)I
    .locals 9
    .param p1, "ici"    # Lcom/huashi/otg/sdk/HSIDCardInfo;
    .param p2, "sendTime"    # J
    .param p4, "recvTime"    # J

    .line 171
    const/4 v0, 0x2

    :try_start_0
    iget-boolean v1, p0, Lcom/huashi/otg/sdk/HsOtgApi;->init_suss:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 172
    return v2

    .line 174
    :cond_0
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 175
    .local v1, "e":[B
    iget-object v3, p0, Lcom/huashi/otg/sdk/HsOtgApi;->usbHepler:Lcom/huashi/otg/sdk/HsUsbHepler;

    move-object v4, v1

    move-wide v5, p2

    move-wide v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/huashi/otg/sdk/HsUsbHepler;->ReadCard([BJJ)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 176
    return v0

    .line 178
    :cond_1
    const/16 v3, 0x100

    new-array v3, v3, [B

    .line 179
    .local v3, "headByte":[B
    const/16 v5, 0x400

    new-array v6, v5, [B

    .line 180
    .local v6, "wltData":[B
    new-array v5, v5, [B

    .line 181
    .local v5, "pucFPMsg":[B
    const/16 v7, 0x10

    array-length v8, v3

    invoke-static {v1, v7, v3, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    const/16 v7, 0x110

    array-length v8, v6

    invoke-static {v1, v7, v6, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    const/16 v7, 0x510

    array-length v8, v5

    invoke-static {v1, v7, v5, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    invoke-virtual {p1, v6}, Lcom/huashi/otg/sdk/HSIDCardInfo;->setwltdata([B)V

    .line 185
    invoke-virtual {p1, v5}, Lcom/huashi/otg/sdk/HSIDCardInfo;->setFpDate([B)V

    .line 186
    invoke-static {v3, p1}, Lcom/huashi/otg/sdk/Utility;->PersonInfoUtoG([BLcom/huashi/otg/sdk/HSIDCardInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    return v4

    .line 190
    .end local v1    # "e":[B
    .end local v3    # "headByte":[B
    .end local v5    # "pucFPMsg":[B
    .end local v6    # "wltData":[B
    :catch_0
    move-exception v1

    .line 191
    .local v1, "var10":Ljava/lang/Exception;
    return v0
.end method

.method public Unpack([B[C)I
    .locals 2
    .param p1, "wltdata"    # [B
    .param p2, "RGBdata"    # [C

    .line 197
    const/4 v0, -0x1

    .line 200
    .local v0, "ret":B
    :try_start_0
    invoke-static {p1, p2}, Lcom/huashi/otg/sdk/Utility;->PersonInfoPic([B[C)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .local v1, "ret1":I
    return v1

    .line 202
    .end local v1    # "ret1":I
    :catch_0
    move-exception v1

    .line 203
    .local v1, "var5":Ljava/lang/Exception;
    return v0
.end method

.method public init()I
    .locals 5

    .line 117
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 119
    .local v0, "msg":Landroid/os/Message;
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 120
    .local v1, "e":Landroid/content/IntentFilter;
    const-string v2, "com.android.USB_PERMISSION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    iget-object v2, p0, Lcom/huashi/otg/sdk/HsOtgApi;->instance:Landroid/content/Context;

    iget-object v3, p0, Lcom/huashi/otg/sdk/HsOtgApi;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 122
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 123
    .local v2, "e1":Landroid/content/IntentFilter;
    const-string v3, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    iget-object v3, p0, Lcom/huashi/otg/sdk/HsOtgApi;->instance:Landroid/content/Context;

    iget-object v4, p0, Lcom/huashi/otg/sdk/HsOtgApi;->mUsbReceiver1:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 125
    new-instance v3, Lcom/huashi/otg/sdk/HsUsbHepler;

    iget-object v4, p0, Lcom/huashi/otg/sdk/HsOtgApi;->instance:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/huashi/otg/sdk/HsUsbHepler;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/huashi/otg/sdk/HsOtgApi;->usbHepler:Lcom/huashi/otg/sdk/HsUsbHepler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v1    # "e":Landroid/content/IntentFilter;
    .end local v2    # "e1":Landroid/content/IntentFilter;
    nop

    .line 133
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/huashi/otg/sdk/HsOtgApi;->init_suss:Z

    .line 134
    return v1

    .line 126
    :catch_0
    move-exception v1

    .line 127
    .local v1, "var3":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    const/4 v3, -0x1

    if-nez v2, :cond_0

    .line 128
    return v3

    .line 130
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/huashi/otg/sdk/HsOtgApi;->init_suss:Z

    .line 131
    return v3
.end method

.method public unInit()V
    .locals 2

    .line 140
    iget-boolean v0, p0, Lcom/huashi/otg/sdk/HsOtgApi;->m_New:Z

    if-eqz v0, :cond_0

    .line 141
    iget-boolean v0, p0, Lcom/huashi/otg/sdk/HsOtgApi;->init_suss:Z

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/huashi/otg/sdk/HsOtgApi;->instance:Landroid/content/Context;

    iget-object v1, p0, Lcom/huashi/otg/sdk/HsOtgApi;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 143
    iget-object v0, p0, Lcom/huashi/otg/sdk/HsOtgApi;->instance:Landroid/content/Context;

    iget-object v1, p0, Lcom/huashi/otg/sdk/HsOtgApi;->mUsbReceiver1:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 146
    :cond_0
    return-void
.end method

.method public unpack([B[BLjava/lang/String;)I
    .locals 2
    .param p1, "wltdata"    # [B
    .param p2, "bmpBuf"    # [B
    .param p3, "filepath"    # Ljava/lang/String;

    .line 109
    const v0, 0x969c

    new-array v0, v0, [B

    .line 110
    .local v0, "BGRbuf":[B
    const/16 v1, 0x25a

    invoke-static {p1, v0, v1}, Lcom/example/libdecodewlt/RAW2BMP;->HS_RAW2BMP([B[BI)I

    move-result v1

    .line 111
    .local v1, "Eor":I
    invoke-static {v0, p2, p3}, Lcom/example/libdecodewlt/RAW2BMP;->BGR2BMP([B[BLjava/lang/String;)V

    .line 113
    return v1
.end method
