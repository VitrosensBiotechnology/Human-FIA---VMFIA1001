.class public Lca/uhn/hl7v2/model/v24/segment/DSP;
.super Lca/uhn/hl7v2/model/AbstractSegment;
.source "DSP.java"


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 0
    .param p1, "parent"    # Lca/uhn/hl7v2/model/Group;
    .param p2, "factory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 18
    invoke-direct {p0, p1, p2}, Lca/uhn/hl7v2/model/AbstractSegment;-><init>(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 19
    invoke-direct {p0, p2}, Lca/uhn/hl7v2/model/v24/segment/DSP;->init(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 20
    return-void
.end method

.method private init(Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 17
    .param p1, "factory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 26
    :try_start_0
    const-class v2, Lca/uhn/hl7v2/model/v24/datatype/SI;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v8, 0x1

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    const/4 v9, 0x0

    aput-object v1, v6, v9

    const-string v7, "Set ID - DSP"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lca/uhn/hl7v2/model/v24/segment/DSP;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    const-class v11, Lca/uhn/hl7v2/model/v24/datatype/SI;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x4

    new-array v15, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v15, v9

    const-string v16, "Display Level"

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lca/uhn/hl7v2/model/v24/segment/DSP;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    const-class v2, Lca/uhn/hl7v2/model/v24/datatype/TX;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/16 v5, 0x12c

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v6, v9

    const-string v7, "Data Line"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lca/uhn/hl7v2/model/v24/segment/DSP;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    const-class v11, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x2

    new-array v15, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v15, v9

    const-string v16, "Logical Break Point"

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lca/uhn/hl7v2/model/v24/segment/DSP;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    const-class v2, Lca/uhn/hl7v2/model/v24/datatype/TX;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x14

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v6, v9

    const-string v7, "Result ID"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lca/uhn/hl7v2/model/v24/segment/DSP;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 34
    .local v1, "e":Lca/uhn/hl7v2/HL7Exception;
    sget-object v2, Lca/uhn/hl7v2/model/v24/segment/DSP;->log:Lorg/slf4j/Logger;

    const-string v3, "Unexpected error creating DSP - this is probably a bug in the source code generator."

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .end local v1    # "e":Lca/uhn/hl7v2/HL7Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method protected createNewTypeWithoutReflection(I)Lca/uhn/hl7v2/model/Type;
    .locals 2
    .param p1, "field"    # I

    .line 100
    packed-switch p1, :pswitch_data_0

    .line 113
    const/4 v0, 0x0

    return-object v0

    .line 111
    :pswitch_0
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/TX;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/TX;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 109
    :pswitch_1
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/ST;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 107
    :pswitch_2
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/TX;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/TX;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 105
    :pswitch_3
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/SI;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/SI;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 103
    :pswitch_4
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/SI;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/SI;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDataLine()Lca/uhn/hl7v2/model/v24/datatype/TX;
    .locals 2

    .line 64
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TX;

    .line 65
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TX;
    return-object v0
.end method

.method public getDisplayLevel()Lca/uhn/hl7v2/model/v24/datatype/SI;
    .locals 2

    .line 52
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/SI;

    .line 53
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/SI;
    return-object v0
.end method

.method public getDsp1_SetIDDSP()Lca/uhn/hl7v2/model/v24/datatype/SI;
    .locals 2

    .line 46
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/SI;

    .line 47
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/SI;
    return-object v0
.end method

.method public getDsp2_DisplayLevel()Lca/uhn/hl7v2/model/v24/datatype/SI;
    .locals 2

    .line 58
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/SI;

    .line 59
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/SI;
    return-object v0
.end method

.method public getDsp3_DataLine()Lca/uhn/hl7v2/model/v24/datatype/TX;
    .locals 2

    .line 70
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TX;

    .line 71
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TX;
    return-object v0
.end method

.method public getDsp4_LogicalBreakPoint()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 82
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 83
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getDsp5_ResultID()Lca/uhn/hl7v2/model/v24/datatype/TX;
    .locals 2

    .line 94
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TX;

    .line 95
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TX;
    return-object v0
.end method

.method public getLogicalBreakPoint()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 76
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 77
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getResultID()Lca/uhn/hl7v2/model/v24/datatype/TX;
    .locals 2

    .line 88
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TX;

    .line 89
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TX;
    return-object v0
.end method

.method public getSetIDDSP()Lca/uhn/hl7v2/model/v24/datatype/SI;
    .locals 2

    .line 40
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/SI;

    .line 41
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/SI;
    return-object v0
.end method
