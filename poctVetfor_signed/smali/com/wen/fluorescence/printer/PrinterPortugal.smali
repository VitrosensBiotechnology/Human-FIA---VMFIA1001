.class public Lcom/wen/fluorescence/printer/PrinterPortugal;
.super Lcom/wen/fluorescence/printer/Printer;
.source "PrinterPortugal.java"


# instance fields
.field private A2:[B

.field private A5:[B

.field private C5:[B

.field private CA5:[B

.field private E2:[B

.field private U2:[B

.field private qcReport:[B

.field private report:[B

.field private sex:[B


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 23
    invoke-direct {p0}, Lcom/wen/fluorescence/printer/Printer;-><init>()V

    .line 25
    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/wen/fluorescence/printer/PrinterPortugal;->report:[B

    .line 26
    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/wen/fluorescence/printer/PrinterPortugal;->qcReport:[B

    .line 28
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/wen/fluorescence/printer/PrinterPortugal;->sex:[B

    .line 29
    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/16 v3, -0x5d

    aput-byte v3, v1, v2

    iput-object v1, p0, Lcom/wen/fluorescence/printer/PrinterPortugal;->U2:[B

    .line 30
    new-array v1, v0, [B

    const/16 v3, -0x7e

    aput-byte v3, v1, v2

    iput-object v1, p0, Lcom/wen/fluorescence/printer/PrinterPortugal;->E2:[B

    .line 31
    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    iput-object v1, p0, Lcom/wen/fluorescence/printer/PrinterPortugal;->CA5:[B

    .line 32
    new-array v1, v0, [B

    const/16 v3, -0x79

    aput-byte v3, v1, v2

    iput-object v1, p0, Lcom/wen/fluorescence/printer/PrinterPortugal;->C5:[B

    .line 33
    new-array v1, v0, [B

    const/16 v3, -0x60

    aput-byte v3, v1, v2

    iput-object v1, p0, Lcom/wen/fluorescence/printer/PrinterPortugal;->A2:[B

    .line 34
    new-array v0, v0, [B

    const/16 v1, -0x7c

    aput-byte v1, v0, v2

    iput-object v0, p0, Lcom/wen/fluorescence/printer/PrinterPortugal;->A5:[B

    return-void

    :array_0
    .array-data 1
        0x52t
        0x65t
        0x6ct
        0x61t
        0x74t
        -0x5et
        0x72t
        0x69t
        0x6ft
    .end array-data

    nop

    :array_1
    .array-data 1
        0x49t
        0x6et
        0x73t
        0x70t
        0x65t
        -0x79t
        -0x7ct
        0x6ft
        0x20t
        0x64t
        0x65t
        0x20t
        0x71t
        0x75t
        0x61t
        0x6ct
        0x69t
        0x64t
        0x61t
        0x64t
        0x65t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x47t
        -0x78t
        0x6et
        0x65t
        0x72t
        0x6ft
    .end array-data

    nop

    :array_3
    .array-data 1
        -0x79t
        -0x7ct
    .end array-data
.end method

.method private PrintHeadersPortugal([B)V
    .locals 5
    .param p1, "array"    # [B

    .line 38
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/PrinterPortugal;->ClearBufferData()V

    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, "index":I
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterPortugal;->OneBufferData:[B

    add-int/lit8 v2, v0, 0x1

    .line 41
    .local v2, "index":I
    const/16 v3, 0x1b

    aput-byte v3, v1, v0

    .line 42
    .end local v0    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterPortugal;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 42
    .local v1, "index":I
    const/16 v4, 0x38

    aput-byte v4, v0, v2

    .line 43
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterPortugal;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 43
    .restart local v2    # "index":I
    const/4 v4, 0x4

    aput-byte v4, v0, v1

    .line 45
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterPortugal;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 45
    .restart local v1    # "index":I
    aput-byte v3, v0, v2

    .line 46
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterPortugal;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 46
    .restart local v2    # "index":I
    const/16 v4, 0x7b

    aput-byte v4, v0, v1

    .line 47
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterPortugal;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 47
    .restart local v1    # "index":I
    const/4 v4, 0x0

    aput-byte v4, v0, v2

    .line 50
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterPortugal;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 50
    .restart local v2    # "index":I
    aput-byte v3, v0, v1

    .line 51
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterPortugal;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 51
    .restart local v1    # "index":I
    const/16 v4, 0x57

    aput-byte v4, v0, v2

    .line 52
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterPortugal;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 52
    .restart local v2    # "index":I
    const/4 v4, 0x2

    aput-byte v4, v0, v1

    .line 54
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterPortugal;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 54
    .restart local v1    # "index":I
    aput-byte v3, v0, v2

    .line 55
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterPortugal;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 55
    .restart local v2    # "index":I
    const/16 v3, 0x61

    aput-byte v3, v0, v1

    .line 56
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterPortugal;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 56
    .restart local v1    # "index":I
    const/4 v3, 0x1

    aput-byte v3, v0, v2

    .line 57
    .end local v2    # "index":I
    add-int/2addr v1, v3

    .line 58
    add-int/lit8 v0, v1, 0x1

    .line 58
    .restart local v0    # "index":I
    invoke-virtual {p0, v1, p1}, Lcom/wen/fluorescence/printer/PrinterPortugal;->OneTmpBuffers(I[B)[B

    .line 59
    .end local v1    # "index":I
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterPortugal;->OneBufferData:[B

    add-int/lit8 v2, v0, 0x1

    .line 59
    .restart local v2    # "index":I
    const/16 v3, 0xd

    array-length v4, p1

    add-int/2addr v0, v4

    .line 59
    .end local v0    # "index":I
    aput-byte v3, v1, v0

    .line 60
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/PrinterPortugal;->print()V

    .line 61
    return-void
.end method

.method private PrintMessagePortugal([BZ)V
    .locals 6
    .param p1, "printData"    # [B
    .param p2, "isEnter"    # Z

    .line 67
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/PrinterPortugal;->ClearBufferData()V

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, "index":I
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterPortugal;->OneBufferData:[B

    add-int/lit8 v2, v0, 0x1

    .line 70
    .local v2, "index":I
    const/16 v3, 0x1b

    aput-byte v3, v1, v0

    .line 71
    .end local v0    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterPortugal;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 71
    .local v1, "index":I
    const/16 v4, 0x61

    aput-byte v4, v0, v2

    .line 72
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterPortugal;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 72
    .restart local v2    # "index":I
    const/4 v4, 0x0

    aput-byte v4, v0, v1

    .line 74
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterPortugal;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 74
    .restart local v1    # "index":I
    aput-byte v3, v0, v2

    .line 75
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterPortugal;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 75
    .restart local v2    # "index":I
    const/16 v5, 0x7b

    aput-byte v5, v0, v1

    .line 76
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterPortugal;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 76
    .restart local v1    # "index":I
    aput-byte v4, v0, v2

    .line 78
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterPortugal;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 78
    .restart local v2    # "index":I
    aput-byte v3, v0, v1

    .line 79
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterPortugal;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 79
    .restart local v1    # "index":I
    const/16 v4, 0x57

    aput-byte v4, v0, v2

    .line 80
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterPortugal;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 80
    .restart local v2    # "index":I
    const/4 v4, 0x1

    aput-byte v4, v0, v1

    .line 82
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterPortugal;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 82
    .restart local v1    # "index":I
    aput-byte v3, v0, v2

    .line 83
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterPortugal;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 83
    .restart local v2    # "index":I
    const/16 v3, 0x38

    aput-byte v3, v0, v1

    .line 84
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterPortugal;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 84
    .restart local v1    # "index":I
    const/4 v3, 0x4

    aput-byte v3, v0, v2

    .line 85
    .end local v2    # "index":I
    add-int/2addr v1, v4

    .line 86
    add-int/lit8 v0, v1, 0x1

    .line 86
    .restart local v0    # "index":I
    invoke-virtual {p0, v1, p1}, Lcom/wen/fluorescence/printer/PrinterPortugal;->OneTmpBuffers(I[B)[B

    .line 87
    .end local v1    # "index":I
    if-eqz p2, :cond_0

    .line 88
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterPortugal;->OneBufferData:[B

    add-int/lit8 v2, v0, 0x1

    .line 88
    .restart local v2    # "index":I
    array-length v3, p1

    add-int/2addr v0, v3

    .line 88
    .end local v0    # "index":I
    const/16 v3, 0xd

    aput-byte v3, v1, v0

    .line 90
    move v0, v2

    .line 90
    .end local v2    # "index":I
    .restart local v0    # "index":I
    :cond_0
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/PrinterPortugal;->print()V

    .line 91
    return-void
.end method


# virtual methods
.method public declared-synchronized printe(Landroid/content/Context;Lcom/wen/fluorescence/database/DBManager;Lcom/wen/fluorescence/database/TestResult;Ljava/util/List;)V
    .locals 20
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "dbm"    # Lcom/wen/fluorescence/database/DBManager;
    .param p3, "result"    # Lcom/wen/fluorescence/database/TestResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/wen/fluorescence/database/DBManager;",
            "Lcom/wen/fluorescence/database/TestResult;",
            "Ljava/util/List<",
            "Lcom/wen/fluorescence/database/TestResult;",
            ">;)V"
        }
    .end annotation

    .line 103
    .local p4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    monitor-enter p0

    .line 103
    const/4 v5, 0x0

    move v6, v5

    .line 103
    .local v6, "i":I
    :goto_0
    const/4 v7, 0x2

    if-ge v6, v7, :cond_0

    .line 104
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintNewLine()V

    .line 103
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 102
    .end local v6    # "i":I
    .end local p1    # "mContext":Landroid/content/Context;
    .end local p2    # "dbm":Lcom/wen/fluorescence/database/DBManager;
    .end local p3    # "result":Lcom/wen/fluorescence/database/TestResult;
    .end local p4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_17

    .line 106
    .restart local p1    # "mContext":Landroid/content/Context;
    .restart local p2    # "dbm":Lcom/wen/fluorescence/database/DBManager;
    .restart local p3    # "result":Lcom/wen/fluorescence/database/TestResult;
    .restart local p4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v6

    const-string v8, "OrganizationFragment"

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 107
    .local v6, "organization":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 108
    invoke-virtual {v1, v6}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintOrganization(Ljava/lang/String;)V

    .line 110
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintNewLine()V

    .line 112
    iget-object v8, v1, Lcom/wen/fluorescence/printer/PrinterPortugal;->report:[B

    invoke-direct {v1, v8}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintHeadersPortugal([B)V

    .line 113
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f0c00f9

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "-"

    goto :goto_1

    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getName()Ljava/lang/String;

    move-result-object v9

    :goto_1
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 113
    invoke-virtual {v1, v8}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;)V

    .line 116
    iget-object v8, v1, Lcom/wen/fluorescence/printer/PrinterPortugal;->sex:[B

    invoke-direct {v1, v8, v5}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessagePortugal([BZ)V

    .line 117
    const-string v8, ""

    .line 118
    .local v8, "strSex":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSex()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    goto :goto_2

    .line 126
    :pswitch_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v10, 0x7f0c00ab

    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "    "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    goto :goto_2

    .line 123
    :pswitch_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v10, 0x7f0c0016

    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "    "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 124
    goto :goto_2

    .line 120
    :pswitch_2
    const-string v9, "\uff1a-         "

    move-object v8, v9

    .line 121
    nop

    .line 129
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v10, 0x7f0c0064

    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getAge()I

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "-"

    goto :goto_3

    :cond_3
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getAge()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    :goto_3
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 130
    invoke-virtual {v1, v8}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;)V

    .line 132
    const-string v9, "N"

    invoke-virtual {v1, v9, v5}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;Z)V

    .line 133
    iget-object v9, v1, Lcom/wen/fluorescence/printer/PrinterPortugal;->U2:[B

    invoke-direct {v1, v9, v5}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessagePortugal([BZ)V

    .line 134
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mero da amostra:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSampleNumber()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v1, v9, v10}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;Z)V

    .line 136
    const-string v9, "N"

    invoke-virtual {v1, v9, v5}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;Z)V

    .line 137
    iget-object v9, v1, Lcom/wen/fluorescence/printer/PrinterPortugal;->U2:[B

    invoke-direct {v1, v9, v5}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessagePortugal([BZ)V

    .line 138
    const-string v9, "mero de S"

    invoke-virtual {v1, v9, v5}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;Z)V

    .line 139
    iget-object v9, v1, Lcom/wen/fluorescence/printer/PrinterPortugal;->E2:[B

    invoke-direct {v1, v9, v5}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessagePortugal([BZ)V

    .line 140
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "rie:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9, v10}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;Z)V

    .line 142
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c0154

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ":"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSimpleType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9, v10}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;Z)V

    .line 144
    const-string v9, "Tempo de Detec"

    invoke-virtual {v1, v9, v5}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;Z)V

    .line 145
    iget-object v9, v1, Lcom/wen/fluorescence/printer/PrinterPortugal;->CA5:[B

    invoke-direct {v1, v9, v5}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessagePortugal([BZ)V

    .line 146
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "o:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getTestTime()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;)V

    .line 147
    const-string v9, "-------------------------------"

    invoke-virtual {v1, v9}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;)V

    .line 150
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/wen/fluorescence/database/DBManager;->queryRangeMin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 151
    .local v9, "min":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/wen/fluorescence/database/DBManager;->queryRangeMax(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 153
    .local v11, "max":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 191
    .local v12, "range":Ljava/lang/String;
    const-string v13, "Esbo"

    invoke-virtual {v1, v13, v5}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;Z)V

    .line 192
    iget-object v13, v1, Lcom/wen/fluorescence/printer/PrinterPortugal;->C5:[B

    invoke-direct {v1, v13, v5}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessagePortugal([BZ)V

    .line 193
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "o, projeto "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13, v10}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;Z)V

    .line 194
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeFlag()I

    move-result v13

    const v14, 0x7f0c0149

    if-nez v13, :cond_6

    .line 195
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ": "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 196
    .local v13, "printResult":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getiValid()I

    move-result v15

    if-nez v15, :cond_4

    .line 197
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v13, v10

    .line 199
    :cond_4
    invoke-virtual {v1, v13}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;)V

    .line 202
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 203
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v10

    const-string v15, "  "

    invoke-virtual {v10, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 204
    .local v10, "strArray":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReResult()Ljava/lang/String;

    move-result-object v15

    const-string v7, "  "

    invoke-virtual {v15, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 205
    .local v7, "resultArray":[Ljava/lang/String;
    const/4 v15, 0x1

    .line 205
    .local v15, "i":I
    :goto_4
    array-length v14, v10

    if-ge v15, v14, :cond_5

    .line 206
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object/from16 v16, v6

    const v6, 0x7f0c00d2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 206
    .end local v6    # "organization":Ljava/lang/String;
    .local v16, "organization":Ljava/lang/String;
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  : "

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v10, v15

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;)V

    .line 207
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v14, 0x7f0c0149

    invoke-virtual {v6, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v7, v15

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;)V

    .line 205
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v6, v16

    const v14, 0x7f0c0149

    goto :goto_4

    .line 210
    .end local v7    # "resultArray":[Ljava/lang/String;
    .end local v10    # "strArray":[Ljava/lang/String;
    .end local v13    # "printResult":Ljava/lang/String;
    .end local v15    # "i":I
    .end local v16    # "organization":Ljava/lang/String;
    .restart local v6    # "organization":Ljava/lang/String;
    :cond_5
    move-object/from16 v16, v6

    .line 210
    .end local v6    # "organization":Ljava/lang/String;
    .restart local v16    # "organization":Ljava/lang/String;
    goto/16 :goto_8

    .line 211
    .end local v16    # "organization":Ljava/lang/String;
    .restart local v6    # "organization":Ljava/lang/String;
    :cond_6
    move-object/from16 v16, v6

    .line 211
    .end local v6    # "organization":Ljava/lang/String;
    .restart local v16    # "organization":Ljava/lang/String;
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_a

    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v5

    const/4 v6, 0x7

    if-lt v5, v6, :cond_7

    goto/16 :goto_5

    .line 214
    :cond_7
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getIsShowResult()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_9

    .line 215
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0149

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 216
    .local v5, "printResult":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getiValid()I

    move-result v6

    if-nez v6, :cond_8

    .line 217
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 219
    :cond_8
    invoke-virtual {v1, v5}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;)V

    .line 221
    .end local v5    # "printResult":Ljava/lang/String;
    :cond_9
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getIsShowConclusion()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    .line 222
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c01c6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeVerdict()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;)V

    goto :goto_6

    .line 212
    :cond_a
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0149

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Lcom/wen/fluorescence/util/PublicFuction;->getShowResult(Lcom/wen/fluorescence/database/TestResult;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;)V

    .line 227
    :cond_b
    :goto_6
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 228
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 229
    .local v5, "strArray":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReResult()Ljava/lang/String;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 230
    .local v6, "resultArray":[Ljava/lang/String;
    const/4 v7, 0x1

    .line 230
    .local v7, "i":I
    :goto_7
    array-length v10, v5

    if-ge v7, v10, :cond_c

    .line 231
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c00d2

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "  : "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v5, v7

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;)V

    .line 232
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c0149

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "  : "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v6, v7

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;)V

    .line 230
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 236
    .end local v5    # "strArray":[Ljava/lang/String;
    .end local v6    # "resultArray":[Ljava/lang/String;
    .end local v7    # "i":I
    :cond_c
    :goto_8
    const/4 v5, 0x1

    .line 236
    .local v5, "i":I
    :goto_9
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_16

    .line 237
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 238
    const-string v6, "Esbo"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;Z)V

    .line 239
    iget-object v6, v1, Lcom/wen/fluorescence/printer/PrinterPortugal;->C5:[B

    invoke-direct {v1, v6, v7}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessagePortugal([BZ)V

    .line 240
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "o, projeto "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v5, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;Z)V

    .line 241
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeFlag()I

    move-result v6

    if-nez v6, :cond_e

    .line 242
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0c0149

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v5, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 243
    .local v6, "printResult":Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getiValid()I

    move-result v7

    if-nez v7, :cond_d

    .line 244
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v10}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 246
    :cond_d
    invoke-virtual {v1, v6}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;)V

    .line 247
    .end local v6    # "printResult":Ljava/lang/String;
    goto/16 :goto_b

    .line 248
    :cond_e
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_12

    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v6

    const/4 v7, 0x7

    if-lt v6, v7, :cond_f

    goto/16 :goto_a

    .line 251
    :cond_f
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getIsShowResult()I

    move-result v6

    const/4 v10, 0x1

    if-ne v6, v10, :cond_11

    .line 252
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v13, 0x7f0c0149

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v5, 0x1

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v10}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 253
    .restart local v6    # "printResult":Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v10}, Lcom/wen/fluorescence/database/TestResult;->getiValid()I

    move-result v10

    if-nez v10, :cond_10

    .line 254
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v13}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    .line 256
    :cond_10
    invoke-virtual {v1, v6}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;)V

    .line 258
    .end local v6    # "printResult":Ljava/lang/String;
    :cond_11
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getIsShowConclusion()I

    move-result v6

    const/4 v10, 0x1

    if-ne v6, v10, :cond_14

    .line 259
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v13, 0x7f0c01c6

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v5, 0x1

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v10}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeVerdict()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;)V

    goto :goto_c

    .line 249
    :cond_12
    const/4 v7, 0x7

    :goto_a
    const v13, 0x7f0c01c6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v14, 0x7f0c0149

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v5, 0x1

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Lcom/wen/fluorescence/util/PublicFuction;->getShowResult(Lcom/wen/fluorescence/database/TestResult;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;)V

    goto :goto_c

    .line 266
    :cond_13
    :goto_b
    const/4 v7, 0x7

    :cond_14
    const v13, 0x7f0c01c6

    :goto_c
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_15

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v10}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    .line 267
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v6

    const-string v10, "  "

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 268
    .local v6, "strArray":[Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v10}, Lcom/wen/fluorescence/database/TestResult;->getReResult()Ljava/lang/String;

    move-result-object v10

    const-string v14, "  "

    invoke-virtual {v10, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 269
    .local v10, "resultArray":[Ljava/lang/String;
    const/4 v14, 0x1

    .line 269
    .local v14, "j":I
    :goto_d
    array-length v15, v6

    if-ge v14, v15, :cond_15

    .line 270
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v13, 0x7f0c00d2

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  : "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v6, v14

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;)V

    .line 271
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v13, 0x7f0c0149

    invoke-virtual {v15, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "  : "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v15, v10, v14

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;)V

    .line 269
    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x7

    const v13, 0x7f0c01c6

    goto :goto_d

    .line 236
    .end local v6    # "strArray":[Ljava/lang/String;
    .end local v10    # "resultArray":[Ljava/lang/String;
    .end local v14    # "j":I
    :cond_15
    const v13, 0x7f0c0149

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_9

    .line 331
    .end local v5    # "i":I
    :cond_16
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v5

    const v6, 0x7f0c0142

    const/4 v7, 0x2

    if-le v5, v7, :cond_1d

    .line 332
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeFlag()I

    move-result v5

    if-nez v5, :cond_1c

    .line 333
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v10}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;)V

    .line 335
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_18

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    .line 336
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v5

    const-string v7, "  "

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 337
    .local v5, "strArray":[Ljava/lang/String;
    const/4 v7, 0x1

    .line 337
    .local v7, "j":I
    :goto_e
    array-length v10, v5

    if-ge v7, v10, :cond_18

    .line 338
    const/4 v10, 0x0

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v13}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v10

    aget-object v13, v5, v7

    invoke-static {v2, v9, v11, v10, v13}, Lcom/wen/fluorescence/util/PublicFuction;->getUnitRange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 339
    .local v10, "unitRange":Ljava/lang/String;
    const-string v13, "F200"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u591a\u5355\u4f4d\u8303\u56f4\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    if-eqz v10, :cond_17

    const-string v13, ""

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_17

    .line 341
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v14, v5, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;)V

    .line 337
    .end local v10    # "unitRange":Ljava/lang/String;
    :cond_17
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    .line 346
    .end local v5    # "strArray":[Ljava/lang/String;
    .end local v7    # "j":I
    :cond_18
    const/4 v5, 0x1

    .line 346
    .local v5, "j":I
    :goto_f
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_1c

    .line 347
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/wen/fluorescence/database/DBManager;->queryRangeMin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 348
    .local v7, "min2":Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v10}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/wen/fluorescence/database/DBManager;->queryRangeMax(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 349
    .local v10, "max2":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v14}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_19

    .line 350
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 352
    .local v13, "range2":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v15}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v15}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;)V

    .line 356
    .end local v13    # "range2":Ljava/lang/String;
    :cond_19
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v13}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1b

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v13}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v14}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1b

    .line 357
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v13}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v13

    const-string v14, "  "

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 358
    .local v13, "strArray":[Ljava/lang/String;
    const/4 v14, 0x1

    .line 358
    .local v14, "k":I
    :goto_10
    array-length v15, v13

    if-ge v14, v15, :cond_1b

    .line 359
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v15}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v15

    aget-object v6, v13, v14

    invoke-static {v2, v7, v10, v15, v6}, Lcom/wen/fluorescence/util/PublicFuction;->getUnitRange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 360
    .local v6, "unitRange":Ljava/lang/String;
    const-string v15, "F200"

    move-object/from16 v17, v7

    new-instance v7, Ljava/lang/StringBuilder;

    .line 360
    .end local v7    # "min2":Ljava/lang/String;
    .local v17, "min2":Ljava/lang/String;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v8

    const-string v8, "\u591a\u5355\u4f4d\u8303\u56f4\uff1a"

    .line 360
    .end local v8    # "strSex":Ljava/lang/String;
    .local v18, "strSex":Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    if-eqz v6, :cond_1a

    const-string v7, ""

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1a

    .line 362
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v13, v14

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v15, 0x7f0c0142

    invoke-virtual {v8, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;)V

    .line 358
    .end local v6    # "unitRange":Ljava/lang/String;
    :cond_1a
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    const v6, 0x7f0c0142

    goto :goto_10

    .line 346
    .end local v10    # "max2":Ljava/lang/String;
    .end local v13    # "strArray":[Ljava/lang/String;
    .end local v14    # "k":I
    .end local v17    # "min2":Ljava/lang/String;
    .end local v18    # "strSex":Ljava/lang/String;
    .restart local v8    # "strSex":Ljava/lang/String;
    :cond_1b
    move-object/from16 v18, v8

    .line 346
    .end local v8    # "strSex":Ljava/lang/String;
    .restart local v18    # "strSex":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v8, v18

    const v6, 0x7f0c0142

    goto/16 :goto_f

    .line 409
    .end local v5    # "j":I
    .end local v18    # "strSex":Ljava/lang/String;
    .restart local v8    # "strSex":Ljava/lang/String;
    :cond_1c
    move-object/from16 v18, v8

    .line 409
    .end local v8    # "strSex":Ljava/lang/String;
    .restart local v18    # "strSex":Ljava/lang/String;
    goto/16 :goto_15

    .line 369
    .end local v18    # "strSex":Ljava/lang/String;
    .restart local v8    # "strSex":Ljava/lang/String;
    :cond_1d
    move-object/from16 v18, v8

    .line 369
    .end local v8    # "strSex":Ljava/lang/String;
    .restart local v18    # "strSex":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeFlag()I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_23

    .line 370
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0142

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;)V

    .line 372
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1f

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1f

    .line 373
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 374
    .local v5, "strArray":[Ljava/lang/String;
    const/4 v6, 0x1

    .line 374
    .local v6, "j":I
    :goto_11
    array-length v7, v5

    if-ge v6, v7, :cond_1f

    .line 375
    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v8}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v7

    aget-object v8, v5, v6

    invoke-static {v2, v9, v11, v7, v8}, Lcom/wen/fluorescence/util/PublicFuction;->getUnitRange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 376
    .local v7, "unitRange":Ljava/lang/String;
    const-string v8, "F200"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u591a\u5355\u4f4d\u8303\u56f4\uff1a"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    if-eqz v7, :cond_1e

    const-string v8, ""

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1e

    .line 378
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v5, v6

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v13, 0x7f0c0142

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;)V

    .line 374
    .end local v7    # "unitRange":Ljava/lang/String;
    :cond_1e
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 383
    .end local v5    # "strArray":[Ljava/lang/String;
    .end local v6    # "j":I
    :cond_1f
    const/4 v5, 0x1

    .line 383
    .local v5, "j":I
    :goto_12
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_23

    .line 384
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/wen/fluorescence/database/DBManager;->queryRangeMin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 385
    .local v6, "min2":Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/wen/fluorescence/database/DBManager;->queryRangeMax(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 386
    .local v7, "max2":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v10}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 387
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " - "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 389
    .local v8, "range2":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v13}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c0142

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v13}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;)V

    .line 393
    .end local v8    # "range2":Ljava/lang/String;
    :cond_20
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v8}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_22

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v8}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v10}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_22

    .line 394
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v8}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v8

    const-string v10, "  "

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 395
    .local v8, "strArray":[Ljava/lang/String;
    const/4 v10, 0x1

    .line 395
    .local v10, "k":I
    :goto_13
    array-length v13, v8

    if-ge v10, v13, :cond_22

    .line 396
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v13}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v13

    aget-object v14, v8, v10

    invoke-static {v2, v6, v7, v13, v14}, Lcom/wen/fluorescence/util/PublicFuction;->getUnitRange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 397
    .local v13, "unitRange":Ljava/lang/String;
    const-string v14, "F200"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u591a\u5355\u4f4d\u8303\u56f4\uff1a"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    if-eqz v13, :cond_21

    const-string v3, ""

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 399
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v14, v8, v10

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c0142

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ":"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;)V

    .line 399
    .end local v13    # "unitRange":Ljava/lang/String;
    goto :goto_14

    .line 395
    :cond_21
    const v15, 0x7f0c0142

    :goto_14
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, p2

    goto :goto_13

    .line 383
    .end local v6    # "min2":Ljava/lang/String;
    .end local v7    # "max2":Ljava/lang/String;
    .end local v8    # "strArray":[Ljava/lang/String;
    .end local v10    # "k":I
    :cond_22
    const v15, 0x7f0c0142

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, p2

    goto/16 :goto_12

    .line 409
    .end local v5    # "j":I
    :cond_23
    :goto_15
    const-string v3, "-------------------------------"

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;)V

    .line 410
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c00c9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getInspectingDoctor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;)V

    .line 412
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c014b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReviewer()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;)V

    .line 416
    const-string v3, "-------------------------------"

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;)V

    .line 420
    const-string v3, "Declara"

    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;Z)V

    .line 421
    iget-object v3, v1, Lcom/wen/fluorescence/printer/PrinterPortugal;->CA5:[B

    invoke-direct {v1, v3, v7}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessagePortugal([BZ)V

    .line 422
    const-string v3, "o de teste: este resultado "

    invoke-virtual {v1, v3, v7}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;Z)V

    .line 423
    iget-object v3, v1, Lcom/wen/fluorescence/printer/PrinterPortugal;->E2:[B

    invoke-direct {v1, v3, v7}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessagePortugal([BZ)V

    .line 424
    const-string v3, "apenas respons"

    invoke-virtual {v1, v3, v7}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;Z)V

    .line 425
    iget-object v3, v1, Lcom/wen/fluorescence/printer/PrinterPortugal;->A2:[B

    invoke-direct {v1, v3, v7}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessagePortugal([BZ)V

    .line 426
    const-string v3, "vel por esta amostra!"

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v5}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;Z)V

    .line 429
    nop

    .line 429
    .local v7, "i":I
    :goto_16
    move v3, v7

    .line 429
    .end local v7    # "i":I
    .local v3, "i":I
    const/4 v5, 0x6

    if-ge v3, v5, :cond_24

    .line 430
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintNewLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    add-int/lit8 v7, v3, 0x1

    .line 429
    .end local v3    # "i":I
    .restart local v7    # "i":I
    goto :goto_16

    .line 432
    .end local v7    # "i":I
    :cond_24
    monitor-exit p0

    return-void

    .line 102
    .end local v9    # "min":Ljava/lang/String;
    .end local v11    # "max":Ljava/lang/String;
    .end local v12    # "range":Ljava/lang/String;
    .end local v16    # "organization":Ljava/lang/String;
    .end local v18    # "strSex":Ljava/lang/String;
    .end local p1    # "mContext":Landroid/content/Context;
    .end local p2    # "dbm":Lcom/wen/fluorescence/database/DBManager;
    .end local p3    # "result":Lcom/wen/fluorescence/database/TestResult;
    .end local p4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    :goto_17
    monitor-exit p0

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized printerQC(Landroid/content/Context;ZZZZ)V
    .locals 7
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "M0"    # Z
    .param p3, "M1"    # Z
    .param p4, "M2"    # Z
    .param p5, "M3"    # Z

    monitor-enter p0

    .line 446
    :try_start_0
    const-string v0, ""

    .line 446
    .local v0, "normal":Ljava/lang/String;
    const-string v1, ""

    .line 447
    .local v1, "abnormal":Ljava/lang/String;
    const/4 v2, 0x0

    move v3, v2

    .line 447
    .local v3, "i":I
    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 448
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintNewLine()V

    .line 447
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 450
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0104

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 451
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0056

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 452
    iget-object v3, p0, Lcom/wen/fluorescence/printer/PrinterPortugal;->qcReport:[B

    invoke-direct {p0, v3}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintHeadersPortugal([B)V

    .line 454
    const-string v3, "Tempo de Detec"

    invoke-virtual {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;Z)V

    .line 455
    iget-object v3, p0, Lcom/wen/fluorescence/printer/PrinterPortugal;->CA5:[B

    invoke-direct {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessagePortugal([BZ)V

    .line 456
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "o:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "yyyy-MM-dd"

    invoke-static {v4}, Lcom/wen/fluorescence/util/DateUtils;->getSysemDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;)V

    .line 457
    const-string v3, "-------------------------------"

    invoke-virtual {p0, v3}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;)V

    .line 459
    const-string v3, "Esbo"

    invoke-virtual {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;Z)V

    .line 460
    iget-object v3, p0, Lcom/wen/fluorescence/printer/PrinterPortugal;->C5:[B

    invoke-direct {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessagePortugal([BZ)V

    .line 461
    const-string v3, "o, projeto 1:"

    invoke-virtual {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;Z)V

    .line 462
    const-string v3, "Sistema de transmiss"

    invoke-virtual {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;Z)V

    .line 463
    iget-object v3, p0, Lcom/wen/fluorescence/printer/PrinterPortugal;->A5:[B

    invoke-direct {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessagePortugal([BZ)V

    .line 464
    const-string v3, "o"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;Z)V

    .line 466
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0c0149

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " 1:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_1

    move-object v6, v0

    goto :goto_1

    :cond_1
    move-object v6, v1

    :goto_1
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v4}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;Z)V

    .line 468
    const-string v3, "Esbo"

    invoke-virtual {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;Z)V

    .line 469
    iget-object v3, p0, Lcom/wen/fluorescence/printer/PrinterPortugal;->C5:[B

    invoke-direct {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessagePortugal([BZ)V

    .line 470
    const-string v3, "o, projeto 2:"

    invoke-virtual {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;Z)V

    .line 471
    const-string v3, "Sistema de c"

    invoke-virtual {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;Z)V

    .line 472
    iget-object v3, p0, Lcom/wen/fluorescence/printer/PrinterPortugal;->A2:[B

    invoke-direct {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessagePortugal([BZ)V

    .line 473
    const-string v3, "digo de barras"

    invoke-virtual {p0, v3, v4}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;Z)V

    .line 475
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " 2:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    move-object v6, v0

    goto :goto_2

    :cond_2
    move-object v6, v1

    :goto_2
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v4}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;Z)V

    .line 477
    const-string v3, "Esbo"

    invoke-virtual {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;Z)V

    .line 478
    iget-object v3, p0, Lcom/wen/fluorescence/printer/PrinterPortugal;->C5:[B

    invoke-direct {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessagePortugal([BZ)V

    .line 479
    const-string v3, "o, projeto 2:"

    invoke-virtual {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;Z)V

    .line 480
    const-string v3, "Sistema "

    invoke-virtual {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;Z)V

    .line 481
    iget-object v3, p0, Lcom/wen/fluorescence/printer/PrinterPortugal;->A2:[B

    invoke-direct {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessagePortugal([BZ)V

    .line 482
    const-string v3, "ptico"

    invoke-virtual {p0, v3, v4}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;Z)V

    .line 484
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " 3:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_3

    move-object v6, v0

    goto :goto_3

    :cond_3
    move-object v6, v1

    :goto_3
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v4}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;Z)V

    .line 486
    const-string v3, "Esbo"

    invoke-virtual {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;Z)V

    .line 487
    iget-object v3, p0, Lcom/wen/fluorescence/printer/PrinterPortugal;->C5:[B

    invoke-direct {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessagePortugal([BZ)V

    .line 488
    const-string v3, "o, projeto 2:"

    invoke-virtual {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;Z)V

    .line 489
    const-string v3, "Sistema de circuito el "

    invoke-virtual {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;Z)V

    .line 490
    iget-object v3, p0, Lcom/wen/fluorescence/printer/PrinterPortugal;->E2:[B

    invoke-direct {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessagePortugal([BZ)V

    .line 491
    const-string v3, "trico"

    invoke-virtual {p0, v3, v4}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;Z)V

    .line 493
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " 4:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_4

    move-object v5, v0

    goto :goto_4

    :cond_4
    move-object v5, v1

    :goto_4
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v4}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;Z)V

    .line 494
    const-string v3, "-------------------------------"

    invoke-virtual {p0, v3}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;)V

    .line 495
    const-string v3, "Data de impress"

    invoke-virtual {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;Z)V

    .line 496
    iget-object v3, p0, Lcom/wen/fluorescence/printer/PrinterPortugal;->A2:[B

    invoke-direct {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessagePortugal([BZ)V

    .line 497
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "o:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v5}, Lcom/wen/fluorescence/util/DateUtils;->getSysemDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v4}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintMessage(Ljava/lang/String;Z)V

    .line 498
    nop

    .line 498
    .local v2, "i":I
    :goto_5
    const/4 v3, 0x4

    if-ge v2, v3, :cond_5

    .line 499
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/PrinterPortugal;->PrintNewLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 501
    .end local v2    # "i":I
    :cond_5
    monitor-exit p0

    return-void

    .line 445
    .end local v0    # "normal":Ljava/lang/String;
    .end local v1    # "abnormal":Ljava/lang/String;
    .end local p1    # "mContext":Landroid/content/Context;
    .end local p2    # "M0":Z
    .end local p3    # "M1":Z
    .end local p4    # "M2":Z
    .end local p5    # "M3":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
