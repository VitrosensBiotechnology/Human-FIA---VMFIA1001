.class public Lcom/wen/fluorescence/serialport/Protocol;
.super Ljava/lang/Object;
.source "Protocol.java"


# static fields
.field private static final DescUnit:B = 0x21t

.field private static PackageNumber:B = 0x0t

.field private static final Package_Header_1:B = 0x55t

.field private static final Package_Header_2:B = -0x56t

.field private static final SourceUnit:B = 0x11t


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const/4 v0, 0x0

    sput-byte v0, Lcom/wen/fluorescence/serialport/Protocol;->PackageNumber:B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoradInfo()V
    .locals 6

    .line 366
    const/16 v0, 0xc

    .line 367
    .local v0, "len":I
    new-array v1, v0, [B

    .line 368
    .local v1, "mTX":[B
    const/4 v2, 0x0

    .line 369
    .local v2, "index":I
    add-int/lit8 v3, v2, 0x1

    .line 369
    .local v3, "index":I
    const/16 v4, 0x55

    aput-byte v4, v1, v2

    .line 370
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 370
    .restart local v2    # "index":I
    const/16 v4, -0x56

    aput-byte v4, v1, v3

    .line 371
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 371
    .restart local v3    # "index":I
    add-int/lit8 v4, v0, -0x4

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 372
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 372
    .restart local v2    # "index":I
    add-int/lit8 v4, v0, -0x4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 373
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 373
    .restart local v3    # "index":I
    const/4 v4, 0x1

    aput-byte v4, v1, v2

    .line 374
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 374
    .restart local v2    # "index":I
    sget-byte v4, Lcom/wen/fluorescence/serialport/Protocol;->PackageNumber:B

    add-int/lit8 v5, v4, 0x1

    int-to-byte v5, v5

    sput-byte v5, Lcom/wen/fluorescence/serialport/Protocol;->PackageNumber:B

    aput-byte v4, v1, v3

    .line 375
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 375
    .restart local v3    # "index":I
    const/16 v4, 0x11

    aput-byte v4, v1, v2

    .line 376
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 376
    .restart local v2    # "index":I
    const/16 v4, 0x21

    aput-byte v4, v1, v3

    .line 378
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 378
    .restart local v3    # "index":I
    const/4 v4, 0x2

    aput-byte v4, v1, v2

    .line 380
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 380
    .restart local v2    # "index":I
    const/4 v5, 0x0

    aput-byte v5, v1, v3

    .line 382
    .end local v3    # "index":I
    const/4 v3, 0x4

    array-length v5, v1

    sub-int/2addr v5, v4

    invoke-static {v1, v3, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-static {v3}, Lcom/wen/fluorescence/util/CRC16;->GetCRC16([B)I

    move-result v3

    .line 383
    .local v3, "crc":I
    add-int/lit8 v4, v2, 0x1

    .line 383
    .local v4, "index":I
    shr-int/lit8 v5, v3, 0x8

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    .line 384
    .end local v2    # "index":I
    add-int/lit8 v2, v4, 0x1

    .line 384
    .restart local v2    # "index":I
    int-to-byte v5, v3

    aput-byte v5, v1, v4

    .line 385
    .end local v4    # "index":I
    invoke-static {}, Lcom/wen/fluorescence/Thread/TempTimer;->getInstance()Lcom/wen/fluorescence/Thread/TempTimer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wen/fluorescence/Thread/TempTimer;->stopTempTimer()V

    .line 386
    invoke-static {}, Lcom/wen/fluorescence/Thread/SendTimer;->getInstance()Lcom/wen/fluorescence/Thread/SendTimer;

    move-result-object v4

    new-instance v5, Lcom/wen/fluorescence/serialport/Protocol$8;

    invoke-direct {v5, v1}, Lcom/wen/fluorescence/serialport/Protocol$8;-><init>([B)V

    invoke-virtual {v4, v5}, Lcom/wen/fluorescence/Thread/SendTimer;->setSendTimeOutStart(Lcom/wen/fluorescence/util/MyCallBack;)V

    .line 392
    return-void
.end method

.method public static getLightData()V
    .locals 6

    .line 114
    const/16 v0, 0xc

    .line 115
    .local v0, "len":I
    new-array v1, v0, [B

    .line 116
    .local v1, "mTX":[B
    const/4 v2, 0x0

    .line 117
    .local v2, "index":I
    add-int/lit8 v3, v2, 0x1

    .line 117
    .local v3, "index":I
    const/16 v4, 0x55

    aput-byte v4, v1, v2

    .line 118
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 118
    .restart local v2    # "index":I
    const/16 v4, -0x56

    aput-byte v4, v1, v3

    .line 119
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 119
    .restart local v3    # "index":I
    add-int/lit8 v4, v0, -0x4

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 120
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 120
    .restart local v2    # "index":I
    add-int/lit8 v4, v0, -0x4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 121
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 121
    .restart local v3    # "index":I
    const/4 v4, 0x1

    aput-byte v4, v1, v2

    .line 122
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 122
    .restart local v2    # "index":I
    sget-byte v4, Lcom/wen/fluorescence/serialport/Protocol;->PackageNumber:B

    add-int/lit8 v5, v4, 0x1

    int-to-byte v5, v5

    sput-byte v5, Lcom/wen/fluorescence/serialport/Protocol;->PackageNumber:B

    aput-byte v4, v1, v3

    .line 123
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 123
    .restart local v3    # "index":I
    const/16 v4, 0x11

    aput-byte v4, v1, v2

    .line 124
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 124
    .restart local v2    # "index":I
    const/16 v5, 0x21

    aput-byte v5, v1, v3

    .line 126
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 126
    .restart local v3    # "index":I
    aput-byte v4, v1, v2

    .line 128
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 128
    .restart local v2    # "index":I
    const/4 v4, 0x3

    aput-byte v4, v1, v3

    .line 130
    .end local v3    # "index":I
    const/4 v3, 0x4

    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    invoke-static {v1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-static {v3}, Lcom/wen/fluorescence/util/CRC16;->GetCRC16([B)I

    move-result v3

    .line 131
    .local v3, "crc":I
    add-int/lit8 v4, v2, 0x1

    .line 131
    .local v4, "index":I
    shr-int/lit8 v5, v3, 0x8

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    .line 132
    .end local v2    # "index":I
    add-int/lit8 v2, v4, 0x1

    .line 132
    .restart local v2    # "index":I
    int-to-byte v5, v3

    aput-byte v5, v1, v4

    .line 133
    .end local v4    # "index":I
    invoke-static {}, Lcom/wen/fluorescence/Thread/TempTimer;->getInstance()Lcom/wen/fluorescence/Thread/TempTimer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wen/fluorescence/Thread/TempTimer;->stopTempTimer()V

    .line 134
    invoke-static {}, Lcom/wen/fluorescence/Thread/SendTimer;->getInstance()Lcom/wen/fluorescence/Thread/SendTimer;

    move-result-object v4

    new-instance v5, Lcom/wen/fluorescence/serialport/Protocol$2;

    invoke-direct {v5, v1}, Lcom/wen/fluorescence/serialport/Protocol$2;-><init>([B)V

    invoke-virtual {v4, v5}, Lcom/wen/fluorescence/Thread/SendTimer;->setSendTimeOutStart(Lcom/wen/fluorescence/util/MyCallBack;)V

    .line 140
    return-void
.end method

.method public static getMachineTemp()V
    .locals 7

    .line 228
    const/16 v0, 0xc

    .line 229
    .local v0, "len":I
    new-array v1, v0, [B

    .line 230
    .local v1, "mTX":[B
    const/4 v2, 0x0

    .line 231
    .local v2, "index":I
    add-int/lit8 v3, v2, 0x1

    .line 231
    .local v3, "index":I
    const/16 v4, 0x55

    aput-byte v4, v1, v2

    .line 232
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 232
    .restart local v2    # "index":I
    const/16 v4, -0x56

    aput-byte v4, v1, v3

    .line 233
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 233
    .restart local v3    # "index":I
    add-int/lit8 v4, v0, -0x4

    const/16 v5, 0x8

    shr-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 234
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 234
    .restart local v2    # "index":I
    add-int/lit8 v4, v0, -0x4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 235
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 235
    .restart local v3    # "index":I
    const/4 v4, 0x1

    aput-byte v4, v1, v2

    .line 236
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 236
    .restart local v2    # "index":I
    sget-byte v4, Lcom/wen/fluorescence/serialport/Protocol;->PackageNumber:B

    add-int/lit8 v6, v4, 0x1

    int-to-byte v6, v6

    sput-byte v6, Lcom/wen/fluorescence/serialport/Protocol;->PackageNumber:B

    aput-byte v4, v1, v3

    .line 237
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 237
    .restart local v3    # "index":I
    const/16 v4, 0x11

    aput-byte v4, v1, v2

    .line 238
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 238
    .restart local v2    # "index":I
    const/16 v4, 0x21

    aput-byte v4, v1, v3

    .line 240
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 240
    .restart local v3    # "index":I
    const/16 v4, 0x12

    aput-byte v4, v1, v2

    .line 242
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 242
    .restart local v2    # "index":I
    aput-byte v5, v1, v3

    .line 244
    .end local v3    # "index":I
    const/4 v3, 0x4

    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    invoke-static {v1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-static {v3}, Lcom/wen/fluorescence/util/CRC16;->GetCRC16([B)I

    move-result v3

    .line 245
    .local v3, "crc":I
    add-int/lit8 v4, v2, 0x1

    .line 245
    .local v4, "index":I
    shr-int/lit8 v5, v3, 0x8

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    .line 246
    .end local v2    # "index":I
    add-int/lit8 v2, v4, 0x1

    .line 246
    .restart local v2    # "index":I
    int-to-byte v5, v3

    aput-byte v5, v1, v4

    .line 247
    .end local v4    # "index":I
    invoke-static {v1}, Lcom/wen/fluorescence/serialport/CommActivity;->SendData([B)V

    .line 248
    return-void
.end method

.method public static getReagentInfo()V
    .locals 6

    .line 81
    const/16 v0, 0xc

    .line 82
    .local v0, "len":I
    new-array v1, v0, [B

    .line 83
    .local v1, "mTX":[B
    const/4 v2, 0x0

    .line 84
    .local v2, "index":I
    add-int/lit8 v3, v2, 0x1

    .line 84
    .local v3, "index":I
    const/16 v4, 0x55

    aput-byte v4, v1, v2

    .line 85
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 85
    .restart local v2    # "index":I
    const/16 v4, -0x56

    aput-byte v4, v1, v3

    .line 86
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 86
    .restart local v3    # "index":I
    add-int/lit8 v4, v0, -0x4

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 87
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 87
    .restart local v2    # "index":I
    add-int/lit8 v4, v0, -0x4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 88
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 88
    .restart local v3    # "index":I
    const/4 v4, 0x1

    aput-byte v4, v1, v2

    .line 89
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 89
    .restart local v2    # "index":I
    sget-byte v4, Lcom/wen/fluorescence/serialport/Protocol;->PackageNumber:B

    add-int/lit8 v5, v4, 0x1

    int-to-byte v5, v5

    sput-byte v5, Lcom/wen/fluorescence/serialport/Protocol;->PackageNumber:B

    aput-byte v4, v1, v3

    .line 90
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 90
    .restart local v3    # "index":I
    const/16 v4, 0x11

    aput-byte v4, v1, v2

    .line 91
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 91
    .restart local v2    # "index":I
    const/16 v5, 0x21

    aput-byte v5, v1, v3

    .line 93
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 93
    .restart local v3    # "index":I
    aput-byte v4, v1, v2

    .line 95
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 95
    .restart local v2    # "index":I
    const/4 v4, 0x2

    aput-byte v4, v1, v3

    .line 97
    .end local v3    # "index":I
    const/4 v3, 0x4

    array-length v5, v1

    sub-int/2addr v5, v4

    invoke-static {v1, v3, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-static {v3}, Lcom/wen/fluorescence/util/CRC16;->GetCRC16([B)I

    move-result v3

    .line 98
    .local v3, "crc":I
    add-int/lit8 v4, v2, 0x1

    .line 98
    .local v4, "index":I
    shr-int/lit8 v5, v3, 0x8

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    .line 99
    .end local v2    # "index":I
    add-int/lit8 v2, v4, 0x1

    .line 99
    .restart local v2    # "index":I
    int-to-byte v5, v3

    aput-byte v5, v1, v4

    .line 101
    .end local v4    # "index":I
    invoke-static {}, Lcom/wen/fluorescence/Thread/TempTimer;->getInstance()Lcom/wen/fluorescence/Thread/TempTimer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wen/fluorescence/Thread/TempTimer;->stopTempTimer()V

    .line 102
    invoke-static {}, Lcom/wen/fluorescence/Thread/SendTimer;->getInstance()Lcom/wen/fluorescence/Thread/SendTimer;

    move-result-object v4

    new-instance v5, Lcom/wen/fluorescence/serialport/Protocol$1;

    invoke-direct {v5, v1}, Lcom/wen/fluorescence/serialport/Protocol$1;-><init>([B)V

    invoke-virtual {v4, v5}, Lcom/wen/fluorescence/Thread/SendTimer;->setSendTimeOutStart(Lcom/wen/fluorescence/util/MyCallBack;)V

    .line 108
    return-void
.end method

.method public static getReagentStatus()V
    .locals 6

    .line 707
    const/16 v0, 0xc

    .line 708
    .local v0, "len":I
    new-array v1, v0, [B

    .line 709
    .local v1, "mTX":[B
    const/4 v2, 0x0

    .line 710
    .local v2, "index":I
    add-int/lit8 v3, v2, 0x1

    .line 710
    .local v3, "index":I
    const/16 v4, 0x55

    aput-byte v4, v1, v2

    .line 711
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 711
    .restart local v2    # "index":I
    const/16 v4, -0x56

    aput-byte v4, v1, v3

    .line 712
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 712
    .restart local v3    # "index":I
    add-int/lit8 v4, v0, -0x4

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 713
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 713
    .restart local v2    # "index":I
    add-int/lit8 v4, v0, -0x4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 714
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 714
    .restart local v3    # "index":I
    const/4 v4, 0x1

    aput-byte v4, v1, v2

    .line 715
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 715
    .restart local v2    # "index":I
    sget-byte v4, Lcom/wen/fluorescence/serialport/Protocol;->PackageNumber:B

    add-int/lit8 v5, v4, 0x1

    int-to-byte v5, v5

    sput-byte v5, Lcom/wen/fluorescence/serialport/Protocol;->PackageNumber:B

    aput-byte v4, v1, v3

    .line 716
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 716
    .restart local v3    # "index":I
    const/16 v4, 0x11

    aput-byte v4, v1, v2

    .line 717
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 717
    .restart local v2    # "index":I
    const/16 v5, 0x21

    aput-byte v5, v1, v3

    .line 719
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 719
    .restart local v3    # "index":I
    aput-byte v4, v1, v2

    .line 721
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 721
    .restart local v2    # "index":I
    const/4 v4, 0x0

    aput-byte v4, v1, v3

    .line 723
    .end local v3    # "index":I
    const/4 v3, 0x4

    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    invoke-static {v1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-static {v3}, Lcom/wen/fluorescence/util/CRC16;->GetCRC16([B)I

    move-result v3

    .line 724
    .local v3, "crc":I
    add-int/lit8 v4, v2, 0x1

    .line 724
    .local v4, "index":I
    shr-int/lit8 v5, v3, 0x8

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    .line 725
    .end local v2    # "index":I
    add-int/lit8 v2, v4, 0x1

    .line 725
    .restart local v2    # "index":I
    int-to-byte v5, v3

    aput-byte v5, v1, v4

    .line 726
    .end local v4    # "index":I
    invoke-static {}, Lcom/wen/fluorescence/Thread/TempTimer;->getInstance()Lcom/wen/fluorescence/Thread/TempTimer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wen/fluorescence/Thread/TempTimer;->stopTempTimer()V

    .line 727
    invoke-static {}, Lcom/wen/fluorescence/Thread/SendTimer;->getInstance()Lcom/wen/fluorescence/Thread/SendTimer;

    move-result-object v4

    new-instance v5, Lcom/wen/fluorescence/serialport/Protocol$16;

    invoke-direct {v5, v1}, Lcom/wen/fluorescence/serialport/Protocol$16;-><init>([B)V

    invoke-virtual {v4, v5}, Lcom/wen/fluorescence/Thread/SendTimer;->setSendTimeOutStart(Lcom/wen/fluorescence/util/MyCallBack;)V

    .line 733
    return-void
.end method

.method public static getSystemConfig()V
    .locals 7

    .line 558
    const-string v0, "as"

    const-string v1, "Protocol: getSystemConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const/16 v0, 0xc

    .line 560
    .local v0, "len":I
    new-array v1, v0, [B

    .line 561
    .local v1, "mTX":[B
    const/4 v2, 0x0

    .line 562
    .local v2, "index":I
    add-int/lit8 v3, v2, 0x1

    .line 562
    .local v3, "index":I
    const/16 v4, 0x55

    aput-byte v4, v1, v2

    .line 563
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 563
    .restart local v2    # "index":I
    const/16 v4, -0x56

    aput-byte v4, v1, v3

    .line 564
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 564
    .restart local v3    # "index":I
    add-int/lit8 v4, v0, -0x4

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 565
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 565
    .restart local v2    # "index":I
    add-int/lit8 v4, v0, -0x4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 566
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 566
    .restart local v3    # "index":I
    const/4 v4, 0x1

    aput-byte v4, v1, v2

    .line 567
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 567
    .restart local v2    # "index":I
    sget-byte v5, Lcom/wen/fluorescence/serialport/Protocol;->PackageNumber:B

    add-int/lit8 v6, v5, 0x1

    int-to-byte v6, v6

    sput-byte v6, Lcom/wen/fluorescence/serialport/Protocol;->PackageNumber:B

    aput-byte v5, v1, v3

    .line 568
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 568
    .restart local v3    # "index":I
    const/16 v5, 0x11

    aput-byte v5, v1, v2

    .line 569
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 569
    .restart local v2    # "index":I
    const/16 v5, 0x21

    aput-byte v5, v1, v3

    .line 571
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 571
    .restart local v3    # "index":I
    const/4 v5, 0x0

    aput-byte v5, v1, v2

    .line 573
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 573
    .restart local v2    # "index":I
    aput-byte v4, v1, v3

    .line 575
    .end local v3    # "index":I
    const/4 v3, 0x4

    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    invoke-static {v1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-static {v3}, Lcom/wen/fluorescence/util/CRC16;->GetCRC16([B)I

    move-result v3

    .line 576
    .local v3, "crc":I
    add-int/lit8 v4, v2, 0x1

    .line 576
    .local v4, "index":I
    shr-int/lit8 v5, v3, 0x8

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    .line 577
    .end local v2    # "index":I
    add-int/lit8 v2, v4, 0x1

    .line 577
    .restart local v2    # "index":I
    int-to-byte v5, v3

    aput-byte v5, v1, v4

    .line 578
    .end local v4    # "index":I
    invoke-static {}, Lcom/wen/fluorescence/Thread/TempTimer;->getInstance()Lcom/wen/fluorescence/Thread/TempTimer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wen/fluorescence/Thread/TempTimer;->stopTempTimer()V

    .line 579
    invoke-static {}, Lcom/wen/fluorescence/Thread/SendTimer;->getInstance()Lcom/wen/fluorescence/Thread/SendTimer;

    move-result-object v4

    new-instance v5, Lcom/wen/fluorescence/serialport/Protocol$13;

    invoke-direct {v5, v1}, Lcom/wen/fluorescence/serialport/Protocol$13;-><init>([B)V

    invoke-virtual {v4, v5}, Lcom/wen/fluorescence/Thread/SendTimer;->setSendTimeOutStart(Lcom/wen/fluorescence/util/MyCallBack;)V

    .line 585
    return-void
.end method

.method public static getVersion()V
    .locals 6

    .line 525
    const/16 v0, 0xc

    .line 526
    .local v0, "len":I
    new-array v1, v0, [B

    .line 527
    .local v1, "mTX":[B
    const/4 v2, 0x0

    .line 528
    .local v2, "index":I
    add-int/lit8 v3, v2, 0x1

    .line 528
    .local v3, "index":I
    const/16 v4, 0x55

    aput-byte v4, v1, v2

    .line 529
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 529
    .restart local v2    # "index":I
    const/16 v4, -0x56

    aput-byte v4, v1, v3

    .line 530
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 530
    .restart local v3    # "index":I
    add-int/lit8 v4, v0, -0x4

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 531
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 531
    .restart local v2    # "index":I
    add-int/lit8 v4, v0, -0x4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 532
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 532
    .restart local v3    # "index":I
    const/4 v4, 0x1

    aput-byte v4, v1, v2

    .line 533
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 533
    .restart local v2    # "index":I
    sget-byte v4, Lcom/wen/fluorescence/serialport/Protocol;->PackageNumber:B

    add-int/lit8 v5, v4, 0x1

    int-to-byte v5, v5

    sput-byte v5, Lcom/wen/fluorescence/serialport/Protocol;->PackageNumber:B

    aput-byte v4, v1, v3

    .line 534
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 534
    .restart local v3    # "index":I
    const/16 v4, 0x11

    aput-byte v4, v1, v2

    .line 535
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 535
    .restart local v2    # "index":I
    const/16 v4, 0x21

    aput-byte v4, v1, v3

    .line 537
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 537
    .restart local v3    # "index":I
    const/4 v4, 0x0

    aput-byte v4, v1, v2

    .line 539
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 539
    .restart local v2    # "index":I
    aput-byte v4, v1, v3

    .line 541
    .end local v3    # "index":I
    const/4 v3, 0x4

    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    invoke-static {v1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-static {v3}, Lcom/wen/fluorescence/util/CRC16;->GetCRC16([B)I

    move-result v3

    .line 542
    .local v3, "crc":I
    add-int/lit8 v4, v2, 0x1

    .line 542
    .local v4, "index":I
    shr-int/lit8 v5, v3, 0x8

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    .line 543
    .end local v2    # "index":I
    add-int/lit8 v2, v4, 0x1

    .line 543
    .restart local v2    # "index":I
    int-to-byte v5, v3

    aput-byte v5, v1, v4

    .line 544
    .end local v4    # "index":I
    invoke-static {}, Lcom/wen/fluorescence/Thread/TempTimer;->getInstance()Lcom/wen/fluorescence/Thread/TempTimer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wen/fluorescence/Thread/TempTimer;->stopTempTimer()V

    .line 545
    invoke-static {}, Lcom/wen/fluorescence/Thread/SendTimer;->getInstance()Lcom/wen/fluorescence/Thread/SendTimer;

    move-result-object v4

    new-instance v5, Lcom/wen/fluorescence/serialport/Protocol$12;

    invoke-direct {v5, v1}, Lcom/wen/fluorescence/serialport/Protocol$12;-><init>([B)V

    invoke-virtual {v4, v5}, Lcom/wen/fluorescence/Thread/SendTimer;->setSendTimeOutStart(Lcom/wen/fluorescence/util/MyCallBack;)V

    .line 551
    return-void
.end method

.method public static resetSystemConfig()V
    .locals 7

    .line 639
    const/16 v0, 0xc

    .line 640
    .local v0, "len":I
    new-array v1, v0, [B

    .line 641
    .local v1, "mTX":[B
    const/4 v2, 0x0

    .line 642
    .local v2, "index":I
    add-int/lit8 v3, v2, 0x1

    .line 642
    .local v3, "index":I
    const/16 v4, 0x55

    aput-byte v4, v1, v2

    .line 643
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 643
    .restart local v2    # "index":I
    const/16 v4, -0x56

    aput-byte v4, v1, v3

    .line 644
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 644
    .restart local v3    # "index":I
    add-int/lit8 v4, v0, -0x4

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 645
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 645
    .restart local v2    # "index":I
    add-int/lit8 v4, v0, -0x4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 646
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 646
    .restart local v3    # "index":I
    const/4 v4, 0x1

    aput-byte v4, v1, v2

    .line 647
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 647
    .restart local v2    # "index":I
    sget-byte v5, Lcom/wen/fluorescence/serialport/Protocol;->PackageNumber:B

    add-int/lit8 v6, v5, 0x1

    int-to-byte v6, v6

    sput-byte v6, Lcom/wen/fluorescence/serialport/Protocol;->PackageNumber:B

    aput-byte v5, v1, v3

    .line 648
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 648
    .restart local v3    # "index":I
    const/16 v5, 0x11

    aput-byte v5, v1, v2

    .line 649
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 649
    .restart local v2    # "index":I
    const/16 v5, 0x21

    aput-byte v5, v1, v3

    .line 651
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 651
    .restart local v3    # "index":I
    aput-byte v4, v1, v2

    .line 653
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 653
    .restart local v2    # "index":I
    const/4 v4, 0x2

    aput-byte v4, v1, v3

    .line 655
    .end local v3    # "index":I
    const/4 v3, 0x4

    array-length v5, v1

    sub-int/2addr v5, v4

    invoke-static {v1, v3, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-static {v3}, Lcom/wen/fluorescence/util/CRC16;->GetCRC16([B)I

    move-result v3

    .line 656
    .local v3, "crc":I
    add-int/lit8 v4, v2, 0x1

    .line 656
    .local v4, "index":I
    shr-int/lit8 v5, v3, 0x8

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    .line 657
    .end local v2    # "index":I
    add-int/lit8 v2, v4, 0x1

    .line 657
    .restart local v2    # "index":I
    int-to-byte v5, v3

    aput-byte v5, v1, v4

    .line 658
    .end local v4    # "index":I
    invoke-static {}, Lcom/wen/fluorescence/Thread/TempTimer;->getInstance()Lcom/wen/fluorescence/Thread/TempTimer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wen/fluorescence/Thread/TempTimer;->stopTempTimer()V

    .line 659
    invoke-static {}, Lcom/wen/fluorescence/Thread/SendTimer;->getInstance()Lcom/wen/fluorescence/Thread/SendTimer;

    move-result-object v4

    new-instance v5, Lcom/wen/fluorescence/serialport/Protocol$15;

    invoke-direct {v5, v1}, Lcom/wen/fluorescence/serialport/Protocol$15;-><init>([B)V

    invoke-virtual {v4, v5}, Lcom/wen/fluorescence/Thread/SendTimer;->setSendTimeOutStart(Lcom/wen/fluorescence/util/MyCallBack;)V

    .line 665
    return-void
.end method

.method public static sendACK(BBBB)V
    .locals 6
    .param p0, "cmd"    # B
    .param p1, "cmdSub"    # B
    .param p2, "pn"    # B
    .param p3, "result"    # B

    .line 677
    const/16 v0, 0xd

    .line 678
    .local v0, "len":I
    new-array v1, v0, [B

    .line 679
    .local v1, "mTX":[B
    const/4 v2, 0x0

    .line 680
    .local v2, "index":I
    add-int/lit8 v3, v2, 0x1

    .line 680
    .local v3, "index":I
    const/16 v4, 0x55

    aput-byte v4, v1, v2

    .line 681
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 681
    .restart local v2    # "index":I
    const/16 v4, -0x56

    aput-byte v4, v1, v3

    .line 682
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 682
    .restart local v3    # "index":I
    add-int/lit8 v4, v0, -0x4

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 683
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 683
    .restart local v2    # "index":I
    add-int/lit8 v4, v0, -0x4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 684
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 684
    .restart local v3    # "index":I
    const/4 v4, 0x2

    aput-byte v4, v1, v2

    .line 685
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 685
    .restart local v2    # "index":I
    aput-byte p2, v1, v3

    .line 686
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 686
    .restart local v3    # "index":I
    const/16 v5, 0x11

    aput-byte v5, v1, v2

    .line 687
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 687
    .restart local v2    # "index":I
    const/16 v5, 0x21

    aput-byte v5, v1, v3

    .line 689
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 689
    .restart local v3    # "index":I
    aput-byte p0, v1, v2

    .line 691
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 691
    .restart local v2    # "index":I
    aput-byte p1, v1, v3

    .line 693
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 693
    .restart local v3    # "index":I
    aput-byte p3, v1, v2

    .line 695
    .end local v2    # "index":I
    const/4 v2, 0x4

    array-length v5, v1

    sub-int/2addr v5, v4

    invoke-static {v1, v2, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v2}, Lcom/wen/fluorescence/util/CRC16;->GetCRC16([B)I

    move-result v2

    .line 696
    .local v2, "crc":I
    add-int/lit8 v4, v3, 0x1

    .line 696
    .local v4, "index":I
    shr-int/lit8 v5, v2, 0x8

    int-to-byte v5, v5

    aput-byte v5, v1, v3

    .line 697
    .end local v3    # "index":I
    add-int/lit8 v3, v4, 0x1

    .line 697
    .restart local v3    # "index":I
    int-to-byte v5, v2

    aput-byte v5, v1, v4

    .line 698
    .end local v4    # "index":I
    invoke-static {v1}, Lcom/wen/fluorescence/serialport/CommActivity;->SendData([B)V

    .line 699
    const-string v4, "TA"

    const-string v5, "........Send ACK."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    return-void
.end method

.method public static sendUpgradingCMDInfo(Lcom/wen/fluorescence/bean/Version;II)V
    .locals 10
    .param p0, "version"    # Lcom/wen/fluorescence/bean/Version;
    .param p1, "fileLen"    # I
    .param p2, "fileCrc16"    # I

    .line 399
    const/16 v0, 0x16

    .line 400
    .local v0, "len":I
    new-array v1, v0, [B

    .line 401
    .local v1, "mTX":[B
    const/4 v2, 0x0

    .line 402
    .local v2, "index":I
    add-int/lit8 v3, v2, 0x1

    .line 402
    .local v3, "index":I
    const/16 v4, 0x55

    aput-byte v4, v1, v2

    .line 403
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 403
    .restart local v2    # "index":I
    const/16 v4, -0x56

    aput-byte v4, v1, v3

    .line 404
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 404
    .restart local v3    # "index":I
    add-int/lit8 v4, v0, -0x4

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 405
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 405
    .restart local v2    # "index":I
    add-int/lit8 v4, v0, -0x4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 406
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 406
    .restart local v3    # "index":I
    const/4 v4, 0x1

    aput-byte v4, v1, v2

    .line 407
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 407
    .restart local v2    # "index":I
    sget-byte v5, Lcom/wen/fluorescence/serialport/Protocol;->PackageNumber:B

    add-int/lit8 v6, v5, 0x1

    int-to-byte v6, v6

    sput-byte v6, Lcom/wen/fluorescence/serialport/Protocol;->PackageNumber:B

    aput-byte v5, v1, v3

    .line 408
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 408
    .restart local v3    # "index":I
    const/16 v5, 0x11

    aput-byte v5, v1, v2

    .line 409
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 409
    .restart local v2    # "index":I
    const/16 v5, 0x21

    aput-byte v5, v1, v3

    .line 411
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 411
    .restart local v3    # "index":I
    const/4 v5, 0x2

    aput-byte v5, v1, v2

    .line 413
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 413
    .restart local v2    # "index":I
    aput-byte v4, v1, v3

    .line 415
    .end local v3    # "index":I
    invoke-virtual {p0}, Lcom/wen/fluorescence/bean/Version;->getFirmVersion()Ljava/lang/String;

    move-result-object v3

    .line 416
    .local v3, "softWare":Ljava/lang/String;
    const-string v4, "V"

    const-string v6, ""

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 417
    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 418
    .local v4, "softWareArray":[Ljava/lang/String;
    const/4 v6, 0x4

    array-length v7, v4

    if-ge v7, v6, :cond_0

    .line 419
    const-string v7, "as"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "========softWareArray.length < 4\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_0
    add-int/lit8 v7, v2, 0x1

    .line 422
    .local v7, "index":I
    invoke-virtual {p0}, Lcom/wen/fluorescence/bean/Version;->getV1()B

    move-result v8

    aput-byte v8, v1, v2

    .line 423
    .end local v2    # "index":I
    add-int/lit8 v2, v7, 0x1

    .line 423
    .restart local v2    # "index":I
    invoke-virtual {p0}, Lcom/wen/fluorescence/bean/Version;->getV2()B

    move-result v8

    aput-byte v8, v1, v7

    .line 424
    .end local v7    # "index":I
    add-int/lit8 v7, v2, 0x1

    .line 424
    .restart local v7    # "index":I
    invoke-virtual {p0}, Lcom/wen/fluorescence/bean/Version;->getV3()B

    move-result v8

    aput-byte v8, v1, v2

    .line 425
    .end local v2    # "index":I
    add-int/lit8 v2, v7, 0x1

    .line 425
    .restart local v2    # "index":I
    invoke-virtual {p0}, Lcom/wen/fluorescence/bean/Version;->getV4()B

    move-result v8

    aput-byte v8, v1, v7

    .line 426
    .end local v7    # "index":I
    add-int/lit8 v7, v2, 0x1

    .line 426
    .restart local v7    # "index":I
    shr-int/lit8 v8, p1, 0x18

    int-to-byte v8, v8

    aput-byte v8, v1, v2

    .line 427
    .end local v2    # "index":I
    add-int/lit8 v2, v7, 0x1

    .line 427
    .restart local v2    # "index":I
    shr-int/lit8 v8, p1, 0x10

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    .line 428
    .end local v7    # "index":I
    add-int/lit8 v7, v2, 0x1

    .line 428
    .restart local v7    # "index":I
    shr-int/lit8 v8, p1, 0x8

    int-to-byte v8, v8

    aput-byte v8, v1, v2

    .line 429
    .end local v2    # "index":I
    add-int/lit8 v2, v7, 0x1

    .line 429
    .restart local v2    # "index":I
    int-to-byte v8, p1

    aput-byte v8, v1, v7

    .line 430
    .end local v7    # "index":I
    add-int/lit8 v7, v2, 0x1

    .line 430
    .restart local v7    # "index":I
    shr-int/lit8 v8, p2, 0x8

    int-to-byte v8, v8

    aput-byte v8, v1, v2

    .line 431
    .end local v2    # "index":I
    add-int/lit8 v2, v7, 0x1

    .line 431
    .restart local v2    # "index":I
    int-to-byte v8, p2

    aput-byte v8, v1, v7

    .line 433
    .end local v7    # "index":I
    array-length v7, v1

    sub-int/2addr v7, v5

    invoke-static {v1, v6, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    invoke-static {v5}, Lcom/wen/fluorescence/util/CRC16;->GetCRC16([B)I

    move-result v5

    .line 434
    .local v5, "crc":I
    add-int/lit8 v6, v2, 0x1

    .line 434
    .local v6, "index":I
    shr-int/lit8 v7, v5, 0x8

    int-to-byte v7, v7

    aput-byte v7, v1, v2

    .line 435
    .end local v2    # "index":I
    add-int/lit8 v2, v6, 0x1

    .line 435
    .restart local v2    # "index":I
    int-to-byte v7, v5

    aput-byte v7, v1, v6

    .line 436
    .end local v6    # "index":I
    invoke-static {}, Lcom/wen/fluorescence/Thread/TempTimer;->getInstance()Lcom/wen/fluorescence/Thread/TempTimer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wen/fluorescence/Thread/TempTimer;->stopTempTimer()V

    .line 437
    invoke-static {}, Lcom/wen/fluorescence/Thread/SendTimer;->getInstance()Lcom/wen/fluorescence/Thread/SendTimer;

    move-result-object v6

    new-instance v7, Lcom/wen/fluorescence/serialport/Protocol$9;

    invoke-direct {v7, v1}, Lcom/wen/fluorescence/serialport/Protocol$9;-><init>([B)V

    invoke-virtual {v6, v7}, Lcom/wen/fluorescence/Thread/SendTimer;->setSendTimeOutStart(Lcom/wen/fluorescence/util/MyCallBack;)V

    .line 443
    return-void
.end method

.method public static sendUpgradingComplete()V
    .locals 6

    .line 492
    const/16 v0, 0xc

    .line 493
    .local v0, "len":I
    new-array v1, v0, [B

    .line 494
    .local v1, "mTX":[B
    const/4 v2, 0x0

    .line 495
    .local v2, "index":I
    add-int/lit8 v3, v2, 0x1

    .line 495
    .local v3, "index":I
    const/16 v4, 0x55

    aput-byte v4, v1, v2

    .line 496
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 496
    .restart local v2    # "index":I
    const/16 v4, -0x56

    aput-byte v4, v1, v3

    .line 497
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 497
    .restart local v3    # "index":I
    add-int/lit8 v4, v0, -0x4

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 498
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 498
    .restart local v2    # "index":I
    add-int/lit8 v4, v0, -0x4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 499
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 499
    .restart local v3    # "index":I
    const/4 v4, 0x1

    aput-byte v4, v1, v2

    .line 500
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 500
    .restart local v2    # "index":I
    sget-byte v4, Lcom/wen/fluorescence/serialport/Protocol;->PackageNumber:B

    add-int/lit8 v5, v4, 0x1

    int-to-byte v5, v5

    sput-byte v5, Lcom/wen/fluorescence/serialport/Protocol;->PackageNumber:B

    aput-byte v4, v1, v3

    .line 501
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 501
    .restart local v3    # "index":I
    const/16 v4, 0x11

    aput-byte v4, v1, v2

    .line 502
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 502
    .restart local v2    # "index":I
    const/16 v4, 0x21

    aput-byte v4, v1, v3

    .line 504
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 504
    .restart local v3    # "index":I
    const/4 v4, 0x2

    aput-byte v4, v1, v2

    .line 506
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 506
    .restart local v2    # "index":I
    const/4 v5, 0x3

    aput-byte v5, v1, v3

    .line 508
    .end local v3    # "index":I
    const/4 v3, 0x4

    array-length v5, v1

    sub-int/2addr v5, v4

    invoke-static {v1, v3, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-static {v3}, Lcom/wen/fluorescence/util/CRC16;->GetCRC16([B)I

    move-result v3

    .line 509
    .local v3, "crc":I
    add-int/lit8 v4, v2, 0x1

    .line 509
    .local v4, "index":I
    shr-int/lit8 v5, v3, 0x8

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    .line 510
    .end local v2    # "index":I
    add-int/lit8 v2, v4, 0x1

    .line 510
    .restart local v2    # "index":I
    int-to-byte v5, v3

    aput-byte v5, v1, v4

    .line 511
    .end local v4    # "index":I
    invoke-static {}, Lcom/wen/fluorescence/Thread/TempTimer;->getInstance()Lcom/wen/fluorescence/Thread/TempTimer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wen/fluorescence/Thread/TempTimer;->stopTempTimer()V

    .line 512
    invoke-static {}, Lcom/wen/fluorescence/Thread/SendTimer;->getInstance()Lcom/wen/fluorescence/Thread/SendTimer;

    move-result-object v4

    new-instance v5, Lcom/wen/fluorescence/serialport/Protocol$11;

    invoke-direct {v5, v1}, Lcom/wen/fluorescence/serialport/Protocol$11;-><init>([B)V

    invoke-virtual {v4, v5}, Lcom/wen/fluorescence/Thread/SendTimer;->setSendTimeOutStart(Lcom/wen/fluorescence/util/MyCallBack;)V

    .line 518
    return-void
.end method

.method public static sendUpgradingData([BI)V
    .locals 11
    .param p0, "fileData"    # [B
    .param p1, "pkNumber"    # I

    .line 452
    const-string v0, "as"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendUpgradingData\uff0clength:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0xc

    const/16 v5, 0x55

    const/16 v6, -0x56

    const/16 v7, 0x11

    const/16 v8, 0x21

    const/4 v9, 0x0

    array-length v10, p0

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    array-length v0, p0

    add-int/2addr v4, v0

    add-int/2addr v4, v2

    .line 454
    .local v4, "len":I
    new-array v0, v4, [B

    .line 455
    .local v0, "mTX":[B
    const/4 v1, 0x0

    .line 456
    .local v1, "index":I
    add-int/lit8 v10, v1, 0x1

    .line 456
    .local v10, "index":I
    aput-byte v5, v0, v1

    .line 457
    .end local v1    # "index":I
    add-int/lit8 v1, v10, 0x1

    .line 457
    .restart local v1    # "index":I
    aput-byte v6, v0, v10

    .line 458
    .end local v10    # "index":I
    add-int/lit8 v5, v1, 0x1

    .line 458
    .local v5, "index":I
    add-int/lit8 v6, v4, -0x4

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v0, v1

    .line 459
    .end local v1    # "index":I
    add-int/lit8 v1, v5, 0x1

    .line 459
    .restart local v1    # "index":I
    add-int/lit8 v6, v4, -0x4

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 460
    .end local v5    # "index":I
    add-int/lit8 v5, v1, 0x1

    .line 460
    .restart local v5    # "index":I
    aput-byte v3, v0, v1

    .line 461
    .end local v1    # "index":I
    add-int/lit8 v1, v5, 0x1

    .line 461
    .restart local v1    # "index":I
    sget-byte v3, Lcom/wen/fluorescence/serialport/Protocol;->PackageNumber:B

    add-int/lit8 v6, v3, 0x1

    int-to-byte v6, v6

    sput-byte v6, Lcom/wen/fluorescence/serialport/Protocol;->PackageNumber:B

    aput-byte v3, v0, v5

    .line 462
    .end local v5    # "index":I
    add-int/lit8 v3, v1, 0x1

    .line 462
    .local v3, "index":I
    aput-byte v7, v0, v1

    .line 463
    .end local v1    # "index":I
    add-int/lit8 v1, v3, 0x1

    .line 463
    .restart local v1    # "index":I
    aput-byte v8, v0, v3

    .line 465
    .end local v3    # "index":I
    add-int/lit8 v3, v1, 0x1

    .line 465
    .restart local v3    # "index":I
    aput-byte v2, v0, v1

    .line 467
    .end local v1    # "index":I
    add-int/lit8 v1, v3, 0x1

    .line 467
    .restart local v1    # "index":I
    aput-byte v2, v0, v3

    .line 469
    .end local v3    # "index":I
    add-int/lit8 v3, v1, 0x1

    .line 469
    .restart local v3    # "index":I
    shr-int/lit8 v5, p1, 0x8

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    .line 470
    .end local v1    # "index":I
    add-int/lit8 v1, v3, 0x1

    .line 470
    .restart local v1    # "index":I
    int-to-byte v5, p1

    aput-byte v5, v0, v3

    .line 471
    .end local v3    # "index":I
    nop

    .line 471
    .local v9, "i":I
    :goto_0
    move v3, v9

    .line 471
    .end local v9    # "i":I
    .local v3, "i":I
    array-length v5, p0

    if-ge v3, v5, :cond_0

    .line 472
    add-int/lit8 v5, v1, 0x1

    .line 472
    .restart local v5    # "index":I
    aget-byte v6, p0, v3

    aput-byte v6, v0, v1

    .line 471
    .end local v1    # "index":I
    add-int/lit8 v9, v3, 0x1

    .line 471
    .end local v3    # "i":I
    .restart local v9    # "i":I
    move v1, v5

    goto :goto_0

    .line 475
    .end local v5    # "index":I
    .end local v9    # "i":I
    .restart local v1    # "index":I
    :cond_0
    const/4 v3, 0x4

    array-length v5, v0

    sub-int/2addr v5, v2

    invoke-static {v0, v3, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v2}, Lcom/wen/fluorescence/util/CRC16;->GetCRC16([B)I

    move-result v2

    .line 476
    .local v2, "crc":I
    add-int/lit8 v3, v1, 0x1

    .line 476
    .local v3, "index":I
    shr-int/lit8 v5, v2, 0x8

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    .line 477
    .end local v1    # "index":I
    add-int/lit8 v1, v3, 0x1

    .line 477
    .restart local v1    # "index":I
    int-to-byte v5, v2

    aput-byte v5, v0, v3

    .line 478
    .end local v3    # "index":I
    invoke-static {}, Lcom/wen/fluorescence/Thread/TempTimer;->getInstance()Lcom/wen/fluorescence/Thread/TempTimer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wen/fluorescence/Thread/TempTimer;->stopTempTimer()V

    .line 479
    invoke-static {}, Lcom/wen/fluorescence/Thread/SendTimer;->getInstance()Lcom/wen/fluorescence/Thread/SendTimer;

    move-result-object v3

    new-instance v5, Lcom/wen/fluorescence/serialport/Protocol$10;

    invoke-direct {v5, v0}, Lcom/wen/fluorescence/serialport/Protocol$10;-><init>([B)V

    invoke-virtual {v3, v5}, Lcom/wen/fluorescence/Thread/SendTimer;->setSendTimeOutStart(Lcom/wen/fluorescence/util/MyCallBack;)V

    .line 485
    return-void
.end method

.method public static setCardIn()V
    .locals 6

    .line 26
    const/16 v0, 0xd

    .line 27
    .local v0, "len":I
    new-array v1, v0, [B

    .line 28
    .local v1, "mTX":[B
    const/4 v2, 0x0

    .line 29
    .local v2, "index":I
    add-int/lit8 v3, v2, 0x1

    .line 29
    .local v3, "index":I
    const/16 v4, 0x55

    aput-byte v4, v1, v2

    .line 30
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 30
    .restart local v2    # "index":I
    const/16 v4, -0x56

    aput-byte v4, v1, v3

    .line 31
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 31
    .restart local v3    # "index":I
    add-int/lit8 v4, v0, -0x4

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 32
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 32
    .restart local v2    # "index":I
    add-int/lit8 v4, v0, -0x4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 33
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 33
    .restart local v3    # "index":I
    const/4 v4, 0x1

    aput-byte v4, v1, v2

    .line 34
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 34
    .restart local v2    # "index":I
    sget-byte v4, Lcom/wen/fluorescence/serialport/Protocol;->PackageNumber:B

    add-int/lit8 v5, v4, 0x1

    int-to-byte v5, v5

    sput-byte v5, Lcom/wen/fluorescence/serialport/Protocol;->PackageNumber:B

    aput-byte v4, v1, v3

    .line 35
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 35
    .restart local v3    # "index":I
    const/16 v4, 0x11

    aput-byte v4, v1, v2

    .line 36
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 36
    .restart local v2    # "index":I
    const/16 v5, 0x21

    aput-byte v5, v1, v3

    .line 38
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 38
    .restart local v3    # "index":I
    aput-byte v4, v1, v2

    .line 40
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 40
    .restart local v2    # "index":I
    const/16 v4, 0x10

    aput-byte v4, v1, v3

    .line 42
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 42
    .restart local v3    # "index":I
    const/4 v4, 0x0

    aput-byte v4, v1, v2

    .line 44
    .end local v2    # "index":I
    const/4 v2, 0x4

    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    invoke-static {v1, v2, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v2}, Lcom/wen/fluorescence/util/CRC16;->GetCRC16([B)I

    move-result v2

    .line 45
    .local v2, "crc":I
    add-int/lit8 v4, v3, 0x1

    .line 45
    .local v4, "index":I
    shr-int/lit8 v5, v2, 0x8

    int-to-byte v5, v5

    aput-byte v5, v1, v3

    .line 46
    .end local v3    # "index":I
    add-int/lit8 v3, v4, 0x1

    .line 46
    .restart local v3    # "index":I
    int-to-byte v5, v2

    aput-byte v5, v1, v4

    .line 47
    .end local v4    # "index":I
    invoke-static {}, Lcom/wen/fluorescence/Thread/TempTimer;->getInstance()Lcom/wen/fluorescence/Thread/TempTimer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wen/fluorescence/Thread/TempTimer;->stopTempTimer()V

    .line 48
    invoke-static {v1}, Lcom/wen/fluorescence/serialport/CommActivity;->SendData([B)V

    .line 49
    return-void
.end method

.method public static setCardOut()V
    .locals 7

    .line 52
    const/16 v0, 0xd

    .line 53
    .local v0, "len":I
    new-array v1, v0, [B

    .line 54
    .local v1, "mTX":[B
    const/4 v2, 0x0

    .line 55
    .local v2, "index":I
    add-int/lit8 v3, v2, 0x1

    .line 55
    .local v3, "index":I
    const/16 v4, 0x55

    aput-byte v4, v1, v2

    .line 56
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 56
    .restart local v2    # "index":I
    const/16 v4, -0x56

    aput-byte v4, v1, v3

    .line 57
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 57
    .restart local v3    # "index":I
    add-int/lit8 v4, v0, -0x4

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 58
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 58
    .restart local v2    # "index":I
    add-int/lit8 v4, v0, -0x4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 59
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 59
    .restart local v3    # "index":I
    const/4 v4, 0x1

    aput-byte v4, v1, v2

    .line 60
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 60
    .restart local v2    # "index":I
    sget-byte v5, Lcom/wen/fluorescence/serialport/Protocol;->PackageNumber:B

    add-int/lit8 v6, v5, 0x1

    int-to-byte v6, v6

    sput-byte v6, Lcom/wen/fluorescence/serialport/Protocol;->PackageNumber:B

    aput-byte v5, v1, v3

    .line 61
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 61
    .restart local v3    # "index":I
    const/16 v5, 0x11

    aput-byte v5, v1, v2

    .line 62
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 62
    .restart local v2    # "index":I
    const/16 v6, 0x21

    aput-byte v6, v1, v3

    .line 64
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 64
    .restart local v3    # "index":I
    aput-byte v5, v1, v2

    .line 66
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 66
    .restart local v2    # "index":I
    const/16 v5, 0x10

    aput-byte v5, v1, v3

    .line 68
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 68
    .restart local v3    # "index":I
    aput-byte v4, v1, v2

    .line 70
    .end local v2    # "index":I
    const/4 v2, 0x4

    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    invoke-static {v1, v2, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v2}, Lcom/wen/fluorescence/util/CRC16;->GetCRC16([B)I

    move-result v2

    .line 71
    .local v2, "crc":I
    add-int/lit8 v4, v3, 0x1

    .line 71
    .local v4, "index":I
    shr-int/lit8 v5, v2, 0x8

    int-to-byte v5, v5

    aput-byte v5, v1, v3

    .line 72
    .end local v3    # "index":I
    add-int/lit8 v3, v4, 0x1

    .line 72
    .restart local v3    # "index":I
    int-to-byte v5, v2

    aput-byte v5, v1, v4

    .line 73
    .end local v4    # "index":I
    invoke-static {}, Lcom/wen/fluorescence/Thread/TempTimer;->getInstance()Lcom/wen/fluorescence/Thread/TempTimer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wen/fluorescence/Thread/TempTimer;->stopTempTimer()V

    .line 74
    invoke-static {v1}, Lcom/wen/fluorescence/serialport/CommActivity;->SendData([B)V

    .line 75
    return-void
.end method

.method public static setFanSwitch(Z)V
    .locals 7
    .param p0, "on"    # Z

    .line 189
    const/16 v0, 0xd

    .line 190
    .local v0, "len":I
    new-array v1, v0, [B

    .line 191
    .local v1, "mTX":[B
    const/4 v2, 0x0

    .line 192
    .local v2, "index":I
    add-int/lit8 v3, v2, 0x1

    .line 192
    .local v3, "index":I
    const/16 v4, 0x55

    aput-byte v4, v1, v2

    .line 193
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 193
    .restart local v2    # "index":I
    const/16 v4, -0x56

    aput-byte v4, v1, v3

    .line 194
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 194
    .restart local v3    # "index":I
    add-int/lit8 v4, v0, -0x4

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 195
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 195
    .restart local v2    # "index":I
    add-int/lit8 v4, v0, -0x4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 196
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 196
    .restart local v3    # "index":I
    const/4 v4, 0x1

    aput-byte v4, v1, v2

    .line 197
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 197
    .restart local v2    # "index":I
    sget-byte v5, Lcom/wen/fluorescence/serialport/Protocol;->PackageNumber:B

    add-int/lit8 v6, v5, 0x1

    int-to-byte v6, v6

    sput-byte v6, Lcom/wen/fluorescence/serialport/Protocol;->PackageNumber:B

    aput-byte v5, v1, v3

    .line 198
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 198
    .restart local v3    # "index":I
    const/16 v5, 0x11

    aput-byte v5, v1, v2

    .line 199
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 199
    .restart local v2    # "index":I
    const/16 v5, 0x21

    aput-byte v5, v1, v3

    .line 201
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 201
    .restart local v3    # "index":I
    const/16 v5, 0x12

    aput-byte v5, v1, v2

    .line 203
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 203
    .restart local v2    # "index":I
    const/16 v5, 0x9

    aput-byte v5, v1, v3

    .line 205
    .end local v3    # "index":I
    if-eqz p0, :cond_0

    .line 206
    add-int/lit8 v3, v2, 0x1

    .line 206
    .restart local v3    # "index":I
    aput-byte v4, v1, v2

    .line 206
    .end local v2    # "index":I
    :goto_0
    goto :goto_1

    .line 208
    .end local v3    # "index":I
    .restart local v2    # "index":I
    :cond_0
    add-int/lit8 v3, v2, 0x1

    .line 208
    .restart local v3    # "index":I
    const/4 v4, 0x0

    aput-byte v4, v1, v2

    goto :goto_0

    .line 212
    .end local v2    # "index":I
    :goto_1
    const/4 v2, 0x4

    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    invoke-static {v1, v2, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v2}, Lcom/wen/fluorescence/util/CRC16;->GetCRC16([B)I

    move-result v2

    .line 213
    .local v2, "crc":I
    add-int/lit8 v4, v3, 0x1

    .line 213
    .local v4, "index":I
    shr-int/lit8 v5, v2, 0x8

    int-to-byte v5, v5

    aput-byte v5, v1, v3

    .line 214
    .end local v3    # "index":I
    add-int/lit8 v3, v4, 0x1

    .line 214
    .restart local v3    # "index":I
    int-to-byte v5, v2

    aput-byte v5, v1, v4

    .line 215
    .end local v4    # "index":I
    invoke-static {}, Lcom/wen/fluorescence/Thread/TempTimer;->getInstance()Lcom/wen/fluorescence/Thread/TempTimer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wen/fluorescence/Thread/TempTimer;->stopTempTimer()V

    .line 216
    invoke-static {}, Lcom/wen/fluorescence/Thread/SendTimer;->getInstance()Lcom/wen/fluorescence/Thread/SendTimer;

    move-result-object v4

    new-instance v5, Lcom/wen/fluorescence/serialport/Protocol$4;

    invoke-direct {v5, v1}, Lcom/wen/fluorescence/serialport/Protocol$4;-><init>([B)V

    invoke-virtual {v4, v5}, Lcom/wen/fluorescence/Thread/SendTimer;->setSendTimeOutStart(Lcom/wen/fluorescence/util/MyCallBack;)V

    .line 222
    return-void
.end method

.method public static setHead(I)V
    .locals 6
    .param p0, "temp"    # I

    .line 297
    const-string v0, "Tag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Protocol:setHead:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/16 v0, 0xe

    .line 299
    .local v0, "len":I
    new-array v1, v0, [B

    .line 300
    .local v1, "mTX":[B
    const/4 v2, 0x0

    .line 301
    .local v2, "index":I
    add-int/lit8 v3, v2, 0x1

    .line 301
    .local v3, "index":I
    const/16 v4, 0x55

    aput-byte v4, v1, v2

    .line 302
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 302
    .restart local v2    # "index":I
    const/16 v4, -0x56

    aput-byte v4, v1, v3

    .line 303
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 303
    .restart local v3    # "index":I
    add-int/lit8 v4, v0, -0x4

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 304
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 304
    .restart local v2    # "index":I
    add-int/lit8 v4, v0, -0x4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 305
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 305
    .restart local v3    # "index":I
    const/4 v4, 0x1

    aput-byte v4, v1, v2

    .line 306
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 306
    .restart local v2    # "index":I
    sget-byte v4, Lcom/wen/fluorescence/serialport/Protocol;->PackageNumber:B

    add-int/lit8 v5, v4, 0x1

    int-to-byte v5, v5

    sput-byte v5, Lcom/wen/fluorescence/serialport/Protocol;->PackageNumber:B

    aput-byte v4, v1, v3

    .line 307
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 307
    .restart local v3    # "index":I
    const/16 v4, 0x11

    aput-byte v4, v1, v2

    .line 308
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 308
    .restart local v2    # "index":I
    const/16 v4, 0x21

    aput-byte v4, v1, v3

    .line 310
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 310
    .restart local v3    # "index":I
    const/16 v4, 0x12

    aput-byte v4, v1, v2

    .line 312
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 312
    .restart local v2    # "index":I
    const/4 v4, 0x6

    aput-byte v4, v1, v3

    .line 314
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 314
    .restart local v3    # "index":I
    shr-int/lit8 v4, p0, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 315
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 315
    .restart local v2    # "index":I
    int-to-byte v4, p0

    aput-byte v4, v1, v3

    .line 317
    .end local v3    # "index":I
    const/4 v3, 0x4

    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    invoke-static {v1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-static {v3}, Lcom/wen/fluorescence/util/CRC16;->GetCRC16([B)I

    move-result v3

    .line 318
    .local v3, "crc":I
    add-int/lit8 v4, v2, 0x1

    .line 318
    .local v4, "index":I
    shr-int/lit8 v5, v3, 0x8

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    .line 319
    .end local v2    # "index":I
    add-int/lit8 v2, v4, 0x1

    .line 319
    .restart local v2    # "index":I
    int-to-byte v5, v3

    aput-byte v5, v1, v4

    .line 320
    .end local v4    # "index":I
    invoke-static {}, Lcom/wen/fluorescence/Thread/TempTimer;->getInstance()Lcom/wen/fluorescence/Thread/TempTimer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wen/fluorescence/Thread/TempTimer;->stopTempTimer()V

    .line 321
    invoke-static {}, Lcom/wen/fluorescence/Thread/SendTimer;->getInstance()Lcom/wen/fluorescence/Thread/SendTimer;

    move-result-object v4

    new-instance v5, Lcom/wen/fluorescence/serialport/Protocol$6;

    invoke-direct {v5, v1}, Lcom/wen/fluorescence/serialport/Protocol$6;-><init>([B)V

    invoke-virtual {v4, v5}, Lcom/wen/fluorescence/Thread/SendTimer;->setSendTimeOutStart(Lcom/wen/fluorescence/util/MyCallBack;)V

    .line 327
    return-void
.end method

.method public static setHeadSwitch(Z)V
    .locals 7
    .param p0, "on"    # Z

    .line 256
    const-string v0, "Tag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Protocol:setHeadSwitch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/16 v0, 0xd

    .line 258
    .local v0, "len":I
    new-array v1, v0, [B

    .line 259
    .local v1, "mTX":[B
    const/4 v2, 0x0

    .line 260
    .local v2, "index":I
    add-int/lit8 v3, v2, 0x1

    .line 260
    .local v3, "index":I
    const/16 v4, 0x55

    aput-byte v4, v1, v2

    .line 261
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 261
    .restart local v2    # "index":I
    const/16 v4, -0x56

    aput-byte v4, v1, v3

    .line 262
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 262
    .restart local v3    # "index":I
    add-int/lit8 v4, v0, -0x4

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 263
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 263
    .restart local v2    # "index":I
    add-int/lit8 v4, v0, -0x4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 264
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 264
    .restart local v3    # "index":I
    const/4 v4, 0x1

    aput-byte v4, v1, v2

    .line 265
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 265
    .restart local v2    # "index":I
    sget-byte v5, Lcom/wen/fluorescence/serialport/Protocol;->PackageNumber:B

    add-int/lit8 v6, v5, 0x1

    int-to-byte v6, v6

    sput-byte v6, Lcom/wen/fluorescence/serialport/Protocol;->PackageNumber:B

    aput-byte v5, v1, v3

    .line 266
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 266
    .restart local v3    # "index":I
    const/16 v5, 0x11

    aput-byte v5, v1, v2

    .line 267
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 267
    .restart local v2    # "index":I
    const/16 v5, 0x21

    aput-byte v5, v1, v3

    .line 269
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 269
    .restart local v3    # "index":I
    const/16 v5, 0x12

    aput-byte v5, v1, v2

    .line 271
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 271
    .restart local v2    # "index":I
    const/4 v5, 0x5

    aput-byte v5, v1, v3

    .line 273
    .end local v3    # "index":I
    if-eqz p0, :cond_0

    .line 274
    add-int/lit8 v3, v2, 0x1

    .line 274
    .restart local v3    # "index":I
    aput-byte v4, v1, v2

    .line 274
    .end local v2    # "index":I
    :goto_0
    goto :goto_1

    .line 276
    .end local v3    # "index":I
    .restart local v2    # "index":I
    :cond_0
    add-int/lit8 v3, v2, 0x1

    .line 276
    .restart local v3    # "index":I
    const/4 v4, 0x0

    aput-byte v4, v1, v2

    goto :goto_0

    .line 279
    .end local v2    # "index":I
    :goto_1
    const/4 v2, 0x4

    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    invoke-static {v1, v2, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v2}, Lcom/wen/fluorescence/util/CRC16;->GetCRC16([B)I

    move-result v2

    .line 280
    .local v2, "crc":I
    add-int/lit8 v4, v3, 0x1

    .line 280
    .local v4, "index":I
    shr-int/lit8 v5, v2, 0x8

    int-to-byte v5, v5

    aput-byte v5, v1, v3

    .line 281
    .end local v3    # "index":I
    add-int/lit8 v3, v4, 0x1

    .line 281
    .restart local v3    # "index":I
    int-to-byte v5, v2

    aput-byte v5, v1, v4

    .line 282
    .end local v4    # "index":I
    invoke-static {}, Lcom/wen/fluorescence/Thread/TempTimer;->getInstance()Lcom/wen/fluorescence/Thread/TempTimer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wen/fluorescence/Thread/TempTimer;->stopTempTimer()V

    .line 283
    invoke-static {}, Lcom/wen/fluorescence/Thread/SendTimer;->getInstance()Lcom/wen/fluorescence/Thread/SendTimer;

    move-result-object v4

    new-instance v5, Lcom/wen/fluorescence/serialport/Protocol$5;

    invoke-direct {v5, v1}, Lcom/wen/fluorescence/serialport/Protocol$5;-><init>([B)V

    invoke-virtual {v4, v5}, Lcom/wen/fluorescence/Thread/SendTimer;->setSendTimeOutStart(Lcom/wen/fluorescence/util/MyCallBack;)V

    .line 289
    return-void
.end method

.method public static setLightSwitch(Z)V
    .locals 7
    .param p0, "on"    # Z

    .line 148
    const/16 v0, 0xd

    .line 149
    .local v0, "len":I
    new-array v1, v0, [B

    .line 150
    .local v1, "mTX":[B
    const/4 v2, 0x0

    .line 151
    .local v2, "index":I
    add-int/lit8 v3, v2, 0x1

    .line 151
    .local v3, "index":I
    const/16 v4, 0x55

    aput-byte v4, v1, v2

    .line 152
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 152
    .restart local v2    # "index":I
    const/16 v4, -0x56

    aput-byte v4, v1, v3

    .line 153
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 153
    .restart local v3    # "index":I
    add-int/lit8 v4, v0, -0x4

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 154
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 154
    .restart local v2    # "index":I
    add-int/lit8 v4, v0, -0x4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 155
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 155
    .restart local v3    # "index":I
    const/4 v4, 0x1

    aput-byte v4, v1, v2

    .line 156
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 156
    .restart local v2    # "index":I
    sget-byte v5, Lcom/wen/fluorescence/serialport/Protocol;->PackageNumber:B

    add-int/lit8 v6, v5, 0x1

    int-to-byte v6, v6

    sput-byte v6, Lcom/wen/fluorescence/serialport/Protocol;->PackageNumber:B

    aput-byte v5, v1, v3

    .line 157
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 157
    .restart local v3    # "index":I
    const/16 v5, 0x11

    aput-byte v5, v1, v2

    .line 158
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 158
    .restart local v2    # "index":I
    const/16 v5, 0x21

    aput-byte v5, v1, v3

    .line 160
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 160
    .restart local v3    # "index":I
    const/16 v5, 0x12

    aput-byte v5, v1, v2

    .line 162
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 162
    .restart local v2    # "index":I
    const/4 v5, 0x4

    aput-byte v5, v1, v3

    .line 164
    .end local v3    # "index":I
    if-eqz p0, :cond_0

    .line 165
    add-int/lit8 v3, v2, 0x1

    .line 165
    .restart local v3    # "index":I
    aput-byte v4, v1, v2

    .line 165
    .end local v2    # "index":I
    :goto_0
    goto :goto_1

    .line 167
    .end local v3    # "index":I
    .restart local v2    # "index":I
    :cond_0
    add-int/lit8 v3, v2, 0x1

    .line 167
    .restart local v3    # "index":I
    const/4 v4, 0x0

    aput-byte v4, v1, v2

    goto :goto_0

    .line 170
    .end local v2    # "index":I
    :goto_1
    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    invoke-static {v1, v5, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v2}, Lcom/wen/fluorescence/util/CRC16;->GetCRC16([B)I

    move-result v2

    .line 171
    .local v2, "crc":I
    add-int/lit8 v4, v3, 0x1

    .line 171
    .local v4, "index":I
    shr-int/lit8 v5, v2, 0x8

    int-to-byte v5, v5

    aput-byte v5, v1, v3

    .line 172
    .end local v3    # "index":I
    add-int/lit8 v3, v4, 0x1

    .line 172
    .restart local v3    # "index":I
    int-to-byte v5, v2

    aput-byte v5, v1, v4

    .line 173
    .end local v4    # "index":I
    invoke-static {}, Lcom/wen/fluorescence/Thread/TempTimer;->getInstance()Lcom/wen/fluorescence/Thread/TempTimer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wen/fluorescence/Thread/TempTimer;->stopTempTimer()V

    .line 174
    invoke-static {}, Lcom/wen/fluorescence/Thread/SendTimer;->getInstance()Lcom/wen/fluorescence/Thread/SendTimer;

    move-result-object v4

    new-instance v5, Lcom/wen/fluorescence/serialport/Protocol$3;

    invoke-direct {v5, v1}, Lcom/wen/fluorescence/serialport/Protocol$3;-><init>([B)V

    invoke-virtual {v4, v5}, Lcom/wen/fluorescence/Thread/SendTimer;->setSendTimeOutStart(Lcom/wen/fluorescence/util/MyCallBack;)V

    .line 180
    return-void
.end method

.method public static setPCControlMode()V
    .locals 6

    .line 333
    const/16 v0, 0xc

    .line 334
    .local v0, "len":I
    new-array v1, v0, [B

    .line 335
    .local v1, "mTX":[B
    const/4 v2, 0x0

    .line 336
    .local v2, "index":I
    add-int/lit8 v3, v2, 0x1

    .line 336
    .local v3, "index":I
    const/16 v4, 0x55

    aput-byte v4, v1, v2

    .line 337
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 337
    .restart local v2    # "index":I
    const/16 v4, -0x56

    aput-byte v4, v1, v3

    .line 338
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 338
    .restart local v3    # "index":I
    add-int/lit8 v4, v0, -0x4

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 339
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 339
    .restart local v2    # "index":I
    add-int/lit8 v4, v0, -0x4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 340
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 340
    .restart local v3    # "index":I
    const/4 v4, 0x1

    aput-byte v4, v1, v2

    .line 341
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 341
    .restart local v2    # "index":I
    sget-byte v4, Lcom/wen/fluorescence/serialport/Protocol;->PackageNumber:B

    add-int/lit8 v5, v4, 0x1

    int-to-byte v5, v5

    sput-byte v5, Lcom/wen/fluorescence/serialport/Protocol;->PackageNumber:B

    aput-byte v4, v1, v3

    .line 342
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 342
    .restart local v3    # "index":I
    const/16 v4, 0x11

    aput-byte v4, v1, v2

    .line 343
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 343
    .restart local v2    # "index":I
    const/16 v4, 0x21

    aput-byte v4, v1, v3

    .line 345
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 345
    .restart local v3    # "index":I
    const/16 v4, 0x12

    aput-byte v4, v1, v2

    .line 347
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 347
    .restart local v2    # "index":I
    const/4 v4, 0x7

    aput-byte v4, v1, v3

    .line 349
    .end local v3    # "index":I
    const/4 v3, 0x4

    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    invoke-static {v1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-static {v3}, Lcom/wen/fluorescence/util/CRC16;->GetCRC16([B)I

    move-result v3

    .line 350
    .local v3, "crc":I
    add-int/lit8 v4, v2, 0x1

    .line 350
    .local v4, "index":I
    shr-int/lit8 v5, v3, 0x8

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    .line 351
    .end local v2    # "index":I
    add-int/lit8 v2, v4, 0x1

    .line 351
    .restart local v2    # "index":I
    int-to-byte v5, v3

    aput-byte v5, v1, v4

    .line 352
    .end local v4    # "index":I
    invoke-static {}, Lcom/wen/fluorescence/Thread/TempTimer;->getInstance()Lcom/wen/fluorescence/Thread/TempTimer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wen/fluorescence/Thread/TempTimer;->stopTempTimer()V

    .line 353
    invoke-static {}, Lcom/wen/fluorescence/Thread/SendTimer;->getInstance()Lcom/wen/fluorescence/Thread/SendTimer;

    move-result-object v4

    new-instance v5, Lcom/wen/fluorescence/serialport/Protocol$7;

    invoke-direct {v5, v1}, Lcom/wen/fluorescence/serialport/Protocol$7;-><init>([B)V

    invoke-virtual {v4, v5}, Lcom/wen/fluorescence/Thread/SendTimer;->setSendTimeOutStart(Lcom/wen/fluorescence/util/MyCallBack;)V

    .line 359
    return-void
.end method

.method public static setSystemConfig(Lcom/wen/fluorescence/bean/SystemConfig;)V
    .locals 8
    .param p0, "config"    # Lcom/wen/fluorescence/bean/SystemConfig;

    .line 592
    const/16 v0, 0x1e

    .line 593
    .local v0, "len":I
    new-array v1, v0, [B

    .line 594
    .local v1, "mTX":[B
    const/4 v2, 0x0

    .line 595
    .local v2, "index":I
    add-int/lit8 v3, v2, 0x1

    .line 595
    .local v3, "index":I
    const/16 v4, 0x55

    aput-byte v4, v1, v2

    .line 596
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 596
    .restart local v2    # "index":I
    const/16 v4, -0x56

    aput-byte v4, v1, v3

    .line 597
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 597
    .restart local v3    # "index":I
    add-int/lit8 v4, v0, -0x4

    const/16 v5, 0x8

    shr-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 598
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 598
    .restart local v2    # "index":I
    add-int/lit8 v4, v0, -0x4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 599
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 599
    .restart local v3    # "index":I
    const/4 v4, 0x1

    aput-byte v4, v1, v2

    .line 600
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 600
    .restart local v2    # "index":I
    sget-byte v6, Lcom/wen/fluorescence/serialport/Protocol;->PackageNumber:B

    add-int/lit8 v7, v6, 0x1

    int-to-byte v7, v7

    sput-byte v7, Lcom/wen/fluorescence/serialport/Protocol;->PackageNumber:B

    aput-byte v6, v1, v3

    .line 601
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 601
    .restart local v3    # "index":I
    const/16 v6, 0x11

    aput-byte v6, v1, v2

    .line 602
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 602
    .restart local v2    # "index":I
    const/16 v6, 0x21

    aput-byte v6, v1, v3

    .line 604
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 604
    .restart local v3    # "index":I
    aput-byte v4, v1, v2

    .line 606
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 606
    .restart local v2    # "index":I
    const/4 v4, 0x0

    aput-byte v4, v1, v3

    .line 608
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 608
    .restart local v3    # "index":I
    invoke-virtual {p0}, Lcom/wen/fluorescence/bean/SystemConfig;->getStartPosition()I

    move-result v6

    shr-int/2addr v6, v5

    int-to-byte v6, v6

    aput-byte v6, v1, v2

    .line 609
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 609
    .restart local v2    # "index":I
    invoke-virtual {p0}, Lcom/wen/fluorescence/bean/SystemConfig;->getStartPosition()I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v1, v3

    .line 610
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 610
    .restart local v3    # "index":I
    invoke-virtual {p0}, Lcom/wen/fluorescence/bean/SystemConfig;->getRunTotal()I

    move-result v6

    shr-int/2addr v6, v5

    int-to-byte v6, v6

    aput-byte v6, v1, v2

    .line 611
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 611
    .restart local v2    # "index":I
    invoke-virtual {p0}, Lcom/wen/fluorescence/bean/SystemConfig;->getRunTotal()I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v1, v3

    .line 612
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 612
    .restart local v3    # "index":I
    invoke-virtual {p0}, Lcom/wen/fluorescence/bean/SystemConfig;->getMaxAD()I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v1, v2

    .line 613
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 613
    .restart local v2    # "index":I
    invoke-virtual {p0}, Lcom/wen/fluorescence/bean/SystemConfig;->getScanTime()I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v1, v3

    .line 614
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 614
    .restart local v3    # "index":I
    invoke-virtual {p0}, Lcom/wen/fluorescence/bean/SystemConfig;->getTemp()I

    move-result v6

    shr-int/2addr v6, v5

    int-to-byte v6, v6

    aput-byte v6, v1, v2

    .line 615
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 615
    .restart local v2    # "index":I
    invoke-virtual {p0}, Lcom/wen/fluorescence/bean/SystemConfig;->getTemp()I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v1, v3

    .line 616
    .end local v3    # "index":I
    add-int/lit8 v3, v2, 0x1

    .line 616
    .restart local v3    # "index":I
    invoke-virtual {p0}, Lcom/wen/fluorescence/bean/SystemConfig;->getTempSwitch()I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v1, v2

    .line 617
    .end local v2    # "index":I
    add-int/lit8 v2, v3, 0x1

    .line 617
    .restart local v2    # "index":I
    invoke-virtual {p0}, Lcom/wen/fluorescence/bean/SystemConfig;->getDebugSwitch()I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v1, v3

    .line 618
    .end local v3    # "index":I
    move v3, v2

    move v2, v4

    .line 618
    .local v2, "i":I
    .restart local v3    # "index":I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 619
    add-int/lit8 v6, v3, 0x1

    .line 619
    .local v6, "index":I
    aput-byte v4, v1, v3

    .line 618
    .end local v3    # "index":I
    add-int/lit8 v2, v2, 0x1

    move v3, v6

    goto :goto_0

    .line 622
    .end local v2    # "i":I
    .end local v6    # "index":I
    .restart local v3    # "index":I
    :cond_0
    const/4 v2, 0x4

    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    invoke-static {v1, v2, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v2}, Lcom/wen/fluorescence/util/CRC16;->GetCRC16([B)I

    move-result v2

    .line 623
    .local v2, "crc":I
    add-int/lit8 v4, v3, 0x1

    .line 623
    .local v4, "index":I
    shr-int/lit8 v5, v2, 0x8

    int-to-byte v5, v5

    aput-byte v5, v1, v3

    .line 624
    .end local v3    # "index":I
    add-int/lit8 v3, v4, 0x1

    .line 624
    .restart local v3    # "index":I
    int-to-byte v5, v2

    aput-byte v5, v1, v4

    .line 625
    .end local v4    # "index":I
    invoke-static {}, Lcom/wen/fluorescence/Thread/TempTimer;->getInstance()Lcom/wen/fluorescence/Thread/TempTimer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wen/fluorescence/Thread/TempTimer;->stopTempTimer()V

    .line 626
    invoke-static {}, Lcom/wen/fluorescence/Thread/SendTimer;->getInstance()Lcom/wen/fluorescence/Thread/SendTimer;

    move-result-object v4

    new-instance v5, Lcom/wen/fluorescence/serialport/Protocol$14;

    invoke-direct {v5, v1}, Lcom/wen/fluorescence/serialport/Protocol$14;-><init>([B)V

    invoke-virtual {v4, v5}, Lcom/wen/fluorescence/Thread/SendTimer;->setSendTimeOutStart(Lcom/wen/fluorescence/util/MyCallBack;)V

    .line 632
    return-void
.end method
