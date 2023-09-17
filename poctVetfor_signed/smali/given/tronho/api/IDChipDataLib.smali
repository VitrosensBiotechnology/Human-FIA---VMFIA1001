.class public Lgiven/tronho/api/IDChipDataLib;
.super Ljava/lang/Object;
.source "IDChipDataLib.java"


# instance fields
.field private CEnd:S

.field private CStart:S

.field private T1End:S

.field private T1Start:S

.field private T2End:S

.field private T2Start:S

.field private X1End:S

.field private X1Start:S

.field private X2End:S

.field private X2Start:S

.field private X3End:S

.field private X3Start:S

.field private X4End:S

.field private X4Start:S

.field private addSampleFlag:I

.field private addSampleName:I

.field private addSampleValue:I

.field private cutBackground:S

.field private idChipItems:Lgiven/tronho/api/IDChipItemLib;

.field private idChipItems2:Lgiven/tronho/api/IDChipItemLib;

.field private idChipItems3:Lgiven/tronho/api/IDChipItemLib;

.field private isShowConclusion:I

.field private isShowResult:I

.field private itemCount:I

.field private qualitativeFlag:I

.field private rushTopFlag:I

.field private rushTopName:I

.field private rushTopValue:I

.field private uiPeakArithmetic:I

.field private uiValueCount1:I

.field private uiValueCount2:I

.field private uiValueCount3:I

.field private uiValueCount4:I

.field private uiValueCountC:I

.field private uiValueCountT1:I

.field private uiValueCountT2:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddSampleFlag()I
    .locals 1

    .line 300
    iget v0, p0, Lgiven/tronho/api/IDChipDataLib;->addSampleFlag:I

    return v0
.end method

.method public getAddSampleName()I
    .locals 1

    .line 292
    iget v0, p0, Lgiven/tronho/api/IDChipDataLib;->addSampleName:I

    return v0
.end method

.method public getAddSampleValue()I
    .locals 1

    .line 308
    iget v0, p0, Lgiven/tronho/api/IDChipDataLib;->addSampleValue:I

    return v0
.end method

.method public getCEnd()S
    .locals 1

    .line 100
    iget-short v0, p0, Lgiven/tronho/api/IDChipDataLib;->CEnd:S

    return v0
.end method

.method public getCStart()S
    .locals 1

    .line 92
    iget-short v0, p0, Lgiven/tronho/api/IDChipDataLib;->CStart:S

    return v0
.end method

.method public getCutBackground()S
    .locals 1

    .line 228
    iget-short v0, p0, Lgiven/tronho/api/IDChipDataLib;->cutBackground:S

    return v0
.end method

.method public getIdChipItems()Lgiven/tronho/api/IDChipItemLib;
    .locals 1

    .line 316
    iget-object v0, p0, Lgiven/tronho/api/IDChipDataLib;->idChipItems:Lgiven/tronho/api/IDChipItemLib;

    return-object v0
.end method

.method public getIdChipItems2()Lgiven/tronho/api/IDChipItemLib;
    .locals 1

    .line 324
    iget-object v0, p0, Lgiven/tronho/api/IDChipDataLib;->idChipItems2:Lgiven/tronho/api/IDChipItemLib;

    return-object v0
.end method

.method public getIdChipItems3()Lgiven/tronho/api/IDChipItemLib;
    .locals 1

    .line 332
    iget-object v0, p0, Lgiven/tronho/api/IDChipDataLib;->idChipItems3:Lgiven/tronho/api/IDChipItemLib;

    return-object v0
.end method

.method public getIsShowConclusion()I
    .locals 1

    .line 284
    iget v0, p0, Lgiven/tronho/api/IDChipDataLib;->isShowConclusion:I

    return v0
.end method

.method public getIsShowResult()I
    .locals 1

    .line 276
    iget v0, p0, Lgiven/tronho/api/IDChipDataLib;->isShowResult:I

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 52
    iget v0, p0, Lgiven/tronho/api/IDChipDataLib;->itemCount:I

    return v0
.end method

.method public getQualitativeFlag()I
    .locals 1

    .line 268
    iget v0, p0, Lgiven/tronho/api/IDChipDataLib;->qualitativeFlag:I

    return v0
.end method

.method public getRushTopFlag()I
    .locals 1

    .line 252
    iget v0, p0, Lgiven/tronho/api/IDChipDataLib;->rushTopFlag:I

    return v0
.end method

.method public getRushTopName()I
    .locals 1

    .line 244
    iget v0, p0, Lgiven/tronho/api/IDChipDataLib;->rushTopName:I

    return v0
