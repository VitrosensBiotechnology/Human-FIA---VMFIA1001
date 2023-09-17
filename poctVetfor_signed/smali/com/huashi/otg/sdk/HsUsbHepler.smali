.class public Lcom/huashi/otg/sdk/HsUsbHepler;
.super Ljava/lang/Object;
.source "HsUsbHepler.java"


# instance fields
.field activity:Landroid/content/Context;

.field public sdk:Lcom/huashi/otg/sdk/HsOTGSDK;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "activity"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/huashi/otg/sdk/HsOTGSDK;

    invoke-direct {v0, p1}, Lcom/huashi/otg/sdk/HsOTGSDK;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huashi/otg/sdk/HsUsbHepler;->sdk:Lcom/huashi/otg/sdk/HsOTGSDK;

    .line 17
    iput-object p1, p0, Lcom/huashi/otg/sdk/HsUsbHepler;->activity:Landroid/content/Context;

    .line 18
    return-void
.end method

.method private AnalyzeSAM([B)Ljava/lang/String;
    .locals 11
    .param p1, "sambuffer"    # [B

    .line 52
    const/16 v0, 0x9

    aget-byte v0, p1, v0

    const/4 v1, 0x0

    const/16 v2, -0x70

    if-eq v0, v2, :cond_0

    .line 53
    iget-object v0, p0, Lcom/huashi/otg/sdk/HsUsbHepler;->activity:Landroid/content/Context;

    const-string v2, "\u8bbe\u5907SAM\u53f7\u8bfb\u53d6\u9519\u8bef\uff01"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 54
    const-string v0, ""

    return-object v0

    .line 56
    :cond_0
    const/4 v0, 0x4

    new-array v2, v0, [B

    .line 57
    .local v2, "samdate":[B
    const/16 v3, 0xe

    invoke-static {p1, v3, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    invoke-static {v2}, Lcom/huashi/otg/sdk/HsUsbHepler;->getLong([B)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 59
    .local v3, "ret":J
    const-string v5, "AAAAAAA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-array v5, v0, [B

    .line 72
    .local v5, "samtenid":[B
    const/16 v6, 0x12

    invoke-static {p1, v6, v5, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    new-array v6, v0, [B

    .line 74
    .local v6, "samstr":[B
    const/16 v7, 0x16

    invoke-static {p1, v7, v6, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    const-string v7, "%02d.%02d-%010d-%010d-%010d"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v9, 0xa

    aget-byte v9, p1, v9

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v8, v1

    const/4 v1, 0x1

    const/16 v9, 0xc

    aget-byte v9, p1, v9

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v8, v1

    const/4 v1, 0x2

    invoke-static {v2}, Lcom/huashi/otg/sdk/HsUsbHepler;->getLong([B)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v1

    const/4 v1, 0x3

    invoke-static {v5}, Lcom/huashi/otg/sdk/HsUsbHepler;->getLong([B)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v6}, Lcom/huashi/otg/sdk/HsUsbHepler;->getLong([B)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v8, v0

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "samid":Ljava/lang/String;
    return-object v0
.end method

.method private static getLong([B)J
    .locals 7
    .param p0, "buf"    # [B

    .line 81
    const-wide/16 v0, 0x0

    .line 82
    .local v0, "i":J
    const-wide/16 v2, 0x0

    .line 84
    .local v2, "tmp":J
    const/4 v4, 0x0

    .line 84
    .local v4, "j":I
    :goto_0
    array-length v5, p0

    if-lt v4, v5, :cond_0

    .line 89
    .end local v4    # "j":I
    return-wide v0

    .line 85
    .restart local v4    # "j":I
    :cond_0
    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    mul-int/lit8 v6, v4, 0x8

    shl-int/2addr v5, v6

    int-to-long v2, v5

    .line 86
    or-long v5, v0, v2

    .line 84
    .end local v0    # "i":J
    .local v5, "i":J
    add-int/lit8 v4, v4, 0x1

    move-wide v0, v5

    goto :goto_0
.end method


# virtual methods
.method public FindCard(JJ)I
    .locals 14
    .param p1, "sendTime"    # J
    .param p3, "recvTime"    # J

    .line 21
    sget-object v8, Lcom/huashi/otg/sdk/Hs_Cmd;->cmd_find:[B

    .line 22
    .local v8, "send":[B
    const/16 v0, 0x1000

    new-array v9, v0, [B

    .line 23
    .local v9, "recv":[B
    const/16 v10, -0x61

    const/16 v11, 0x9

    array-length v12, v8

    .line 24
    .local v12, "ret":I
    move-object v13, p0

    iget-object v0, v13, Lcom/huashi/otg/sdk/HsUsbHepler;->sdk:Lcom/huashi/otg/sdk/HsOTGSDK;

    move-object v1, v8

    move-object v2, v9

    move-wide v3, p1

    move-wide/from16 v5, p3

    move v7, v12

    invoke-virtual/range {v0 .. v7}, Lcom/huashi/otg/sdk/HsOTGSDK;->usbSendRecv([B[BJJI)V

    .line 25
    aget-byte v0, v9, v11

    if-ne v10, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ReadCard([BJJ)I
    .locals 13
    .param p1, "recv"    # [B
    .param p2, "sendTime"    # J
    .param p4, "recvTime"    # J

    .line 37
    sget-object v8, Lcom/huashi/otg/sdk/Hs_Cmd;->cmd_read_ftp:[B

    .line 38
    .local v8, "send":[B
    const/16 v9, -0x70

    const/16 v10, 0x9

    array-length v11, v8

    .line 39
    .local v11, "ret":I
    move-object v12, p0

    iget-object v0, v12, Lcom/huashi/otg/sdk/HsUsbHepler;->sdk:Lcom/huashi/otg/sdk/HsOTGSDK;

    move-object v1, v8

    move-object v2, p1

    move-wide v3, p2

    move-wide/from16 v5, p4

    move v7, v11

    invoke-virtual/range {v0 .. v7}, Lcom/huashi/otg/sdk/HsOTGSDK;->usbSendRecv([B[BJJI)V

    .line 40
    aget-byte v1, p1, v10

    if-ne v9, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public SelectCard(JJ)I
    .locals 14
    .param p1, "sendTime"    # J
    .param p3, "recvTime"    # J

    .line 29
    sget-object v8, Lcom/huashi/otg/sdk/Hs_Cmd;->cmd_selt:[B

    .line 30
    .local v8, "send":[B
    const/16 v0, 0x1000

    new-array v9, v0, [B

    .line 31
    .local v9, "recv":[B
    const/16 v10, -0x70

    const/16 v11, 0x9

    array-length v12, v8

    .line 32
    .local v12, "ret":I
    move-object v13, p0

    iget-object v0, v13, Lcom/huashi/otg/sdk/HsUsbHepler;->sdk:Lcom/huashi/otg/sdk/HsOTGSDK;

    move-object v1, v8

    move-object v2, v9

    move-wide v3, p1

    move-wide/from16 v5, p3

    move v7, v12

    invoke-virtual/range {v0 .. v7}, Lcom/huashi/otg/sdk/HsOTGSDK;->usbSendRecv([B[BJJI)V

    .line 33
    aget-byte v0, v9, v11

    if-ne v10, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSAMID()Ljava/lang/String;
    .locals 11

    .line 44
    sget-object v8, Lcom/huashi/otg/sdk/Hs_Cmd;->cmd_SAM:[B

    .line 45
    .local v8, "send":[B
    const/16 v0, 0x1000

    new-array v9, v0, [B

    .line 46
    .local v9, "recv":[B
    const-wide/16 v3, 0x1388

    const-wide/16 v5, 0x3e8

    array-length v10, v8

    .line 47
    .local v10, "ret":I
    iget-object v0, p0, Lcom/huashi/otg/sdk/HsUsbHepler;->sdk:Lcom/huashi/otg/sdk/HsOTGSDK;

    move-object v1, v8

    move-object v2, v9

    move v7, v10

    invoke-virtual/range {v0 .. v7}, Lcom/huashi/otg/sdk/HsOTGSDK;->usbSendRecv([B[BJJI)V

    .line 48
    invoke-direct {p0, v9}, Lcom/huashi/otg/sdk/HsUsbHepler;->AnalyzeSAM([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
