.class public Lcom/wen/fluorescence/database/TestResult;
.super Ljava/lang/Object;
.source "TestResult.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private ID:I

.field private IsShowConclusion:I

.field private age:I

.field private appId:Ljava/lang/String;

.field private bedNumber:Ljava/lang/String;

.field private doctorNumber:Ljava/lang/String;

.field private holder1:D

.field private holder2:Ljava/lang/String;

.field private holder3:Ljava/lang/String;

.field private holder4:Ljava/lang/String;

.field private holder5:Ljava/lang/String;

.field private holder6:Ljava/lang/String;

.field private iValid:I

.field private inspectingDoctor:Ljava/lang/String;

.field private inspectingTime:Ljava/lang/String;

.field private isSelect:Z

.field private isShowResult:I

.field private item:Ljava/lang/String;

.field private itemTitle:Ljava/lang/String;

.field private itemcount:Ljava/lang/String;

.field private level:I

.field private logNo:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private note:Ljava/lang/String;

.field private patientNumber:Ljava/lang/String;

.field private qualitativeFlag:I

.field private qualitativeVerdict:Ljava/lang/String;

.field private reItem:Ljava/lang/String;

.field private reResult:Ljava/lang/String;

.field private result:Ljava/lang/String;

.field private reviewer:Ljava/lang/String;

.field private sampleNumber:Ljava/lang/String;

.field private serialNumber:Ljava/lang/String;

.field private sex:I

.field private simpleType:Ljava/lang/String;

.field private submittingDivision:Ljava/lang/String;

.field private submittingDoctor:Ljava/lang/String;

.field private submittingTime:Ljava/lang/String;

.field private testMode:I

.field private testTemp:D

.field private testTime:Ljava/lang/String;

.field private unit:Ljava/lang/String;

.field private uploadStatus:I

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/wen/fluorescence/database/TestResult;->ID:I

    .line 17
    const-string v1, ""

    iput-object v1, p0, Lcom/wen/fluorescence/database/TestResult;->serialNumber:Ljava/lang/String;

    .line 18
    const-string v1, ""

    iput-object v1, p0, Lcom/wen/fluorescence/database/TestResult;->name:Ljava/lang/String;

    .line 19
    const-string v1, ""

    iput-object v1, p0, Lcom/wen/fluorescence/database/TestResult;->sampleNumber:Ljava/lang/String;

    .line 20
    const-string v1, ""

    iput-object v1, p0, Lcom/wen/fluorescence/database/TestResult;->logNo:Ljava/lang/String;

    .line 21
    const-string v1, ""

    iput-object v1, p0, Lcom/wen/fluorescence/database/TestResult;->bedNumber:Ljava/lang/String;

    .line 22
    const-string v1, ""

    iput-object v1, p0, Lcom/wen/fluorescence/database/TestResult;->patientNumber:Ljava/lang/String;

    .line 23
    const-string v1, ""

    iput-object v1, p0, Lcom/wen/fluorescence/database/TestResult;->doctorNumber:Ljava/lang/String;

    .line 24
    const-string v1, ""

    iput-object v1, p0, Lcom/wen/fluorescence/database/TestResult;->itemTitle:Ljava/lang/String;

    .line 25
    const-string v1, ""

    iput-object v1, p0, Lcom/wen/fluorescence/database/TestResult;->simpleType:Ljava/lang/String;

    .line 26
    const-string v1, ""

    iput-object v1, p0, Lcom/wen/fluorescence/database/TestResult;->submittingDivision:Ljava/lang/String;

    .line 27
    const-string v1, ""

    iput-object v1, p0, Lcom/wen/fluorescence/database/TestResult;->submittingDoctor:Ljava/lang/String;

    .line 28
    const-string v1, ""

    iput-object v1, p0, Lcom/wen/fluorescence/database/TestResult;->submittingTime:Ljava/lang/String;

    .line 29
    const-string v1, ""

    iput-object v1, p0, Lcom/wen/fluorescence/database/TestResult;->inspectingDoctor:Ljava/lang/String;

    .line 30
    const-string v1, ""

    iput-object v1, p0, Lcom/wen/fluorescence/database/TestResult;->inspectingTime:Ljava/lang/String;

    .line 31
    const-string v1, ""

    iput-object v1, p0, Lcom/wen/fluorescence/database/TestResult;->reviewer:Ljava/lang/String;

    .line 32
    const-string v1, ""

    iput-object v1, p0, Lcom/wen/fluorescence/database/TestResult;->note:Ljava/lang/String;

    .line 36
    const-string v1, ""

    iput-object v1, p0, Lcom/wen/fluorescence/database/TestResult;->testTime:Ljava/lang/String;

    .line 37
    const-string v1, ""

    iput-object v1, p0, Lcom/wen/fluorescence/database/TestResult;->result:Ljava/lang/String;

    .line 38
    const-string v1, ""

    iput-object v1, p0, Lcom/wen/fluorescence/database/TestResult;->item:Ljava/lang/String;

    .line 39
    const-string v1, ""

    iput-object v1, p0, Lcom/wen/fluorescence/database/TestResult;->unit:Ljava/lang/String;

    .line 44
    const-string v1, ""

    iput-object v1, p0, Lcom/wen/fluorescence/database/TestResult;->itemcount:Ljava/lang/String;

    .line 50
    iput v0, p0, Lcom/wen/fluorescence/database/TestResult;->level:I

    .line 56
    iput-boolean v0, p0, Lcom/wen/fluorescence/database/TestResult;->isSelect:Z

    return-void
