.class public Lcom/wen/fluorescence/util/MCUUpgradeUtil;
.super Ljava/lang/Object;
.source "MCUUpgradeUtil.java"


# static fields
.field private static util:Lcom/wen/fluorescence/util/MCUUpgradeUtil;


# instance fields
.field private fileData:[B

.field private index:I

.field private lenTotal:I

.field private packageLen:I

.field private version:Lcom/wen/fluorescence/bean/Version;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->index:I

    return-void
.end method

.method public static getInstance()Lcom/wen/fluorescence/util/MCUUpgradeUtil;
    .locals 1

    .line 20
    sget-object v0, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->util:Lcom/wen/fluorescence/util/MCUUpgradeUtil;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/wen/fluorescence/util/MCUUpgradeUtil;

    invoke-direct {v0}, Lcom/wen/fluorescence/util/MCUUpgradeUtil;-><init>()V

    sput-object v0, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->util:Lcom/wen/fluorescence/util/MCUUpgradeUtil;

    .line 23
    :cond_0
    sget-object v0, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->util:Lcom/wen/fluorescence/util/MCUUpgradeUtil;

    return-object v0
.end method


# virtual methods
.method public getProgress()I
    .locals 4

    .line 36
    iget v0, p0, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->index:I

    int-to-double v0, v0

    iget v2, p0, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->lenTotal:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4054000000000000L    # 80.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    add-double/2addr v0, v2

    .line 37
    .local v0, "progress":D
    double-to-int v2, v0

    return v2
.end method

.method public prepareUpgrade()V
    .locals 5

    .line 44
    iget-object v0, p0, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->version:Lcom/wen/fluorescence/bean/Version;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->fileData:[B

    const/4 v2, 0x1

    const/4 v3, 0x0

    array-length v1, v1

    iget-object v4, p0, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->fileData:[B

    invoke-static {v4}, Lcom/wen/fluorescence/util/CRC16;->GetCRC16([B)I

    move-result v4

    invoke-static {v0, v1, v4}, Lcom/wen/fluorescence/serialport/Protocol;->sendUpgradingCMDInfo(Lcom/wen/fluorescence/bean/Version;II)V

    .line 45
    iput v3, p0, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->index:I

    .line 46
    iget-object v0, p0, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->fileData:[B

    array-length v0, v0

    iget v1, p0, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->packageLen:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->lenTotal:I

    .line 47
    iget-object v0, p0, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->fileData:[B

    array-length v0, v0

    iget v1, p0, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->packageLen:I

    rem-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 48
    iget v0, p0, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->lenTotal:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->lenTotal:I

    .line 50
    :cond_0
    iget v0, p0, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->lenTotal:I

    if-nez v0, :cond_1

    .line 51
    iput v2, p0, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->lenTotal:I

    .line 53
    :cond_1
    return-void
.end method

.method public setFileData([BLcom/wen/fluorescence/bean/Version;)V
    .locals 0
    .param p1, "fileData"    # [B
    .param p2, "version"    # Lcom/wen/fluorescence/bean/Version;

    .line 27
    iput-object p1, p0, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->fileData:[B

    .line 28
    iput-object p2, p0, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->version:Lcom/wen/fluorescence/bean/Version;

    .line 29
    return-void
.end method

.method public setPackageLen(I)V
    .locals 0
    .param p1, "packageLen"    # I

    .line 32
    iput p1, p0, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->packageLen:I

    .line 33
    return-void
.end method

.method public startUpgrade()V
    .locals 4

    .line 59
    iget v0, p0, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->index:I

    iget v1, p0, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->packageLen:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->fileData:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 61
    iget v0, p0, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->index:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->packageLen:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->fileData:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->fileData:[B

    iget v1, p0, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->index:I

    iget v2, p0, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->packageLen:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->index:I

    iget v3, p0, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->packageLen:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->packageLen:I

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 63
    .local v0, "sendData":[B
    goto :goto_0

    .line 65
    .end local v0    # "sendData":[B
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->fileData:[B

    iget v1, p0, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->index:I

    iget v2, p0, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->packageLen:I

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->fileData:[B

    array-length v2, v2

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 67
    .restart local v0    # "sendData":[B
    :goto_0
    iget v1, p0, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->index:I

    invoke-static {v0, v1}, Lcom/wen/fluorescence/serialport/Protocol;->sendUpgradingData([BI)V

    .line 68
    .end local v0    # "sendData":[B
    goto :goto_1

    .line 69
    :cond_1
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->sendUpgradingComplete()V

    .line 71
    :goto_1
    return-void
.end method
