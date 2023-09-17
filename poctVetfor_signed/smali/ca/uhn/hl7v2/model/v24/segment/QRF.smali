.class public Lca/uhn/hl7v2/model/v24/segment/QRF;
.super Lca/uhn/hl7v2/model/AbstractSegment;
.source "QRF.java"


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 0
    .param p1, "parent"    # Lca/uhn/hl7v2/model/Group;
    .param p2, "factory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 20
    invoke-direct {p0, p1, p2}, Lca/uhn/hl7v2/model/AbstractSegment;-><init>(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 21
    invoke-direct {p0, p2}, Lca/uhn/hl7v2/model/v24/segment/QRF;->init(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 22
    return-void
.end method

.method private init(Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 24
    .param p1, "factory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 28
    :try_start_0
    const-class v2, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x14

    const/4 v8, 0x1

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    const/4 v9, 0x0

    aput-object v1, v6, v9

    const-string v7, "Where Subject Filter"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lca/uhn/hl7v2/model/v24/segment/QRF;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    const-class v11, Lca/uhn/hl7v2/model/v24/datatype/TS;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v14, 0x1a

    new-array v15, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v15, v9

    const-string v16, "When Data Start Date/Time"

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lca/uhn/hl7v2/model/v24/segment/QRF;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    const-class v2, Lca/uhn/hl7v2/model/v24/datatype/TS;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x1a

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v6, v9

    const-string v7, "When Data End Date/Time"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lca/uhn/hl7v2/model/v24/segment/QRF;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    const-class v11, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x3c

    new-array v15, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v15, v9

    const-string v16, "What User Qualifier"

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lca/uhn/hl7v2/model/v24/segment/QRF;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    const-class v2, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x3c

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v6, v9

    const-string v7, "Other QRY Subject Filter"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lca/uhn/hl7v2/model/v24/segment/QRF;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    const-class v11, Lca/uhn/hl7v2/model/v24/datatype/ID;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xc

    const/4 v1, 0x2

    new-array v15, v1, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v15, v9

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x9c

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v15, v8

    const-string v16, "Which Date/Time Qualifier"

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lca/uhn/hl7v2/model/v24/segment/QRF;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    const-class v18, Lca/uhn/hl7v2/model/v24/datatype/ID;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0xc

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    aput-object v3, v2, v9

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x9d

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v8

    const-string v23, "Which Date/Time Status Qualifier"

    move-object/from16 v17, p0

    move-object/from16 v22, v2

    invoke-virtual/range {v17 .. v23}, Lca/uhn/hl7v2/model/v24/segment/QRF;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    const-class v11, Lca/uhn/hl7v2/model/v24/datatype/ID;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xc

    new-array v15, v1, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v15, v9

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x9e

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v15, v8

    const-string v16, "Date/Time Selection Qualifier"

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lca/uhn/hl7v2/model/v24/segment/QRF;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    const-class v2, Lca/uhn/hl7v2/model/v24/datatype/TQ;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x3c

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v6, v9

    const-string v7, "When Quantity/Timing Qualifier"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lca/uhn/hl7v2/model/v24/segment/QRF;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    const-class v11, Lca/uhn/hl7v2/model/v24/datatype/NM;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v14, 0xa

    new-array v15, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v15, v9

    const-string v16, "Search Confidence Threshold"

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lca/uhn/hl7v2/model/v24/segment/QRF;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 41
    .local v1, "e":Lca/uhn/hl7v2/HL7Exception;
    sget-object v2, Lca/uhn/hl7v2/model/v24/segment/QRF;->log:Lorg/slf4j/Logger;

    const-string v3, "Unexpected error creating QRF - this is probably a bug in the source code generator."

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    .end local v1    # "e":Lca/uhn/hl7v2/HL7Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method protected createNewTypeWithoutReflection(I)Lca/uhn/hl7v2/model/Type;
    .locals 4
    .param p1, "field"    # I

    .line 443
    packed-switch p1, :pswitch_data_0

    .line 466
    const/4 v0, 0x0

    return-object v0

    .line 464
    :pswitch_0
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/NM;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/NM;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 462
    :pswitch_1
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/TQ;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/TQ;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 460
    :pswitch_2
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x9e

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/ID;-><init>(Lca/uhn/hl7v2/model/Message;Ljava/lang/Integer;)V

    return-object v0

    .line 458
    :pswitch_3
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x9d

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/ID;-><init>(Lca/uhn/hl7v2/model/Message;Ljava/lang/Integer;)V

    return-object v0

    .line 456
    :pswitch_4
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x9c

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/ID;-><init>(Lca/uhn/hl7v2/model/Message;Ljava/lang/Integer;)V

    return-object v0

    .line 454
    :pswitch_5
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/ST;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 452
    :pswitch_6
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/ST;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 450
    :pswitch_7
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/TS;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 448
    :pswitch_8
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/TS;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 446
    :pswitch_9
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/ST;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDateTimeSelectionQualifier(I)Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 1
    .param p1, "rep"    # I

    .line 378
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    .line 379
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ID;
    return-object v0
.end method

.method public getDateTimeSelectionQualifier()[Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 361
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/ID;

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/ID;

    .line 362
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/ID;
    return-object v0
.end method

.method public getDateTimeSelectionQualifierReps()I
    .locals 1

    .line 373
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getOtherQRYSubjectFilter(I)Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 1
    .param p1, "rep"    # I

    .line 204
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 205
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getOtherQRYSubjectFilter()[Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 187
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 188
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getOtherQRYSubjectFilterReps()I
    .locals 1

    .line 199
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getQrf10_SearchConfidenceThreshold()Lca/uhn/hl7v2/model/v24/datatype/NM;
    .locals 2

    .line 437
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/NM;

    .line 438
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/NM;
    return-object v0
.end method

.method public getQrf1_WhereSubjectFilter(I)Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 1
    .param p1, "rep"    # I

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 71
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getQrf1_WhereSubjectFilter()[Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 53
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 54
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getQrf1_WhereSubjectFilterReps()I
    .locals 1

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getQrf2_WhenDataStartDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 111
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    .line 112
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TS;
    return-object v0
.end method

.method public getQrf3_WhenDataEndDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 123
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    .line 124
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TS;
    return-object v0
.end method

.method public getQrf4_WhatUserQualifier(I)Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 1
    .param p1, "rep"    # I

    .line 152
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 153
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getQrf4_WhatUserQualifier()[Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 135
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 136
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getQrf4_WhatUserQualifierReps()I
    .locals 1

    .line 158
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getQrf5_OtherQRYSubjectFilter(I)Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 1
    .param p1, "rep"    # I

    .line 210
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 211
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getQrf5_OtherQRYSubjectFilter()[Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 193
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 194
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getQrf5_OtherQRYSubjectFilterReps()I
    .locals 1

    .line 216
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getQrf6_WhichDateTimeQualifier(I)Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 1
    .param p1, "rep"    # I

    .line 268
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    .line 269
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ID;
    return-object v0
.end method

.method public getQrf6_WhichDateTimeQualifier()[Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 251
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/ID;

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/ID;

    .line 252
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/ID;
    return-object v0
.end method

.method public getQrf6_WhichDateTimeQualifierReps()I
    .locals 1

    .line 274
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getQrf7_WhichDateTimeStatusQualifier(I)Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 1
    .param p1, "rep"    # I

    .line 326
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    .line 327
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ID;
    return-object v0
.end method

.method public getQrf7_WhichDateTimeStatusQualifier()[Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 309
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/ID;

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/ID;

    .line 310
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/ID;
    return-object v0
.end method

.method public getQrf7_WhichDateTimeStatusQualifierReps()I
    .locals 1

    .line 332
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getQrf8_DateTimeSelectionQualifier(I)Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 1
    .param p1, "rep"    # I

    .line 384
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    .line 385
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ID;
    return-object v0
.end method

.method public getQrf8_DateTimeSelectionQualifier()[Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 367
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/ID;

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/ID;

    .line 368
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/ID;
    return-object v0
.end method

.method public getQrf8_DateTimeSelectionQualifierReps()I
    .locals 1

    .line 390
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getQrf9_WhenQuantityTimingQualifier()Lca/uhn/hl7v2/model/v24/datatype/TQ;
    .locals 2

    .line 425
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TQ;

    .line 426
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TQ;
    return-object v0
.end method

.method public getSearchConfidenceThreshold()Lca/uhn/hl7v2/model/v24/datatype/NM;
    .locals 2

    .line 431
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/NM;

    .line 432
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/NM;
    return-object v0
.end method

.method public getWhatUserQualifier(I)Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 1
    .param p1, "rep"    # I

    .line 146
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 147
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getWhatUserQualifier()[Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 129
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 130
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getWhatUserQualifierReps()I
    .locals 1

    .line 141
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getWhenDataEndDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 117
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    .line 118
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TS;
    return-object v0
.end method

.method public getWhenDataStartDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 105
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    .line 106
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TS;
    return-object v0
.end method

.method public getWhenQuantityTimingQualifier()Lca/uhn/hl7v2/model/v24/datatype/TQ;
    .locals 2

    .line 419
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TQ;

    .line 420
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TQ;
    return-object v0
.end method

.method public getWhereSubjectFilter(I)Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 1
    .param p1, "rep"    # I

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 65
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getWhereSubjectFilter()[Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 47
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 48
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getWhereSubjectFilterReps()I
    .locals 1

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getWhichDateTimeQualifier(I)Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 1
    .param p1, "rep"    # I

    .line 262
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    .line 263
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ID;
    return-object v0
.end method

.method public getWhichDateTimeQualifier()[Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 245
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/ID;

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/ID;

    .line 246
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/ID;
    return-object v0
.end method

.method public getWhichDateTimeQualifierReps()I
    .locals 1

    .line 257
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getWhichDateTimeStatusQualifier(I)Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 1
    .param p1, "rep"    # I

    .line 320
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    .line 321
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ID;
    return-object v0
.end method

.method public getWhichDateTimeStatusQualifier()[Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 303
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/ID;

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/ID;

    .line 304
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/ID;
    return-object v0
.end method

.method public getWhichDateTimeStatusQualifierReps()I
    .locals 1

    .line 315
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getReps(I)I

    move-result v0

    return v0
.end method

.method public insertDateTimeSelectionQualifier(I)Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 396
    const/16 v0, 0x8

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    return-object v0
.end method

.method public insertOtherQRYSubjectFilter(I)Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 222
    const/4 v0, 0x5

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    return-object v0
.end method

.method public insertQrf1_WhereSubjectFilter(I)Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 88
    const/4 v0, 0x1

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    return-object v0
.end method

.method public insertQrf4_WhatUserQualifier(I)Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 170
    const/4 v0, 0x4

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    return-object v0
.end method

.method public insertQrf5_OtherQRYSubjectFilter(I)Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 228
    const/4 v0, 0x5

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    return-object v0
.end method

.method public insertQrf6_WhichDateTimeQualifier(I)Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 286
    const/4 v0, 0x6

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    return-object v0
.end method

.method public insertQrf7_WhichDateTimeStatusQualifier(I)Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 344
    const/4 v0, 0x7

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    return-object v0
.end method

.method public insertQrf8_DateTimeSelectionQualifier(I)Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 402
    const/16 v0, 0x8

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    return-object v0
.end method

.method public insertWhatUserQualifier(I)Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 164
    const/4 v0, 0x4

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    return-object v0
.end method

.method public insertWhereSubjectFilter(I)Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 82
    const/4 v0, 0x1

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    return-object v0
.end method

.method public insertWhichDateTimeQualifier(I)Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 280
    const/4 v0, 0x6

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    return-object v0
.end method

.method public insertWhichDateTimeStatusQualifier(I)Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 338
    const/4 v0, 0x7

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    return-object v0
.end method

.method public removeDateTimeSelectionQualifier(I)Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 408
    const/16 v0, 0x8

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    return-object v0
.end method

.method public removeOtherQRYSubjectFilter(I)Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 234
    const/4 v0, 0x5

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    return-object v0
.end method

.method public removeQrf1_WhereSubjectFilter(I)Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 100
    const/4 v0, 0x1

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    return-object v0
.end method

.method public removeQrf4_WhatUserQualifier(I)Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 182
    const/4 v0, 0x4

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    return-object v0
.end method

.method public removeQrf5_OtherQRYSubjectFilter(I)Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 240
    const/4 v0, 0x5

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    return-object v0
.end method

.method public removeQrf6_WhichDateTimeQualifier(I)Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 298
    const/4 v0, 0x6

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    return-object v0
.end method

.method public removeQrf7_WhichDateTimeStatusQualifier(I)Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 356
    const/4 v0, 0x7

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    return-object v0
.end method

.method public removeQrf8_DateTimeSelectionQualifier(I)Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 414
    const/16 v0, 0x8

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    return-object v0
.end method

.method public removeWhatUserQualifier(I)Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 176
    const/4 v0, 0x4

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    return-object v0
.end method

.method public removeWhereSubjectFilter(I)Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 94
    const/4 v0, 0x1

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    return-object v0
.end method

.method public removeWhichDateTimeQualifier(I)Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 292
    const/4 v0, 0x6

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    return-object v0
.end method

.method public removeWhichDateTimeStatusQualifier(I)Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 350
    const/4 v0, 0x7

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    return-object v0
.end method
