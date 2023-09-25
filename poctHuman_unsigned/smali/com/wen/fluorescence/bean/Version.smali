.class public Lcom/wen/fluorescence/bean/Version;
.super Ljava/lang/Object;
.source "Version.java"


# instance fields
.field private firmVersion:Ljava/lang/String;

.field private hardVersion:Ljava/lang/String;

.field private packageLen:I

.field private v1:B

.field private v2:B

.field private v3:B

.field private v4:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFirmVersion()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/wen/fluorescence/bean/Version;->firmVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getHardVersion()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/wen/fluorescence/bean/Version;->hardVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageLen()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/wen/fluorescence/bean/Version;->packageLen:I

    return v0
.end method

.method public getV1()B
    .locals 1

    .line 37
    iget-byte v0, p0, Lcom/wen/fluorescence/bean/Version;->v1:B

    return v0
.end method

.method public getV2()B
    .locals 1

    .line 45
    iget-byte v0, p0, Lcom/wen/fluorescence/bean/Version;->v2:B

    return v0
.end method

.method public getV3()B
    .locals 1

    .line 53
    iget-byte v0, p0, Lcom/wen/fluorescence/bean/Version;->v3:B

    return v0
.end method

.method public getV4()B
    .locals 1

    .line 61
    iget-byte v0, p0, Lcom/wen/fluorescence/bean/Version;->v4:B

    return v0
.end method

.method public setFirmVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "firmVersion"    # Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/wen/fluorescence/bean/Version;->firmVersion:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setHardVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "hardVersion"    # Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lcom/wen/fluorescence/bean/Version;->hardVersion:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setPackageLen(I)V
    .locals 0
    .param p1, "packageLen"    # I

    .line 32
    iput p1, p0, Lcom/wen/fluorescence/bean/Version;->packageLen:I

    .line 33
    return-void
.end method

.method public setV1(B)V
    .locals 0
    .param p1, "v1"    # B

    .line 41
    iput-byte p1, p0, Lcom/wen/fluorescence/bean/Version;->v1:B

    .line 42
    return-void
.end method

.method public setV2(B)V
    .locals 0
    .param p1, "v2"    # B

    .line 49
    iput-byte p1, p0, Lcom/wen/fluorescence/bean/Version;->v2:B

    .line 50
    return-void
.end method

.method public setV3(B)V
    .locals 0
    .param p1, "v3"    # B

    .line 57
    iput-byte p1, p0, Lcom/wen/fluorescence/bean/Version;->v3:B

    .line 58
    return-void
.end method

.method public setV4(B)V
    .locals 0
    .param p1, "v4"    # B

    .line 65
    iput-byte p1, p0, Lcom/wen/fluorescence/bean/Version;->v4:B

    .line 66
    return-void
.end method
