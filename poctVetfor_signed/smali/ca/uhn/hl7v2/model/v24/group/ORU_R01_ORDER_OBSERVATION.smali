.class public Lca/uhn/hl7v2/model/v24/group/ORU_R01_ORDER_OBSERVATION;
.super Lca/uhn/hl7v2/model/AbstractGroup;
.source "ORU_R01_ORDER_OBSERVATION.java"


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 0
    .param p1, "parent"    # Lca/uhn/hl7v2/model/Group;
    .param p2, "factory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 16
    invoke-direct {p0, p1, p2}, Lca/uhn/hl7v2/model/AbstractGroup;-><init>(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 17
    invoke-direct {p0, p2}, Lca/uhn/hl7v2/model/v24/group/ORU_R01_ORDER_OBSERVATION;->init(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 18
    return-void
.end method

.method private init(Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 3
    .param p1, "factory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 24
    :try_start_0
    const-class v0, Lca/uhn/hl7v2/model/v24/segment/OBR;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1, v1}, Lca/uhn/hl7v2/model/v24/group/ORU_R01_ORDER_OBSERVATION;->add(Ljava/lang/Class;ZZZ)Ljava/lang/String;

    .line 25
    const-class v0, Lca/uhn/hl7v2/model/v24/group/ORU_R01_OBSERVATION;

    invoke-virtual {p0, v0, v2, v2, v1}, Lca/uhn/hl7v2/model/v24/group/ORU_R01_ORDER_OBSERVATION;->add(Ljava/lang/Class;ZZZ)Ljava/lang/String;
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Lca/uhn/hl7v2/HL7Exception;
    sget-object v1, Lca/uhn/hl7v2/model/v24/group/ORU_R01_ORDER_OBSERVATION;->log:Lorg/slf4j/Logger;

    const-string v2, "Unexpected error creating ORU_R01_ORDER_OBSERVATION - this is probably a bug in the source code generator."

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .end local v0    # "e":Lca/uhn/hl7v2/HL7Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public getOBR()Lca/uhn/hl7v2/model/v24/segment/OBR;
    .locals 2

    .line 41
    const-string v0, "OBR"

    const-class v1, Lca/uhn/hl7v2/model/v24/segment/OBR;

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/group/ORU_R01_ORDER_OBSERVATION;->getTyped(Ljava/lang/String;Ljava/lang/Class;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/segment/OBR;

    .line 42
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/segment/OBR;
    return-object v0
.end method

.method public getOBSERVATION()Lca/uhn/hl7v2/model/v24/group/ORU_R01_OBSERVATION;
    .locals 2

    .line 48
    const-string v0, "OBSERVATION"

    const-class v1, Lca/uhn/hl7v2/model/v24/group/ORU_R01_OBSERVATION;

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/group/ORU_R01_ORDER_OBSERVATION;->getTyped(Ljava/lang/String;Ljava/lang/Class;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/group/ORU_R01_OBSERVATION;

    .line 49
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/group/ORU_R01_OBSERVATION;
    return-object v0
.end method

.method public getOBSERVATION(I)Lca/uhn/hl7v2/model/v24/group/ORU_R01_OBSERVATION;
    .locals 2
    .param p1, "rep"    # I

    .line 54
    const-string v0, "OBSERVATION"

    const-class v1, Lca/uhn/hl7v2/model/v24/group/ORU_R01_OBSERVATION;

    invoke-virtual {p0, v0, p1, v1}, Lca/uhn/hl7v2/model/v24/group/ORU_R01_ORDER_OBSERVATION;->getTyped(Ljava/lang/String;ILjava/lang/Class;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/group/ORU_R01_OBSERVATION;

    .line 55
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/group/ORU_R01_OBSERVATION;
    return-object v0
.end method

.method public getOBSERVATIONAll()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/model/v24/group/ORU_R01_OBSERVATION;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 66
    const-string v0, "OBSERVATION"

    const-class v1, Lca/uhn/hl7v2/model/v24/group/ORU_R01_OBSERVATION;

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/group/ORU_R01_ORDER_OBSERVATION;->getAllAsList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOBSERVATIONReps()I
    .locals 1

    .line 60
    const-string v0, "OBSERVATION"

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/group/ORU_R01_ORDER_OBSERVATION;->getReps(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 35
    const-string v0, "2.4"

    return-object v0
.end method

.method public insertOBSERVATION(I)Lca/uhn/hl7v2/model/v24/group/ORU_R01_OBSERVATION;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 78
    const-string v0, "OBSERVATION"

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractGroup;->insertRepetition(Ljava/lang/String;I)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/group/ORU_R01_OBSERVATION;

    return-object v0
.end method

.method public insertOBSERVATION(Lca/uhn/hl7v2/model/v24/group/ORU_R01_OBSERVATION;I)V
    .locals 1
    .param p1, "structure"    # Lca/uhn/hl7v2/model/v24/group/ORU_R01_OBSERVATION;
    .param p2, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 72
    const-string v0, "OBSERVATION"

    invoke-super {p0, v0, p1, p2}, Lca/uhn/hl7v2/model/AbstractGroup;->insertRepetition(Ljava/lang/String;Lca/uhn/hl7v2/model/Structure;I)V

    .line 73
    return-void
.end method

.method public removeOBSERVATION(I)Lca/uhn/hl7v2/model/v24/group/ORU_R01_OBSERVATION;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 84
    const-string v0, "OBSERVATION"

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractGroup;->removeRepetition(Ljava/lang/String;I)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/group/ORU_R01_OBSERVATION;

    return-object v0
.end method
