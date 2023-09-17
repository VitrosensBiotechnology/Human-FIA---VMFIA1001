.class public abstract Lca/uhn/hl7v2/model/primitive/TSComponentOne;
.super Lca/uhn/hl7v2/model/AbstractPrimitive;
.source "TSComponentOne.java"


# instance fields
.field private myDetail:Lca/uhn/hl7v2/model/primitive/CommonTS;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Message;)V
    .locals 0
    .param p1, "theMessage"    # Lca/uhn/hl7v2/model/Message;

    .line 58
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/AbstractPrimitive;-><init>(Lca/uhn/hl7v2/model/Message;)V

    .line 59
    return-void
.end method

.method private getDetail()Lca/uhn/hl7v2/model/primitive/CommonTS;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lca/uhn/hl7v2/model/primitive/TSComponentOne;->myDetail:Lca/uhn/hl7v2/model/primitive/CommonTS;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lca/uhn/hl7v2/model/primitive/CommonTS;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/primitive/TSComponentOne;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/primitive/CommonTS;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lca/uhn/hl7v2/model/primitive/TSComponentOne;->myDetail:Lca/uhn/hl7v2/model/primitive/CommonTS;

    .line 65
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/model/primitive/TSComponentOne;->myDetail:Lca/uhn/hl7v2/model/primitive/CommonTS;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 323
    invoke-super {p0}, Lca/uhn/hl7v2/model/AbstractPrimitive;->clear()V

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Lca/uhn/hl7v2/model/primitive/TSComponentOne;->myDetail:Lca/uhn/hl7v2/model/primitive/CommonTS;

    .line 325
    return-void
.end method

.method public getDay()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 162
    invoke-direct {p0}, Lca/uhn/hl7v2/model/primitive/TSComponentOne;->getDetail()Lca/uhn/hl7v2/model/primitive/CommonTS;

    move-result-object v0

    invoke-virtual {v0}, Lca/uhn/hl7v2/model/primitive/CommonTS;->getDay()I

    move-result v0

    return v0
.end method

.method public getFractSecond()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 202
    invoke-direct {p0}, Lca/uhn/hl7v2/model/primitive/TSComponentOne;->getDetail()Lca/uhn/hl7v2/model/primitive/CommonTS;

    move-result-object v0

    invoke-virtual {v0}, Lca/uhn/hl7v2/model/primitive/CommonTS;->getFractSecond()F

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

    .line 212
    invoke-direct {p0}, Lca/uhn/hl7v2/model/primitive/TSComponentOne;->getDetail()Lca/uhn/hl7v2/model/primitive/CommonTS;

    move-result-object v0

    invoke-virtual {v0}, Lca/uhn/hl7v2/model/primitive/CommonTS;->getGMTOffset()I

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

    .line 172
    invoke-direct {p0}, Lca/uhn/hl7v2/model/primitive/TSComponentOne;->getDetail()Lca/uhn/hl7v2/model/primitive/CommonTS;

    move-result-object v0

    invoke-virtual {v0}, Lca/uhn/hl7v2/model/primitive/CommonTS;->getHour()I

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

    .line 182
    invoke-direct {p0}, Lca/uhn/hl7v2/model/primitive/TSComponentOne;->getDetail()Lca/uhn/hl7v2/model/primitive/CommonTS;

    move-result-object v0

    invoke-virtual {v0}, Lca/uhn/hl7v2/model/primitive/CommonTS;->getMinute()I

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

    .line 152
    invoke-direct {p0}, Lca/uhn/hl7v2/model/primitive/TSComponentOne;->getDetail()Lca/uhn/hl7v2/model/primitive/CommonTS;

    move-result-object v0

    invoke-virtual {v0}, Lca/uhn/hl7v2/model/primitive/CommonTS;->getMonth()I

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

    .line 192
    invoke-direct {p0}, Lca/uhn/hl7v2/model/primitive/TSComponentOne;->getDetail()Lca/uhn/hl7v2/model/primitive/CommonTS;

    move-result-object v0

    invoke-virtual {v0}, Lca/uhn/hl7v2/model/primitive/CommonTS;->getSecond()I

    move-result v0

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    .line 86
    invoke-super {p0}, Lca/uhn/hl7v2/model/AbstractPrimitive;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lca/uhn/hl7v2/model/primitive/TSComponentOne;->myDetail:Lca/uhn/hl7v2/model/primitive/CommonTS;

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lca/uhn/hl7v2/model/primitive/TSComponentOne;->myDetail:Lca/uhn/hl7v2/model/primitive/CommonTS;

    invoke-virtual {v1}, Lca/uhn/hl7v2/model/primitive/CommonTS;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 92
    :cond_0
    return-object v0
