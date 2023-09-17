.class public Lca/uhn/hl7v2/model/v24/message/ORU_R01;
.super Lca/uhn/hl7v2/model/AbstractMessage;
.source "ORU_R01.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    new-instance v0, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;

    invoke-direct {v0}, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;-><init>()V

    invoke-direct {p0, v0}, Lca/uhn/hl7v2/model/v24/message/ORU_R01;-><init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 0
    .param p1, "factory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 23
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/AbstractMessage;-><init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 24
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/v24/message/ORU_R01;->init(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 25
    return-void
.end method

.method private init(Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 3
    .param p1, "factory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 31
    :try_start_0
    const-class v0, Lca/uhn/hl7v2/model/v24/segment/MSH;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lca/uhn/hl7v2/model/v24/message/ORU_R01;->add(Ljava/lang/Class;ZZ)Ljava/lang/String;

    .line 32
    const-class v0, Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;

    invoke-virtual {p0, v0, v2, v2}, Lca/uhn/hl7v2/model/v24/message/ORU_R01;->add(Ljava/lang/Class;ZZ)Ljava/lang/String;

    .line 33
    const-class v0, Lca/uhn/hl7v2/model/v24/segment/DSC;

    invoke-virtual {p0, v0, v1, v1}, Lca/uhn/hl7v2/model/v24/message/ORU_R01;->add(Ljava/lang/Class;ZZ)Ljava/lang/String;
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Lca/uhn/hl7v2/HL7Exception;
    sget-object v1, Lca/uhn/hl7v2/model/v24/message/ORU_R01;->log:Lorg/slf4j/Logger;

    const-string v2, "Unexpected error creating ORU_R01 - this is probably a bug in the source code generator."

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    .end local v0    # "e":Lca/uhn/hl7v2/HL7Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public getDSC()Lca/uhn/hl7v2/model/v24/segment/DSC;
    .locals 2

    .line 92
    const-string v0, "DSC"

    const-class v1, Lca/uhn/hl7v2/model/v24/segment/DSC;

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/message/ORU_R01;->getTyped(Ljava/lang/String;Ljava/lang/Class;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/segment/DSC;

    return-object v0
.end method

.method public getMSH()Lca/uhn/hl7v2/model/v24/segment/MSH;
    .locals 2

    .line 48
    const-string v0, "MSH"

    const-class v1, Lca/uhn/hl7v2/model/v24/segment/MSH;

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/message/ORU_R01;->getTyped(Ljava/lang/String;Ljava/lang/Class;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/segment/MSH;

    return-object v0
.end method

.method public getPATIENT_RESULT()Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;
    .locals 2

    .line 53
    const-string v0, "PATIENT_RESULT"

    const-class v1, Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/message/ORU_R01;->getTyped(Ljava/lang/String;Ljava/lang/Class;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;

    return-object v0
.end method

.method public getPATIENT_RESULT(I)Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;
    .locals 2
    .param p1, "rep"    # I

    .line 58
    const-string v0, "PATIENT_RESULT"

    const-class v1, Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;

    invoke-virtual {p0, v0, p1, v1}, Lca/uhn/hl7v2/model/v24/message/ORU_R01;->getTyped(Ljava/lang/String;ILjava/lang/Class;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;

    return-object v0
.end method

.method public getPATIENT_RESULTAll()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 69
    const-string v0, "PATIENT_RESULT"

    const-class v1, Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/message/ORU_R01;->getAllAsList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPATIENT_RESULTReps()I
    .locals 1

    .line 63
    const-string v0, "PATIENT_RESULT"

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/message/ORU_R01;->getReps(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 43
    const-string v0, "2.4"

    return-object v0
.end method

.method public insertPATIENT_RESULT(I)Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 81
    const-string v0, "PATIENT_RESULT"

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractMessage;->insertRepetition(Ljava/lang/String;I)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;

    return-object v0
.end method

.method public insertPATIENT_RESULT(Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;I)V
    .locals 1
    .param p1, "structure"    # Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;
    .param p2, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 75
    const-string v0, "PATIENT_RESULT"

    invoke-super {p0, v0, p1, p2}, Lca/uhn/hl7v2/model/AbstractMessage;->insertRepetition(Ljava/lang/String;Lca/uhn/hl7v2/model/Structure;I)V

    .line 76
    return-void
.end method

.method public removePATIENT_RESULT(I)Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 87
    const-string v0, "PATIENT_RESULT"

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractMessage;->removeRepetition(Ljava/lang/String;I)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;

    return-object v0
.end method
