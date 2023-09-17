.class public Lca/uhn/hl7v2/model/v24/segment/EVN;
.super Lca/uhn/hl7v2/model/AbstractSegment;
.source "EVN.java"


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 0
    .param p1, "parent"    # Lca/uhn/hl7v2/model/Group;
    .param p2, "factory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 20
    invoke-direct {p0, p1, p2}, Lca/uhn/hl7v2/model/AbstractSegment;-><init>(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 21
    invoke-direct {p0, p2}, Lca/uhn/hl7v2/model/v24/segment/EVN;->init(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 22
    return-void
.end method

.method private init(Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 25
    .param p1, "factory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 28
    :try_start_0
    const-class v2, Lca/uhn/hl7v2/model/v24/datatype/ID;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v8, 0x2

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/EVN;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    const/4 v9, 0x0

    aput-object v1, v6, v9

    new-instance v1, Ljava/lang/Integer;

    const/4 v7, 0x3

    invoke-direct {v1, v7}, Ljava/lang/Integer;-><init>(I)V

    const/4 v10, 0x1

    aput-object v1, v6, v10

    const-string v7, "Event Type Code"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lca/uhn/hl7v2/model/v24/segment/EVN;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    const-class v12, Lca/uhn/hl7v2/model/v24/datatype/TS;

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/16 v15, 0x1a

    new-array v1, v10, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/EVN;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v17, "Recorded Date/Time"

    move-object/from16 v11, p0

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v17}, Lca/uhn/hl7v2/model/v24/segment/EVN;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    const-class v19, Lca/uhn/hl7v2/model/v24/datatype/TS;

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x1a

    new-array v1, v10, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/EVN;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v24, "Date/Time Planned Event"

    move-object/from16 v18, p0

    move-object/from16 v23, v1

    invoke-virtual/range {v18 .. v24}, Lca/uhn/hl7v2/model/v24/segment/EVN;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    const-class v12, Lca/uhn/hl7v2/model/v24/datatype/IS;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x3

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/EVN;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v1, v9

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x3e

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v10

    const-string v17, "Event Reason Code"

    move-object/from16 v11, p0

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v17}, Lca/uhn/hl7v2/model/v24/segment/EVN;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    const-class v3, Lca/uhn/hl7v2/model/v24/datatype/XCN;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xfa

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/EVN;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v7, v9

    const-string v8, "Operator ID"

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lca/uhn/hl7v2/model/v24/segment/EVN;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    const-class v12, Lca/uhn/hl7v2/model/v24/datatype/TS;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v15, 0x1a

    new-array v1, v10, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/EVN;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v17, "Event Occurred"

    move-object/from16 v11, p0

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v17}, Lca/uhn/hl7v2/model/v24/segment/EVN;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    const-class v3, Lca/uhn/hl7v2/model/v24/datatype/HD;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0xb4

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/EVN;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v7, v9

    const-string v8, "Event Facility"

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lca/uhn/hl7v2/model/v24/segment/EVN;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 38
    .local v1, "e":Lca/uhn/hl7v2/HL7Exception;
    sget-object v2, Lca/uhn/hl7v2/model/v24/segment/EVN;->log:Lorg/slf4j/Logger;

    const-string v3, "Unexpected error creating EVN - this is probably a bug in the source code generator."

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    .end local v1    # "e":Lca/uhn/hl7v2/HL7Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method protected createNewTypeWithoutReflection(I)Lca/uhn/hl7v2/model/Type;
    .locals 4
    .param p1, "field"    # I

    .line 174
    packed-switch p1, :pswitch_data_0

    .line 191
    const/4 v0, 0x0

    return-object v0

    .line 189
    :pswitch_0
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/HD;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/EVN;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/HD;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 187
    :pswitch_1
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/EVN;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/TS;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 185
    :pswitch_2
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/XCN;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/EVN;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/XCN;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 183
    :pswitch_3
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/EVN;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x3e

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/IS;-><init>(Lca/uhn/hl7v2/model/Message;Ljava/lang/Integer;)V

    return-object v0

    .line 181
    :pswitch_4
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/EVN;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/TS;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 179
    :pswitch_5
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/EVN;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/TS;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 177
    :pswitch_6
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/EVN;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/ID;-><init>(Lca/uhn/hl7v2/model/Message;Ljava/lang/Integer;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDateTimePlannedEvent()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 68
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/EVN;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    .line 69
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TS;
    return-object v0
.end method

.method public getEventFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;
    .locals 2

    .line 162
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/EVN;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/HD;

    .line 163
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/HD;
    return-object v0
.end method

.method public getEventOccurred()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 150
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/EVN;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    .line 151
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TS;
    return-object v0
.end method

.method public getEventReasonCode()Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 2

    .line 80
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/EVN;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    .line 81
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/IS;
    return-object v0
.end method

.method public getEventTypeCode()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 44
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/EVN;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    .line 45
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ID;
    return-object v0
.end method

.method public getEvn1_EventTypeCode()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 50
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/EVN;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    .line 51
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ID;
    return-object v0
.end method

.method public getEvn2_RecordedDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 62
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/EVN;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    .line 63
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TS;
    return-object v0
.end method

.method public getEvn3_DateTimePlannedEvent()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 74
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/EVN;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    .line 75
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TS;
    return-object v0
.end method

.method public getEvn4_EventReasonCode()Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 2

    .line 86
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/EVN;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    .line 87
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/IS;
    return-object v0
.end method

.method public getEvn5_OperatorID(I)Lca/uhn/hl7v2/model/v24/datatype/XCN;
    .locals 1
    .param p1, "rep"    # I

    .line 115
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/EVN;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/XCN;

    .line 116
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/XCN;
    return-object v0
.end method

.method public getEvn5_OperatorID()[Lca/uhn/hl7v2/model/v24/datatype/XCN;
    .locals 2

    .line 98
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/XCN;

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/EVN;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/XCN;

    .line 99
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/XCN;
    return-object v0
.end method

.method public getEvn5_OperatorIDReps()I
    .locals 1

    .line 121
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/EVN;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getEvn6_EventOccurred()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 156
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/EVN;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    .line 157
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TS;
    return-object v0
.end method

.method public getEvn7_EventFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;
    .locals 2

    .line 168
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/EVN;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/HD;

    .line 169
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/HD;
    return-object v0
.end method

.method public getOperatorID(I)Lca/uhn/hl7v2/model/v24/datatype/XCN;
    .locals 1
    .param p1, "rep"    # I

    .line 109
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/EVN;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/XCN;

    .line 110
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/XCN;
    return-object v0
.end method

.method public getOperatorID()[Lca/uhn/hl7v2/model/v24/datatype/XCN;
    .locals 2

    .line 92
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/XCN;

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/EVN;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/XCN;

    .line 93
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/XCN;
    return-object v0
.end method

.method public getOperatorIDReps()I
    .locals 1

    .line 104
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/EVN;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getRecordedDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 56
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/EVN;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    .line 57
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TS;
    return-object v0
.end method

.method public insertEvn5_OperatorID(I)Lca/uhn/hl7v2/model/v24/datatype/XCN;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 133
    const/4 v0, 0x5

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/XCN;

    return-object v0
.end method

.method public insertOperatorID(I)Lca/uhn/hl7v2/model/v24/datatype/XCN;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 127
    const/4 v0, 0x5

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/XCN;

    return-object v0
.end method

.method public removeEvn5_OperatorID(I)Lca/uhn/hl7v2/model/v24/datatype/XCN;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 145
    const/4 v0, 0x5

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/XCN;

    return-object v0
.end method

.method public removeOperatorID(I)Lca/uhn/hl7v2/model/v24/datatype/XCN;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 139
    const/4 v0, 0x5

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/XCN;

    return-object v0
.end method
