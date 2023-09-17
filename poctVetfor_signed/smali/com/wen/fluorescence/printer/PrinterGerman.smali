.class public Lcom/wen/fluorescence/printer/PrinterGerman;
.super Lcom/wen/fluorescence/printer/Printer;
.source "PrinterGerman.java"


# instance fields
.field private A0:[B

.field private U0:[B

.field private U0Big:[B

.field private qcReport:[B


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 19
    invoke-direct {p0}, Lcom/wen/fluorescence/printer/Printer;-><init>()V

    .line 21
    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/16 v3, -0x1c

    aput-byte v3, v1, v2

    iput-object v1, p0, Lcom/wen/fluorescence/printer/PrinterGerman;->A0:[B

    .line 22
    new-array v1, v0, [B

    const/4 v3, -0x4

    aput-byte v3, v1, v2

    iput-object v1, p0, Lcom/wen/fluorescence/printer/PrinterGerman;->U0:[B

    .line 23
    new-array v0, v0, [B

    const/16 v1, -0x24

    aput-byte v1, v0, v2

    iput-object v0, p0, Lcom/wen/fluorescence/printer/PrinterGerman;->U0Big:[B

    .line 24
    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/wen/fluorescence/printer/PrinterGerman;->qcReport:[B

    return-void

    :array_0
    .array-data 1
        0x51t
        0x75t
        0x61t
        0x6ct
        0x69t
        0x74t
        -0x1ct
        0x74t
        0x73t
        0x6bt
        0x6ft
        0x6et
        0x74t
        0x72t
        0x6ft
        0x6ct
        0x6ct
        0x65t
    .end array-data
.end method

.method private PrintHeadersGerman([B)V
    .locals 5
    .param p1, "array"    # [B

    .line 28
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/PrinterGerman;->ClearBufferData()V

    .line 30
    const/4 v0, 0x0

    .line 31
    .local v0, "index":I
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterGerman;->OneBufferData:[B

    add-int/lit8 v2, v0, 0x1

    .line 31
    .local v2, "index":I
    const/16 v3, 0x1b

    aput-byte v3, v1, v0

    .line 32
    .end local v0    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterGerman;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 32
    .local v1, "index":I
    const/16 v4, 0x38

    aput-byte v4, v0, v2

    .line 33
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterGerman;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 33
    .restart local v2    # "index":I
    const/4 v4, 0x3

    aput-byte v4, v0, v1

    .line 35
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterGerman;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 35
    .restart local v1    # "index":I
    aput-byte v3, v0, v2

    .line 36
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterGerman;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 36
    .restart local v2    # "index":I
    const/16 v4, 0x7b

    aput-byte v4, v0, v1

    .line 37
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterGerman;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 37
    .restart local v1    # "index":I
    const/4 v4, 0x0

    aput-byte v4, v0, v2

    .line 40
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterGerman;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 40
    .restart local v2    # "index":I
    aput-byte v3, v0, v1

    .line 41
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterGerman;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 41
    .restart local v1    # "index":I
    const/16 v4, 0x57

    aput-byte v4, v0, v2

    .line 42
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterGerman;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 42
    .restart local v2    # "index":I
    const/4 v4, 0x1

    aput-byte v4, v0, v1

    .line 44
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterGerman;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 44
    .restart local v1    # "index":I
    aput-byte v3, v0, v2

    .line 45
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterGerman;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 45
    .restart local v2    # "index":I
    const/16 v3, 0x61

    aput-byte v3, v0, v1

    .line 46
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterGerman;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 46
    .restart local v1    # "index":I
    aput-byte v4, v0, v2

    .line 47
    .end local v2    # "index":I
    add-int/2addr v1, v4

    .line 48
    add-int/lit8 v0, v1, 0x1

    .line 48
    .restart local v0    # "index":I
    invoke-virtual {p0, v1, p1}, Lcom/wen/fluorescence/printer/PrinterGerman;->OneTmpBuffers(I[B)[B

    .line 49
    .end local v1    # "index":I
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterGerman;->OneBufferData:[B

    add-int/lit8 v2, v0, 0x1

    .line 49
    .restart local v2    # "index":I
    const/16 v3, 0xd

    array-length v4, p1

    add-int/2addr v0, v4

    .line 49
    .end local v0    # "index":I
    aput-byte v3, v1, v0

    .line 50
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/PrinterGerman;->print()V

    .line 51
    return-void
.end method

.method private PrintMessageGerman([BZ)V
    .locals 6
    .param p1, "printData"    # [B
    .param p2, "isEnter"    # Z

    .line 56
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/PrinterGerman;->ClearBufferData()V

    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "index":I
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterGerman;->OneBufferData:[B

    add-int/lit8 v2, v0, 0x1

    .line 59
    .local v2, "index":I
    const/16 v3, 0x1b

    aput-byte v3, v1, v0

    .line 60
    .end local v0    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterGerman;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 60
    .local v1, "index":I
    const/16 v4, 0x61

    aput-byte v4, v0, v2

    .line 61
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterGerman;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 61
    .restart local v2    # "index":I
    const/4 v4, 0x0

    aput-byte v4, v0, v1

    .line 63
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterGerman;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 63
    .restart local v1    # "index":I
    aput-byte v3, v0, v2

    .line 64
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterGerman;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 64
    .restart local v2    # "index":I
    const/16 v5, 0x7b

    aput-byte v5, v0, v1

    .line 65
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterGerman;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 65
    .restart local v1    # "index":I
    aput-byte v4, v0, v2

    .line 67
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterGerman;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 67
    .restart local v2    # "index":I
    aput-byte v3, v0, v1

    .line 68
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterGerman;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 68
    .restart local v1    # "index":I
    const/16 v4, 0x57

    aput-byte v4, v0, v2

    .line 69
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterGerman;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 69
    .restart local v2    # "index":I
    const/4 v4, 0x1

    aput-byte v4, v0, v1

    .line 71
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterGerman;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 71
    .restart local v1    # "index":I
    aput-byte v3, v0, v2

    .line 72
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterGerman;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 72
    .restart local v2    # "index":I
    const/16 v3, 0x38

    aput-byte v3, v0, v1

    .line 73
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterGerman;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 73
    .restart local v1    # "index":I
    const/4 v3, 0x3

    aput-byte v3, v0, v2

    .line 74
    .end local v2    # "index":I
    add-int/2addr v1, v4

    .line 75
    add-int/lit8 v0, v1, 0x1

    .line 75
    .restart local v0    # "index":I
    invoke-virtual {p0, v1, p1}, Lcom/wen/fluorescence/printer/PrinterGerman;->OneTmpBuffers(I[B)[B

    .line 76
    .end local v1    # "index":I
    if-eqz p2, :cond_0

    .line 77
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterGerman;->OneBufferData:[B

    add-int/lit8 v2, v0, 0x1

    .line 77
    .restart local v2    # "index":I
    array-length v3, p1

    add-int/2addr v0, v3

    .line 77
    .end local v0    # "index":I
    const/16 v3, 0xd

    aput-byte v3, v1, v0

    .line 79
    move v0, v2

    .line 79
    .end local v2    # "index":I
    .restart local v0    # "index":I
    :cond_0
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/PrinterGerman;->print()V

    .line 80
    return-void
.end method


# virtual methods
.method public declared-synchronized printReport(Landroid/content/Context;Lcom/wen/fluorescence/database/TestResult;Ljava/util/List;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Lcom/wen/fluorescence/database/TestResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/wen/fluorescence/database/TestResult;",
            "Ljava/util/List<",
            "Lcom/wen/fluorescence/database/TestResult;",
            ">;)V"
        }
    .end annotation

    .line 410
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    monitor-enter p0

    .line 410
    const/4 v0, 0x0

    move v1, v0

    .line 410
    .local v1, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 411
    :try_start_0
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintNewLine()V

    .line 410
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 409
    .end local v1    # "i":I
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "result":Lcom/wen/fluorescence/database/TestResult;
    .end local p3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    :catchall_0
    move-exception p1

    goto/16 :goto_3

    .line 413
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "result":Lcom/wen/fluorescence/database/TestResult;
    .restart local p3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    :cond_0
    const v1, 0x7f0c00b5

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintHeaders(Ljava/lang/String;)V

    .line 414
    const-string v1, "------------------"

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintBoldMessage(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintLeft()V

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0c0153

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getSampleNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;Z)V

    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0c0154

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getSimpleType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;Z)V

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0c00f9

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;Z)V

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0c00c3

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getPatientNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;Z)V

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0c011f

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;Z)V

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0c0096

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;Z)V

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0c009a

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeVerdict()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;Z)V

    .line 425
    move v1, v2

    .line 425
    .restart local v1    # "i":I
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 426
    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 427
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v1, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v2}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;Z)V

    .line 428
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v1, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 428
    invoke-virtual {p0, v6, v2}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;Z)V

    .line 430
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v1, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeVerdict()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 430
    invoke-virtual {p0, v6, v2}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;Z)V

    .line 425
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 435
    .end local v1    # "i":I
    :cond_2
    const-string v1, "------"

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintBoldMessage(Ljava/lang/String;)V

    .line 436
    invoke-static {p1}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v1

    const-string v3, "OrganizationFragment"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 437
    .local v1, "organization":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0c0098

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;Z)V

    .line 438
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0c002a

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getTestTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;Z)V

    .line 439
    const v3, 0x7f0c0095

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;Z)V

    .line 440
    nop

    .line 440
    .local v0, "i":I
    :goto_2
    const/4 v2, 0x5

    if-ge v0, v2, :cond_3

    .line 441
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintNewLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 443
    .end local v0    # "i":I
    :cond_3
    monitor-exit p0

    return-void

    .line 409
    .end local v1    # "organization":Ljava/lang/String;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "result":Lcom/wen/fluorescence/database/TestResult;
    .end local p3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized printe(Landroid/content/Context;Lcom/wen/fluorescence/database/DBManager;Lcom/wen/fluorescence/database/TestResult;Ljava/util/List;)V
    .locals 19
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

    .line 91
    .local p4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    monitor-enter p0

    .line 91
    const/4 v5, 0x0

    move v6, v5

    .line 91
    .local v6, "i":I
    :goto_0
    const/4 v7, 0x2

    if-ge v6, v7, :cond_0

    .line 92
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintNewLine()V

    .line 91
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 90
    .end local v6    # "i":I
    .end local p1    # "mContext":Landroid/content/Context;
    .end local p2    # "dbm":Lcom/wen/fluorescence/database/DBManager;
    .end local p3    # "result":Lcom/wen/fluorescence/database/TestResult;
    .end local p4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_17

    .line 95
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

    .line 96
    .local v6, "organization":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 97
    invoke-virtual {v1, v6}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintOrganization(Ljava/lang/String;)V

    .line 99
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintNewLine()V

    .line 101
    const v8, 0x7f0c001b

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintHeaders(Ljava/lang/String;)V

    .line 102
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f0c00f9

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
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

    .line 102
    invoke-virtual {v1, v8}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;)V

    .line 105
    const v8, 0x7f0c00b2

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8, v5}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;Z)V

    .line 106
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSex()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    goto :goto_2

    .line 116
    :pswitch_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v9, 0x7f0c00ab

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "    "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8, v5}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;Z)V

    goto :goto_2

    .line 111
    :pswitch_1
    const-string v8, "M"

    invoke-virtual {v1, v8, v5}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;Z)V

    .line 112
    iget-object v8, v1, Lcom/wen/fluorescence/printer/PrinterGerman;->A0:[B

    invoke-direct {v1, v8, v5}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessageGerman([BZ)V

    .line 113
    const-string v8, "nnlich    "

    invoke-virtual {v1, v8, v5}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;Z)V

    .line 114
    goto :goto_2

    .line 108
    :pswitch_2
    const-string v8, "\uff1a-         "

    invoke-virtual {v1, v8, v5}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;Z)V

    .line 109
    nop

    .line 119
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f0c0064

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getAge()I

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "-"

    goto :goto_3

    :cond_3
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getAge()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :goto_3
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;)V

    .line 122
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0153

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSampleNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;)V

    .line 123
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c016f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;)V

    .line 124
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0154

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSimpleType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;)V

    .line 125
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c002a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getTestTime()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;)V

    .line 127
    const-string v8, "-------------------------------"

    invoke-virtual {v1, v8}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/wen/fluorescence/database/DBManager;->queryRangeMin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 131
    .local v8, "min":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/wen/fluorescence/database/DBManager;->queryRangeMax(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 133
    .local v9, "max":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 171
    .local v10, "range":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0c00d2

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ": "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeFlag()I

    move-result v11

    const v5, 0x7f0c0149

    if-nez v11, :cond_6

    .line 173
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ": "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 174
    .local v11, "printResult":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getiValid()I

    move-result v14

    if-nez v14, :cond_4

    .line 175
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v11, v12

    .line 177
    :cond_4
    invoke-virtual {v1, v11}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;)V

    .line 180
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 181
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v12

    const-string v14, "  "

    invoke-virtual {v12, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 182
    .local v12, "strArray":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReResult()Ljava/lang/String;

    move-result-object v14

    const-string v15, "  "

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 183
    .local v14, "resultArray":[Ljava/lang/String;
    const/4 v15, 0x1

    .line 183
    .local v15, "i":I
    :goto_4
    array-length v7, v12

    if-ge v15, v7, :cond_5

    .line 184
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  : "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v12, v15

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;)V

    .line 185
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v13, 0x7f0c0149

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v14, v15

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;)V

    .line 183
    add-int/lit8 v15, v15, 0x1

    const v5, 0x7f0c0149

    const/4 v7, 0x2

    const v13, 0x7f0c00d2

    goto :goto_4

    .line 188
    .end local v11    # "printResult":Ljava/lang/String;
    .end local v12    # "strArray":[Ljava/lang/String;
    .end local v14    # "resultArray":[Ljava/lang/String;
    .end local v15    # "i":I
    :cond_5
    goto/16 :goto_8

    .line 189
    :cond_6
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v5

    const/4 v7, 0x2

    if-le v5, v7, :cond_a

    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v5

    const/4 v7, 0x7

    if-lt v5, v7, :cond_7

    goto/16 :goto_5

    .line 192
    :cond_7
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getIsShowResult()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_9

    .line 193
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v11, 0x7f0c0149

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 194
    .local v5, "printResult":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getiValid()I

    move-result v7

    if-nez v7, :cond_8

    .line 195
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 197
    :cond_8
    invoke-virtual {v1, v5}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;)V

    .line 199
    .end local v5    # "printResult":Ljava/lang/String;
    :cond_9
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getIsShowConclusion()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_b

    .line 200
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v11, 0x7f0c01c6

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeVerdict()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;)V

    goto :goto_6

    .line 190
    :cond_a
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v11, 0x7f0c0149

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Lcom/wen/fluorescence/util/PublicFuction;->getShowResult(Lcom/wen/fluorescence/database/TestResult;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;)V

    .line 205
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

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 206
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v5

    const-string v7, "  "

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 207
    .local v5, "strArray":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReResult()Ljava/lang/String;

    move-result-object v7

    const-string v11, "  "

    invoke-virtual {v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 208
    .local v7, "resultArray":[Ljava/lang/String;
    const/4 v11, 0x1

    .line 208
    .local v11, "i":I
    :goto_7
    array-length v12, v5

    if-ge v11, v12, :cond_c

    .line 209
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c00d2

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "  : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v5, v11

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;)V

    .line 210
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c0149

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "  : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v7, v11

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;)V

    .line 208
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 214
    .end local v5    # "strArray":[Ljava/lang/String;
    .end local v7    # "resultArray":[Ljava/lang/String;
    .end local v11    # "i":I
    :cond_c
    :goto_8
    const/4 v5, 0x1

    .line 214
    .local v5, "i":I
    :goto_9
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_16

    .line 215
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v11}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 216
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c00d2

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v5, 0x1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ": "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v11}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;)V

    .line 217
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeFlag()I

    move-result v7

    if-nez v7, :cond_e

    .line 218
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c0149

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v5, 0x1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ": "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v11}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 219
    .local v7, "printResult":Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v11}, Lcom/wen/fluorescence/database/TestResult;->getiValid()I

    move-result v11

    if-nez v11, :cond_d

    .line 220
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v12}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    .line 222
    :cond_d
    invoke-virtual {v1, v7}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;)V

    .line 223
    .end local v7    # "printResult":Ljava/lang/String;
    goto/16 :goto_b

    .line 224
    :cond_e
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v7

    invoke-virtual {v7}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v7

    const/4 v11, 0x2

    if-le v7, v11, :cond_12

    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v7

    invoke-virtual {v7}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v7

    const/4 v11, 0x7

    if-lt v7, v11, :cond_f

    goto/16 :goto_a

    .line 227
    :cond_f
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getIsShowResult()I

    move-result v7

    const/4 v12, 0x1

    if-ne v7, v12, :cond_11

    .line 228
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0c0149

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v5, 0x1

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ": "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v12}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 229
    .restart local v7    # "printResult":Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v12}, Lcom/wen/fluorescence/database/TestResult;->getiValid()I

    move-result v12

    if-nez v12, :cond_10

    .line 230
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v13}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v7, v12

    .line 232
    :cond_10
    invoke-virtual {v1, v7}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;)V

    .line 234
    .end local v7    # "printResult":Ljava/lang/String;
    :cond_11
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getIsShowConclusion()I

    move-result v7

    const/4 v12, 0x1

    if-ne v7, v12, :cond_14

    .line 235
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0c01c6

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v5, 0x1

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ": "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v12}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeVerdict()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;)V

    goto :goto_c

    .line 225
    :cond_12
    const/4 v11, 0x7

    :goto_a
    const v13, 0x7f0c01c6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v14, 0x7f0c0149

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v5, 0x1

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ": "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Lcom/wen/fluorescence/util/PublicFuction;->getShowResult(Lcom/wen/fluorescence/database/TestResult;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;)V

    goto :goto_c

    .line 242
    :cond_13
    :goto_b
    const/4 v11, 0x7

    :cond_14
    const v13, 0x7f0c01c6

    :goto_c
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_15

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v12}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_15

    .line 243
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v7

    const-string v12, "  "

    invoke-virtual {v7, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 244
    .local v7, "strArray":[Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v12}, Lcom/wen/fluorescence/database/TestResult;->getReResult()Ljava/lang/String;

    move-result-object v12

    const-string v14, "  "

    invoke-virtual {v12, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 245
    .local v12, "resultArray":[Ljava/lang/String;
    const/4 v14, 0x1

    .line 245
    .local v14, "j":I
    :goto_d
    array-length v15, v7

    if-ge v14, v15, :cond_15

    .line 246
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v13, 0x7f0c00d2

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "  : "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v7, v14

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;)V

    .line 247
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v13, 0x7f0c0149

    invoke-virtual {v15, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "  : "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v15, v12, v14

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;)V

    .line 245
    add-int/lit8 v14, v14, 0x1

    const/4 v11, 0x7

    const v13, 0x7f0c01c6

    goto :goto_d

    .line 214
    .end local v7    # "strArray":[Ljava/lang/String;
    .end local v12    # "resultArray":[Ljava/lang/String;
    .end local v14    # "j":I
    :cond_15
    const v13, 0x7f0c0149

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_9

    .line 307
    .end local v5    # "i":I
    :cond_16
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v5

    const v7, 0x7f0c0142

    const/4 v11, 0x2

    if-le v5, v11, :cond_1d

    .line 308
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v11}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeFlag()I

    move-result v5

    if-nez v5, :cond_1c

    .line 309
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v12}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ":"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;)V

    .line 311
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_18

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    .line 312
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v5

    const-string v11, "  "

    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 313
    .local v5, "strArray":[Ljava/lang/String;
    const/4 v11, 0x1

    .line 313
    .local v11, "j":I
    :goto_e
    array-length v12, v5

    if-ge v11, v12, :cond_18

    .line 314
    const/4 v12, 0x0

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v13}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v12

    aget-object v13, v5, v11

    invoke-static {v2, v8, v9, v12, v13}, Lcom/wen/fluorescence/util/PublicFuction;->getUnitRange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 315
    .local v12, "unitRange":Ljava/lang/String;
    const-string v13, "F200"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u591a\u5355\u4f4d\u8303\u56f4\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    if-eqz v12, :cond_17

    const-string v13, ""

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_17

    .line 317
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v14, v5, v11

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;)V

    .line 313
    .end local v12    # "unitRange":Ljava/lang/String;
    :cond_17
    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    .line 322
    .end local v5    # "strArray":[Ljava/lang/String;
    .end local v11    # "j":I
    :cond_18
    const/4 v5, 0x1

    .line 322
    .local v5, "j":I
    :goto_f
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_1c

    .line 323
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v11}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/wen/fluorescence/database/DBManager;->queryRangeMin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 324
    .local v11, "min2":Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v12}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Lcom/wen/fluorescence/database/DBManager;->queryRangeMax(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 325
    .local v12, "max2":Ljava/lang/String;
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

    .line 326
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 328
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

    invoke-virtual {v15, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

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

    invoke-virtual {v1, v14}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;)V

    .line 333
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

    .line 334
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v13}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v13

    const-string v14, "  "

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 335
    .local v13, "strArray":[Ljava/lang/String;
    const/4 v14, 0x1

    .line 335
    .local v14, "k":I
    :goto_10
    array-length v15, v13

    if-ge v14, v15, :cond_1b

    .line 336
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v15}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v15

    aget-object v7, v13, v14

    invoke-static {v2, v11, v12, v15, v7}, Lcom/wen/fluorescence/util/PublicFuction;->getUnitRange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 337
    .local v7, "unitRange":Ljava/lang/String;
    const-string v15, "F200"

    move-object/from16 v16, v6

    new-instance v6, Ljava/lang/StringBuilder;

    .line 337
    .end local v6    # "organization":Ljava/lang/String;
    .local v16, "organization":Ljava/lang/String;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v11

    const-string v11, "\u591a\u5355\u4f4d\u8303\u56f4\uff1a"

    .line 337
    .end local v11    # "min2":Ljava/lang/String;
    .local v17, "min2":Ljava/lang/String;
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    if-eqz v7, :cond_1a

    const-string v6, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1a

    .line 339
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v13, v14

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v15, 0x7f0c0142

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ":"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;)V

    .line 335
    .end local v7    # "unitRange":Ljava/lang/String;
    :cond_1a
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v6, v16

    move-object/from16 v11, v17

    const v7, 0x7f0c0142

    goto :goto_10

    .line 322
    .end local v12    # "max2":Ljava/lang/String;
    .end local v13    # "strArray":[Ljava/lang/String;
    .end local v14    # "k":I
    .end local v16    # "organization":Ljava/lang/String;
    .end local v17    # "min2":Ljava/lang/String;
    .restart local v6    # "organization":Ljava/lang/String;
    :cond_1b
    move-object/from16 v16, v6

    .line 322
    .end local v6    # "organization":Ljava/lang/String;
    .restart local v16    # "organization":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v6, v16

    const v7, 0x7f0c0142

    goto/16 :goto_f

    .line 385
    .end local v5    # "j":I
    .end local v16    # "organization":Ljava/lang/String;
    .restart local v6    # "organization":Ljava/lang/String;
    :cond_1c
    move-object/from16 v16, v6

    .line 385
    .end local v6    # "organization":Ljava/lang/String;
    .restart local v16    # "organization":Ljava/lang/String;
    goto/16 :goto_15

    .line 346
    .end local v16    # "organization":Ljava/lang/String;
    .restart local v6    # "organization":Ljava/lang/String;
    :cond_1d
    move-object/from16 v16, v6

    .line 346
    .end local v6    # "organization":Ljava/lang/String;
    .restart local v16    # "organization":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeFlag()I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_23

    .line 347
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

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;)V

    .line 349
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

    .line 350
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 351
    .local v5, "strArray":[Ljava/lang/String;
    const/4 v6, 0x1

    .line 351
    .local v6, "j":I
    :goto_11
    array-length v7, v5

    if-ge v6, v7, :cond_1f

    .line 352
    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v11}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v7

    aget-object v11, v5, v6

    invoke-static {v2, v8, v9, v7, v11}, Lcom/wen/fluorescence/util/PublicFuction;->getUnitRange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 353
    .restart local v7    # "unitRange":Ljava/lang/String;
    const-string v11, "F200"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u591a\u5355\u4f4d\u8303\u56f4\uff1a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    if-eqz v7, :cond_1e

    const-string v11, ""

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1e

    .line 355
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v12, v5, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0c0142

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;)V

    .line 351
    .end local v7    # "unitRange":Ljava/lang/String;
    :cond_1e
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 359
    .end local v5    # "strArray":[Ljava/lang/String;
    .end local v6    # "j":I
    :cond_1f
    const/4 v5, 0x1

    .line 359
    .local v5, "j":I
    :goto_12
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_23

    .line 360
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/wen/fluorescence/database/DBManager;->queryRangeMin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 361
    .local v6, "min2":Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/wen/fluorescence/database/DBManager;->queryRangeMax(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 362
    .local v7, "max2":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v12}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_20

    .line 363
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 365
    .local v11, "range2":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v13}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c0142

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v13}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;)V

    .line 369
    .end local v11    # "range2":Ljava/lang/String;
    :cond_20
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v11}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_22

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v11}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v12}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_22

    .line 370
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v11}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v11

    const-string v12, "  "

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 371
    .local v11, "strArray":[Ljava/lang/String;
    const/4 v12, 0x1

    .line 371
    .local v12, "k":I
    :goto_13
    array-length v13, v11

    if-ge v12, v13, :cond_22

    .line 372
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v13}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v13

    aget-object v14, v11, v12

    invoke-static {v2, v6, v7, v13, v14}, Lcom/wen/fluorescence/util/PublicFuction;->getUnitRange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 373
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

    .line 374
    if-eqz v13, :cond_21

    const-string v3, ""

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 375
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v14, v11, v12

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

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;)V

    .line 375
    .end local v13    # "unitRange":Ljava/lang/String;
    goto :goto_14

    .line 371
    :cond_21
    const v15, 0x7f0c0142

    :goto_14
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v3, p2

    goto :goto_13

    .line 359
    .end local v6    # "min2":Ljava/lang/String;
    .end local v7    # "max2":Ljava/lang/String;
    .end local v11    # "strArray":[Ljava/lang/String;
    .end local v12    # "k":I
    :cond_22
    const v15, 0x7f0c0142

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, p2

    goto/16 :goto_12

    .line 385
    .end local v5    # "j":I
    :cond_23
    :goto_15
    const-string v3, "-------------------------------"

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;)V

    .line 386
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

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;)V

    .line 390
    const-string v3, "Pr"

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;Z)V

    .line 391
    iget-object v3, v1, Lcom/wen/fluorescence/printer/PrinterGerman;->U0:[B

    invoke-direct {v1, v3, v5}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessageGerman([BZ)V

    .line 392
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fer:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReviewer()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v5}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;Z)V

    .line 397
    const-string v3, "-------------------------------"

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;)V

    .line 399
    const-string v3, "Hinweis: Dieses Ergebnis gilt nur f"

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;Z)V

    .line 400
    iget-object v3, v1, Lcom/wen/fluorescence/printer/PrinterGerman;->U0:[B

    invoke-direct {v1, v3, v5}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessageGerman([BZ)V

    .line 401
    const-string v3, "r diese Probe!"

    const/4 v6, 0x1

    invoke-virtual {v1, v3, v6}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;Z)V

    .line 404
    nop

    .line 404
    .local v5, "i":I
    :goto_16
    move v3, v5

    .line 404
    .end local v5    # "i":I
    .local v3, "i":I
    const/4 v5, 0x6

    if-ge v3, v5, :cond_24

    .line 405
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintNewLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    add-int/lit8 v5, v3, 0x1

    .line 404
    .end local v3    # "i":I
    .restart local v5    # "i":I
    goto :goto_16

    .line 407
    .end local v5    # "i":I
    :cond_24
    monitor-exit p0

    return-void

    .line 90
    .end local v8    # "min":Ljava/lang/String;
    .end local v9    # "max":Ljava/lang/String;
    .end local v10    # "range":Ljava/lang/String;
    .end local v16    # "organization":Ljava/lang/String;
    .end local p1    # "mContext":Landroid/content/Context;
    .end local p2    # "dbm":Lcom/wen/fluorescence/database/DBManager;
    .end local p3    # "result":Lcom/wen/fluorescence/database/TestResult;
    .end local p4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    :goto_17
    monitor-exit p0

    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized printerQC(Landroid/content/Context;ZZZZ)V
    .locals 8
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "M0"    # Z
    .param p3, "M1"    # Z
    .param p4, "M2"    # Z
    .param p5, "M3"    # Z

    monitor-enter p0

    .line 456
    :try_start_0
    const-string v0, ""

    .line 456
    .local v0, "normal":Ljava/lang/String;
    const-string v1, ""

    .line 457
    .local v1, "abnormal":Ljava/lang/String;
    const/4 v2, 0x0

    move v3, v2

    .line 457
    .local v3, "i":I
    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 458
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintNewLine()V

    .line 457
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 460
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0104

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 461
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0056

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 462
    iget-object v3, p0, Lcom/wen/fluorescence/printer/PrinterGerman;->qcReport:[B

    invoke-direct {p0, v3}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintHeadersGerman([B)V

    .line 463
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintNewLine()V

    .line 464
    const-string v3, "Zeit f"

    invoke-virtual {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;Z)V

    .line 465
    iget-object v3, p0, Lcom/wen/fluorescence/printer/PrinterGerman;->U0:[B

    invoke-direct {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessageGerman([BZ)V

    .line 466
    const-string v3, "r die Qualit"

    invoke-virtual {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;Z)V

    .line 467
    iget-object v3, p0, Lcom/wen/fluorescence/printer/PrinterGerman;->A0:[B

    invoke-direct {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessageGerman([BZ)V

    .line 468
    const-string v3, "tspr"

    invoke-virtual {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;Z)V

    .line 469
    iget-object v3, p0, Lcom/wen/fluorescence/printer/PrinterGerman;->U0:[B

    invoke-direct {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessageGerman([BZ)V

    .line 470
    const-string v3, "fung:"

    invoke-virtual {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;Z)V

    .line 471
    const-string v3, "yyyy-MM-dd"

    invoke-static {v3}, Lcom/wen/fluorescence/util/DateUtils;->getSysemDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;)V

    .line 472
    const-string v3, "-------------------------------"

    invoke-virtual {p0, v3}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;)V

    .line 474
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0c00d2

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " 1:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;Z)V

    .line 475
    iget-object v3, p0, Lcom/wen/fluorescence/printer/PrinterGerman;->U0Big:[B

    invoke-direct {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessageGerman([BZ)V

    .line 476
    const-string v3, "bertragungssystem"

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v5}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;Z)V

    .line 477
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f0c0149

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " 1:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_1

    move-object v7, v0

    goto :goto_1

    :cond_1
    move-object v7, v1

    :goto_1
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v5}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;Z)V

    .line 479
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " 2:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;Z)V

    .line 480
    const v3, 0x7f0c015b

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v5}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;Z)V

    .line 481
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " 2:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    move-object v7, v0

    goto :goto_2

    :cond_2
    move-object v7, v1

    :goto_2
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v5}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;Z)V

    .line 483
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " 3:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;Z)V

    .line 484
    const v3, 0x7f0c0126

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v5}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;Z)V

    .line 485
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " 3:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_3

    move-object v7, v0

    goto :goto_3

    :cond_3
    move-object v7, v1

    :goto_3
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v5}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;Z)V

    .line 487
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " 4:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;Z)V

    .line 488
    const v3, 0x7f0c0128

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v5}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;Z)V

    .line 489
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " 4:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_4

    move-object v4, v0

    goto :goto_4

    :cond_4
    move-object v4, v1

    :goto_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v5}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;Z)V

    .line 490
    const-string v3, "-------------------------------"

    invoke-virtual {p0, v3}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;)V

    .line 491
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0c001a

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    .line 492
    invoke-static {v4}, Lcom/wen/fluorescence/util/DateUtils;->getSysemDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 491
    invoke-virtual {p0, v3}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintMessage(Ljava/lang/String;)V

    .line 493
    nop

    .line 493
    .local v2, "i":I
    :goto_5
    const/4 v3, 0x4

    if-ge v2, v3, :cond_5

    .line 494
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/PrinterGerman;->PrintNewLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 496
    .end local v2    # "i":I
    :cond_5
    monitor-exit p0

    return-void

    .line 455
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
