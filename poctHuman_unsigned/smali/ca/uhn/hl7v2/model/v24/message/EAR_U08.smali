.class public Lca/uhn/hl7v2/model/v24/message/EAR_U08;
.super Lca/uhn/hl7v2/model/AbstractMessage;
.source "EAR_U08.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    new-instance v0, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;

    invoke-direct {v0}, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;-><init>()V

    invoke-direct {p0, v0}, Lca/uhn/hl7v2/model/v24/message/EAR_U08;-><init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 0
    .param p1, "factory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 24
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/AbstractMessage;-><init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 25
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/v24/message/EAR_U08;->init(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 26
    return-void
.end method

.method private init(Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 3
    .param p1, "factory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 32
    :try_start_0
    const-class v0, Lca/uhn/hl7v2/model/v24/segment/MSH;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lca/uhn/hl7v2/model/v24/message/EAR_U08;->add(Ljava/lang/Class;ZZ)Ljava/lang/String;

    .line 33
    const-class v0, Lca/uhn/hl7v2/model/v24/segment/EQU;

    invoke-virtual {p0, v0, v2, v1}, Lca/uhn/hl7v2/model/v24/message/EAR_U08;->add(Ljava/lang/Class;ZZ)Ljava/lang/String;

    .line 34
    const-class v0, Lca/uhn/hl7v2/model/v24/group/EAR_U08_COMMAND_RESPONSE;

    invoke-virtual {p0, v0, v2, v2}, Lca/uhn/hl7v2/model/v24/message/EAR_U08;->add(Ljava/lang/Class;ZZ)Ljava/lang/String;

    .line 35
    const-class v0, Lca/uhn/hl7v2/model/v24/segment/ROL;

    invoke-virtual {p0, v0, v1, v1}, Lca/uhn/hl7v2/model/v24/message/EAR_U08;->add(Ljava/lang/Class;ZZ)Ljava/lang/String;
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Lca/uhn/hl7v2/HL7Exception;
    sget-object v1, Lca/uhn/hl7v2/model/v24/message/EAR_U08;->log:Lorg/slf4j/Logger;

    const-string v2, "Unexpected error creating EAR_U08 - this is probably a bug in the source code generator."

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .end local v0    # "e":Lca/uhn/hl7v2/HL7Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public getCOMMAND_RESPONSE()Lca/uhn/hl7v2/model/v24/group/EAR_U08_COMMAND_RESPONSE;
    .locals 2

    .line 60
    const-string v0, "COMMAND_RESPONSE"

    const-class v1, Lca/uhn/hl7v2/model/v24/group/EAR_U08_COMMAND_RESPONSE;

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/message/EAR_U08;->getTyped(Ljava/lang/String;Ljava/lang/Class;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/group/EAR_U08_COMMAND_RESPONSE;

    return-object v0
.end method

.method public getCOMMAND_RESPONSE(I)Lca/uhn/hl7v2/model/v24/group/EAR_U08_COMMAND_RESPONSE;
    .locals 2
    .param p1, "rep"    # I

    .line 65
    const-string v0, "COMMAND_RESPONSE"

    const-class v1, Lca/uhn/hl7v2/model/v24/group/EAR_U08_COMMAND_RESPONSE;

    invoke-virtual {p0, v0, p1, v1}, Lca/uhn/hl7v2/model/v24/message/EAR_U08;->getTyped(Ljava/lang/String;ILjava/lang/Class;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/group/EAR_U08_COMMAND_RESPONSE;

    return-object v0
.end method

.method public getCOMMAND_RESPONSEAll()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/model/v24/group/EAR_U08_COMMAND_RESPONSE;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 76
    const-string v0, "COMMAND_RESPONSE"

    const-class v1, Lca/uhn/hl7v2/model/v24/group/EAR_U08_COMMAND_RESPONSE;

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/message/EAR_U08;->getAllAsList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCOMMAND_RESPONSEReps()I
    .locals 1

    .line 70
    const-string v0, "COMMAND_RESPONSE"

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/message/EAR_U08;->getReps(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getEQU()Lca/uhn/hl7v2/model/v24/segment/EQU;
    .locals 2

    .line 55
    const-string v0, "EQU"

    const-class v1, Lca/uhn/hl7v2/model/v24/segment/EQU;

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/message/EAR_U08;->getTyped(Ljava/lang/String;Ljava/lang/Class;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/segment/EQU;

    return-object v0
.end method

.method public getMSH()Lca/uhn/hl7v2/model/v24/segment/MSH;
    .locals 2

    .line 50
    const-string v0, "MSH"

    const-class v1, Lca/uhn/hl7v2/model/v24/segment/MSH;

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/message/EAR_U08;->getTyped(Ljava/lang/String;Ljava/lang/Class;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/segment/MSH;

    return-object v0
.end method

.method public getROL()Lca/uhn/hl7v2/model/v24/segment/ROL;
    .locals 2

    .line 99
    const-string v0, "ROL"

    const-class v1, Lca/uhn/hl7v2/model/v24/segment/ROL;

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/message/EAR_U08;->getTyped(Ljava/lang/String;Ljava/lang/Class;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/segment/ROL;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 45
    const-string v0, "2.4"

    return-object v0
.end method

.method public insertCOMMAND_RESPONSE(I)Lca/uhn/hl7v2/model/v24/group/EAR_U08_COMMAND_RESPONSE;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 88
    const-string v0, "COMMAND_RESPONSE"

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractMessage;->insertRepetition(Ljava/lang/String;I)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/group/EAR_U08_COMMAND_RESPONSE;

    return-object v0
.end method

.method public insertCOMMAND_RESPONSE(Lca/uhn/hl7v2/model/v24/group/EAR_U08_COMMAND_RESPONSE;I)V
    .locals 1
    .param p1, "structure"    # Lca/uhn/hl7v2/model/v24/group/EAR_U08_COMMAND_RESPONSE;
    .param p2, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 82
    const-string v0, "COMMAND_RESPONSE"

    invoke-super {p0, v0, p1, p2}, Lca/uhn/hl7v2/model/AbstractMessage;->insertRepetition(Ljava/lang/String;Lca/uhn/hl7v2/model/Structure;I)V

    .line 83
    return-void
.end method

.method public removeCOMMAND_RESPONSE(I)Lca/uhn/hl7v2/model/v24/group/EAR_U08_COMMAND_RESPONSE;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 94
    const-string v0, "COMMAND_RESPONSE"

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractMessage;->removeRepetition(Ljava/lang/String;I)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/group/EAR_U08_COMMAND_RESPONSE;

    return-object v0
.end method
