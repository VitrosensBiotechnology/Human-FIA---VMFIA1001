.class public Lcom/wen/fluorescence/bean/TestResultSend;
.super Ljava/lang/Object;
.source "TestResultSend.java"


# instance fields
.field private max:Ljava/lang/String;

.field private min:Ljava/lang/String;

.field private tc:D

.field private testResult:Lcom/wen/fluorescence/database/TestResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/bean/TestResultSend;->min:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/bean/TestResultSend;->max:Ljava/lang/String;

    .line 14
    new-instance v0, Lcom/wen/fluorescence/database/TestResult;

    invoke-direct {v0}, Lcom/wen/fluorescence/database/TestResult;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/bean/TestResultSend;->testResult:Lcom/wen/fluorescence/database/TestResult;

    .line 15
    return-void
.end method


# virtual methods
.method public getMax()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/wen/fluorescence/bean/TestResultSend;->max:Ljava/lang/String;

    return-object v0
.end method

.method public getMin()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/wen/fluorescence/bean/TestResultSend;->min:Ljava/lang/String;

    return-object v0
.end method

.method public getTc()D
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/wen/fluorescence/bean/TestResultSend;->tc:D

    return-wide v0
.end method

.method public getTestResult()Lcom/wen/fluorescence/database/TestResult;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/wen/fluorescence/bean/TestResultSend;->testResult:Lcom/wen/fluorescence/database/TestResult;

    return-object v0
.end method

.method public setMax(Ljava/lang/String;)V
    .locals 0
    .param p1, "max"    # Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/wen/fluorescence/bean/TestResultSend;->max:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setMin(Ljava/lang/String;)V
    .locals 0
    .param p1, "min"    # Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/wen/fluorescence/bean/TestResultSend;->min:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setTc(D)V
    .locals 0
    .param p1, "tc"    # D

    .line 30
    iput-wide p1, p0, Lcom/wen/fluorescence/bean/TestResultSend;->tc:D

    .line 31
    return-void
.end method

.method public setTestResult(Lcom/wen/fluorescence/database/TestResult;)V
    .locals 0
    .param p1, "testResult"    # Lcom/wen/fluorescence/database/TestResult;

    .line 22
    iput-object p1, p0, Lcom/wen/fluorescence/bean/TestResultSend;->testResult:Lcom/wen/fluorescence/database/TestResult;

    .line 23
    return-void
.end method
