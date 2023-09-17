.class public Lca/uhn/hl7v2/model/v24/segment/ROL;
.super Lca/uhn/hl7v2/model/AbstractSegment;
.source "ROL.java"


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 0
    .param p1, "parent"    # Lca/uhn/hl7v2/model/Group;
    .param p2, "factory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 21
    invoke-direct {p0, p1, p2}, Lca/uhn/hl7v2/model/AbstractSegment;-><init>(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 22
    invoke-direct {p0, p2}, Lca/uhn/hl7v2/model/v24/segment/ROL;->init(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 23
    return-void
.end method

.method private init(Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 17
    .param p1, "factory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 29
    :try_start_0
    const-class v2, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x3c

    const/4 v8, 0x1

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    const/4 v9, 0x0

    aput-object v1, v6, v9

    const-string v7, "Role Instance ID"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lca/uhn/hl7v2/model/v24/segment/ROL;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    const-class v11, Lca/uhn/hl7v2/model/v24/datatype/ID;

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x2

    const/4 v1, 0x2

    new-array v15, v1, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v15, v9

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x11f

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v15, v8

    const-string v16, "Action Code"

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lca/uhn/hl7v2/model/v24/segment/ROL;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    const-class v2, Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/16 v5, 0xfa

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v6, v9

    const-string v7, "Role-ROL"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lca/uhn/hl7v2/model/v24/segment/ROL;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    const-class v11, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/16 v14, 0xfa

    new-array v15, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v15, v9

    const-string v16, "Role Person"

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lca/uhn/hl7v2/model/v24/segment/ROL;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    const-class v2, Lca/uhn/hl7v2/model/v24/datatype/TS;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x1a

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v6, v9

    const-string v7, "Role Begin Date/Time"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lca/uhn/hl7v2/model/v24/segment/ROL;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    const-class v11, Lca/uhn/hl7v2/model/v24/datatype/TS;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v14, 0x1a

    new-array v15, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v15, v9

    const-string v16, "Role End Date/Time"

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lca/uhn/hl7v2/model/v24/segment/ROL;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    const-class v2, Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0xfa

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v6, v9

    const-string v7, "Role Duration"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lca/uhn/hl7v2/model/v24/segment/ROL;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    const-class v11, Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v14, 0xfa

    new-array v15, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v15, v9

    const-string v16, "Role Action Reason"

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lca/uhn/hl7v2/model/v24/segment/ROL;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    const-class v2, Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xfa

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v6, v9

    const-string v7, "Provider Type"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lca/uhn/hl7v2/model/v24/segment/ROL;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    const-class v11, Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v14, 0xfa

    new-array v15, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v15, v9

    const-string v16, "Organization Unit Type - ROL"

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lca/uhn/hl7v2/model/v24/segment/ROL;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    const-class v2, Lca/uhn/hl7v2/model/v24/datatype/XAD;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xfa

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v6, v9

    const-string v7, "Office/Home Address"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lca/uhn/hl7v2/model/v24/segment/ROL;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    const-class v11, Lca/uhn/hl7v2/model/v24/datatype/XTN;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xfa

    new-array v15, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    aput-object v1, v15, v9

    const-string v16, "Phone"

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lca/uhn/hl7v2/model/v24/segment/ROL;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 44
    .local v1, "e":Lca/uhn/hl7v2/HL7Exception;
    sget-object v2, Lca/uhn/hl7v2/model/v24/segment/ROL;->log:Lorg/slf4j/Logger;

    const-string v3, "Unexpected error creating ROL - this is probably a bug in the source code generator."

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    .end local v1    # "e":Lca/uhn/hl7v2/HL7Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method protected createNewTypeWithoutReflection(I)Lca/uhn/hl7v2/model/Type;
    .locals 4
    .param p1, "field"    # I

    .line 378
    packed-switch p1, :pswitch_data_0

    .line 405
    const/4 v0, 0x0

    return-object v0

    .line 403
    :pswitch_0
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/ST;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 401
    :pswitch_1
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/XAD;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/XAD;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 399
    :pswitch_2
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/CE;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 397
    :pswitch_3
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/CE;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 395
    :pswitch_4
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/CE;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 393
    :pswitch_5
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/CE;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 391
    :pswitch_6
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/TS;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 389
    :pswitch_7
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/TS;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 387
    :pswitch_8
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/ST;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 385
    :pswitch_9
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/CE;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 383
    :pswitch_a
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x11f

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/ID;-><init>(Lca/uhn/hl7v2/model/Message;Ljava/lang/Integer;)V

    return-object v0

    .line 381
    :pswitch_b
    new-instance v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/v24/datatype/ST;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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

.method public getActionCode()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 62
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    .line 63
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ID;
    return-object v0
.end method

.method public getOfficeHomeAddress(I)Lca/uhn/hl7v2/model/v24/datatype/XAD;
    .locals 1
    .param p1, "rep"    # I

    .line 279
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/XAD;

    .line 280
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/XAD;
    return-object v0
.end method

.method public getOfficeHomeAddress()[Lca/uhn/hl7v2/model/v24/datatype/XAD;
    .locals 2

    .line 262
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/XAD;

    const/16 v1, 0xb

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/XAD;

    .line 263
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/XAD;
    return-object v0
.end method

.method public getOfficeHomeAddressReps()I
    .locals 1

    .line 274
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getOrganizationUnitTypeROL()Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 250
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 251
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getPhone()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 320
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 321
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getPhone(I)Lca/uhn/hl7v2/model/v24/datatype/XTN;
    .locals 1
    .param p1, "rep"    # I

    .line 337
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/XTN;

    .line 338
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/XTN;
    return-object v0
.end method

.method public getPhoneReps()I
    .locals 1

    .line 332
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getProviderType(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I

    .line 209
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 210
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getProviderType()[Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 192
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 193
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getProviderTypeReps()I
    .locals 1

    .line 204
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getRol10_OrganizationUnitTypeROL()Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 256
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 257
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getRol11_OfficeHomeAddress(I)Lca/uhn/hl7v2/model/v24/datatype/XAD;
    .locals 1
    .param p1, "rep"    # I

    .line 285
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/XAD;

    .line 286
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/XAD;
    return-object v0
.end method

.method public getRol11_OfficeHomeAddress()[Lca/uhn/hl7v2/model/v24/datatype/XAD;
    .locals 2

    .line 268
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/XAD;

    const/16 v1, 0xb

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/XAD;

    .line 269
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/XAD;
    return-object v0
.end method

.method public getRol11_OfficeHomeAddressReps()I
    .locals 1

    .line 291
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getRol12_Phone()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 326
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 327
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getRol12_Phone(I)Lca/uhn/hl7v2/model/v24/datatype/XTN;
    .locals 1
    .param p1, "rep"    # I

    .line 343
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/XTN;

    .line 344
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/XTN;
    return-object v0
.end method

.method public getRol12_PhoneReps()I
    .locals 1

    .line 349
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getRol1_RoleInstanceID()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 56
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 57
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getRol2_ActionCode()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 68
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    .line 69
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ID;
    return-object v0
.end method

.method public getRol3_RoleROL()Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 80
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 81
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getRol4_RolePerson()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 92
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 93
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getRol4_RolePerson(I)Lca/uhn/hl7v2/model/v24/datatype/XCN;
    .locals 1
    .param p1, "rep"    # I

    .line 109
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/XCN;

    .line 110
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/XCN;
    return-object v0
.end method

.method public getRol4_RolePersonReps()I
    .locals 1

    .line 115
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getRol5_RoleBeginDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 150
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    .line 151
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TS;
    return-object v0
.end method

.method public getRol6_RoleEndDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 162
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    .line 163
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TS;
    return-object v0
.end method

.method public getRol7_RoleDuration()Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 174
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 175
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getRol8_RoleActionReason()Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 186
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 187
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getRol9_ProviderType(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I

    .line 215
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 216
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getRol9_ProviderType()[Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 198
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 199
    .local v0, "retVal":[Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getRol9_ProviderTypeReps()I
    .locals 1

    .line 221
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getRoleActionReason()Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 180
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 181
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getRoleBeginDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 144
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    .line 145
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TS;
    return-object v0
.end method

.method public getRoleDuration()Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 168
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 169
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public getRoleEndDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 156
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    .line 157
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/TS;
    return-object v0
.end method

.method public getRoleInstanceID()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 50
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 51
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getRolePerson()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 86
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    .line 87
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/ST;
    return-object v0
.end method

.method public getRolePerson(I)Lca/uhn/hl7v2/model/v24/datatype/XCN;
    .locals 1
    .param p1, "rep"    # I

    .line 103
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/XCN;

    .line 104
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/XCN;
    return-object v0
.end method

.method public getRolePersonReps()I
    .locals 1

    .line 98
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getReps(I)I

    move-result v0

    return v0
.end method

.method public getRoleROL()Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 74
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getTypedField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    .line 75
    .local v0, "retVal":Lca/uhn/hl7v2/model/v24/datatype/CE;
    return-object v0
.end method

.method public insertOfficeHomeAddress(I)Lca/uhn/hl7v2/model/v24/datatype/XAD;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 297
    const/16 v0, 0xb

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/XAD;

    return-object v0
.end method

.method public insertPhone(I)Lca/uhn/hl7v2/model/v24/datatype/XTN;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 355
    const/16 v0, 0xc

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/XTN;

    return-object v0
.end method

.method public insertProviderType(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 227
    const/16 v0, 0x9

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method

.method public insertRol11_OfficeHomeAddress(I)Lca/uhn/hl7v2/model/v24/datatype/XAD;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 303
    const/16 v0, 0xb

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/XAD;

    return-object v0
.end method

.method public insertRol12_Phone(I)Lca/uhn/hl7v2/model/v24/datatype/XTN;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 361
    const/16 v0, 0xc

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/XTN;

    return-object v0
.end method

.method public insertRol4_RolePerson(I)Lca/uhn/hl7v2/model/v24/datatype/XCN;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 127
    const/4 v0, 0x4

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/XCN;

    return-object v0
.end method

.method public insertRol9_ProviderType(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 233
    const/16 v0, 0x9

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method

.method public insertRolePerson(I)Lca/uhn/hl7v2/model/v24/datatype/XCN;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 121
    const/4 v0, 0x4

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->insertRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/XCN;

    return-object v0
.end method

.method public removeOfficeHomeAddress(I)Lca/uhn/hl7v2/model/v24/datatype/XAD;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 309
    const/16 v0, 0xb

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/XAD;

    return-object v0
.end method

.method public removePhone(I)Lca/uhn/hl7v2/model/v24/datatype/XTN;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 367
    const/16 v0, 0xc

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/XTN;

    return-object v0
.end method

.method public removeProviderType(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 239
    const/16 v0, 0x9

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method

.method public removeRol11_OfficeHomeAddress(I)Lca/uhn/hl7v2/model/v24/datatype/XAD;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 315
    const/16 v0, 0xb

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/XAD;

    return-object v0
.end method

.method public removeRol12_Phone(I)Lca/uhn/hl7v2/model/v24/datatype/XTN;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 373
    const/16 v0, 0xc

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/XTN;

    return-object v0
.end method

.method public removeRol4_RolePerson(I)Lca/uhn/hl7v2/model/v24/datatype/XCN;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 139
    const/4 v0, 0x4

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/XCN;

    return-object v0
.end method

.method public removeRol9_ProviderType(I)Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 245
    const/16 v0, 0x9

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method

.method public removeRolePerson(I)Lca/uhn/hl7v2/model/v24/datatype/XCN;
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 133
    const/4 v0, 0x4

    invoke-super {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->removeRepetition(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/XCN;

    return-object v0
.end method