.end method

.method public getRushTopValue()I
    .locals 1

    .line 260
    iget v0, p0, Lgiven/tronho/api/IDChipDataLib;->rushTopValue:I

    return v0
.end method

.method public getT1End()S
    .locals 1

    .line 68
    iget-short v0, p0, Lgiven/tronho/api/IDChipDataLib;->T1End:S

    return v0
.end method

.method public getT1Start()S
    .locals 1

    .line 60
    iget-short v0, p0, Lgiven/tronho/api/IDChipDataLib;->T1Start:S

    return v0
.end method

.method public getT2End()S
    .locals 1

    .line 84
    iget-short v0, p0, Lgiven/tronho/api/IDChipDataLib;->T2End:S

    return v0
.end method

.method public getT2Start()S
    .locals 1

    .line 76
    iget-short v0, p0, Lgiven/tronho/api/IDChipDataLib;->T2Start:S

    return v0
.end method

.method public getUiPeakArithmetic()I
    .locals 1

    .line 236
    iget v0, p0, Lgiven/tronho/api/IDChipDataLib;->uiPeakArithmetic:I

    return v0
.end method

.method public getUiValueCount1()I
    .locals 1

    .line 196
    iget v0, p0, Lgiven/tronho/api/IDChipDataLib;->uiValueCount1:I

    return v0
.end method

.method public getUiValueCount2()I
    .locals 1

    .line 204
    iget v0, p0, Lgiven/tronho/api/IDChipDataLib;->uiValueCount2:I

    return v0
.end method

.method public getUiValueCount3()I
    .locals 1

    .line 212
    iget v0, p0, Lgiven/tronho/api/IDChipDataLib;->uiValueCount3:I

    return v0
.end method

.method public getUiValueCount4()I
    .locals 1

    .line 220
    iget v0, p0, Lgiven/tronho/api/IDChipDataLib;->uiValueCount4:I

    return v0
.end method

.method public getUiValueCountC()I
    .locals 1

    .line 124
    iget v0, p0, Lgiven/tronho/api/IDChipDataLib;->uiValueCountC:I

    return v0
.end method

.method public getUiValueCountT1()I
    .locals 1

    .line 108
    iget v0, p0, Lgiven/tronho/api/IDChipDataLib;->uiValueCountT1:I

    return v0
.end method

.method public getUiValueCountT2()I
    .locals 1

    .line 116
    iget v0, p0, Lgiven/tronho/api/IDChipDataLib;->uiValueCountT2:I

    return v0
.end method

.method public getX1End()S
    .locals 1

    .line 140
    iget-short v0, p0, Lgiven/tronho/api/IDChipDataLib;->X1End:S

    return v0
.end method

.method public getX1Start()S
    .locals 1

    .line 132
    iget-short v0, p0, Lgiven/tronho/api/IDChipDataLib;->X1Start:S

    return v0
.end method

.method public getX2End()S
    .locals 1

    .line 156
    iget-short v0, p0, Lgiven/tronho/api/IDChipDataLib;->X2End:S

    return v0
.end method

.method public getX2Start()S
    .locals 1

    .line 148
    iget-short v0, p0, Lgiven/tronho/api/IDChipDataLib;->X2Start:S

    return v0
.end method

.method public getX3End()S
    .locals 1

    .line 172
    iget-short v0, p0, Lgiven/tronho/api/IDChipDataLib;->X3End:S

    return v0
.end method

.method public getX3Start()S
    .locals 1

    .line 164
    iget-short v0, p0, Lgiven/tronho/api/IDChipDataLib;->X3Start:S

    return v0
.end method

.method public getX4End()S
    .locals 1

    .line 188
    iget-short v0, p0, Lgiven/tronho/api/IDChipDataLib;->X4End:S

    return v0
.end method

.method public getX4Start()S
    .locals 1

    .line 180
    iget-short v0, p0, Lgiven/tronho/api/IDChipDataLib;->X4Start:S

    return v0
.end method

.method public setAddSampleFlag(I)V
    .locals 0
    .param p1, "addSampleFlag"    # I

    .line 304
    iput p1, p0, Lgiven/tronho/api/IDChipDataLib;->addSampleFlag:I

    .line 305
    return-void
.end method

.method public setAddSampleName(I)V
    .locals 0
    .param p1, "addSampleName"    # I

    .line 296
    iput p1, p0, Lgiven/tronho/api/IDChipDataLib;->addSampleName:I

    .line 297
    return-void
