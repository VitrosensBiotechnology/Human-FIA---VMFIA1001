.class public Lca/uhn/hl7v2/model/v24/message/DSR_Q03;
.super Lca/uhn/hl7v2/model/AbstractMessage;
.source "DSR_Q03.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    new-instance v0, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;

    invoke-direct {v0}, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;-><init>()V

    invoke-direct {p0, v0}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;-><init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 0
    .param p1, "factory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 28
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/AbstractMessage;-><init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 29
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->init(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 30
    return-void
.end method

.method private init(Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 3
    .param p1, "factory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 36
    :try_start_0
    const-class v0, Lca/uhn/hl7v2/model/v24/segment/MSH;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->add(Ljava/lang/Class;ZZ)Ljava/lang/String;

    .line 37
    const-class v0, Lca/uhn/hl7v2/model/v24/segment/MSA;

    invoke-virtual {p0, v0, v2, v2}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->add(Ljava/lang/Class;ZZ)Ljava/lang/String;

    .line 38
    const-class v0, Lca/uhn/hl7v2/model/v24/segment/ERR;

    invoke-virtual {p0, v0, v2, v2}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->add(Ljava/lang/Class;ZZ)Ljava/lang/String;

    .line 39
    const-class v0, Lca/uhn/hl7v2/model/v24/segment/QAK;

    invoke-virtual {p0, v0, v2, v2}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->add(Ljava/lang/Class;ZZ)Ljava/lang/String;

    .line 40
    const-class v0, Lca/uhn/hl7v2/model/v24/segment/QRD;

    invoke-virtual {p0, v0, v1, v2}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->add(Ljava/lang/Class;ZZ)Ljava/lang/String;

    .line 41
    const-class v0, Lca/uhn/hl7v2/model/v24/segment/QRF;

    invoke-virtual {p0, v0, v2, v2}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->add(Ljava/lang/Class;ZZ)Ljava/lang/String;

    .line 42
    const-class v0, Lca/uhn/hl7v2/model/v24/segment/DSP;

    invoke-virtual {p0, v0, v1, v1}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->add(Ljava/lang/Class;ZZ)Ljava/lang/String;

    .line 43
    const-class v0, Lca/uhn/hl7v2/model/v24/segment/DSC;

    invoke-virtual {p0, v0, v2, v2}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->add(Ljava/lang/Class;ZZ)Ljava/lang/String;
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Lca/uhn/hl7v2/HL7Exception;
    sget-object v1, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->log:Lorg/slf4j/Logger;

    const-string v2, "Unexpected error creating DSR_Q03 - this is probably a bug in the source code generator."

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .end local v0    # "e":Lca/uhn/hl7v2/HL7Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public getDSC()Lca/uhn/hl7v2/model/v24/segment/DSC;
    .locals 2

    .line 127
    const-string v0, "DSC"

    const-class v1, Lca/uhn/hl7v2/model/v24/segment/DSC;

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getTyped(Ljava/lang/String;Ljava/lang/Class;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/segment/DSC;

    return-object v0
.end method

.method public getDSP()Lca/uhn/hl7v2/model/v24/segment/DSP;
    .locals 2

    .line 88
    const-string v0, "DSP"

    const-class v1, Lca/uhn/hl7v2/model/v24/segment/DSP;

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getTyped(Ljava/lang/String;Ljava/lang/Class;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/segment/DSP;

    return-object v0
.end method

.method public getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;
    .locals 2
    .param p1, "rep"    # I

    .line 93
    const-string v0, "DSP"

    const-class v1, Lca/uhn/hl7v2/model/v24/segment/DSP;

    invoke-virtual {p0, v0, p1, v1}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getTyped(Ljava/lang/String;ILjava/lang/Class;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/segment/DSP;

    return-object v0
.end method

.method public getDSPAll()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/model/v24/segment/DSP;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 104
    const-string v0, "DSP"

    const-class v1, Lca/uhn/hl7v2/model/v24/segment/DSP;

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getAllAsList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDSPReps()I
    .locals 1

    .line 98
    const-string v0, "DSP"

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getReps(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getERR()Lca/uhn/hl7v2/model/v24/segment/ERR;
    .locals 2

    .line 68
    const-string v0, "ERR"

    const-class v1, Lca/uhn/hl7v2/model/v24/segment/ERR;

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getTyped(Ljava/lang/String;Ljava/lang/Class;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/segment/ERR;

    return-object v0
.end method

.method public getMSA()Lca/uhn/hl7v2/model/v24/segment/MSA;
    .locals 2

    .line 63
    const-string v0, "MSA"

    const-class v1, Lca/uhn/hl7v2/model/v24/segment/MSA;

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getTyped(Ljava/lang/String;Ljava/lang/Class;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/segment/MSA;

    return-object v0
.end method

.method public getMSH()Lca/uhn/hl7v2/model/v24/segment/MSH;
    .locals 2

    .line 58
    const-string v0, "MSH"

    const-class v1, Lca/uhn/hl7v2/model/v24/segment/MSH;

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getTyped(Ljava/lang/String;Ljava/lang/Class;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/segment/MSH;

    return-object v0
.end method

.method public getQAK()Lca/uhn/hl7v2/model/v24/segment/QAK;
    .locals 2

    .line 73
    const-string v0, "QAK"

    const-class v1, Lca/uhn/hl7v2/model/v24/segment/QAK;

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getTyped(Ljava/lang/String;Ljava/lang/Class;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/segment/QAK;

    return-object v0
.end method

.method public getQRD()Lca/uhn/hl7v2/model/v24/segment/QRD;
    .locals 2

    .line 78
    const-string v0, "QRD"

    const-class v1, Lca/uhn/hl7v2/model/v24/segment/QRD;

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getTyped(Ljava/lang/String;Ljava/lang/Class;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/segment/QRD;

    return-object v0
.end method

.method public getQRF()Lca/uhn/hl7v2/model/v24/segment/QRF;
    .locals 2

    .line 83
    const-string v0, "QRF"

    const-class v1, Lca/uhn/hl7v2/model/v24/segment/QRF;

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getTyped(Ljava/lang/String;Ljava/lang/Class;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/segment/QRF;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 53
    const-string v0, "2.4"

    return-object v0
.end method

.method public insertDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 116
    const-string v0, "DSP"

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractMessage;->insertRepetition(Ljava/lang/String;I)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/segment/DSP;

    return-object v0
.end method

.method public insertDSP(Lca/uhn/hl7v2/model/v24/segment/DSP;I)V
    .locals 1
    .param p1, "structure"    # Lca/uhn/hl7v2/model/v24/segment/DSP;
    .param p2, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 110
    const-string v0, "DSP"

    invoke-super {p0, v0, p1, p2}, Lca/uhn/hl7v2/model/AbstractMessage;->insertRepetition(Ljava/lang/String;Lca/uhn/hl7v2/model/Structure;I)V

    .line 111
    return-void
.end method

.method public removeDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 122
    const-string v0, "DSP"

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractMessage;->removeRepetition(Ljava/lang/String;I)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/segment/DSP;

    return-object v0
.end method
