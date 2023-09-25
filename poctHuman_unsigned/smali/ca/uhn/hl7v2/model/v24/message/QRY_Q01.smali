.class public Lca/uhn/hl7v2/model/v24/message/QRY_Q01;
.super Lca/uhn/hl7v2/model/AbstractMessage;
.source "QRY_Q01.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    new-instance v0, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;

    invoke-direct {v0}, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;-><init>()V

    invoke-direct {p0, v0}, Lca/uhn/hl7v2/model/v24/message/QRY_Q01;-><init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 0
    .param p1, "factory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 23
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/AbstractMessage;-><init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 24
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/v24/message/QRY_Q01;->init(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 25
    return-void
.end method

.method private init(Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 3
    .param p1, "factory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 31
    :try_start_0
    const-class v0, Lca/uhn/hl7v2/model/v24/segment/MSH;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lca/uhn/hl7v2/model/v24/message/QRY_Q01;->add(Ljava/lang/Class;ZZ)Ljava/lang/String;

    .line 32
    const-class v0, Lca/uhn/hl7v2/model/v24/segment/QRD;

    invoke-virtual {p0, v0, v1, v2}, Lca/uhn/hl7v2/model/v24/message/QRY_Q01;->add(Ljava/lang/Class;ZZ)Ljava/lang/String;

    .line 33
    const-class v0, Lca/uhn/hl7v2/model/v24/segment/QRF;

    invoke-virtual {p0, v0, v2, v2}, Lca/uhn/hl7v2/model/v24/message/QRY_Q01;->add(Ljava/lang/Class;ZZ)Ljava/lang/String;

    .line 34
    const-class v0, Lca/uhn/hl7v2/model/v24/segment/DSC;

    invoke-virtual {p0, v0, v2, v2}, Lca/uhn/hl7v2/model/v24/message/QRY_Q01;->add(Ljava/lang/Class;ZZ)Ljava/lang/String;
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Lca/uhn/hl7v2/HL7Exception;
    sget-object v1, Lca/uhn/hl7v2/model/v24/message/QRY_Q01;->log:Lorg/slf4j/Logger;

    const-string v2, "Unexpected error creating QRY_Q01 - this is probably a bug in the source code generator."

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    .end local v0    # "e":Lca/uhn/hl7v2/HL7Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public getDSC()Lca/uhn/hl7v2/model/v24/segment/DSC;
    .locals 2

    .line 64
    const-string v0, "DSC"

    const-class v1, Lca/uhn/hl7v2/model/v24/segment/DSC;

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/message/QRY_Q01;->getTyped(Ljava/lang/String;Ljava/lang/Class;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/segment/DSC;

    return-object v0
.end method

.method public getMSH()Lca/uhn/hl7v2/model/v24/segment/MSH;
    .locals 2

    .line 49
    const-string v0, "MSH"

    const-class v1, Lca/uhn/hl7v2/model/v24/segment/MSH;

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/message/QRY_Q01;->getTyped(Ljava/lang/String;Ljava/lang/Class;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/segment/MSH;

    return-object v0
.end method

.method public getQRD()Lca/uhn/hl7v2/model/v24/segment/QRD;
    .locals 2

    .line 54
    const-string v0, "QRD"

    const-class v1, Lca/uhn/hl7v2/model/v24/segment/QRD;

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/message/QRY_Q01;->getTyped(Ljava/lang/String;Ljava/lang/Class;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/segment/QRD;

    return-object v0
.end method

.method public getQRF()Lca/uhn/hl7v2/model/v24/segment/QRF;
    .locals 2

    .line 59
    const-string v0, "QRF"

    const-class v1, Lca/uhn/hl7v2/model/v24/segment/QRF;

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/message/QRY_Q01;->getTyped(Ljava/lang/String;Ljava/lang/Class;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/segment/QRF;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 44
    const-string v0, "2.4"

    return-object v0
.end method
