.class public Lca/uhn/hl7v2/model/v24/segment/OBR;
.super Lca/uhn/hl7v2/model/AbstractSegment;
.source "OBR.java"


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 0
    .param p1, "parent"    # Lca/uhn/hl7v2/model/Group;
    .param p2, "factory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 31
    invoke-direct {p0, p1, p2}, Lca/uhn/hl7v2/model/AbstractSegment;-><init>(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 32
    invoke-direct {p0, p2}, Lca/uhn/hl7v2/model/v24/segment/OBR;->init(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 33
    return-void
.end method

.method private init(Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 25
    .param p1, "factory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 39
    :try_start_0
    const-class v2, Lca/uhn/hl7v2/model/v24/datatype/SI;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v8, 0x1

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    const/4 v9, 0x0

    aput-object v1, v6, v9

    const-string v7, "Set ID - OBR"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lca/uhn/hl7v2/model/v24/segment/OBR;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    const-class v11, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v14, 0x16

    new-array v15, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v15, v9

    const-string v16, "Sample Barcode Number/Project ID"

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lca/uhn/hl7v2/model/v24/segment/OBR;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    const-class v2, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x16

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v6, v9

    const-string v7, "Sample Number/ProjectName"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lca/uhn/hl7v2/model/v24/segment/OBR;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    const-class v11, Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/16 v14, 0xfa

    new-array v15, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v15, v9

    const-string v16, "Universal Service Identifier"

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lca/uhn/hl7v2/model/v24/segment/OBR;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    const-class v2, Lca/uhn/hl7v2/model/v24/datatype/ID;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v10, 0x2

    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v6, v9

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v6, v8

    const-string v7, "Priority"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lca/uhn/hl7v2/model/v24/segment/OBR;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    const-class v12, Lca/uhn/hl7v2/model/v24/datatype/TS;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v15, 0x1a

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v17, "Requested Date/Time"

    move-object/from16 v11, p0

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v17}, Lca/uhn/hl7v2/model/v24/segment/OBR;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    const-class v19, Lca/uhn/hl7v2/model/v24/datatype/TS;

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x1a

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v24, "Observation Date/Time #"

    move-object/from16 v18, p0

    move-object/from16 v23, v1

    invoke-virtual/range {v18 .. v24}, Lca/uhn/hl7v2/model/v24/segment/OBR;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    const-class v12, Lca/uhn/hl7v2/model/v24/datatype/TS;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v15, 0x1a

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v17, "Observation End Date/Time #"

    move-object/from16 v11, p0

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v17}, Lca/uhn/hl7v2/model/v24/segment/OBR;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    const-class v19, Lca/uhn/hl7v2/model/v24/datatype/CQ;

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x14

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v24, "Collection Volume *"

    move-object/from16 v18, p0

    move-object/from16 v23, v1

    invoke-virtual/range {v18 .. v24}, Lca/uhn/hl7v2/model/v24/segment/OBR;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    const-class v12, Lca/uhn/hl7v2/model/v24/datatype/XCN;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xfa

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v17, "Collector Identifier *"

    move-object/from16 v11, p0

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v17}, Lca/uhn/hl7v2/model/v24/segment/OBR;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    const-class v19, Lca/uhn/hl7v2/model/v24/datatype/NM;

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x1

    new-array v1, v10, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v1, v9

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x41

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v8

    const-string v24, "Quality Control Liquid Quantity*"

    move-object/from16 v18, p0

    move-object/from16 v23, v1

    invoke-virtual/range {v18 .. v24}, Lca/uhn/hl7v2/model/v24/segment/OBR;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    const-class v12, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v15, 0xfa

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v17, "Quality Control Liquid ID"

    move-object/from16 v11, p0

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v17}, Lca/uhn/hl7v2/model/v24/segment/OBR;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    const-class v19, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x12c

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v24, "Relevant Clinical Info./Quality Control Liquid Name"

    move-object/from16 v18, p0

    move-object/from16 v23, v1

    invoke-virtual/range {v18 .. v24}, Lca/uhn/hl7v2/model/v24/segment/OBR;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    const-class v12, Lca/uhn/hl7v2/model/v24/datatype/TS;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v15, 0x1a

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v17, "Specimen Received Time / Quality Control Liquid Valid Date *"

    move-object/from16 v11, p0

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v17}, Lca/uhn/hl7v2/model/v24/segment/OBR;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    const-class v19, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x12c

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v24, "SampleType/Quality Control Liquid Batch No"

    move-object/from16 v18, p0

    move-object/from16 v23, v1

    invoke-virtual/range {v18 .. v24}, Lca/uhn/hl7v2/model/v24/segment/OBR;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    const-class v12, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xfa

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v17, "Submitting Physician/QC Scope"

    move-object/from16 v11, p0

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v17}, Lca/uhn/hl7v2/model/v24/segment/OBR;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    const-class v19, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/16 v20, 0x0

    const/16 v21, 0x2

    const/16 v22, 0xfa

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v24, "Submitting Department/Quality Control Density Level"

    move-object/from16 v18, p0

    move-object/from16 v23, v1

    invoke-virtual/range {v18 .. v24}, Lca/uhn/hl7v2/model/v24/segment/OBR;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    const-class v12, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v15, 0x3c

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v17, "Quality Control Density Average"

    move-object/from16 v11, p0

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v17}, Lca/uhn/hl7v2/model/v24/segment/OBR;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    const-class v19, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x3c

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v24, "Quality Control Liquid Standard Deviation"

    move-object/from16 v18, p0

    move-object/from16 v23, v1

    invoke-virtual/range {v18 .. v24}, Lca/uhn/hl7v2/model/v24/segment/OBR;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    const-class v12, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v15, 0x3c

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v17, "Attending Physician/Quality Control Test Result"

    move-object/from16 v11, p0

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v17}, Lca/uhn/hl7v2/model/v24/segment/OBR;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    const-class v19, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x3c

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v24, "Treat Department/Reagent batchNo"

    move-object/from16 v18, p0

    move-object/from16 v23, v1

    invoke-virtual/range {v18 .. v24}, Lca/uhn/hl7v2/model/v24/segment/OBR;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    const-class v12, Lca/uhn/hl7v2/model/v24/datatype/TS;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v15, 0x1a

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v17, "Results Rpt/Status Chng - Date/Time +"

    move-object/from16 v11, p0

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v17}, Lca/uhn/hl7v2/model/v24/segment/OBR;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    const-class v19, Lca/uhn/hl7v2/model/v24/datatype/MOC;

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x28

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v24, "Charge to Practice +"

    move-object/from16 v18, p0

    move-object/from16 v23, v1

    invoke-virtual/range {v18 .. v24}, Lca/uhn/hl7v2/model/v24/segment/OBR;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    const-class v12, Lca/uhn/hl7v2/model/v24/datatype/ID;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v15, 0xa

    new-array v1, v10, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v1, v9

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x4a

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v8

    const-string v17, "Diagnostic Serv Sect ID"

    move-object/from16 v11, p0

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v17}, Lca/uhn/hl7v2/model/v24/segment/OBR;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    const-class v19, Lca/uhn/hl7v2/model/v24/datatype/ID;

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x1

    new-array v1, v10, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v1, v9

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x7b

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v8

    const-string v24, "Result Status +"

    move-object/from16 v18, p0

    move-object/from16 v23, v1

    invoke-virtual/range {v18 .. v24}, Lca/uhn/hl7v2/model/v24/segment/OBR;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    const-class v12, Lca/uhn/hl7v2/model/v24/datatype/PRL;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v15, 0x190

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v17, "Parent Result +"

    move-object/from16 v11, p0

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v17}, Lca/uhn/hl7v2/model/v24/segment/OBR;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    const-class v19, Lca/uhn/hl7v2/model/v24/datatype/TQ;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0xc8

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v24, "Quantity/Timing"

    move-object/from16 v18, p0

    move-object/from16 v23, v1

    invoke-virtual/range {v18 .. v24}, Lca/uhn/hl7v2/model/v24/segment/OBR;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    const-class v12, Lca/uhn/hl7v2/model/v24/datatype/XCN;

    const/4 v13, 0x0

    const/4 v14, 0x5

    const/16 v15, 0xfa

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v17, "Result Copies To"

    move-object/from16 v11, p0

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v17}, Lca/uhn/hl7v2/model/v24/segment/OBR;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    const-class v19, Lca/uhn/hl7v2/model/v24/datatype/EIP;

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0xc8

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v24, "Parent Number"

    move-object/from16 v18, p0

    move-object/from16 v23, v1

    invoke-virtual/range {v18 .. v24}, Lca/uhn/hl7v2/model/v24/segment/OBR;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    const-class v12, Lca/uhn/hl7v2/model/v24/datatype/ID;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v15, 0x14

    new-array v1, v10, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v1, v9

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x7c

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v8

    const-string v17, "Transportation Mode"

    move-object/from16 v11, p0

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v17}, Lca/uhn/hl7v2/model/v24/segment/OBR;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    const-class v19, Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0xfa

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v24, "Reason for Study"

    move-object/from16 v18, p0

    move-object/from16 v23, v1

    invoke-virtual/range {v18 .. v24}, Lca/uhn/hl7v2/model/v24/segment/OBR;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    const-class v12, Lca/uhn/hl7v2/model/v24/datatype/NDL;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v15, 0xc8

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v17, "Principal Result Interpreter +"

    move-object/from16 v11, p0

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v17}, Lca/uhn/hl7v2/model/v24/segment/OBR;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    const-class v19, Lca/uhn/hl7v2/model/v24/datatype/NDL;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0xc8

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v24, "Assistant Result Interpreter +"

    move-object/from16 v18, p0

    move-object/from16 v23, v1

    invoke-virtual/range {v18 .. v24}, Lca/uhn/hl7v2/model/v24/segment/OBR;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    const-class v12, Lca/uhn/hl7v2/model/v24/datatype/NDL;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xc8

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v17, "Technician +"

    move-object/from16 v11, p0

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v17}, Lca/uhn/hl7v2/model/v24/segment/OBR;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    const-class v19, Lca/uhn/hl7v2/model/v24/datatype/NDL;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0xc8

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v24, "Transcriptionist +"

    move-object/from16 v18, p0

    move-object/from16 v23, v1

    invoke-virtual/range {v18 .. v24}, Lca/uhn/hl7v2/model/v24/segment/OBR;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    const-class v12, Lca/uhn/hl7v2/model/v24/datatype/TS;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v15, 0x1a

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v17, "Scheduled Date/Time +"

    move-object/from16 v11, p0

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v17}, Lca/uhn/hl7v2/model/v24/segment/OBR;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    const-class v19, Lca/uhn/hl7v2/model/v24/datatype/NM;

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x4

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v24, "Number of Sample Containers *"

    move-object/from16 v18, p0

    move-object/from16 v23, v1

    invoke-virtual/range {v18 .. v24}, Lca/uhn/hl7v2/model/v24/segment/OBR;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    const-class v12, Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xfa

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v17, "Transport Logistics of Collected Sample *"

    move-object/from16 v11, p0

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v17}, Lca/uhn/hl7v2/model/v24/segment/OBR;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    const-class v19, Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0xfa

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v24, "Collector\'s Comment *"

    move-object/from16 v18, p0

    move-object/from16 v23, v1

    invoke-virtual/range {v18 .. v24}, Lca/uhn/hl7v2/model/v24/segment/OBR;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    const-class v12, Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v15, 0xfa

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v17, "Transport Arrangement Responsibility"

    move-object/from16 v11, p0

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v17}, Lca/uhn/hl7v2/model/v24/segment/OBR;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    const-class v19, Lca/uhn/hl7v2/model/v24/datatype/ID;

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x1e

    new-array v1, v10, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v1, v9

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0xe0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v8

    const-string v24, "Transport Arranged"

    move-object/from16 v18, p0

    move-object/from16 v23, v1

    invoke-virtual/range {v18 .. v24}, Lca/uhn/hl7v2/model/v24/segment/OBR;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    const-class v12, Lca/uhn/hl7v2/model/v24/datatype/ID;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    new-array v1, v10, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v1, v9

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0xe1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v8

    const-string v17, "Escort Required"

    move-object/from16 v11, p0

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v17}, Lca/uhn/hl7v2/model/v24/segment/OBR;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    const-class v19, Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0xfa

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v24, "Planned Patient Transport Comment"

    move-object/from16 v18, p0

    move-object/from16 v23, v1

    invoke-virtual/range {v18 .. v24}, Lca/uhn/hl7v2/model/v24/segment/OBR;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    const-class v11, Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v14, 0xfa

    new-array v15, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v15, v9

    const-string v16, "Procedure Code"

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lca/uhn/hl7v2/model/v24/segment/OBR;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    const-class v2, Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xfa

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v6, v9

    const-string v7, "Procedure Code Modifier"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lca/uhn/hl7v2/model/v24/segment/OBR;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    const-class v11, Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xfa

    new-array v15, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v15, v9

    const-string v16, "Placer Supplemental Service Information"

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lca/uhn/hl7v2/model/v24/segment/OBR;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    const-class v2, Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xfa

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v6, v9

    const-string v7, "Filler Supplemental Service Information"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lca/uhn/hl7v2/model/v24/segment/OBR;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 89
    .local v1, "e":Lca/uhn/hl7v2/HL7Exception;
    sget-object v2, Lca/uhn/hl7v2/model/v24/segment/OBR;->log:Lorg/slf4j/Logger;

    const-string v3, "Unexpected error creating OBR - this is probably a bug in the source code generator."

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    .end local v1    # "e":Lca/uhn/hl7v2/HL7Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method protected createNewTypeWithoutReflection(I)Lca/uhn/hl7v2/model/Type;
    .locals 4
    .param p1, "field"    # I

    .line 1390
    packed-switch p1, :pswitch_data_0

    .line 1487
    const/4 v0, 0x0

    return-object v0

    .line 1485
    :pswitch_0
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/CE;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 1483
    :pswitch_1
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/CE;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 1481
    :pswitch_2
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/CE;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 1479
    :pswitch_3
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/CE;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 1477
    :pswitch_4
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/CE;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 1475
    :pswitch_5
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0xe1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/ID;-><init>(Lca/uhn/hl7v2/model/Message;Ljava/lang/Integer;)V

    return-object v0

    .line 1473
    :pswitch_6
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0xe0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/ID;-><init>(Lca/uhn/hl7v2/model/Message;Ljava/lang/Integer;)V

    return-object v0

    .line 1471
    :pswitch_7
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/CE;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 1469
    :pswitch_8
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/CE;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 1467
    :pswitch_9
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/CE;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 1465
    :pswitch_a
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/NM;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/NM;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 1463
    :pswitch_b
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/TS;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 1461
    :pswitch_c
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/NDL;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/NDL;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 1459
    :pswitch_d
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/NDL;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/NDL;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 1457
    :pswitch_e
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/NDL;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/NDL;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 1455
    :pswitch_f
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/NDL;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/NDL;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 1453
    :pswitch_10
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/CE;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 1451
    :pswitch_11
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x7c

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/ID;-><init>(Lca/uhn/hl7v2/model/Message;Ljava/lang/Integer;)V

    return-object v0

    .line 1449
    :pswitch_12
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/EIP;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/EIP;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 1447
    :pswitch_13
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/XCN;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/XCN;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 1445
    :pswitch_14
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/TQ;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/TQ;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 1443
    :pswitch_15
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/PRL;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/PRL;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 1441
    :pswitch_16
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x7b

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/ID;-><init>(Lca/uhn/hl7v2/model/Message;Ljava/lang/Integer;)V

    return-object v0

    .line 1439
    :pswitch_17
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x4a

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/ID;-><init>(Lca/uhn/hl7v2/model/Message;Ljava/lang/Integer;)V

    return-object v0

    .line 1437
    :pswitch_18
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/MOC;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/MOC;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 1435
    :pswitch_19
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/TS;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 1433
    :pswitch_1a
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/ST;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 1431
    :pswitch_1b
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/ST;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 1429
    :pswitch_1c
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/ST;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 1427
    :pswitch_1d
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/ST;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 1425
    :pswitch_1e
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/ST;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 1423
    :pswitch_1f
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/ST;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 1421
    :pswitch_20
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/ST;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 1419
    :pswitch_21
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/TS;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 1417
    :pswitch_22
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/ST;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 1415
    :pswitch_23
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/ST;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 1413
    :pswitch_24
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/NM;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/NM;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 1411
    :pswitch_25
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/XCN;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/XCN;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 1409
    :pswitch_26
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/CQ;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/CQ;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 1407
    :pswitch_27
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/TS;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 1405
    :pswitch_28
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/TS;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 1403
    :pswitch_29
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/TS;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 1401
    :pswitch_2a
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/ID;-><init>(Lca/uhn/hl7v2/model/Message;Ljava/lang/Integer;)V

    return-object v0

    .line 1399
    :pswitch_2b
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/CE;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 1397
    :pswitch_2c
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/ST;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 1395
    :pswitch_2d
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/ST;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 1393
    :pswitch_2e
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/SI;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/SI;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
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

