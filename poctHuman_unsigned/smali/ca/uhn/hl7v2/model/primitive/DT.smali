.class public abstract Lca/uhn/hl7v2/model/primitive/DT;
.super Lca/uhn/hl7v2/model/AbstractPrimitive;
.source "DT.java"


# instance fields
.field private myDetail:Lca/uhn/hl7v2/model/primitive/CommonDT;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Message;)V
    .locals 0
    .param p1, "theMessage"    # Lca/uhn/hl7v2/model/Message;

    .line 48
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/AbstractPrimitive;-><init>(Lca/uhn/hl7v2/model/Message;)V

    .line 49
    return-void
.end method

.method private getDetail()Lca/uhn/hl7v2/model/primitive/CommonDT;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lca/uhn/hl7v2/model/primitive/DT;->myDetail:Lca/uhn/hl7v2/model/primitive/CommonDT;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lca/uhn/hl7v2/model/primitive/CommonDT;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/primitive/DT;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/primitive/CommonDT;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lca/uhn/hl7v2/model/primitive/DT;->myDetail:Lca/uhn/hl7v2/model/primitive/CommonDT;

    .line 55
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/model/primitive/DT;->myDetail:Lca/uhn/hl7v2/model/primitive/CommonDT;

    return-object v0
.end method


# virtual methods
.method public getDay()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 142
    invoke-direct {p0}, Lca/uhn/hl7v2/model/primitive/DT;->getDetail()Lca/uhn/hl7v2/model/primitive/CommonDT;

    move-result-object v0

    invoke-virtual {v0}, Lca/uhn/hl7v2/model/primitive/CommonDT;->getDay()I

    move-result v0

    return v0
.end method

.method public getMonth()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Lca/uhn/hl7v2/model/primitive/DT;->getDetail()Lca/uhn/hl7v2/model/primitive/CommonDT;

    move-result-object v0

    invoke-virtual {v0}, Lca/uhn/hl7v2/model/primitive/CommonDT;->getMonth()I

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
    iget-object v1, p0, Lca/uhn/hl7v2/model/primitive/DT;->myDetail:Lca/uhn/hl7v2/model/primitive/CommonDT;

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lca/uhn/hl7v2/model/primitive/DT;->myDetail:Lca/uhn/hl7v2/model/primitive/CommonDT;

    invoke-virtual {v1}, Lca/uhn/hl7v2/model/primitive/CommonDT;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 82
    :cond_0
    return-object v0
.end method

.method public getYear()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Lca/uhn/hl7v2/model/primitive/DT;->getDetail()Lca/uhn/hl7v2/model/primitive/CommonDT;

    move-result-object v0

    invoke-virtual {v0}, Lca/uhn/hl7v2/model/primitive/CommonDT;->getYear()I

    move-result v0

    return v0
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
    iget-object v0, p0, Lca/uhn/hl7v2/model/primitive/DT;->myDetail:Lca/uhn/hl7v2/model/primitive/CommonDT;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lca/uhn/hl7v2/model/primitive/DT;->myDetail:Lca/uhn/hl7v2/model/primitive/CommonDT;

    invoke-virtual {v0, p1}, Lca/uhn/hl7v2/model/primitive/CommonDT;->setValue(Ljava/lang/String;)V

    .line 70
    :cond_0
    return-void
.end method

.method public setYearMonthDayPrecision(III)V
    .locals 1
    .param p1, "yr"    # I
    .param p2, "mnth"    # I
    .param p3, "dy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Lca/uhn/hl7v2/model/primitive/DT;->getDetail()Lca/uhn/hl7v2/model/primitive/CommonDT;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lca/uhn/hl7v2/model/primitive/CommonDT;->setYearMonthDayPrecision(III)V

    .line 113
    return-void
.end method

.method public setYearMonthPrecision(II)V
    .locals 1
    .param p1, "yr"    # I
    .param p2, "mnth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Lca/uhn/hl7v2/model/primitive/DT;->getDetail()Lca/uhn/hl7v2/model/primitive/CommonDT;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lca/uhn/hl7v2/model/primitive/CommonDT;->setYearMonthPrecision(II)V

    .line 103
    return-void
.end method

.method public setYearPrecision(I)V
    .locals 1
    .param p1, "yr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Lca/uhn/hl7v2/model/primitive/DT;->getDetail()Lca/uhn/hl7v2/model/primitive/CommonDT;

    move-result-object v0

    invoke-virtual {v0, p1}, Lca/uhn/hl7v2/model/primitive/CommonDT;->setYearPrecision(I)V

    .line 93
    return-void
.end method
