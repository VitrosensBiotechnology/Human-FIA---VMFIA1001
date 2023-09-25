.class public Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT;
.super Lca/uhn/hl7v2/model/AbstractGroup;
.source "ORU_R01_PATIENT.java"


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 0
    .param p1, "parent"    # Lca/uhn/hl7v2/model/Group;
    .param p2, "factory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 16
    invoke-direct {p0, p1, p2}, Lca/uhn/hl7v2/model/AbstractGroup;-><init>(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 17
    invoke-direct {p0, p2}, Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT;->init(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 18
    return-void
.end method

.method private init(Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 3
    .param p1, "factory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 24
    :try_start_0
    const-class v0, Lca/uhn/hl7v2/model/v24/segment/PID;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT;->add(Ljava/lang/Class;ZZZ)Ljava/lang/String;
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Lca/uhn/hl7v2/HL7Exception;
    sget-object v1, Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT;->log:Lorg/slf4j/Logger;

    const-string v2, "Unexpected error creating ORU_R01_PATIENT - this is probably a bug in the source code generator."

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    .end local v0    # "e":Lca/uhn/hl7v2/HL7Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public getPID()Lca/uhn/hl7v2/model/v24/segment/PID;
    .locals 2

    .line 39
    const-string v0, "PID"

    const-class v1, Lca/uhn/hl7v2/model/v24/segment/PID;

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT;->getTyped(Ljava/lang/String;Ljava/lang/Class;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/segment/PID;

    .line 40
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/segment/PID;
    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 34
    const-string v0, "2.4"

    return-object v0
.end method
