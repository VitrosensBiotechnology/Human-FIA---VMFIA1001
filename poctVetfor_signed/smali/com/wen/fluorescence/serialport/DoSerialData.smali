.class public Lcom/wen/fluorescence/serialport/DoSerialData;
.super Ljava/lang/Object;
.source "DoSerialData.java"


# static fields
.field public static final MSG_DATA_PACKAGE:I = 0xa1

.field public static final MSG_ENV_TEMP:I = 0xa3

.field public static final MSG_REPORT_PACKAGE:I = 0xa2

.field public static final MSG_RESULT_PACKAGE:I = 0xa0

.field private static doSerialData:Lcom/wen/fluorescence/serialport/DoSerialData;


# instance fields
.field private currentPackNumber:B

.field private isStartGet:Z

.field private mHandler:Landroid/os/Handler;

.field private result:Ljava/lang/String;

.field private setFanOn:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/wen/fluorescence/serialport/DoSerialData;->currentPackNumber:B

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wen/fluorescence/serialport/DoSerialData;->setFanOn:Z

    .line 48
    const-string v1, ""

    iput-object v1, p0, Lcom/wen/fluorescence/serialport/DoSerialData;->result:Ljava/lang/String;

    .line 50
    iput-boolean v0, p0, Lcom/wen/fluorescence/serialport/DoSerialData;->isStartGet:Z

    return-void
.end method