.end method


# virtual methods
.method public clone()Lcom/wen/fluorescence/database/TestResult;
    .locals 1

    .line 306
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wen/fluorescence/database/TestResult;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 311
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->clone()Lcom/wen/fluorescence/database/TestResult;

    move-result-object v0

    return-object v0
.end method

.method public getAge()I
    .locals 1

    .line 256
    iget v0, p0, Lcom/wen/fluorescence/database/TestResult;->age:I

    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/wen/fluorescence/database/TestResult;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getBedNumber()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/wen/fluorescence/database/TestResult;->bedNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getDoctorNumber()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/wen/fluorescence/database/TestResult;->doctorNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getHolder1()D
    .locals 2

    .line 390
    iget-wide v0, p0, Lcom/wen/fluorescence/database/TestResult;->holder1:D

    return-wide v0
.end method

.method public getHolder2()Ljava/lang/String;
    .locals 1

    .line 398
    iget v0, p0, Lcom/wen/fluorescence/database/TestResult;->isShowResult:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wen/fluorescence/database/TestResult;->holder2:Ljava/lang/String;

    .line 399
    iget-object v0, p0, Lcom/wen/fluorescence/database/TestResult;->holder2:Ljava/lang/String;

    return-object v0
.end method

.method public getHolder3()Ljava/lang/String;
    .locals 1

    .line 409
    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getIsShowConclusion()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wen/fluorescence/database/TestResult;->holder3:Ljava/lang/String;

    .line 410
    iget-object v0, p0, Lcom/wen/fluorescence/database/TestResult;->holder3:Ljava/lang/String;

    return-object v0
.end method

.method public getHolder4()Ljava/lang/String;
    .locals 1

    .line 420
    iget v0, p0, Lcom/wen/fluorescence/database/TestResult;->iValid:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wen/fluorescence/database/TestResult;->holder4:Ljava/lang/String;

    .line 421
    iget-object v0, p0, Lcom/wen/fluorescence/database/TestResult;->holder4:Ljava/lang/String;

    return-object v0
.end method

.method public getHolder5()Ljava/lang/String;
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/wen/fluorescence/database/TestResult;->holder5:Ljava/lang/String;

    return-object v0
.end method

.method public getHolder6()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/wen/fluorescence/database/TestResult;->holder6:Ljava/lang/String;

    return-object v0
.end method

.method public getID()I
    .locals 1

    .line 340
    iget v0, p0, Lcom/wen/fluorescence/database/TestResult;->ID:I

    return v0
.end method

.method public getInspectingDoctor()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/wen/fluorescence/database/TestResult;->inspectingDoctor:Ljava/lang/String;

    return-object v0
.end method

.method public getInspectingTime()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/wen/fluorescence/database/TestResult;->inspectingTime:Ljava/lang/String;

    return-object v0
.end method

.method public getIsShowConclusion()I
    .locals 1

    .line 374
    iget v0, p0, Lcom/wen/fluorescence/database/TestResult;->IsShowConclusion:I

    return v0
.end method

.method public getIsShowResult()I
    .locals 1

    .line 366
    iget v0, p0, Lcom/wen/fluorescence/database/TestResult;->isShowResult:I

    return v0
.end method

.method public getItem()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/wen/fluorescence/database/TestResult;->item:Ljava/lang/String;

    return-object v0
.end method

.method public getItemTitle()Ljava/lang/String;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/wen/fluorescence/database/TestResult;->itemTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getItemcount()Ljava/lang/String;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/wen/fluorescence/database/TestResult;->itemcount:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    .line 349
    iget v0, p0, Lcom/wen/fluorescence/database/TestResult;->level:I

    return v0
