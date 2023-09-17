.class public Lcom/wen/fluorescence/database/TestResultCondition;
.super Ljava/lang/Object;
.source "TestResultCondition.java"


# instance fields
.field private endTime:Ljava/lang/String;

.field private limit:I

.field private name:Ljava/lang/String;

.field private offset:I

.field private operator:Ljava/lang/String;

.field private patientNo:Ljava/lang/String;

.field private sampleNumber:Ljava/lang/String;

.field private startTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/database/TestResultCondition;->sampleNumber:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/database/TestResultCondition;->name:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/database/TestResultCondition;->startTime:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/database/TestResultCondition;->endTime:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/database/TestResultCondition;->patientNo:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/database/TestResultCondition;->operator:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEndTime()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/wen/fluorescence/database/TestResultCondition;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/wen/fluorescence/database/TestResultCondition;->limit:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/wen/fluorescence/database/TestResultCondition;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/wen/fluorescence/database/TestResultCondition;->offset:I

    return v0
.end method

.method public getOperator()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/wen/fluorescence/database/TestResultCondition;->operator:Ljava/lang/String;

    return-object v0
.end method

.method public getPatientNo()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/wen/fluorescence/database/TestResultCondition;->patientNo:Ljava/lang/String;

    return-object v0
.end method

.method public getSampleNumber()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/wen/fluorescence/database/TestResultCondition;->sampleNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/wen/fluorescence/database/TestResultCondition;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "endTime"    # Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/wen/fluorescence/database/TestResultCondition;->endTime:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setLimit(I)V
    .locals 0
    .param p1, "limit"    # I

    .line 73
    iput p1, p0, Lcom/wen/fluorescence/database/TestResultCondition;->limit:I

    .line 74
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/wen/fluorescence/database/TestResultCondition;->name:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .line 81
    iput p1, p0, Lcom/wen/fluorescence/database/TestResultCondition;->offset:I

    .line 82
    return-void
.end method

.method public setOperator(Ljava/lang/String;)V
    .locals 0
    .param p1, "operator"    # Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/wen/fluorescence/database/TestResultCondition;->operator:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setPatientNo(Ljava/lang/String;)V
    .locals 0
    .param p1, "patientNo"    # Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/wen/fluorescence/database/TestResultCondition;->patientNo:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setSampleNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "sampleNumber"    # Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/wen/fluorescence/database/TestResultCondition;->sampleNumber:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "startTime"    # Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/wen/fluorescence/database/TestResultCondition;->startTime:Ljava/lang/String;

    .line 57
    return-void
.end method
