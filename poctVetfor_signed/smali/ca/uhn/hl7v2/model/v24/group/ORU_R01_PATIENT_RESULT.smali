.class public Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;
.super Lca/uhn/hl7v2/model/AbstractGroup;
.source "ORU_R01_PATIENT_RESULT.java"


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 0
    .param p1, "parent"    # Lca/uhn/hl7v2/model/Group;
    .param p2, "factory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 15
    invoke-direct {p0, p1, p2}, Lca/uhn/hl7v2/model/AbstractGroup;-><init>(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 16
    invoke-direct {p0, p2}, Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;->init(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 17
    return-void
.end method

.method private init(Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 3
    .param p1, "factory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 23
    :try_start_0
    const-class v0, Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;->add(Ljava/lang/Class;ZZZ)Ljava/lang/String;

    .line 24
    const-class v0, Lca/uhn/hl7v2/model/v24/group/ORU_R01_ORDER_OBSERVATION;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v2, v1}, Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;->add(Ljava/lang/Class;ZZZ)Ljava/lang/String;
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Lca/uhn/hl7v2/HL7Exception;
    sget-object v1, Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;->log:Lorg/slf4j/Logger;

    const-string v2, "Unexpected error creating ORU_R01_PATIENT_RESULT - this is probably a bug in the source code generator."

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    .end local v0    # "e":Lca/uhn/hl7v2/HL7Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public getORDER_OBSERVATION()Lca/uhn/hl7v2/model/v24/group/ORU_R01_ORDER_OBSERVATION;
    .locals 2

    .line 45
    const-string v0, "ORDER_OBSERVATION"

    const-class v1, Lca/uhn/hl7v2/model/v24/group/ORU_R01_ORDER_OBSERVATION;

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;->getTyped(Ljava/lang/String;Ljava/lang/Class;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/group/ORU_R01_ORDER_OBSERVATION;

    .line 46
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/group/ORU_R01_ORDER_OBSERVATION;
    return-object v0
.end method

.method public getORDER_OBSERVATION(I)Lca/uhn/hl7v2/model/v24/group/ORU_R01_ORDER_OBSERVATION;
    .locals 2
    .param p1, "rep"    # I

    .line 51
    const-string v0, "ORDER_OBSERVATION"

    const-class v1, Lca/uhn/hl7v2/model/v24/group/ORU_R01_ORDER_OBSERVATION;

    invoke-virtual {p0, v0, p1, v1}, Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;->getTyped(Ljava/lang/String;ILjava/lang/Class;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/group/ORU_R01_ORDER_OBSERVATION;

    .line 52
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/group/ORU_R01_ORDER_OBSERVATION;
    return-object v0
.end method

.method public getORDER_OBSERVATIONAll()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/model/v24/group/ORU_R01_ORDER_OBSERVATION;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 63
    const-string v0, "ORDER_OBSERVATION"

    const-class v1, Lca/uhn/hl7v2/model/v24/group/ORU_R01_ORDER_OBSERVATION;

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;->getAllAsList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getORDER_OBSERVATIONReps()I
    .locals 1

    .line 57
    const-string v0, "ORDER_OBSERVATION"

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;->getReps(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPATIENT()Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT;
    .locals 2

    .line 39
    const-string v0, "PATIENT"

    const-class v1, Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT;

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;->getTyped(Ljava/lang/String;Ljava/lang/Class;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT;

    .line 40
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT;
    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 34
    const-string v0, "2.4"

    return-object v0
.end method

.method public insertORDER_OBSERVATION(I)Lca/uhn/hl7v2/model/v24/group/ORU_R01_ORDER_OBSERVATION;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 75
    const-string v0, "ORDER_OBSERVATION"

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractGroup;->insertRepetition(Ljava/lang/String;I)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/group/ORU_R01_ORDER_OBSERVATION;

    return-object v0
.end method

.method public insertORDER_OBSERVATION(Lca/uhn/hl7v2/model/v24/group/ORU_R01_ORDER_OBSERVATION;I)V
    .locals 1
    .param p1, "structure"    # Lca/uhn/hl7v2/model/v24/group/ORU_R01_ORDER_OBSERVATION;
    .param p2, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 69
    const-string v0, "ORDER_OBSERVATION"

    invoke-super {p0, v0, p1, p2}, Lca/uhn/hl7v2/model/AbstractGroup;->insertRepetition(Ljava/lang/String;Lca/uhn/hl7v2/model/Structure;I)V

    .line 70
    return-void
.end method

.method public removeORDER_OBSERVATION(I)Lca/uhn/hl7v2/model/v24/group/ORU_R01_ORDER_OBSERVATION;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 81
    const-string v0, "ORDER_OBSERVATION"

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractGroup;->removeRepetition(Ljava/lang/String;I)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/group/ORU_R01_ORDER_OBSERVATION;

    return-object v0
.end method