.method static synthetic access$000(Lcom/wen/fluorescence/serialport/DoSerialData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/serialport/DoSerialData;

    .line 20
    iget-object v0, p0, Lcom/wen/fluorescence/serialport/DoSerialData;->result:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/wen/fluorescence/serialport/DoSerialData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/serialport/DoSerialData;
    .param p1, "x1"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/wen/fluorescence/serialport/DoSerialData;->result:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/wen/fluorescence/serialport/DoSerialData;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/serialport/DoSerialData;
    .param p1, "x1"    # Z

    .line 20
    iput-boolean p1, p0, Lcom/wen/fluorescence/serialport/DoSerialData;->isStartGet:Z

    return p1
.end method

.method public static getInstance(Landroid/os/Handler;)Lcom/wen/fluorescence/serialport/DoSerialData;
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;

    .line 35
    sget-object v0, Lcom/wen/fluorescence/serialport/DoSerialData;->doSerialData:Lcom/wen/fluorescence/serialport/DoSerialData;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/wen/fluorescence/serialport/DoSerialData;

    invoke-direct {v0}, Lcom/wen/fluorescence/serialport/DoSerialData;-><init>()V

    sput-object v0, Lcom/wen/fluorescence/serialport/DoSerialData;->doSerialData:Lcom/wen/fluorescence/serialport/DoSerialData;

    .line 38
    :cond_0
    if-eqz p0, :cond_1

    .line 39
    sget-object v0, Lcom/wen/fluorescence/serialport/DoSerialData;->doSerialData:Lcom/wen/fluorescence/serialport/DoSerialData;

    iput-object p0, v0, Lcom/wen/fluorescence/serialport/DoSerialData;->mHandler:Landroid/os/Handler;

    .line 41
    :cond_1
    sget-object v0, Lcom/wen/fluorescence/serialport/DoSerialData;->doSerialData:Lcom/wen/fluorescence/serialport/DoSerialData;

    return-object v0
.end method


# virtual methods
.method public clearBuffer()V
    .locals 1

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/serialport/DoSerialData;->result:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public receiveData(Ljava/lang/String;)V
    .locals 26
    .param p1, "data"    # Ljava/lang/String;

    move-object/from16 v1, p0

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/wen/fluorescence/serialport/DoSerialData;->result:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wen/fluorescence/serialport/DoSerialData;->result:Ljava/lang/String;

    .line 55
    iget-boolean v2, v1, Lcom/wen/fluorescence/serialport/DoSerialData;->isStartGet:Z

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-nez v2, :cond_4

    .line 56
    iget-object v2, v1, Lcom/wen/fluorescence/serialport/DoSerialData;->result:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v5, :cond_0

    .line 57
    return-void

    .line 59
    :cond_0
    :goto_0
    iget-object v2, v1, Lcom/wen/fluorescence/serialport/DoSerialData;->result:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_2

    .line 60
    iget-object v2, v1, Lcom/wen/fluorescence/serialport/DoSerialData;->result:Ljava/lang/String;

    const-string v7, "55AA"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    goto :goto_1

    .line 63
    :cond_1
    iget-object v2, v1, Lcom/wen/fluorescence/serialport/DoSerialData;->result:Ljava/lang/String;

    iget-object v7, v1, Lcom/wen/fluorescence/serialport/DoSerialData;->result:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wen/fluorescence/serialport/DoSerialData;->result:Ljava/lang/String;

    goto :goto_0

    .line 66
    :cond_2
    :goto_1
    iget-object v2, v1, Lcom/wen/fluorescence/serialport/DoSerialData;->result:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v5, :cond_3

    .line 67
    return-void

    .line 69
    :cond_3
    iput-boolean v6, v1, Lcom/wen/fluorescence/serialport/DoSerialData;->isStartGet:Z

    .line 70
    invoke-static {}, Lcom/wen/fluorescence/Thread/MyReceiveTimer;->getInstance()Lcom/wen/fluorescence/Thread/MyReceiveTimer;

    move-result-object v2

    new-instance v7, Lcom/wen/fluorescence/serialport/DoSerialData$1;

    invoke-direct {v7, v1}, Lcom/wen/fluorescence/serialport/DoSerialData$1;-><init>(Lcom/wen/fluorescence/serialport/DoSerialData;)V

    const/16 v8, 0x7d0

    invoke-virtual {v2, v7, v8}, Lcom/wen/fluorescence/Thread/MyReceiveTimer;->setTimerStart(Lcom/wen/fluorescence/Thread/MyReceiveTimer$TimerOutCallBack;I)V

    .line 80
    :cond_4
    iget-object v2, v1, Lcom/wen/fluorescence/serialport/DoSerialData;->result:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v7, 0x18

    if-ge v2, v7, :cond_5

    .line 81
    return-void

    .line 84
    :cond_5
    :goto_2
    iget-object v2, v1, Lcom/wen/fluorescence/serialport/DoSerialData;->result:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v7, :cond_1e

    .line 86
    iget-object v2, v1, Lcom/wen/fluorescence/serialport/DoSerialData;->result:Ljava/lang/String;

    invoke-static {v2}, Lcom/wen/fluorescence/util/PublicFuction;->stringToByte(Ljava/lang/String;)[B

    move-result-object v2

    .line 87
    .local v2, "bResultArray":[B
    const/4 v8, 0x0

    aget-byte v9, v2, v8

    and-int/lit16 v9, v9, 0xff

    const/16 v10, 0x55

    if-ne v9, v10, :cond_1d

    aget-byte v9, v2, v6

    and-int/lit16 v9, v9, 0xff

    const/16 v10, 0xaa

    if-ne v9, v10, :cond_1d

    .line 88
    const/4 v9, 0x2

    .line 89
    .local v9, "index":I
    add-int/lit8 v10, v9, 0x1

    .line 89
    .local v10, "index":I
    aget-byte v9, v2, v9

    .line 89
    .end local v9    # "index":I
    and-int/lit16 v9, v9, 0xff

    const/16 v11, 0x8

    shl-int/2addr v9, v11

    add-int/lit8 v12, v10, 0x1

    .line 89
    .local v12, "index":I
    aget-byte v10, v2, v10

    .line 89
    .end local v10    # "index":I
    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    .line 90
    .local v9, "len":I
    array-length v10, v2

    add-int/lit8 v13, v9, 0x4

    if-lt v10, v13, :cond_1e

    .line 92
    invoke-static {}, Lcom/wen/fluorescence/Thread/MyReceiveTimer;->getInstance()Lcom/wen/fluorescence/Thread/MyReceiveTimer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/wen/fluorescence/Thread/MyReceiveTimer;->setTimerCancel()V

    .line 93
    add-int/lit8 v10, v12, 0x1

    .line 93
    .restart local v10    # "index":I
    aget-byte v12, v2, v12

    .line 94
    .local v12, "packType":B
    add-int/lit8 v13, v10, 0x1

    .line 94
    .local v13, "index":I
    aget-byte v10, v2, v10

    .line 95
    .local v10, "packNumber":B
    add-int/2addr v13, v6

    .line 96
    add-int/2addr v13, v6

    .line 97
    add-int/lit8 v14, v13, 0x1

    .line 97
    .local v14, "index":I
    aget-byte v13, v2, v13

    .line 98
    .local v13, "cmd":B
    add-int/lit8 v15, v14, 0x1

    .line 98
    .local v15, "index":I
    aget-byte v14, v2, v14

    .line 100
    .local v14, "cmdSub":B
    add-int/lit8 v16, v9, 0x4

    add-int/lit8 v16, v16, -0x2

    aget-byte v7, v2, v16

    .line 101
    .local v7, "crc16Hight":B
    add-int/lit8 v16, v9, 0x4

    add-int/lit8 v16, v16, -0x1

    aget-byte v6, v2, v16

    .line 102
    .local v6, "crc16Low":B
    add-int/lit8 v16, v9, 0x4

    add-int/lit8 v11, v16, -0x2

    invoke-static {v2, v5, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v11

    invoke-static {v11}, Lcom/wen/fluorescence/util/CRC16;->GetCRC16([B)I

    move-result v11

    .line 103
    .local v11, "calCrc16":I
    shr-int/lit8 v5, v11, 0x8

    int-to-byte v5, v5

    .line 104
    .local v5, "calCrc16H":B
    int-to-byte v8, v11

    .line 105
    .local v8, "calCrc16L":B
    if-ne v7, v5, :cond_1c

    if-eq v6, v8, :cond_6

    .line 106
    move/from16 v17, v5

    move/from16 v20, v6

    goto/16 :goto_11

    .line 111
    :cond_6
    const-string v4, "DO"

    const-string v3, ".......CRC16...OK...."

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v3, 0x2

    if-ne v12, v3, :cond_7

    .line 115
    invoke-static {}, Lcom/wen/fluorescence/Thread/SendTimer;->getInstance()Lcom/wen/fluorescence/Thread/SendTimer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wen/fluorescence/Thread/SendTimer;->setSendTimeOutCancel()V

    .line 116
    const-string v3, "DO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v5

    const-string v5, ".......Get ACK Package."

    .line 116
    .end local v5    # "calCrc16H":B
    .local v17, "calCrc16H":B
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v15, 0x1

    .line 116
    .local v5, "index":I
    aget-byte v15, v2, v15

    .line 116
    .end local v15    # "index":I
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    move v15, v5

    move/from16 v20, v6

    goto/16 :goto_10

    .line 117
    .end local v17    # "calCrc16H":B
    .local v5, "calCrc16H":B
    .restart local v15    # "index":I
    :cond_7
    move/from16 v17, v5

    .line 117
    .end local v5    # "calCrc16H":B
    .restart local v17    # "calCrc16H":B
    const/4 v3, 0x3

    if-ne v12, v3, :cond_e

    .line 119
    const-string v3, "DO"

    const-string v4, ".......Get Result Package."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v3, 0x0

    invoke-static {v13, v14, v10, v3}, Lcom/wen/fluorescence/serialport/Protocol;->sendACK(BBBB)V

    .line 121
    add-int/lit8 v3, v15, 0x1

    .line 121
    .local v3, "index":I
    aget-byte v4, v2, v15

    .line 122
    .end local v15    # "index":I
    .local v4, "bResult":B
    iget-object v5, v1, Lcom/wen/fluorescence/serialport/DoSerialData;->mHandler:Landroid/os/Handler;

    const/16 v15, 0xa0

    invoke-virtual {v5, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 123
    .local v5, "msg":Landroid/os/Message;
    iput v13, v5, Landroid/os/Message;->arg1:I

    .line 124
    iput v14, v5, Landroid/os/Message;->arg2:I

    .line 125
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    iput-object v15, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 126
    iget-object v15, v1, Lcom/wen/fluorescence/serialport/DoSerialData;->mHandler:Landroid/os/Handler;

    invoke-virtual {v15, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 127
    const/16 v15, 0x12

    if-ne v13, v15, :cond_9

    const/4 v15, 0x6

    if-ne v14, v15, :cond_9

    .line 128
    const-string v15, "DO"

    move/from16 v18, v3

    new-instance v3, Ljava/lang/StringBuilder;

    .line 128
    .end local v3    # "index":I
    .local v18, "index":I
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v5

    const-string v5, "\u8bbe\u7f6e\u6e29\u5ea6:"

    .line 128
    .end local v5    # "msg":Landroid/os/Message;
    .local v19, "msg":Landroid/os/Message;
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_8

    const-string v5, "\u6210\u529f"

    goto :goto_3

    :cond_8
    const-string v5, "\u5931\u8d25"

    :goto_3
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 130
    .end local v18    # "index":I
    .end local v19    # "msg":Landroid/os/Message;
    .restart local v3    # "index":I
    .restart local v5    # "msg":Landroid/os/Message;
    :cond_9
    move/from16 v18, v3

    move-object/from16 v19, v5

    .line 130
    .end local v3    # "index":I
    .end local v5    # "msg":Landroid/os/Message;
    .restart local v18    # "index":I
    .restart local v19    # "msg":Landroid/os/Message;
    :goto_4
    const/16 v3, 0x12

    if-ne v13, v3, :cond_a

    const/16 v3, 0x8

    if-eq v14, v3, :cond_b

    :cond_a
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wen/fluorescence/util/Global;->getTestStatus()Z

    move-result v3

    if-nez v3, :cond_b

    .line 131
    invoke-static {}, Lcom/wen/fluorescence/Thread/TempTimer;->getInstance()Lcom/wen/fluorescence/Thread/TempTimer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wen/fluorescence/Thread/TempTimer;->startTempTimer()V

    .line 134
    :cond_b
    const/16 v3, 0x12

    if-ne v13, v3, :cond_d

    const/16 v3, 0x9

    if-ne v14, v3, :cond_d

    if-nez v4, :cond_d

    .line 135
    iget-boolean v3, v1, Lcom/wen/fluorescence/serialport/DoSerialData;->setFanOn:Z

    if-eqz v3, :cond_c

    .line 136
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/wen/fluorescence/util/Global;->setbFanOpen(Z)V

    goto :goto_5

    .line 138
    :cond_c
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/wen/fluorescence/util/Global;->setbFanOpen(Z)V

    .line 141
    .end local v4    # "bResult":B
    .end local v19    # "msg":Landroid/os/Message;
    :cond_d
    :goto_5
    nop

    .line 318
    move/from16 v20, v6

    move/from16 v15, v18

    goto/16 :goto_10

    .line 141
    .end local v18    # "index":I
    .restart local v15    # "index":I
    :cond_e
    const/4 v3, 0x4

    if-ne v12, v3, :cond_1a

    .line 143
    iput-byte v10, v1, Lcom/wen/fluorescence/serialport/DoSerialData;->currentPackNumber:B

    .line 144
    const-string v4, "DO"

    const-string v5, ".......Get Data Package."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v4, 0x0

    invoke-static {v13, v14, v10, v4}, Lcom/wen/fluorescence/serialport/Protocol;->sendACK(BBBB)V

    .line 146
    if-eqz v13, :cond_18

    const/4 v5, 0x2

    if-eq v13, v5, :cond_16

    packed-switch v13, :pswitch_data_0

    goto :goto_6

    .line 262
    :pswitch_0
    const/16 v5, 0x8

    if-eq v14, v5, :cond_f

    .line 302
    :goto_6
    move/from16 v20, v6

    goto/16 :goto_f

    .line 264
    :cond_f
    add-int/lit8 v16, v15, 0x1

    .line 264
    .local v16, "index":I
    aget-byte v15, v2, v15

    .line 264
    .end local v15    # "index":I
    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v5

    add-int/lit8 v5, v16, 0x1

    .line 264
    .local v5, "index":I
    aget-byte v3, v2, v16

    .line 264
    .end local v16    # "index":I
    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v15

    .line 265
    .local v3, "temp":I
    const/4 v15, 0x0

    .line 266
    .local v15, "temp2":I
    array-length v4, v2

    move/from16 v20, v6

    const/16 v6, 0x10

    .line 266
    .end local v6    # "crc16Low":B
    .local v20, "crc16Low":B
    if-ne v4, v6, :cond_10

    .line 267
    add-int/lit8 v4, v5, 0x1

    .line 267
    .local v4, "index":I
    aget-byte v5, v2, v5

    .line 267
    .end local v5    # "index":I
    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    add-int/lit8 v6, v4, 0x1

    .line 267
    .local v6, "index":I
    aget-byte v4, v2, v4

    .line 267
    .end local v4    # "index":I
    and-int/lit16 v4, v4, 0xff

    or-int v15, v5, v4

    .line 269
    move v5, v6

    .line 269
    .end local v6    # "index":I
    .restart local v5    # "index":I
    :cond_10
    const-string v4, "as"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v5

    const-string v5, "bResultArray\uff1a"

    .line 269
    .end local v5    # "index":I
    .local v21, "index":I
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v2

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    move v4, v3

    .line 271
    .local v4, "temperature":I
    if-eqz v15, :cond_11

    .line 272
    move v4, v15

    .line 274
    :cond_11
    const/16 v5, 0x104

    if-le v4, v5, :cond_12

    .line 275
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wen/fluorescence/util/Global;->isbFanOpen()Z

    move-result v5

    if-nez v5, :cond_13

    .line 276
    const-string v5, "as"

    const-string v6, "\u98ce\u6247\u6253\u5f00..."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/wen/fluorescence/serialport/DoSerialData;->setFanOn:Z

    .line 278
    invoke-static {v5}, Lcom/wen/fluorescence/serialport/Protocol;->setFanSwitch(Z)V

    goto :goto_7

    .line 281
    :cond_12
    const/4 v5, 0x1

    const/16 v6, 0xfa

    if-gt v4, v6, :cond_13

    .line 282
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wen/fluorescence/util/Global;->isbFanOpen()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 283
    const-string v6, "as"

    const-string v5, "\u98ce\u6247\u5173\u95ed..."

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/wen/fluorescence/serialport/DoSerialData;->setFanOn:Z

    .line 285
    invoke-static {v5}, Lcom/wen/fluorescence/serialport/Protocol;->setFanSwitch(Z)V

    .line 289
    :cond_13
    :goto_7
    const-string v5, "as"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v4

    const-string v4, "\u52a0\u70ed\u7247\u6e29\u5ea6\uff1a"

    .line 289
    .end local v4    # "temperature":I
    .local v22, "temperature":I
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",\u73af\u5883\u6e29\u5ea6\uff1a"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v4, v1, Lcom/wen/fluorescence/serialport/DoSerialData;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xa1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 291
    .local v4, "msg":Landroid/os/Message;
    iput v13, v4, Landroid/os/Message;->arg1:I

    .line 292
    iput v14, v4, Landroid/os/Message;->arg2:I

    .line 293
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 294
    iget-object v5, v1, Lcom/wen/fluorescence/serialport/DoSerialData;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 296
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 297
    .local v5, "envTempMsg":Landroid/os/Message;
    const/16 v6, 0xa3

    iput v6, v5, Landroid/os/Message;->what:I

    .line 298
    iput v15, v5, Landroid/os/Message;->arg1:I

    .line 299
    iget-object v6, v1, Lcom/wen/fluorescence/serialport/DoSerialData;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 302
    .end local v3    # "temp":I
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "envTempMsg":Landroid/os/Message;
    .end local v15    # "temp2":I
    .end local v22    # "temperature":I
    move/from16 v15, v21

    goto/16 :goto_f

    .line 218
    .end local v20    # "crc16Low":B
    .end local v21    # "index":I
    .local v6, "crc16Low":B
    .local v15, "index":I
    :pswitch_1
    move/from16 v20, v6

    .line 218
    .end local v6    # "crc16Low":B
    .restart local v20    # "crc16Low":B
    if-eqz v14, :cond_15

    packed-switch v14, :pswitch_data_1

    goto/16 :goto_b

    .line 247
    :pswitch_2
    add-int/lit8 v3, v15, 0x1

    .line 247
    .local v3, "index":I
    aget-byte v4, v2, v15

    .line 247
    .end local v15    # "index":I
    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    add-int/lit8 v5, v3, 0x1

    .line 247
    .local v5, "index":I
    aget-byte v3, v2, v3

    .line 247
    .end local v3    # "index":I
    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v4

    .line 248
    .local v3, "count":I
    new-array v4, v3, [I

    .line 249
    .local v4, "iDataArray":[I
    move v15, v5

    const/4 v5, 0x0

    .line 249
    .local v5, "i":I
    .restart local v15    # "index":I
    :goto_8
    array-length v6, v4

    if-ge v5, v6, :cond_14

    .line 250
    add-int/lit8 v6, v15, 0x1

    .line 250
    .local v6, "index":I
    aget-byte v15, v2, v15

    .line 250
    .end local v15    # "index":I
    and-int/lit16 v15, v15, 0xff

    const/16 v16, 0x8

    shl-int/lit8 v15, v15, 0x8

    add-int/lit8 v16, v6, 0x1

    .line 250
    .restart local v16    # "index":I
    aget-byte v6, v2, v6

    .line 250
    .end local v6    # "index":I
    and-int/lit16 v6, v6, 0xff

    or-int/2addr v6, v15

    aput v6, v4, v5

    .line 249
    add-int/lit8 v5, v5, 0x1

    move/from16 v15, v16

    goto :goto_8

    .line 252
    .end local v5    # "i":I
    .end local v16    # "index":I
    .restart local v15    # "index":I
    :cond_14
    iget-object v5, v1, Lcom/wen/fluorescence/serialport/DoSerialData;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xa1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 253
    .local v5, "msg":Landroid/os/Message;
    iput v13, v5, Landroid/os/Message;->arg1:I

    .line 254
    iput v14, v5, Landroid/os/Message;->arg2:I

    .line 255
    iput-object v4, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 256
    iget-object v6, v1, Lcom/wen/fluorescence/serialport/DoSerialData;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 256
    .end local v3    # "count":I
    .end local v4    # "iDataArray":[I
    .end local v5    # "msg":Landroid/os/Message;
    goto :goto_b

    .line 231
    :pswitch_3
    add-int/lit8 v3, v15, 0x1

    .line 231
    .local v3, "index":I
    array-length v4, v2

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    invoke-static {v2, v15, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 232
    .end local v15    # "index":I
    .local v4, "bCodeArray":[B
    const-string v5, ""

    .line 234
    .local v5, "strBarCode":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/lang/String;

    const-string v15, "GBK"

    invoke-direct {v6, v4, v15}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v6

    .line 237
    goto :goto_9

    .line 235
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 236
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 238
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_9
    iget-object v6, v1, Lcom/wen/fluorescence/serialport/DoSerialData;->mHandler:Landroid/os/Handler;

    const/16 v15, 0xa1

    invoke-virtual {v6, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 239
    .local v6, "msg":Landroid/os/Message;
    iput v13, v6, Landroid/os/Message;->arg1:I

    .line 240
    iput v14, v6, Landroid/os/Message;->arg2:I

    .line 241
    iput-object v5, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 242
    iget-object v15, v1, Lcom/wen/fluorescence/serialport/DoSerialData;->mHandler:Landroid/os/Handler;

    invoke-virtual {v15, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 244
    .end local v4    # "bCodeArray":[B
    .end local v5    # "strBarCode":Ljava/lang/String;
    .end local v6    # "msg":Landroid/os/Message;
    goto :goto_a

    .line 221
    .end local v3    # "index":I
    .restart local v15    # "index":I
    :cond_15
    add-int/lit8 v3, v15, 0x1

    .line 221
    .restart local v3    # "index":I
    aget-byte v4, v2, v15

    .line 222
    .end local v15    # "index":I
    .local v4, "status":B
    iget-object v5, v1, Lcom/wen/fluorescence/serialport/DoSerialData;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xa1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 223
    .local v5, "msg":Landroid/os/Message;
    iput v13, v5, Landroid/os/Message;->arg1:I

    .line 224
    iput v14, v5, Landroid/os/Message;->arg2:I

    .line 225
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 226
    iget-object v6, v1, Lcom/wen/fluorescence/serialport/DoSerialData;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 228
    .end local v4    # "status":B
    .end local v5    # "msg":Landroid/os/Message;
    nop

    .line 260
    .end local v3    # "index":I
    .restart local v15    # "index":I
    :goto_a
    move v15, v3

    :goto_b
    goto/16 :goto_f

    .line 193
    .end local v20    # "crc16Low":B
    .local v6, "crc16Low":B
    :cond_16
    move/from16 v20, v6

    .line 193
    .end local v6    # "crc16Low":B
    .restart local v20    # "crc16Low":B
    if-eqz v14, :cond_17

    goto/16 :goto_c

    .line 195
    :cond_17
    const-string v3, "V"

    .line 196
    .local v3, "strHardWareVersion":Ljava/lang/String;
    const-string v4, "V"

    .line 198
    .local v4, "strFirmWareVersion":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v15, 0x1

    .line 198
    .local v6, "index":I
    aget-byte v15, v2, v15

    .line 198
    .end local v15    # "index":I
    and-int/lit16 v15, v15, 0xff

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "."

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 199
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v6, 0x1

    .line 199
    .restart local v15    # "index":I
    aget-byte v6, v2, v6

    .line 199
    .end local v6    # "index":I
    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 200
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v15, 0x1

    .line 200
    .restart local v6    # "index":I
    aget-byte v15, v2, v15

    .line 200
    .end local v15    # "index":I
    and-int/lit16 v15, v15, 0xff

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "."

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 201
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v6, 0x1

    .line 201
    .restart local v15    # "index":I
    aget-byte v6, v2, v6

    .line 201
    .end local v6    # "index":I
    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 202
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v15, 0x1

    .line 202
    .restart local v6    # "index":I
    aget-byte v15, v2, v15

    .line 202
    .end local v15    # "index":I
    and-int/lit16 v15, v15, 0xff

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "."

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 203
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v6, 0x1

    .line 203
    .restart local v15    # "index":I
    aget-byte v6, v2, v6

    .line 203
    .end local v6    # "index":I
    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 204
    add-int/lit8 v5, v15, 0x1

    .line 204
    .local v5, "index":I
    aget-byte v6, v2, v15

    .line 204
    .end local v15    # "index":I
    and-int/lit16 v6, v6, 0xff

    .line 205
    .local v6, "packageLen":I
    new-instance v15, Lcom/wen/fluorescence/bean/Version;

    invoke-direct {v15}, Lcom/wen/fluorescence/bean/Version;-><init>()V

    .line 206
    .local v15, "version":Lcom/wen/fluorescence/bean/Version;
    invoke-virtual {v15, v3}, Lcom/wen/fluorescence/bean/Version;->setHardVersion(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v15, v4}, Lcom/wen/fluorescence/bean/Version;->setFirmVersion(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v15, v6}, Lcom/wen/fluorescence/bean/Version;->setPackageLen(I)V

    .line 209
    move-object/from16 v23, v3

    iget-object v3, v1, Lcom/wen/fluorescence/serialport/DoSerialData;->mHandler:Landroid/os/Handler;

    .line 209
    .end local v3    # "strHardWareVersion":Ljava/lang/String;
    .local v23, "strHardWareVersion":Ljava/lang/String;
    move-object/from16 v24, v4

    const/16 v4, 0xa1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 210
    .end local v4    # "strFirmWareVersion":Ljava/lang/String;
    .local v3, "msg":Landroid/os/Message;
    .local v24, "strFirmWareVersion":Ljava/lang/String;
    iput v13, v3, Landroid/os/Message;->arg1:I

    .line 211
    iput v14, v3, Landroid/os/Message;->arg2:I

    .line 212
    iput-object v15, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 213
    iget-object v4, v1, Lcom/wen/fluorescence/serialport/DoSerialData;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 216
    .end local v3    # "msg":Landroid/os/Message;
    .end local v6    # "packageLen":I
    .end local v15    # "version":Lcom/wen/fluorescence/bean/Version;
    .end local v23    # "strHardWareVersion":Ljava/lang/String;
    .end local v24    # "strFirmWareVersion":Ljava/lang/String;
    move v15, v5

    .line 216
    .end local v5    # "index":I
    .local v15, "index":I
    :goto_c
    goto/16 :goto_f

    .line 148
    .end local v20    # "crc16Low":B
    .local v6, "crc16Low":B
    :cond_18
    move/from16 v20, v6

    .line 148
    .end local v6    # "crc16Low":B
    .restart local v20    # "crc16Low":B
    packed-switch v14, :pswitch_data_2

    goto/16 :goto_e

    .line 171
    :pswitch_4
    new-instance v3, Lcom/wen/fluorescence/bean/SystemConfig;

    invoke-direct {v3}, Lcom/wen/fluorescence/bean/SystemConfig;-><init>()V

    .line 172
    .local v3, "config":Lcom/wen/fluorescence/bean/SystemConfig;
    add-int/lit8 v4, v15, 0x1

    .line 172
    .local v4, "index":I
    aget-byte v5, v2, v15

    .line 172
    .end local v15    # "index":I
    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    add-int/lit8 v6, v4, 0x1

    .line 172
    .local v6, "index":I
    aget-byte v4, v2, v4

    .line 172
    .end local v4    # "index":I
    and-int/lit16 v4, v4, 0xff

    or-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/bean/SystemConfig;->setStartPosition(I)V

    .line 173
    add-int/lit8 v4, v6, 0x1

    .line 173
    .restart local v4    # "index":I
    aget-byte v5, v2, v6

    .line 173
    .end local v6    # "index":I
    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    add-int/lit8 v6, v4, 0x1

    .line 173
    .restart local v6    # "index":I
    aget-byte v4, v2, v4

    .line 173
    .end local v4    # "index":I
    and-int/lit16 v4, v4, 0xff

    or-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/bean/SystemConfig;->setRunTotal(I)V

    .line 174
    add-int/lit8 v4, v6, 0x1

    .line 174
    .restart local v4    # "index":I
    aget-byte v5, v2, v6

    .line 174
    .end local v6    # "index":I
    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v3, v5}, Lcom/wen/fluorescence/bean/SystemConfig;->setMaxAD(I)V

    .line 175
    add-int/lit8 v5, v4, 0x1

    .line 175
    .restart local v5    # "index":I
    aget-byte v4, v2, v4

    .line 175
    .end local v4    # "index":I
    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/bean/SystemConfig;->setScanTime(I)V

    .line 176
    add-int/lit8 v4, v5, 0x1

    .line 176
    .restart local v4    # "index":I
    aget-byte v5, v2, v5

    .line 176
    .end local v5    # "index":I
    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    add-int/lit8 v6, v4, 0x1

    .line 176
    .restart local v6    # "index":I
    aget-byte v4, v2, v4

    .line 176
    .end local v4    # "index":I
    and-int/lit16 v4, v4, 0xff

    or-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/bean/SystemConfig;->setTemp(I)V

    .line 177
    add-int/lit8 v4, v6, 0x1

    .line 177
    .restart local v4    # "index":I
    aget-byte v5, v2, v6

    .line 177
    .end local v6    # "index":I
    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v3, v5}, Lcom/wen/fluorescence/bean/SystemConfig;->setTempSwitch(I)V

    .line 178
    add-int/lit8 v15, v4, 0x1

    .line 178
    .restart local v15    # "index":I
    aget-byte v4, v2, v4

    .line 178
    .end local v4    # "index":I
    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/bean/SystemConfig;->setDebugSwitch(I)V

    .line 179
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/wen/fluorescence/util/Global;->setConfig(Lcom/wen/fluorescence/bean/SystemConfig;)V

    .line 180
    const-string v4, "as"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Protocol:\u67e5\u8be2\u7cfb\u7edf\u53c2\u6570\u7684\u7528\u6237\u914d\u7f6e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/wen/fluorescence/bean/SystemConfig;->getTemp()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-string v4, "as"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Protocol:\u67e5\u8be2\u7cfb\u7edf\u53c2\u6570\u7684\u7528\u6237\u914d\u7f6e\u6e29\u5ea6\u5f00\u5173:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v3}, Lcom/wen/fluorescence/bean/SystemConfig;->getTempSwitch()I

    move-result v6

    if-nez v6, :cond_19

    const-string v6, "\u5173"

    goto :goto_d

    :cond_19
    const-string v6, "\u5f00"

    :goto_d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 181
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v4, v1, Lcom/wen/fluorescence/serialport/DoSerialData;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xa1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 184
    .local v4, "msg":Landroid/os/Message;
    iput v13, v4, Landroid/os/Message;->arg1:I

    .line 185
    iput v14, v4, Landroid/os/Message;->arg2:I

    .line 186
    iput-object v3, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 187
    iget-object v5, v1, Lcom/wen/fluorescence/serialport/DoSerialData;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 187
    .end local v3    # "config":Lcom/wen/fluorescence/bean/SystemConfig;
    .end local v4    # "msg":Landroid/os/Message;
    goto/16 :goto_e

    .line 151
    :pswitch_5
    const-string v3, "V"

    .line 152
    .local v3, "strHardWareVersion":Ljava/lang/String;
    const-string v4, "V"

    .line 153
    .local v4, "strFirmWareVersion":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v15, 0x1

    .line 153
    .restart local v6    # "index":I
    aget-byte v15, v2, v15

    .line 153
    .end local v15    # "index":I
    and-int/lit16 v15, v15, 0xff

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "."

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 154
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v6, 0x1

    .line 154
    .restart local v15    # "index":I
    aget-byte v6, v2, v6

    .line 154
    .end local v6    # "index":I
    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 155
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v15, 0x1

    .line 155
    .restart local v6    # "index":I
    aget-byte v15, v2, v15

    .line 155
    .end local v15    # "index":I
    and-int/lit16 v15, v15, 0xff

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "."

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 156
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v6, 0x1

    .line 156
    .restart local v15    # "index":I
    aget-byte v6, v2, v6

    .line 156
    .end local v6    # "index":I
    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v15, 0x1

    .line 157
    .restart local v6    # "index":I
    aget-byte v15, v2, v15

    .line 157
    .end local v15    # "index":I
    and-int/lit16 v15, v15, 0xff

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "."

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 158
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v6, 0x1

    .line 158
    .restart local v15    # "index":I
    aget-byte v6, v2, v6

    .line 158
    .end local v6    # "index":I
    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 159
    new-instance v5, Lcom/wen/fluorescence/bean/Version;

    invoke-direct {v5}, Lcom/wen/fluorescence/bean/Version;-><init>()V

    .line 160
    .local v5, "version":Lcom/wen/fluorescence/bean/Version;
    invoke-virtual {v5, v3}, Lcom/wen/fluorescence/bean/Version;->setHardVersion(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v5, v4}, Lcom/wen/fluorescence/bean/Version;->setFirmVersion(Ljava/lang/String;)V

    .line 162
    iget-object v6, v1, Lcom/wen/fluorescence/serialport/DoSerialData;->mHandler:Landroid/os/Handler;

    move-object/from16 v25, v3

    const/16 v3, 0xa1

    invoke-virtual {v6, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 163
    .local v3, "msg":Landroid/os/Message;
    .local v25, "strHardWareVersion":Ljava/lang/String;
    iput v13, v3, Landroid/os/Message;->arg1:I

    .line 164
    iput v14, v3, Landroid/os/Message;->arg2:I

    .line 165
    iput-object v5, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 166
    iget-object v6, v1, Lcom/wen/fluorescence/serialport/DoSerialData;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 168
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "strFirmWareVersion":Ljava/lang/String;
    .end local v5    # "version":Lcom/wen/fluorescence/bean/Version;
    .end local v25    # "strHardWareVersion":Ljava/lang/String;
    nop

    .line 191
    :goto_e
    nop

    .line 302
    :goto_f
    goto :goto_10

    .line 307
    .end local v20    # "crc16Low":B
    .local v6, "crc16Low":B
    :cond_1a
    move/from16 v20, v6

    .line 307
    .end local v6    # "crc16Low":B
    .restart local v20    # "crc16Low":B
    const/4 v3, 0x5

    if-ne v12, v3, :cond_1b

    .line 309
    const-string v3, "DO"

    const-string v4, ".......Get Report Package."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v3, 0x0

    invoke-static {v13, v14, v10, v3}, Lcom/wen/fluorescence/serialport/Protocol;->sendACK(BBBB)V

    .line 311
    add-int/lit8 v3, v15, 0x1

    .line 311
    .local v3, "index":I
    aget-byte v4, v2, v15

    .line 312
    .end local v15    # "index":I
    .local v4, "bResult":B
    iget-object v5, v1, Lcom/wen/fluorescence/serialport/DoSerialData;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xa2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 313
    .local v5, "msg":Landroid/os/Message;
    iput v13, v5, Landroid/os/Message;->arg1:I

    .line 314
    iput v14, v5, Landroid/os/Message;->arg2:I

    .line 315
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 316
    iget-object v6, v1, Lcom/wen/fluorescence/serialport/DoSerialData;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 318
    .end local v4    # "bResult":B
    .end local v5    # "msg":Landroid/os/Message;
    move v15, v3

    .line 318
    .end local v3    # "index":I
    .restart local v15    # "index":I
    :cond_1b
    :goto_10
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/wen/fluorescence/serialport/DoSerialData;->isStartGet:Z

    .line 320
    :try_start_1
    iget-object v3, v1, Lcom/wen/fluorescence/serialport/DoSerialData;->result:Ljava/lang/String;

    add-int/lit8 v4, v9, 0x4

    const/4 v5, 0x2

    mul-int/2addr v4, v5

    iget-object v5, v1, Lcom/wen/fluorescence/serialport/DoSerialData;->result:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/wen/fluorescence/serialport/DoSerialData;->result:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 324
    nop

    .line 330
    .end local v7    # "crc16Hight":B
    .end local v8    # "calCrc16L":B
    .end local v9    # "len":I
    .end local v10    # "packNumber":B
    .end local v11    # "calCrc16":I
    .end local v12    # "packType":B
    .end local v13    # "cmd":B
    .end local v14    # "cmdSub":B
    .end local v15    # "index":I
    .end local v17    # "calCrc16H":B
    .end local v20    # "crc16Low":B
    nop

    .line 334
    const/4 v5, 0x2

    goto :goto_12

    .line 321
    .restart local v7    # "crc16Hight":B
    .restart local v8    # "calCrc16L":B
    .restart local v9    # "len":I
    .restart local v10    # "packNumber":B
    .restart local v11    # "calCrc16":I
    .restart local v12    # "packType":B
    .restart local v13    # "cmd":B
    .restart local v14    # "cmdSub":B
    .restart local v15    # "index":I
    .restart local v17    # "calCrc16H":B
    .restart local v20    # "crc16Low":B
    :catch_1
    move-exception v0

    move-object v3, v0

    .line 322
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "DO"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ".......\u51fa\u73b0\u5f02\u5e38======="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return-void

    .line 106
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v17    # "calCrc16H":B
    .end local v20    # "crc16Low":B
    .local v5, "calCrc16H":B
    .restart local v6    # "crc16Low":B
    :cond_1c
    move/from16 v17, v5

    move/from16 v20, v6

    .line 106
    .end local v5    # "calCrc16H":B
    .end local v6    # "crc16Low":B
    .restart local v17    # "calCrc16H":B
    .restart local v20    # "crc16Low":B
    :goto_11
    const-string v3, "DO"

    const-string v4, ".......CRC16...Error...."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const-string v3, ""

    iput-object v3, v1, Lcom/wen/fluorescence/serialport/DoSerialData;->result:Ljava/lang/String;

    .line 108
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/wen/fluorescence/serialport/DoSerialData;->isStartGet:Z

    .line 109
    return-void

    .line 331
    .end local v7    # "crc16Hight":B
    .end local v8    # "calCrc16L":B
    .end local v9    # "len":I
    .end local v10    # "packNumber":B
    .end local v11    # "calCrc16":I
    .end local v12    # "packType":B
    .end local v13    # "cmd":B
    .end local v14    # "cmdSub":B
    .end local v15    # "index":I
    .end local v17    # "calCrc16H":B
    .end local v20    # "crc16Low":B
    :cond_1d
    const-string v3, "DO"

    const-string v4, "Not 55 aa."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v3, v1, Lcom/wen/fluorescence/serialport/DoSerialData;->result:Ljava/lang/String;

    iget-object v4, v1, Lcom/wen/fluorescence/serialport/DoSerialData;->result:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/wen/fluorescence/serialport/DoSerialData;->result:Ljava/lang/String;

    .line 334
    .end local v2    # "bResultArray":[B
    :goto_12
    nop

    .line 84
    move v4, v5

    move-object/from16 v3, p1

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/16 v7, 0x18

    goto/16 :goto_2

    .line 336
    :cond_1e
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