.end method

.method public setAddSampleValue(I)V
    .locals 0
    .param p1, "addSampleValue"    # I

    .line 312
    iput p1, p0, Lgiven/tronho/api/IDChipDataLib;->addSampleValue:I

    .line 313
    return-void
.end method

.method public setCEnd(S)V
    .locals 0
    .param p1, "CEnd"    # S

    .line 104
    iput-short p1, p0, Lgiven/tronho/api/IDChipDataLib;->CEnd:S

    .line 105
    return-void
.end method

.method public setCStart(S)V
    .locals 0
    .param p1, "CStart"    # S

    .line 96
    iput-short p1, p0, Lgiven/tronho/api/IDChipDataLib;->CStart:S

    .line 97
    return-void
.end method

.method public setCutBackground(S)V
    .locals 0
    .param p1, "cutBackground"    # S

    .line 232
    iput-short p1, p0, Lgiven/tronho/api/IDChipDataLib;->cutBackground:S

    .line 233
    return-void
.end method

.method public setIdChipItems(Lgiven/tronho/api/IDChipItemLib;)V
    .locals 0
    .param p1, "idChipItems"    # Lgiven/tronho/api/IDChipItemLib;

    .line 320
    iput-object p1, p0, Lgiven/tronho/api/IDChipDataLib;->idChipItems:Lgiven/tronho/api/IDChipItemLib;

    .line 321
    return-void
.end method

.method public setIdChipItems2(Lgiven/tronho/api/IDChipItemLib;)V
    .locals 0
    .param p1, "idChipItems2"    # Lgiven/tronho/api/IDChipItemLib;

    .line 328
    iput-object p1, p0, Lgiven/tronho/api/IDChipDataLib;->idChipItems2:Lgiven/tronho/api/IDChipItemLib;

    .line 329
    return-void
.end method

.method public setIdChipItems3(Lgiven/tronho/api/IDChipItemLib;)V
    .locals 0
    .param p1, "idChipItems3"    # Lgiven/tronho/api/IDChipItemLib;

    .line 336
    iput-object p1, p0, Lgiven/tronho/api/IDChipDataLib;->idChipItems3:Lgiven/tronho/api/IDChipItemLib;

    .line 337
    return-void
.end method

.method public setIsShowConclusion(I)V
    .locals 0
    .param p1, "isShowConclusion"    # I

    .line 288
    iput p1, p0, Lgiven/tronho/api/IDChipDataLib;->isShowConclusion:I

    .line 289
    return-void
.end method

.method public setIsShowResult(I)V
    .locals 0
    .param p1, "isShowResult"    # I

    .line 280
    iput p1, p0, Lgiven/tronho/api/IDChipDataLib;->isShowResult:I

    .line 281
    return-void
.end method

.method public setItemCount(I)V
    .locals 0
    .param p1, "itemCount"    # I

    .line 56
    iput p1, p0, Lgiven/tronho/api/IDChipDataLib;->itemCount:I

    .line 57
    return-void
.end method

.method public setQualitativeFlag(I)V
    .locals 0
    .param p1, "qualitativeFlag"    # I

    .line 272
    iput p1, p0, Lgiven/tronho/api/IDChipDataLib;->qualitativeFlag:I

    .line 273
    return-void
.end method

.method public setRushTopFlag(I)V
    .locals 0
    .param p1, "rushTopFlag"    # I

    .line 256
    iput p1, p0, Lgiven/tronho/api/IDChipDataLib;->rushTopFlag:I

    .line 257
    return-void
.end method

.method public setRushTopName(I)V
    .locals 0
    .param p1, "rushTopName"    # I

    .line 248
    iput p1, p0, Lgiven/tronho/api/IDChipDataLib;->rushTopName:I

    .line 249
    return-void
.end method

.method public setRushTopValue(I)V
    .locals 0
    .param p1, "rushTopValue"    # I

    .line 264
    iput p1, p0, Lgiven/tronho/api/IDChipDataLib;->rushTopValue:I

    .line 265
    return-void
.end method

.method public setT1End(S)V
    .locals 0
    .param p1, "t1End"    # S

    .line 72
    iput-short p1, p0, Lgiven/tronho/api/IDChipDataLib;->T1End:S

    .line 73
    return-void
.end method

.method public setT1Start(S)V
    .locals 0
    .param p1, "t1Start"    # S

    .line 64
    iput-short p1, p0, Lgiven/tronho/api/IDChipDataLib;->T1Start:S

    .line 65
    return-void
.end method

