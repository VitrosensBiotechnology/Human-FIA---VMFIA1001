.class public Lcom/wen/fluorescence/util/IDCardUtil;
.super Ljava/lang/Object;
.source "IDCardUtil.java"


# static fields
.field private static idCardUtil:Lcom/wen/fluorescence/util/IDCardUtil;

.field public static localPath:Ljava/lang/String;


# instance fields
.field private final IdChipFlag:B

.field private fileName:Ljava/lang/String;

.field private placeHolder:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-string v0, "/sdcard/IDChips"

    sput-object v0, Lcom/wen/fluorescence/util/IDCardUtil;->localPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "#"

    iput-object v0, p0, Lcom/wen/fluorescence/util/IDCardUtil;->placeHolder:Ljava/lang/String;

    .line 25
    const/16 v0, 0x24

    iput-byte v0, p0, Lcom/wen/fluorescence/util/IDCardUtil;->IdChipFlag:B

    .line 30
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v1, "icoolv3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    const-string v0, "/sys/bus/i2c/devices/2-0050/eeprom"

    iput-object v0, p0, Lcom/wen/fluorescence/util/IDCardUtil;->fileName:Ljava/lang/String;

    goto :goto_0

    .line 33
    :cond_0
    const-string v0, "/sys/bus/i2c/devices/1-0050/eeprom"

    iput-object v0, p0, Lcom/wen/fluorescence/util/IDCardUtil;->fileName:Ljava/lang/String;

    .line 35
    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/wen/fluorescence/util/IDCardUtil;
    .locals 1

    .line 38
    sget-object v0, Lcom/wen/fluorescence/util/IDCardUtil;->idCardUtil:Lcom/wen/fluorescence/util/IDCardUtil;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/wen/fluorescence/util/IDCardUtil;

    invoke-direct {v0}, Lcom/wen/fluorescence/util/IDCardUtil;-><init>()V

    sput-object v0, Lcom/wen/fluorescence/util/IDCardUtil;->idCardUtil:Lcom/wen/fluorescence/util/IDCardUtil;

    .line 41
    :cond_0
    sget-object v0, Lcom/wen/fluorescence/util/IDCardUtil;->idCardUtil:Lcom/wen/fluorescence/util/IDCardUtil;

    return-object v0
.end method

