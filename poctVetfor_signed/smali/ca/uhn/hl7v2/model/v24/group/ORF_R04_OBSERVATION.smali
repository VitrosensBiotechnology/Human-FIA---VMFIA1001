.class public Lca/uhn/hl7v2/model/v24/group/ORF_R04_OBSERVATION;
.super Lca/uhn/hl7v2/model/AbstractGroup;
.source "ORF_R04_OBSERVATION.java"


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 0
    .param p1, "parent"    # Lca/uhn/hl7v2/model/Group;
    .param p2, "factory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 15
    invoke-direct {p0, p1, p2}, Lca/uhn/hl7v2/model/AbstractGroup;-><init>(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 16
    invoke-direct {p0, p2}, Lca/uhn/hl7v2/model/v24/group/ORF_R04_OBSERVATION;->init(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 17
    return-void
.end method

.method private init(Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 3
    .param p1, "factory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 23
    :try_start_0
    const-class v0, Lca/uhn/hl7v2/model/v24/segment/OBX;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Lca/uhn/hl7v2/model/v24/group/ORF_R04_OBSERVATION;->add(Ljava/lang/Class;ZZZ)Ljava/lang/String;
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Lca/uhn/hl7v2/HL7Exception;
    sget-object v1, Lca/uhn/hl7v2/model/v24/group/ORF_R04_OBSERVATION;->log:Lorg/slf4j/Logger;

    const-string v2, "Unexpected error creating ORF_R04_OBSERVATION - this is probably a bug in the source code generator."

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    .end local v0    # "e":Lca/uhn/hl7v2/HL7Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public getOBX()Lca/uhn/hl7v2/model/v24/segment/OBX;
    .locals 2

    .line 38
    const-string v0, "OBX"

    const-class v1, Lca/uhn/hl7v2/model/v24/segment/OBX;

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/group/ORF_R04_OBSERVATION;->getTyped(Ljava/lang/String;Ljava/lang/Class;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/segment/OBX;

    .line 39
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/segment/OBX;
    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 33
    const-string v0, "2.4"

    return-object v0
.end method