.method public setT2End(S)V
    .locals 0
    .param p1, "t2End"    # S

    .line 88
    iput-short p1, p0, Lgiven/tronho/api/IDChipDataLib;->T2End:S

    .line 89
    return-void
.end method

.method public setT2Start(S)V
    .locals 0
    .param p1, "t2Start"    # S

    .line 80
    iput-short p1, p0, Lgiven/tronho/api/IDChipDataLib;->T2Start:S

    .line 81
    return-void
.end method

.method public setUiPeakArithmetic(I)V
    .locals 0
    .param p1, "uiPeakArithmetic"    # I

    .line 240
    iput p1, p0, Lgiven/tronho/api/IDChipDataLib;->uiPeakArithmetic:I

    .line 241
    return-void
.end method

.method public setUiValueCount1(I)V
    .locals 0
    .param p1, "uiValueCount1"    # I

    .line 200
    iput p1, p0, Lgiven/tronho/api/IDChipDataLib;->uiValueCount1:I

    .line 201
    return-void
.end method

.method public setUiValueCount2(I)V
    .locals 0
    .param p1, "uiValueCount2"    # I

    .line 208
    iput p1, p0, Lgiven/tronho/api/IDChipDataLib;->uiValueCount2:I

    .line 209
    return-void
.end method

.method public setUiValueCount3(I)V
    .locals 0
    .param p1, "uiValueCount3"    # I

    .line 216
    iput p1, p0, Lgiven/tronho/api/IDChipDataLib;->uiValueCount3:I

    .line 217
    return-void
.end method

.method public setUiValueCount4(I)V
    .locals 0
    .param p1, "uiValueCount4"    # I

    .line 224
    iput p1, p0, Lgiven/tronho/api/IDChipDataLib;->uiValueCount4:I

    .line 225
    return-void
.end method

.method public setUiValueCountC(I)V
    .locals 0
    .param p1, "uiValueCountC"    # I

    .line 128
    iput p1, p0, Lgiven/tronho/api/IDChipDataLib;->uiValueCountC:I

    .line 129
    return-void
.end method

.method public setUiValueCountT1(I)V
    .locals 0
    .param p1, "uiValueCountT1"    # I

    .line 112
    iput p1, p0, Lgiven/tronho/api/IDChipDataLib;->uiValueCountT1:I

    .line 113
    return-void
.end method

.method public setUiValueCountT2(I)V
    .locals 0
    .param p1, "uiValueCountT2"    # I

    .line 120
    iput p1, p0, Lgiven/tronho/api/IDChipDataLib;->uiValueCountT2:I

    .line 121
    return-void
.end method

.method public setX1End(S)V
    .locals 0
    .param p1, "x1End"    # S

    .line 144
    iput-short p1, p0, Lgiven/tronho/api/IDChipDataLib;->X1End:S

    .line 145
    return-void
.end method

.method public setX1Start(S)V
    .locals 0
    .param p1, "x1Start"    # S

    .line 136
    iput-short p1, p0, Lgiven/tronho/api/IDChipDataLib;->X1Start:S

    .line 137
    return-void
.end method

.method public setX2End(S)V
    .locals 0
    .param p1, "x2End"    # S

    .line 160
    iput-short p1, p0, Lgiven/tronho/api/IDChipDataLib;->X2End:S

    .line 161
    return-void
.end method

.method public setX2Start(S)V
    .locals 0
    .param p1, "x2Start"    # S

    .line 152
    iput-short p1, p0, Lgiven/tronho/api/IDChipDataLib;->X2Start:S

    .line 153
    return-void
.end method

.method public setX3End(S)V
    .locals 0
    .param p1, "x3End"    # S

    .line 176
    iput-short p1, p0, Lgiven/tronho/api/IDChipDataLib;->X3End:S

    .line 177
    return-void
.end method

.method public setX3Start(S)V
    .locals 0
    .param p1, "x3Start"    # S

    .line 168
    iput-short p1, p0, Lgiven/tronho/api/IDChipDataLib;->X3Start:S

    .line 169
    return-void
.end method

.method public setX4End(S)V
    .locals 0
    .param p1, "x4End"    # S

    .line 192
    iput-short p1, p0, Lgiven/tronho/api/IDChipDataLib;->X4End:S

    .line 193
    return-void
.end method

.method public setX4Start(S)V
    .locals 0
    .param p1, "x4Start"    # S

    .line 184
    iput-short p1, p0, Lgiven/tronho/api/IDChipDataLib;->X4Start:S

    .line 185
    return-void
.end method
