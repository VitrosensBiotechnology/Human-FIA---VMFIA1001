.class public abstract Lca/uhn/hl7v2/model/primitive/TM;
.super Lca/uhn/hl7v2/model/AbstractPrimitive;
.source "TM.java"


# instance fields
.field private myDetail:Lca/uhn/hl7v2/model/primitive/CommonTM;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Message;)V
    .locals 0
    .param p1, "theMessage"    # Lca/uhn/hl7v2/model/Message;

    .line 48
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/AbstractPrimitive;-><init>(Lca/uhn/hl7v2/model/Message;)V

    .line 49
    return-void
.end method

.method private getDetail()Lca/uhn/hl7v2/model/primitive/CommonTM;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lca/uhn/hl7v2/model/primitive/TM;->myDetail:Lca/uhn/hl7v2/model/primitive/CommonTM;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lca/uhn/hl7v2/model/primitive/CommonTM;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/primitive/TM;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/primitive/CommonTM;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lca/uhn/hl7v2/model/primitive/TM;->myDetail:Lca/uhn/hl7v2/model/primitive/CommonTM;

    .line 55
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/model/primitive/TM;->myDetail:Lca/uhn/hl7v2/model/primitive/CommonTM;

    return-object v0
.end method


# virtual methods
.method public getFractSecond()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 162
    invoke-direct {p0}, Lca/uhn/hl7v2/model/primitive/TM;->getDetail()Lca/uhn/hl7v2/model/primitive/CommonTM;

    move-result-object v0

    invoke-virtual {v0}, Lca/uhn/hl7v2/model/primitive/CommonTM;->getFractSecond()F

    move-result v0

    return v0
.end method

.method public getGMTOffset()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 172
    invoke-direct {p0}, Lca/uhn/hl7v2/model/primitive/TM;->getDetail()Lca/uhn/hl7v2/model/primitive/CommonTM;

    move-result-object v0

    invoke-virtual {v0}, Lca/uhn/hl7v2/model/primitive/CommonTM;->getGMTOffset()I

    move-result v0

    return v0
.end method

.method public getHour()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Lca/uhn/hl7v2/model/primitive/TM;->getDetail()Lca/uhn/hl7v2/model/primitive/CommonTM;

    move-result-object v0

    invoke-virtual {v0}, Lca/uhn/hl7v2/model/primitive/CommonTM;->getHour()I

    move-result v0

    return v0
.end method

.method public getMinute()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 142
    invoke-direct {p0}, Lca/uhn/hl7v2/model/primitive/TM;->getDetail()Lca/uhn/hl7v2/model/primitive/CommonTM;

    move-result-object v0

    invoke-virtual {v0}, Lca/uhn/hl7v2/model/primitive/CommonTM;->getMinute()I

    move-result v0

    return v0
.end method

.method public getSecond()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 152
    invoke-direct {p0}, Lca/uhn/hl7v2/model/primitive/TM;->getDetail()Lca/uhn/hl7v2/model/primitive/CommonTM;

    move-result-object v0

    invoke-virtual {v0}, Lca/uhn/hl7v2/model/primitive/CommonTM;->getSecond()I

    move-result v0

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    .line 76
    invoke-super {p0}, Lca/uhn/hl7v2/model/AbstractPrimitive;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lca/uhn/hl7v2/model/primitive/TM;->myDetail:Lca/uhn/hl7v2/model/primitive/CommonTM;

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lca/uhn/hl7v2/model/primitive/TM;->myDetail:Lca/uhn/hl7v2/model/primitive/CommonTM;

    invoke-virtual {v1}, Lca/uhn/hl7v2/model/primitive/CommonTM;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 82
    :cond_0
    return-object v0
.end method

.method public setHourMinSecondPrecision(IIF)V
    .locals 1
    .param p1, "hr"    # I
    .param p2, "min"    # I
    .param p3, "sec"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Lca/uhn/hl7v2/model/primitive/TM;->getDetail()Lca/uhn/hl7v2/model/primitive/CommonTM;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lca/uhn/hl7v2/model/primitive/CommonTM;->setHourMinSecondPrecision(IIF)V

    .line 113
    return-void
.end method

.method public setHourMinutePrecision(II)V
    .locals 1
    .param p1, "hr"    # I
    .param p2, "min"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Lca/uhn/hl7v2/model/primitive/TM;->getDetail()Lca/uhn/hl7v2/model/primitive/CommonTM;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lca/uhn/hl7v2/model/primitive/CommonTM;->setHourMinutePrecision(II)V

    .line 103
    return-void
.end method

.method public setHourPrecision(I)V
    .locals 1
    .param p1, "hr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Lca/uhn/hl7v2/model/primitive/TM;->getDetail()Lca/uhn/hl7v2/model/primitive/CommonTM;

    move-result-object v0

    invoke-virtual {v0, p1}, Lca/uhn/hl7v2/model/primitive/CommonTM;->setHourPrecision(I)V

    .line 93
    return-void
.end method

.method public setOffset(I)V
    .locals 1
    .param p1, "signedOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Lca/uhn/hl7v2/model/primitive/TM;->getDetail()Lca/uhn/hl7v2/model/primitive/CommonTM;

    move-result-object v0

    invoke-virtual {v0, p1}, Lca/uhn/hl7v2/model/primitive/CommonTM;->setOffset(I)V

    .line 123
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "theValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 65
    invoke-super {p0, p1}, Lca/uhn/hl7v2/model/AbstractPrimitive;->setValue(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lca/uhn/hl7v2/model/primitive/TM;->myDetail:Lca/uhn/hl7v2/model/primitive/CommonTM;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lca/uhn/hl7v2/model/primitive/TM;->myDetail:Lca/uhn/hl7v2/model/primitive/CommonTM;

    invoke-virtual {v0, p1}, Lca/uhn/hl7v2/model/primitive/CommonTM;->setValue(Ljava/lang/String;)V

    .line 70
    :cond_0
    return-void
.end method
