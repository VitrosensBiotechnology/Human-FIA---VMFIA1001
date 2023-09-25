.class public Lca/uhn/hl7v2/model/v24/message/ACK;
.super Lca/uhn/hl7v2/model/AbstractMessage;
.source "ACK.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    new-instance v0, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;

    invoke-direct {v0}, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;-><init>()V

    invoke-direct {p0, v0}, Lca/uhn/hl7v2/model/v24/message/ACK;-><init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 0
    .param p1, "factory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 22
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/AbstractMessage;-><init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 23
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/v24/message/ACK;->init(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 24
    return-void
.end method

.method private init(Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 3
    .param p1, "factory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 30
    :try_start_0
    const-class v0, Lca/uhn/hl7v2/model/v24/segment/MSH;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lca/uhn/hl7v2/model/v24/message/ACK;->add(Ljava/lang/Class;ZZ)Ljava/lang/String;

    .line 31
    const-class v0, Lca/uhn/hl7v2/model/v24/segment/MSA;

    invoke-virtual {p0, v0, v1, v2}, Lca/uhn/hl7v2/model/v24/message/ACK;->add(Ljava/lang/Class;ZZ)Ljava/lang/String;

    .line 32
    const-class v0, Lca/uhn/hl7v2/model/v24/segment/ERR;

    invoke-virtual {p0, v0, v2, v2}, Lca/uhn/hl7v2/model/v24/message/ACK;->add(Ljava/lang/Class;ZZ)Ljava/lang/String;
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Lca/uhn/hl7v2/HL7Exception;
    sget-object v1, Lca/uhn/hl7v2/model/v24/message/ACK;->log:Lorg/slf4j/Logger;

    const-string v2, "Unexpected error creating ACK - this is probably a bug in the source code generator."

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .end local v0    # "e":Lca/uhn/hl7v2/HL7Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public getERR()Lca/uhn/hl7v2/model/v24/segment/ERR;
    .locals 2

    .line 57
    const-string v0, "ERR"

    const-class v1, Lca/uhn/hl7v2/model/v24/segment/ERR;

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/message/ACK;->getTyped(Ljava/lang/String;Ljava/lang/Class;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/segment/ERR;

    return-object v0
.end method

.method public getMSA()Lca/uhn/hl7v2/model/v24/segment/MSA;
    .locals 2

    .line 52
    const-string v0, "MSA"

    const-class v1, Lca/uhn/hl7v2/model/v24/segment/MSA;

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/message/ACK;->getTyped(Ljava/lang/String;Ljava/lang/Class;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/segment/MSA;

    return-object v0
.end method

.method public getMSH()Lca/uhn/hl7v2/model/v24/segment/MSH;
    .locals 2

    .line 47
    const-string v0, "MSH"

    const-class v1, Lca/uhn/hl7v2/model/v24/segment/MSH;

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/message/ACK;->getTyped(Ljava/lang/String;Ljava/lang/Class;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/segment/MSH;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 42
    const-string v0, "2.4"

    return-object v0
.end method