.end method

.method public getLogNo()Ljava/lang/String;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/wen/fluorescence/database/TestResult;->logNo:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/wen/fluorescence/database/TestResult;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNote()Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/wen/fluorescence/database/TestResult;->note:Ljava/lang/String;

    return-object v0
.end method

.method public getPatientNumber()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/wen/fluorescence/database/TestResult;->patientNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getQualitativeFlag()I
    .locals 1

    .line 358
    iget v0, p0, Lcom/wen/fluorescence/database/TestResult;->qualitativeFlag:I

    return v0
.end method

.method public getQualitativeVerdict()Ljava/lang/String;
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/wen/fluorescence/database/TestResult;->qualitativeVerdict:Ljava/lang/String;

    return-object v0
.end method

.method public getReItem()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/wen/fluorescence/database/TestResult;->reItem:Ljava/lang/String;

    return-object v0
.end method

.method public getReResult()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/wen/fluorescence/database/TestResult;->reResult:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/wen/fluorescence/database/TestResult;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getReviewer()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/wen/fluorescence/database/TestResult;->reviewer:Ljava/lang/String;

    return-object v0
.end method

.method public getSampleNumber()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/wen/fluorescence/database/TestResult;->sampleNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/wen/fluorescence/database/TestResult;->serialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSex()I
    .locals 1

    .line 248
    iget v0, p0, Lcom/wen/fluorescence/database/TestResult;->sex:I

    return v0
.end method

.method public getSimpleType()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/wen/fluorescence/database/TestResult;->simpleType:Ljava/lang/String;

    return-object v0
.end method

.method public getSubmittingDivision()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/wen/fluorescence/database/TestResult;->submittingDivision:Ljava/lang/String;

    return-object v0
.end method

.method public getSubmittingDoctor()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/wen/fluorescence/database/TestResult;->submittingDoctor:Ljava/lang/String;

    return-object v0
.end method

.method public getSubmittingTime()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/wen/fluorescence/database/TestResult;->submittingTime:Ljava/lang/String;

    return-object v0
.end method

.method public getTestMode()I
    .locals 1

    .line 331
    iget v0, p0, Lcom/wen/fluorescence/database/TestResult;->testMode:I

    return v0
.end method

.method public getTestTemp()D
    .locals 2

    .line 323
    iget-wide v0, p0, Lcom/wen/fluorescence/database/TestResult;->testTemp:D

    return-wide v0
.end method

.method public getTestTime()Ljava/lang/String;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/wen/fluorescence/database/TestResult;->testTime:Ljava/lang/String;

    return-object v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/wen/fluorescence/database/TestResult;->unit:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadStatus()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/wen/fluorescence/database/TestResult;->uploadStatus:I

    return v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/wen/fluorescence/database/TestResult;->user:Ljava/lang/String;

    return-object v0
.end method

.method public getiValid()I
    .locals 1

    .line 438
    iget v0, p0, Lcom/wen/fluorescence/database/TestResult;->iValid:I

    return v0
.end method

.method public isSelect()Z
    .locals 1

    .line 272
    iget-boolean v0, p0, Lcom/wen/fluorescence/database/TestResult;->isSelect:Z

    return v0
.end method

.method public setAge(I)V
    .locals 0
    .param p1, "age"    # I

    .line 260
    iput p1, p0, Lcom/wen/fluorescence/database/TestResult;->age:I

    .line 261
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .line 99
    iput-object p1, p0, Lcom/wen/fluorescence/database/TestResult;->appId:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setBedNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "bedNumber"    # Ljava/lang/String;

    .line 180
    iput-object p1, p0, Lcom/wen/fluorescence/database/TestResult;->bedNumber:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setDoctorNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "doctorNumber"    # Ljava/lang/String;

    .line 172
    iput-object p1, p0, Lcom/wen/fluorescence/database/TestResult;->doctorNumber:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setHolder1(D)V
    .locals 0
    .param p1, "holder1"    # D

    .line 394
    iput-wide p1, p0, Lcom/wen/fluorescence/database/TestResult;->holder1:D

    .line 395
    return-void
.end method

.method public setHolder2(Ljava/lang/String;)V
    .locals 1
    .param p1, "holder2"    # Ljava/lang/String;

    .line 403
    iput-object p1, p0, Lcom/wen/fluorescence/database/TestResult;->holder2:Ljava/lang/String;

    .line 404
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/wen/fluorescence/database/TestResult;->isShowResult:I

    .line 406
    :cond_0
    return-void
