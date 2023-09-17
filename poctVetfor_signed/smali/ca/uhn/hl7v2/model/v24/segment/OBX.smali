.class public Lca/uhn/hl7v2/model/v24/segment/OBX;
.super Lca/uhn/hl7v2/model/AbstractSegment;
.source "OBX.java"


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 0
    .param p1, "parent"    # Lca/uhn/hl7v2/model/Group;
    .param p2, "factory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 25
    invoke-direct {p0, p1, p2}, Lca/uhn/hl7v2/model/AbstractSegment;-><init>(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 26
    invoke-direct {p0, p2}, Lca/uhn/hl7v2/model/v24/segment/OBX;->init(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 27
    return-void
.end method

.method private init(Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 24
    .param p1, "factory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 33
    :try_start_0
    const-class v2, Lca/uhn/hl7v2/model/v24/datatype/SI;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v8, 0x1

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    const/4 v9, 0x0

    aput-object v1, v6, v9

    const-string v7, "Set ID - OBX"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lca/uhn/hl7v2/model/v24/segment/OBX;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    const-class v11, Lca/uhn/hl7v2/model/v24/datatype/ID;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x2

    const/4 v1, 0x2

    new-array v15, v1, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v15, v9

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x7d

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v15, v8

    const-string v16, "Value Type"

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lca/uhn/hl7v2/model/v24/segment/OBX;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    const-class v18, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v21, 0xfa

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    aput-object v3, v2, v9

    const-string v23, "Project ID"

    move-object/from16 v17, p0

    move-object/from16 v22, v2

    invoke-virtual/range {v17 .. v23}, Lca/uhn/hl7v2/model/v24/segment/OBX;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    const-class v11, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v14, 0x14

    new-array v15, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v15, v9

    const-string v16, "Project Name"

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lca/uhn/hl7v2/model/v24/segment/OBX;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    const-class v18, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0xfa

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    aput-object v3, v2, v9

    const-string v23, "Result"

    move-object/from16 v17, p0

    move-object/from16 v22, v2

    invoke-virtual/range {v17 .. v23}, Lca/uhn/hl7v2/model/v24/segment/OBX;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    const-class v11, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v14, 0xfa

    new-array v15, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v15, v9

    const-string v16, "Units"

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lca/uhn/hl7v2/model/v24/segment/OBX;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    const-class v18, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x3c

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    aput-object v3, v2, v9

    const-string v23, "References Range"

    move-object/from16 v17, p0

    move-object/from16 v22, v2

    invoke-virtual/range {v17 .. v23}, Lca/uhn/hl7v2/model/v24/segment/OBX;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    const-class v11, Lca/uhn/hl7v2/model/v24/datatype/IS;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x5

    new-array v15, v1, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v15, v9

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x4e

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v15, v8

    const-string v16, "Abnormal Flags"

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lca/uhn/hl7v2/model/v24/segment/OBX;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    const-class v18, Lca/uhn/hl7v2/model/v24/datatype/NM;

    const/16 v19, 0x0

    const/16 v20, 0x5

    const/16 v21, 0x5

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    aput-object v3, v2, v9

    const-string v23, "Probability"

    move-object/from16 v17, p0

    move-object/from16 v22, v2

    invoke-virtual/range {v17 .. v23}, Lca/uhn/hl7v2/model/v24/segment/OBX;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    const-class v11, Lca/uhn/hl7v2/model/v24/datatype/ID;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x2

    new-array v15, v1, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v15, v9

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x50

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v15, v8

    const-string v16, "Nature of Abnormal Test"

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lca/uhn/hl7v2/model/v24/segment/OBX;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    const-class v18, Lca/uhn/hl7v2/model/v24/datatype/ID;

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v1, v9

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x55

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v8

    const-string v23, "Observation Result Status"

    move-object/from16 v17, p0

    move-object/from16 v22, v1

    invoke-virtual/range {v17 .. v23}, Lca/uhn/hl7v2/model/v24/segment/OBX;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    const-class v11, Lca/uhn/hl7v2/model/v24/datatype/TS;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v14, 0x1a

    new-array v15, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v15, v9

    const-string v16, "Date Last Observation Normal Value"

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lca/uhn/hl7v2/model/v24/segment/OBX;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    const-class v2, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x14

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v6, v9

    const-string v7, "Original Test Result"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lca/uhn/hl7v2/model/v24/segment/OBX;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    const-class v11, Lca/uhn/hl7v2/model/v24/datatype/TS;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v14, 0x1a

    new-array v15, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v15, v9

    const-string v16, "Date/Time of the Observation"

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lca/uhn/hl7v2/model/v24/segment/OBX;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    const-class v2, Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0xfa

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v6, v9

    const-string v7, "Producer\'s ID"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lca/uhn/hl7v2/model/v24/segment/OBX;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    const-class v11, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v14, 0xfa

    new-array v15, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v15, v9

    const-string v16, "Responsible Observer"

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lca/uhn/hl7v2/model/v24/segment/OBX;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    const-class v2, Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xfa

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v6, v9

    const-string v7, "Observation Method"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lca/uhn/hl7v2/model/v24/segment/OBX;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    const-class v11, Lca/uhn/hl7v2/model/v24/datatype/EI;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x16

    new-array v15, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v15, v9

    const-string v16, "Equipment Instance Identifier"

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lca/uhn/hl7v2/model/v24/segment/OBX;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    const-class v2, Lca/uhn/hl7v2/model/v24/datatype/TS;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x1a

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v6, v9

    const-string v7, "Date/Time of the Analysis"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lca/uhn/hl7v2/model/v24/segment/OBX;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 55
    .local v1, "e":Lca/uhn/hl7v2/HL7Exception;
    sget-object v2, Lca/uhn/hl7v2/model/v24/segment/OBX;->log:Lorg/slf4j/Logger;

    const-string v3, "Unexpected error creating OBX - this is probably a bug in the source code generator."

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .end local v1    # "e":Lca/uhn/hl7v2/HL7Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method protected createNewTypeWithoutReflection(I)Lca/uhn/hl7v2/model/Type;
    .locals 4
    .param p1, "field"    # I

    .line 429
    packed-switch p1, :pswitch_data_0

    .line 470
    const/4 v0, 0x0

    return-object v0

    .line 468
    :pswitch_0
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/TS;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 466
    :pswitch_1
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/EI;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/EI;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 464
    :pswitch_2
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/CE;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 462
    :pswitch_3
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/ST;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 460
    :pswitch_4
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/CE;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 458
    :pswitch_5
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/TS;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 456
    :pswitch_6
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/ST;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 454
    :pswitch_7
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/TS;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 452
    :pswitch_8
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x55

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/ID;-><init>(Lca/uhn/hl7v2/model/Message;Ljava/lang/Integer;)V

    return-object v0

    .line 450
    :pswitch_9
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x50

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/ID;-><init>(Lca/uhn/hl7v2/model/Message;Ljava/lang/Integer;)V

    return-object v0

    .line 448
    :pswitch_a
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/NM;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/NM;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 446
    :pswitch_b
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x4e

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/IS;-><init>(Lca/uhn/hl7v2/model/Message;Ljava/lang/Integer;)V

    return-object v0

    .line 444
    :pswitch_c
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/ST;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 442
    :pswitch_d
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/ST;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 440
    :pswitch_e
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/ST;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 438
    :pswitch_f
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/ST;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 436
    :pswitch_10
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/ST;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 434
    :pswitch_11
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x7d

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/ID;-><init>(Lca/uhn/hl7v2/model/Message;Ljava/lang/Integer;)V

    return-object v0

    .line 432
    :pswitch_12
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/SI;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/SI;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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

.method public getAbnormalFlags()Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 2

    .line 147
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    .line 148
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/IS;
    return-object v0
.end method

.method public getDateLastObservationNormalValue()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 241
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    .line 242
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TS;
    return-object v0
.end method

.method public getDateTimeOfTheAnalysis()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 417
    const/16 v0, 0x13

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    .line 418
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TS;
    return-object v0
.end method

.method public getDateTimeOfTheObservation()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 265
    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    .line 266
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TS;
    return-object v0
.end method

.method public getEquipmentInstanceIdentifier(I)Lca/uhn/hl7v2/model/v24/datatype/EI;
    .locals 1
    .param p1, "rep"    # I

    .line 376
    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/EI;

    .line 377
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/EI;
    return-object v0
.end method

.method public getEquipmentInstanceIdentifier()[Lca/uhn/hl7v2/model/v24/datatype/EI;
    .locals 2

    .line 359
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/EI;

    const/16 v1, 0x12

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/EI;

    .line 360
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/EI;
    return-object v0
.end method

.method public getEquipmentInstanceIdentifierReps()I
    .locals 1

    .line 371
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getNatureOfAbnormalTest()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 217
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    .line 218
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ID;
    return-object v0
.end method

.method public getObservationMethod(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I

    .line 318
    const/16 v0, 0x11

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 319
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getObservationMethod()[Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 301
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/16 v1, 0x11

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 302
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getObservationMethodReps()I
    .locals 1

    .line 313
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getObservationResult()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 109
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 110
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getObservationResultStatus()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 229
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    .line 230
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ID;
    return-object v0
.end method

.method public getObx10_NatureOfAbnormalTest()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 223
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    .line 224
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ID;
    return-object v0
.end method

.method public getObx11_ObservationResultStatus()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 235
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    .line 236
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ID;
    return-object v0
.end method

.method public getObx12_DateLastObservationNormalValue()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 247
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    .line 248
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TS;
    return-object v0
.end method

.method public getObx13_OriginalResult()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 259
    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 260
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getObx14_DateTimeOfTheObservation()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 271
    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    .line 272
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TS;
    return-object v0
.end method

.method public getObx15_ProducerSID()Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 283
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 284
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getObx16_ResponsibleObserver()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 295
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 296
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getObx17_ObservationMethod(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I

    .line 324
    const/16 v0, 0x11

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 325
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getObx17_ObservationMethod()[Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 307
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/16 v1, 0x11

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 308
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getObx17_ObservationMethodReps()I
    .locals 1

    .line 330
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getObx18_EquipmentInstanceIdentifier(I)Lca/uhn/hl7v2/model/v24/datatype/EI;
    .locals 1
    .param p1, "rep"    # I

    .line 382
    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/EI;

    .line 383
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/EI;
    return-object v0
.end method

.method public getObx18_EquipmentInstanceIdentifier()[Lca/uhn/hl7v2/model/v24/datatype/EI;
    .locals 2

    .line 365
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/EI;

    const/16 v1, 0x12

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/EI;

    .line 366
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/EI;
    return-object v0
.end method

.method public getObx18_EquipmentInstanceIdentifierReps()I
    .locals 1

    .line 388
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getObx19_DateTimeOfTheAnalysis()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 423
    const/16 v0, 0x13

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    .line 424
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TS;
    return-object v0
.end method

.method public getObx1_SetIDOBX()Lca/uhn/hl7v2/model/v24/datatype/SI;
    .locals 2

    .line 67
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/SI;

    .line 68
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/SI;
    return-object v0
.end method

.method public getObx2_ValueType()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 79
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    .line 80
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ID;
    return-object v0
.end method

.method public getObx3_ProjectID()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 91
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 92
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getObx4_ProjectName()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 103
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 104
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getObx5_ObservationResult()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 115
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 116
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getObx6_Units()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 129
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 130
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getObx7_ReferencesRange()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 141
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 142
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getObx8_AbnormalFlags()Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 2

    .line 153
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    .line 154
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/IS;
    return-object v0
.end method

.method public getObx9_Probability(I)Lca/uhn/hl7v2/model/v24/datatype/NM;
    .locals 1
    .param p1, "rep"    # I

    .line 182
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/NM;

    .line 183
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/NM;
    return-object v0
.end method

.method public getObx9_Probability()[Lca/uhn/hl7v2/model/v24/datatype/NM;
    .locals 2

    .line 165
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/NM;

    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/NM;

    .line 166
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/NM;
    return-object v0
.end method

.method public getObx9_ProbabilityReps()I
    .locals 1

    .line 188
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getOriginalResult()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 253
    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 254
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getProbability(I)Lca/uhn/hl7v2/model/v24/datatype/NM;
    .locals 1
    .param p1, "rep"    # I

    .line 176
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/NM;

    .line 177
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/NM;
    return-object v0
.end method

.method public getProbability()[Lca/uhn/hl7v2/model/v24/datatype/NM;
    .locals 2

    .line 159
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/NM;

    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/NM;

    .line 160
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/NM;
    return-object v0
.end method

.method public getProbabilityReps()I
    .locals 1

    .line 171
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getProducerSID()Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 277
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 278
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getProjectID()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 85
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 86
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getProjectName()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 97
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 98
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getReferencesRange()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 135
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 136
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getResponsibleObserver()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 289
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 290
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getSetIDOBX()Lca/uhn/hl7v2/model/v24/datatype/SI;
    .locals 2

    .line 61
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/SI;

    .line 62
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/SI;
    return-object v0
.end method

.method public getUnits()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 123
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 124
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getValueType()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 73
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    .line 74
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ID;
    return-object v0
.end method

.method public insertEquipmentInstanceIdentifier(I)Lca/uhn/hl7v2/model/v24/datatype/EI;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 394
    const/16 v0, 0x12

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/EI;

    return-object v0
.end method

.method public insertObservationMethod(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 336
    const/16 v0, 0x11

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method

.method public insertObx17_ObservationMethod(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 342
    const/16 v0, 0x11

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method

.method public insertObx18_EquipmentInstanceIdentifier(I)Lca/uhn/hl7v2/model/v24/datatype/EI;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 400
    const/16 v0, 0x12

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/EI;

    return-object v0
.end method

.method public insertObx9_Probability(I)Lca/uhn/hl7v2/model/v24/datatype/NM;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 200
    const/16 v0, 0x9

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/NM;

    return-object v0
.end method

.method public insertProbability(I)Lca/uhn/hl7v2/model/v24/datatype/NM;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 194
    const/16 v0, 0x9

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/NM;

    return-object v0
.end method

.method public removeEquipmentInstanceIdentifier(I)Lca/uhn/hl7v2/model/v24/datatype/EI;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 406
    const/16 v0, 0x12

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/EI;

    return-object v0
.end method

.method public removeObservationMethod(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 348
    const/16 v0, 0x11

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method

.method public removeObx17_ObservationMethod(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 354
    const/16 v0, 0x11

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method

.method public removeObx18_EquipmentInstanceIdentifier(I)Lca/uhn/hl7v2/model/v24/datatype/EI;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 412
    const/16 v0, 0x12

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/EI;

    return-object v0
.end method

.method public removeObx9_Probability(I)Lca/uhn/hl7v2/model/v24/datatype/NM;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 212
    const/16 v0, 0x9

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/NM;

    return-object v0
.end method

.method public removeProbability(I)Lca/uhn/hl7v2/model/v24/datatype/NM;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 206
    const/16 v0, 0x9

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/NM;

    return-object v0
.end method
