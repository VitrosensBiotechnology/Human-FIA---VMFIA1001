.class public Lca/uhn/hl7v2/model/v24/segment/PID;
.super Lca/uhn/hl7v2/model/AbstractSegment;
.source "PID.java"


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 0
    .param p1, "parent"    # Lca/uhn/hl7v2/model/Group;
    .param p2, "factory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 28
    invoke-direct {p0, p1, p2}, Lca/uhn/hl7v2/model/AbstractSegment;-><init>(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 29
    invoke-direct {p0, p2}, Lca/uhn/hl7v2/model/v24/segment/PID;->init(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 30
    return-void
.end method

.method private init(Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 24
    .param p1, "factory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 36
    :try_start_0
    const-class v2, Lca/uhn/hl7v2/model/v24/datatype/SI;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v8, 0x1

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    const/4 v9, 0x0

    aput-object v1, v6, v9

    const-string v7, "Set ID - PID"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lca/uhn/hl7v2/model/v24/segment/PID;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    const-class v11, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v14, 0x14

    new-array v15, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v15, v9

    const-string v16, "Patient ID"

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lca/uhn/hl7v2/model/v24/segment/PID;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    const-class v2, Lca/uhn/hl7v2/model/v24/datatype/CX;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0xfa

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v6, v9

    const-string v7, "Patient Identifier List"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lca/uhn/hl7v2/model/v24/segment/PID;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    const-class v11, Lca/uhn/hl7v2/model/v24/datatype/CX;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x14

    new-array v15, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v15, v9

    const-string v16, "Alternate Patient ID - PID"

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lca/uhn/hl7v2/model/v24/segment/PID;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    const-class v2, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0xfa

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v6, v9

    const-string v7, "Patient Name"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lca/uhn/hl7v2/model/v24/segment/PID;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    const-class v11, Lca/uhn/hl7v2/model/v24/datatype/XPN;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xfa

    new-array v15, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v15, v9

    const-string v16, "Mother\'s Maiden Name"

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lca/uhn/hl7v2/model/v24/segment/PID;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    const-class v2, Lca/uhn/hl7v2/model/v24/datatype/TS;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x1a

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v6, v9

    const-string v7, "Date/Time Of Birth"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lca/uhn/hl7v2/model/v24/segment/PID;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    const-class v11, Lca/uhn/hl7v2/model/v24/datatype/IS;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v1, 0x2

    new-array v15, v1, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v15, v9

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v15, v8

    const-string v16, "Administrative Sex"

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lca/uhn/hl7v2/model/v24/segment/PID;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    const-class v18, Lca/uhn/hl7v2/model/v24/datatype/XPN;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0xfa

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    aput-object v3, v2, v9

    const-string v23, "Patient Alias"

    move-object/from16 v17, p0

    move-object/from16 v22, v2

    invoke-virtual/range {v17 .. v23}, Lca/uhn/hl7v2/model/v24/segment/PID;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    const-class v11, Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xfa

    new-array v15, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v15, v9

    const-string v16, "Race"

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lca/uhn/hl7v2/model/v24/segment/PID;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    const-class v18, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0xfa

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    aput-object v3, v2, v9

    const-string v23, "Patient Address"

    move-object/from16 v17, p0

    move-object/from16 v22, v2

    invoke-virtual/range {v17 .. v23}, Lca/uhn/hl7v2/model/v24/segment/PID;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    const-class v11, Lca/uhn/hl7v2/model/v24/datatype/IS;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x4

    new-array v15, v1, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v15, v9

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x121

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v15, v8

    const-string v16, "County Code"

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lca/uhn/hl7v2/model/v24/segment/PID;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    const-class v18, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0xfa

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    aput-object v3, v2, v9

    const-string v23, "Phone Number - Home"

    move-object/from16 v17, p0

    move-object/from16 v22, v2

    invoke-virtual/range {v17 .. v23}, Lca/uhn/hl7v2/model/v24/segment/PID;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    const-class v11, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xfa

    new-array v15, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v15, v9

    const-string v16, "Phone Number - Business"

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lca/uhn/hl7v2/model/v24/segment/PID;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    const-class v18, Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0xfa

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    aput-object v3, v2, v9

    const-string v23, "Primary Language"

    move-object/from16 v17, p0

    move-object/from16 v22, v2

    invoke-virtual/range {v17 .. v23}, Lca/uhn/hl7v2/model/v24/segment/PID;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    const-class v11, Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v14, 0xfa

    new-array v15, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v15, v9

    const-string v16, "Marital Status"

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lca/uhn/hl7v2/model/v24/segment/PID;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    const-class v18, Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0xfa

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    aput-object v3, v2, v9

    const-string v23, "Religion"

    move-object/from16 v17, p0

    move-object/from16 v22, v2

    invoke-virtual/range {v17 .. v23}, Lca/uhn/hl7v2/model/v24/segment/PID;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    const-class v11, Lca/uhn/hl7v2/model/v24/datatype/CX;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v14, 0xfa

    new-array v15, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v15, v9

    const-string v16, "Patient Account Number"

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lca/uhn/hl7v2/model/v24/segment/PID;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    const-class v18, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x10

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    aput-object v3, v2, v9

    const-string v23, "SSN Number - Patient"

    move-object/from16 v17, p0

    move-object/from16 v22, v2

    invoke-virtual/range {v17 .. v23}, Lca/uhn/hl7v2/model/v24/segment/PID;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    const-class v11, Lca/uhn/hl7v2/model/v24/datatype/DLN;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v14, 0x19

    new-array v15, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v15, v9

    const-string v16, "Driver\'s License Number - Patient"

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lca/uhn/hl7v2/model/v24/segment/PID;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    const-class v18, Lca/uhn/hl7v2/model/v24/datatype/CX;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0xfa

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    aput-object v3, v2, v9

    const-string v23, "Mother\'s Identifier"

    move-object/from16 v17, p0

    move-object/from16 v22, v2

    invoke-virtual/range {v17 .. v23}, Lca/uhn/hl7v2/model/v24/segment/PID;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    const-class v11, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xfa

    new-array v15, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v15, v9

    const-string v16, "Ethnic Group"

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lca/uhn/hl7v2/model/v24/segment/PID;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    const-class v18, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0xfa

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    aput-object v3, v2, v9

    const-string v23, "Birth Place"

    move-object/from16 v17, p0

    move-object/from16 v22, v2

    invoke-virtual/range {v17 .. v23}, Lca/uhn/hl7v2/model/v24/segment/PID;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    const-class v11, Lca/uhn/hl7v2/model/v24/datatype/ID;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    new-array v15, v1, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v15, v9

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x88

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v15, v8

    const-string v16, "Multiple Birth Indicator"

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lca/uhn/hl7v2/model/v24/segment/PID;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    const-class v18, Lca/uhn/hl7v2/model/v24/datatype/NM;

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x2

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v4

    aput-object v4, v2, v9

    const-string v23, "Birth Order"

    move-object/from16 v17, p0

    move-object/from16 v22, v2

    invoke-virtual/range {v17 .. v23}, Lca/uhn/hl7v2/model/v24/segment/PID;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    const-class v11, Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xfa

    new-array v15, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v15, v9

    const-string v16, "Citizenship"

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lca/uhn/hl7v2/model/v24/segment/PID;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    const-class v18, Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0xfa

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v4

    aput-object v4, v2, v9

    const-string v23, "Veterans Military Status"

    move-object/from16 v17, p0

    move-object/from16 v22, v2

    invoke-virtual/range {v17 .. v23}, Lca/uhn/hl7v2/model/v24/segment/PID;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    const-class v11, Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v14, 0xfa

    new-array v15, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v15, v9

    const-string v16, "Nationality"

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lca/uhn/hl7v2/model/v24/segment/PID;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    const-class v18, Lca/uhn/hl7v2/model/v24/datatype/TS;

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x1a

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v4

    aput-object v4, v2, v9

    const-string v23, "Patient Death Date and Time"

    move-object/from16 v17, p0

    move-object/from16 v22, v2

    invoke-virtual/range {v17 .. v23}, Lca/uhn/hl7v2/model/v24/segment/PID;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    const-class v11, Lca/uhn/hl7v2/model/v24/datatype/ID;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    new-array v15, v1, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v15, v9

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v15, v8

    const-string v16, "Patient Death Indicator"

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lca/uhn/hl7v2/model/v24/segment/PID;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    const-class v18, Lca/uhn/hl7v2/model/v24/datatype/ID;

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v4

    aput-object v4, v2, v9

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v8

    const-string v23, "Identity Unknown Indicator"

    move-object/from16 v17, p0

    move-object/from16 v22, v2

    invoke-virtual/range {v17 .. v23}, Lca/uhn/hl7v2/model/v24/segment/PID;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    const-class v11, Lca/uhn/hl7v2/model/v24/datatype/IS;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x14

    new-array v15, v1, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v15, v9

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x1bd

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v15, v8

    const-string v16, "Identity Reliability Code"

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lca/uhn/hl7v2/model/v24/segment/PID;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    const-class v2, Lca/uhn/hl7v2/model/v24/datatype/TS;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x1a

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v6, v9

    const-string v7, "Last Update Date/Time"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lca/uhn/hl7v2/model/v24/segment/PID;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    const-class v11, Lca/uhn/hl7v2/model/v24/datatype/HD;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v14, 0x28

    new-array v15, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v15, v9

    const-string v16, "Last Update Facility"

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lca/uhn/hl7v2/model/v24/segment/PID;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    const-class v2, Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0xfa

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v6, v9

    const-string v7, "Species Code"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lca/uhn/hl7v2/model/v24/segment/PID;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    const-class v11, Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v14, 0xfa

    new-array v15, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v15, v9

    const-string v16, "Breed Code"

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lca/uhn/hl7v2/model/v24/segment/PID;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    const-class v2, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x50

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v6, v9

    const-string v7, "Strain"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lca/uhn/hl7v2/model/v24/segment/PID;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    const-class v11, Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v14, 0xfa

    new-array v15, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v15, v9

    const-string v16, "Production Class Code"

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lca/uhn/hl7v2/model/v24/segment/PID;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 77
    .local v1, "e":Lca/uhn/hl7v2/HL7Exception;
    sget-object v2, Lca/uhn/hl7v2/model/v24/segment/PID;->log:Lorg/slf4j/Logger;

    const-string v3, "Unexpected error creating PID - this is probably a bug in the source code generator."

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    .end local v1    # "e":Lca/uhn/hl7v2/HL7Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method protected createNewTypeWithoutReflection(I)Lca/uhn/hl7v2/model/Type;
    .locals 4
    .param p1, "field"    # I

    .line 871
    const/16 v0, 0x88

    packed-switch p1, :pswitch_data_0

    .line 950
    const/4 v0, 0x0

    return-object v0

    .line 948
    :pswitch_0
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/CE;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 946
    :pswitch_1
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/ST;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 944
    :pswitch_2
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/CE;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 942
    :pswitch_3
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/CE;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 940
    :pswitch_4
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/HD;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/HD;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 938
    :pswitch_5
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/TS;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 936
    :pswitch_6
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x1bd

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/IS;-><init>(Lca/uhn/hl7v2/model/Message;Ljava/lang/Integer;)V

    return-object v0

    .line 934
    :pswitch_7
    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/ID;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v1, v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ID;-><init>(Lca/uhn/hl7v2/model/Message;Ljava/lang/Integer;)V

    return-object v1

    .line 932
    :pswitch_8
    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/ID;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v1, v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ID;-><init>(Lca/uhn/hl7v2/model/Message;Ljava/lang/Integer;)V

    return-object v1

    .line 930
    :pswitch_9
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/TS;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 928
    :pswitch_a
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/CE;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 926
    :pswitch_b
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/CE;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 924
    :pswitch_c
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/CE;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 922
    :pswitch_d
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/NM;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/NM;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 920
    :pswitch_e
    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/ID;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v1, v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ID;-><init>(Lca/uhn/hl7v2/model/Message;Ljava/lang/Integer;)V

    return-object v1

    .line 918
    :pswitch_f
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/ST;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 916
    :pswitch_10
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/ST;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 914
    :pswitch_11
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/CX;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/CX;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 912
    :pswitch_12
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/DLN;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/DLN;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 910
    :pswitch_13
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/ST;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 908
    :pswitch_14
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/CX;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/CX;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 906
    :pswitch_15
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/CE;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 904
    :pswitch_16
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/CE;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 902
    :pswitch_17
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/CE;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 900
    :pswitch_18
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/ST;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 898
    :pswitch_19
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/ST;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 896
    :pswitch_1a
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x121

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/IS;-><init>(Lca/uhn/hl7v2/model/Message;Ljava/lang/Integer;)V

    return-object v0

    .line 894
    :pswitch_1b
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/ST;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 892
    :pswitch_1c
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/CE;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 890
    :pswitch_1d
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/ST;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 888
    :pswitch_1e
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/IS;-><init>(Lca/uhn/hl7v2/model/Message;Ljava/lang/Integer;)V

    return-object v0

    .line 886
    :pswitch_1f
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/TS;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 884
    :pswitch_20
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/XPN;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/XPN;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 882
    :pswitch_21
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/ST;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 880
    :pswitch_22
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/CX;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/CX;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 878
    :pswitch_23
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/CX;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/CX;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 876
    :pswitch_24
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/ST;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 874
    :pswitch_25
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/SI;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/SI;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
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

.method public getAdministrativeSex()Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 2

    .line 307
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    .line 308
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/IS;
    return-object v0
.end method

.method public getAlternatePatientIDPID(I)Lca/uhn/hl7v2/model/v24/datatype/CX;
    .locals 1
    .param p1, "rep"    # I

    .line 182
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CX;

    .line 183
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CX;
    return-object v0
.end method

.method public getAlternatePatientIDPID()[Lca/uhn/hl7v2/model/v24/datatype/CX;
    .locals 2

    .line 165
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/CX;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/CX;

    .line 166
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/CX;
    return-object v0
.end method

.method public getAlternatePatientIDPIDReps()I
    .locals 1

    .line 177
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getBirthOrder()Lca/uhn/hl7v2/model/v24/datatype/NM;
    .locals 2

    .line 611
    const/16 v0, 0x19

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/NM;

    .line 612
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/NM;
    return-object v0
.end method

.method public getBirthPlace()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 587
    const/16 v0, 0x17

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 588
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getBloodType()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 319
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 320
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getBreedCode()Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 835
    const/16 v0, 0x24

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 836
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getCitizenship(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I

    .line 640
    const/16 v0, 0x1a

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 641
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getCitizenship()[Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 623
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/16 v1, 0x1a

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 624
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getCitizenshipReps()I
    .locals 1

    .line 635
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getCountyCode()Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 2

    .line 405
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    .line 406
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/IS;
    return-object v0
.end method

.method public getDateTimeOfBirth()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 295
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    .line 296
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TS;
    return-object v0
.end method

.method public getDriverSLicenseNumberPatient()Lca/uhn/hl7v2/model/v24/datatype/DLN;
    .locals 2

    .line 504
    const/16 v0, 0x14

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/DLN;

    .line 505
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/DLN;
    return-object v0
.end method

.method public getEthnicGroup()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 574
    const/16 v0, 0x16

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 575
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getIdentityReliabilityCode(I)Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 1
    .param p1, "rep"    # I

    .line 758
    const/16 v0, 0x20

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    .line 759
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/IS;
    return-object v0
.end method

.method public getIdentityReliabilityCode()[Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 2

    .line 741
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/IS;

    const/16 v1, 0x20

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/IS;

    .line 742
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/IS;
    return-object v0
.end method

.method public getIdentityReliabilityCodeReps()I
    .locals 1

    .line 753
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getIdentityUnknownIndicator()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 729
    const/16 v0, 0x1f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    .line 730
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ID;
    return-object v0
.end method

.method public getLastUpdateDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 799
    const/16 v0, 0x21

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    .line 800
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TS;
    return-object v0
.end method

.method public getLastUpdateFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;
    .locals 2

    .line 811
    const/16 v0, 0x22

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/HD;

    .line 812
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/HD;
    return-object v0
.end method

.method public getMaritalStatus()Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 456
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 457
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getMotherSIdentifier(I)Lca/uhn/hl7v2/model/v24/datatype/CX;
    .locals 1
    .param p1, "rep"    # I

    .line 533
    const/16 v0, 0x15

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CX;

    .line 534
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CX;
    return-object v0
.end method

.method public getMotherSIdentifier()[Lca/uhn/hl7v2/model/v24/datatype/CX;
    .locals 2

    .line 516
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/CX;

    const/16 v1, 0x15

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/CX;

    .line 517
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/CX;
    return-object v0
.end method

.method public getMotherSIdentifierReps()I
    .locals 1

    .line 528
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getMotherSMaidenName(I)Lca/uhn/hl7v2/model/v24/datatype/XPN;
    .locals 1
    .param p1, "rep"    # I

    .line 254
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/XPN;

    .line 255
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/XPN;
    return-object v0
.end method

.method public getMotherSMaidenName()[Lca/uhn/hl7v2/model/v24/datatype/XPN;
    .locals 2

    .line 237
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/XPN;

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/XPN;

    .line 238
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/XPN;
    return-object v0
.end method

.method public getMotherSMaidenNameReps()I
    .locals 1

    .line 249
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getMultipleBirthIndicator()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 599
    const/16 v0, 0x18

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    .line 600
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ID;
    return-object v0
.end method

.method public getNationality()Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 693
    const/16 v0, 0x1c

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 694
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getPatientAccountNumber()Lca/uhn/hl7v2/model/v24/datatype/CX;
    .locals 2

    .line 480
    const/16 v0, 0x12

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CX;

    .line 481
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CX;
    return-object v0
.end method

.method public getPatientAddress()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 391
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 392
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getPatientDeathDateAndTime()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 705
    const/16 v0, 0x1d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    .line 706
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TS;
    return-object v0
.end method

.method public getPatientDeathIndicator()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 717
    const/16 v0, 0x1e

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    .line 718
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ID;
    return-object v0
.end method

.method public getPatientID()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 95
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 96
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getPatientIdentifierList(I)Lca/uhn/hl7v2/model/v24/datatype/CX;
    .locals 1
    .param p1, "rep"    # I

    .line 124
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CX;

    .line 125
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CX;
    return-object v0
.end method

.method public getPatientIdentifierList()[Lca/uhn/hl7v2/model/v24/datatype/CX;
    .locals 2

    .line 107
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/CX;

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/CX;

    .line 108
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/CX;
    return-object v0
.end method

.method public getPatientIdentifierListReps()I
    .locals 1

    .line 119
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getPatientName()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 223
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 224
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getPhoneNumberBusiness()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 431
    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 432
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getPhoneNumberHome()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 417
    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 418
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getPid10_Race(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I

    .line 356
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 357
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getPid10_Race()[Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 339
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 340
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getPid10_RaceReps()I
    .locals 1

    .line 362
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getPid11_PatientAddress()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 397
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 398
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getPid12_CountyCode()Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 2

    .line 411
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    .line 412
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/IS;
    return-object v0
.end method

.method public getPid13_PhoneNumberHome()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 423
    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 424
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getPid14_PhoneNumberBusiness()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 437
    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 438
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getPid15_PrimaryLanguage()Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 450
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 451
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getPid16_MaritalStatus()Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 462
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 463
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getPid17_Religion()Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 474
    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 475
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getPid18_PatientAccountNumber()Lca/uhn/hl7v2/model/v24/datatype/CX;
    .locals 2

    .line 486
    const/16 v0, 0x12

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CX;

    .line 487
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CX;
    return-object v0
.end method

.method public getPid19_SSNNumberPatient()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 498
    const/16 v0, 0x13

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 499
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getPid1_SetIDPID()Lca/uhn/hl7v2/model/v24/datatype/SI;
    .locals 2

    .line 89
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/SI;

    .line 90
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/SI;
    return-object v0
.end method

.method public getPid20_DriverSLicenseNumberPatient()Lca/uhn/hl7v2/model/v24/datatype/DLN;
    .locals 2

    .line 510
    const/16 v0, 0x14

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/DLN;

    .line 511
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/DLN;
    return-object v0
.end method

.method public getPid21_MotherSIdentifier(I)Lca/uhn/hl7v2/model/v24/datatype/CX;
    .locals 1
    .param p1, "rep"    # I

    .line 539
    const/16 v0, 0x15

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CX;

    .line 540
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CX;
    return-object v0
.end method

.method public getPid21_MotherSIdentifier()[Lca/uhn/hl7v2/model/v24/datatype/CX;
    .locals 2

    .line 522
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/CX;

    const/16 v1, 0x15

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/CX;

    .line 523
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/CX;
    return-object v0
.end method

.method public getPid21_MotherSIdentifierReps()I
    .locals 1

    .line 545
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getPid22_EthnicGroup()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 580
    const/16 v0, 0x16

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 581
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getPid23_BirthPlace()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 593
    const/16 v0, 0x17

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 594
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getPid24_MultipleBirthIndicator()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 605
    const/16 v0, 0x18

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    .line 606
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ID;
    return-object v0
.end method

.method public getPid25_BirthOrder()Lca/uhn/hl7v2/model/v24/datatype/NM;
    .locals 2

    .line 617
    const/16 v0, 0x19

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/NM;

    .line 618
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/NM;
    return-object v0
.end method

.method public getPid26_Citizenship(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I

    .line 646
    const/16 v0, 0x1a

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 647
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getPid26_Citizenship()[Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 629
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/16 v1, 0x1a

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 630
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getPid26_CitizenshipReps()I
    .locals 1

    .line 652
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getPid27_VeteransMilitaryStatus()Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 687
    const/16 v0, 0x1b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 688
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getPid28_Nationality()Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 699
    const/16 v0, 0x1c

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 700
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getPid29_PatientDeathDateAndTime()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 711
    const/16 v0, 0x1d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    .line 712
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TS;
    return-object v0
.end method

.method public getPid2_PatientID()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 101
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 102
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getPid30_PatientDeathIndicator()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 723
    const/16 v0, 0x1e

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    .line 724
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ID;
    return-object v0
.end method

.method public getPid31_IdentityUnknownIndicator()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 735
    const/16 v0, 0x1f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    .line 736
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ID;
    return-object v0
.end method

.method public getPid32_IdentityReliabilityCode(I)Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 1
    .param p1, "rep"    # I

    .line 764
    const/16 v0, 0x20

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    .line 765
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/IS;
    return-object v0
.end method

.method public getPid32_IdentityReliabilityCode()[Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 2

    .line 747
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/IS;

    const/16 v1, 0x20

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/IS;

    .line 748
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/IS;
    return-object v0
.end method

.method public getPid32_IdentityReliabilityCodeReps()I
    .locals 1

    .line 770
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getPid33_LastUpdateDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 805
    const/16 v0, 0x21

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    .line 806
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TS;
    return-object v0
.end method

.method public getPid34_LastUpdateFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;
    .locals 2

    .line 817
    const/16 v0, 0x22

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/HD;

    .line 818
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/HD;
    return-object v0
.end method

.method public getPid35_SpeciesCode()Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 829
    const/16 v0, 0x23

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 830
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getPid36_BreedCode()Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 841
    const/16 v0, 0x24

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 842
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getPid37_Strain()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 853
    const/16 v0, 0x25

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 854
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getPid38_ProductionClassCode()Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 865
    const/16 v0, 0x26

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 866
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getPid3_PatientIdentifierList(I)Lca/uhn/hl7v2/model/v24/datatype/CX;
    .locals 1
    .param p1, "rep"    # I

    .line 130
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CX;

    .line 131
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CX;
    return-object v0
.end method

.method public getPid3_PatientIdentifierList()[Lca/uhn/hl7v2/model/v24/datatype/CX;
    .locals 2

    .line 113
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/CX;

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/CX;

    .line 114
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/CX;
    return-object v0
.end method

.method public getPid3_PatientIdentifierListReps()I
    .locals 1

    .line 136
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getPid4_AlternatePatientIDPID(I)Lca/uhn/hl7v2/model/v24/datatype/CX;
    .locals 1
    .param p1, "rep"    # I

    .line 188
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CX;

    .line 189
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CX;
    return-object v0
.end method

.method public getPid4_AlternatePatientIDPID()[Lca/uhn/hl7v2/model/v24/datatype/CX;
    .locals 2

    .line 171
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/CX;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/CX;

    .line 172
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/CX;
    return-object v0
.end method

.method public getPid4_AlternatePatientIDPIDReps()I
    .locals 1

    .line 194
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getPid5_PatientName()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 229
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 230
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getPid6_MotherSMaidenName(I)Lca/uhn/hl7v2/model/v24/datatype/XPN;
    .locals 1
    .param p1, "rep"    # I

    .line 260
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/XPN;

    .line 261
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/XPN;
    return-object v0
.end method

.method public getPid6_MotherSMaidenName()[Lca/uhn/hl7v2/model/v24/datatype/XPN;
    .locals 2

    .line 243
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/XPN;

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/XPN;

    .line 244
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/XPN;
    return-object v0
.end method

.method public getPid6_MotherSMaidenNameReps()I
    .locals 1

    .line 266
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getPid7_DateTimeOfBirth()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 301
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    .line 302
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TS;
    return-object v0
.end method

.method public getPid8_AdministrativeSex()Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 2

    .line 313
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    .line 314
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/IS;
    return-object v0
.end method

.method public getPid9_BloodType()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 325
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 326
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getPrimaryLanguage()Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 444
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 445
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getProductionClassCode()Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 859
    const/16 v0, 0x26

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 860
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getRace(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I

    .line 350
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 351
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getRace()[Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 333
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 334
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getRaceReps()I
    .locals 1

    .line 345
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/PID;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getReligion()Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 468
    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 469
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getSSNNumberPatient()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 492
    const/16 v0, 0x13

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 493
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getSetIDPID()Lca/uhn/hl7v2/model/v24/datatype/SI;
    .locals 2

    .line 83
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/SI;

    .line 84
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/SI;
    return-object v0
.end method

.method public getSpeciesCode()Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 823
    const/16 v0, 0x23

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 824
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getStrain()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 847
    const/16 v0, 0x25

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 848
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getVeteransMilitaryStatus()Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 681
    const/16 v0, 0x1b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/PID;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 682
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public insertAlternatePatientIDPID(I)Lca/uhn/hl7v2/model/v24/datatype/CX;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 200
    const/4 v0, 0x4

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CX;

    return-object v0
.end method

.method public insertCitizenship(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 658
    const/16 v0, 0x1a

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method

.method public insertIdentityReliabilityCode(I)Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 776
    const/16 v0, 0x20

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    return-object v0
.end method

.method public insertMotherSIdentifier(I)Lca/uhn/hl7v2/model/v24/datatype/CX;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 551
    const/16 v0, 0x15

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CX;

    return-object v0
.end method

.method public insertMotherSMaidenName(I)Lca/uhn/hl7v2/model/v24/datatype/XPN;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 272
    const/4 v0, 0x6

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/XPN;

    return-object v0
.end method

.method public insertPatientIdentifierList(I)Lca/uhn/hl7v2/model/v24/datatype/CX;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 142
    const/4 v0, 0x3

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CX;

    return-object v0
.end method

.method public insertPid10_Race(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 374
    const/16 v0, 0xa

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method

.method public insertPid21_MotherSIdentifier(I)Lca/uhn/hl7v2/model/v24/datatype/CX;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 557
    const/16 v0, 0x15

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CX;

    return-object v0
.end method

.method public insertPid26_Citizenship(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 664
    const/16 v0, 0x1a

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method

.method public insertPid32_IdentityReliabilityCode(I)Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 782
    const/16 v0, 0x20

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    return-object v0
.end method

.method public insertPid3_PatientIdentifierList(I)Lca/uhn/hl7v2/model/v24/datatype/CX;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 148
    const/4 v0, 0x3

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CX;

    return-object v0
.end method

.method public insertPid4_AlternatePatientIDPID(I)Lca/uhn/hl7v2/model/v24/datatype/CX;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 206
    const/4 v0, 0x4

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CX;

    return-object v0
.end method

.method public insertPid6_MotherSMaidenName(I)Lca/uhn/hl7v2/model/v24/datatype/XPN;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 278
    const/4 v0, 0x6

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/XPN;

    return-object v0
.end method

.method public insertRace(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 368
    const/16 v0, 0xa

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method

.method public removeAlternatePatientIDPID(I)Lca/uhn/hl7v2/model/v24/datatype/CX;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 212
    const/4 v0, 0x4

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CX;

    return-object v0
.end method

.method public removeCitizenship(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 670
    const/16 v0, 0x1a

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method

.method public removeIdentityReliabilityCode(I)Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 788
    const/16 v0, 0x20

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    return-object v0
.end method

.method public removeMotherSIdentifier(I)Lca/uhn/hl7v2/model/v24/datatype/CX;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 563
    const/16 v0, 0x15

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CX;

    return-object v0
.end method

.method public removeMotherSMaidenName(I)Lca/uhn/hl7v2/model/v24/datatype/XPN;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 284
    const/4 v0, 0x6

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/XPN;

    return-object v0
.end method

.method public removePatientIdentifierList(I)Lca/uhn/hl7v2/model/v24/datatype/CX;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 154
    const/4 v0, 0x3

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CX;

    return-object v0
.end method

.method public removePid10_Race(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 386
    const/16 v0, 0xa

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method

.method public removePid21_MotherSIdentifier(I)Lca/uhn/hl7v2/model/v24/datatype/CX;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 569
    const/16 v0, 0x15

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CX;

    return-object v0
.end method

.method public removePid26_Citizenship(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 676
    const/16 v0, 0x1a

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method

.method public removePid32_IdentityReliabilityCode(I)Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 794
    const/16 v0, 0x20

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    return-object v0
.end method

.method public removePid3_PatientIdentifierList(I)Lca/uhn/hl7v2/model/v24/datatype/CX;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 160
    const/4 v0, 0x3

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CX;

    return-object v0
.end method

.method public removePid4_AlternatePatientIDPID(I)Lca/uhn/hl7v2/model/v24/datatype/CX;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 218
    const/4 v0, 0x4

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CX;

    return-object v0
.end method

.method public removePid6_MotherSMaidenName(I)Lca/uhn/hl7v2/model/v24/datatype/XPN;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 290
    const/4 v0, 0x6

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/XPN;

    return-object v0
.end method

.method public removeRace(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 380
    const/16 v0, 0xa

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method
