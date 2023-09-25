.class public Lgiven/tronho/api/InputDataLib;
.super Ljava/lang/Object;
.source "InputDataLib.java"


# instance fields
.field private data:[I

.field private len:I

.field private sampleType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()[I
    .locals 1

    .line 10
    iget-object v0, p0, Lgiven/tronho/api/InputDataLib;->data:[I

    return-object v0
.end method

.method public getLen()I
    .locals 1

    .line 18
    iget v0, p0, Lgiven/tronho/api/InputDataLib;->len:I

    return v0
.end method

.method public getSampleType()I
    .locals 1

    .line 26
    iget v0, p0, Lgiven/tronho/api/InputDataLib;->sampleType:I

    return v0
.end method

.method public setData([I)V
    .locals 0
    .param p1, "data"    # [I

    .line 14
    iput-object p1, p0, Lgiven/tronho/api/InputDataLib;->data:[I

    .line 15
    return-void
.end method

.method public setLen(I)V
    .locals 0
    .param p1, "len"    # I

    .line 22
    iput p1, p0, Lgiven/tronho/api/InputDataLib;->len:I

    .line 23
    return-void
.end method

.method public setSampleType(I)V
    .locals 0
    .param p1, "sampleType"    # I

    .line 30
    iput p1, p0, Lgiven/tronho/api/InputDataLib;->sampleType:I

    .line 31
    return-void
.end method
