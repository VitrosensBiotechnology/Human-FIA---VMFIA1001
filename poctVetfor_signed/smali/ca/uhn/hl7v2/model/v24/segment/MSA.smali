.class public Lca/uhn/hl7v2/model/v24/segment/MSA;
.super Lca/uhn/hl7v2/model/AbstractSegment;
.source "MSA.java"


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 0
    .param p1, "parent"    # Lca/uhn/hl7v2/model/Group;
    .param p2, "factory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 19
    invoke-direct {p0, p1, p2}, Lca/uhn/hl7v2/model/AbstractSegment;-><init>(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 20
    invoke-direct {p0, p2}, Lca/uhn/hl7v2/model/v24/segment/MSA;->init(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 21
    return-void
.end method

.method private init(Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 25
    .param p1, "factory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 27
    :try_start_0
    const-class v2, Lca/uhn/hl7v2/model/v24/datatype/ID;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v8, 0x2

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/MSA;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    const/4 v9, 0x0

    aput-object v1, v6, v9

    new-instance v1, Ljava/lang/Integer;

    const/16 v7, 0x8

    invoke-direct {v1, v7}, Ljava/lang/Integer;-><init>(I)V

    const/4 v10, 0x1

    aput-object v1, v6, v10

    const-string v7, "Acknowledgement Code"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lca/uhn/hl7v2/model/v24/segment/MSA;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    const-class v12, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/16 v15, 0x14

    new-array v1, v10, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/MSA;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v17, "Message Control ID"

    move-object/from16 v11, p0

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v17}, Lca/uhn/hl7v2/model/v24/segment/MSA;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    const-class v19, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x50

    new-array v1, v10, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/MSA;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v24, "Text Message"

    move-object/from16 v18, p0

    move-object/from16 v23, v1

    invoke-virtual/range {v18 .. v24}, Lca/uhn/hl7v2/model/v24/segment/MSA;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    const-class v12, Lca/uhn/hl7v2/model/v24/datatype/NM;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v15, 0xf

    new-array v1, v10, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/MSA;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v17, "Expected Sequence Number"

    move-object/from16 v11, p0

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v17}, Lca/uhn/hl7v2/model/v24/segment/MSA;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    const-class v19, Lca/uhn/hl7v2/model/v24/datatype/ID;

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x1

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/MSA;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v1, v9

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x66

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v10

    const-string v24, "Delayed Acknowledgment Type"

    move-object/from16 v18, p0

    move-object/from16 v23, v1

    invoke-virtual/range {v18 .. v24}, Lca/uhn/hl7v2/model/v24/segment/MSA;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    const-class v3, Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0xfa

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/MSA;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v7, v9

    const-string v8, "Error Condition"

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lca/uhn/hl7v2/model/v24/segment/MSA;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 36
    .local v1, "e":Lca/uhn/hl7v2/HL7Exception;
    sget-object v2, Lca/uhn/hl7v2/model/v24/segment/MSA;->log:Lorg/slf4j/Logger;

    const-string v3, "Unexpected error creating MSA - this is probably a bug in the source code generator."

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .end local v1    # "e":Lca/uhn/hl7v2/HL7Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method protected createNewTypeWithoutReflection(I)Lca/uhn/hl7v2/model/Type;
    .locals 4
    .param p1, "field"    # I

    .line 114
    packed-switch p1, :pswitch_data_0

    .line 129
    const/4 v0, 0x0

    return-object v0

    .line 127
    :pswitch_0
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/MSA;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/CE;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 125
    :pswitch_1
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/MSA;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x66

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/ID;-><init>(Lca/uhn/hl7v2/model/Message;Ljava/lang/Integer;)V

    return-object v0

    .line 123
    :pswitch_2
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/NM;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/MSA;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/NM;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 121
    :pswitch_3
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/MSA;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/ST;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 119
    :pswitch_4
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/MSA;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/ST;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 117
    :pswitch_5
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/MSA;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/ID;-><init>(Lca/uhn/hl7v2/model/Message;Ljava/lang/Integer;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAcknowledgementCode()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 42
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/MSA;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    .line 43
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ID;
    return-object v0
.end method

.method public getDelayedAcknowledgmentType()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 90
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/MSA;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    .line 91
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ID;
    return-object v0
.end method

.method public getErrorCondition()Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 102
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/MSA;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 103
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getExpectedSequenceNumber()Lca/uhn/hl7v2/model/v24/datatype/NM;
    .locals 2

    .line 78
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/MSA;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/NM;

    .line 79
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/NM;
    return-object v0
.end method

.method public getMessageControlID()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 54
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/MSA;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 55
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getMsa1_AcknowledgementCode()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 48
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/MSA;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    .line 49
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ID;
    return-object v0
.end method

.method public getMsa2_MessageControlID()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 60
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/MSA;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 61
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getMsa3_TextMessage()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 72
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/MSA;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 73
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getMsa4_ExpectedSequenceNumber()Lca/uhn/hl7v2/model/v24/datatype/NM;
    .locals 2

    .line 84
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/MSA;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/NM;

    .line 85
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/NM;
    return-object v0
.end method

.method public getMsa5_DelayedAcknowledgmentType()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 96
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/MSA;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    .line 97
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ID;
    return-object v0
.end method

.method public getMsa6_ErrorCondition()Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 108
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/MSA;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 109
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getTextMessage()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 66
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/MSA;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 67
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method
