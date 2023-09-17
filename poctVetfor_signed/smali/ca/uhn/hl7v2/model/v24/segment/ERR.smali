.class public Lca/uhn/hl7v2/model/v24/segment/ERR;
.super Lca/uhn/hl7v2/model/AbstractSegment;
.source "ERR.java"


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 0
    .param p1, "parent"    # Lca/uhn/hl7v2/model/Group;
    .param p2, "factory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 16
    invoke-direct {p0, p1, p2}, Lca/uhn/hl7v2/model/AbstractSegment;-><init>(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 17
    invoke-direct {p0, p2}, Lca/uhn/hl7v2/model/v24/segment/ERR;->init(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 18
    return-void
.end method

.method private init(Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 7
    .param p1, "factory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 24
    :try_start_0
    const-class v1, Lca/uhn/hl7v2/model/v24/datatype/ELD;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x50

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/ERR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v6

    aput-object v6, v5, v0

    const-string v6, "Error Code and Location"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lca/uhn/hl7v2/model/v24/segment/ERR;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Lca/uhn/hl7v2/HL7Exception;
    sget-object v1, Lca/uhn/hl7v2/model/v24/segment/ERR;->log:Lorg/slf4j/Logger;

    const-string v2, "Unexpected error creating ERR - this is probably a bug in the source code generator."

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    .end local v0    # "e":Lca/uhn/hl7v2/HL7Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method protected createNewTypeWithoutReflection(I)Lca/uhn/hl7v2/model/Type;
    .locals 2
    .param p1, "field"    # I

    .line 92
    if-eqz p1, :cond_0

    .line 97
    const/4 v0, 0x0

    return-object v0

    .line 95
    :cond_0
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ELD;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/ERR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/ELD;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0
.end method

.method public getErr1_ErrorCodeAndLocation(I)Lca/uhn/hl7v2/model/v24/datatype/ELD;
    .locals 1
    .param p1, "rep"    # I

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/ERR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ELD;

    .line 58
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ELD;
    return-object v0
.end method

.method public getErr1_ErrorCodeAndLocation()[Lca/uhn/hl7v2/model/v24/datatype/ELD;
    .locals 2

    .line 40
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/ELD;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/ERR;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/ELD;

    .line 41
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/ELD;
    return-object v0
.end method

.method public getErr1_ErrorCodeAndLocationReps()I
    .locals 1

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/ERR;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getErrorCodeAndLocation(I)Lca/uhn/hl7v2/model/v24/datatype/ELD;
    .locals 1
    .param p1, "rep"    # I

    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/ERR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ELD;

    .line 52
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ELD;
    return-object v0
.end method

.method public getErrorCodeAndLocation()[Lca/uhn/hl7v2/model/v24/datatype/ELD;
    .locals 2

    .line 34
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/ELD;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/ERR;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/ELD;

    .line 35
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/ELD;
    return-object v0
.end method

.method public getErrorCodeAndLocationReps()I
    .locals 1

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/ERR;->getReps(I)I

    move-result v0

    return v0
.end method

.method public insertErr1_ErrorCodeAndLocation(I)Lca/uhn/hl7v2/model/v24/datatype/ELD;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 75
    const/4 v0, 0x1

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ELD;

    return-object v0
.end method

.method public insertErrorCodeAndLocation(I)Lca/uhn/hl7v2/model/v24/datatype/ELD;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 69
    const/4 v0, 0x1

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ELD;

    return-object v0
.end method

.method public removeErr1_ErrorCodeAndLocation(I)Lca/uhn/hl7v2/model/v24/datatype/ELD;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 87
    const/4 v0, 0x1

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ELD;

    return-object v0
.end method

.method public removeErrorCodeAndLocation(I)Lca/uhn/hl7v2/model/v24/datatype/ELD;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 81
    const/4 v0, 0x1

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ELD;

    return-object v0
.end method