.end method

.method public setHolder3(Ljava/lang/String;)V
    .locals 1
    .param p1, "holder3"    # Ljava/lang/String;

    .line 414
    iput-object p1, p0, Lcom/wen/fluorescence/database/TestResult;->holder3:Ljava/lang/String;

    .line 415
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/database/TestResult;->setIsShowConclusion(I)V

    .line 417
    :cond_0
    return-void
.end method

.method public setHolder4(Ljava/lang/String;)V
    .locals 1
    .param p1, "holder4"    # Ljava/lang/String;

    .line 425
    iput-object p1, p0, Lcom/wen/fluorescence/database/TestResult;->holder4:Ljava/lang/String;

    .line 426
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 428
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/wen/fluorescence/database/TestResult;->iValid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 431
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 433
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/wen/fluorescence/database/TestResult;->iValid:I

    .line 435
    :goto_1
    return-void
.end method

.method public setHolder5(Ljava/lang/String;)V
    .locals 0
    .param p1, "holder5"    # Ljava/lang/String;

    .line 450
    iput-object p1, p0, Lcom/wen/fluorescence/database/TestResult;->holder5:Ljava/lang/String;

    .line 451
    return-void
.end method

.method public setHolder6(Ljava/lang/String;)V
    .locals 0
    .param p1, "holder6"    # Ljava/lang/String;

    .line 91
    iput-object p1, p0, Lcom/wen/fluorescence/database/TestResult;->holder6:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setID(I)V
    .locals 0
    .param p1, "ID"    # I

    .line 344
    iput p1, p0, Lcom/wen/fluorescence/database/TestResult;->ID:I

    .line 345
    return-void
.end method

.method public setInspectingDoctor(Ljava/lang/String;)V
    .locals 0
    .param p1, "inspectingDoctor"    # Ljava/lang/String;

    .line 220
    iput-object p1, p0, Lcom/wen/fluorescence/database/TestResult;->inspectingDoctor:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setInspectingTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "inspectingTime"    # Ljava/lang/String;

    .line 228
    iput-object p1, p0, Lcom/wen/fluorescence/database/TestResult;->inspectingTime:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public setIsShowConclusion(I)V
    .locals 0
    .param p1, "isShowConclusion"    # I

    .line 378
    iput p1, p0, Lcom/wen/fluorescence/database/TestResult;->IsShowConclusion:I

    .line 379
    return-void
.end method

.method public setIsShowResult(I)V
    .locals 0
    .param p1, "isShowResult"    # I

    .line 370
    iput p1, p0, Lcom/wen/fluorescence/database/TestResult;->isShowResult:I

    .line 371
    return-void
.end method

.method public setItem(Ljava/lang/String;)V
    .locals 0
    .param p1, "item"    # Ljava/lang/String;

    .line 147
    iput-object p1, p0, Lcom/wen/fluorescence/database/TestResult;->item:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setItemTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemTitle"    # Ljava/lang/String;

    .line 284
    iput-object p1, p0, Lcom/wen/fluorescence/database/TestResult;->itemTitle:Ljava/lang/String;

    .line 285
    return-void
.end method

