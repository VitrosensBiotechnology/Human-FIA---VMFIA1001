.class public Lcom/wen/fluorescence/bean/SystemConfig;
.super Ljava/lang/Object;
.source "SystemConfig.java"


# instance fields
.field private debugSwitch:I

.field private maxAD:I

.field private runTotal:I

.field private scanTime:I

.field private startPosition:I

.field private temp:I

.field private tempSwitch:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDebugSwitch()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/wen/fluorescence/bean/SystemConfig;->debugSwitch:I

    return v0
.end method

.method public getMaxAD()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/wen/fluorescence/bean/SystemConfig;->maxAD:I

    return v0
.end method

.method public getRunTotal()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/wen/fluorescence/bean/SystemConfig;->runTotal:I

    return v0
.end method

.method public getScanTime()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/wen/fluorescence/bean/SystemConfig;->scanTime:I

    return v0
.end method

.method public getStartPosition()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/wen/fluorescence/bean/SystemConfig;->startPosition:I

    return v0
.end method

.method public getTemp()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/wen/fluorescence/bean/SystemConfig;->temp:I

    return v0
.end method

.method public getTempSwitch()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/wen/fluorescence/bean/SystemConfig;->tempSwitch:I

    return v0
.end method

.method public setDebugSwitch(I)V
    .locals 0
    .param p1, "debugSwitch"    # I

    .line 66
    iput p1, p0, Lcom/wen/fluorescence/bean/SystemConfig;->debugSwitch:I

    .line 67
    return-void
.end method

.method public setMaxAD(I)V
    .locals 0
    .param p1, "maxAD"    # I

    .line 34
    iput p1, p0, Lcom/wen/fluorescence/bean/SystemConfig;->maxAD:I

    .line 35
    return-void
.end method

.method public setRunTotal(I)V
    .locals 0
    .param p1, "runTotal"    # I

    .line 26
    iput p1, p0, Lcom/wen/fluorescence/bean/SystemConfig;->runTotal:I

    .line 27
    return-void
.end method

.method public setScanTime(I)V
    .locals 0
    .param p1, "scanTime"    # I

    .line 42
    iput p1, p0, Lcom/wen/fluorescence/bean/SystemConfig;->scanTime:I

    .line 43
    return-void
.end method

.method public setStartPosition(I)V
    .locals 0
    .param p1, "startPosition"    # I

    .line 18
    iput p1, p0, Lcom/wen/fluorescence/bean/SystemConfig;->startPosition:I

    .line 19
    return-void
.end method

.method public setTemp(I)V
    .locals 0
    .param p1, "temp"    # I

    .line 50
    iput p1, p0, Lcom/wen/fluorescence/bean/SystemConfig;->temp:I

    .line 51
    return-void
.end method

.method public setTempSwitch(I)V
    .locals 0
    .param p1, "tempSwitch"    # I

    .line 58
    iput p1, p0, Lcom/wen/fluorescence/bean/SystemConfig;->tempSwitch:I

    .line 59
    return-void
.end method