.end method

.method public getValueAsCalendar()Ljava/util/Calendar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 302
    invoke-direct {p0}, Lca/uhn/hl7v2/model/primitive/TSComponentOne;->getDetail()Lca/uhn/hl7v2/model/primitive/CommonTS;

    move-result-object v0

    invoke-virtual {v0}, Lca/uhn/hl7v2/model/primitive/CommonTS;->getValueAsCalendar()Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public getValueAsDate()Ljava/util/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 313
    invoke-direct {p0}, Lca/uhn/hl7v2/model/primitive/TSComponentOne;->getDetail()Lca/uhn/hl7v2/model/primitive/CommonTS;

    move-result-object v0

    invoke-virtual {v0}, Lca/uhn/hl7v2/model/primitive/CommonTS;->getValueAsDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getYear()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 142
    invoke-direct {p0}, Lca/uhn/hl7v2/model/primitive/TSComponentOne;->getDetail()Lca/uhn/hl7v2/model/primitive/CommonTS;

    move-result-object v0

    invoke-virtual {v0}, Lca/uhn/hl7v2/model/primitive/CommonTS;->getYear()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 318
    invoke-super {p0}, Lca/uhn/hl7v2/model/AbstractPrimitive;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lca/uhn/hl7v2/model/primitive/TSComponentOne;->myDetail:Lca/uhn/hl7v2/model/primitive/CommonTS;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setDateMinutePrecision(IIIII)V
    .locals 6
    .param p1, "yr"    # I
    .param p2, "mnth"    # I
    .param p3, "dy"    # I
    .param p4, "hr"    # I
    .param p5, "min"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Lca/uhn/hl7v2/model/primitive/TSComponentOne;->getDetail()Lca/uhn/hl7v2/model/primitive/CommonTS;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lca/uhn/hl7v2/model/primitive/CommonTS;->setDateMinutePrecision(IIIII)V

    .line 113
    return-void
.end method

.method public setDatePrecision(III)V
    .locals 1
    .param p1, "yr"    # I
    .param p2, "mnth"    # I
    .param p3, "dy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Lca/uhn/hl7v2/model/primitive/TSComponentOne;->getDetail()Lca/uhn/hl7v2/model/primitive/CommonTS;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lca/uhn/hl7v2/model/primitive/CommonTS;->setDatePrecision(III)V

    .line 103
    return-void
.end method

