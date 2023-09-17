.class public Lcom/wen/fluorescence/lis/TCPDataGram;
.super Ljava/lang/Object;
.source "TCPDataGram.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encodeHL7DataGram(Lcom/wen/fluorescence/database/TestResult;Landroid/content/Context;)[B
    .locals 5
    .param p1, "testResult"    # Lcom/wen/fluorescence/database/TestResult;
    .param p2, "context"    # Landroid/content/Context;

    .line 389
    const/4 v0, 0x0

    .line 391
    .local v0, "txd":[B
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/wen/fluorescence/lis/TCPDataGram;->encodeTCPDataGramForString(Lcom/wen/fluorescence/database/TestResult;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 392
    .local v1, "sendResult":Ljava/lang/String;
    const-string v2, "as"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HL7:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 396
    .end local v1    # "sendResult":Ljava/lang/String;
    goto :goto_0

    .line 394
    :catch_0
    move-exception v1

    .line 395
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 397
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public encodeTCPDataGramForString(Lcom/wen/fluorescence/database/TestResult;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "testResult"    # Lcom/wen/fluorescence/database/TestResult;
    .param p2, "context"    # Landroid/content/Context;

    .line 408
    :try_start_0
    invoke-static {p1, p2}, Lcom/wen/fluorescence/lis/HL7;->SampleResult(Lcom/wen/fluorescence/database/TestResult;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 412
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method

.method public encodeTCPQCDataGram(Landroid/content/Context;Lcom/wen/fluorescence/database/TestResult;)[B
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "testResult"    # Lcom/wen/fluorescence/database/TestResult;

    .line 423
    const/4 v0, 0x0

    .line 425
    .local v0, "txd":[B
    :try_start_0
    invoke-static {p2}, Lcom/wen/fluorescence/lis/HL7;->QCResult(Lcom/wen/fluorescence/database/TestResult;)Ljava/lang/String;

    move-result-object v1

    .line 426
    .local v1, "sendResult":Ljava/lang/String;
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 429
    .end local v1    # "sendResult":Ljava/lang/String;
    goto :goto_0

    .line 427
    :catch_0
    move-exception v1

    .line 428
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 430
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public encodeTronHoTCPDataGram(Landroid/content/Context;Lcom/wen/fluorescence/database/TestResult;)[B
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sTestResult"    # Lcom/wen/fluorescence/database/TestResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    const/4 v0, 0x0

    .line 28
    .local v0, "type":I
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 29
    .local v1, "data":[B
    const/16 v2, 0x43

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 30
    const/16 v4, 0x48

    const/4 v5, 0x1

    aput-byte v4, v1, v5

    .line 31
    const/16 v6, 0x59

    const/4 v7, 0x2

    aput-byte v6, v1, v7

    .line 32
    const/16 v8, 0x4c

    const/4 v9, 0x3

    aput-byte v8, v1, v9

    .line 33
    const/16 v10, 0x3a

    const/4 v11, 0x4

    aput-byte v10, v1, v11

    .line 35
    const/4 v11, 0x6

    const/16 v12, 0x10

    const/4 v13, 0x5

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 45
    :pswitch_0
    aput-byte v12, v1, v13

    .line 46
    aput-byte v9, v1, v11

    goto :goto_0

    .line 41
    :pswitch_1
    aput-byte v12, v1, v13

    .line 42
    aput-byte v7, v1, v11

    .line 43
    goto :goto_0

    .line 37
    :pswitch_2
    aput-byte v12, v1, v13

    .line 38
    aput-byte v5, v1, v11

    .line 39
    nop

    .line 49
    :goto_0
    const/4 v7, 0x7

    aput-byte v3, v1, v7

    .line 50
    const/16 v9, 0x8

    aput-byte v3, v1, v9

    .line 51
    const/16 v11, 0x9

    aput-byte v5, v1, v11

    .line 54
    const/16 v11, 0xa

    .line 56
    .local v11, "offset":I
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v12

    invoke-virtual {v12}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v12

    if-ne v12, v7, :cond_0

    .line 57
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getAppId()Ljava/lang/String;

    move-result-object v12

    .line 57
    .local v12, "dataStruct":Ljava/lang/String;
    goto :goto_1

    .line 59
    .end local v12    # "dataStruct":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getSampleNumber()Ljava/lang/String;

    move-result-object v12

    .line 61
    .restart local v12    # "dataStruct":Ljava/lang/String;
    :goto_1
    const-string v13, "GBK"

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    array-length v14, v13

    move v15, v11

    move v11, v3

    .line 61
    .end local v11    # "offset":I
    .local v15, "offset":I
    :goto_2
    if-ge v11, v14, :cond_1

    aget-byte v16, v13, v11

    .line 62
    .local v16, "b":B
    add-int/lit8 v17, v15, 0x1

    .line 62
    .local v17, "offset":I
    aput-byte v16, v1, v15

    .line 61
    .end local v15    # "offset":I
    .end local v16    # "b":B
    add-int/lit8 v11, v11, 0x1

    move/from16 v15, v17

    goto :goto_2

    .line 64
    .end local v17    # "offset":I
    .restart local v15    # "offset":I
    :cond_1
    add-int/lit8 v11, v15, 0x1

    .line 64
    .restart local v11    # "offset":I
    const/16 v13, 0x23

    aput-byte v13, v1, v15

    .line 65
    .end local v15    # "offset":I
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v12

    .line 66
    const-string v14, "GBK"

    invoke-virtual {v12, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    array-length v15, v14

    move/from16 v16, v11

    move v11, v3

    .line 66
    .end local v11    # "offset":I
    .local v16, "offset":I
    :goto_3
    if-ge v11, v15, :cond_2

    aget-byte v17, v14, v11

    .line 67
    .local v17, "b":B
    add-int/lit8 v18, v16, 0x1

    .line 67
    .local v18, "offset":I
    aput-byte v17, v1, v16

    .line 66
    .end local v16    # "offset":I
    .end local v17    # "b":B
    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v18

    goto :goto_3

    .line 69
    .end local v18    # "offset":I
    .restart local v16    # "offset":I
    :cond_2
    add-int/lit8 v11, v16, 0x1

    .line 69
    .restart local v11    # "offset":I
    aput-byte v13, v1, v16

    .line 70
    .end local v16    # "offset":I
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getSimpleType()Ljava/lang/String;

    move-result-object v12

    .line 71
    const-string v14, "GBK"

    invoke-virtual {v12, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    array-length v15, v14

    move/from16 v16, v11

    move v11, v3

    .line 71
    .end local v11    # "offset":I
    .restart local v16    # "offset":I
    :goto_4
    if-ge v11, v15, :cond_3

    aget-byte v17, v14, v11

    .line 72
    .restart local v17    # "b":B
    add-int/lit8 v18, v16, 0x1

    .line 72
    .restart local v18    # "offset":I
    aput-byte v17, v1, v16

    .line 71
    .end local v16    # "offset":I
    .end local v17    # "b":B
    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v18

    goto :goto_4

    .line 74
    .end local v18    # "offset":I
    .restart local v16    # "offset":I
    :cond_3
    add-int/lit8 v11, v16, 0x1

    .line 74
    .restart local v11    # "offset":I
    aput-byte v13, v1, v16

    .line 76
    .end local v16    # "offset":I
    if-nez v0, :cond_1d

    .line 77
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getName()Ljava/lang/String;

    move-result-object v12

    .line 78
    const-string v14, "GBK"

    invoke-virtual {v12, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    array-length v15, v14

    move/from16 v16, v11

    move v11, v3

    .line 78
    .end local v11    # "offset":I
    .restart local v16    # "offset":I
    :goto_5
    if-ge v11, v15, :cond_4

    aget-byte v17, v14, v11

    .line 79
    .restart local v17    # "b":B
    add-int/lit8 v18, v16, 0x1

    .line 79
    .restart local v18    # "offset":I
    aput-byte v17, v1, v16

    .line 78
    .end local v16    # "offset":I
    .end local v17    # "b":B
    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v18

    goto :goto_5

    .line 81
    .end local v18    # "offset":I
    .restart local v16    # "offset":I
    :cond_4
    add-int/lit8 v11, v16, 0x1

    .line 81
    .restart local v11    # "offset":I
    aput-byte v13, v1, v16

    .line 82
    .end local v16    # "offset":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getSex()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 83
    const-string v14, "GBK"

    invoke-virtual {v12, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    array-length v15, v14

    move/from16 v16, v11

    move v11, v3

    .line 83
    .end local v11    # "offset":I
    .restart local v16    # "offset":I
    :goto_6
    if-ge v11, v15, :cond_5

    aget-byte v17, v14, v11

    .line 84
    .restart local v17    # "b":B
    add-int/lit8 v18, v16, 0x1

    .line 84
    .restart local v18    # "offset":I
    aput-byte v17, v1, v16

    .line 83
    .end local v16    # "offset":I
    .end local v17    # "b":B
    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v18

    goto :goto_6

    .line 86
    .end local v18    # "offset":I
    .restart local v16    # "offset":I
    :cond_5
    add-int/lit8 v11, v16, 0x1

    .line 86
    .restart local v11    # "offset":I
    aput-byte v13, v1, v16

    .line 87
    .end local v16    # "offset":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getAge()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 88
    const-string v14, "GBK"

    invoke-virtual {v12, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    array-length v15, v14

    move/from16 v16, v11

    move v11, v3

    .line 88
    .end local v11    # "offset":I
    .restart local v16    # "offset":I
    :goto_7
    if-ge v11, v15, :cond_6

    aget-byte v17, v14, v11

    .line 89
    .restart local v17    # "b":B
    add-int/lit8 v18, v16, 0x1

    .line 89
    .restart local v18    # "offset":I
    aput-byte v17, v1, v16

    .line 88
    .end local v16    # "offset":I
    .end local v17    # "b":B
    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v18

    goto :goto_7

    .line 91
    .end local v18    # "offset":I
    .restart local v16    # "offset":I
    :cond_6
    add-int/lit8 v11, v16, 0x1

    .line 91
    .restart local v11    # "offset":I
    aput-byte v13, v1, v16

    .line 92
    .end local v16    # "offset":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getPatientNumber()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 93
    const-string v14, "GBK"

    invoke-virtual {v12, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    array-length v15, v14

    move/from16 v16, v11

    move v11, v3

    .line 93
    .end local v11    # "offset":I
    .restart local v16    # "offset":I
    :goto_8
    if-ge v11, v15, :cond_7

    aget-byte v17, v14, v11

    .line 94
    .restart local v17    # "b":B
    add-int/lit8 v18, v16, 0x1

    .line 94
    .restart local v18    # "offset":I
    aput-byte v17, v1, v16

    .line 93
    .end local v16    # "offset":I
    .end local v17    # "b":B
    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v18

    goto :goto_8

    .line 96
    .end local v18    # "offset":I
    .restart local v16    # "offset":I
    :cond_7
    add-int/lit8 v11, v16, 0x1

    .line 96
    .restart local v11    # "offset":I
    aput-byte v13, v1, v16

    .line 97
    .end local v16    # "offset":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getDoctorNumber()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 98
    const-string v14, "GBK"

    invoke-virtual {v12, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    array-length v15, v14

    move/from16 v16, v11

    move v11, v3

    .line 98
    .end local v11    # "offset":I
    .restart local v16    # "offset":I
    :goto_9
    if-ge v11, v15, :cond_8

    aget-byte v17, v14, v11

    .line 99
    .restart local v17    # "b":B
    add-int/lit8 v18, v16, 0x1

    .line 99
    .restart local v18    # "offset":I
    aput-byte v17, v1, v16

    .line 98
    .end local v16    # "offset":I
    .end local v17    # "b":B
    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v18

    goto :goto_9

    .line 101
    .end local v18    # "offset":I
    .restart local v16    # "offset":I
    :cond_8
    add-int/lit8 v11, v16, 0x1

    .line 101
    .restart local v11    # "offset":I
    aput-byte v13, v1, v16

    .line 102
    .end local v16    # "offset":I
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getBedNumber()Ljava/lang/String;

    move-result-object v12

    .line 103
    const-string v14, "GBK"

    invoke-virtual {v12, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    array-length v15, v14

    move/from16 v16, v11

    move v11, v3

    .line 103
    .end local v11    # "offset":I
    .restart local v16    # "offset":I
    :goto_a
    if-ge v11, v15, :cond_9

    aget-byte v17, v14, v11

    .line 104
    .restart local v17    # "b":B
    add-int/lit8 v18, v16, 0x1

    .line 104
    .restart local v18    # "offset":I
    aput-byte v17, v1, v16

    .line 103
    .end local v16    # "offset":I
    .end local v17    # "b":B
    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v18

    goto :goto_a

    .line 106
    .end local v18    # "offset":I
    .restart local v16    # "offset":I
    :cond_9
    add-int/lit8 v11, v16, 0x1

    .line 106
    .restart local v11    # "offset":I
    aput-byte v13, v1, v16

    .line 107
    .end local v16    # "offset":I
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getSubmittingDivision()Ljava/lang/String;

    move-result-object v12

    .line 108
    const-string v14, "GBK"

    invoke-virtual {v12, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    array-length v15, v14

    move/from16 v16, v11

    move v11, v3

    .line 108
    .end local v11    # "offset":I
    .restart local v16    # "offset":I
    :goto_b
    if-ge v11, v15, :cond_a

    aget-byte v17, v14, v11

    .line 109
    .restart local v17    # "b":B
    add-int/lit8 v18, v16, 0x1

    .line 109
    .restart local v18    # "offset":I
    aput-byte v17, v1, v16

    .line 108
    .end local v16    # "offset":I
    .end local v17    # "b":B
    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v18

    goto :goto_b

    .line 111
    .end local v18    # "offset":I
    .restart local v16    # "offset":I
    :cond_a
    add-int/lit8 v11, v16, 0x1

    .line 111
    .restart local v11    # "offset":I
    aput-byte v13, v1, v16

    .line 112
    .end local v16    # "offset":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getSubmittingDoctor()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 113
    const-string v14, "GBK"

    invoke-virtual {v12, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    array-length v15, v14

    move/from16 v16, v11

    move v11, v3

    .line 113
    .end local v11    # "offset":I
    .restart local v16    # "offset":I
    :goto_c
    if-ge v11, v15, :cond_b

    aget-byte v17, v14, v11

    .line 114
    .restart local v17    # "b":B
    add-int/lit8 v18, v16, 0x1

    .line 114
    .restart local v18    # "offset":I
    aput-byte v17, v1, v16

    .line 113
    .end local v16    # "offset":I
    .end local v17    # "b":B
    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v18

    goto :goto_c

    .line 116
    .end local v18    # "offset":I
    .restart local v16    # "offset":I
    :cond_b
    add-int/lit8 v11, v16, 0x1

    .line 116
    .restart local v11    # "offset":I
    aput-byte v13, v1, v16

    .line 117
    .end local v16    # "offset":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getSubmittingTime()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 118
    const-string v14, "GBK"

    invoke-virtual {v12, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    array-length v15, v14

    move/from16 v16, v11

    move v11, v3

    .line 118
    .end local v11    # "offset":I
    .restart local v16    # "offset":I
    :goto_d
    if-ge v11, v15, :cond_c

    aget-byte v17, v14, v11

    .line 119
    .restart local v17    # "b":B
    add-int/lit8 v18, v16, 0x1

    .line 119
    .restart local v18    # "offset":I
    aput-byte v17, v1, v16

    .line 118
    .end local v16    # "offset":I
    .end local v17    # "b":B
    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v18

    goto :goto_d

    .line 121
    .end local v18    # "offset":I
    .restart local v16    # "offset":I
    :cond_c
    add-int/lit8 v11, v16, 0x1

    .line 121
    .restart local v11    # "offset":I
    aput-byte v13, v1, v16

    .line 122
    .end local v16    # "offset":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getInspectingDoctor()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 123
    const-string v14, "GBK"

    invoke-virtual {v12, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    array-length v15, v14

    move/from16 v16, v11

    move v11, v3

    .line 123
    .end local v11    # "offset":I
    .restart local v16    # "offset":I
    :goto_e
    if-ge v11, v15, :cond_d

    aget-byte v17, v14, v11

    .line 124
    .restart local v17    # "b":B
    add-int/lit8 v18, v16, 0x1

    .line 124
    .restart local v18    # "offset":I
    aput-byte v17, v1, v16

    .line 123
    .end local v16    # "offset":I
    .end local v17    # "b":B
    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v18

    goto :goto_e

    .line 126
    .end local v18    # "offset":I
    .restart local v16    # "offset":I
    :cond_d
    add-int/lit8 v11, v16, 0x1

    .line 126
    .restart local v11    # "offset":I
    aput-byte v13, v1, v16

    .line 127
    .end local v16    # "offset":I
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getTestTime()Ljava/lang/String;

    move-result-object v12

    .line 128
    const-string v14, "GBK"

    invoke-virtual {v12, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    array-length v15, v14

    move/from16 v16, v11

    move v11, v3

    .line 128
    .end local v11    # "offset":I
    .restart local v16    # "offset":I
    :goto_f
    if-ge v11, v15, :cond_e

    aget-byte v17, v14, v11

    .line 129
    .restart local v17    # "b":B
    add-int/lit8 v18, v16, 0x1

    .line 129
    .restart local v18    # "offset":I
    aput-byte v17, v1, v16

    .line 128
    .end local v16    # "offset":I
    .end local v17    # "b":B
    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v18

    goto :goto_f

    .line 131
    .end local v18    # "offset":I
    .restart local v16    # "offset":I
    :cond_e
    add-int/lit8 v11, v16, 0x1

    .line 131
    .restart local v11    # "offset":I
    aput-byte v13, v1, v16

    .line 132
    .end local v16    # "offset":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getReviewer()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 133
    const-string v14, "GBK"

    invoke-virtual {v12, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    array-length v15, v14

    move/from16 v16, v11

    move v11, v3

    .line 133
    .end local v11    # "offset":I
    .restart local v16    # "offset":I
    :goto_10
    if-ge v11, v15, :cond_f

    aget-byte v17, v14, v11

    .line 134
    .restart local v17    # "b":B
    add-int/lit8 v18, v16, 0x1

    .line 134
    .restart local v18    # "offset":I
    aput-byte v17, v1, v16

    .line 133
    .end local v16    # "offset":I
    .end local v17    # "b":B
    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v18

    goto :goto_10

    .line 136
    .end local v18    # "offset":I
    .restart local v16    # "offset":I
    :cond_f
    add-int/lit8 v11, v16, 0x1

    .line 136
    .restart local v11    # "offset":I
    aput-byte v13, v1, v16

    .line 137
    .end local v16    # "offset":I
    invoke-static/range {p1 .. p1}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v14

    const-string v15, "OrganizationFragment"

    const-string v9, ""

    .line 138
    invoke-virtual {v14, v15, v9}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 139
    .local v9, "organization":Ljava/lang/String;
    move-object v12, v9

    .line 140
    const-string v14, "GBK"

    invoke-virtual {v12, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    array-length v15, v14

    move/from16 v16, v11

    move v11, v3

    .line 140
    .end local v11    # "offset":I
    .restart local v16    # "offset":I
    :goto_11
    if-ge v11, v15, :cond_10

    aget-byte v17, v14, v11

    .line 141
    .restart local v17    # "b":B
    add-int/lit8 v18, v16, 0x1

    .line 141
    .restart local v18    # "offset":I
    aput-byte v17, v1, v16

    .line 140
    .end local v16    # "offset":I
    .end local v17    # "b":B
    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v18

    goto :goto_11

    .line 143
    .end local v18    # "offset":I
    .restart local v16    # "offset":I
    :cond_10
    add-int/lit8 v11, v16, 0x1

    .line 143
    .restart local v11    # "offset":I
    aput-byte v13, v1, v16

    .line 144
    .end local v16    # "offset":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getNote()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 145
    const-string v14, "GBK"

    invoke-virtual {v12, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    array-length v15, v14

    move/from16 v16, v11

    move v11, v3

    .line 145
    .end local v11    # "offset":I
    .restart local v16    # "offset":I
    :goto_12
    if-ge v11, v15, :cond_11

    aget-byte v17, v14, v11

    .line 146
    .restart local v17    # "b":B
    add-int/lit8 v18, v16, 0x1

    .line 146
    .restart local v18    # "offset":I
    aput-byte v17, v1, v16

    .line 145
    .end local v16    # "offset":I
    .end local v17    # "b":B
    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v18

    goto :goto_12

    .line 148
    .end local v18    # "offset":I
    .restart local v16    # "offset":I
    :cond_11
    add-int/lit8 v11, v16, 0x1

    .line 148
    .restart local v11    # "offset":I
    aput-byte v13, v1, v16

    .line 149
    .end local v16    # "offset":I
    invoke-static/range {p1 .. p1}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/wen/fluorescence/database/DBManager;->queryTestResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 150
    .local v14, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    const-string v12, ""

    .line 151
    move-object v15, v12

    move v12, v3

    .line 151
    .local v12, "i":I
    .local v15, "dataStruct":Ljava/lang/String;
    :goto_13
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v7

    if-ge v12, v7, :cond_14

    .line 152
    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_12

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_14

    .line 155
    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 157
    .end local v15    # "dataStruct":Ljava/lang/String;
    .local v3, "dataStruct":Ljava/lang/String;
    :goto_14
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v5

    if-ge v12, v7, :cond_13

    .line 158
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ":"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 151
    .end local v3    # "dataStruct":Ljava/lang/String;
    .restart local v15    # "dataStruct":Ljava/lang/String;
    :cond_13
    move-object v15, v3

    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x7

    goto/16 :goto_13

    .line 161
    .end local v12    # "i":I
    :cond_14
    const-string v3, "GBK"

    invoke-virtual {v15, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v7, v3

    move v12, v11

    const/4 v11, 0x0

    .line 161
    .end local v11    # "offset":I
    .local v12, "offset":I
    :goto_15
    if-ge v11, v7, :cond_15

    aget-byte v16, v3, v11

    .line 162
    .local v16, "b":B
    add-int/lit8 v17, v12, 0x1

    .line 162
    .local v17, "offset":I
    aput-byte v16, v1, v12

    .line 161
    .end local v12    # "offset":I
    .end local v16    # "b":B
    add-int/lit8 v11, v11, 0x1

    move/from16 v12, v17

    goto :goto_15

    .line 164
    .end local v17    # "offset":I
    .restart local v12    # "offset":I
    :cond_15
    add-int/lit8 v3, v12, 0x1

    .line 164
    .local v3, "offset":I
    aput-byte v13, v1, v12

    .line 165
    .end local v12    # "offset":I
    const-string v7, ""

    .line 166
    .end local v15    # "dataStruct":Ljava/lang/String;
    .local v7, "dataStruct":Ljava/lang/String;
    move-object v11, v7

    const/4 v7, 0x0

    .line 166
    .local v7, "i":I
    .local v11, "dataStruct":Ljava/lang/String;
    :goto_16
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v12

    if-ge v7, v12, :cond_18

    .line 167
    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v12}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_16

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v12}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v15}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_16

    .line 168
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v15}, Lcom/wen/fluorescence/database/TestResult;->getReResult()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_17

    .line 170
    :cond_16
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/wen/fluorescence/database/TestResult;

    invoke-static {v15}, Lcom/wen/fluorescence/util/PublicFuction;->getOnlyResult(Lcom/wen/fluorescence/database/TestResult;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 172
    :goto_17
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v5

    if-ge v7, v12, :cond_17

    .line 173
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ":"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 166
    :cond_17
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_16

    .line 176
    .end local v7    # "i":I
    :cond_18
    const-string v7, "GBK"

    invoke-virtual {v11, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    array-length v12, v7

    move v15, v3

    const/4 v3, 0x0

    .line 176
    .end local v3    # "offset":I
    .local v15, "offset":I
    :goto_18
    if-ge v3, v12, :cond_19

    aget-byte v16, v7, v3

    .line 177
    .restart local v16    # "b":B
    add-int/lit8 v17, v15, 0x1

    .line 177
    .restart local v17    # "offset":I
    aput-byte v16, v1, v15

    .line 176
    .end local v15    # "offset":I
    .end local v16    # "b":B
    add-int/lit8 v3, v3, 0x1

    move/from16 v15, v17

    goto :goto_18

    .line 179
    .end local v17    # "offset":I
    .restart local v15    # "offset":I
    :cond_19
    add-int/lit8 v3, v15, 0x1

    .line 179
    .restart local v3    # "offset":I
    aput-byte v13, v1, v15

    .line 180
    .end local v15    # "offset":I
    const-string v7, ""

    .line 181
    .end local v11    # "dataStruct":Ljava/lang/String;
    .local v7, "dataStruct":Ljava/lang/String;
    move-object v12, v7

    const/4 v7, 0x0

    .line 181
    .local v7, "i":I
    .local v12, "dataStruct":Ljava/lang/String;
    :goto_19
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v11

    if-ge v7, v11, :cond_1b

    .line 182
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/wen/fluorescence/database/TestResult;

    invoke-static {v15}, Lcom/wen/fluorescence/util/PublicFuction;->getOnlyConclusion(Lcom/wen/fluorescence/database/TestResult;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 183
    .end local v12    # "dataStruct":Ljava/lang/String;
    .restart local v11    # "dataStruct":Ljava/lang/String;
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v5

    if-ge v7, v12, :cond_1a

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v12

    if-le v12, v5, :cond_1a

    .line 184
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ":"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 181
    .end local v11    # "dataStruct":Ljava/lang/String;
    .restart local v12    # "dataStruct":Ljava/lang/String;
    :cond_1a
    move-object v12, v11

    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    .line 187
    .end local v7    # "i":I
    :cond_1b
    const-string v5, "GBK"

    invoke-virtual {v12, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v7, v5

    move v11, v3

    const/4 v3, 0x0

    .line 187
    .end local v3    # "offset":I
    .local v11, "offset":I
    :goto_1a
    if-ge v3, v7, :cond_1c

    aget-byte v15, v5, v3

    .line 188
    .local v15, "b":B
    add-int/lit8 v16, v11, 0x1

    .line 188
    .local v16, "offset":I
    aput-byte v15, v1, v11

    .line 187
    .end local v11    # "offset":I
    .end local v15    # "b":B
    add-int/lit8 v3, v3, 0x1

    move/from16 v11, v16

    goto :goto_1a

    .line 190
    .end local v16    # "offset":I
    .restart local v11    # "offset":I
    :cond_1c
    add-int/lit8 v3, v11, 0x1

    .line 190
    .restart local v3    # "offset":I
    aput-byte v13, v1, v11

    .line 191
    .end local v9    # "organization":Ljava/lang/String;
    .end local v11    # "offset":I
    .end local v14    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    nop

    .line 197
    move v11, v3

    goto :goto_1b

    .line 191
    .end local v3    # "offset":I
    .restart local v11    # "offset":I
    :cond_1d
    if-ne v0, v5, :cond_1e

    goto :goto_1b

    .line 194
    :cond_1e
    nop

    .line 197
    :goto_1b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getLogNo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 198
    .end local v12    # "dataStruct":Ljava/lang/String;
    .local v3, "dataStruct":Ljava/lang/String;
    const-string v5, "GBK"

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v7, v5

    const/4 v9, 0x0

    :goto_1c
    if-ge v9, v7, :cond_1f

    aget-byte v12, v5, v9

    .line 199
    .local v12, "b":B
    add-int/lit8 v14, v11, 0x1

    .line 199
    .local v14, "offset":I
    aput-byte v12, v1, v11

    .line 198
    .end local v11    # "offset":I
    .end local v12    # "b":B
    add-int/lit8 v9, v9, 0x1

    move v11, v14

    goto :goto_1c

    .line 201
    .end local v14    # "offset":I
    .restart local v11    # "offset":I
    :cond_1f
    add-int/lit8 v5, v11, 0x1

    .line 201
    .local v5, "offset":I
    aput-byte v13, v1, v11

    .line 203
    .end local v11    # "offset":I
    add-int/lit8 v7, v5, 0x1

    .line 203
    .local v7, "offset":I
    const/16 v9, 0xa

    aput-byte v9, v1, v5

    .line 204
    .end local v5    # "offset":I
    add-int/lit8 v5, v7, 0x1

    .line 204
    .restart local v5    # "offset":I
    aput-byte v10, v1, v7

    .line 205
    .end local v7    # "offset":I
    add-int/lit8 v7, v5, 0x1

    .line 205
    .restart local v7    # "offset":I
    aput-byte v8, v1, v5

    .line 206
    .end local v5    # "offset":I
    add-int/lit8 v5, v7, 0x1

    .line 206
    .restart local v5    # "offset":I
    aput-byte v6, v1, v7

    .line 207
    .end local v7    # "offset":I
    add-int/lit8 v6, v5, 0x1

    .line 207
    .local v6, "offset":I
    aput-byte v4, v1, v5

    .line 208
    .end local v5    # "offset":I
    add-int/lit8 v4, v6, 0x1

    .line 208
    .local v4, "offset":I
    aput-byte v2, v1, v6

    .line 209
    .end local v6    # "offset":I
    const/4 v2, 0x0

    aput-byte v2, v1, v4

    .line 210
    shr-int/lit8 v5, v4, 0x8

    int-to-byte v5, v5

    const/4 v6, 0x7

    aput-byte v5, v1, v6

    .line 211
    int-to-byte v5, v4

    const/16 v6, 0x8

    aput-byte v5, v1, v6

    .line 212
    move v5, v2

    .line 212
    .local v5, "i":I
    :goto_1d
    if-ge v5, v4, :cond_20

    .line 213
    aget-byte v6, v1, v4

    aget-byte v7, v1, v5

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, v4

    .line 212
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 216
    .end local v5    # "i":I
    :cond_20
    new-array v5, v4, [B

    .line 217
    .local v5, "mTX":[B
    nop

    .line 217
    .local v2, "i":I
    :goto_1e
    if-ge v2, v4, :cond_21

    .line 218
    aget-byte v6, v1, v2

    aput-byte v6, v5, v2

    .line 217
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 220
    .end local v2    # "i":I
    :cond_21
    return-object v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public encodeTronHoTCPDataGramTCP(Landroid/content/Context;Lcom/wen/fluorescence/database/TestResult;)[B
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sTestResult"    # Lcom/wen/fluorescence/database/TestResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 231
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 232
    .local v0, "data":[B
    const/16 v1, 0x43

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 233
    const/16 v3, 0x48

    const/4 v4, 0x1

    aput-byte v3, v0, v4

    .line 234
    const/16 v5, 0x59

    const/4 v6, 0x2

    aput-byte v5, v0, v6

    .line 235
    const/16 v6, 0x4c

    const/4 v7, 0x3

    aput-byte v6, v0, v7

    .line 236
    const/16 v7, 0x3a

    const/4 v8, 0x4

    aput-byte v7, v0, v8

    .line 237
    const/4 v8, 0x5

    aput-byte v2, v0, v8

    .line 238
    const/4 v9, 0x6

    aput-byte v2, v0, v9

    .line 239
    const/4 v10, 0x7

    aput-byte v2, v0, v10

    .line 240
    const/16 v11, 0x8

    aput-byte v2, v0, v11

    .line 241
    const/16 v12, 0x9

    aput-byte v4, v0, v12

    .line 244
    const/16 v12, 0xa

    .line 245
    .local v12, "offset":I
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getSampleNumber()Ljava/lang/String;

    move-result-object v13

    .line 246
    .local v13, "dataStruct":Ljava/lang/String;
    const-string v14, "GBK"

    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    array-length v15, v14

    move/from16 v16, v12

    move v12, v2

    .line 246
    .end local v12    # "offset":I
    .local v16, "offset":I
    :goto_0
    if-ge v12, v15, :cond_0

    aget-byte v17, v14, v12

    .line 247
    .local v17, "b":B
    add-int/lit8 v18, v16, 0x1

    .line 247
    .local v18, "offset":I
    aput-byte v17, v0, v16

    .line 246
    .end local v16    # "offset":I
    .end local v17    # "b":B
    add-int/lit8 v12, v12, 0x1

    move/from16 v16, v18

    goto :goto_0

    .line 249
    .end local v18    # "offset":I
    .restart local v16    # "offset":I
    :cond_0
    add-int/lit8 v12, v16, 0x1

    .line 249
    .restart local v12    # "offset":I
    const/16 v14, 0x23

    aput-byte v14, v0, v16

    .line 250
    .end local v16    # "offset":I
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v13

    .line 251
    const-string v15, "GBK"

    invoke-virtual {v13, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v15

    array-length v11, v15

    move/from16 v16, v12

    move v12, v2

    .line 251
    .end local v12    # "offset":I
    .restart local v16    # "offset":I
    :goto_1
    if-ge v12, v11, :cond_1

    aget-byte v17, v15, v12

    .line 252
    .restart local v17    # "b":B
    add-int/lit8 v18, v16, 0x1

    .line 252
    .restart local v18    # "offset":I
    aput-byte v17, v0, v16

    .line 251
    .end local v16    # "offset":I
    .end local v17    # "b":B
    add-int/lit8 v12, v12, 0x1

    move/from16 v16, v18

    goto :goto_1

    .line 254
    .end local v18    # "offset":I
    .restart local v16    # "offset":I
    :cond_1
    add-int/lit8 v11, v16, 0x1

    .line 254
    .local v11, "offset":I
    aput-byte v14, v0, v16

    .line 255
    .end local v16    # "offset":I
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getSimpleType()Ljava/lang/String;

    move-result-object v12

    .line 256
    .end local v13    # "dataStruct":Ljava/lang/String;
    .local v12, "dataStruct":Ljava/lang/String;
    const-string v13, "GBK"

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    array-length v15, v13

    move/from16 v16, v11

    move v11, v2

    .line 256
    .end local v11    # "offset":I
    .restart local v16    # "offset":I
    :goto_2
    if-ge v11, v15, :cond_2

    aget-byte v17, v13, v11

    .line 257
    .restart local v17    # "b":B
    add-int/lit8 v18, v16, 0x1

    .line 257
    .restart local v18    # "offset":I
    aput-byte v17, v0, v16

    .line 256
    .end local v16    # "offset":I
    .end local v17    # "b":B
    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v18

    goto :goto_2

    .line 259
    .end local v18    # "offset":I
    .restart local v16    # "offset":I
    :cond_2
    add-int/lit8 v11, v16, 0x1

    .line 259
    .restart local v11    # "offset":I
    aput-byte v14, v0, v16

    .line 260
    .end local v16    # "offset":I
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getName()Ljava/lang/String;

    move-result-object v12

    .line 261
    const-string v13, "GBK"

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    array-length v15, v13

    move/from16 v16, v11

    move v11, v2

    .line 261
    .end local v11    # "offset":I
    .restart local v16    # "offset":I
    :goto_3
    if-ge v11, v15, :cond_3

    aget-byte v17, v13, v11

    .line 262
    .restart local v17    # "b":B
    add-int/lit8 v18, v16, 0x1

    .line 262
    .restart local v18    # "offset":I
    aput-byte v17, v0, v16

    .line 261
    .end local v16    # "offset":I
    .end local v17    # "b":B
    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v18

    goto :goto_3

    .line 264
    .end local v18    # "offset":I
    .restart local v16    # "offset":I
    :cond_3
    add-int/lit8 v11, v16, 0x1

    .line 264
    .restart local v11    # "offset":I
    aput-byte v14, v0, v16

    .line 265
    .end local v16    # "offset":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getSex()I

    move-result v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 266
    const-string v13, "GBK"

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    array-length v15, v13

    move/from16 v16, v11

    move v11, v2

    .line 266
    .end local v11    # "offset":I
    .restart local v16    # "offset":I
    :goto_4
    if-ge v11, v15, :cond_4

    aget-byte v17, v13, v11

    .line 267
    .restart local v17    # "b":B
    add-int/lit8 v18, v16, 0x1

    .line 267
    .restart local v18    # "offset":I
    aput-byte v17, v0, v16

    .line 266
    .end local v16    # "offset":I
    .end local v17    # "b":B
    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v18

    goto :goto_4

    .line 269
    .end local v18    # "offset":I
    .restart local v16    # "offset":I
    :cond_4
    add-int/lit8 v11, v16, 0x1

    .line 269
    .restart local v11    # "offset":I
    aput-byte v14, v0, v16

    .line 270
    .end local v16    # "offset":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getAge()I

    move-result v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 271
    const-string v13, "GBK"

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    array-length v15, v13

    move/from16 v16, v11

    move v11, v2

    .line 271
    .end local v11    # "offset":I
    .restart local v16    # "offset":I
    :goto_5
    if-ge v11, v15, :cond_5

    aget-byte v17, v13, v11

    .line 272
    .restart local v17    # "b":B
    add-int/lit8 v18, v16, 0x1

    .line 272
    .restart local v18    # "offset":I
    aput-byte v17, v0, v16

    .line 271
    .end local v16    # "offset":I
    .end local v17    # "b":B
    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v18

    goto :goto_5

    .line 274
    .end local v18    # "offset":I
    .restart local v16    # "offset":I
    :cond_5
    add-int/lit8 v11, v16, 0x1

    .line 274
    .restart local v11    # "offset":I
    aput-byte v14, v0, v16

    .line 275
    .end local v16    # "offset":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getPatientNumber()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 276
    const-string v13, "GBK"

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    array-length v15, v13

    move/from16 v16, v11

    move v11, v2

    .line 276
    .end local v11    # "offset":I
    .restart local v16    # "offset":I
    :goto_6
    if-ge v11, v15, :cond_6

    aget-byte v17, v13, v11

    .line 277
    .restart local v17    # "b":B
    add-int/lit8 v18, v16, 0x1

    .line 277
    .restart local v18    # "offset":I
    aput-byte v17, v0, v16

    .line 276
    .end local v16    # "offset":I
    .end local v17    # "b":B
    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v18

    goto :goto_6

    .line 279
    .end local v18    # "offset":I
    .restart local v16    # "offset":I
    :cond_6
    add-int/lit8 v11, v16, 0x1

    .line 279
    .restart local v11    # "offset":I
    aput-byte v14, v0, v16

    .line 280
    .end local v16    # "offset":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getDoctorNumber()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 281
    const-string v13, "GBK"

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    array-length v15, v13

    move/from16 v16, v11

    move v11, v2

    .line 281
    .end local v11    # "offset":I
    .restart local v16    # "offset":I
    :goto_7
    if-ge v11, v15, :cond_7

    aget-byte v17, v13, v11

    .line 282
    .restart local v17    # "b":B
    add-int/lit8 v18, v16, 0x1

    .line 282
    .restart local v18    # "offset":I
    aput-byte v17, v0, v16

    .line 281
    .end local v16    # "offset":I
    .end local v17    # "b":B
    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v18

    goto :goto_7

    .line 284
    .end local v18    # "offset":I
    .restart local v16    # "offset":I
    :cond_7
    add-int/lit8 v11, v16, 0x1

    .line 284
    .restart local v11    # "offset":I
    aput-byte v14, v0, v16

    .line 285
    .end local v16    # "offset":I
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getBedNumber()Ljava/lang/String;

    move-result-object v12

    .line 286
    const-string v13, "GBK"

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    array-length v15, v13

    move/from16 v16, v11

    move v11, v2

    .line 286
    .end local v11    # "offset":I
    .restart local v16    # "offset":I
    :goto_8
    if-ge v11, v15, :cond_8

    aget-byte v17, v13, v11

    .line 287
    .restart local v17    # "b":B
    add-int/lit8 v18, v16, 0x1

    .line 287
    .restart local v18    # "offset":I
    aput-byte v17, v0, v16

    .line 286
    .end local v16    # "offset":I
    .end local v17    # "b":B
    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v18

    goto :goto_8

    .line 289
    .end local v18    # "offset":I
    .restart local v16    # "offset":I
    :cond_8
    add-int/lit8 v11, v16, 0x1

    .line 289
    .restart local v11    # "offset":I
    aput-byte v14, v0, v16

    .line 290
    .end local v16    # "offset":I
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getSubmittingDivision()Ljava/lang/String;

    move-result-object v12

    .line 291
    const-string v13, "GBK"

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    array-length v15, v13

    move/from16 v16, v11

    move v11, v2

    .line 291
    .end local v11    # "offset":I
    .restart local v16    # "offset":I
    :goto_9
    if-ge v11, v15, :cond_9

    aget-byte v17, v13, v11

    .line 292
    .restart local v17    # "b":B
    add-int/lit8 v18, v16, 0x1

    .line 292
    .restart local v18    # "offset":I
    aput-byte v17, v0, v16

    .line 291
    .end local v16    # "offset":I
    .end local v17    # "b":B
    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v18

    goto :goto_9

    .line 294
    .end local v18    # "offset":I
    .restart local v16    # "offset":I
    :cond_9
    add-int/lit8 v11, v16, 0x1

    .line 294
    .restart local v11    # "offset":I
    aput-byte v14, v0, v16

    .line 295
    .end local v16    # "offset":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getSubmittingDoctor()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 296
    const-string v13, "GBK"

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    array-length v15, v13

    move/from16 v16, v11

    move v11, v2

    .line 296
    .end local v11    # "offset":I
    .restart local v16    # "offset":I
    :goto_a
    if-ge v11, v15, :cond_a

    aget-byte v17, v13, v11

    .line 297
    .restart local v17    # "b":B
    add-int/lit8 v18, v16, 0x1

    .line 297
    .restart local v18    # "offset":I
    aput-byte v17, v0, v16

    .line 296
    .end local v16    # "offset":I
    .end local v17    # "b":B
    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v18

    goto :goto_a

    .line 299
    .end local v18    # "offset":I
    .restart local v16    # "offset":I
    :cond_a
    add-int/lit8 v11, v16, 0x1

    .line 299
    .restart local v11    # "offset":I
    aput-byte v14, v0, v16

    .line 300
    .end local v16    # "offset":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getSubmittingTime()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 301
    const-string v13, "GBK"

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    array-length v15, v13

    move/from16 v16, v11

    move v11, v2

    .line 301
    .end local v11    # "offset":I
    .restart local v16    # "offset":I
    :goto_b
    if-ge v11, v15, :cond_b

    aget-byte v17, v13, v11

    .line 302
    .restart local v17    # "b":B
    add-int/lit8 v18, v16, 0x1

    .line 302
    .restart local v18    # "offset":I
    aput-byte v17, v0, v16

    .line 301
    .end local v16    # "offset":I
    .end local v17    # "b":B
    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v18

    goto :goto_b

    .line 304
    .end local v18    # "offset":I
    .restart local v16    # "offset":I
    :cond_b
    add-int/lit8 v11, v16, 0x1

    .line 304
    .restart local v11    # "offset":I
    aput-byte v14, v0, v16

    .line 305
    .end local v16    # "offset":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getInspectingDoctor()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 306
    const-string v13, "GBK"

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    array-length v15, v13

    move/from16 v16, v11

    move v11, v2

    .line 306
    .end local v11    # "offset":I
    .restart local v16    # "offset":I
    :goto_c
    if-ge v11, v15, :cond_c

    aget-byte v17, v13, v11

    .line 307
    .restart local v17    # "b":B
    add-int/lit8 v18, v16, 0x1

    .line 307
    .restart local v18    # "offset":I
    aput-byte v17, v0, v16

    .line 306
    .end local v16    # "offset":I
    .end local v17    # "b":B
    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v18

    goto :goto_c

    .line 309
    .end local v18    # "offset":I
    .restart local v16    # "offset":I
    :cond_c
    add-int/lit8 v11, v16, 0x1

    .line 309
    .restart local v11    # "offset":I
    aput-byte v14, v0, v16

    .line 310
    .end local v16    # "offset":I
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getTestTime()Ljava/lang/String;

    move-result-object v12

    .line 311
    const-string v13, "GBK"

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    array-length v15, v13

    move/from16 v16, v11

    move v11, v2

    .line 311
    .end local v11    # "offset":I
    .restart local v16    # "offset":I
    :goto_d
    if-ge v11, v15, :cond_d

    aget-byte v17, v13, v11

    .line 312
    .restart local v17    # "b":B
    add-int/lit8 v18, v16, 0x1

    .line 312
    .restart local v18    # "offset":I
    aput-byte v17, v0, v16

    .line 311
    .end local v16    # "offset":I
    .end local v17    # "b":B
    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v18

    goto :goto_d

    .line 314
    .end local v18    # "offset":I
    .restart local v16    # "offset":I
    :cond_d
    add-int/lit8 v11, v16, 0x1

    .line 314
    .restart local v11    # "offset":I
    aput-byte v14, v0, v16

    .line 315
    .end local v16    # "offset":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getReviewer()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 316
    const-string v13, "GBK"

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    array-length v15, v13

    move/from16 v16, v11

    move v11, v2

    .line 316
    .end local v11    # "offset":I
    .restart local v16    # "offset":I
    :goto_e
    if-ge v11, v15, :cond_e

    aget-byte v17, v13, v11

    .line 317
    .restart local v17    # "b":B
    add-int/lit8 v18, v16, 0x1

    .line 317
    .restart local v18    # "offset":I
    aput-byte v17, v0, v16

    .line 316
    .end local v16    # "offset":I
    .end local v17    # "b":B
    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v18

    goto :goto_e

    .line 319
    .end local v18    # "offset":I
    .restart local v16    # "offset":I
    :cond_e
    add-int/lit8 v11, v16, 0x1

    .line 319
    .restart local v11    # "offset":I
    aput-byte v14, v0, v16

    .line 320
    .end local v16    # "offset":I
    invoke-static/range {p1 .. p1}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v13

    const-string v15, "OrganizationFragment"

    const-string v10, ""

    .line 321
    invoke-virtual {v13, v15, v10}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 322
    .local v10, "organization":Ljava/lang/String;
    move-object v12, v10

    .line 323
    const-string v13, "GBK"

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    array-length v15, v13

    move/from16 v16, v11

    move v11, v2

    .line 323
    .end local v11    # "offset":I
    .restart local v16    # "offset":I
    :goto_f
    if-ge v11, v15, :cond_f

    aget-byte v17, v13, v11

    .line 324
    .restart local v17    # "b":B
    add-int/lit8 v18, v16, 0x1

    .line 324
    .restart local v18    # "offset":I
    aput-byte v17, v0, v16

    .line 323
    .end local v16    # "offset":I
    .end local v17    # "b":B
    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v18

    goto :goto_f

    .line 326
    .end local v18    # "offset":I
    .restart local v16    # "offset":I
    :cond_f
    add-int/lit8 v11, v16, 0x1

    .line 326
    .restart local v11    # "offset":I
    aput-byte v14, v0, v16

    .line 327
    .end local v16    # "offset":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getNote()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 328
    const-string v13, "GBK"

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    array-length v15, v13

    move/from16 v16, v11

    move v11, v2

    .line 328
    .end local v11    # "offset":I
    .restart local v16    # "offset":I
    :goto_10
    if-ge v11, v15, :cond_10

    aget-byte v17, v13, v11

    .line 329
    .restart local v17    # "b":B
    add-int/lit8 v18, v16, 0x1

    .line 329
    .restart local v18    # "offset":I
    aput-byte v17, v0, v16

    .line 328
    .end local v16    # "offset":I
    .end local v17    # "b":B
    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v18

    goto :goto_10

    .line 331
    .end local v18    # "offset":I
    .restart local v16    # "offset":I
    :cond_10
    add-int/lit8 v11, v16, 0x1

    .line 331
    .restart local v11    # "offset":I
    aput-byte v14, v0, v16

    .line 332
    .end local v16    # "offset":I
    invoke-static/range {p1 .. p1}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/wen/fluorescence/database/DBManager;->queryTestResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 333
    .local v13, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    const-string v12, ""

    .line 334
    move-object v15, v12

    move v12, v2

    .line 334
    .local v12, "i":I
    .local v15, "dataStruct":Ljava/lang/String;
    :goto_11
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v9

    if-ge v12, v9, :cond_12

    .line 335
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v8}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 336
    .end local v15    # "dataStruct":Ljava/lang/String;
    .local v8, "dataStruct":Ljava/lang/String;
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v4

    if-ge v12, v9, :cond_11

    .line 337
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ":"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 334
    .end local v8    # "dataStruct":Ljava/lang/String;
    .restart local v15    # "dataStruct":Ljava/lang/String;
    :cond_11
    move-object v15, v8

    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x5

    const/4 v9, 0x6

    goto :goto_11

    .line 340
    .end local v12    # "i":I
    :cond_12
    const-string v8, "GBK"

    invoke-virtual {v15, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    array-length v9, v8

    move v12, v11

    move v11, v2

    .line 340
    .end local v11    # "offset":I
    .local v12, "offset":I
    :goto_12
    if-ge v11, v9, :cond_13

    aget-byte v16, v8, v11

    .line 341
    .local v16, "b":B
    add-int/lit8 v17, v12, 0x1

    .line 341
    .local v17, "offset":I
    aput-byte v16, v0, v12

    .line 340
    .end local v12    # "offset":I
    .end local v16    # "b":B
    add-int/lit8 v11, v11, 0x1

    move/from16 v12, v17

    goto :goto_12

    .line 343
    .end local v17    # "offset":I
    .restart local v12    # "offset":I
    :cond_13
    add-int/lit8 v8, v12, 0x1

    .line 343
    .local v8, "offset":I
    aput-byte v14, v0, v12

    .line 344
    .end local v12    # "offset":I
    const-string v9, ""

    .line 345
    .end local v15    # "dataStruct":Ljava/lang/String;
    .local v9, "dataStruct":Ljava/lang/String;
    move-object v11, v9

    move v9, v2

    .line 345
    .local v9, "i":I
    .local v11, "dataStruct":Ljava/lang/String;
    :goto_13
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v12

    if-ge v9, v12, :cond_16

    .line 346
    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v12}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeFlag()I

    move-result v12

    if-nez v12, :cond_14

    .line 347
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v15}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_14

    .line 349
    :cond_14
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v15}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeVerdict()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 351
    :goto_14
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v4

    if-ge v9, v12, :cond_15

    .line 352
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ":"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 345
    :cond_15
    add-int/lit8 v9, v9, 0x1

    goto :goto_13

    .line 355
    .end local v9    # "i":I
    :cond_16
    const-string v4, "GBK"

    invoke-virtual {v11, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    array-length v9, v4

    move v12, v8

    move v8, v2

    .line 355
    .end local v8    # "offset":I
    .restart local v12    # "offset":I
    :goto_15
    if-ge v8, v9, :cond_17

    aget-byte v15, v4, v8

    .line 356
    .local v15, "b":B
    add-int/lit8 v16, v12, 0x1

    .line 356
    .local v16, "offset":I
    aput-byte v15, v0, v12

    .line 355
    .end local v12    # "offset":I
    .end local v15    # "b":B
    add-int/lit8 v8, v8, 0x1

    move/from16 v12, v16

    goto :goto_15

    .line 358
    .end local v16    # "offset":I
    .restart local v12    # "offset":I
    :cond_17
    add-int/lit8 v4, v12, 0x1

    .line 358
    .local v4, "offset":I
    aput-byte v14, v0, v12

    .line 359
    .end local v12    # "offset":I
    add-int/lit8 v8, v4, 0x1

    .line 359
    .restart local v8    # "offset":I
    const/16 v9, 0xa

    aput-byte v9, v0, v4

    .line 360
    .end local v4    # "offset":I
    add-int/lit8 v4, v8, 0x1

    .line 360
    .restart local v4    # "offset":I
    aput-byte v7, v0, v8

    .line 361
    .end local v8    # "offset":I
    add-int/lit8 v7, v4, 0x1

    .line 361
    .local v7, "offset":I
    aput-byte v6, v0, v4

    .line 362
    .end local v4    # "offset":I
    add-int/lit8 v4, v7, 0x1

    .line 362
    .restart local v4    # "offset":I
    aput-byte v5, v0, v7

    .line 363
    .end local v7    # "offset":I
    add-int/lit8 v5, v4, 0x1

    .line 363
    .local v5, "offset":I
    aput-byte v3, v0, v4

    .line 364
    .end local v4    # "offset":I
    add-int/lit8 v3, v5, 0x1

    .line 364
    .local v3, "offset":I
    aput-byte v1, v0, v5

    .line 365
    .end local v5    # "offset":I
    aput-byte v2, v0, v3

    .line 366
    shr-int/lit8 v1, v3, 0x18

    int-to-byte v1, v1

    const/4 v4, 0x5

    aput-byte v1, v0, v4

    .line 367
    shr-int/lit8 v1, v3, 0x10

    int-to-byte v1, v1

    const/4 v4, 0x6

    aput-byte v1, v0, v4

    .line 368
    shr-int/lit8 v1, v3, 0x8

    int-to-byte v1, v1

    const/4 v4, 0x7

    aput-byte v1, v0, v4

    .line 369
    int-to-byte v1, v3

    const/16 v4, 0x8

    aput-byte v1, v0, v4

    .line 370
    move v1, v2

    .line 370
    .local v1, "i":I
    :goto_16
    if-ge v1, v3, :cond_18

    .line 371
    aget-byte v4, v0, v3

    aget-byte v5, v0, v1

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 370
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 374
    .end local v1    # "i":I
    :cond_18
    new-array v1, v3, [B

    .line 375
    .local v1, "mTX":[B
    nop

    .line 375
    .local v2, "i":I
    :goto_17
    if-ge v2, v3, :cond_19

    .line 376
    aget-byte v4, v0, v2

    aput-byte v4, v1, v2

    .line 375
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 378
    .end local v2    # "i":I
    :cond_19
    return-object v1
.end method
