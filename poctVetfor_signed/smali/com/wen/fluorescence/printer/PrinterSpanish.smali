.class public Lcom/wen/fluorescence/printer/PrinterSpanish;
.super Lcom/wen/fluorescence/printer/Printer;
.source "PrinterSpanish.java"


# instance fields
.field private E2:[B

.field private I2:[B

.field private O2:[B

.field private U2:[B

.field private qcReport:[B


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 21
    invoke-direct {p0}, Lcom/wen/fluorescence/printer/Printer;-><init>()V

    .line 23
    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/wen/fluorescence/printer/PrinterSpanish;->qcReport:[B

    .line 25
    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, -0x6

    aput-byte v3, v1, v2

    iput-object v1, p0, Lcom/wen/fluorescence/printer/PrinterSpanish;->U2:[B

    .line 26
    new-array v1, v0, [B

    const/16 v3, -0x33

    aput-byte v3, v1, v2

    iput-object v1, p0, Lcom/wen/fluorescence/printer/PrinterSpanish;->I2:[B

    .line 27
    new-array v1, v0, [B

    const/16 v3, -0xd

    aput-byte v3, v1, v2

    iput-object v1, p0, Lcom/wen/fluorescence/printer/PrinterSpanish;->O2:[B

    .line 28
    new-array v0, v0, [B

    const/16 v1, -0x17

    aput-byte v1, v0, v2

    iput-object v0, p0, Lcom/wen/fluorescence/printer/PrinterSpanish;->E2:[B

    return-void

    :array_0
    .array-data 1
        0x43t
        0x61t
        0x6ct
        0x69t
        0x62t
        0x72t
        0x61t
        0x63t
        0x69t
        -0xdt
        0x6et
        0x20t
        0x64t
        0x65t
        0x20t
        0x63t
        0x61t
        0x6ct
        0x69t
        0x64t
        0x61t
        0x64t
    .end array-data
.end method

.method private PrintHeadersSpanish([B)V
    .locals 5
    .param p1, "array"    # [B

    .line 32
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/PrinterSpanish;->ClearBufferData()V

    .line 34
    const/4 v0, 0x0

    .line 35
    .local v0, "index":I
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterSpanish;->OneBufferData:[B

    add-int/lit8 v2, v0, 0x1

    .line 35
    .local v2, "index":I
    const/16 v3, 0x1b

    aput-byte v3, v1, v0

    .line 36
    .end local v0    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterSpanish;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 36
    .local v1, "index":I
    const/16 v4, 0x38

    aput-byte v4, v0, v2

    .line 37
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterSpanish;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 37
    .restart local v2    # "index":I
    const/4 v4, 0x3

    aput-byte v4, v0, v1

    .line 39
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterSpanish;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 39
    .restart local v1    # "index":I
    aput-byte v3, v0, v2

    .line 40
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterSpanish;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 40
    .restart local v2    # "index":I
    const/16 v4, 0x7b

    aput-byte v4, v0, v1

    .line 41
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterSpanish;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 41
    .restart local v1    # "index":I
    const/4 v4, 0x0

    aput-byte v4, v0, v2

    .line 44
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterSpanish;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 44
    .restart local v2    # "index":I
    aput-byte v3, v0, v1

    .line 45
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterSpanish;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 45
    .restart local v1    # "index":I
    const/16 v4, 0x57

    aput-byte v4, v0, v2

    .line 46
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterSpanish;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 46
    .restart local v2    # "index":I
    const/4 v4, 0x1

    aput-byte v4, v0, v1

    .line 48
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterSpanish;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 48
    .restart local v1    # "index":I
    aput-byte v3, v0, v2

    .line 49
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterSpanish;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 49
    .restart local v2    # "index":I
    const/16 v3, 0x61

    aput-byte v3, v0, v1

    .line 50
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterSpanish;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 50
    .restart local v1    # "index":I
    aput-byte v4, v0, v2

    .line 51
    .end local v2    # "index":I
    add-int/2addr v1, v4

    .line 52
    add-int/lit8 v0, v1, 0x1

    .line 52
    .restart local v0    # "index":I
    invoke-virtual {p0, v1, p1}, Lcom/wen/fluorescence/printer/PrinterSpanish;->OneTmpBuffers(I[B)[B

    .line 53
    .end local v1    # "index":I
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterSpanish;->OneBufferData:[B

    add-int/lit8 v2, v0, 0x1

    .line 53
    .restart local v2    # "index":I
    const/16 v3, 0xd

    array-length v4, p1

    add-int/2addr v0, v4

    .line 53
    .end local v0    # "index":I
    aput-byte v3, v1, v0

    .line 54
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/PrinterSpanish;->print()V

    .line 55
    return-void
.end method

.method private PrintMessageSpanish([BZ)V
    .locals 6
    .param p1, "printData"    # [B
    .param p2, "isEnter"    # Z

    .line 60
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/PrinterSpanish;->ClearBufferData()V

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "index":I
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterSpanish;->OneBufferData:[B

    add-int/lit8 v2, v0, 0x1

    .line 63
    .local v2, "index":I
    const/16 v3, 0x1b

    aput-byte v3, v1, v0

    .line 64
    .end local v0    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterSpanish;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 64
    .local v1, "index":I
    const/16 v4, 0x61

    aput-byte v4, v0, v2

    .line 65
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterSpanish;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 65
    .restart local v2    # "index":I
    const/4 v4, 0x0

    aput-byte v4, v0, v1

    .line 67
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterSpanish;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 67
    .restart local v1    # "index":I
    aput-byte v3, v0, v2

    .line 68
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterSpanish;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 68
    .restart local v2    # "index":I
    const/16 v5, 0x7b

    aput-byte v5, v0, v1

    .line 69
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterSpanish;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 69
    .restart local v1    # "index":I
    aput-byte v4, v0, v2

    .line 71
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterSpanish;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 71
    .restart local v2    # "index":I
    aput-byte v3, v0, v1

    .line 72
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterSpanish;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 72
    .restart local v1    # "index":I
    const/16 v4, 0x57

    aput-byte v4, v0, v2

    .line 73
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterSpanish;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 73
    .restart local v2    # "index":I
    const/4 v4, 0x1

    aput-byte v4, v0, v1

    .line 75
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterSpanish;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 75
    .restart local v1    # "index":I
    aput-byte v3, v0, v2

    .line 76
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterSpanish;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 76
    .restart local v2    # "index":I
    const/16 v3, 0x38

    aput-byte v3, v0, v1

    .line 77
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterSpanish;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 77
    .restart local v1    # "index":I
    const/4 v3, 0x3

    aput-byte v3, v0, v2

    .line 78
    .end local v2    # "index":I
    add-int/2addr v1, v4

    .line 79
    add-int/lit8 v0, v1, 0x1

    .line 79
    .restart local v0    # "index":I
    invoke-virtual {p0, v1, p1}, Lcom/wen/fluorescence/printer/PrinterSpanish;->OneTmpBuffers(I[B)[B

    .line 80
    .end local v1    # "index":I
    if-eqz p2, :cond_0

    .line 81
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterSpanish;->OneBufferData:[B

    add-int/lit8 v2, v0, 0x1

    .line 81
    .restart local v2    # "index":I
    array-length v3, p1

    add-int/2addr v0, v3

    .line 81
    .end local v0    # "index":I
    const/16 v3, 0xd

    aput-byte v3, v1, v0

    .line 83
    move v0, v2

    .line 83
    .end local v2    # "index":I
    .restart local v0    # "index":I
    :cond_0
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/PrinterSpanish;->print()V

    .line 84
    return-void
.end method


# virtual methods
.method public declared-synchronized printReport(Landroid/content/Context;Lcom/wen/fluorescence/database/TestResult;Ljava/util/List;)V
    .locals 7
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

    .line 417
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    monitor-enter p0

    .line 417
    const/4 v0, 0x0

    move v1, v0

    .line 417
    .local v1, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 418
    :try_start_0
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintNewLine()V

    .line 417
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 416
    .end local v1    # "i":I
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "result":Lcom/wen/fluorescence/database/TestResult;
    .end local p3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    :catchall_0
    move-exception p1

    goto/16 :goto_3

    .line 420
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "result":Lcom/wen/fluorescence/database/TestResult;
    .restart local p3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    :cond_0
    const v1, 0x7f0c00b5

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintHeaders(Ljava/lang/String;)V

    .line 421
    const-string v1, "------------------"

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintBoldMessage(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintLeft()V

    .line 424
    const-string v1, "N"

    invoke-virtual {p0, v1, v0}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;Z)V

    .line 425
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterSpanish;->U2:[B

    invoke-direct {p0, v1, v0}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessageSpanish([BZ)V

    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mero de muestra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getSampleNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;Z)V

    .line 428
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

    invoke-virtual {p0, v1, v2}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;Z)V

    .line 429
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

    invoke-virtual {p0, v1, v2}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;Z)V

    .line 431
    const-string v1, "Tarjeta de identificaci"

    invoke-virtual {p0, v1, v0}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;Z)V

    .line 432
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterSpanish;->O2:[B

    invoke-direct {p0, v1, v0}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessageSpanish([BZ)V

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "n:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getPatientNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;Z)V

    .line 435
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

    invoke-virtual {p0, v1, v2}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;Z)V

    .line 436
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

    invoke-virtual {p0, v1, v2}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;Z)V

    .line 437
    const-string v1, "Veredicto de detecci"

    invoke-virtual {p0, v1, v0}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;Z)V

    .line 438
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterSpanish;->O2:[B

    invoke-direct {p0, v1, v0}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessageSpanish([BZ)V

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "n:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeVerdict()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;Z)V

    .line 441
    move v1, v2

    .line 441
    .restart local v1    # "i":I
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 442
    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 443
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v1, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v2}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;Z)V

    .line 444
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v1, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 444
    invoke-virtual {p0, v5, v2}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;Z)V

    .line 446
    const-string v5, "Veredicto de detecci"

    invoke-virtual {p0, v5, v0}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;Z)V

    .line 447
    iget-object v5, p0, Lcom/wen/fluorescence/printer/PrinterSpanish;->O2:[B

    invoke-direct {p0, v5, v0}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessageSpanish([BZ)V

    .line 448
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "n "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v1, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeVerdict()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 448
    invoke-virtual {p0, v5, v2}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;Z)V

    .line 441
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 453
    .end local v1    # "i":I
    :cond_2
    const-string v1, "------"

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintBoldMessage(Ljava/lang/String;)V

    .line 454
    invoke-static {p1}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v1

    const-string v3, "OrganizationFragment"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 456
    .local v1, "organization":Ljava/lang/String;
    const-string v3, "Organizaci"

    invoke-virtual {p0, v3, v0}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;Z)V

    .line 457
    iget-object v3, p0, Lcom/wen/fluorescence/printer/PrinterSpanish;->O2:[B

    invoke-direct {p0, v3, v0}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessageSpanish([BZ)V

    .line 458
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "n\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;Z)V

    .line 460
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

    invoke-virtual {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;Z)V

    .line 461
    const v3, 0x7f0c0095

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;Z)V

    .line 462
    nop

    .line 462
    .local v0, "i":I
    :goto_2
    const/4 v2, 0x5

    if-ge v0, v2, :cond_3

    .line 463
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintNewLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 465
    .end local v0    # "i":I
    :cond_3
    monitor-exit p0

    return-void

    .line 416
    .end local v1    # "organization":Ljava/lang/String;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "result":Lcom/wen/fluorescence/database/TestResult;
    .end local p3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    :goto_3
    monitor-exit p0

    throw p1
.end method

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

    .line 96
    .local p4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    monitor-enter p0

    .line 96
    const/4 v5, 0x0

    move v6, v5

    .line 96
    .local v6, "i":I
    :goto_0
    const/4 v7, 0x2

    if-ge v6, v7, :cond_0

    .line 97
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintNewLine()V

    .line 96
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 95
    .end local v6    # "i":I
    .end local p1    # "mContext":Landroid/content/Context;
    .end local p2    # "dbm":Lcom/wen/fluorescence/database/DBManager;
    .end local p3    # "result":Lcom/wen/fluorescence/database/TestResult;
    .end local p4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_17

    .line 99
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

    .line 100
    .local v6, "organization":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 101
    invoke-virtual {v1, v6}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintOrganization(Ljava/lang/String;)V

    .line 103
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintNewLine()V

    .line 104
    const v8, 0x7f0c001b

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintHeaders(Ljava/lang/String;)V

    .line 105
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f0c00f9

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
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

    .line 105
    invoke-virtual {v1, v8}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;)V

    .line 108
    const v8, 0x7f0c00b2

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8, v5}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;Z)V

    .line 109
    const-string v8, ""

    .line 110
    .local v8, "strSex":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSex()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    goto :goto_2

    .line 118
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

    .line 115
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

    .line 116
    goto :goto_2

    .line 112
    :pswitch_2
    const-string v9, "\uff1a-         "

    move-object v8, v9

    .line 113
    nop

    .line 121
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

    .line 122
    invoke-virtual {v1, v8}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;)V

    .line 124
    const-string v9, "N"

    invoke-virtual {v1, v9, v5}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;Z)V

    .line 125
    iget-object v9, v1, Lcom/wen/fluorescence/printer/PrinterSpanish;->U2:[B

    invoke-direct {v1, v9, v5}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessageSpanish([BZ)V

    .line 126
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mero de muestra:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSampleNumber()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v1, v9, v10}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;Z)V

    .line 128
    const-string v9, "N"

    invoke-virtual {v1, v9, v5}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;Z)V

    .line 129
    iget-object v9, v1, Lcom/wen/fluorescence/printer/PrinterSpanish;->U2:[B

    invoke-direct {v1, v9, v5}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessageSpanish([BZ)V

    .line 130
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mero de serie:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9, v10}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;Z)V

    .line 132
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

    invoke-virtual {v1, v9, v10}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;Z)V

    .line 134
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c002a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getTestTime()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;)V

    .line 135
    const-string v9, "-------------------------------"

    invoke-virtual {v1, v9}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;)V

    .line 138
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/wen/fluorescence/database/DBManager;->queryRangeMin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 139
    .local v9, "min":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/wen/fluorescence/database/DBManager;->queryRangeMax(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 141
    .local v11, "max":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 179
    .local v12, "range":Ljava/lang/String;
    iget-object v13, v1, Lcom/wen/fluorescence/printer/PrinterSpanish;->I2:[B

    invoke-direct {v1, v13, v5}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessageSpanish([BZ)V

    .line 180
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "tem "

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

    invoke-virtual {v1, v13, v10}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;Z)V

    .line 181
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeFlag()I

    move-result v13

    const v14, 0x7f0c0149

    if-nez v13, :cond_6

    .line 182
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

    .line 183
    .local v13, "printResult":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getiValid()I

    move-result v15

    if-nez v15, :cond_4

    .line 184
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

    .line 186
    :cond_4
    invoke-virtual {v1, v13}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;)V

    .line 189
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

    .line 190
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v10

    const-string v15, "  "

    invoke-virtual {v10, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 191
    .local v10, "strArray":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReResult()Ljava/lang/String;

    move-result-object v15

    const-string v7, "  "

    invoke-virtual {v15, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 192
    .local v7, "resultArray":[Ljava/lang/String;
    const/4 v15, 0x1

    .line 192
    .local v15, "i":I
    :goto_4
    array-length v14, v10

    if-ge v15, v14, :cond_5

    .line 193
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object/from16 v16, v6

    const v6, 0x7f0c00d2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 193
    .end local v6    # "organization":Ljava/lang/String;
    .local v16, "organization":Ljava/lang/String;
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  : "

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v10, v15

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;)V

    .line 194
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

    invoke-virtual {v1, v5}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;)V

    .line 192
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v6, v16

    const v14, 0x7f0c0149

    goto :goto_4

    .line 197
    .end local v7    # "resultArray":[Ljava/lang/String;
    .end local v10    # "strArray":[Ljava/lang/String;
    .end local v13    # "printResult":Ljava/lang/String;
    .end local v15    # "i":I
    .end local v16    # "organization":Ljava/lang/String;
    .restart local v6    # "organization":Ljava/lang/String;
    :cond_5
    move-object/from16 v16, v6

    .line 197
    .end local v6    # "organization":Ljava/lang/String;
    .restart local v16    # "organization":Ljava/lang/String;
    goto/16 :goto_8

    .line 198
    .end local v16    # "organization":Ljava/lang/String;
    .restart local v6    # "organization":Ljava/lang/String;
    :cond_6
    move-object/from16 v16, v6

    .line 198
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

    .line 201
    :cond_7
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getIsShowResult()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_9

    .line 202
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

    .line 203
    .local v5, "printResult":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getiValid()I

    move-result v6

    if-nez v6, :cond_8

    .line 204
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

    .line 206
    :cond_8
    invoke-virtual {v1, v5}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;)V

    .line 208
    .end local v5    # "printResult":Ljava/lang/String;
    :cond_9
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getIsShowConclusion()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    .line 209
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

    invoke-virtual {v1, v5}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;)V

    goto :goto_6

    .line 199
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

    invoke-virtual {v1, v5}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;)V

    .line 214
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

    .line 215
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 216
    .local v5, "strArray":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReResult()Ljava/lang/String;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 217
    .local v6, "resultArray":[Ljava/lang/String;
    const/4 v7, 0x1

    .line 217
    .local v7, "i":I
    :goto_7
    array-length v10, v5

    if-ge v7, v10, :cond_c

    .line 218
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

    invoke-virtual {v1, v10}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;)V

    .line 219
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

    invoke-virtual {v1, v10}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;)V

    .line 217
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 223
    .end local v5    # "strArray":[Ljava/lang/String;
    .end local v6    # "resultArray":[Ljava/lang/String;
    .end local v7    # "i":I
    :cond_c
    :goto_8
    const/4 v5, 0x1

    .line 223
    .local v5, "i":I
    :goto_9
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_16

    .line 224
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

    .line 225
    iget-object v6, v1, Lcom/wen/fluorescence/printer/PrinterSpanish;->I2:[B

    const/4 v7, 0x0

    invoke-direct {v1, v6, v7}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessageSpanish([BZ)V

    .line 226
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tem "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    add-int v10, v7, v5

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

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

    invoke-virtual {v1, v6, v7}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;Z)V

    .line 227
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeFlag()I

    move-result v6

    if-nez v6, :cond_e

    .line 228
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

    .line 229
    .local v6, "printResult":Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getiValid()I

    move-result v7

    if-nez v7, :cond_d

    .line 230
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

    .line 232
    :cond_d
    invoke-virtual {v1, v6}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;)V

    .line 233
    .end local v6    # "printResult":Ljava/lang/String;
    goto/16 :goto_b

    .line 234
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

    .line 237
    :cond_f
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getIsShowResult()I

    move-result v6

    const/4 v10, 0x1

    if-ne v6, v10, :cond_11

    .line 238
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

    .line 239
    .restart local v6    # "printResult":Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v10}, Lcom/wen/fluorescence/database/TestResult;->getiValid()I

    move-result v10

    if-nez v10, :cond_10

    .line 240
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

    .line 242
    :cond_10
    invoke-virtual {v1, v6}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;)V

    .line 244
    .end local v6    # "printResult":Ljava/lang/String;
    :cond_11
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getIsShowConclusion()I

    move-result v6

    const/4 v10, 0x1

    if-ne v6, v10, :cond_14

    .line 245
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

    invoke-virtual {v1, v6}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;)V

    goto :goto_c

    .line 235
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

    invoke-virtual {v1, v6}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;)V

    goto :goto_c

    .line 252
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

    .line 253
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v6

    const-string v10, "  "

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 254
    .local v6, "strArray":[Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v10}, Lcom/wen/fluorescence/database/TestResult;->getReResult()Ljava/lang/String;

    move-result-object v10

    const-string v14, "  "

    invoke-virtual {v10, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 255
    .local v10, "resultArray":[Ljava/lang/String;
    const/4 v14, 0x1

    .line 255
    .local v14, "j":I
    :goto_d
    array-length v15, v6

    if-ge v14, v15, :cond_15

    .line 256
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

    invoke-virtual {v1, v7}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;)V

    .line 257
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

    invoke-virtual {v1, v7}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;)V

    .line 255
    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x7

    const v13, 0x7f0c01c6

    goto :goto_d

    .line 223
    .end local v6    # "strArray":[Ljava/lang/String;
    .end local v10    # "resultArray":[Ljava/lang/String;
    .end local v14    # "j":I
    :cond_15
    const v13, 0x7f0c0149

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_9

    .line 317
    .end local v5    # "i":I
    :cond_16
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v5

    const v6, 0x7f0c0142

    const/4 v7, 0x2

    if-le v5, v7, :cond_1d

    .line 318
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeFlag()I

    move-result v5

    if-nez v5, :cond_1c

    .line 319
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

    invoke-virtual {v1, v5}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;)V

    .line 321
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

    .line 322
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v5

    const-string v7, "  "

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 323
    .local v5, "strArray":[Ljava/lang/String;
    const/4 v7, 0x1

    .line 323
    .local v7, "j":I
    :goto_e
    array-length v10, v5

    if-ge v7, v10, :cond_18

    .line 324
    const/4 v10, 0x0

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v13}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v10

    aget-object v13, v5, v7

    invoke-static {v2, v9, v11, v10, v13}, Lcom/wen/fluorescence/util/PublicFuction;->getUnitRange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 325
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

    .line 326
    if-eqz v10, :cond_17

    const-string v13, ""

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_17

    .line 327
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

    invoke-virtual {v1, v13}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;)V

    .line 323
    .end local v10    # "unitRange":Ljava/lang/String;
    :cond_17
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    .line 332
    .end local v5    # "strArray":[Ljava/lang/String;
    .end local v7    # "j":I
    :cond_18
    const/4 v5, 0x1

    .line 332
    .local v5, "j":I
    :goto_f
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_1c

    .line 333
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/wen/fluorescence/database/DBManager;->queryRangeMin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 334
    .local v7, "min2":Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v10}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/wen/fluorescence/database/DBManager;->queryRangeMax(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 335
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

    .line 336
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 338
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

    invoke-virtual {v1, v14}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;)V

    .line 342
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

    .line 343
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v13}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v13

    const-string v14, "  "

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 344
    .local v13, "strArray":[Ljava/lang/String;
    const/4 v14, 0x1

    .line 344
    .local v14, "k":I
    :goto_10
    array-length v15, v13

    if-ge v14, v15, :cond_1b

    .line 345
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v15}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v15

    aget-object v6, v13, v14

    invoke-static {v2, v7, v10, v15, v6}, Lcom/wen/fluorescence/util/PublicFuction;->getUnitRange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 346
    .local v6, "unitRange":Ljava/lang/String;
    const-string v15, "F200"

    move-object/from16 v17, v7

    new-instance v7, Ljava/lang/StringBuilder;

    .line 346
    .end local v7    # "min2":Ljava/lang/String;
    .local v17, "min2":Ljava/lang/String;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v8

    const-string v8, "\u591a\u5355\u4f4d\u8303\u56f4\uff1a"

    .line 346
    .end local v8    # "strSex":Ljava/lang/String;
    .local v18, "strSex":Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    if-eqz v6, :cond_1a

    const-string v7, ""

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1a

    .line 348
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

    invoke-virtual {v1, v7}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;)V

    .line 344
    .end local v6    # "unitRange":Ljava/lang/String;
    :cond_1a
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    const v6, 0x7f0c0142

    goto :goto_10

    .line 332
    .end local v10    # "max2":Ljava/lang/String;
    .end local v13    # "strArray":[Ljava/lang/String;
    .end local v14    # "k":I
    .end local v17    # "min2":Ljava/lang/String;
    .end local v18    # "strSex":Ljava/lang/String;
    .restart local v8    # "strSex":Ljava/lang/String;
    :cond_1b
    move-object/from16 v18, v8

    .line 332
    .end local v8    # "strSex":Ljava/lang/String;
    .restart local v18    # "strSex":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v8, v18

    const v6, 0x7f0c0142

    goto/16 :goto_f

    .line 395
    .end local v5    # "j":I
    .end local v18    # "strSex":Ljava/lang/String;
    .restart local v8    # "strSex":Ljava/lang/String;
    :cond_1c
    move-object/from16 v18, v8

    .line 395
    .end local v8    # "strSex":Ljava/lang/String;
    .restart local v18    # "strSex":Ljava/lang/String;
    goto/16 :goto_15

    .line 355
    .end local v18    # "strSex":Ljava/lang/String;
    .restart local v8    # "strSex":Ljava/lang/String;
    :cond_1d
    move-object/from16 v18, v8

    .line 355
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

    .line 356
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

    invoke-virtual {v1, v5}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;)V

    .line 358
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

    .line 359
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 360
    .local v5, "strArray":[Ljava/lang/String;
    const/4 v6, 0x1

    .line 360
    .local v6, "j":I
    :goto_11
    array-length v7, v5

    if-ge v6, v7, :cond_1f

    .line 361
    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v8}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v7

    aget-object v8, v5, v6

    invoke-static {v2, v9, v11, v7, v8}, Lcom/wen/fluorescence/util/PublicFuction;->getUnitRange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 362
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

    .line 363
    if-eqz v7, :cond_1e

    const-string v8, ""

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1e

    .line 364
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

    invoke-virtual {v1, v8}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;)V

    .line 360
    .end local v7    # "unitRange":Ljava/lang/String;
    :cond_1e
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 369
    .end local v5    # "strArray":[Ljava/lang/String;
    .end local v6    # "j":I
    :cond_1f
    const/4 v5, 0x1

    .line 369
    .local v5, "j":I
    :goto_12
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_23

    .line 370
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/wen/fluorescence/database/DBManager;->queryRangeMin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 371
    .local v6, "min2":Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/wen/fluorescence/database/DBManager;->queryRangeMax(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 372
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

    .line 373
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " - "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 375
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

    invoke-virtual {v1, v10}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;)V

    .line 379
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

    .line 380
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v8}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v8

    const-string v10, "  "

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 381
    .local v8, "strArray":[Ljava/lang/String;
    const/4 v10, 0x1

    .line 381
    .local v10, "k":I
    :goto_13
    array-length v13, v8

    if-ge v10, v13, :cond_22

    .line 382
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v13}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v13

    aget-object v14, v8, v10

    invoke-static {v2, v6, v7, v13, v14}, Lcom/wen/fluorescence/util/PublicFuction;->getUnitRange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 383
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

    .line 384
    if-eqz v13, :cond_21

    const-string v3, ""

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 385
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

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;)V

    .line 385
    .end local v13    # "unitRange":Ljava/lang/String;
    goto :goto_14

    .line 381
    :cond_21
    const v15, 0x7f0c0142

    :goto_14
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, p2

    goto :goto_13

    .line 369
    .end local v6    # "min2":Ljava/lang/String;
    .end local v7    # "max2":Ljava/lang/String;
    .end local v8    # "strArray":[Ljava/lang/String;
    .end local v10    # "k":I
    :cond_22
    const v15, 0x7f0c0142

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, p2

    goto/16 :goto_12

    .line 395
    .end local v5    # "j":I
    :cond_23
    :goto_15
    const-string v3, "-------------------------------"

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;)V

    .line 396
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

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;)V

    .line 398
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

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;)V

    .line 402
    const-string v3, "-------------------------------"

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;)V

    .line 406
    const-string v3, "Declaraci"

    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;Z)V

    .line 407
    iget-object v3, v1, Lcom/wen/fluorescence/printer/PrinterSpanish;->O2:[B

    invoke-direct {v1, v3, v7}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessageSpanish([BZ)V

    .line 408
    const-string v3, "n de prueba: este resultado solo es responsable de esta muestra!"

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v5}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;Z)V

    .line 411
    nop

    .line 411
    .local v7, "i":I
    :goto_16
    move v3, v7

    .line 411
    .end local v7    # "i":I
    .local v3, "i":I
    const/4 v5, 0x6

    if-ge v3, v5, :cond_24

    .line 412
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintNewLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    add-int/lit8 v7, v3, 0x1

    .line 411
    .end local v3    # "i":I
    .restart local v7    # "i":I
    goto :goto_16

    .line 414
    .end local v7    # "i":I
    :cond_24
    monitor-exit p0

    return-void

    .line 95
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

    .line 477
    :try_start_0
    const-string v0, ""

    .line 477
    .local v0, "normal":Ljava/lang/String;
    const-string v1, ""

    .line 478
    .local v1, "abnormal":Ljava/lang/String;
    const/4 v2, 0x0

    move v3, v2

    .line 478
    .local v3, "i":I
    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 479
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintNewLine()V

    .line 478
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 481
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0104

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 482
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0056

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 483
    iget-object v3, p0, Lcom/wen/fluorescence/printer/PrinterSpanish;->qcReport:[B

    invoke-direct {p0, v3}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintHeadersSpanish([B)V

    .line 484
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintNewLine()V

    .line 486
    const-string v3, "Tiempo de calidad inspecci"

    invoke-virtual {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;Z)V

    .line 487
    iget-object v3, p0, Lcom/wen/fluorescence/printer/PrinterSpanish;->O2:[B

    invoke-direct {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessageSpanish([BZ)V

    .line 488
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "n:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "yyyy-MM-dd"

    invoke-static {v4}, Lcom/wen/fluorescence/util/DateUtils;->getSysemDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;)V

    .line 489
    const-string v3, "-------------------------------"

    invoke-virtual {p0, v3}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;)V

    .line 491
    iget-object v3, p0, Lcom/wen/fluorescence/printer/PrinterSpanish;->I2:[B

    invoke-direct {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessageSpanish([BZ)V

    .line 492
    const-string v3, "tem 1:"

    invoke-virtual {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;Z)V

    .line 493
    const-string v3, "Chequeo de transmisi"

    invoke-virtual {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;Z)V

    .line 494
    iget-object v3, p0, Lcom/wen/fluorescence/printer/PrinterSpanish;->O2:[B

    invoke-direct {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessageSpanish([BZ)V

    .line 495
    const-string v3, "n"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;Z)V

    .line 497
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

    invoke-virtual {p0, v3, v4}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;Z)V

    .line 499
    iget-object v3, p0, Lcom/wen/fluorescence/printer/PrinterSpanish;->I2:[B

    invoke-direct {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessageSpanish([BZ)V

    .line 500
    const-string v3, "tem 2:"

    invoke-virtual {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;Z)V

    .line 501
    const-string v3, "Chequeo de c"

    invoke-virtual {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;Z)V

    .line 502
    iget-object v3, p0, Lcom/wen/fluorescence/printer/PrinterSpanish;->O2:[B

    invoke-direct {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessageSpanish([BZ)V

    .line 503
    const-string v3, "digo de barras"

    invoke-virtual {p0, v3, v4}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;Z)V

    .line 505
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

    invoke-virtual {p0, v3, v4}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;Z)V

    .line 507
    iget-object v3, p0, Lcom/wen/fluorescence/printer/PrinterSpanish;->I2:[B

    invoke-direct {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessageSpanish([BZ)V

    .line 508
    const-string v3, "tem 3:"

    invoke-virtual {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;Z)V

    .line 509
    const-string v3, "Chequeo del sistema "

    invoke-virtual {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;Z)V

    .line 510
    iget-object v3, p0, Lcom/wen/fluorescence/printer/PrinterSpanish;->O2:[B

    invoke-direct {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessageSpanish([BZ)V

    .line 511
    const-string v3, "ptico"

    invoke-virtual {p0, v3, v4}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;Z)V

    .line 513
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

    invoke-virtual {p0, v3, v4}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;Z)V

    .line 515
    iget-object v3, p0, Lcom/wen/fluorescence/printer/PrinterSpanish;->I2:[B

    invoke-direct {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessageSpanish([BZ)V

    .line 516
    const-string v3, "tem 3:"

    invoke-virtual {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;Z)V

    .line 517
    const-string v3, "Chequeo del sistema de circuito el"

    invoke-virtual {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;Z)V

    .line 518
    iget-object v3, p0, Lcom/wen/fluorescence/printer/PrinterSpanish;->E2:[B

    invoke-direct {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessageSpanish([BZ)V

    .line 519
    const-string v3, "ctrico."

    invoke-virtual {p0, v3, v4}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;Z)V

    .line 521
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

    invoke-virtual {p0, v3, v4}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;Z)V

    .line 522
    const-string v3, "-------------------------------"

    invoke-virtual {p0, v3}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;)V

    .line 523
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0c001a

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    .line 524
    invoke-static {v4}, Lcom/wen/fluorescence/util/DateUtils;->getSysemDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 523
    invoke-virtual {p0, v3}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintMessage(Ljava/lang/String;)V

    .line 525
    nop

    .line 525
    .local v2, "i":I
    :goto_5
    const/4 v3, 0x4

    if-ge v2, v3, :cond_5

    .line 526
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/PrinterSpanish;->PrintNewLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 528
    .end local v2    # "i":I
    :cond_5
    monitor-exit p0

    return-void

    .line 476
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