.method private parseIDChipInfo(Ljava/io/File;)Lcom/wen/fluorescence/bean/IDChipInfo;
    .locals 38
    .param p1, "file"    # Ljava/io/File;

    move-object/from16 v1, p0

    .line 536
    :try_start_0
    new-instance v3, Lcom/wen/fluorescence/bean/IDChipInfo;

    invoke-direct {v3}, Lcom/wen/fluorescence/bean/IDChipInfo;-><init>()V

    .line 537
    .local v3, "idCardInfo":Lcom/wen/fluorescence/bean/IDChipInfo;
    new-instance v4, Ljava/io/FileInputStream;

    move-object/from16 v5, p1

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 538
    .local v4, "in":Ljava/io/InputStream;
    const/16 v6, 0x10

    new-array v7, v6, [B

    .line 540
    .local v7, "temp":[B
    invoke-virtual {v4, v7}, Ljava/io/InputStream;->read([B)I

    .line 541
    const/4 v8, 0x0

    aget-byte v9, v7, v8

    iput-byte v9, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->FileFlag:B

    .line 542
    const/4 v9, 0x1

    aget-byte v10, v7, v9

    iput-byte v10, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->FileVersion:B

    .line 543
    const/4 v10, 0x4

    aget-byte v11, v7, v10

    and-int/lit16 v11, v11, 0xff

    iput v11, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->m_ItemCount:I

    .line 544
    const/16 v11, 0x9

    const/16 v12, 0xd

    invoke-static {v7, v11, v12}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v11

    .line 545
    .local v11, "prevBatch":[B
    new-instance v13, Ljava/lang/String;

    const-string v14, "GBK"

    invoke-direct {v13, v11, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 546
    .local v13, "strPrevBatch":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v15, 0x5

    aget-byte v15, v7, v15

    invoke-static {v15}, Lcom/wen/fluorescence/util/PublicFuction;->byteToHexString(B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v15, 0x6

    aget-byte v15, v7, v15

    invoke-static {v15}, Lcom/wen/fluorescence/util/PublicFuction;->byteToHexString(B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v15, 0x7

    aget-byte v15, v7, v15

    .line 547
    invoke-static {v15}, Lcom/wen/fluorescence/util/PublicFuction;->byteToHexString(B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v15, 0x8

    aget-byte v2, v7, v15

    invoke-static {v2}, Lcom/wen/fluorescence/util/PublicFuction;->byteToHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v14, v1, Lcom/wen/fluorescence/util/IDCardUtil;->placeHolder:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v2, v14, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->m_barCode:Ljava/lang/String;

    .line 548
    aget-byte v2, v7, v12

    and-int/lit16 v2, v2, 0xff

    iput v2, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->m_testtime:I

    .line 549
    const/16 v2, 0xe

    aget-byte v2, v7, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->m_countdowntime:I

    .line 550
    const/16 v2, 0xf

    aget-byte v2, v7, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->m_T1Pos:I

    .line 552
    const/4 v2, 0x0

    .line 553
    .local v2, "index":I
    invoke-virtual {v4, v7}, Ljava/io/InputStream;->read([B)I

    .line 554
    add-int/lit8 v6, v2, 0x1

    .line 554
    .local v6, "index":I
    aget-byte v2, v7, v2

    .line 554
    .end local v2    # "index":I
    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v15

    add-int/lit8 v14, v6, 0x1

    .line 554
    .local v14, "index":I
    aget-byte v6, v7, v6

    .line 554
    .end local v6    # "index":I
    and-int/lit16 v6, v6, 0xff

    or-int/2addr v2, v6

    iput v2, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->T1_start:I

    .line 555
    add-int/lit8 v2, v14, 0x1

    .line 555
    .restart local v2    # "index":I
    aget-byte v6, v7, v14

    .line 555
    .end local v14    # "index":I
    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v15

    add-int/lit8 v14, v2, 0x1

    .line 555
    .restart local v14    # "index":I
    aget-byte v2, v7, v2

    .line 555
    .end local v2    # "index":I
    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v6

    iput v2, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->T1_end:I

    .line 556
    add-int/lit8 v2, v14, 0x1

    .line 556
    .restart local v2    # "index":I
    aget-byte v6, v7, v14

    .line 556
    .end local v14    # "index":I
    and-int/lit16 v6, v6, 0xff

    iput v6, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->m_NumberT1:I

    .line 557
    add-int/lit8 v6, v2, 0x1

    .line 557
    .restart local v6    # "index":I
    aget-byte v2, v7, v2

    .line 557
    .end local v2    # "index":I
    and-int/lit16 v2, v2, 0xff

    iput v2, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->m_T2Pos:I

    .line 558
    add-int/lit8 v2, v6, 0x1

    .line 558
    .restart local v2    # "index":I
    aget-byte v6, v7, v6

    .line 558
    .end local v6    # "index":I
    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v15

    add-int/lit8 v14, v2, 0x1

    .line 558
    .restart local v14    # "index":I
    aget-byte v2, v7, v2

    .line 558
    .end local v2    # "index":I
    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v6

    iput v2, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->T2_start:I

    .line 559
    add-int/lit8 v2, v14, 0x1

    .line 559
    .restart local v2    # "index":I
    aget-byte v6, v7, v14

    .line 559
    .end local v14    # "index":I
    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v15

    add-int/lit8 v14, v2, 0x1

    .line 559
    .restart local v14    # "index":I
    aget-byte v2, v7, v2

    .line 559
    .end local v2    # "index":I
    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v6

    iput v2, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->T2_end:I

    .line 560
    add-int/lit8 v2, v14, 0x1

    .line 560
    .restart local v2    # "index":I
    aget-byte v6, v7, v14

    .line 560
    .end local v14    # "index":I
    and-int/lit16 v6, v6, 0xff

    iput v6, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->m_NumberT2:I

    .line 561
    add-int/lit8 v6, v2, 0x1

    .line 561
    .restart local v6    # "index":I
    aget-byte v2, v7, v2

    .line 561
    .end local v2    # "index":I
    and-int/lit16 v2, v2, 0xff

    iput v2, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->m_CPos:I

    .line 562
    add-int/lit8 v2, v6, 0x1

    .line 562
    .restart local v2    # "index":I
    aget-byte v6, v7, v6

    .line 562
    .end local v6    # "index":I
    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v15

    add-int/lit8 v14, v2, 0x1

    .line 562
    .restart local v14    # "index":I
    aget-byte v2, v7, v2

    .line 562
    .end local v2    # "index":I
    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v6

    iput v2, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->C_start:I

    .line 563
    add-int/lit8 v2, v14, 0x1

    .line 563
    .restart local v2    # "index":I
    aget-byte v6, v7, v14

    .line 563
    .end local v14    # "index":I
    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v15

    add-int/lit8 v14, v2, 0x1

    .line 563
    .restart local v14    # "index":I
    aget-byte v2, v7, v2

    .line 563
    .end local v2    # "index":I
    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v6

    iput v2, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->C_end:I

    .line 565
    const/4 v2, 0x0

    .line 566
    .end local v14    # "index":I
    .restart local v2    # "index":I
    invoke-virtual {v4, v7}, Ljava/io/InputStream;->read([B)I

    .line 567
    add-int/lit8 v6, v2, 0x1

    .line 567
    .restart local v6    # "index":I
    aget-byte v2, v7, v2

    .line 567
    .end local v2    # "index":I
    and-int/lit16 v2, v2, 0xff

    iput v2, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->m_NumberC:I

    .line 568
    add-int/lit8 v2, v6, 0x1

    .line 568
    .restart local v2    # "index":I
    aget-byte v6, v7, v6

    .line 568
    .end local v6    # "index":I
    and-int/lit16 v6, v6, 0xff

    iput v6, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->m_X1Pos:I

    .line 569
    add-int/lit8 v6, v2, 0x1

    .line 569
    .restart local v6    # "index":I
    aget-byte v2, v7, v2

    .line 569
    .end local v2    # "index":I
    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v15

    add-int/lit8 v14, v6, 0x1

    .line 569
    .restart local v14    # "index":I
    aget-byte v6, v7, v6

    .line 569
    .end local v6    # "index":I
    and-int/lit16 v6, v6, 0xff

    or-int/2addr v2, v6

    iput v2, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->X1_start:I

    .line 570
    add-int/lit8 v2, v14, 0x1

    .line 570
    .restart local v2    # "index":I
    aget-byte v6, v7, v14

    .line 570
    .end local v14    # "index":I
    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v15

    add-int/lit8 v14, v2, 0x1

    .line 570
    .restart local v14    # "index":I
    aget-byte v2, v7, v2

    .line 570
    .end local v2    # "index":I
    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v6

    iput v2, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->X1_end:I

    .line 571
    add-int/lit8 v2, v14, 0x1

    .line 571
    .restart local v2    # "index":I
    aget-byte v6, v7, v14

    .line 571
    .end local v14    # "index":I
    and-int/lit16 v6, v6, 0xff

    iput v6, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->m_NumberX1:I

    .line 572
    add-int/lit8 v6, v2, 0x1

    .line 572
    .restart local v6    # "index":I
    aget-byte v2, v7, v2

    .line 572
    .end local v2    # "index":I
    and-int/lit16 v2, v2, 0xff

    iput v2, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->m_X2Pos:I

    .line 573
    add-int/lit8 v2, v6, 0x1

    .line 573
    .restart local v2    # "index":I
    aget-byte v6, v7, v6

    .line 573
    .end local v6    # "index":I
    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v15

    add-int/lit8 v14, v2, 0x1

    .line 573
    .restart local v14    # "index":I
    aget-byte v2, v7, v2

    .line 573
    .end local v2    # "index":I
    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v6

    iput v2, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->X2_start:I

    .line 574
    add-int/lit8 v2, v14, 0x1

    .line 574
    .restart local v2    # "index":I
    aget-byte v6, v7, v14

    .line 574
    .end local v14    # "index":I
    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v15

    add-int/lit8 v14, v2, 0x1

    .line 574
    .restart local v14    # "index":I
    aget-byte v2, v7, v2

    .line 574
    .end local v2    # "index":I
    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v6

    iput v2, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->X2_end:I

    .line 575
    add-int/lit8 v2, v14, 0x1

    .line 575
    .restart local v2    # "index":I
    aget-byte v6, v7, v14

    .line 575
    .end local v14    # "index":I
    and-int/lit16 v6, v6, 0xff

    iput v6, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->m_NumberX2:I

    .line 576
    add-int/lit8 v6, v2, 0x1

    .line 576
    .restart local v6    # "index":I
    aget-byte v2, v7, v2

    .line 576
    .end local v2    # "index":I
    and-int/lit16 v2, v2, 0xff

    iput v2, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->m_X3Pos:I

    .line 577
    add-int/lit8 v2, v6, 0x1

    .line 577
    .restart local v2    # "index":I
    aget-byte v6, v7, v6

    .line 577
    .end local v6    # "index":I
    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v15

    add-int/lit8 v14, v2, 0x1

    .line 577
    .restart local v14    # "index":I
    aget-byte v2, v7, v2

    .line 577
    .end local v2    # "index":I
    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v6

    iput v2, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->X3_start:I

    .line 579
    const/4 v2, 0x0

    .line 580
    .end local v14    # "index":I
    .restart local v2    # "index":I
    invoke-virtual {v4, v7}, Ljava/io/InputStream;->read([B)I

    .line 581
    add-int/lit8 v6, v2, 0x1

    .line 581
    .restart local v6    # "index":I
    aget-byte v2, v7, v2

    .line 581
    .end local v2    # "index":I
    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v15

    add-int/lit8 v14, v6, 0x1

    .line 581
    .restart local v14    # "index":I
    aget-byte v6, v7, v6

    .line 581
    .end local v6    # "index":I
    and-int/lit16 v6, v6, 0xff

    or-int/2addr v2, v6

    iput v2, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->X3_end:I

    .line 582
    add-int/lit8 v2, v14, 0x1

    .line 582
    .restart local v2    # "index":I
    aget-byte v6, v7, v14

    .line 582
    .end local v14    # "index":I
    and-int/lit16 v6, v6, 0xff

    iput v6, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->m_NumberX3:I

    .line 583
    add-int/lit8 v6, v2, 0x1

    .line 583
    .restart local v6    # "index":I
    aget-byte v2, v7, v2

    .line 583
    .end local v2    # "index":I
    and-int/lit16 v2, v2, 0xff

    iput v2, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->m_X4Pos:I

    .line 584
    add-int/lit8 v2, v6, 0x1

    .line 584
    .restart local v2    # "index":I
    aget-byte v6, v7, v6

    .line 584
    .end local v6    # "index":I
    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v15

    add-int/lit8 v14, v2, 0x1

    .line 584
    .restart local v14    # "index":I
    aget-byte v2, v7, v2

    .line 584
    .end local v2    # "index":I
    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v6

    iput v2, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->X4_start:I

    .line 585
    add-int/lit8 v2, v14, 0x1

    .line 585
    .restart local v2    # "index":I
    aget-byte v6, v7, v14

    .line 585
    .end local v14    # "index":I
    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v15

    add-int/lit8 v14, v2, 0x1

    .line 585
    .restart local v14    # "index":I
    aget-byte v2, v7, v2

    .line 585
    .end local v2    # "index":I
    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v6

    iput v2, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->X4_end:I

    .line 586
    add-int/lit8 v2, v14, 0x1

    .line 586
    .restart local v2    # "index":I
    aget-byte v6, v7, v14

    .line 586
    .end local v14    # "index":I
    and-int/lit16 v6, v6, 0xff

    iput v6, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->m_NumberX4:I

    .line 587
    add-int/lit8 v6, v2, 0x1

    .line 587
    .restart local v6    # "index":I
    aget-byte v2, v7, v2

    .line 587
    .end local v2    # "index":I
    and-int/lit16 v2, v2, 0xff

    iput v2, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->RushTopName:I

    .line 588
    add-int/lit8 v2, v6, 0x1

    .line 588
    .restart local v2    # "index":I
    aget-byte v6, v7, v6

    .line 588
    .end local v6    # "index":I
    and-int/lit16 v6, v6, 0xff

    iput v6, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->isRushTop:I

    .line 589
    add-int/lit8 v6, v2, 0x4

    invoke-static {v7, v2, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 590
    .local v6, "rushBytes":[B
    invoke-static {v6}, Lcom/wen/fluorescence/util/PublicFuction;->byte4ToInt([B)I

    move-result v14

    iput v14, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->rushTop:I

    .line 591
    add-int/2addr v2, v10

    .line 592
    add-int/lit8 v14, v2, 0x1

    .line 592
    .restart local v14    # "index":I
    aget-byte v2, v7, v2

    .line 592
    .end local v2    # "index":I
    and-int/lit16 v2, v2, 0xff

    iput v2, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->AddSampleName:I

    .line 594
    const/4 v2, 0x0

    .line 595
    .end local v14    # "index":I
    .restart local v2    # "index":I
    invoke-virtual {v4, v7}, Ljava/io/InputStream;->read([B)I

    .line 596
    add-int/lit8 v14, v2, 0x1

    .line 596
    .restart local v14    # "index":I
    aget-byte v2, v7, v2

    .line 596
    .end local v2    # "index":I
    and-int/lit16 v2, v2, 0xff

    iput v2, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->isAddSample:I

    .line 597
    add-int/lit8 v2, v14, 0x4

    invoke-static {v7, v14, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 598
    .local v2, "sampleBytes":[B
    invoke-static {v2}, Lcom/wen/fluorescence/util/PublicFuction;->byte4ToInt([B)I

    move-result v12

    iput v12, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->addSample:I

    .line 599
    add-int/2addr v14, v10

    .line 600
    add-int/lit8 v12, v14, 0x1

    .line 600
    .local v12, "index":I
    aget-byte v14, v7, v14

    .line 600
    .end local v14    # "index":I
    and-int/lit16 v14, v14, 0xff

    iput v14, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->qualitativeFlag:I

    .line 603
    add-int/lit8 v14, v12, 0x1

    .line 603
    .restart local v14    # "index":I
    aget-byte v12, v7, v12

    .line 603
    .end local v12    # "index":I
    and-int/lit16 v12, v12, 0xff

    iput v12, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->AlgorithmType:I

    .line 604
    add-int/lit8 v12, v14, 0x1

    .line 604
    .restart local v12    # "index":I
    aget-byte v14, v7, v14

    .line 604
    .end local v14    # "index":I
    and-int/lit16 v14, v14, 0xff

    iput v14, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->cutBackgroundFlag:I

    .line 606
    const/4 v12, 0x0

    .line 607
    invoke-virtual {v4, v7}, Ljava/io/InputStream;->read([B)I

    .line 609
    const/4 v12, 0x0

    .line 610
    invoke-virtual {v4, v7}, Ljava/io/InputStream;->read([B)I

    .line 611
    new-instance v14, Ljava/lang/String;

    const-string v10, "GBK"

    invoke-direct {v14, v7, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v10, v14

    .line 612
    .local v10, "tittle":Ljava/lang/String;
    iget-object v14, v1, Lcom/wen/fluorescence/util/IDCardUtil;->placeHolder:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v10, v14, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->m_title:Ljava/lang/String;

    .line 614
    move-object v8, v7

    const/4 v7, 0x0

    .line 614
    .local v7, "k":I
    .local v8, "temp":[B
    :goto_0
    iget v14, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->m_ItemCount:I

    if-ge v7, v14, :cond_6

    .line 615
    new-instance v14, Lcom/wen/fluorescence/bean/IDChipInfoEx;

    invoke-direct {v14}, Lcom/wen/fluorescence/bean/IDChipInfoEx;-><init>()V

    .line 616
    .local v14, "chipInfoEx":Lcom/wen/fluorescence/bean/IDChipInfoEx;
    iget-byte v15, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->FileFlag:B

    iput-byte v15, v14, Lcom/wen/fluorescence/bean/IDChipInfoEx;->FileFlag:B

    .line 617
    iget-byte v15, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->FileVersion:B

    iput-byte v15, v14, Lcom/wen/fluorescence/bean/IDChipInfoEx;->FileVersion:B

    .line 618
    iput v7, v14, Lcom/wen/fluorescence/bean/IDChipInfoEx;->ItemIndex:I

    .line 619
    iget-object v15, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->m_barCode:Ljava/lang/String;

    iput-object v15, v14, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_barCode:Ljava/lang/String;

    .line 621
    const/4 v12, 0x0

    .line 622
    const/16 v15, 0x23

    new-array v15, v15, [B

    move-object v8, v15

    .line 623
    invoke-virtual {v4, v8}, Ljava/io/InputStream;->read([B)I

    .line 624
    add-int/2addr v12, v9

    .line 625
    add-int/lit8 v15, v12, 0x1

    .line 625
    .local v15, "index":I
    aget-byte v12, v8, v12

    .line 625
    .end local v12    # "index":I
    and-int/lit16 v12, v12, 0xff

    const/16 v20, 0x8

    shl-int/lit8 v12, v12, 0x8

    add-int/lit8 v9, v15, 0x1

    .line 625
    .local v9, "index":I
    aget-byte v15, v8, v15

    .line 625
    .end local v15    # "index":I
    and-int/lit16 v15, v15, 0xff

    or-int/2addr v12, v15

    iput v12, v14, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_projectCount:I

    .line 626
    array-length v12, v8

    invoke-static {v8, v9, v12}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v12

    .line 627
    .local v12, "proNameBytes":[B
    new-instance v15, Ljava/lang/String;

    move-object/from16 v21, v2

    const-string v2, "GBK"

    .line 627
    .end local v2    # "sampleBytes":[B
    .local v21, "sampleBytes":[B
    invoke-direct {v15, v12, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v2, v15

    .line 628
    .local v2, "proName1":Ljava/lang/String;
    iget-object v15, v14, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_projectName:[Ljava/lang/String;

    iget-object v5, v1, Lcom/wen/fluorescence/util/IDCardUtil;->placeHolder:Ljava/lang/String;

    move-object/from16 v22, v6

    const-string v6, ""

    .line 628
    .end local v6    # "rushBytes":[B
    .local v22, "rushBytes":[B
    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v15, v6

    .line 630
    const/4 v5, 0x0

    .line 631
    .end local v9    # "index":I
    .local v5, "index":I
    const/16 v6, 0xd

    new-array v9, v6, [B

    move-object v8, v9

    .line 632
    invoke-virtual {v4, v8}, Ljava/io/InputStream;->read([B)I

    .line 633
    add-int/lit8 v9, v5, 0x8

    invoke-static {v8, v5, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    .line 634
    .local v9, "unitBytes":[B
    new-instance v15, Ljava/lang/String;

    const-string v6, "GBK"

    invoke-direct {v15, v9, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v6, v15

    .line 635
    .local v6, "unit":Ljava/lang/String;
    iget-object v15, v1, Lcom/wen/fluorescence/util/IDCardUtil;->placeHolder:Ljava/lang/String;

    move-object/from16 v23, v2

    const-string v2, ""

    .line 635
    .end local v2    # "proName1":Ljava/lang/String;
    .local v23, "proName1":Ljava/lang/String;
    invoke-virtual {v6, v15, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_unit:Ljava/lang/String;

    .line 636
    add-int/lit8 v5, v5, 0x8

    .line 637
    add-int/lit8 v2, v5, 0x1

    .line 637
    .local v2, "index":I
    aget-byte v5, v8, v5

    .line 637
    .end local v5    # "index":I
    and-int/lit16 v5, v5, 0xff

    iput v5, v14, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_decimalDigits:I

    .line 638
    add-int/lit8 v5, v2, 0x1

    .line 638
    .restart local v5    # "index":I
    aget-byte v2, v8, v2

    .line 638
    .end local v2    # "index":I
    and-int/lit16 v2, v2, 0xff

    iput v2, v14, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_calcMethod:I

    .line 639
    add-int/lit8 v2, v5, 0x1

    .line 639
    .restart local v2    # "index":I
    aget-byte v5, v8, v5

    .line 639
    .end local v5    # "index":I
    and-int/lit16 v5, v5, 0xff

    iput v5, v14, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_t:I

    .line 640
    add-int/lit8 v5, v2, 0x1

    .line 640
    .restart local v5    # "index":I
    aget-byte v2, v8, v2

    .line 640
    .end local v2    # "index":I
    and-int/lit16 v2, v2, 0xff

    iput v2, v14, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_c:I

    .line 641
    add-int/lit8 v2, v5, 0x1

    .line 641
    .restart local v2    # "index":I
    aget-byte v5, v8, v5

    .line 641
    .end local v5    # "index":I
    and-int/lit16 v5, v5, 0xff

    iput v5, v14, Lcom/wen/fluorescence/bean/IDChipInfoEx;->l_count:I

    .line 643
    const/4 v2, 0x0

    .line 644
    const/16 v5, 0x10

    new-array v15, v5, [B

    move-object v8, v15

    .line 645
    invoke-virtual {v4, v8}, Ljava/io/InputStream;->read([B)I

    .line 646
    add-int/lit8 v5, v2, 0x1

    .line 646
    .restart local v5    # "index":I
    aget-byte v2, v8, v2

    .line 646
    .end local v2    # "index":I
    and-int/lit16 v2, v2, 0xff

    iput v2, v14, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_unlog:I

    .line 647
    add-int/lit8 v2, v5, 0x1

    .line 647
    .restart local v2    # "index":I
    aget-byte v5, v8, v5

    .line 647
    .end local v5    # "index":I
    and-int/lit16 v5, v5, 0xff

    iput v5, v14, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_dimension:I

    .line 648
    add-int/lit8 v5, v2, 0x1

    .line 648
    .restart local v5    # "index":I
    aget-byte v2, v8, v2

    .line 648
    .end local v2    # "index":I
    and-int/lit16 v2, v2, 0xff

    iput v2, v14, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_divisionIndex:I

    .line 649
    iget-object v2, v14, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_dimen:[I

    add-int/lit8 v15, v5, 0x1

    .line 649
    .restart local v15    # "index":I
    aget-byte v5, v8, v5

    .line 649
    .end local v5    # "index":I
    and-int/lit16 v5, v5, 0xff

    const/16 v17, 0x0

    aput v5, v2, v17

    .line 650
    iget-object v2, v14, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_dimen:[I

    add-int/lit8 v5, v15, 0x1

    .line 650
    .restart local v5    # "index":I
    aget-byte v15, v8, v15

    .line 650
    .end local v15    # "index":I
    and-int/lit16 v15, v15, 0xff

    const/16 v17, 0x1

    aput v15, v2, v17

    .line 651
    add-int/lit8 v2, v5, 0x8

    invoke-static {v8, v5, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 652
    .local v2, "thresholdBytes":[B
    move/from16 v25, v5

    move-object/from16 v24, v6

    invoke-static {v2}, Lcom/wen/fluorescence/util/PublicFuction;->bytes8ToDouble([B)D

    move-result-wide v5

    .line 652
    .end local v5    # "index":I
    .end local v6    # "unit":Ljava/lang/String;
    .local v24, "unit":Ljava/lang/String;
    .local v25, "index":I
    iput-wide v5, v14, Lcom/wen/fluorescence/bean/IDChipInfoEx;->thresholdValue:D

    .line 654
    const/4 v5, 0x0

    .line 654
    .local v5, "i":I
    :goto_1
    iget-object v6, v14, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_SampleTypeFactor:[D

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 655
    invoke-virtual {v4, v8}, Ljava/io/InputStream;->read([B)I

    .line 656
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>([B)V

    iget-object v15, v1, Lcom/wen/fluorescence/util/IDCardUtil;->placeHolder:Ljava/lang/String;

    move-object/from16 v26, v2

    const-string v2, ""

    .line 656
    .end local v2    # "thresholdBytes":[B
    .local v26, "thresholdBytes":[B
    invoke-virtual {v6, v15, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 657
    .local v2, "strFix":Ljava/lang/String;
    iget-object v6, v14, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_SampleTypeFactor:[D

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v27

    aput-wide v27, v6, v5

    .line 654
    .end local v2    # "strFix":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v26

    goto :goto_1

    .line 660
    .end local v5    # "i":I
    .end local v26    # "thresholdBytes":[B
    .local v2, "thresholdBytes":[B
    :cond_0
    move-object/from16 v26, v2

    .line 660
    .end local v2    # "thresholdBytes":[B
    .restart local v26    # "thresholdBytes":[B
    const/4 v2, 0x0

    .line 660
    .local v2, "i":I
    :goto_2
    iget v5, v14, Lcom/wen/fluorescence/bean/IDChipInfoEx;->l_count:I

    if-ge v2, v5, :cond_1

    .line 661
    invoke-virtual {v4, v8}, Ljava/io/InputStream;->read([B)I

    .line 662
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/lang/String;-><init>([B)V

    iget-object v6, v1, Lcom/wen/fluorescence/util/IDCardUtil;->placeHolder:Ljava/lang/String;

    const-string v15, ""

    invoke-virtual {v5, v6, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 663
    .local v5, "strFix":Ljava/lang/String;
    iget-object v6, v14, Lcom/wen/fluorescence/bean/IDChipInfoEx;->cc:[D

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v27

    aput-wide v27, v6, v2

    .line 660
    .end local v5    # "strFix":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 666
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    .line 666
    .restart local v2    # "i":I
    :goto_3
    iget v5, v14, Lcom/wen/fluorescence/bean/IDChipInfoEx;->l_count:I

    if-ge v2, v5, :cond_2

    .line 667
    invoke-virtual {v4, v8}, Ljava/io/InputStream;->read([B)I

    .line 668
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/lang/String;-><init>([B)V

    iget-object v6, v1, Lcom/wen/fluorescence/util/IDCardUtil;->placeHolder:Ljava/lang/String;

    const-string v15, ""

    invoke-virtual {v5, v6, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 669
    .restart local v5    # "strFix":Ljava/lang/String;
    iget-object v6, v14, Lcom/wen/fluorescence/bean/IDChipInfoEx;->tc:[D

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v27

    aput-wide v27, v6, v2

    .line 666
    .end local v5    # "strFix":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 672
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v4, v8}, Ljava/io/InputStream;->read([B)I

    .line 673
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v8}, Ljava/lang/String;-><init>([B)V

    iget-object v5, v1, Lcom/wen/fluorescence/util/IDCardUtil;->placeHolder:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 674
    .local v2, "strSecProName":Ljava/lang/String;
    iget-object v5, v14, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_projectName:[Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v2, v5, v6

    .line 676
    const/4 v5, 0x0

    .line 676
    .local v5, "j":I
    :goto_4
    const/4 v6, 0x2

    if-ge v5, v6, :cond_3

    .line 677
    invoke-virtual {v4, v8}, Ljava/io/InputStream;->read([B)I

    .line 678
    array-length v6, v8

    const/16 v15, 0x8

    invoke-static {v8, v15, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 679
    .local v6, "minBytes":[B
    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v6}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v29, v2

    iget-object v2, v1, Lcom/wen/fluorescence/util/IDCardUtil;->placeHolder:Ljava/lang/String;

    .line 679
    .end local v2    # "strSecProName":Ljava/lang/String;
    .local v29, "strSecProName":Ljava/lang/String;
    move-object/from16 v30, v6

    const-string v6, ""

    .line 679
    .end local v6    # "minBytes":[B
    .local v30, "minBytes":[B
    invoke-virtual {v15, v2, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 680
    .local v2, "minShow":Ljava/lang/String;
    invoke-virtual {v4, v8}, Ljava/io/InputStream;->read([B)I

    .line 681
    array-length v6, v8

    const/16 v15, 0x8

    invoke-static {v8, v15, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 682
    .local v6, "maxBytes":[B
    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v6}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v31, v6

    iget-object v6, v1, Lcom/wen/fluorescence/util/IDCardUtil;->placeHolder:Ljava/lang/String;

    .line 682
    .end local v6    # "maxBytes":[B
    .local v31, "maxBytes":[B
    move-object/from16 v32, v9

    const-string v9, ""

    .line 682
    .end local v9    # "unitBytes":[B
    .local v32, "unitBytes":[B
    invoke-virtual {v15, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 683
    .local v6, "maxShow":Ljava/lang/String;
    iget-object v9, v14, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_printData:[[Ljava/lang/String;

    aget-object v9, v9, v5

    const/4 v15, 0x0

    aput-object v2, v9, v15

    .line 684
    iget-object v9, v14, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_printData:[[Ljava/lang/String;

    aget-object v9, v9, v5

    const/4 v15, 0x1

    aput-object v6, v9, v15

    .line 685
    invoke-virtual {v4, v8}, Ljava/io/InputStream;->read([B)I

    .line 686
    const/16 v9, 0x8

    const/4 v15, 0x0

    invoke-static {v8, v15, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v17

    move-object/from16 v9, v17

    .line 687
    .local v9, "testBottomBytes":[B
    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v9}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v33, v2

    iget-object v2, v1, Lcom/wen/fluorescence/util/IDCardUtil;->placeHolder:Ljava/lang/String;

    .line 687
    .end local v2    # "minShow":Ljava/lang/String;
    .local v33, "minShow":Ljava/lang/String;
    move-object/from16 v34, v6

    const-string v6, ""

    .line 687
    .end local v6    # "maxShow":Ljava/lang/String;
    .local v34, "maxShow":Ljava/lang/String;
    invoke-virtual {v15, v2, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 688
    .local v2, "testBottom":Ljava/lang/String;
    const/16 v6, 0x8

    const/16 v15, 0x10

    invoke-static {v8, v6, v15}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v16

    move-object/from16 v35, v16

    .line 689
    .local v35, "testUpBytes":[B
    new-instance v6, Ljava/lang/String;

    move-object/from16 v15, v35

    invoke-direct {v6, v15}, Ljava/lang/String;-><init>([B)V

    .line 689
    .end local v35    # "testUpBytes":[B
    .local v15, "testUpBytes":[B
    move-object/from16 v36, v9

    iget-object v9, v1, Lcom/wen/fluorescence/util/IDCardUtil;->placeHolder:Ljava/lang/String;

    .line 689
    .end local v9    # "testBottomBytes":[B
    .local v36, "testBottomBytes":[B
    move-object/from16 v37, v10

    const-string v10, ""

    .line 689
    .end local v10    # "tittle":Ljava/lang/String;
    .local v37, "tittle":Ljava/lang/String;
    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 690
    .local v6, "testUp":Ljava/lang/String;
    iget-object v9, v14, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_testBound:[[F

    aget-object v9, v9, v5

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    const/16 v16, 0x0

    aput v10, v9, v16

    .line 691
    iget-object v9, v14, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_testBound:[[F

    aget-object v9, v9, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    const/16 v17, 0x1

    aput v10, v9, v17

    .line 676
    .end local v2    # "testBottom":Ljava/lang/String;
    .end local v6    # "testUp":Ljava/lang/String;
    .end local v15    # "testUpBytes":[B
    .end local v30    # "minBytes":[B
    .end local v31    # "maxBytes":[B
    .end local v33    # "minShow":Ljava/lang/String;
    .end local v34    # "maxShow":Ljava/lang/String;
    .end local v36    # "testBottomBytes":[B
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v29

    move-object/from16 v9, v32

    move-object/from16 v10, v37

    goto/16 :goto_4

    .line 695
    .end local v5    # "j":I
    .end local v29    # "strSecProName":Ljava/lang/String;
    .end local v32    # "unitBytes":[B
    .end local v37    # "tittle":Ljava/lang/String;
    .local v2, "strSecProName":Ljava/lang/String;
    .local v9, "unitBytes":[B
    .restart local v10    # "tittle":Ljava/lang/String;
    :cond_3
    move-object/from16 v29, v2

    move-object/from16 v32, v9

    move-object/from16 v37, v10

    const/16 v16, 0x0

    const/16 v17, 0x1

    .line 695
    .end local v2    # "strSecProName":Ljava/lang/String;
    .end local v9    # "unitBytes":[B
    .end local v10    # "tittle":Ljava/lang/String;
    .restart local v29    # "strSecProName":Ljava/lang/String;
    .restart local v32    # "unitBytes":[B
    .restart local v37    # "tittle":Ljava/lang/String;
    move/from16 v2, v16

    .line 695
    .local v2, "i":I
    :goto_5
    const/4 v5, 0x4

    if-ge v2, v5, :cond_5

    .line 696
    invoke-virtual {v4, v8}, Ljava/io/InputStream;->read([B)I

    .line 697
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>([B)V

    iget-object v9, v1, Lcom/wen/fluorescence/util/IDCardUtil;->placeHolder:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 698
    .local v6, "strFix":Ljava/lang/String;
    const-string v9, "as"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "strFix:"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 700
    iget-object v9, v14, Lcom/wen/fluorescence/bean/IDChipInfoEx;->plcParamters:[D

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v18

    aput-wide v18, v9, v2

    .line 695
    .end local v6    # "strFix":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 704
    .end local v2    # "i":I
    :cond_5
    iget-object v2, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aput-object v14, v2, v7

    .line 614
    .end local v12    # "proNameBytes":[B
    .end local v14    # "chipInfoEx":Lcom/wen/fluorescence/bean/IDChipInfoEx;
    .end local v23    # "proName1":Ljava/lang/String;
    .end local v24    # "unit":Ljava/lang/String;
    .end local v26    # "thresholdBytes":[B
    .end local v29    # "strSecProName":Ljava/lang/String;
    .end local v32    # "unitBytes":[B
    add-int/lit8 v7, v7, 0x1

    move/from16 v9, v17

    move-object/from16 v2, v21

    move-object/from16 v6, v22

    move/from16 v12, v25

    move-object/from16 v10, v37

    move-object/from16 v5, p1

    const/16 v15, 0x8

    goto/16 :goto_0

    .line 706
    .end local v7    # "k":I
    .end local v21    # "sampleBytes":[B
    .end local v22    # "rushBytes":[B
    .end local v25    # "index":I
    .end local v37    # "tittle":Ljava/lang/String;
    .local v2, "sampleBytes":[B
    .local v6, "rushBytes":[B
    .restart local v10    # "tittle":Ljava/lang/String;
    .local v12, "index":I
    :cond_6
    move-object/from16 v21, v2

    move-object/from16 v22, v6

    move-object/from16 v37, v10

    .line 706
    .end local v2    # "sampleBytes":[B
    .end local v6    # "rushBytes":[B
    .end local v10    # "tittle":Ljava/lang/String;
    .restart local v21    # "sampleBytes":[B
    .restart local v22    # "rushBytes":[B
    .restart local v37    # "tittle":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 707
    iget-byte v2, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->FileFlag:B

    const/16 v5, 0x24

    if-eq v2, v5, :cond_7

    .line 708
    const-string v2, "AS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "idCardInfo.FileFlag: 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v6, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->FileFlag:B

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    const/4 v2, 0x0

    return-object v2

    .line 711
    :cond_7
    return-object v3

    .line 712
    .end local v3    # "idCardInfo":Lcom/wen/fluorescence/bean/IDChipInfo;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v8    # "temp":[B
    .end local v11    # "prevBatch":[B
    .end local v12    # "index":I
    .end local v13    # "strPrevBatch":Ljava/lang/String;
    .end local v21    # "sampleBytes":[B
    .end local v22    # "rushBytes":[B
    .end local v37    # "tittle":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 713
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 714
    const/4 v3, 0x0

    return-object v3
.end method


# virtual methods
.method public deleteIDChip(Ljava/lang/String;)V
    .locals 3
    .param p1, "barCodeNumber"    # Ljava/lang/String;

    .line 766
    const-string v0, "a"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteIDChip:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 768
    return-void

    .line 770
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/wen/fluorescence/util/IDCardUtil;->localPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".bin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 771
    .local v0, "targetFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 772
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 774
    :cond_1
    return-void
.end method

.method public getIDChipVersion(Ljava/lang/String;)I
    .locals 6
    .param p1, "file"    # Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/wen/fluorescence/util/IDCardUtil;->fileName:Ljava/lang/String;

    move-object p1, v1

    .line 84
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .local v1, "device":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 86
    return v0

    .line 88
    :cond_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 89
    .local v2, "in":Ljava/io/InputStream;
    const/4 v3, 0x2

    new-array v3, v3, [B

    .line 90
    .local v3, "temp":[B
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    .line 91
    aget-byte v4, v3, v0

    const/16 v5, 0x24

    if-ne v4, v5, :cond_2

    .line 92
    const/4 v4, 0x1

    aget-byte v4, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v4, 0xff

    return v0

    .line 94
    :cond_2
    return v0

    .line 96
    .end local v1    # "device":Ljava/io/File;
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "temp":[B
    :catch_0
    move-exception v1

    .line 99
    return v0
.end method

.method public getIDChipsLogNo()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v0, "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/wen/fluorescence/util/IDCardUtil;->localPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    .local v1, "path":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 164
    .local v2, "files":[Ljava/io/File;
    if-nez v2, :cond_0

    .line 165
    return-object v0

    .line 167
    :cond_0
    const/4 v3, 0x0

    move v4, v3

    .line 167
    .local v4, "i":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_2

    .line 168
    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 169
    .local v5, "fileName":Ljava/lang/String;
    const-string v6, ".bin"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 170
    .local v6, "pointIndex":I
    if-lez v6, :cond_1

    .line 171
    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 172
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 173
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v6    # "pointIndex":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 177
    .end local v4    # "i":I
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v4, "logNoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 178
    .local v3, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 179
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/wen/fluorescence/util/IDCardUtil;->localPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".bin"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/wen/fluorescence/util/IDCardUtil;->getIDChipVersion(Ljava/lang/String;)I

    move-result v5

    .line 180
    .local v5, "version":I
    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    .line 181
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/wen/fluorescence/util/IDCardUtil;->localPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".bin"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/wen/fluorescence/util/IDCardUtil;->parseIDChipInfo(Ljava/io/File;)Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v6

    .line 182
    .local v6, "idChipInfo":Lcom/wen/fluorescence/bean/IDChipInfo;
    iget-object v7, v6, Lcom/wen/fluorescence/bean/IDChipInfo;->m_barCode:Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    .end local v6    # "idChipInfo":Lcom/wen/fluorescence/bean/IDChipInfo;
    goto :goto_2

    :cond_3
    const/4 v6, 0x4

    if-ne v5, v6, :cond_4

    .line 184
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/wen/fluorescence/util/IDCardUtil;->localPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".bin"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/wen/fluorescence/util/IDCardUtil;->parseIDChipInfoFor14(Ljava/io/File;)Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v6

    .line 185
    .local v6, "idChipInfoN":Lcom/wen/fluorescence/bean/IDChipInfoN;
    iget-object v7, v6, Lcom/wen/fluorescence/bean/IDChipInfoN;->new_logNo:Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    .end local v5    # "version":I
    .end local v6    # "idChipInfoN":Lcom/wen/fluorescence/bean/IDChipInfoN;
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 188
    .end local v3    # "i":I
    :cond_5
    return-object v4
.end method

.method public getIDChipsName()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v0, "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/wen/fluorescence/util/IDCardUtil;->localPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    .local v1, "path":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 112
    .local v2, "files":[Ljava/io/File;
    if-nez v2, :cond_0

    .line 113
    return-object v0

    .line 115
    :cond_0
    const/4 v3, 0x0

    move v4, v3

    .line 115
    .local v4, "i":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_2

    .line 116
    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 117
    .local v5, "fileName":Ljava/lang/String;
    const-string v6, ".bin"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 118
    .local v6, "pointIndex":I
    if-lez v6, :cond_1

    .line 119
    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 120
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 121
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v6    # "pointIndex":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 125
    .end local v4    # "i":I
    :cond_2
    return-object v0
.end method

.method public getLocalAllIDChipsInfo()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wen/fluorescence/bean/IDChipInfoN;",
            ">;"
        }
    .end annotation

    .line 133
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/wen/fluorescence/util/IDCardUtil;->localPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, "path":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 136
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_0

    .line 137
    const/4 v2, 0x0

    return-object v2

    .line 140
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/bean/IDChipInfoN;>;"
    const/4 v3, 0x0

    move v4, v3

    .line 142
    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_2

    .line 143
    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 144
    .local v5, "fileName":Ljava/lang/String;
    const-string v6, ".bin"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 145
    .local v6, "pointIndex":I
    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 146
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/wen/fluorescence/util/IDCardUtil;->localPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".bin"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/wen/fluorescence/util/IDCardUtil;->getIDChipVersion(Ljava/lang/String;)I

    move-result v7

    .line 147
    .local v7, "version":I
    const/4 v8, 0x4

    if-ne v7, v8, :cond_1

    .line 148
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/wen/fluorescence/util/IDCardUtil;->localPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".bin"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lcom/wen/fluorescence/util/IDCardUtil;->parseIDChipInfoFor14(Ljava/io/File;)Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v8

    .line 149
    .local v8, "idChipInfoN":Lcom/wen/fluorescence/bean/IDChipInfoN;
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v6    # "pointIndex":I
    .end local v7    # "version":I
    .end local v8    # "idChipInfoN":Lcom/wen/fluorescence/bean/IDChipInfoN;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 152
    .end local v4    # "i":I
    :cond_2
    return-object v2
.end method

.method public isIDChipExist(Ljava/lang/String;)Z
    .locals 8
    .param p1, "barCode"    # Ljava/lang/String;

    .line 725
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/wen/fluorescence/util/IDCardUtil;->localPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 726
    .local v0, "path":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 727
    .local v1, "files":[Ljava/io/File;
    const/4 v2, 0x0

    .line 728
    .local v2, "fullName":Ljava/io/File;
    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 729
    return v3

    .line 731
    :cond_0
    move-object v4, v2

    move v2, v3

    .line 731
    .local v2, "i":I
    .local v4, "fullName":Ljava/io/File;
    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_2

    .line 732
    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 733
    .local v5, "fileName":Ljava/lang/String;
    const-string v6, ".bin"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 734
    .local v6, "pointIndex":I
    if-lez v6, :cond_1

    .line 735
    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 736
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 737
    aget-object v4, v1, v2

    .line 731
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v6    # "pointIndex":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 741
    .end local v2    # "i":I
    :cond_2
    if-eqz v4, :cond_3

    .line 742
    const/4 v2, 0x1

    return v2

    .line 744
    :cond_3
    return v3
.end method

.method public parseIDChipInfoFor14(Ljava/io/File;)Lcom/wen/fluorescence/bean/IDChipInfoN;
    .locals 53
    .param p1, "file"    # Ljava/io/File;

    move-object/from16 v1, p0

    .line 199
    :try_start_0
    new-instance v3, Lcom/wen/fluorescence/bean/IDChipInfoN;

    invoke-direct {v3}, Lcom/wen/fluorescence/bean/IDChipInfoN;-><init>()V

    .line 200
    .local v3, "idCardInfo":Lcom/wen/fluorescence/bean/IDChipInfoN;
    new-instance v4, Ljava/io/FileInputStream;

    move-object/from16 v5, p1

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 201
    .local v4, "in":Ljava/io/InputStream;
    const/16 v6, 0x10

    new-array v7, v6, [B

    .line 203
    .local v7, "temp":[B
    const/4 v8, 0x0

    .line 204
    .local v8, "index":I
    invoke-virtual {v4, v7}, Ljava/io/InputStream;->read([B)I

    .line 205
    add-int/lit8 v9, v8, 0x1

    .line 205
    .local v9, "index":I
    aget-byte v8, v7, v8

    .line 205
    .end local v8    # "index":I
    iput-byte v8, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->FileFlag:B

    .line 206
    add-int/lit8 v8, v9, 0x1

    .line 206
    .restart local v8    # "index":I
    aget-byte v9, v7, v9

    .line 206
    .end local v9    # "index":I
    iput-byte v9, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->FileVersion:B

    .line 207
    const/4 v9, 0x2

    add-int/2addr v8, v9

    .line 208
    add-int/lit8 v10, v8, 0x1

    .line 208
    .local v10, "index":I
    aget-byte v8, v7, v8

    .line 208
    .end local v8    # "index":I
    and-int/lit16 v8, v8, 0xff

    iput v8, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_ItemCount:I

    .line 209
    add-int/lit8 v10, v10, 0x4

    .line 210
    const/16 v8, 0xa

    const/16 v11, 0xe

    invoke-static {v7, v8, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    .line 211
    .local v8, "prevBatch":[B
    new-instance v12, Ljava/lang/String;

    const-string v13, "GBK"

    invoke-direct {v12, v8, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 212
    .local v12, "strPrevBatch":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x5

    aget-byte v14, v7, v14

    invoke-static {v14}, Lcom/wen/fluorescence/util/PublicFuction;->byteToHexString(B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x6

    aget-byte v15, v7, v14

    invoke-static {v15}, Lcom/wen/fluorescence/util/PublicFuction;->byteToHexString(B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v15, 0x7

    aget-byte v2, v7, v15

    .line 213
    invoke-static {v2}, Lcom/wen/fluorescence/util/PublicFuction;->byteToHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x8

    aget-byte v15, v7, v2

    invoke-static {v15}, Lcom/wen/fluorescence/util/PublicFuction;->byteToHexString(B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v15, 0x9

    aget-byte v15, v7, v15

    invoke-static {v15}, Lcom/wen/fluorescence/util/PublicFuction;->byteToHexString(B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iget-object v15, v1, Lcom/wen/fluorescence/util/IDCardUtil;->placeHolder:Ljava/lang/String;

    const-string v14, ""

    invoke-virtual {v13, v15, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_barCode:Ljava/lang/String;

    .line 214
    aget-byte v13, v7, v11

    and-int/lit16 v13, v13, 0xff

    iput v13, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_countdowntime:I

    .line 215
    const/16 v13, 0xf

    aget-byte v13, v7, v13

    and-int/lit16 v13, v13, 0xff

    iput v13, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_T1Pos:I

    .line 217
    const/4 v10, 0x0

    .line 218
    invoke-virtual {v4, v7}, Ljava/io/InputStream;->read([B)I

    .line 219
    add-int/lit8 v13, v10, 0x1

    .line 219
    .local v13, "index":I
    aget-byte v10, v7, v10

    .line 219
    .end local v10    # "index":I
    and-int/lit16 v10, v10, 0xff

    shl-int/2addr v10, v2

    add-int/lit8 v14, v13, 0x1

    .line 219
    .local v14, "index":I
    aget-byte v13, v7, v13

    .line 219
    .end local v13    # "index":I
    and-int/lit16 v13, v13, 0xff

    or-int/2addr v10, v13

    iput v10, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->T1_start:I

    .line 220
    add-int/lit8 v10, v14, 0x1

    .line 220
    .restart local v10    # "index":I
    aget-byte v13, v7, v14

    .line 220
    .end local v14    # "index":I
    and-int/lit16 v13, v13, 0xff

    shl-int/2addr v13, v2

    add-int/lit8 v14, v10, 0x1

    .line 220
    .restart local v14    # "index":I
    aget-byte v10, v7, v10

    .line 220
    .end local v10    # "index":I
    and-int/lit16 v10, v10, 0xff

    or-int/2addr v10, v13

    iput v10, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->T1_end:I

    .line 221
    add-int/lit8 v10, v14, 0x1

    .line 221
    .restart local v10    # "index":I
    aget-byte v13, v7, v14

    .line 221
    .end local v14    # "index":I
    and-int/lit16 v13, v13, 0xff

    iput v13, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_NumberT1:I

    .line 222
    add-int/lit8 v13, v10, 0x1

    .line 222
    .restart local v13    # "index":I
    aget-byte v10, v7, v10

    .line 222
    .end local v10    # "index":I
    and-int/lit16 v10, v10, 0xff

    iput v10, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_T2Pos:I

    .line 223
    add-int/lit8 v10, v13, 0x1

    .line 223
    .restart local v10    # "index":I
    aget-byte v13, v7, v13

    .line 223
    .end local v13    # "index":I
    and-int/lit16 v13, v13, 0xff

    shl-int/2addr v13, v2

    add-int/lit8 v14, v10, 0x1

    .line 223
    .restart local v14    # "index":I
    aget-byte v10, v7, v10

    .line 223
    .end local v10    # "index":I
    and-int/lit16 v10, v10, 0xff

    or-int/2addr v10, v13

    iput v10, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->T2_start:I

    .line 224
    add-int/lit8 v10, v14, 0x1

    .line 224
    .restart local v10    # "index":I
    aget-byte v13, v7, v14

    .line 224
    .end local v14    # "index":I
    and-int/lit16 v13, v13, 0xff

    shl-int/2addr v13, v2

    add-int/lit8 v14, v10, 0x1

    .line 224
    .restart local v14    # "index":I
    aget-byte v10, v7, v10

    .line 224
    .end local v10    # "index":I
    and-int/lit16 v10, v10, 0xff

    or-int/2addr v10, v13

    iput v10, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->T2_end:I

    .line 225
    add-int/lit8 v10, v14, 0x1

    .line 225
    .restart local v10    # "index":I
    aget-byte v13, v7, v14

    .line 225
    .end local v14    # "index":I
    and-int/lit16 v13, v13, 0xff

    iput v13, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_NumberT2:I

    .line 226
    add-int/lit8 v13, v10, 0x1

    .line 226
    .restart local v13    # "index":I
    aget-byte v10, v7, v10

    .line 226
    .end local v10    # "index":I
    and-int/lit16 v10, v10, 0xff

    iput v10, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_CPos:I

    .line 227
    add-int/lit8 v10, v13, 0x1

    .line 227
    .restart local v10    # "index":I
    aget-byte v13, v7, v13

    .line 227
    .end local v13    # "index":I
    and-int/lit16 v13, v13, 0xff

    shl-int/2addr v13, v2

    add-int/lit8 v14, v10, 0x1

    .line 227
    .restart local v14    # "index":I
    aget-byte v10, v7, v10

    .line 227
    .end local v10    # "index":I
    and-int/lit16 v10, v10, 0xff

    or-int/2addr v10, v13

    iput v10, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->C_start:I

    .line 228
    add-int/lit8 v10, v14, 0x1

    .line 228
    .restart local v10    # "index":I
    aget-byte v13, v7, v14

    .line 228
    .end local v14    # "index":I
    and-int/lit16 v13, v13, 0xff

    shl-int/2addr v13, v2

    add-int/lit8 v14, v10, 0x1

    .line 228
    .restart local v14    # "index":I
    aget-byte v10, v7, v10

    .line 228
    .end local v10    # "index":I
    and-int/lit16 v10, v10, 0xff

    or-int/2addr v10, v13

    iput v10, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->C_end:I

    .line 230
    const/4 v10, 0x0

    .line 231
    .end local v14    # "index":I
    .restart local v10    # "index":I
    invoke-virtual {v4, v7}, Ljava/io/InputStream;->read([B)I

    .line 232
    add-int/lit8 v13, v10, 0x1

    .line 232
    .restart local v13    # "index":I
    aget-byte v10, v7, v10

    .line 232
    .end local v10    # "index":I
    and-int/lit16 v10, v10, 0xff

    iput v10, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_NumberC:I

    .line 233
    add-int/lit8 v10, v13, 0x1

    .line 233
    .restart local v10    # "index":I
    aget-byte v13, v7, v13

    .line 233
    .end local v13    # "index":I
    and-int/lit16 v13, v13, 0xff

    iput v13, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_X1Pos:I

    .line 234
    add-int/lit8 v13, v10, 0x1

    .line 234
    .restart local v13    # "index":I
    aget-byte v10, v7, v10

    .line 234
    .end local v10    # "index":I
    and-int/lit16 v10, v10, 0xff

    shl-int/2addr v10, v2

    add-int/lit8 v14, v13, 0x1

    .line 234
    .restart local v14    # "index":I
    aget-byte v13, v7, v13

    .line 234
    .end local v13    # "index":I
    and-int/lit16 v13, v13, 0xff

    or-int/2addr v10, v13

    iput v10, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->X1_start:I

    .line 235
    add-int/lit8 v10, v14, 0x1

    .line 235
    .restart local v10    # "index":I
    aget-byte v13, v7, v14

    .line 235
    .end local v14    # "index":I
    and-int/lit16 v13, v13, 0xff

    shl-int/2addr v13, v2

    add-int/lit8 v14, v10, 0x1

    .line 235
    .restart local v14    # "index":I
    aget-byte v10, v7, v10

    .line 235
    .end local v10    # "index":I
    and-int/lit16 v10, v10, 0xff

    or-int/2addr v10, v13

    iput v10, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->X1_end:I

    .line 236
    add-int/lit8 v10, v14, 0x1

    .line 236
    .restart local v10    # "index":I
    aget-byte v13, v7, v14

    .line 236
    .end local v14    # "index":I
    and-int/lit16 v13, v13, 0xff

    iput v13, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_NumberX1:I

    .line 237
    add-int/lit8 v13, v10, 0x1

    .line 237
    .restart local v13    # "index":I
    aget-byte v10, v7, v10

    .line 237
    .end local v10    # "index":I
    and-int/lit16 v10, v10, 0xff

    iput v10, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_X2Pos:I

    .line 238
    add-int/lit8 v10, v13, 0x1

    .line 238
    .restart local v10    # "index":I
    aget-byte v13, v7, v13

    .line 238
    .end local v13    # "index":I
    and-int/lit16 v13, v13, 0xff

    shl-int/2addr v13, v2

    add-int/lit8 v14, v10, 0x1

    .line 238
    .restart local v14    # "index":I
    aget-byte v10, v7, v10

    .line 238
    .end local v10    # "index":I
    and-int/lit16 v10, v10, 0xff

    or-int/2addr v10, v13

    iput v10, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->X2_start:I

    .line 239
    add-int/lit8 v10, v14, 0x1

    .line 239
    .restart local v10    # "index":I
    aget-byte v13, v7, v14

    .line 239
    .end local v14    # "index":I
    and-int/lit16 v13, v13, 0xff

    shl-int/2addr v13, v2

    add-int/lit8 v14, v10, 0x1

    .line 239
    .restart local v14    # "index":I
    aget-byte v10, v7, v10

    .line 239
    .end local v10    # "index":I
    and-int/lit16 v10, v10, 0xff

    or-int/2addr v10, v13

    iput v10, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->X2_end:I

    .line 240
    add-int/lit8 v10, v14, 0x1

    .line 240
    .restart local v10    # "index":I
    aget-byte v13, v7, v14

    .line 240
    .end local v14    # "index":I
    and-int/lit16 v13, v13, 0xff

    iput v13, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_NumberX2:I

    .line 241
    add-int/lit8 v13, v10, 0x1

    .line 241
    .restart local v13    # "index":I
    aget-byte v10, v7, v10

    .line 241
    .end local v10    # "index":I
    and-int/lit16 v10, v10, 0xff

    iput v10, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_X3Pos:I

    .line 242
    add-int/lit8 v10, v13, 0x1

    .line 242
    .restart local v10    # "index":I
    aget-byte v13, v7, v13

    .line 242
    .end local v13    # "index":I
    and-int/lit16 v13, v13, 0xff

    shl-int/2addr v13, v2

    add-int/lit8 v14, v10, 0x1

    .line 242
    .restart local v14    # "index":I
    aget-byte v10, v7, v10

    .line 242
    .end local v10    # "index":I
    and-int/lit16 v10, v10, 0xff

    or-int/2addr v10, v13

    iput v10, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->X3_start:I

    .line 244
    const/4 v10, 0x0

    .line 245
    .end local v14    # "index":I
    .restart local v10    # "index":I
    invoke-virtual {v4, v7}, Ljava/io/InputStream;->read([B)I

    .line 246
    add-int/lit8 v13, v10, 0x1

    .line 246
    .restart local v13    # "index":I
    aget-byte v10, v7, v10

    .line 246
    .end local v10    # "index":I
    and-int/lit16 v10, v10, 0xff

    shl-int/2addr v10, v2

    add-int/lit8 v14, v13, 0x1

    .line 246
    .restart local v14    # "index":I
    aget-byte v13, v7, v13

    .line 246
    .end local v13    # "index":I
    and-int/lit16 v13, v13, 0xff

    or-int/2addr v10, v13

    iput v10, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->X3_end:I

    .line 247
    add-int/lit8 v10, v14, 0x1

    .line 247
    .restart local v10    # "index":I
    aget-byte v13, v7, v14

    .line 247
    .end local v14    # "index":I
    and-int/lit16 v13, v13, 0xff

    iput v13, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_NumberX3:I

    .line 248
    add-int/lit8 v13, v10, 0x1

    .line 248
    .restart local v13    # "index":I
    aget-byte v10, v7, v10

    .line 248
    .end local v10    # "index":I
    and-int/lit16 v10, v10, 0xff

    iput v10, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_X4Pos:I

    .line 249
    add-int/lit8 v10, v13, 0x1

    .line 249
    .restart local v10    # "index":I
    aget-byte v13, v7, v13

    .line 249
    .end local v13    # "index":I
    and-int/lit16 v13, v13, 0xff

    shl-int/2addr v13, v2

    add-int/lit8 v14, v10, 0x1

    .line 249
    .restart local v14    # "index":I
    aget-byte v10, v7, v10

    .line 249
    .end local v10    # "index":I
    and-int/lit16 v10, v10, 0xff

    or-int/2addr v10, v13

    iput v10, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->X4_start:I

    .line 250
    add-int/lit8 v10, v14, 0x1

    .line 250
    .restart local v10    # "index":I
    aget-byte v13, v7, v14

    .line 250
    .end local v14    # "index":I
    and-int/lit16 v13, v13, 0xff

    shl-int/2addr v13, v2

    add-int/lit8 v14, v10, 0x1

    .line 250
    .restart local v14    # "index":I
    aget-byte v10, v7, v10

    .line 250
    .end local v10    # "index":I
    and-int/lit16 v10, v10, 0xff

    or-int/2addr v10, v13

    iput v10, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->X4_end:I

    .line 251
    add-int/lit8 v10, v14, 0x1

    .line 251
    .restart local v10    # "index":I
    aget-byte v13, v7, v14

    .line 251
    .end local v14    # "index":I
    and-int/lit16 v13, v13, 0xff

    iput v13, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_NumberX4:I

    .line 252
    add-int/lit8 v13, v10, 0x1

    .line 252
    .restart local v13    # "index":I
    aget-byte v10, v7, v10

    .line 252
    .end local v10    # "index":I
    and-int/lit16 v10, v10, 0xff

    iput v10, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->RushTopName:I

    .line 253
    add-int/lit8 v10, v13, 0x1

    .line 253
    .restart local v10    # "index":I
    aget-byte v13, v7, v13

    .line 253
    .end local v13    # "index":I
    and-int/lit16 v13, v13, 0xff

    iput v13, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->isRushTop:I

    .line 254
    add-int/lit8 v13, v10, 0x4

    invoke-static {v7, v10, v13}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v13

    .line 255
    .local v13, "rushBytes":[B
    invoke-static {v13}, Lcom/wen/fluorescence/util/PublicFuction;->byte4ToInt([B)I

    move-result v14

    iput v14, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->rushTop:I

    .line 256
    add-int/lit8 v10, v10, 0x4

    .line 257
    aget-byte v14, v7, v10

    and-int/lit16 v14, v14, 0xff

    iput v14, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->AddSampleName:I

    .line 259
    const/4 v10, 0x0

    .line 260
    invoke-virtual {v4, v7}, Ljava/io/InputStream;->read([B)I

    .line 261
    add-int/lit8 v14, v10, 0x1

    .line 261
    .restart local v14    # "index":I
    aget-byte v10, v7, v10

    .line 261
    .end local v10    # "index":I
    and-int/lit16 v10, v10, 0xff

    iput v10, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->isAddSample:I

    .line 262
    add-int/lit8 v10, v14, 0x4

    invoke-static {v7, v14, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    .line 263
    .local v10, "sampleBytes":[B
    invoke-static {v10}, Lcom/wen/fluorescence/util/PublicFuction;->byte4ToInt([B)I

    move-result v15

    iput v15, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->addSample:I

    .line 264
    add-int/lit8 v14, v14, 0x4

    .line 265
    add-int/lit8 v15, v14, 0x1

    .line 265
    .local v15, "index":I
    aget-byte v14, v7, v14

    .line 265
    .end local v14    # "index":I
    and-int/lit16 v14, v14, 0xff

    iput v14, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->qualitativeFlag:I

    .line 266
    add-int/lit8 v14, v15, 0x1

    .line 266
    .restart local v14    # "index":I
    aget-byte v15, v7, v15

    .line 266
    .end local v15    # "index":I
    and-int/lit16 v15, v15, 0xff

    iput v15, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->cutBackgroundFlag:I

    .line 267
    add-int/lit8 v15, v14, 0x1

    .line 267
    .restart local v15    # "index":I
    aget-byte v14, v7, v14

    .line 267
    .end local v14    # "index":I
    and-int/lit16 v14, v14, 0xff

    iput v14, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->isVisibleResult:I

    .line 268
    add-int/lit8 v14, v15, 0x1

    .line 268
    .restart local v14    # "index":I
    aget-byte v15, v7, v15

    .line 268
    .end local v15    # "index":I
    and-int/lit16 v15, v15, 0xff

    iput v15, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->isVisibleConclusion:I

    .line 269
    add-int/lit8 v15, v14, 0x1

    .line 269
    .restart local v15    # "index":I
    aget-byte v14, v7, v14

    .line 269
    .end local v14    # "index":I
    and-int/lit16 v14, v14, 0xff

    iput v14, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->cardsCounts:I

    .line 270
    add-int/lit8 v14, v15, 0x1

    .line 270
    .restart local v14    # "index":I
    aget-byte v15, v7, v15

    .line 270
    .end local v15    # "index":I
    and-int/lit16 v15, v15, 0xff

    iput v15, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->s_countdowntime:I

    .line 271
    add-int/lit8 v15, v14, 0x1

    .line 271
    .restart local v15    # "index":I
    aget-byte v14, v7, v14

    .line 271
    .end local v14    # "index":I
    and-int/lit16 v14, v14, 0xff

    iput v14, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->toCalcApex:I

    .line 273
    add-int/lit8 v14, v15, 0x1

    .line 273
    .restart local v14    # "index":I
    aget-byte v15, v7, v15

    .line 273
    .end local v15    # "index":I
    and-int/lit16 v15, v15, 0xff

    iput v15, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->iPloyCoefficientFlag:I

    .line 274
    const-string v15, "\u54c8\u54c8"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u7cfb\u6570=\uff1a"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->iPloyCoefficientFlag:I

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget v6, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->iPloyCoefficientFlag:I

    const/4 v9, 0x0

    const/4 v15, 0x1

    if-eq v6, v15, :cond_0

    .line 277
    iput v9, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->iPloyCoefficientFlag:I

    .line 279
    :cond_0
    add-int/lit8 v6, v14, 0x1

    .line 279
    .local v6, "index":I
    aget-byte v14, v7, v14

    .line 279
    .end local v14    # "index":I
    and-int/lit16 v14, v14, 0xff

    shl-int/2addr v14, v2

    add-int/lit8 v18, v6, 0x1

    .line 279
    .local v18, "index":I
    aget-byte v6, v7, v6

    .line 279
    .end local v6    # "index":I
    and-int/lit16 v6, v6, 0xff

    or-int/2addr v6, v14

    iput v6, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->customerCode:I

    .line 280
    add-int/lit8 v6, v18, 0x1

    .line 280
    .restart local v6    # "index":I
    aget-byte v14, v7, v18

    .line 280
    .end local v18    # "index":I
    and-int/lit16 v14, v14, 0xff

    iput v14, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->childCode:I

    .line 281
    const-string v14, "\u54c8\u54c8"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "customerCode=\uff1a"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->customerCode:I

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const-string v2, "\u54c8\u54c8"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "childCode=\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->childCode:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const/4 v2, 0x0

    .line 285
    .end local v6    # "index":I
    .local v2, "index":I
    invoke-virtual {v4, v7}, Ljava/io/InputStream;->read([B)I

    .line 286
    add-int/lit8 v6, v2, 0xe

    invoke-static {v7, v2, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 287
    .local v6, "barCode_1":[B
    new-instance v14, Ljava/lang/String;

    const-string v15, "GBK"

    invoke-direct {v14, v6, v15}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget-object v15, v1, Lcom/wen/fluorescence/util/IDCardUtil;->placeHolder:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v14, v15, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->new_barCode:Ljava/lang/String;

    .line 288
    add-int/2addr v2, v11

    .line 289
    add-int/lit8 v9, v2, 0x1

    .line 289
    .restart local v9    # "index":I
    aget-byte v2, v7, v2

    .line 289
    .end local v2    # "index":I
    and-int/lit16 v2, v2, 0xff

    iput v2, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->lastYear:I

    .line 290
    aget-byte v2, v7, v9

    and-int/lit16 v2, v2, 0xff

    iput v2, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->lastMonth:I

    .line 292
    const/4 v2, 0x0

    .line 293
    .end local v9    # "index":I
    .restart local v2    # "index":I
    invoke-virtual {v4, v7}, Ljava/io/InputStream;->read([B)I

    .line 294
    add-int/lit8 v9, v2, 0x1

    .line 294
    .restart local v9    # "index":I
    aget-byte v2, v7, v2

    .line 294
    .end local v2    # "index":I
    and-int/lit16 v2, v2, 0xff

    iput v2, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->lastDay:I

    .line 295
    add-int/lit8 v2, v9, 0xe

    invoke-static {v7, v9, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 296
    .local v2, "new_logNo_bs":[B
    new-instance v11, Ljava/lang/String;

    const-string v14, "GBK"

    invoke-direct {v11, v2, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget-object v14, v1, Lcom/wen/fluorescence/util/IDCardUtil;->placeHolder:Ljava/lang/String;

    const-string v15, ""

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->new_logNo:Ljava/lang/String;

    .line 298
    const/4 v9, 0x0

    .line 299
    const/16 v11, 0x20

    new-array v11, v11, [B

    move-object v7, v11

    .line 300
    invoke-virtual {v4, v7}, Ljava/io/InputStream;->read([B)I

    .line 301
    new-instance v11, Ljava/lang/String;

    const-string v14, "GBK"

    invoke-direct {v11, v7, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 302
    .local v11, "m_title1":Ljava/lang/String;
    iget-object v14, v1, Lcom/wen/fluorescence/util/IDCardUtil;->placeHolder:Ljava/lang/String;

    const-string v15, " "

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_title:Ljava/lang/String;

    .line 304
    move v14, v9

    move-object v9, v7

    const/4 v7, 0x0

    .line 304
    .local v7, "k":I
    .local v9, "temp":[B
    .restart local v14    # "index":I
    :goto_0
    iget v15, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_ItemCount:I

    if-ge v7, v15, :cond_9

    .line 305
    new-instance v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;

    invoke-direct {v15}, Lcom/wen/fluorescence/bean/IDChipInfoExN;-><init>()V

    .line 306
    .local v15, "chipInfoEx":Lcom/wen/fluorescence/bean/IDChipInfoExN;
    move-object/from16 v19, v2

    iget-byte v2, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->FileFlag:B

    .line 306
    .end local v2    # "new_logNo_bs":[B
    .local v19, "new_logNo_bs":[B
    iput-byte v2, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->FileFlag:B

    .line 307
    iget-byte v2, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->FileVersion:B

    iput-byte v2, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->FileVersion:B

    .line 308
    iput v7, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->ItemIndex:I

    .line 309
    iget-object v2, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->new_barCode:Ljava/lang/String;

    iput-object v2, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_barCode:Ljava/lang/String;

    .line 311
    const/4 v2, 0x0

    .line 312
    .end local v14    # "index":I
    .local v2, "index":I
    const/16 v14, 0x23

    new-array v14, v14, [B

    move-object v9, v14

    .line 313
    invoke-virtual {v4, v9}, Ljava/io/InputStream;->read([B)I

    .line 315
    add-int/lit8 v14, v2, 0x1

    .line 315
    .restart local v14    # "index":I
    aget-byte v2, v9, v2

    .line 315
    .end local v2    # "index":I
    and-int/lit16 v2, v2, 0xff

    iput v2, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_projectStart:I

    .line 316
    add-int/lit8 v2, v14, 0x1

    .line 316
    .restart local v2    # "index":I
    aget-byte v14, v9, v14

    .line 316
    .end local v14    # "index":I
    and-int/lit16 v14, v14, 0xff

    iput v14, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_projectCount:I

    .line 317
    add-int/lit8 v14, v2, 0x1

    .line 317
    .restart local v14    # "index":I
    aget-byte v2, v9, v2

    .line 317
    .end local v2    # "index":I
    and-int/lit16 v2, v2, 0xff

    iput v2, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->AlgorithmType:I

    .line 318
    array-length v2, v9

    invoke-static {v9, v14, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 319
    .local v2, "proName1":[B
    new-instance v5, Ljava/lang/String;

    move-object/from16 v20, v6

    const-string v6, "GBK"

    .line 319
    .end local v6    # "barCode_1":[B
    .local v20, "barCode_1":[B
    invoke-direct {v5, v2, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 320
    .local v5, "proName":Ljava/lang/String;
    iget-object v6, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_projectName:[Ljava/lang/String;

    move-object/from16 v21, v2

    iget-object v2, v1, Lcom/wen/fluorescence/util/IDCardUtil;->placeHolder:Ljava/lang/String;

    .line 320
    .end local v2    # "proName1":[B
    .local v21, "proName1":[B
    move-object/from16 v22, v8

    const-string v8, ""

    .line 320
    .end local v8    # "prevBatch":[B
    .local v22, "prevBatch":[B
    invoke-virtual {v5, v2, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    aput-object v2, v6, v8

    .line 321
    const/4 v2, 0x0

    .line 322
    .end local v14    # "index":I
    .local v2, "index":I
    const/16 v6, 0xd

    new-array v6, v6, [B

    .line 323
    .end local v9    # "temp":[B
    .local v6, "temp":[B
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    .line 324
    add-int/lit8 v8, v2, 0x8

    invoke-static {v6, v2, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    .line 325
    .local v8, "m_unit_1":[B
    new-instance v9, Ljava/lang/String;

    const-string v14, "GBK"

    invoke-direct {v9, v8, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 326
    .local v9, "m_unit_2":Ljava/lang/String;
    iget-object v14, v1, Lcom/wen/fluorescence/util/IDCardUtil;->placeHolder:Ljava/lang/String;

    move-object/from16 v23, v5

    const-string v5, ""

    .line 326
    .end local v5    # "proName":Ljava/lang/String;
    .local v23, "proName":Ljava/lang/String;
    invoke-virtual {v9, v14, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_unit:Ljava/lang/String;

    .line 327
    add-int/lit8 v2, v2, 0x8

    .line 328
    add-int/lit8 v5, v2, 0x1

    .line 328
    .local v5, "index":I
    aget-byte v2, v6, v2

    .line 328
    .end local v2    # "index":I
    iput v2, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_decimalDigits:I

    .line 329
    add-int/lit8 v2, v5, 0x1

    .line 329
    .restart local v2    # "index":I
    aget-byte v5, v6, v5

    .line 329
    .end local v5    # "index":I
    and-int/lit16 v5, v5, 0xff

    iput v5, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_calcMethod:I

    .line 330
    add-int/lit8 v5, v2, 0x1

    .line 330
    .restart local v5    # "index":I
    aget-byte v2, v6, v2

    .line 330
    .end local v2    # "index":I
    and-int/lit16 v2, v2, 0xff

    iput v2, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_t:I

    .line 331
    add-int/lit8 v2, v5, 0x1

    .line 331
    .restart local v2    # "index":I
    aget-byte v5, v6, v5

    .line 331
    .end local v5    # "index":I
    and-int/lit16 v5, v5, 0xff

    iput v5, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_c:I

    .line 332
    aget-byte v5, v6, v2

    and-int/lit16 v5, v5, 0xff

    iput v5, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->l_count:I

    .line 334
    const/4 v2, 0x0

    .line 335
    const/16 v5, 0x10

    new-array v14, v5, [B

    move-object v5, v14

    .line 336
    .end local v6    # "temp":[B
    .local v5, "temp":[B
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    .line 337
    add-int/lit8 v6, v2, 0x1

    .line 337
    .local v6, "index":I
    aget-byte v2, v5, v2

    .line 337
    .end local v2    # "index":I
    and-int/lit16 v2, v2, 0xff

    iput v2, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_unlog:I

    .line 338
    add-int/lit8 v2, v6, 0x1

    .line 338
    .restart local v2    # "index":I
    aget-byte v6, v5, v6

    .line 338
    .end local v6    # "index":I
    and-int/lit16 v6, v6, 0xff

    iput v6, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_dimension:I

    .line 339
    add-int/lit8 v6, v2, 0x1

    .line 339
    .restart local v6    # "index":I
    aget-byte v2, v5, v2

    .line 339
    .end local v2    # "index":I
    and-int/lit16 v2, v2, 0xff

    iput v2, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_divisionIndex:I

    .line 340
    iget-object v2, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_dimen:[I

    add-int/lit8 v14, v6, 0x1

    .line 340
    .restart local v14    # "index":I
    aget-byte v6, v5, v6

    .line 340
    .end local v6    # "index":I
    and-int/lit16 v6, v6, 0xff

    const/16 v18, 0x0

    aput v6, v2, v18

    .line 341
    iget-object v2, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_dimen:[I

    add-int/lit8 v6, v14, 0x1

    .line 341
    .restart local v6    # "index":I
    aget-byte v14, v5, v14

    .line 341
    .end local v14    # "index":I
    and-int/lit16 v14, v14, 0xff

    const/16 v18, 0x1

    aput v14, v2, v18

    .line 342
    add-int/lit8 v2, v6, 0x8

    invoke-static {v5, v6, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 343
    .local v2, "thresholdBytes":[B
    move-object/from16 v24, v8

    move-object/from16 v25, v9

    invoke-static {v2}, Lcom/wen/fluorescence/util/PublicFuction;->bytes8ToDouble([B)D

    move-result-wide v8

    .line 343
    .end local v8    # "m_unit_1":[B
    .end local v9    # "m_unit_2":Ljava/lang/String;
    .local v24, "m_unit_1":[B
    .local v25, "m_unit_2":Ljava/lang/String;
    iput-wide v8, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->thresholdValue:D

    .line 344
    add-int/lit8 v6, v6, 0x8

    .line 345
    add-int/lit8 v8, v6, 0x1

    .line 345
    .local v8, "index":I
    aget-byte v6, v5, v6

    .line 345
    .end local v6    # "index":I
    and-int/lit16 v6, v6, 0xff

    iput v6, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->x_isOtherAlglog:I

    .line 346
    add-int/lit8 v6, v8, 0x1

    .line 346
    .restart local v6    # "index":I
    aget-byte v8, v5, v8

    .line 346
    .end local v8    # "index":I
    and-int/lit16 v8, v8, 0xff

    iput v8, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->y_isOtherAlglog:I

    .line 347
    aget-byte v8, v5, v6

    and-int/lit16 v8, v8, 0xff

    iput v8, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->conclusionCounts:I

    .line 349
    move v8, v6

    move-object v6, v5

    const/4 v5, 0x0

    .line 349
    .local v5, "i":I
    .local v6, "temp":[B
    .restart local v8    # "index":I
    :goto_1
    iget-object v9, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->sampleCoefficientArrays:[Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;

    array-length v9, v9

    if-ge v5, v9, :cond_1

    .line 350
    const/4 v8, 0x0

    .line 351
    const/16 v9, 0x10

    new-array v14, v9, [B

    move-object v6, v14

    .line 352
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    .line 353
    new-instance v9, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v9, v15}, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;-><init>(Lcom/wen/fluorescence/bean/IDChipInfoExN;)V

    .line 354
    .local v9, "sampleCoefficientObj":Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;
    add-int/lit8 v14, v8, 0x1

    .line 354
    .restart local v14    # "index":I
    aget-byte v8, v6, v8

    .line 354
    .end local v8    # "index":I
    and-int/lit16 v8, v8, 0xff

    .line 355
    .local v8, "sampleTypeFactor":I
    invoke-virtual {v9, v8}, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->setSampleTypeFactor(I)V

    .line 356
    move-object/from16 v26, v2

    iget-object v2, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->sampleCoefficientArrays:[Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;

    .line 356
    .end local v2    # "thresholdBytes":[B
    .local v26, "thresholdBytes":[B
    aput-object v9, v2, v5

    .line 357
    add-int/lit8 v2, v14, 0x1

    .line 357
    .local v2, "index":I
    aget-byte v14, v6, v14

    .line 357
    .end local v14    # "index":I
    and-int/lit16 v14, v14, 0xff

    .line 358
    .local v14, "sampleSubMark":I
    invoke-virtual {v9, v14}, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->setSampleSubMark(I)V

    .line 359
    move/from16 v27, v8

    iget-object v8, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->sampleCoefficientArrays:[Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;

    .line 359
    .end local v8    # "sampleTypeFactor":I
    .local v27, "sampleTypeFactor":I
    aput-object v9, v8, v5

    .line 360
    add-int/lit8 v8, v2, 0x8

    invoke-static {v6, v2, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    move-object/from16 v28, v10

    move-object/from16 v29, v11

    invoke-static {v8}, Lcom/wen/fluorescence/util/PublicFuction;->bytes8ToDouble([B)D

    move-result-wide v10

    .line 360
    .end local v10    # "sampleBytes":[B
    .end local v11    # "m_title1":Ljava/lang/String;
    .local v28, "sampleBytes":[B
    .local v29, "m_title1":Ljava/lang/String;
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    .line 361
    .local v8, "sampleCoeff":Ljava/lang/Double;
    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->setSampleCoeff(D)V

    .line 362
    iget-object v10, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->sampleCoefficientArrays:[Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;

    aput-object v9, v10, v5

    .line 363
    const/4 v2, 0x0

    .line 364
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    .line 365
    add-int/lit8 v10, v2, 0x8

    invoke-static {v6, v2, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    invoke-static {v10}, Lcom/wen/fluorescence/util/PublicFuction;->bytes8ToDouble([B)D

    move-result-wide v10

    .line 366
    .local v10, "densitySubLow":D
    invoke-virtual {v9, v10, v11}, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->setDensitySubLow(D)V

    .line 367
    move-object/from16 v30, v8

    iget-object v8, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->sampleCoefficientArrays:[Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;

    .line 367
    .end local v8    # "sampleCoeff":Ljava/lang/Double;
    .local v30, "sampleCoeff":Ljava/lang/Double;
    aput-object v9, v8, v5

    .line 368
    add-int/lit8 v2, v2, 0x8

    .line 369
    add-int/lit8 v8, v2, 0x8

    invoke-static {v6, v2, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    invoke-static {v8}, Lcom/wen/fluorescence/util/PublicFuction;->bytes8ToDouble([B)D

    move-result-wide v31

    move-wide/from16 v33, v31

    .line 370
    .local v33, "densitySubHight":D
    move-wide/from16 v35, v10

    move-wide/from16 v10, v33

    invoke-virtual {v9, v10, v11}, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->setDensitySubHight(D)V

    .line 371
    .end local v33    # "densitySubHight":D
    .local v10, "densitySubHight":D
    .local v35, "densitySubLow":D
    iget-object v8, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->sampleCoefficientArrays:[Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;

    aput-object v9, v8, v5

    .line 373
    const/4 v2, 0x0

    .line 374
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    .line 375
    add-int/lit8 v8, v2, 0x8

    invoke-static {v6, v2, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    invoke-static {v8}, Lcom/wen/fluorescence/util/PublicFuction;->bytes8ToDouble([B)D

    move-result-wide v31

    move-wide/from16 v37, v31

    .line 376
    .local v37, "coefficientSubLow":D
    move-wide/from16 v39, v10

    move-wide/from16 v10, v37

    invoke-virtual {v9, v10, v11}, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->setCoefficientSubLow(D)V

    .line 377
    .end local v37    # "coefficientSubLow":D
    .local v10, "coefficientSubLow":D
    .local v39, "densitySubHight":D
    iget-object v8, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->sampleCoefficientArrays:[Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;

    aput-object v9, v8, v5

    .line 378
    add-int/lit8 v2, v2, 0x8

    .line 380
    add-int/lit8 v8, v2, 0x8

    invoke-static {v6, v2, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    invoke-static {v8}, Lcom/wen/fluorescence/util/PublicFuction;->bytes8ToDouble([B)D

    move-result-wide v31

    move-wide/from16 v41, v31

    .line 381
    .local v41, "coefficientSubMiddle":D
    move-wide/from16 v43, v10

    move-wide/from16 v10, v41

    invoke-virtual {v9, v10, v11}, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->setCoefficientSubMiddle(D)V

    .line 382
    .end local v41    # "coefficientSubMiddle":D
    .local v10, "coefficientSubMiddle":D
    .local v43, "coefficientSubLow":D
    iget-object v8, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->sampleCoefficientArrays:[Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;

    aput-object v9, v8, v5

    .line 384
    const/4 v8, 0x0

    .line 385
    .end local v2    # "index":I
    .local v8, "index":I
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    .line 386
    add-int/lit8 v2, v8, 0x8

    invoke-static {v6, v8, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v2}, Lcom/wen/fluorescence/util/PublicFuction;->bytes8ToDouble([B)D

    move-result-wide v31

    move-wide/from16 v45, v31

    .line 387
    .local v45, "coefficientSubHight":D
    move-wide/from16 v47, v10

    move-wide/from16 v10, v45

    invoke-virtual {v9, v10, v11}, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->setCoefficientSubHight(D)V

    .line 388
    .end local v45    # "coefficientSubHight":D
    .local v10, "coefficientSubHight":D
    .local v47, "coefficientSubMiddle":D
    iget-object v2, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->sampleCoefficientArrays:[Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;

    aput-object v9, v2, v5

    .line 349
    .end local v9    # "sampleCoefficientObj":Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;
    .end local v10    # "coefficientSubHight":D
    .end local v14    # "sampleSubMark":I
    .end local v27    # "sampleTypeFactor":I
    .end local v30    # "sampleCoeff":Ljava/lang/Double;
    .end local v35    # "densitySubLow":D
    .end local v39    # "densitySubHight":D
    .end local v43    # "coefficientSubLow":D
    .end local v47    # "coefficientSubMiddle":D
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v26

    move-object/from16 v10, v28

    move-object/from16 v11, v29

    goto/16 :goto_1

    .line 392
    .end local v5    # "i":I
    .end local v26    # "thresholdBytes":[B
    .end local v28    # "sampleBytes":[B
    .end local v29    # "m_title1":Ljava/lang/String;
    .local v2, "thresholdBytes":[B
    .local v10, "sampleBytes":[B
    .restart local v11    # "m_title1":Ljava/lang/String;
    :cond_1
    move-object/from16 v26, v2

    move-object/from16 v28, v10

    move-object/from16 v29, v11

    .line 392
    .end local v2    # "thresholdBytes":[B
    .end local v10    # "sampleBytes":[B
    .end local v11    # "m_title1":Ljava/lang/String;
    .restart local v26    # "thresholdBytes":[B
    .restart local v28    # "sampleBytes":[B
    .restart local v29    # "m_title1":Ljava/lang/String;
    const/4 v2, 0x0

    .line 392
    .local v2, "i":I
    :goto_2
    iget-object v5, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->cc:[D

    array-length v5, v5

    if-ge v2, v5, :cond_3

    .line 393
    const/4 v5, 0x0

    .line 394
    .end local v8    # "index":I
    .local v5, "index":I
    const/16 v8, 0x10

    new-array v9, v8, [B

    move-object v6, v9

    .line 395
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    .line 396
    iget v8, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->l_count:I

    if-lt v2, v8, :cond_2

    .line 397
    nop

    .line 392
    .end local v5    # "index":I
    .restart local v8    # "index":I
    :goto_3
    move v8, v5

    goto :goto_4

    .line 399
    .end local v8    # "index":I
    .restart local v5    # "index":I
    :cond_2
    add-int/lit8 v8, v5, 0x8

    invoke-static {v6, v5, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    .line 400
    .local v8, "cc_1":[B
    iget-object v9, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->cc:[D

    invoke-static {v8}, Lcom/wen/fluorescence/util/PublicFuction;->bytes8ToDouble([B)D

    move-result-wide v10

    aput-wide v10, v9, v2

    .line 401
    add-int/lit8 v5, v5, 0x8

    .line 402
    add-int/lit8 v9, v5, 0x8

    invoke-static {v6, v5, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    move-object v8, v9

    .line 403
    iget-object v9, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->cc:[D

    add-int/lit8 v10, v2, 0x1

    invoke-static {v8}, Lcom/wen/fluorescence/util/PublicFuction;->bytes8ToDouble([B)D

    move-result-wide v30

    aput-wide v30, v9, v10

    .line 403
    .end local v8    # "cc_1":[B
    goto :goto_3

    .line 392
    .end local v5    # "index":I
    .local v8, "index":I
    :goto_4
    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    .line 408
    .end local v2    # "i":I
    :cond_3
    const/4 v2, 0x0

    .line 408
    .restart local v2    # "i":I
    :goto_5
    iget-object v5, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->tc:[D

    array-length v5, v5

    if-ge v2, v5, :cond_5

    .line 409
    const/4 v5, 0x0

    .line 410
    .end local v8    # "index":I
    .restart local v5    # "index":I
    const/16 v8, 0x10

    new-array v9, v8, [B

    move-object v6, v9

    .line 411
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    .line 412
    iget v8, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->l_count:I

    if-lt v2, v8, :cond_4

    .line 413
    nop

    .line 408
    .end local v5    # "index":I
    .restart local v8    # "index":I
    :goto_6
    move v8, v5

    goto :goto_7

    .line 415
    .end local v8    # "index":I
    .restart local v5    # "index":I
    :cond_4
    add-int/lit8 v8, v5, 0x8

    invoke-static {v6, v5, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    .line 416
    .local v8, "tc_1":[B
    iget-object v9, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->tc:[D

    invoke-static {v8}, Lcom/wen/fluorescence/util/PublicFuction;->bytes8ToDouble([B)D

    move-result-wide v10

    aput-wide v10, v9, v2

    .line 417
    add-int/lit8 v5, v5, 0x8

    .line 418
    add-int/lit8 v9, v5, 0x8

    invoke-static {v6, v5, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    move-object v8, v9

    .line 419
    iget-object v9, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->tc:[D

    add-int/lit8 v10, v2, 0x1

    invoke-static {v8}, Lcom/wen/fluorescence/util/PublicFuction;->bytes8ToDouble([B)D

    move-result-wide v30

    aput-wide v30, v9, v10

    .line 419
    .end local v8    # "tc_1":[B
    goto :goto_6

    .line 408
    .end local v5    # "index":I
    .local v8, "index":I
    :goto_7
    add-int/lit8 v2, v2, 0x2

    goto :goto_5

    .line 426
    .end local v2    # "i":I
    :cond_5
    const/4 v2, 0x0

    .line 427
    .end local v8    # "index":I
    .local v2, "index":I
    const/16 v5, 0x10

    new-array v8, v5, [B

    move-object v5, v8

    .line 428
    .end local v6    # "temp":[B
    .local v5, "temp":[B
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    .line 429
    array-length v6, v5

    invoke-static {v5, v2, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 430
    .local v6, "secondProjectName":[B
    iget-object v8, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_projectName:[Ljava/lang/String;

    new-instance v9, Ljava/lang/String;

    const-string v10, "GBK"

    invoke-direct {v9, v6, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget-object v10, v1, Lcom/wen/fluorescence/util/IDCardUtil;->placeHolder:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    .line 434
    move-object v8, v5

    move v5, v2

    const/4 v2, 0x0

    .line 434
    .local v2, "i":I
    .local v5, "index":I
    .local v8, "temp":[B
    :goto_8
    const/4 v9, 0x2

    if-ge v2, v9, :cond_6

    .line 435
    const/4 v5, 0x0

    .line 436
    const/16 v10, 0x10

    new-array v11, v10, [B

    move-object v8, v11

    .line 437
    invoke-virtual {v4, v8}, Ljava/io/InputStream;->read([B)I

    .line 439
    add-int/lit8 v10, v5, 0x8

    invoke-static {v8, v5, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    .line 440
    .local v10, "m_testBound_1":[B
    iget-object v11, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_testBound:[[D

    aget-object v11, v11, v2

    invoke-static {v10}, Lcom/wen/fluorescence/util/PublicFuction;->bytes8ToDouble([B)D

    move-result-wide v30

    const/4 v14, 0x0

    aput-wide v30, v11, v14

    .line 441
    add-int/lit8 v5, v5, 0x8

    .line 442
    add-int/lit8 v11, v5, 0x8

    invoke-static {v8, v5, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v11

    move-object v10, v11

    .line 443
    iget-object v11, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_testBound:[[D

    aget-object v11, v11, v2

    invoke-static {v10}, Lcom/wen/fluorescence/util/PublicFuction;->bytes8ToDouble([B)D

    move-result-wide v30

    const/4 v14, 0x1

    aput-wide v30, v11, v14

    .line 445
    const/4 v5, 0x0

    .line 446
    const/16 v11, 0x10

    new-array v14, v11, [B

    move-object v8, v14

    .line 447
    invoke-virtual {v4, v8}, Ljava/io/InputStream;->read([B)I

    .line 448
    add-int/lit8 v11, v5, 0x8

    invoke-static {v8, v5, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v11

    .line 450
    .local v11, "m_printData":[B
    new-instance v14, Ljava/lang/String;

    const-string v9, "GBK"

    invoke-direct {v14, v11, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v9, v14

    .line 451
    .local v9, "m_printData_1":Ljava/lang/String;
    iget-object v14, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_printData:[[Ljava/lang/String;

    aget-object v14, v14, v2

    move-object/from16 v49, v6

    iget-object v6, v1, Lcom/wen/fluorescence/util/IDCardUtil;->placeHolder:Ljava/lang/String;

    .line 451
    .end local v6    # "secondProjectName":[B
    .local v49, "secondProjectName":[B
    move-object/from16 v50, v10

    const-string v10, ""

    .line 451
    .end local v10    # "m_testBound_1":[B
    .local v50, "m_testBound_1":[B
    invoke-virtual {v9, v6, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    aput-object v6, v14, v10

    .line 453
    add-int/lit8 v5, v5, 0x8

    .line 454
    add-int/lit8 v6, v5, 0x8

    invoke-static {v8, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 455
    .end local v11    # "m_printData":[B
    .local v6, "m_printData":[B
    new-instance v10, Ljava/lang/String;

    const-string v11, "GBK"

    invoke-direct {v10, v6, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v9, v10

    .line 456
    iget-object v10, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_printData:[[Ljava/lang/String;

    aget-object v10, v10, v2

    iget-object v11, v1, Lcom/wen/fluorescence/util/IDCardUtil;->placeHolder:Ljava/lang/String;

    const-string v14, ""

    invoke-virtual {v9, v11, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x1

    aput-object v11, v10, v14

    .line 434
    .end local v6    # "m_printData":[B
    .end local v9    # "m_printData_1":Ljava/lang/String;
    .end local v50    # "m_testBound_1":[B
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v6, v49

    goto/16 :goto_8

    .line 460
    .end local v2    # "i":I
    .end local v49    # "secondProjectName":[B
    .local v6, "secondProjectName":[B
    :cond_6
    move-object/from16 v49, v6

    .line 460
    .end local v6    # "secondProjectName":[B
    .restart local v49    # "secondProjectName":[B
    const/4 v2, 0x0

    .line 461
    .end local v5    # "index":I
    .local v2, "index":I
    const/16 v5, 0x10

    new-array v6, v5, [B

    move-object v5, v6

    .line 462
    .end local v8    # "temp":[B
    .local v5, "temp":[B
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    .line 463
    add-int/lit8 v6, v2, 0x8

    invoke-static {v5, v2, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 464
    .local v6, "thresholdValueResult":[B
    new-instance v8, Ljava/lang/String;

    const-string v9, "GBK"

    invoke-direct {v8, v6, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 465
    .local v8, "thresholdValueResult_1":Ljava/lang/String;
    iget-object v9, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->thresholdValueResult:[Ljava/lang/String;

    iget-object v10, v1, Lcom/wen/fluorescence/util/IDCardUtil;->placeHolder:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    .line 467
    add-int/lit8 v2, v2, 0x8

    .line 468
    add-int/lit8 v9, v2, 0x8

    invoke-static {v5, v2, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    move-object v6, v9

    .line 469
    new-instance v9, Ljava/lang/String;

    const-string v10, "GBK"

    invoke-direct {v9, v6, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v8, v9

    .line 470
    iget-object v9, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->thresholdValueResult:[Ljava/lang/String;

    iget-object v10, v1, Lcom/wen/fluorescence/util/IDCardUtil;->placeHolder:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 475
    move-object v9, v5

    move v5, v2

    move v2, v11

    .line 475
    .local v2, "i":I
    .local v5, "index":I
    .local v9, "temp":[B
    :goto_9
    const/4 v10, 0x6

    if-ge v2, v10, :cond_7

    .line 476
    const/4 v5, 0x0

    .line 477
    const/16 v10, 0x10

    new-array v14, v10, [B

    move-object v9, v14

    .line 478
    invoke-virtual {v4, v9}, Ljava/io/InputStream;->read([B)I

    .line 479
    add-int/lit8 v14, v5, 0x8

    invoke-static {v9, v5, v14}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v14

    .line 480
    .local v14, "intervalDensity":[B
    iget-object v10, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->intervalDensity:[D

    invoke-static {v14}, Lcom/wen/fluorescence/util/PublicFuction;->bytes8ToDouble([B)D

    move-result-wide v16

    aput-wide v16, v10, v2

    .line 481
    add-int/lit8 v5, v5, 0x8

    .line 482
    add-int/lit8 v10, v5, 0x8

    invoke-static {v9, v5, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    .line 483
    .end local v14    # "intervalDensity":[B
    .local v10, "intervalDensity":[B
    iget-object v14, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->intervalDensity:[D

    add-int/lit8 v16, v2, 0x1

    invoke-static {v10}, Lcom/wen/fluorescence/util/PublicFuction;->bytes8ToDouble([B)D

    move-result-wide v17

    aput-wide v17, v14, v16

    .line 475
    .end local v10    # "intervalDensity":[B
    add-int/lit8 v2, v2, 0x2

    goto :goto_9

    .line 487
    .end local v2    # "i":I
    :cond_7
    const/4 v2, 0x0

    .line 488
    .end local v5    # "index":I
    .local v2, "index":I
    const/16 v5, 0x40

    new-array v10, v5, [B

    move-object v9, v10

    .line 489
    invoke-virtual {v4, v9}, Ljava/io/InputStream;->read([B)I

    .line 490
    move v10, v2

    move v2, v11

    .line 490
    .local v2, "i":I
    .local v10, "index":I
    :goto_a
    const/4 v14, 0x7

    if-ge v2, v14, :cond_8

    .line 491
    add-int/lit8 v11, v10, 0x8

    invoke-static {v9, v10, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v11

    .line 492
    .local v11, "resultOfDensity_1":[B
    iget-object v14, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->resultOfDensity:[Ljava/lang/String;

    new-instance v5, Ljava/lang/String;

    move-object/from16 v51, v6

    const-string v6, "GBK"

    .line 492
    .end local v6    # "thresholdValueResult":[B
    .local v51, "thresholdValueResult":[B
    invoke-direct {v5, v11, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget-object v6, v1, Lcom/wen/fluorescence/util/IDCardUtil;->placeHolder:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v14, v2

    .line 493
    add-int/lit8 v10, v10, 0x8

    .line 490
    .end local v11    # "resultOfDensity_1":[B
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v6, v51

    move-object/from16 v1, p0

    const/16 v5, 0x40

    const/4 v11, 0x0

    goto :goto_a

    .line 495
    .end local v2    # "i":I
    .end local v51    # "thresholdValueResult":[B
    .restart local v6    # "thresholdValueResult":[B
    :cond_8
    move-object/from16 v51, v6

    .line 495
    .end local v6    # "thresholdValueResult":[B
    .restart local v51    # "thresholdValueResult":[B
    const/4 v14, 0x0

    .line 496
    .end local v10    # "index":I
    .local v14, "index":I
    const/16 v1, 0x40

    new-array v1, v1, [B

    move-object v9, v1

    .line 497
    invoke-virtual {v4, v9}, Ljava/io/InputStream;->read([B)I

    .line 498
    iget-object v1, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aput-object v15, v1, v7

    .line 304
    .end local v8    # "thresholdValueResult_1":Ljava/lang/String;
    .end local v15    # "chipInfoEx":Lcom/wen/fluorescence/bean/IDChipInfoExN;
    .end local v21    # "proName1":[B
    .end local v23    # "proName":Ljava/lang/String;
    .end local v24    # "m_unit_1":[B
    .end local v25    # "m_unit_2":Ljava/lang/String;
    .end local v26    # "thresholdBytes":[B
    .end local v49    # "secondProjectName":[B
    .end local v51    # "thresholdValueResult":[B
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, v19

    move-object/from16 v6, v20

    move-object/from16 v8, v22

    move-object/from16 v10, v28

    move-object/from16 v11, v29

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    goto/16 :goto_0

    .line 501
    .end local v7    # "k":I
    .end local v19    # "new_logNo_bs":[B
    .end local v20    # "barCode_1":[B
    .end local v22    # "prevBatch":[B
    .end local v28    # "sampleBytes":[B
    .end local v29    # "m_title1":Ljava/lang/String;
    .local v2, "new_logNo_bs":[B
    .local v6, "barCode_1":[B
    .local v8, "prevBatch":[B
    .local v10, "sampleBytes":[B
    .local v11, "m_title1":Ljava/lang/String;
    :cond_9
    move-object/from16 v19, v2

    move-object/from16 v20, v6

    move-object/from16 v22, v8

    move-object/from16 v28, v10

    move-object/from16 v29, v11

    .line 501
    .end local v2    # "new_logNo_bs":[B
    .end local v6    # "barCode_1":[B
    .end local v8    # "prevBatch":[B
    .end local v10    # "sampleBytes":[B
    .end local v11    # "m_title1":Ljava/lang/String;
    .restart local v19    # "new_logNo_bs":[B
    .restart local v20    # "barCode_1":[B
    .restart local v22    # "prevBatch":[B
    .restart local v28    # "sampleBytes":[B
    .restart local v29    # "m_title1":Ljava/lang/String;
    iget v1, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->iPloyCoefficientFlag:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    .line 502
    const/16 v1, 0x8

    new-array v1, v1, [B

    move-object v9, v1

    .line 503
    const/4 v1, 0x0

    .line 503
    .local v1, "k":I
    :goto_b
    iget v2, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_ItemCount:I

    if-ge v1, v2, :cond_c

    .line 504
    const/4 v2, 0x0

    .line 504
    .local v2, "m":I
    :goto_c
    const/4 v5, 0x6

    if-ge v2, v5, :cond_a

    .line 505
    invoke-virtual {v4, v9}, Ljava/io/InputStream;->read([B)I

    .line 506
    iget-object v5, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A0:[D

    invoke-static {v9}, Lcom/wen/fluorescence/util/PublicFuction;->bytes8ToDouble([B)D

    move-result-wide v6

    aput-wide v6, v5, v2

    .line 504
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 508
    .end local v2    # "m":I
    :cond_a
    const/4 v2, 0x0

    .line 508
    .restart local v2    # "m":I
    :goto_d
    const/4 v5, 0x6

    if-ge v2, v5, :cond_b

    .line 509
    invoke-virtual {v4, v9}, Ljava/io/InputStream;->read([B)I

    .line 510
    iget-object v6, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A1:[D

    invoke-static {v9}, Lcom/wen/fluorescence/util/PublicFuction;->bytes8ToDouble([B)D

    move-result-wide v7

    aput-wide v7, v6, v2

    .line 508
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 503
    .end local v2    # "m":I
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 514
    .end local v1    # "k":I
    :cond_c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 515
    iget-byte v1, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->FileFlag:B

    const/16 v2, 0x24

    if-eq v1, v2, :cond_d

    .line 517
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v5, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->FileFlag:B

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "AS_04_idCardInfo.FileFLag:0x"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    const/4 v1, 0x0

    return-object v1

    .line 521
    :cond_d
    return-object v3

    .line 522
    .end local v3    # "idCardInfo":Lcom/wen/fluorescence/bean/IDChipInfoN;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v9    # "temp":[B
    .end local v12    # "strPrevBatch":Ljava/lang/String;
    .end local v13    # "rushBytes":[B
    .end local v14    # "index":I
    .end local v19    # "new_logNo_bs":[B
    .end local v20    # "barCode_1":[B
    .end local v22    # "prevBatch":[B
    .end local v28    # "sampleBytes":[B
    .end local v29    # "m_title1":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 523
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 524
    const/4 v2, 0x0

    return-object v2
.end method

.method public queryIDChipInfo(Ljava/lang/String;)Lcom/wen/fluorescence/bean/IDChipInfo;
    .locals 3
    .param p1, "barCode"    # Ljava/lang/String;

    .line 749
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/wen/fluorescence/util/IDCardUtil;->localPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".bin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 750
    .local v0, "targetFile":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/wen/fluorescence/util/IDCardUtil;->parseIDChipInfo(Ljava/io/File;)Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v1

    .line 751
    .local v1, "idChipInfo":Lcom/wen/fluorescence/bean/IDChipInfo;
    return-object v1
.end method

.method public queryIDChipInfoN(Ljava/lang/String;)Lcom/wen/fluorescence/bean/IDChipInfoN;
    .locals 3
    .param p1, "barCode"    # Ljava/lang/String;

    .line 755
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/wen/fluorescence/util/IDCardUtil;->localPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".bin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 756
    .local v0, "targetFile":Ljava/io/File;
    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/util/IDCardUtil;->parseIDChipInfoFor14(Ljava/io/File;)Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v1

    .line 757
    .local v1, "idChipInfo":Lcom/wen/fluorescence/bean/IDChipInfoN;
    return-object v1
.end method

.method public saveIDChipInfo(Ljava/lang/String;)V
    .locals 4
    .param p1, "targetName"    # Ljava/lang/String;

    .line 780
    invoke-static {}, Lcom/wen/fluorescence/util/FileUtils;->getInstance()Lcom/wen/fluorescence/util/FileUtils;

    move-result-object v0

    sget-object v1, Lcom/wen/fluorescence/util/IDCardUtil;->localPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/util/FileUtils;->mkdir(Ljava/lang/String;)V

    .line 781
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/wen/fluorescence/util/IDCardUtil;->fileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 782
    .local v0, "sourceFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/wen/fluorescence/util/IDCardUtil;->localPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".bin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 783
    .local v1, "targetFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 784
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 787
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/wen/fluorescence/util/FileUtils;->getInstance()Lcom/wen/fluorescence/util/FileUtils;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/wen/fluorescence/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    goto :goto_0

    .line 788
    :catch_0
    move-exception v2

    .line 789
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 791
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public scanIDChipInfoFromFFC13()Lcom/wen/fluorescence/bean/IDChipInfo;
    .locals 2

    .line 51
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/wen/fluorescence/util/IDCardUtil;->fileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, "device":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    const/4 v1, 0x0

    return-object v1

    .line 56
    :cond_0
    invoke-direct {p0, v0}, Lcom/wen/fluorescence/util/IDCardUtil;->parseIDChipInfo(Ljava/io/File;)Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v1

    return-object v1
.end method

.method public scanIDChipInfoFromFFC14()Lcom/wen/fluorescence/bean/IDChipInfoN;
    .locals 2

    .line 66
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/wen/fluorescence/util/IDCardUtil;->fileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, "device":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    const/4 v1, 0x0

    return-object v1

    .line 70
    :cond_0
    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/util/IDCardUtil;->parseIDChipInfoFor14(Ljava/io/File;)Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v1

    return-object v1
.end method