.method public setDateSecondPrecision(IIIIIF)V
    .locals 7
    .param p1, "yr"    # I
    .param p2, "mnth"    # I
    .param p3, "dy"    # I
    .param p4, "hr"    # I
    .param p5, "min"    # I
    .param p6, "sec"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Lca/uhn/hl7v2/model/primitive/TSComponentOne;->getDetail()Lca/uhn/hl7v2/model/primitive/CommonTS;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lca/uhn/hl7v2/model/primitive/CommonTS;->setDateSecondPrecision(IIIIIF)V

    .line 123
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

    .line 132
    invoke-direct {p0}, Lca/uhn/hl7v2/model/primitive/TSComponentOne;->getDetail()Lca/uhn/hl7v2/model/primitive/CommonTS;

    move-result-object v0

    invoke-virtual {v0, p1}, Lca/uhn/hl7v2/model/primitive/CommonTS;->setOffset(I)V

    .line 133
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

    .line 75
    invoke-super {p0, p1}, Lca/uhn/hl7v2/model/AbstractPrimitive;->setValue(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lca/uhn/hl7v2/model/primitive/TSComponentOne;->myDetail:Lca/uhn/hl7v2/model/primitive/CommonTS;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lca/uhn/hl7v2/model/primitive/TSComponentOne;->myDetail:Lca/uhn/hl7v2/model/primitive/CommonTS;

    invoke-virtual {v0, p1}, Lca/uhn/hl7v2/model/primitive/CommonTS;->setValue(Ljava/lang/String;)V

    .line 80
    :cond_0
    return-void
.end method

.method public setValue(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "theCalendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 224
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/primitive/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 225
    invoke-direct {p0}, Lca/uhn/hl7v2/model/primitive/TSComponentOne;->getDetail()Lca/uhn/hl7v2/model/primitive/CommonTS;

    move-result-object v0

    invoke-virtual {v0, p1}, Lca/uhn/hl7v2/model/primitive/CommonTS;->setValue(Ljava/util/Calendar;)V

    .line 226
    return-void
.end method

.method public setValue(Ljava/util/Date;)V
    .locals 1
    .param p1, "theDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 239
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/primitive/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 240
    invoke-direct {p0}, Lca/uhn/hl7v2/model/primitive/TSComponentOne;->getDetail()Lca/uhn/hl7v2/model/primitive/CommonTS;

    move-result-object v0

    invoke-virtual {v0, p1}, Lca/uhn/hl7v2/model/primitive/CommonTS;->setValue(Ljava/util/Date;)V

    .line 241
    return-void
.end method

.method public setValueToMinute(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "theCalendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 252
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/primitive/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 253
    invoke-direct {p0}, Lca/uhn/hl7v2/model/primitive/TSComponentOne;->getDetail()Lca/uhn/hl7v2/model/primitive/CommonTS;

    move-result-object v0

    invoke-virtual {v0, p1}, Lca/uhn/hl7v2/model/primitive/CommonTS;->setValueToMinute(Ljava/util/Calendar;)V

    .line 254
    return-void
.end method

.method public setValueToMinute(Ljava/util/Date;)V
    .locals 1
    .param p1, "theDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 266
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/primitive/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 267
    invoke-direct {p0}, Lca/uhn/hl7v2/model/primitive/TSComponentOne;->getDetail()Lca/uhn/hl7v2/model/primitive/CommonTS;

    move-result-object v0

    invoke-virtual {v0, p1}, Lca/uhn/hl7v2/model/primitive/CommonTS;->setValueToMinute(Ljava/util/Date;)V

    .line 268
    return-void
.end method

.method public setValueToSecond(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "theCalendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 279
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/primitive/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 280
    invoke-direct {p0}, Lca/uhn/hl7v2/model/primitive/TSComponentOne;->getDetail()Lca/uhn/hl7v2/model/primitive/CommonTS;

    move-result-object v0

    invoke-virtual {v0, p1}, Lca/uhn/hl7v2/model/primitive/CommonTS;->setValueToSecond(Ljava/util/Calendar;)V

    .line 281
    return-void
.end method

.method public setValueToSecond(Ljava/util/Date;)V
    .locals 1
    .param p1, "theDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 292
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/primitive/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 293
    invoke-direct {p0}, Lca/uhn/hl7v2/model/primitive/TSComponentOne;->getDetail()Lca/uhn/hl7v2/model/primitive/CommonTS;

    move-result-object v0

    invoke-virtual {v0, p1}, Lca/uhn/hl7v2/model/primitive/CommonTS;->setValueToSecond(Ljava/util/Date;)V

    .line 294
    return-void
.end method
