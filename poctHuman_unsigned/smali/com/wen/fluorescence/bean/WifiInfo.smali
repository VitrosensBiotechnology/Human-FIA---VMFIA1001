.class public Lcom/wen/fluorescence/bean/WifiInfo;
.super Ljava/lang/Object;
.source "WifiInfo.java"


# instance fields
.field private Mac:Ljava/lang/String;

.field private Name:Ljava/lang/String;

.field private SerialNumber:Ljava/lang/String;

.field private SignalStrength:Ljava/lang/String;

.field private connected:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/bean/WifiInfo;->SerialNumber:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/bean/WifiInfo;->Mac:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/bean/WifiInfo;->SignalStrength:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/bean/WifiInfo;->Name:Ljava/lang/String;

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wen/fluorescence/bean/WifiInfo;->connected:Z

    return-void
.end method


# virtual methods
.method public getMac()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/wen/fluorescence/bean/WifiInfo;->Mac:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/wen/fluorescence/bean/WifiInfo;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/wen/fluorescence/bean/WifiInfo;->SerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSignalStrength()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/wen/fluorescence/bean/WifiInfo;->SignalStrength:Ljava/lang/String;

    return-object v0
.end method

.method public getSignalStrengthLevel()I
    .locals 3

    .line 46
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/wen/fluorescence/bean/WifiInfo;->SignalStrength:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .local v1, "absNumber":I
    const/16 v2, 0x5f

    if-ge v1, v2, :cond_0

    .line 49
    const/4 v0, 0x3

    .line 49
    .local v0, "iReturn":I
    :goto_0
    goto :goto_1

    .line 50
    .end local v0    # "iReturn":I
    :cond_0
    const/16 v2, 0x78

    if-ge v1, v2, :cond_1

    .line 51
    const/4 v0, 0x2

    goto :goto_0

    .line 53
    :cond_1
    nop

    .line 55
    .restart local v0    # "iReturn":I
    :goto_1
    return v0

    .line 56
    .end local v0    # "iReturn":I
    .end local v1    # "absNumber":I
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 58
    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/wen/fluorescence/bean/WifiInfo;->connected:Z

    return v0
.end method

.method public setConnected(Z)V
    .locals 0
    .param p1, "connected"    # Z

    .line 72
    iput-boolean p1, p0, Lcom/wen/fluorescence/bean/WifiInfo;->connected:Z

    .line 73
    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0
    .param p1, "mac"    # Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/wen/fluorescence/bean/WifiInfo;->Mac:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "Name"    # Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lcom/wen/fluorescence/bean/WifiInfo;->Name:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setSerialNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "serialNumber"    # Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/wen/fluorescence/bean/WifiInfo;->SerialNumber:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setSignalStrength(Ljava/lang/String;)V
    .locals 0
    .param p1, "signalStrength"    # Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/wen/fluorescence/bean/WifiInfo;->SignalStrength:Ljava/lang/String;

    .line 65
    return-void
.end method
