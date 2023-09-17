.class public Lgiven/tronho/api/IDChipItemLib;
.super Ljava/lang/Object;
.source "IDChipItemLib.java"


# instance fields
.field private A0:[F

.field private A1:[F

.field private AlgorithmType:I

.field private FMValue:I

.field private FZValue:I

.field private XArray:[F

.field private YArray:[F

.field dataLen:I

.field private iPloyCoefficientFlag:I

.field private mLog:I

.field private mSub:I

.field private position:I

.field private power1:I

.field private power2:I

.field private sSampleTypeCoefficients:[Lgiven/tronho/api/SampleTypeCoefficientLib;

.field private testMode:I

.field private xLog:I

.field private yLog:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lgiven/tronho/api/IDChipItemLib;->XArray:[F

    .line 31
    new-array v1, v0, [F

    iput-object v1, p0, Lgiven/tronho/api/IDChipItemLib;->YArray:[F

    .line 32
    new-array v1, v0, [F

    iput-object v1, p0, Lgiven/tronho/api/IDChipItemLib;->A0:[F

    .line 33
    new-array v0, v0, [F

    iput-object v0, p0, Lgiven/tronho/api/IDChipItemLib;->A1:[F

    .line 34
    const/4 v0, 0x5

    new-array v0, v0, [Lgiven/tronho/api/SampleTypeCoefficientLib;

    iput-object v0, p0, Lgiven/tronho/api/IDChipItemLib;->sSampleTypeCoefficients:[Lgiven/tronho/api/SampleTypeCoefficientLib;

    .line 35
    return-void
.end method


# virtual methods
.method public getA0()[F
    .locals 1

    .line 46
    iget-object v0, p0, Lgiven/tronho/api/IDChipItemLib;->A0:[F

    return-object v0
.end method

.method public getA1()[F
    .locals 1

    .line 54
    iget-object v0, p0, Lgiven/tronho/api/IDChipItemLib;->A1:[F

    return-object v0
.end method

.method public getAlgorithmType()I
    .locals 1

    .line 62
    iget v0, p0, Lgiven/tronho/api/IDChipItemLib;->AlgorithmType:I

    return v0
.end method

.method public getDataLen()I
    .locals 1

    .line 118
    iget v0, p0, Lgiven/tronho/api/IDChipItemLib;->dataLen:I

    return v0
.end method

.method public getFMValue()I
    .locals 1

    .line 86
    iget v0, p0, Lgiven/tronho/api/IDChipItemLib;->FMValue:I

    return v0
.end method

.method public getFZValue()I
    .locals 1

    .line 78
    iget v0, p0, Lgiven/tronho/api/IDChipItemLib;->FZValue:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .line 142
    iget v0, p0, Lgiven/tronho/api/IDChipItemLib;->position:I

    return v0
.end method

.method public getPower1()I
    .locals 1

    .line 150
    iget v0, p0, Lgiven/tronho/api/IDChipItemLib;->power1:I

    return v0
.end method

.method public getPower2()I
    .locals 1

    .line 158
    iget v0, p0, Lgiven/tronho/api/IDChipItemLib;->power2:I

    return v0
.end method

.method public getTestMode()I
    .locals 1

    .line 70
    iget v0, p0, Lgiven/tronho/api/IDChipItemLib;->testMode:I

    return v0
.end method

.method public getXArray()[F
    .locals 1

    .line 102
    iget-object v0, p0, Lgiven/tronho/api/IDChipItemLib;->XArray:[F

    return-object v0
.end method

.method public getYArray()[F
    .locals 1

    .line 110
    iget-object v0, p0, Lgiven/tronho/api/IDChipItemLib;->YArray:[F

    return-object v0
.end method

.method public getiPloyCoefficientFlag()I
    .locals 1

    .line 38
    iget v0, p0, Lgiven/tronho/api/IDChipItemLib;->iPloyCoefficientFlag:I

    return v0
.end method

.method public getmLog()I
    .locals 1

    .line 126
    iget v0, p0, Lgiven/tronho/api/IDChipItemLib;->mLog:I

    return v0
.end method

.method public getmSub()I
    .locals 1

    .line 134
    iget v0, p0, Lgiven/tronho/api/IDChipItemLib;->mSub:I

    return v0
.end method

.method public getsSampleTypeCoefficients()[Lgiven/tronho/api/SampleTypeCoefficientLib;
    .locals 1

    .line 94
    iget-object v0, p0, Lgiven/tronho/api/IDChipItemLib;->sSampleTypeCoefficients:[Lgiven/tronho/api/SampleTypeCoefficientLib;

    return-object v0
.end method

.method public getxLog()I
    .locals 1

    .line 166
    iget v0, p0, Lgiven/tronho/api/IDChipItemLib;->xLog:I

    return v0
.end method

.method public getyLog()I
    .locals 1

    .line 174
    iget v0, p0, Lgiven/tronho/api/IDChipItemLib;->yLog:I

    return v0
.end method

.method public setA0([F)V
    .locals 0
    .param p1, "a0"    # [F

    .line 50
    iput-object p1, p0, Lgiven/tronho/api/IDChipItemLib;->A0:[F

    .line 51
    return-void
.end method

.method public setA1([F)V
    .locals 0
    .param p1, "a1"    # [F

    .line 58
    iput-object p1, p0, Lgiven/tronho/api/IDChipItemLib;->A1:[F

    .line 59
    return-void
.end method

.method public setAlgorithmType(I)V
    .locals 0
    .param p1, "algorithmType"    # I

    .line 66
    iput p1, p0, Lgiven/tronho/api/IDChipItemLib;->AlgorithmType:I

    .line 67
    return-void
.end method

.method public setDataLen(I)V
    .locals 0
    .param p1, "dataLen"    # I

    .line 122
    iput p1, p0, Lgiven/tronho/api/IDChipItemLib;->dataLen:I

    .line 123
    return-void
.end method

.method public setFMValue(I)V
    .locals 0
    .param p1, "FMValue"    # I

    .line 90
    iput p1, p0, Lgiven/tronho/api/IDChipItemLib;->FMValue:I

    .line 91
    return-void
.end method

.method public setFZValue(I)V
    .locals 0
    .param p1, "FZValue"    # I

    .line 82
    iput p1, p0, Lgiven/tronho/api/IDChipItemLib;->FZValue:I

    .line 83
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .line 146
    iput p1, p0, Lgiven/tronho/api/IDChipItemLib;->position:I

    .line 147
    return-void
.end method

.method public setPower1(I)V
    .locals 0
    .param p1, "power1"    # I

    .line 154
    iput p1, p0, Lgiven/tronho/api/IDChipItemLib;->power1:I

    .line 155
    return-void
.end method

.method public setPower2(I)V
    .locals 0
    .param p1, "power2"    # I

    .line 162
    iput p1, p0, Lgiven/tronho/api/IDChipItemLib;->power2:I

    .line 163
    return-void
.end method

.method public setTestMode(I)V
    .locals 0
    .param p1, "testMode"    # I

    .line 74
    iput p1, p0, Lgiven/tronho/api/IDChipItemLib;->testMode:I

    .line 75
    return-void
.end method

.method public setXArray([F)V
    .locals 0
    .param p1, "XArray"    # [F

    .line 106
    iput-object p1, p0, Lgiven/tronho/api/IDChipItemLib;->XArray:[F

    .line 107
    return-void
.end method

.method public setYArray([F)V
    .locals 0
    .param p1, "YArray"    # [F

    .line 114
    iput-object p1, p0, Lgiven/tronho/api/IDChipItemLib;->YArray:[F

    .line 115
    return-void
.end method

.method public setiPloyCoefficientFlag(I)V
    .locals 0
    .param p1, "iPloyCoefficientFlag"    # I

    .line 42
    iput p1, p0, Lgiven/tronho/api/IDChipItemLib;->iPloyCoefficientFlag:I

    .line 43
    return-void
.end method

.method public setmLog(I)V
    .locals 0
    .param p1, "mLog"    # I

    .line 130
    iput p1, p0, Lgiven/tronho/api/IDChipItemLib;->mLog:I

    .line 131
    return-void
.end method

.method public setmSub(I)V
    .locals 0
    .param p1, "mSub"    # I

    .line 138
    iput p1, p0, Lgiven/tronho/api/IDChipItemLib;->mSub:I

    .line 139
    return-void
.end method

.method public setsSampleTypeCoefficients([Lgiven/tronho/api/SampleTypeCoefficientLib;)V
    .locals 0
    .param p1, "sSampleTypeCoefficients"    # [Lgiven/tronho/api/SampleTypeCoefficientLib;

    .line 98
    iput-object p1, p0, Lgiven/tronho/api/IDChipItemLib;->sSampleTypeCoefficients:[Lgiven/tronho/api/SampleTypeCoefficientLib;

    .line 99
    return-void
.end method

.method public setxLog(I)V
    .locals 0
    .param p1, "xLog"    # I

    .line 170
    iput p1, p0, Lgiven/tronho/api/IDChipItemLib;->xLog:I

    .line 171
    return-void
.end method

.method public setyLog(I)V
    .locals 0
    .param p1, "yLog"    # I

    .line 178
    iput p1, p0, Lgiven/tronho/api/IDChipItemLib;->yLog:I

    .line 179
    return-void
.end method
