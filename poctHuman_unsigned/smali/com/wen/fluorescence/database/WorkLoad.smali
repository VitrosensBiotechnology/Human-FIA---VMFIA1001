.class public Lcom/wen/fluorescence/database/WorkLoad;
.super Ljava/lang/Object;
.source "WorkLoad.java"


# instance fields
.field private division:Ljava/lang/String;

.field private inspectingDoctor:Ljava/lang/String;

.field private sample:I

.field private submittingdoctor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDivision()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/wen/fluorescence/database/WorkLoad;->division:Ljava/lang/String;

    return-object v0
.end method

.method public getInspectingDoctor()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/wen/fluorescence/database/WorkLoad;->inspectingDoctor:Ljava/lang/String;

    return-object v0
.end method

.method public getSample()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/wen/fluorescence/database/WorkLoad;->sample:I

    return v0
.end method

.method public getSubmittingdoctor()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/wen/fluorescence/database/WorkLoad;->submittingdoctor:Ljava/lang/String;

    return-object v0
.end method

.method public setDivision(Ljava/lang/String;)V
    .locals 0
    .param p1, "division"    # Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/wen/fluorescence/database/WorkLoad;->division:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setInspectingDoctor(Ljava/lang/String;)V
    .locals 0
    .param p1, "inspectingDoctor"    # Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/wen/fluorescence/database/WorkLoad;->inspectingDoctor:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setSample(I)V
    .locals 0
    .param p1, "sample"    # I

    .line 27
    iput p1, p0, Lcom/wen/fluorescence/database/WorkLoad;->sample:I

    .line 28
    return-void
.end method

.method public setSubmittingdoctor(Ljava/lang/String;)V
    .locals 0
    .param p1, "submittingdoctor"    # Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/wen/fluorescence/database/WorkLoad;->submittingdoctor:Ljava/lang/String;

    .line 36
    return-void
.end method