.method public setItemcount(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemcount"    # Ljava/lang/String;

    .line 300
    iput-object p1, p0, Lcom/wen/fluorescence/database/TestResult;->itemcount:Ljava/lang/String;

    .line 301
    return-void
.end method

.method public setLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .line 353
    iput p1, p0, Lcom/wen/fluorescence/database/TestResult;->level:I

    .line 354
    return-void
.end method

.method public setLogNo(Ljava/lang/String;)V
    .locals 0
    .param p1, "logNo"    # Ljava/lang/String;

    .line 319
    iput-object p1, p0, Lcom/wen/fluorescence/database/TestResult;->logNo:Ljava/lang/String;

    .line 320
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 164
    iput-object p1, p0, Lcom/wen/fluorescence/database/TestResult;->name:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setNote(Ljava/lang/String;)V
    .locals 0
    .param p1, "note"    # Ljava/lang/String;

    .line 244
    iput-object p1, p0, Lcom/wen/fluorescence/database/TestResult;->note:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public setPatientNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "patientNumber"    # Ljava/lang/String;

    .line 188
    iput-object p1, p0, Lcom/wen/fluorescence/database/TestResult;->patientNumber:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setQualitativeFlag(I)V
    .locals 0
    .param p1, "qualitativeFlag"    # I

    .line 362
    iput p1, p0, Lcom/wen/fluorescence/database/TestResult;->qualitativeFlag:I

    .line 363
    return-void
.end method

.method public setQualitativeVerdict(Ljava/lang/String;)V
    .locals 0
    .param p1, "qualitativeVerdict"    # Ljava/lang/String;

    .line 386
    iput-object p1, p0, Lcom/wen/fluorescence/database/TestResult;->qualitativeVerdict:Ljava/lang/String;

    .line 387
    return-void
.end method

.method public setReItem(Ljava/lang/String;)V
    .locals 0
    .param p1, "reItem"    # Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lcom/wen/fluorescence/database/TestResult;->reItem:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setReResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "reResult"    # Ljava/lang/String;

    .line 83
    iput-object p1, p0, Lcom/wen/fluorescence/database/TestResult;->reResult:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .line 123
    iput-object p1, p0, Lcom/wen/fluorescence/database/TestResult;->result:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setReviewer(Ljava/lang/String;)V
    .locals 0
    .param p1, "reviewer"    # Ljava/lang/String;

    .line 236
    iput-object p1, p0, Lcom/wen/fluorescence/database/TestResult;->reviewer:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setSampleNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "sampleNumber"    # Ljava/lang/String;

    .line 139
    iput-object p1, p0, Lcom/wen/fluorescence/database/TestResult;->sampleNumber:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setSelect(Z)V
    .locals 0
    .param p1, "isSelect"    # Z

    .line 276
    iput-boolean p1, p0, Lcom/wen/fluorescence/database/TestResult;->isSelect:Z

    .line 277
    return-void
.end method

.method public setSerialNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "serialNumber"    # Ljava/lang/String;

    .line 131
    iput-object p1, p0, Lcom/wen/fluorescence/database/TestResult;->serialNumber:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setSex(I)V
    .locals 0
    .param p1, "sex"    # I

    .line 252
    iput p1, p0, Lcom/wen/fluorescence/database/TestResult;->sex:I

    .line 253
    return-void
.end method

.method public setSimpleType(Ljava/lang/String;)V
    .locals 0
    .param p1, "simpleType"    # Ljava/lang/String;

    .line 156
    iput-object p1, p0, Lcom/wen/fluorescence/database/TestResult;->simpleType:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setSubmittingDivision(Ljava/lang/String;)V
    .locals 0
    .param p1, "submittingDivision"    # Ljava/lang/String;

    .line 196
    iput-object p1, p0, Lcom/wen/fluorescence/database/TestResult;->submittingDivision:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setSubmittingDoctor(Ljava/lang/String;)V
    .locals 0
    .param p1, "submittingDoctor"    # Ljava/lang/String;

    .line 204
    iput-object p1, p0, Lcom/wen/fluorescence/database/TestResult;->submittingDoctor:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setSubmittingTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "submittingTime"    # Ljava/lang/String;

    .line 212
    iput-object p1, p0, Lcom/wen/fluorescence/database/TestResult;->submittingTime:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setTestMode(I)V
    .locals 0
    .param p1, "testMode"    # I

    .line 335
    iput p1, p0, Lcom/wen/fluorescence/database/TestResult;->testMode:I

    .line 336
    return-void
.end method

.method public setTestTemp(D)V
    .locals 0
    .param p1, "testTemp"    # D

    .line 327
    iput-wide p1, p0, Lcom/wen/fluorescence/database/TestResult;->testTemp:D

    .line 328
    return-void
.end method

.method public setTestTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "testTime"    # Ljava/lang/String;

    .line 268
    iput-object p1, p0, Lcom/wen/fluorescence/database/TestResult;->testTime:Ljava/lang/String;

    .line 269
    return-void
.end method

.method public setUnit(Ljava/lang/String;)V
    .locals 0
    .param p1, "unit"    # Ljava/lang/String;

    .line 292
    iput-object p1, p0, Lcom/wen/fluorescence/database/TestResult;->unit:Ljava/lang/String;

    .line 293
    return-void
.end method

.method public setUploadStatus(I)V
    .locals 0
    .param p1, "uploadStatus"    # I

    .line 107
    iput p1, p0, Lcom/wen/fluorescence/database/TestResult;->uploadStatus:I

    .line 108
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0
    .param p1, "user"    # Ljava/lang/String;

    .line 115
    iput-object p1, p0, Lcom/wen/fluorescence/database/TestResult;->user:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setiValid(I)V
    .locals 0
    .param p1, "iValid"    # I

    .line 442
    iput p1, p0, Lcom/wen/fluorescence/database/TestResult;->iValid:I

    .line 443
    return-void
.end method