.method public getAssistantResultInterpreter(I)Lca/uhn/hl7v2/model/v24/datatype/NDL;
    .locals 1
    .param p1, "rep"    # I

    .line 813
    const/16 v0, 0x21

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/NDL;

    .line 814
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/NDL;
    return-object v0
.end method

.method public getAssistantResultInterpreter()[Lca/uhn/hl7v2/model/v24/datatype/NDL;
    .locals 2

    .line 796
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/NDL;

    const/16 v1, 0x21

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/NDL;

    .line 797
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/NDL;
    return-object v0
.end method

.method public getAssistantResultInterpreterReps()I
    .locals 1

    .line 808
    const/16 v0, 0x21

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getAttendingPhysician()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 478
    const/16 v0, 0x14

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 479
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getChargeToPractice()Lca/uhn/hl7v2/model/v24/datatype/MOC;
    .locals 2

    .line 538
    const/16 v0, 0x17

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/MOC;

    .line 539
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/MOC;
    return-object v0
.end method

.method public getCollectionVolume()Lca/uhn/hl7v2/model/v24/datatype/CQ;
    .locals 2

    .line 224
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CQ;

    .line 225
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CQ;
    return-object v0
.end method

.method public getCollectorIdentifier(I)Lca/uhn/hl7v2/model/v24/datatype/XCN;
    .locals 1
    .param p1, "rep"    # I

    .line 253
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/XCN;

    .line 254
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/XCN;
    return-object v0
.end method

.method public getCollectorIdentifier()[Lca/uhn/hl7v2/model/v24/datatype/XCN;
    .locals 2

    .line 236
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/XCN;

    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/XCN;

    .line 237
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/XCN;
    return-object v0
.end method

.method public getCollectorIdentifierReps()I
    .locals 1

    .line 248
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getCollectorSComment(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I

    .line 1069
    const/16 v0, 0x27

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 1070
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getCollectorSComment()[Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 1052
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/16 v1, 0x27

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 1053
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getCollectorSCommentReps()I
    .locals 1

    .line 1064
    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getDiagnosticServSectID()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 550
    const/16 v0, 0x18

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    .line 551
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ID;
    return-object v0
.end method

.method public getEscortRequired()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 1134
    const/16 v0, 0x2a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    .line 1135
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ID;
    return-object v0
.end method

.method public getFillerSupplementalServiceInformation(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I

    .line 1349
    const/16 v0, 0x2f

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 1350
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getFillerSupplementalServiceInformation()[Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 1332
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/16 v1, 0x2f

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 1333
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getFillerSupplementalServiceInformationReps()I
    .locals 1

    .line 1344
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getNumberOfSampleContainers()Lca/uhn/hl7v2/model/v24/datatype/NM;
    .locals 2

    .line 982
    const/16 v0, 0x25

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/NM;

    .line 983
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/NM;
    return-object v0
.end method

.method public getObr10_CollectorIdentifier(I)Lca/uhn/hl7v2/model/v24/datatype/XCN;
    .locals 1
    .param p1, "rep"    # I

    .line 259
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/XCN;

    .line 260
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/XCN;
    return-object v0
.end method

.method public getObr10_CollectorIdentifier()[Lca/uhn/hl7v2/model/v24/datatype/XCN;
    .locals 2

    .line 242
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/XCN;

    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/XCN;

    .line 243
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/XCN;
    return-object v0
.end method

.method public getObr10_CollectorIdentifierReps()I
    .locals 1

    .line 265
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getObr11_QCLiquidQuantity()Lca/uhn/hl7v2/model/v24/datatype/NM;
    .locals 2

    .line 300
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/NM;

    .line 301
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/NM;
    return-object v0
.end method

.method public getObr12_QCLiquidID()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 312
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 313
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getObr13_QCLiquidName()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 335
    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 336
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getObr13_RelevantClinicalInfo()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 324
    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 325
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getObr14_QCLiquidValidDate()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 360
    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    .line 361
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TS;
    return-object v0
.end method

.method public getObr14_SpecimenReceivedDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 347
    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    .line 348
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TS;
    return-object v0
.end method

.method public getObr15_QCLiquidBatchNo()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 385
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 386
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getObr15_SampleType()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 372
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 373
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getObr16_QCScope()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 410
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 411
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getObr16_SubmittingPhysician()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 397
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 398
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getObr17_OrderCallbackPhoneNumberReps()I
    .locals 1

    .line 447
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getObr17_QCLiquidDensityLevel()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 441
    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 442
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getObr17_SubmittingDepartment()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 428
    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 429
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getObr18_QCLiquidDensityAV()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 460
    const/16 v0, 0x12

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 461
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getObr19_QCLiquidSD()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 472
    const/16 v0, 0x13

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 473
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getObr1_SetIDOBR()Lca/uhn/hl7v2/model/v24/datatype/SI;
    .locals 2

    .line 101
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/SI;

    .line 102
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/SI;
    return-object v0
.end method

.method public getObr20_AttendingPhysician()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 484
    const/16 v0, 0x14

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 485
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getObr20_QCTestResult()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 497
    const/16 v0, 0x14

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 498
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getObr21_QCReagentBatchNo()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 520
    const/16 v0, 0x15

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 521
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getObr21_TreatDepartment()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 509
    const/16 v0, 0x15

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 510
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getObr22_ResultsRptStatusChngDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 532
    const/16 v0, 0x16

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    .line 533
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TS;
    return-object v0
.end method

.method public getObr23_ChargeToPractice()Lca/uhn/hl7v2/model/v24/datatype/MOC;
    .locals 2

    .line 544
    const/16 v0, 0x17

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/MOC;

    .line 545
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/MOC;
    return-object v0
.end method

.method public getObr24_DiagnosticServSectID()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 556
    const/16 v0, 0x18

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    .line 557
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ID;
    return-object v0
.end method

.method public getObr25_ResultStatus()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 568
    const/16 v0, 0x19

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    .line 569
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ID;
    return-object v0
.end method

.method public getObr26_ParentResult()Lca/uhn/hl7v2/model/v24/datatype/PRL;
    .locals 2

    .line 580
    const/16 v0, 0x1a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/PRL;

    .line 581
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/PRL;
    return-object v0
.end method

.method public getObr27_QuantityTiming(I)Lca/uhn/hl7v2/model/v24/datatype/TQ;
    .locals 1
    .param p1, "rep"    # I

    .line 609
    const/16 v0, 0x1b

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TQ;

    .line 610
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TQ;
    return-object v0
.end method

.method public getObr27_QuantityTiming()[Lca/uhn/hl7v2/model/v24/datatype/TQ;
    .locals 2

    .line 592
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/TQ;

    const/16 v1, 0x1b

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/TQ;

    .line 593
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/TQ;
    return-object v0
.end method

.method public getObr27_QuantityTimingReps()I
    .locals 1

    .line 615
    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getObr28_ResultCopiesTo(I)Lca/uhn/hl7v2/model/v24/datatype/XCN;
    .locals 1
    .param p1, "rep"    # I

    .line 667
    const/16 v0, 0x1c

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/XCN;

    .line 668
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/XCN;
    return-object v0
.end method

.method public getObr28_ResultCopiesTo()[Lca/uhn/hl7v2/model/v24/datatype/XCN;
    .locals 2

    .line 650
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/XCN;

    const/16 v1, 0x1c

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/XCN;

    .line 651
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/XCN;
    return-object v0
.end method

.method public getObr28_ResultCopiesToReps()I
    .locals 1

    .line 673
    const/16 v0, 0x1c

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getObr29_ParentNumber()Lca/uhn/hl7v2/model/v24/datatype/EIP;
    .locals 2

    .line 708
    const/16 v0, 0x1d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/EIP;

    .line 709
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/EIP;
    return-object v0
.end method

.method public getObr2_QCProjectID()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 113
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 114
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getObr2_SampleBarCode()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 124
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 125
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getObr30_TransportationMode()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 720
    const/16 v0, 0x1e

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    .line 721
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ID;
    return-object v0
.end method

.method public getObr31_ReasonForStudy(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I

    .line 749
    const/16 v0, 0x1f

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 750
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getObr31_ReasonForStudy()[Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 732
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/16 v1, 0x1f

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 733
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getObr31_ReasonForStudyReps()I
    .locals 1

    .line 755
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getObr32_PrincipalResultInterpreter()Lca/uhn/hl7v2/model/v24/datatype/NDL;
    .locals 2

    .line 790
    const/16 v0, 0x20

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/NDL;

    .line 791
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/NDL;
    return-object v0
.end method

.method public getObr33_AssistantResultInterpreter(I)Lca/uhn/hl7v2/model/v24/datatype/NDL;
    .locals 1
    .param p1, "rep"    # I

    .line 819
    const/16 v0, 0x21

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/NDL;

    .line 820
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/NDL;
    return-object v0
.end method

.method public getObr33_AssistantResultInterpreter()[Lca/uhn/hl7v2/model/v24/datatype/NDL;
    .locals 2

    .line 802
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/NDL;

    const/16 v1, 0x21

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/NDL;

    .line 803
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/NDL;
    return-object v0
.end method

.method public getObr33_AssistantResultInterpreterReps()I
    .locals 1

    .line 825
    const/16 v0, 0x21

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getObr34_Technician(I)Lca/uhn/hl7v2/model/v24/datatype/NDL;
    .locals 1
    .param p1, "rep"    # I

    .line 877
    const/16 v0, 0x22

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/NDL;

    .line 878
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/NDL;
    return-object v0
.end method

.method public getObr34_Technician()[Lca/uhn/hl7v2/model/v24/datatype/NDL;
    .locals 2

    .line 860
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/NDL;

    const/16 v1, 0x22

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/NDL;

    .line 861
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/NDL;
    return-object v0
.end method

.method public getObr34_TechnicianReps()I
    .locals 1

    .line 883
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getObr35_Transcriptionist(I)Lca/uhn/hl7v2/model/v24/datatype/NDL;
    .locals 1
    .param p1, "rep"    # I

    .line 935
    const/16 v0, 0x23

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/NDL;

    .line 936
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/NDL;
    return-object v0
.end method

.method public getObr35_Transcriptionist()[Lca/uhn/hl7v2/model/v24/datatype/NDL;
    .locals 2

    .line 918
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/NDL;

    const/16 v1, 0x23

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/NDL;

    .line 919
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/NDL;
    return-object v0
.end method

.method public getObr35_TranscriptionistReps()I
    .locals 1

    .line 941
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getObr36_ScheduledDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 976
    const/16 v0, 0x24

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    .line 977
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TS;
    return-object v0
.end method

.method public getObr37_NumberOfSampleContainers()Lca/uhn/hl7v2/model/v24/datatype/NM;
    .locals 2

    .line 988
    const/16 v0, 0x25

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/NM;

    .line 989
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/NM;
    return-object v0
.end method

.method public getObr38_TransportLogisticsOfCollectedSample(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I

    .line 1017
    const/16 v0, 0x26

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 1018
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getObr38_TransportLogisticsOfCollectedSample()[Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 1000
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/16 v1, 0x26

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 1001
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getObr38_TransportLogisticsOfCollectedSampleReps()I
    .locals 1

    .line 1023
    const/16 v0, 0x26

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getObr39_CollectorSComment(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I

    .line 1075
    const/16 v0, 0x27

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 1076
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getObr39_CollectorSComment()[Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 1058
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/16 v1, 0x27

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 1059
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getObr39_CollectorSCommentReps()I
    .locals 1

    .line 1081
    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getObr3_QCProjectName()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 147
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 148
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getObr3_SampleID()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 136
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 137
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getObr40_TransportArrangementResponsibility()Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 1116
    const/16 v0, 0x28

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 1117
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getObr41_TransportArranged()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 1128
    const/16 v0, 0x29

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    .line 1129
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ID;
    return-object v0
.end method

.method public getObr42_EscortRequired()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 1140
    const/16 v0, 0x2a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    .line 1141
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ID;
    return-object v0
.end method

.method public getObr43_PlannedPatientTransportComment(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I

    .line 1169
    const/16 v0, 0x2b

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 1170
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getObr43_PlannedPatientTransportComment()[Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 1152
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/16 v1, 0x2b

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 1153
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getObr43_PlannedPatientTransportCommentReps()I
    .locals 1

    .line 1175
    const/16 v0, 0x2b

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getObr44_ProcedureCode()Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 1210
    const/16 v0, 0x2c

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 1211
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getObr45_ProcedureCodeModifier(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I

    .line 1239
    const/16 v0, 0x2d

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 1240
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getObr45_ProcedureCodeModifier()[Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 1222
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/16 v1, 0x2d

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 1223
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getObr45_ProcedureCodeModifierReps()I
    .locals 1

    .line 1245
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getObr46_PlacerSupplementalServiceInformation(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I

    .line 1297
    const/16 v0, 0x2e

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 1298
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getObr46_PlacerSupplementalServiceInformation()[Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 1280
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/16 v1, 0x2e

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 1281
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getObr46_PlacerSupplementalServiceInformationReps()I
    .locals 1

    .line 1303
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getObr47_FillerSupplementalServiceInformation(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I

    .line 1355
    const/16 v0, 0x2f

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 1356
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getObr47_FillerSupplementalServiceInformation()[Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 1338
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/16 v1, 0x2f

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 1339
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getObr47_FillerSupplementalServiceInformationReps()I
    .locals 1

    .line 1361
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getObr4_UniversalServiceIdentifier()Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 159
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 160
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getObr5_Priority()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 171
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    .line 172
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ID;
    return-object v0
.end method

.method public getObr6_RequestedDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 183
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    .line 184
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TS;
    return-object v0
.end method

.method public getObr7_ObservationDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 195
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    .line 196
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TS;
    return-object v0
.end method

.method public getObr7_QCTestTime()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 206
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    .line 207
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TS;
    return-object v0
.end method

.method public getObr8_ObservationEndDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 218
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    .line 219
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TS;
    return-object v0
.end method

.method public getObr9_CollectionVolume()Lca/uhn/hl7v2/model/v24/datatype/CQ;
    .locals 2

    .line 230
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CQ;

    .line 231
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CQ;
    return-object v0
.end method

.method public getObservationDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 189
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    .line 190
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TS;
    return-object v0
.end method

.method public getObservationEndDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 212
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    .line 213
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TS;
    return-object v0
.end method

.method public getParentNumber()Lca/uhn/hl7v2/model/v24/datatype/EIP;
    .locals 2

    .line 702
    const/16 v0, 0x1d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/EIP;

    .line 703
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/EIP;
    return-object v0
.end method

.method public getParentResult()Lca/uhn/hl7v2/model/v24/datatype/PRL;
    .locals 2

    .line 574
    const/16 v0, 0x1a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/PRL;

    .line 575
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/PRL;
    return-object v0
.end method

.method public getPlacerSupplementalServiceInformation(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I

    .line 1291
    const/16 v0, 0x2e

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 1292
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getPlacerSupplementalServiceInformation()[Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 1274
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/16 v1, 0x2e

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 1275
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getPlacerSupplementalServiceInformationReps()I
    .locals 1

    .line 1286
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getPlannedPatientTransportComment(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I

    .line 1163
    const/16 v0, 0x2b

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 1164
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getPlannedPatientTransportComment()[Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 1146
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/16 v1, 0x2b

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 1147
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getPlannedPatientTransportCommentReps()I
    .locals 1

    .line 1158
    const/16 v0, 0x2b

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getPrincipalResultInterpreter()Lca/uhn/hl7v2/model/v24/datatype/NDL;
    .locals 2

    .line 784
    const/16 v0, 0x20

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/NDL;

    .line 785
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/NDL;
    return-object v0
.end method

.method public getPriority()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 165
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    .line 166
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ID;
    return-object v0
.end method

.method public getProcedureCode()Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 1204
    const/16 v0, 0x2c

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 1205
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getProcedureCodeModifier(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I

    .line 1233
    const/16 v0, 0x2d

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 1234
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getProcedureCodeModifier()[Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 1216
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/16 v1, 0x2d

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 1217
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getProcedureCodeModifierReps()I
    .locals 1

    .line 1228
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getQCLiquidBatchNo()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 379
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 380
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getQCLiquidDensityAV()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 454
    const/16 v0, 0x12

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 455
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getQCLiquidDensityLevel()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 434
    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 435
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getQCLiquidID()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 306
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 307
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getQCLiquidName()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 329
    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 330
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getQCLiquidQuantity()Lca/uhn/hl7v2/model/v24/datatype/NM;
    .locals 2

    .line 294
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/NM;

    .line 295
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/NM;
    return-object v0
.end method

.method public getQCLiquidSD()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 466
    const/16 v0, 0x13

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 467
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getQCLiquidValidDate()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 354
    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    .line 355
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TS;
    return-object v0
.end method

.method public getQCProjectID()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 107
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 108
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getQCProjectName()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 141
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 142
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getQCReagentBatchNo()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 514
    const/16 v0, 0x15

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 515
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getQCScope()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 403
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 404
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getQCTestResult()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 491
    const/16 v0, 0x14

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 492
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getQCTestTime()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 200
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    .line 201
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TS;
    return-object v0
.end method

.method public getQuantityTiming(I)Lca/uhn/hl7v2/model/v24/datatype/TQ;
    .locals 1
    .param p1, "rep"    # I

    .line 603
    const/16 v0, 0x1b

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TQ;

    .line 604
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TQ;
    return-object v0
.end method

.method public getQuantityTiming()[Lca/uhn/hl7v2/model/v24/datatype/TQ;
    .locals 2

    .line 586
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/TQ;

    const/16 v1, 0x1b

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/TQ;

    .line 587
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/TQ;
    return-object v0
.end method

.method public getQuantityTimingReps()I
    .locals 1

    .line 598
    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getReasonForStudy(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I

    .line 743
    const/16 v0, 0x1f

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 744
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getReasonForStudy()[Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 726
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/16 v1, 0x1f

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 727
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getReasonForStudyReps()I
    .locals 1

    .line 738
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getRelevantClinicalInfo()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 318
    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 319
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getRequestedDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 177
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    .line 178
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TS;
    return-object v0
.end method

.method public getResultCopiesTo(I)Lca/uhn/hl7v2/model/v24/datatype/XCN;
    .locals 1
    .param p1, "rep"    # I

    .line 661
    const/16 v0, 0x1c

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/XCN;

    .line 662
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/XCN;
    return-object v0
.end method

.method public getResultCopiesTo()[Lca/uhn/hl7v2/model/v24/datatype/XCN;
    .locals 2

    .line 644
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/XCN;

    const/16 v1, 0x1c

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/XCN;

    .line 645
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/XCN;
    return-object v0
.end method

.method public getResultCopiesToReps()I
    .locals 1

    .line 656
    const/16 v0, 0x1c

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getResultStatus()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 562
    const/16 v0, 0x19

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    .line 563
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ID;
    return-object v0
.end method

.method public getResultsRptStatusChngDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 526
    const/16 v0, 0x16

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    .line 527
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TS;
    return-object v0
.end method

.method public getSampleBarCode()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 118
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 119
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getSampleID()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 130
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 131
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getSampleType()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 366
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 367
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getScheduledDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 970
    const/16 v0, 0x24

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    .line 971
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TS;
    return-object v0
.end method

.method public getSetIDOBR()Lca/uhn/hl7v2/model/v24/datatype/SI;
    .locals 2

    .line 95
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/SI;

    .line 96
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/SI;
    return-object v0
.end method

.method public getSpecimenReceivedDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 341
    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    .line 342
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TS;
    return-object v0
.end method

.method public getSubmittingDepartment()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 422
    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 423
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getSubmittingPhysician()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 391
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 392
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getTechnician(I)Lca/uhn/hl7v2/model/v24/datatype/NDL;
    .locals 1
    .param p1, "rep"    # I

    .line 871
    const/16 v0, 0x22

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/NDL;

    .line 872
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/NDL;
    return-object v0
.end method

.method public getTechnician()[Lca/uhn/hl7v2/model/v24/datatype/NDL;
    .locals 2

    .line 854
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/NDL;

    const/16 v1, 0x22

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/NDL;

    .line 855
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/NDL;
    return-object v0
.end method

.method public getTechnicianReps()I
    .locals 1

    .line 866
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getTranscriptionist(I)Lca/uhn/hl7v2/model/v24/datatype/NDL;
    .locals 1
    .param p1, "rep"    # I

    .line 929
    const/16 v0, 0x23

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/NDL;

    .line 930
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/NDL;
    return-object v0
.end method

.method public getTranscriptionist()[Lca/uhn/hl7v2/model/v24/datatype/NDL;
    .locals 2

    .line 912
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/NDL;

    const/16 v1, 0x23

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/NDL;

    .line 913
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/NDL;
    return-object v0
.end method

.method public getTranscriptionistReps()I
    .locals 1

    .line 924
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getTransportArranged()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 1122
    const/16 v0, 0x29

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    .line 1123
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ID;
    return-object v0
.end method

.method public getTransportArrangementResponsibility()Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 1110
    const/16 v0, 0x28

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 1111
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getTransportLogisticsOfCollectedSample(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I

    .line 1011
    const/16 v0, 0x26

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 1012
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getTransportLogisticsOfCollectedSample()[Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 994
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/16 v1, 0x26

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 995
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getTransportLogisticsOfCollectedSampleReps()I
    .locals 1

    .line 1006
    const/16 v0, 0x26

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getTransportationMode()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 714
    const/16 v0, 0x1e

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    .line 715
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ID;
    return-object v0
.end method

.method public getTreatDepartment()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 503
    const/16 v0, 0x15

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 504
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getUniversalServiceIdentifier()Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 153
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 154
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public insertAssistantResultInterpreter(I)Lca/uhn/hl7v2/model/v24/datatype/NDL;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 831
    const/16 v0, 0x21

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/NDL;

    return-object v0
.end method

.method public insertCollectorIdentifier(I)Lca/uhn/hl7v2/model/v24/datatype/XCN;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 271
    const/16 v0, 0xa

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/XCN;

    return-object v0
.end method

.method public insertCollectorSComment(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 1087
    const/16 v0, 0x27

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method

.method public insertFillerSupplementalServiceInformation(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 1367
    const/16 v0, 0x2f

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method

.method public insertObr10_CollectorIdentifier(I)Lca/uhn/hl7v2/model/v24/datatype/XCN;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 277
    const/16 v0, 0xa

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/XCN;

    return-object v0
.end method

.method public insertObr27_QuantityTiming(I)Lca/uhn/hl7v2/model/v24/datatype/TQ;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 627
    const/16 v0, 0x1b

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TQ;

    return-object v0
.end method

.method public insertObr28_ResultCopiesTo(I)Lca/uhn/hl7v2/model/v24/datatype/XCN;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 685
    const/16 v0, 0x1c

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/XCN;

    return-object v0
.end method

.method public insertObr31_ReasonForStudy(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 767
    const/16 v0, 0x1f

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method

.method public insertObr33_AssistantResultInterpreter(I)Lca/uhn/hl7v2/model/v24/datatype/NDL;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 837
    const/16 v0, 0x21

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/NDL;

    return-object v0
.end method

.method public insertObr34_Technician(I)Lca/uhn/hl7v2/model/v24/datatype/NDL;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 895
    const/16 v0, 0x22

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/NDL;

    return-object v0
.end method

.method public insertObr35_Transcriptionist(I)Lca/uhn/hl7v2/model/v24/datatype/NDL;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 953
    const/16 v0, 0x23

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/NDL;

    return-object v0
.end method

.method public insertObr38_TransportLogisticsOfCollectedSample(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 1035
    const/16 v0, 0x26

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method

.method public insertObr39_CollectorSComment(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 1093
    const/16 v0, 0x27

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method

.method public insertObr43_PlannedPatientTransportComment(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 1187
    const/16 v0, 0x2b

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method

.method public insertObr45_ProcedureCodeModifier(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 1257
    const/16 v0, 0x2d

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method

.method public insertObr46_PlacerSupplementalServiceInformation(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 1315
    const/16 v0, 0x2e

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method

.method public insertObr47_FillerSupplementalServiceInformation(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 1373
    const/16 v0, 0x2f

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method

.method public insertPlacerSupplementalServiceInformation(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 1309
    const/16 v0, 0x2e

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method

.method public insertPlannedPatientTransportComment(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 1181
    const/16 v0, 0x2b

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method

.method public insertProcedureCodeModifier(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 1251
    const/16 v0, 0x2d

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method

.method public insertQuantityTiming(I)Lca/uhn/hl7v2/model/v24/datatype/TQ;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 621
    const/16 v0, 0x1b

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TQ;

    return-object v0
.end method

.method public insertReasonForStudy(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 761
    const/16 v0, 0x1f

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method

.method public insertResultCopiesTo(I)Lca/uhn/hl7v2/model/v24/datatype/XCN;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 679
    const/16 v0, 0x1c

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/XCN;

    return-object v0
.end method

.method public insertTechnician(I)Lca/uhn/hl7v2/model/v24/datatype/NDL;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 889
    const/16 v0, 0x22

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/NDL;

    return-object v0
.end method

.method public insertTranscriptionist(I)Lca/uhn/hl7v2/model/v24/datatype/NDL;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 947
    const/16 v0, 0x23

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/NDL;

    return-object v0
.end method

.method public insertTransportLogisticsOfCollectedSample(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 1029
    const/16 v0, 0x26

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method

.method public removeAssistantResultInterpreter(I)Lca/uhn/hl7v2/model/v24/datatype/NDL;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 843
    const/16 v0, 0x21

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/NDL;

    return-object v0
.end method

.method public removeCollectorIdentifier(I)Lca/uhn/hl7v2/model/v24/datatype/XCN;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 283
    const/16 v0, 0xa

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/XCN;

    return-object v0
.end method

.method public removeCollectorSComment(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 1099
    const/16 v0, 0x27

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method

.method public removeFillerSupplementalServiceInformation(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 1379
    const/16 v0, 0x2f

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method

.method public removeObr10_CollectorIdentifier(I)Lca/uhn/hl7v2/model/v24/datatype/XCN;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 289
    const/16 v0, 0xa

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/XCN;

    return-object v0
.end method

.method public removeObr27_QuantityTiming(I)Lca/uhn/hl7v2/model/v24/datatype/TQ;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 639
    const/16 v0, 0x1b

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TQ;

    return-object v0
.end method

.method public removeObr28_ResultCopiesTo(I)Lca/uhn/hl7v2/model/v24/datatype/XCN;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 697
    const/16 v0, 0x1c

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/XCN;

    return-object v0
.end method

.method public removeObr31_ReasonForStudy(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 779
    const/16 v0, 0x1f

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method

.method public removeObr33_AssistantResultInterpreter(I)Lca/uhn/hl7v2/model/v24/datatype/NDL;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 849
    const/16 v0, 0x21

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/NDL;

    return-object v0
.end method

.method public removeObr34_Technician(I)Lca/uhn/hl7v2/model/v24/datatype/NDL;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 907
    const/16 v0, 0x22

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/NDL;

    return-object v0
.end method

.method public removeObr35_Transcriptionist(I)Lca/uhn/hl7v2/model/v24/datatype/NDL;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 965
    const/16 v0, 0x23

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/NDL;

    return-object v0
.end method

.method public removeObr38_TransportLogisticsOfCollectedSample(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 1047
    const/16 v0, 0x26

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method

.method public removeObr39_CollectorSComment(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 1105
    const/16 v0, 0x27

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method

.method public removeObr43_PlannedPatientTransportComment(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 1199
    const/16 v0, 0x2b

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method

.method public removeObr45_ProcedureCodeModifier(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 1269
    const/16 v0, 0x2d

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method

.method public removeObr46_PlacerSupplementalServiceInformation(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 1327
    const/16 v0, 0x2e

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method

.method public removeObr47_FillerSupplementalServiceInformation(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 1385
    const/16 v0, 0x2f

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method

.method public removePlacerSupplementalServiceInformation(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 1321
    const/16 v0, 0x2e

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method

.method public removePlannedPatientTransportComment(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 1193
    const/16 v0, 0x2b

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method

.method public removeProcedureCodeModifier(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 1263
    const/16 v0, 0x2d

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method

.method public removeQuantityTiming(I)Lca/uhn/hl7v2/model/v24/datatype/TQ;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 633
    const/16 v0, 0x1b

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TQ;

    return-object v0
.end method

.method public removeReasonForStudy(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 773
    const/16 v0, 0x1f

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method

.method public removeResultCopiesTo(I)Lca/uhn/hl7v2/model/v24/datatype/XCN;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 691
    const/16 v0, 0x1c

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/XCN;

    return-object v0
.end method

.method public removeTechnician(I)Lca/uhn/hl7v2/model/v24/datatype/NDL;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 901
    const/16 v0, 0x22

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/NDL;

    return-object v0
.end method

.method public removeTranscriptionist(I)Lca/uhn/hl7v2/model/v24/datatype/NDL;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 959
    const/16 v0, 0x23

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/NDL;

    return-object v0
.end method

.method public removeTransportLogisticsOfCollectedSample(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 1041
    const/16 v0, 0x26

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method
