.class public Lcom/wen/fluorescence/printer/PrinterFrench;
.super Lcom/wen/fluorescence/printer/Printer;
.source "PrinterFrench.java"


# instance fields
.field private E2:[B

.field private E4:[B

.field private Excrement:[B

.field private bank:B

.field private checkDoctor:[B

.field private name:[B

.field private resultFR:[B

.field private sampleNumber:[B

.field private serialNumber:[B

.field private serumPlasma:[B


# direct methods
.method public constructor <init>()V
    .locals 12

    .line 22
    invoke-direct {p0}, Lcom/wen/fluorescence/printer/Printer;-><init>()V

    .line 24
    const/16 v0, 0x20

    iput-byte v0, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->bank:B

    .line 25
    const/16 v0, 0xd

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/16 v3, -0x2b

    aput-byte v3, v1, v2

    const/16 v3, -0x6a

    const/4 v4, 0x1

    aput-byte v3, v1, v4

    const/16 v5, -0x6c

    const/4 v6, 0x2

    aput-byte v5, v1, v6

    iget-byte v6, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->bank:B

    const/4 v7, 0x3

    aput-byte v6, v1, v7

    const/4 v6, 0x4

    const/16 v7, -0x7b

    aput-byte v7, v1, v6

    const/4 v6, 0x5

    const/16 v7, -0x5d

    aput-byte v7, v1, v6

    iget-byte v6, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->bank:B

    const/4 v7, 0x6

    aput-byte v6, v1, v7

    const/4 v6, 0x7

    const/16 v7, -0x69

    aput-byte v7, v1, v6

    const/16 v7, 0x8

    const/16 v8, -0x67

    aput-byte v8, v1, v7

    const/16 v8, -0x40

    const/16 v9, 0x9

    aput-byte v8, v1, v9

    const/16 v10, 0xa

    const/16 v11, -0x6b

    aput-byte v11, v1, v10

    const/16 v10, 0xb

    aput-byte v3, v1, v10

    const/16 v3, 0xc

    aput-byte v5, v1, v3

    iput-object v1, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->name:[B

    .line 26
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->sampleNumber:[B

    .line 28
    new-array v0, v6, [B

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->serialNumber:[B

    .line 29
    new-array v0, v7, [B

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->resultFR:[B

    .line 30
    new-array v0, v9, [B

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->checkDoctor:[B

    .line 33
    new-array v0, v3, [B

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->serumPlasma:[B

    .line 34
    new-array v0, v9, [B

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->Excrement:[B

    .line 36
    new-array v0, v4, [B

    aput-byte v8, v0, v2

    iput-object v0, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->E2:[B

    .line 37
    new-array v0, v4, [B

    const/16 v1, -0x30

    aput-byte v1, v0, v2

    iput-object v0, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->E4:[B

    return-void

    :array_0
    .array-data 1
        -0x2bt
        0x4at
        -0x3bt
        -0x7dt
        -0x78t
        -0x7ft
        -0x6bt
        -0x5dt
        -0x77t
        -0x6dt
        -0x6dt
        -0x6at
        -0x6bt
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x2bt
        0x4at
        -0x1et
        -0x40t
        -0x67t
        -0x77t
        -0x7bt
    .end array-data

    :array_2
    .array-data 1
        -0x27t
        -0x40t
        -0x5et
        -0x5ct
        -0x6dt
        -0x5dt
        -0x7ft
        -0x5dt
    .end array-data

    :array_3
    .array-data 1
        -0x2at
        -0x69t
        -0x40t
        -0x67t
        -0x7ft
        -0x5dt
        -0x7bt
        -0x5ct
        -0x67t
    .end array-data

    nop

    :array_4
    .array-data 1
        -0x1et
        -0x40t
        -0x67t
        -0x5ct
        -0x6ct
        0x61t
        -0x29t
        -0x6dt
        -0x7ft
        -0x5et
        -0x6ct
        -0x7ft
    .end array-data

    :array_5
    .array-data 1
        -0x3bt
        -0x59t
        -0x7dt
        -0x67t
        -0x40t
        -0x6ct
        -0x7bt
        -0x6bt
        -0x5dt
    .end array-data
.end method

.method private PrintHeadersFrench([B)V
    .locals 5
    .param p1, "array"    # [B

    .line 41
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/PrinterFrench;->ClearBufferData()V

    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, "index":I
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->OneBufferData:[B

    add-int/lit8 v2, v0, 0x1

    .line 44
    .local v2, "index":I
    const/16 v3, 0x1b

    aput-byte v3, v1, v0

    .line 45
    .end local v0    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 45
    .local v1, "index":I
    const/16 v4, 0x38

    aput-byte v4, v0, v2

    .line 46
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 46
    .restart local v2    # "index":I
    const/4 v4, 0x3

    aput-byte v4, v0, v1

    .line 48
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 48
    .restart local v1    # "index":I
    aput-byte v3, v0, v2

    .line 49
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 49
    .restart local v2    # "index":I
    const/16 v4, 0x7b

    aput-byte v4, v0, v1

    .line 50
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 50
    .restart local v1    # "index":I
    const/4 v4, 0x0

    aput-byte v4, v0, v2

    .line 53
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 53
    .restart local v2    # "index":I
    aput-byte v3, v0, v1

    .line 54
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 54
    .restart local v1    # "index":I
    const/16 v4, 0x57

    aput-byte v4, v0, v2

    .line 55
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 55
    .restart local v2    # "index":I
    const/4 v4, 0x1

    aput-byte v4, v0, v1

    .line 57
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 57
    .restart local v1    # "index":I
    aput-byte v3, v0, v2

    .line 58
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 58
    .restart local v2    # "index":I
    const/16 v3, 0x61

    aput-byte v3, v0, v1

    .line 59
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 59
    .restart local v1    # "index":I
    aput-byte v4, v0, v2

    .line 60
    .end local v2    # "index":I
    add-int/2addr v1, v4

    .line 61
    add-int/lit8 v0, v1, 0x1

    .line 61
    .restart local v0    # "index":I
    invoke-virtual {p0, v1, p1}, Lcom/wen/fluorescence/printer/PrinterFrench;->OneTmpBuffers(I[B)[B

    .line 62
    .end local v1    # "index":I
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->OneBufferData:[B

    add-int/lit8 v2, v0, 0x1

    .line 62
    .restart local v2    # "index":I
    const/16 v3, 0xd

    array-length v4, p1

    add-int/2addr v0, v4

    .line 62
    .end local v0    # "index":I
    aput-byte v3, v1, v0

    .line 63
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/PrinterFrench;->print()V

    .line 64
    return-void
.end method

.method private PrintMessageFrench([BZ)V
    .locals 6
    .param p1, "printData"    # [B
    .param p2, "isEnter"    # Z

    .line 69
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/PrinterFrench;->ClearBufferData()V

    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "index":I
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->OneBufferData:[B

    add-int/lit8 v2, v0, 0x1

    .line 72
    .local v2, "index":I
    const/16 v3, 0x1b

    aput-byte v3, v1, v0

    .line 73
    .end local v0    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 73
    .local v1, "index":I
    const/16 v4, 0x61

    aput-byte v4, v0, v2

    .line 74
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 74
    .restart local v2    # "index":I
    const/4 v4, 0x0

    aput-byte v4, v0, v1

    .line 76
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 76
    .restart local v1    # "index":I
    aput-byte v3, v0, v2

    .line 77
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 77
    .restart local v2    # "index":I
    const/16 v5, 0x7b

    aput-byte v5, v0, v1

    .line 78
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 78
    .restart local v1    # "index":I
    aput-byte v4, v0, v2

    .line 80
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 80
    .restart local v2    # "index":I
    aput-byte v3, v0, v1

    .line 81
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 81
    .restart local v1    # "index":I
    const/16 v4, 0x57

    aput-byte v4, v0, v2

    .line 82
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 82
    .restart local v2    # "index":I
    const/4 v4, 0x1

    aput-byte v4, v0, v1

    .line 84
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 84
    .restart local v1    # "index":I
    aput-byte v3, v0, v2

    .line 85
    .end local v2    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->OneBufferData:[B

    add-int/lit8 v2, v1, 0x1

    .line 85
    .restart local v2    # "index":I
    const/16 v3, 0x38

    aput-byte v3, v0, v1

    .line 86
    .end local v1    # "index":I
    iget-object v0, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->OneBufferData:[B

    add-int/lit8 v1, v2, 0x1

    .line 86
    .restart local v1    # "index":I
    aput-byte v4, v0, v2

    .line 87
    .end local v2    # "index":I
    add-int/2addr v1, v4

    .line 88
    add-int/lit8 v0, v1, 0x1

    .line 88
    .restart local v0    # "index":I
    invoke-virtual {p0, v1, p1}, Lcom/wen/fluorescence/printer/PrinterFrench;->OneTmpBuffers(I[B)[B

    .line 89
    .end local v1    # "index":I
    if-eqz p2, :cond_0

    .line 90
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->OneBufferData:[B

    add-int/lit8 v2, v0, 0x1

    .line 90
    .restart local v2    # "index":I
    array-length v3, p1

    add-int/2addr v0, v3

    .line 90
    .end local v0    # "index":I
    const/16 v3, 0xd

    aput-byte v3, v1, v0

    .line 92
    move v0, v2

    .line 92
    .end local v2    # "index":I
    .restart local v0    # "index":I
    :cond_0
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/PrinterFrench;->print()V

    .line 93
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

    .line 474
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    monitor-enter p0

    .line 474
    const/4 v0, 0x0

    move v1, v0

    .line 474
    .local v1, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 475
    :try_start_0
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintNewLine()V

    .line 474
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 473
    .end local v1    # "i":I
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "result":Lcom/wen/fluorescence/database/TestResult;
    .end local p3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    :catchall_0
    move-exception p1

    goto/16 :goto_5

    .line 477
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "result":Lcom/wen/fluorescence/database/TestResult;
    .restart local p3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    :cond_0
    const v1, 0x7f0c00b5

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintHeaders(Ljava/lang/String;)V

    .line 478
    const-string v1, "------------------"

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintBoldMessage(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintLeft()V

    .line 481
    iget-object v1, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->sampleNumber:[B

    invoke-direct {p0, v1, v0}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessageFrench([BZ)V

    .line 482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

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

    invoke-virtual {p0, v1, v2}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0154

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 485
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v3, 0x7f020000

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 486
    .local v1, "array":[Ljava/lang/String;
    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getSimpleType()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 487
    iget-object v3, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->serumPlasma:[B

    invoke-direct {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessageFrench([BZ)V

    goto :goto_1

    .line 488
    :cond_1
    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getSimpleType()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 489
    iget-object v3, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->Excrement:[B

    invoke-direct {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessageFrench([BZ)V

    goto :goto_1

    .line 491
    :cond_2
    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getSimpleType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 494
    :goto_1
    iget-object v3, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->name:[B

    invoke-direct {p0, v3, v0}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessageFrench([BZ)V

    .line 495
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "-"

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getName()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;)V

    .line 497
    const-string v3, "Carte d\'identit"

    invoke-virtual {p0, v3, v0}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 498
    iget-object v3, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->E2:[B

    invoke-direct {p0, v3, v0}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessageFrench([BZ)V

    .line 499
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getPatientNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 501
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0c011f

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 502
    const-string v3, "R"

    invoke-virtual {p0, v3, v0}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 503
    iget-object v3, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->E2:[B

    invoke-direct {p0, v3, v0}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessageFrench([BZ)V

    .line 504
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sultat du test:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 505
    const-string v3, "Verdict de d"

    invoke-virtual {p0, v3, v0}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 506
    iget-object v3, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->E2:[B

    invoke-direct {p0, v3, v0}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessageFrench([BZ)V

    .line 507
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tection:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeVerdict()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 509
    move v3, v2

    .line 509
    .local v3, "i":I
    :goto_3
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 510
    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 511
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v3, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v2}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 512
    const-string v5, "R"

    invoke-virtual {p0, v5, v0}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 513
    iget-object v5, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->E2:[B

    invoke-direct {p0, v5, v0}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessageFrench([BZ)V

    .line 514
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sultat du test"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v3, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 514
    invoke-virtual {p0, v5, v2}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 517
    const-string v5, "Verdict de d"

    invoke-virtual {p0, v5, v0}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 518
    iget-object v5, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->E2:[B

    invoke-direct {p0, v5, v0}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessageFrench([BZ)V

    .line 519
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tection"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v3, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeVerdict()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 519
    invoke-virtual {p0, v5, v2}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 509
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 524
    .end local v3    # "i":I
    :cond_5
    const-string v3, "------"

    invoke-virtual {p0, v3}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintBoldMessage(Ljava/lang/String;)V

    .line 525
    invoke-static {p1}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v3

    const-string v4, "OrganizationFragment"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 526
    .local v3, "organization":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0c0098

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v2}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 527
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0c002a

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getTestTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v2}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 528
    const-string v4, "Op"

    invoke-virtual {p0, v4, v0}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 529
    iget-object v4, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->E2:[B

    invoke-direct {p0, v4, v0}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessageFrench([BZ)V

    .line 530
    const-string v4, "rateur (signature):"

    invoke-virtual {p0, v4, v2}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 531
    nop

    .line 531
    .local v0, "i":I
    :goto_4
    const/4 v2, 0x5

    if-ge v0, v2, :cond_6

    .line 532
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintNewLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 534
    .end local v0    # "i":I
    :cond_6
    monitor-exit p0

    return-void

    .line 473
    .end local v1    # "array":[Ljava/lang/String;
    .end local v3    # "organization":Ljava/lang/String;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "result":Lcom/wen/fluorescence/database/TestResult;
    .end local p3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    :goto_5
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized printe(Landroid/content/Context;Lcom/wen/fluorescence/database/DBManager;Lcom/wen/fluorescence/database/TestResult;Ljava/util/List;)V
    .locals 22
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

    .line 105
    .local p4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    monitor-enter p0

    .line 105
    const/4 v5, 0x0

    move v6, v5

    .line 105
    .local v6, "i":I
    :goto_0
    const/4 v7, 0x2

    if-ge v6, v7, :cond_0

    .line 106
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintNewLine()V

    .line 105
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 104
    .end local v6    # "i":I
    .end local p1    # "mContext":Landroid/content/Context;
    .end local p2    # "dbm":Lcom/wen/fluorescence/database/DBManager;
    .end local p3    # "result":Lcom/wen/fluorescence/database/TestResult;
    .end local p4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_17

    .line 108
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

    .line 109
    .local v6, "organization":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 110
    invoke-virtual {v1, v6}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintOrganization(Ljava/lang/String;)V

    .line 112
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintNewLine()V

    .line 114
    const v8, 0x7f0c001b

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintHeaders(Ljava/lang/String;)V

    .line 115
    iget-object v8, v1, Lcom/wen/fluorescence/printer/PrinterFrench;->name:[B

    invoke-direct {v1, v8, v5}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessageFrench([BZ)V

    .line 116
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-virtual {v1, v8}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;)V

    .line 117
    const v8, 0x7f0c00b2

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8, v5}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 118
    const-string v8, ""

    .line 119
    .local v8, "strSex":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSex()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    goto :goto_2

    .line 127
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

    .line 124
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

    .line 125
    goto :goto_2

    .line 121
    :pswitch_2
    const-string v9, "\uff1a-         "

    move-object v8, v9

    .line 122
    nop

    .line 130
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

    .line 131
    invoke-virtual {v1, v8}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;)V

    .line 133
    iget-object v9, v1, Lcom/wen/fluorescence/printer/PrinterFrench;->sampleNumber:[B

    invoke-direct {v1, v9, v5}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessageFrench([BZ)V

    .line 134
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSampleNumber()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v1, v9, v10}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 136
    iget-object v9, v1, Lcom/wen/fluorescence/printer/PrinterFrench;->serialNumber:[B

    invoke-direct {v1, v9, v5}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessageFrench([BZ)V

    .line 137
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ":"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9, v10}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 139
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

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9, v5}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 140
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/high16 v11, 0x7f020000

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 141
    .local v9, "array":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSimpleType()Ljava/lang/String;

    move-result-object v11

    aget-object v12, v9, v5

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 142
    iget-object v11, v1, Lcom/wen/fluorescence/printer/PrinterFrench;->serumPlasma:[B

    invoke-direct {v1, v11, v10}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessageFrench([BZ)V

    goto :goto_4

    .line 143
    :cond_4
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSimpleType()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    aget-object v12, v9, v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 144
    iget-object v11, v1, Lcom/wen/fluorescence/printer/PrinterFrench;->Excrement:[B

    invoke-direct {v1, v11, v10}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessageFrench([BZ)V

    goto :goto_4

    .line 146
    :cond_5
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSimpleType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11, v10}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 150
    :goto_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0c002a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getTestTime()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;)V

    .line 151
    const-string v11, "-------------------------------"

    invoke-virtual {v1, v11}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;)V

    .line 154
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/wen/fluorescence/database/DBManager;->queryRangeMin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 155
    .local v11, "min":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Lcom/wen/fluorescence/database/DBManager;->queryRangeMax(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 157
    .local v12, "max":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 158
    .local v13, "range":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v7, 0x7f0c00d2

    invoke-virtual {v15, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14, v10}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 159
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeFlag()I

    move-result v14

    if-nez v14, :cond_8

    .line 160
    iget-object v14, v1, Lcom/wen/fluorescence/printer/PrinterFrench;->resultFR:[B

    invoke-direct {v1, v14, v5}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessageFrench([BZ)V

    .line 161
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 162
    .local v5, "printResult":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getiValid()I

    move-result v14

    if-nez v14, :cond_6

    .line 163
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    .line 165
    :cond_6
    invoke-virtual {v1, v5}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;)V

    .line 167
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 168
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v10

    const-string v14, "  "

    invoke-virtual {v10, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 169
    .local v10, "strArray":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReResult()Ljava/lang/String;

    move-result-object v14

    const-string v15, "  "

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 170
    .local v14, "resultArray":[Ljava/lang/String;
    const/4 v15, 0x1

    .line 170
    .local v15, "i":I
    :goto_5
    array-length v7, v10

    if-ge v15, v7, :cond_7

    .line 171
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 171
    .end local v5    # "printResult":Ljava/lang/String;
    .local v16, "printResult":Ljava/lang/String;
    move-object/from16 v17, v6

    const v6, 0x7f0c00d2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 171
    .end local v6    # "organization":Ljava/lang/String;
    .local v17, "organization":Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  : "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v10, v15

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;)V

    .line 172
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0149

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v14, v15

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;)V

    .line 170
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    const v7, 0x7f0c00d2

    goto :goto_5

    .line 175
    .end local v10    # "strArray":[Ljava/lang/String;
    .end local v14    # "resultArray":[Ljava/lang/String;
    .end local v15    # "i":I
    .end local v16    # "printResult":Ljava/lang/String;
    .end local v17    # "organization":Ljava/lang/String;
    .restart local v6    # "organization":Ljava/lang/String;
    :cond_7
    move-object/from16 v17, v6

    .line 175
    .end local v6    # "organization":Ljava/lang/String;
    .restart local v17    # "organization":Ljava/lang/String;
    goto/16 :goto_9

    .line 176
    .end local v17    # "organization":Ljava/lang/String;
    .restart local v6    # "organization":Ljava/lang/String;
    :cond_8
    move-object/from16 v17, v6

    .line 176
    .end local v6    # "organization":Ljava/lang/String;
    .restart local v17    # "organization":Ljava/lang/String;
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_c

    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v5

    const/4 v6, 0x7

    if-lt v5, v6, :cond_9

    goto/16 :goto_6

    .line 180
    :cond_9
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getIsShowResult()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    .line 181
    iget-object v5, v1, Lcom/wen/fluorescence/printer/PrinterFrench;->resultFR:[B

    const/4 v6, 0x0

    invoke-direct {v1, v5, v6}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessageFrench([BZ)V

    .line 182
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

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

    .line 183
    .restart local v5    # "printResult":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getiValid()I

    move-result v6

    if-nez v6, :cond_a

    .line 184
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

    .line 186
    :cond_a
    invoke-virtual {v1, v5}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;)V

    .line 188
    .end local v5    # "printResult":Ljava/lang/String;
    :cond_b
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getIsShowConclusion()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_d

    .line 189
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

    invoke-virtual {v1, v5}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;)V

    goto :goto_7

    .line 177
    :cond_c
    :goto_6
    iget-object v5, v1, Lcom/wen/fluorescence/printer/PrinterFrench;->resultFR:[B

    const/4 v6, 0x0

    invoke-direct {v1, v5, v6}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessageFrench([BZ)V

    .line 178
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

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

    invoke-virtual {v1, v5}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;)V

    .line 194
    :cond_d
    :goto_7
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 195
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 196
    .local v5, "strArray":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReResult()Ljava/lang/String;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 197
    .local v6, "resultArray":[Ljava/lang/String;
    const/4 v7, 0x1

    .line 197
    .local v7, "j":I
    :goto_8
    array-length v10, v5

    if-ge v7, v10, :cond_e

    .line 198
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c00d2

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "  : "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v5, v7

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;)V

    .line 199
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c0149

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "  : "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v6, v7

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;)V

    .line 197
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 203
    .end local v5    # "strArray":[Ljava/lang/String;
    .end local v6    # "resultArray":[Ljava/lang/String;
    .end local v7    # "j":I
    :cond_e
    :goto_9
    const/4 v5, 0x1

    .line 203
    .local v5, "i":I
    :goto_a
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_18

    .line 204
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 205
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0c00d2

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    add-int v10, v7, v5

    .line 206
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

    .line 205
    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 207
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeFlag()I

    move-result v6

    if-nez v6, :cond_10

    .line 208
    iget-object v6, v1, Lcom/wen/fluorescence/printer/PrinterFrench;->resultFR:[B

    const/4 v7, 0x0

    invoke-direct {v1, v6, v7}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessageFrench([BZ)V

    .line 209
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

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

    .line 210
    .local v6, "printResult":Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getiValid()I

    move-result v7

    if-nez v7, :cond_f

    .line 211
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

    .line 213
    :cond_f
    invoke-virtual {v1, v6}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;)V

    .line 214
    .end local v6    # "printResult":Ljava/lang/String;
    goto/16 :goto_c

    .line 215
    :cond_10
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_14

    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v6

    const/4 v7, 0x7

    if-lt v6, v7, :cond_11

    goto/16 :goto_b

    .line 219
    :cond_11
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getIsShowResult()I

    move-result v6

    const/4 v10, 0x1

    if-ne v6, v10, :cond_13

    .line 220
    iget-object v6, v1, Lcom/wen/fluorescence/printer/PrinterFrench;->resultFR:[B

    const/4 v10, 0x0

    invoke-direct {v1, v6, v10}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessageFrench([BZ)V

    .line 221
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

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

    .line 222
    .restart local v6    # "printResult":Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v10}, Lcom/wen/fluorescence/database/TestResult;->getiValid()I

    move-result v10

    if-nez v10, :cond_12

    .line 223
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v14}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    .line 225
    :cond_12
    invoke-virtual {v1, v6}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;)V

    .line 227
    .end local v6    # "printResult":Ljava/lang/String;
    :cond_13
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getIsShowConclusion()I

    move-result v6

    const/4 v10, 0x1

    if-ne v6, v10, :cond_16

    .line 228
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v14, 0x7f0c01c6

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

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v10}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeVerdict()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;)V

    goto :goto_d

    .line 216
    :cond_14
    const/4 v7, 0x7

    :goto_b
    const v14, 0x7f0c01c6

    iget-object v6, v1, Lcom/wen/fluorescence/printer/PrinterFrench;->resultFR:[B

    const/4 v10, 0x0

    invoke-direct {v1, v6, v10}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessageFrench([BZ)V

    .line 217
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

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

    invoke-virtual {v1, v6}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;)V

    goto :goto_d

    .line 235
    :cond_15
    :goto_c
    const/4 v7, 0x7

    :cond_16
    const v14, 0x7f0c01c6

    :goto_d
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_17

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

    if-nez v6, :cond_17

    .line 236
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v6

    const-string v10, "  "

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 237
    .local v6, "strArray":[Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v10}, Lcom/wen/fluorescence/database/TestResult;->getReResult()Ljava/lang/String;

    move-result-object v10

    const-string v15, "  "

    invoke-virtual {v10, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 238
    .local v10, "resultArray":[Ljava/lang/String;
    const/4 v15, 0x1

    .line 238
    .local v15, "j":I
    :goto_e
    array-length v7, v6

    if-ge v15, v7, :cond_17

    .line 239
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    move-object/from16 v18, v8

    const v8, 0x7f0c00d2

    invoke-virtual {v14, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 239
    .end local v8    # "strSex":Ljava/lang/String;
    .local v18, "strSex":Ljava/lang/String;
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "  : "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v6, v15

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;)V

    .line 240
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v8, 0x7f0c0149

    invoke-virtual {v14, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "  : "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v10, v15

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;)V

    .line 238
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v8, v18

    const/4 v7, 0x7

    const v14, 0x7f0c01c6

    goto :goto_e

    .line 203
    .end local v6    # "strArray":[Ljava/lang/String;
    .end local v10    # "resultArray":[Ljava/lang/String;
    .end local v15    # "j":I
    .end local v18    # "strSex":Ljava/lang/String;
    .restart local v8    # "strSex":Ljava/lang/String;
    :cond_17
    move-object/from16 v18, v8

    const v8, 0x7f0c0149

    .line 203
    .end local v8    # "strSex":Ljava/lang/String;
    .restart local v18    # "strSex":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v8, v18

    goto/16 :goto_a

    .line 300
    .end local v5    # "i":I
    .end local v18    # "strSex":Ljava/lang/String;
    .restart local v8    # "strSex":Ljava/lang/String;
    :cond_18
    move-object/from16 v18, v8

    .line 300
    .end local v8    # "strSex":Ljava/lang/String;
    .restart local v18    # "strSex":Ljava/lang/String;
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v5

    const v6, 0x7f0c0142

    const/4 v7, 0x2

    if-le v5, v7, :cond_1e

    .line 301
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeFlag()I

    move-result v5

    if-nez v5, :cond_24

    .line 302
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v8}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;)V

    .line 304
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1a

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 305
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v5

    const-string v7, "  "

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 306
    .local v5, "strArray":[Ljava/lang/String;
    const/4 v7, 0x1

    .line 306
    .restart local v7    # "j":I
    :goto_f
    array-length v8, v5

    if-ge v7, v8, :cond_1a

    .line 307
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v10}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v8

    aget-object v10, v5, v7

    invoke-static {v2, v11, v12, v8, v10}, Lcom/wen/fluorescence/util/PublicFuction;->getUnitRange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 308
    .local v8, "unitRange":Ljava/lang/String;
    const-string v10, "F200"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u591a\u5355\u4f4d\u8303\u56f4\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    if-eqz v8, :cond_19

    const-string v10, ""

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_19

    .line 310
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v14, v5, v7

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ":"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;)V

    .line 306
    .end local v8    # "unitRange":Ljava/lang/String;
    :cond_19
    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    .line 315
    .end local v5    # "strArray":[Ljava/lang/String;
    .end local v7    # "j":I
    :cond_1a
    const/4 v5, 0x1

    .line 315
    .local v5, "j":I
    :goto_10
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_24

    .line 316
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/wen/fluorescence/database/DBManager;->queryRangeMin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 317
    .local v7, "min2":Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v8}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/wen/fluorescence/database/DBManager;->queryRangeMax(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 318
    .local v8, "max2":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v14}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 319
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " - "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 321
    .local v10, "range2":Ljava/lang/String;
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

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-virtual {v1, v14}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;)V

    .line 325
    .end local v10    # "range2":Ljava/lang/String;
    :cond_1b
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v10}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1d

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v10}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v14}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1d

    .line 326
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v10}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v10

    const-string v14, "  "

    invoke-virtual {v10, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 327
    .local v10, "strArray":[Ljava/lang/String;
    const/4 v14, 0x1

    .line 327
    .local v14, "k":I
    :goto_11
    array-length v15, v10

    if-ge v14, v15, :cond_1d

    .line 328
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v15}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v15

    aget-object v6, v10, v14

    invoke-static {v2, v7, v8, v15, v6}, Lcom/wen/fluorescence/util/PublicFuction;->getUnitRange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 329
    .local v6, "unitRange":Ljava/lang/String;
    const-string v15, "F200"

    move-object/from16 v19, v7

    new-instance v7, Ljava/lang/StringBuilder;

    .line 329
    .end local v7    # "min2":Ljava/lang/String;
    .local v19, "min2":Ljava/lang/String;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v8

    const-string v8, "\u591a\u5355\u4f4d\u8303\u56f4\uff1a"

    .line 329
    .end local v8    # "max2":Ljava/lang/String;
    .local v20, "max2":Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    if-eqz v6, :cond_1c

    const-string v7, ""

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1c

    .line 331
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v10, v14

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

    invoke-virtual {v1, v7}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;)V

    .line 327
    .end local v6    # "unitRange":Ljava/lang/String;
    :cond_1c
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    const v6, 0x7f0c0142

    goto :goto_11

    .line 315
    .end local v10    # "strArray":[Ljava/lang/String;
    .end local v14    # "k":I
    .end local v19    # "min2":Ljava/lang/String;
    .end local v20    # "max2":Ljava/lang/String;
    :cond_1d
    add-int/lit8 v5, v5, 0x1

    const v6, 0x7f0c0142

    goto/16 :goto_10

    .line 338
    .end local v5    # "j":I
    :cond_1e
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeFlag()I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_24

    .line 339
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

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;)V

    .line 341
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_20

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_20

    .line 342
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 343
    .local v5, "strArray":[Ljava/lang/String;
    const/4 v6, 0x1

    .line 343
    .local v6, "j":I
    :goto_12
    array-length v7, v5

    if-ge v6, v7, :cond_20

    .line 344
    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v8}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v7

    aget-object v8, v5, v6

    invoke-static {v2, v11, v12, v7, v8}, Lcom/wen/fluorescence/util/PublicFuction;->getUnitRange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 345
    .local v7, "unitRange":Ljava/lang/String;
    const-string v8, "F200"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u591a\u5355\u4f4d\u8303\u56f4\uff1a"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    if-eqz v7, :cond_1f

    const-string v8, ""

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1f

    .line 347
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v5, v6

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v14, 0x7f0c0142

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;)V

    .line 343
    .end local v7    # "unitRange":Ljava/lang/String;
    :cond_1f
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 352
    .end local v5    # "strArray":[Ljava/lang/String;
    .end local v6    # "j":I
    :cond_20
    const/4 v5, 0x1

    .line 352
    .local v5, "j":I
    :goto_13
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_24

    .line 353
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/wen/fluorescence/database/DBManager;->queryRangeMin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 354
    .local v6, "min2":Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/wen/fluorescence/database/DBManager;->queryRangeMax(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 355
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

    if-eqz v8, :cond_21

    .line 356
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " - "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 358
    .local v8, "range2":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v14}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c0142

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ":"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v14}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;)V

    .line 362
    .end local v8    # "range2":Ljava/lang/String;
    :cond_21
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v8}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_23

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

    if-nez v8, :cond_23

    .line 363
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v8}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v8

    const-string v10, "  "

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 364
    .local v8, "strArray":[Ljava/lang/String;
    const/4 v10, 0x1

    .line 364
    .local v10, "k":I
    :goto_14
    array-length v14, v8

    if-ge v10, v14, :cond_23

    .line 365
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v14}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v14

    aget-object v15, v8, v10

    invoke-static {v2, v6, v7, v14, v15}, Lcom/wen/fluorescence/util/PublicFuction;->getUnitRange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 366
    .local v14, "unitRange":Ljava/lang/String;
    const-string v15, "F200"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u591a\u5355\u4f4d\u8303\u56f4\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    if-eqz v14, :cond_22

    const-string v3, ""

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 368
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v8, v10

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v15, 0x7f0c0142

    invoke-virtual {v4, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;)V

    .line 368
    .end local v14    # "unitRange":Ljava/lang/String;
    goto :goto_15

    .line 364
    :cond_22
    const v15, 0x7f0c0142

    :goto_15
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    goto :goto_14

    .line 352
    .end local v6    # "min2":Ljava/lang/String;
    .end local v7    # "max2":Ljava/lang/String;
    .end local v8    # "strArray":[Ljava/lang/String;
    .end local v10    # "k":I
    :cond_23
    const v15, 0x7f0c0142

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    goto/16 :goto_13

    .line 378
    .end local v5    # "j":I
    :cond_24
    const-string v3, "-------------------------------"

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;)V

    .line 379
    iget-object v3, v1, Lcom/wen/fluorescence/printer/PrinterFrench;->checkDoctor:[B

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessageFrench([BZ)V

    .line 380
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getInspectingDoctor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;)V

    .line 382
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c014b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReviewer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;)V

    .line 386
    const-string v3, "-------------------------------"

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;)V

    .line 390
    const-string v3, "Notice: Le r"

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 391
    iget-object v3, v1, Lcom/wen/fluorescence/printer/PrinterFrench;->E2:[B

    invoke-direct {v1, v3, v6}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessageFrench([BZ)V

    .line 392
    const-string v3, "sultat est uniquement fiable sur ce sp"

    invoke-virtual {v1, v3, v6}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 393
    iget-object v3, v1, Lcom/wen/fluorescence/printer/PrinterFrench;->E2:[B

    invoke-direct {v1, v3, v6}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessageFrench([BZ)V

    .line 394
    const-string v3, "cimen!"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 395
    nop

    .line 395
    .local v6, "i":I
    :goto_16
    move v3, v6

    .line 395
    .end local v6    # "i":I
    .local v3, "i":I
    const/4 v4, 0x6

    if-ge v3, v4, :cond_25

    .line 396
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintNewLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    add-int/lit8 v6, v3, 0x1

    .line 395
    .end local v3    # "i":I
    .restart local v6    # "i":I
    goto :goto_16

    .line 398
    .end local v6    # "i":I
    :cond_25
    monitor-exit p0

    return-void

    .line 104
    .end local v9    # "array":[Ljava/lang/String;
    .end local v11    # "min":Ljava/lang/String;
    .end local v12    # "max":Ljava/lang/String;
    .end local v13    # "range":Ljava/lang/String;
    .end local v17    # "organization":Ljava/lang/String;
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
    .locals 8
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "M0"    # Z
    .param p3, "M1"    # Z
    .param p4, "M2"    # Z
    .param p5, "M3"    # Z

    monitor-enter p0

    .line 412
    :try_start_0
    const-string v0, ""

    .line 412
    .local v0, "sTitle":Ljava/lang/String;
    const-string v1, ""

    .line 412
    .local v1, "normal":Ljava/lang/String;
    const-string v2, ""

    .line 413
    .local v2, "abnormal":Ljava/lang/String;
    const/4 v3, 0x0

    move v4, v3

    .line 413
    .local v4, "i":I
    :goto_0
    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 414
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintNewLine()V

    .line 413
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 416
    .end local v4    # "i":I
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c014e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 417
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0104

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 418
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0056

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 419
    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintHeaders(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintNewLine()V

    .line 421
    const-string v4, "Date d\'Inspection Qualit"

    invoke-virtual {p0, v4, v3}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 422
    iget-object v4, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->E2:[B

    invoke-direct {p0, v4, v3}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessageFrench([BZ)V

    .line 423
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "yyyy-MM-dd"

    invoke-static {v5}, Lcom/wen/fluorescence/util/DateUtils;->getSysemDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;)V

    .line 424
    const-string v4, "-------------------------------"

    invoke-virtual {p0, v4}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;)V

    .line 426
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0c00d2

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " 1:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 427
    const-string v4, "Syt"

    invoke-virtual {p0, v4, v3}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 428
    iget-object v4, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->E4:[B

    invoke-direct {p0, v4, v3}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessageFrench([BZ)V

    .line 429
    const-string v4, "me de Transmission"

    const/4 v6, 0x1

    invoke-virtual {p0, v4, v6}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 431
    const-string v4, "R"

    invoke-virtual {p0, v4, v3}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 432
    iget-object v4, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->E2:[B

    invoke-direct {p0, v4, v3}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessageFrench([BZ)V

    .line 433
    const-string v4, "sultat"

    invoke-virtual {p0, v4, v3}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 434
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " 1:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_1

    move-object v7, v1

    goto :goto_1

    :cond_1
    move-object v7, v2

    :goto_1
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v6}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 436
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " 2:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 437
    const-string v4, "Syst"

    invoke-virtual {p0, v4, v3}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 438
    iget-object v4, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->E4:[B

    invoke-direct {p0, v4, v3}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessageFrench([BZ)V

    .line 439
    const-string v4, "me de Code-barres"

    invoke-virtual {p0, v4, v6}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 441
    const-string v4, "R"

    invoke-virtual {p0, v4, v3}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 442
    iget-object v4, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->E2:[B

    invoke-direct {p0, v4, v3}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessageFrench([BZ)V

    .line 443
    const-string v4, "sultat"

    invoke-virtual {p0, v4, v3}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 444
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " 2:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    move-object v7, v1

    goto :goto_2

    :cond_2
    move-object v7, v2

    :goto_2
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v6}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 446
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " 3:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 447
    const-string v4, "Syt"

    invoke-virtual {p0, v4, v3}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 448
    iget-object v4, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->E4:[B

    invoke-direct {p0, v4, v3}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessageFrench([BZ)V

    .line 449
    const-string v4, "me Optique"

    invoke-virtual {p0, v4, v6}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 451
    const-string v4, "R"

    invoke-virtual {p0, v4, v3}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 452
    iget-object v4, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->E2:[B

    invoke-direct {p0, v4, v3}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessageFrench([BZ)V

    .line 453
    const-string v4, "sultat"

    invoke-virtual {p0, v4, v3}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 454
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " 3:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_3

    move-object v7, v1

    goto :goto_3

    :cond_3
    move-object v7, v2

    :goto_3
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v6}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 456
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " 4:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 457
    const-string v4, "Syt"

    invoke-virtual {p0, v4, v3}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 458
    iget-object v4, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->E4:[B

    invoke-direct {p0, v4, v3}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessageFrench([BZ)V

    .line 459
    const-string v4, "me de Circuit Electrique"

    invoke-virtual {p0, v4, v6}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 461
    const-string v4, "R"

    invoke-virtual {p0, v4, v3}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 462
    iget-object v4, p0, Lcom/wen/fluorescence/printer/PrinterFrench;->E2:[B

    invoke-direct {p0, v4, v3}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessageFrench([BZ)V

    .line 463
    const-string v4, "sultat"

    invoke-virtual {p0, v4, v3}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 464
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " 4:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_4

    move-object v5, v1

    goto :goto_4

    :cond_4
    move-object v5, v2

    :goto_4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v6}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;Z)V

    .line 465
    const-string v4, "-------------------------------"

    invoke-virtual {p0, v4}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;)V

    .line 466
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0c001a

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    .line 467
    invoke-static {v5}, Lcom/wen/fluorescence/util/DateUtils;->getSysemDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 466
    invoke-virtual {p0, v4}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintMessage(Ljava/lang/String;)V

    .line 468
    nop

    .line 468
    .local v3, "i":I
    :goto_5
    const/4 v4, 0x4

    if-ge v3, v4, :cond_5

    .line 469
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/PrinterFrench;->PrintNewLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 471
    .end local v3    # "i":I
    :cond_5
    monitor-exit p0

    return-void

    .line 411
    .end local v0    # "sTitle":Ljava/lang/String;
    .end local v1    # "normal":Ljava/lang/String;
    .end local v2    # "abnormal":Ljava/lang/String;
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
