.class public Lcom/wen/fluorescence/lis/UdpDataGram;
.super Ljava/lang/Object;
.source "UdpDataGram.java"


# instance fields
.field private BUF_SIZE:I

.field private PRECODE:[B

.field private m_txbuf:[B

.field private splite:C


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/16 v0, 0x400

    iput v0, p0, Lcom/wen/fluorescence/lis/UdpDataGram;->BUF_SIZE:I

    .line 15
    iget v0, p0, Lcom/wen/fluorescence/lis/UdpDataGram;->BUF_SIZE:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    .line 16
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/wen/fluorescence/lis/UdpDataGram;->PRECODE:[B

    .line 18
    const/16 v0, 0x23

    iput-char v0, p0, Lcom/wen/fluorescence/lis/UdpDataGram;->splite:C

    return-void

    :array_0
    .array-data 1
        0x57t
        0x50t
        0x45t
        0x3at
    .end array-data
.end method


# virtual methods
.method public encode(Landroid/content/Context;Lcom/wen/fluorescence/database/TestResult;)[B
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/wen/fluorescence/database/TestResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 23
    const/4 v1, 0x0

    .line 23
    .local v1, "offset":I
    const/4 v2, 0x0

    .line 24
    .local v2, "len":I
    iget-object v3, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    iget-object v4, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->PRECODE:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    aput-byte v4, v3, v5

    .line 25
    iget-object v3, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    iget-object v4, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->PRECODE:[B

    const/4 v6, 0x1

    aget-byte v4, v4, v6

    aput-byte v4, v3, v6

    .line 26
    iget-object v3, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    iget-object v4, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->PRECODE:[B

    const/4 v7, 0x2

    aget-byte v4, v4, v7

    aput-byte v4, v3, v7

    .line 27
    iget-object v3, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    iget-object v4, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->PRECODE:[B

    const/4 v8, 0x3

    aget-byte v4, v4, v8

    aput-byte v4, v3, v8

    .line 28
    const/16 v1, 0x10

    .line 29
    const/16 v2, 0x8

    .line 31
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getSampleNumber()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 32
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getSampleNumber()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GBK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v4, v3

    move v9, v1

    move v1, v5

    .line 32
    .end local v1    # "offset":I
    .local v9, "offset":I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-byte v10, v3, v1

    .line 33
    .local v10, "b":B
    iget-object v11, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    add-int/lit8 v12, v9, 0x1

    .line 33
    .local v12, "offset":I
    aput-byte v10, v11, v9

    .line 32
    .end local v9    # "offset":I
    .end local v10    # "b":B
    add-int/lit8 v1, v1, 0x1

    move v9, v12

    goto :goto_0

    .line 36
    .end local v12    # "offset":I
    .restart local v9    # "offset":I
    :cond_0
    move v1, v9

    .line 36
    .end local v9    # "offset":I
    .restart local v1    # "offset":I
    :cond_1
    iget-object v3, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    add-int/lit8 v4, v1, 0x1

    .line 36
    .local v4, "offset":I
    iget-char v9, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->splite:C

    int-to-byte v9, v9

    aput-byte v9, v3, v1

    .line 38
    .end local v1    # "offset":I
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GBK"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v3, v1

    move v9, v4

    move v4, v5

    .line 38
    .end local v4    # "offset":I
    .restart local v9    # "offset":I
    :goto_1
    if-ge v4, v3, :cond_2

    aget-byte v10, v1, v4

    .line 39
    .restart local v10    # "b":B
    iget-object v11, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    add-int/lit8 v12, v9, 0x1

    .line 39
    .restart local v12    # "offset":I
    aput-byte v10, v11, v9

    .line 38
    .end local v9    # "offset":I
    .end local v10    # "b":B
    add-int/lit8 v4, v4, 0x1

    move v9, v12

    goto :goto_1

    .line 41
    .end local v12    # "offset":I
    .restart local v9    # "offset":I
    :cond_2
    iget-object v1, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    add-int/lit8 v3, v9, 0x1

    .line 41
    .local v3, "offset":I
    iget-char v4, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->splite:C

    int-to-byte v4, v4

    aput-byte v4, v1, v9

    .line 43
    .end local v9    # "offset":I
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getSimpleType()Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 44
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getSimpleType()Ljava/lang/String;

    move-result-object v1

    const-string v4, "GBK"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v4, v1

    move v9, v3

    move v3, v5

    .line 44
    .end local v3    # "offset":I
    .restart local v9    # "offset":I
    :goto_2
    if-ge v3, v4, :cond_3

    aget-byte v10, v1, v3

    .line 45
    .restart local v10    # "b":B
    iget-object v11, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    add-int/lit8 v12, v9, 0x1

    .line 45
    .restart local v12    # "offset":I
    aput-byte v10, v11, v9

    .line 44
    .end local v9    # "offset":I
    .end local v10    # "b":B
    add-int/lit8 v3, v3, 0x1

    move v9, v12

    goto :goto_2

    .line 48
    .end local v12    # "offset":I
    .restart local v9    # "offset":I
    :cond_3
    move v3, v9

    .line 48
    .end local v9    # "offset":I
    .restart local v3    # "offset":I
    :cond_4
    iget-object v1, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    add-int/lit8 v4, v3, 0x1

    .line 48
    .restart local v4    # "offset":I
    iget-char v9, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->splite:C

    int-to-byte v9, v9

    aput-byte v9, v1, v3

    .line 50
    .end local v3    # "offset":I
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 51
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GBK"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v3, v1

    move v9, v4

    move v4, v5

    .line 51
    .end local v4    # "offset":I
    .restart local v9    # "offset":I
    :goto_3
    if-ge v4, v3, :cond_5

    aget-byte v10, v1, v4

    .line 52
    .restart local v10    # "b":B
    iget-object v11, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    add-int/lit8 v12, v9, 0x1

    .line 52
    .restart local v12    # "offset":I
    aput-byte v10, v11, v9

    .line 51
    .end local v9    # "offset":I
    .end local v10    # "b":B
    add-int/lit8 v4, v4, 0x1

    move v9, v12

    goto :goto_3

    .line 55
    .end local v12    # "offset":I
    .restart local v9    # "offset":I
    :cond_5
    move v4, v9

    .line 55
    .end local v9    # "offset":I
    .restart local v4    # "offset":I
    :cond_6
    iget-object v1, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    add-int/lit8 v3, v4, 0x1

    .line 55
    .restart local v3    # "offset":I
    iget-char v9, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->splite:C

    int-to-byte v9, v9

    aput-byte v9, v1, v4

    .line 56
    .end local v4    # "offset":I
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getSex()I

    move-result v1

    if-eqz v1, :cond_7

    .line 66
    iget-object v1, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    add-int/lit8 v4, v3, 0x1

    .line 66
    .restart local v4    # "offset":I
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getSex()I

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v1, v3

    .line 68
    .end local v3    # "offset":I
    move v3, v4

    .line 68
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    :cond_7
    iget-object v1, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    add-int/lit8 v4, v3, 0x1

    .line 68
    .restart local v4    # "offset":I
    iget-char v9, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->splite:C

    int-to-byte v9, v9

    aput-byte v9, v1, v3

    .line 70
    .end local v3    # "offset":I
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getAge()I

    move-result v1

    if-eqz v1, :cond_9

    .line 71
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getAge()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "GBK"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v3, v1

    move v9, v4

    move v4, v5

    .line 71
    .end local v4    # "offset":I
    .restart local v9    # "offset":I
    :goto_4
    if-ge v4, v3, :cond_8

    aget-byte v10, v1, v4

    .line 72
    .restart local v10    # "b":B
    iget-object v11, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    add-int/lit8 v12, v9, 0x1

    .line 72
    .restart local v12    # "offset":I
    aput-byte v10, v11, v9

    .line 71
    .end local v9    # "offset":I
    .end local v10    # "b":B
    add-int/lit8 v4, v4, 0x1

    move v9, v12

    goto :goto_4

    .line 75
    .end local v12    # "offset":I
    .restart local v9    # "offset":I
    :cond_8
    move v4, v9

    .line 75
    .end local v9    # "offset":I
    .restart local v4    # "offset":I
    :cond_9
    iget-object v1, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    add-int/lit8 v3, v4, 0x1

    .line 75
    .restart local v3    # "offset":I
    iget-char v9, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->splite:C

    int-to-byte v9, v9

    aput-byte v9, v1, v4

    .line 77
    .end local v4    # "offset":I
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getPatientNumber()Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 78
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getPatientNumber()Ljava/lang/String;

    move-result-object v1

    const-string v4, "GBK"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v4, v1

    move v9, v3

    move v3, v5

    .line 78
    .end local v3    # "offset":I
    .restart local v9    # "offset":I
    :goto_5
    if-ge v3, v4, :cond_a

    aget-byte v10, v1, v3

    .line 79
    .restart local v10    # "b":B
    iget-object v11, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    add-int/lit8 v12, v9, 0x1

    .line 79
    .restart local v12    # "offset":I
    aput-byte v10, v11, v9

    .line 78
    .end local v9    # "offset":I
    .end local v10    # "b":B
    add-int/lit8 v3, v3, 0x1

    move v9, v12

    goto :goto_5

    .line 82
    .end local v12    # "offset":I
    .restart local v9    # "offset":I
    :cond_a
    move v3, v9

    .line 82
    .end local v9    # "offset":I
    .restart local v3    # "offset":I
    :cond_b
    iget-object v1, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    add-int/lit8 v4, v3, 0x1

    .line 82
    .restart local v4    # "offset":I
    iget-char v9, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->splite:C

    int-to-byte v9, v9

    aput-byte v9, v1, v3

    .line 84
    .end local v3    # "offset":I
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getDoctorNumber()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 85
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getDoctorNumber()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GBK"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v3, v1

    move v9, v4

    move v4, v5

    .line 85
    .end local v4    # "offset":I
    .restart local v9    # "offset":I
    :goto_6
    if-ge v4, v3, :cond_c

    aget-byte v10, v1, v4

    .line 86
    .restart local v10    # "b":B
    iget-object v11, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    add-int/lit8 v12, v9, 0x1

    .line 86
    .restart local v12    # "offset":I
    aput-byte v10, v11, v9

    .line 85
    .end local v9    # "offset":I
    .end local v10    # "b":B
    add-int/lit8 v4, v4, 0x1

    move v9, v12

    goto :goto_6

    .line 89
    .end local v12    # "offset":I
    .restart local v9    # "offset":I
    :cond_c
    move v4, v9

    .line 89
    .end local v9    # "offset":I
    .restart local v4    # "offset":I
    :cond_d
    iget-object v1, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    add-int/lit8 v3, v4, 0x1

    .line 89
    .restart local v3    # "offset":I
    iget-char v9, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->splite:C

    int-to-byte v9, v9

    aput-byte v9, v1, v4

    .line 91
    .end local v4    # "offset":I
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getBedNumber()Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 92
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getBedNumber()Ljava/lang/String;

    move-result-object v1

    const-string v4, "GBK"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v4, v1

    move v9, v3

    move v3, v5

    .line 92
    .end local v3    # "offset":I
    .restart local v9    # "offset":I
    :goto_7
    if-ge v3, v4, :cond_e

    aget-byte v10, v1, v3

    .line 93
    .restart local v10    # "b":B
    iget-object v11, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    add-int/lit8 v12, v9, 0x1

    .line 93
    .restart local v12    # "offset":I
    aput-byte v10, v11, v9

    .line 92
    .end local v9    # "offset":I
    .end local v10    # "b":B
    add-int/lit8 v3, v3, 0x1

    move v9, v12

    goto :goto_7

    .line 96
    .end local v12    # "offset":I
    .restart local v9    # "offset":I
    :cond_e
    move v3, v9

    .line 96
    .end local v9    # "offset":I
    .restart local v3    # "offset":I
    :cond_f
    iget-object v1, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    add-int/lit8 v4, v3, 0x1

    .line 96
    .restart local v4    # "offset":I
    iget-char v9, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->splite:C

    int-to-byte v9, v9

    aput-byte v9, v1, v3

    .line 98
    .end local v3    # "offset":I
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getSubmittingDivision()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 99
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getSubmittingDivision()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GBK"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v3, v1

    move v9, v4

    move v4, v5

    .line 99
    .end local v4    # "offset":I
    .restart local v9    # "offset":I
    :goto_8
    if-ge v4, v3, :cond_10

    aget-byte v10, v1, v4

    .line 100
    .restart local v10    # "b":B
    iget-object v11, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    add-int/lit8 v12, v9, 0x1

    .line 100
    .restart local v12    # "offset":I
    aput-byte v10, v11, v9

    .line 99
    .end local v9    # "offset":I
    .end local v10    # "b":B
    add-int/lit8 v4, v4, 0x1

    move v9, v12

    goto :goto_8

    .line 103
    .end local v12    # "offset":I
    .restart local v9    # "offset":I
    :cond_10
    move v4, v9

    .line 103
    .end local v9    # "offset":I
    .restart local v4    # "offset":I
    :cond_11
    iget-object v1, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    add-int/lit8 v3, v4, 0x1

    .line 103
    .restart local v3    # "offset":I
    iget-char v9, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->splite:C

    int-to-byte v9, v9

    aput-byte v9, v1, v4

    .line 105
    .end local v4    # "offset":I
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getSubmittingDoctor()Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 106
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getSubmittingDoctor()Ljava/lang/String;

    move-result-object v1

    const-string v4, "GBK"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v4, v1

    move v9, v3

    move v3, v5

    .line 106
    .end local v3    # "offset":I
    .restart local v9    # "offset":I
    :goto_9
    if-ge v3, v4, :cond_12

    aget-byte v10, v1, v3

    .line 107
    .restart local v10    # "b":B
    iget-object v11, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    add-int/lit8 v12, v9, 0x1

    .line 107
    .restart local v12    # "offset":I
    aput-byte v10, v11, v9

    .line 106
    .end local v9    # "offset":I
    .end local v10    # "b":B
    add-int/lit8 v3, v3, 0x1

    move v9, v12

    goto :goto_9

    .line 110
    .end local v12    # "offset":I
    .restart local v9    # "offset":I
    :cond_12
    move v3, v9

    .line 110
    .end local v9    # "offset":I
    .restart local v3    # "offset":I
    :cond_13
    iget-object v1, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    add-int/lit8 v4, v3, 0x1

    .line 110
    .restart local v4    # "offset":I
    iget-char v9, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->splite:C

    int-to-byte v9, v9

    aput-byte v9, v1, v3

    .line 112
    .end local v3    # "offset":I
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getSubmittingTime()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 113
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getSubmittingTime()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GBK"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v3, v1

    move v9, v4

    move v4, v5

    .line 113
    .end local v4    # "offset":I
    .restart local v9    # "offset":I
    :goto_a
    if-ge v4, v3, :cond_14

    aget-byte v10, v1, v4

    .line 114
    .restart local v10    # "b":B
    iget-object v11, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    add-int/lit8 v12, v9, 0x1

    .line 114
    .restart local v12    # "offset":I
    aput-byte v10, v11, v9

    .line 113
    .end local v9    # "offset":I
    .end local v10    # "b":B
    add-int/lit8 v4, v4, 0x1

    move v9, v12

    goto :goto_a

    .line 117
    .end local v12    # "offset":I
    .restart local v9    # "offset":I
    :cond_14
    move v4, v9

    .line 117
    .end local v9    # "offset":I
    .restart local v4    # "offset":I
    :cond_15
    iget-object v1, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    add-int/lit8 v3, v4, 0x1

    .line 117
    .restart local v3    # "offset":I
    iget-char v9, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->splite:C

    int-to-byte v9, v9

    aput-byte v9, v1, v4

    .line 119
    .end local v4    # "offset":I
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getInspectingDoctor()Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 120
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getInspectingDoctor()Ljava/lang/String;

    move-result-object v1

    const-string v4, "GBK"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v4, v1

    move v9, v3

    move v3, v5

    .line 120
    .end local v3    # "offset":I
    .restart local v9    # "offset":I
    :goto_b
    if-ge v3, v4, :cond_16

    aget-byte v10, v1, v3

    .line 121
    .restart local v10    # "b":B
    iget-object v11, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    add-int/lit8 v12, v9, 0x1

    .line 121
    .restart local v12    # "offset":I
    aput-byte v10, v11, v9

    .line 120
    .end local v9    # "offset":I
    .end local v10    # "b":B
    add-int/lit8 v3, v3, 0x1

    move v9, v12

    goto :goto_b

    .line 124
    .end local v12    # "offset":I
    .restart local v9    # "offset":I
    :cond_16
    move v3, v9

    .line 124
    .end local v9    # "offset":I
    .restart local v3    # "offset":I
    :cond_17
    iget-object v1, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    add-int/lit8 v4, v3, 0x1

    .line 124
    .restart local v4    # "offset":I
    iget-char v9, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->splite:C

    int-to-byte v9, v9

    aput-byte v9, v1, v3

    .line 126
    .end local v3    # "offset":I
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getTestTime()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 127
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getTestTime()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GBK"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v3, v1

    move v9, v4

    move v4, v5

    .line 127
    .end local v4    # "offset":I
    .restart local v9    # "offset":I
    :goto_c
    if-ge v4, v3, :cond_18

    aget-byte v10, v1, v4

    .line 128
    .restart local v10    # "b":B
    iget-object v11, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    add-int/lit8 v12, v9, 0x1

    .line 128
    .restart local v12    # "offset":I
    aput-byte v10, v11, v9

    .line 127
    .end local v9    # "offset":I
    .end local v10    # "b":B
    add-int/lit8 v4, v4, 0x1

    move v9, v12

    goto :goto_c

    .line 131
    .end local v12    # "offset":I
    .restart local v9    # "offset":I
    :cond_18
    move v4, v9

    .line 131
    .end local v9    # "offset":I
    .restart local v4    # "offset":I
    :cond_19
    iget-object v1, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    add-int/lit8 v3, v4, 0x1

    .line 131
    .restart local v3    # "offset":I
    iget-char v9, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->splite:C

    int-to-byte v9, v9

    aput-byte v9, v1, v4

    .line 133
    .end local v4    # "offset":I
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getReviewer()Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 134
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getReviewer()Ljava/lang/String;

    move-result-object v1

    const-string v4, "GBK"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v4, v1

    move v9, v3

    move v3, v5

    .line 134
    .end local v3    # "offset":I
    .restart local v9    # "offset":I
    :goto_d
    if-ge v3, v4, :cond_1a

    aget-byte v10, v1, v3

    .line 135
    .restart local v10    # "b":B
    iget-object v11, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    add-int/lit8 v12, v9, 0x1

    .line 135
    .restart local v12    # "offset":I
    aput-byte v10, v11, v9

    .line 134
    .end local v9    # "offset":I
    .end local v10    # "b":B
    add-int/lit8 v3, v3, 0x1

    move v9, v12

    goto :goto_d

    .line 138
    .end local v12    # "offset":I
    .restart local v9    # "offset":I
    :cond_1a
    move v3, v9

    .line 138
    .end local v9    # "offset":I
    .restart local v3    # "offset":I
    :cond_1b
    iget-object v1, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    add-int/lit8 v4, v3, 0x1

    .line 138
    .restart local v4    # "offset":I
    iget-char v9, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->splite:C

    int-to-byte v9, v9

    aput-byte v9, v1, v3

    .line 140
    .end local v3    # "offset":I
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getNote()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 141
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getNote()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GBK"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v3, v1

    move v9, v4

    move v4, v5

    .line 141
    .end local v4    # "offset":I
    .restart local v9    # "offset":I
    :goto_e
    if-ge v4, v3, :cond_1c

    aget-byte v10, v1, v4

    .line 142
    .restart local v10    # "b":B
    iget-object v11, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    add-int/lit8 v12, v9, 0x1

    .line 142
    .restart local v12    # "offset":I
    aput-byte v10, v11, v9

    .line 141
    .end local v9    # "offset":I
    .end local v10    # "b":B
    add-int/lit8 v4, v4, 0x1

    move v9, v12

    goto :goto_e

    .line 145
    .end local v12    # "offset":I
    .restart local v9    # "offset":I
    :cond_1c
    move v4, v9

    .line 145
    .end local v9    # "offset":I
    .restart local v4    # "offset":I
    :cond_1d
    iget-object v1, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    add-int/lit8 v3, v4, 0x1

    .line 145
    .restart local v3    # "offset":I
    iget-char v9, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->splite:C

    int-to-byte v9, v9

    aput-byte v9, v1, v4

    .line 147
    .end local v4    # "offset":I
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getItemcount()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 148
    .local v1, "itemCount":I
    const/4 v4, 0x0

    .line 149
    .local v4, "CRP":Ljava/lang/String;
    const/4 v9, 0x0

    .line 151
    .local v9, "sCRP":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/16 v11, 0x3a

    if-nez v10, :cond_20

    .line 152
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v10

    const-string v12, "GBK"

    invoke-virtual {v10, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    array-length v12, v10

    move v13, v3

    move v3, v5

    .line 152
    .end local v3    # "offset":I
    .local v13, "offset":I
    :goto_f
    if-ge v3, v12, :cond_1e

    aget-byte v14, v10, v3

    .line 153
    .local v14, "b":B
    iget-object v15, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    add-int/lit8 v16, v13, 0x1

    .line 153
    .local v16, "offset":I
    aput-byte v14, v15, v13

    .line 152
    .end local v13    # "offset":I
    .end local v14    # "b":B
    add-int/lit8 v3, v3, 0x1

    move/from16 v13, v16

    goto :goto_f

    .line 155
    .end local v16    # "offset":I
    .restart local v13    # "offset":I
    :cond_1e
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v3

    const-string v10, "CRP"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 156
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v3

    const-string v10, "hsCRP"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 157
    :cond_1f
    invoke-static/range {p1 .. p1}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v10

    .line 158
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v12

    .line 157
    invoke-virtual {v3, v10, v12}, Lcom/wen/fluorescence/database/DBManager;->queryCRPorHSCRP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 159
    const-string v3, "#"

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 160
    array-length v3, v9

    if-le v3, v6, :cond_21

    .line 161
    iget-object v3, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    add-int/lit8 v10, v13, 0x1

    .line 161
    .local v10, "offset":I
    aput-byte v11, v3, v13

    .line 162
    .end local v13    # "offset":I
    aget-object v3, v9, v5

    const-string v12, "GBK"

    invoke-virtual {v3, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v12, v3

    move v13, v10

    move v10, v5

    .line 162
    .end local v10    # "offset":I
    .restart local v13    # "offset":I
    :goto_10
    if-ge v10, v12, :cond_21

    aget-byte v14, v3, v10

    .line 163
    .restart local v14    # "b":B
    iget-object v15, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    add-int/lit8 v16, v13, 0x1

    .line 163
    .restart local v16    # "offset":I
    aput-byte v14, v15, v13

    .line 162
    .end local v13    # "offset":I
    .end local v14    # "b":B
    add-int/lit8 v10, v10, 0x1

    move/from16 v13, v16

    goto :goto_10

    .line 181
    .end local v16    # "offset":I
    .restart local v3    # "offset":I
    :cond_20
    move v13, v3

    .line 181
    .end local v3    # "offset":I
    .restart local v13    # "offset":I
    :cond_21
    iget-object v3, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    add-int/lit8 v10, v13, 0x1

    .line 181
    .restart local v10    # "offset":I
    iget-char v12, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->splite:C

    int-to-byte v12, v12

    aput-byte v12, v3, v13

    .line 183
    .end local v13    # "offset":I
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v3

    const-string v12, "GBK"

    invoke-virtual {v3, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v12, v3

    move v13, v10

    move v10, v5

    .line 183
    .end local v10    # "offset":I
    .restart local v13    # "offset":I
    :goto_11
    if-ge v10, v12, :cond_22

    aget-byte v14, v3, v10

    .line 184
    .restart local v14    # "b":B
    iget-object v15, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    add-int/lit8 v16, v13, 0x1

    .line 184
    .restart local v16    # "offset":I
    aput-byte v14, v15, v13

    .line 183
    .end local v13    # "offset":I
    .end local v14    # "b":B
    add-int/lit8 v10, v10, 0x1

    move/from16 v13, v16

    goto :goto_11

    .line 186
    .end local v16    # "offset":I
    .restart local v13    # "offset":I
    :cond_22
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v3

    const-string v10, "CRP"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 187
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v3

    const-string v10, "hsCRP"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    :cond_23
    array-length v3, v9

    if-le v3, v6, :cond_24

    .line 191
    iget-object v3, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    add-int/lit8 v10, v13, 0x1

    .line 191
    .restart local v10    # "offset":I
    aput-byte v11, v3, v13

    .line 192
    .end local v13    # "offset":I
    aget-object v3, v9, v6

    const-string v11, "GBK"

    invoke-virtual {v3, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v11, v3

    move v13, v10

    move v10, v5

    .line 192
    .end local v10    # "offset":I
    .restart local v13    # "offset":I
    :goto_12
    if-ge v10, v11, :cond_24

    aget-byte v12, v3, v10

    .line 193
    .local v12, "b":B
    iget-object v14, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    add-int/lit8 v15, v13, 0x1

    .line 193
    .local v15, "offset":I
    aput-byte v12, v14, v13

    .line 192
    .end local v12    # "b":B
    .end local v13    # "offset":I
    add-int/lit8 v10, v10, 0x1

    move v13, v15

    goto :goto_12

    .line 209
    .end local v15    # "offset":I
    .restart local v13    # "offset":I
    :cond_24
    iget-object v3, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    add-int/lit8 v10, v13, 0x1

    .line 209
    .restart local v10    # "offset":I
    iget-char v11, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->splite:C

    int-to-byte v11, v11

    aput-byte v11, v3, v13

    .line 210
    .end local v13    # "offset":I
    iget-object v3, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    add-int/lit8 v11, v10, 0x1

    .line 210
    .local v11, "offset":I
    const/16 v12, 0xa

    aput-byte v12, v3, v10

    .line 212
    .end local v10    # "offset":I
    add-int/lit8 v3, v11, -0x10

    add-int/2addr v2, v3

    .line 213
    iget-object v3, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    shr-int/lit8 v10, v2, 0x8

    int-to-byte v10, v10

    const/16 v13, 0x8

    aput-byte v10, v3, v13

    .line 214
    iget-object v3, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    const/16 v10, 0x9

    int-to-byte v14, v2

    aput-byte v14, v3, v10

    .line 215
    iget-object v3, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    aput-byte v5, v3, v12

    .line 216
    iget-object v3, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    const/16 v10, 0xb

    aput-byte v6, v3, v10

    .line 218
    iget-object v3, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    const/16 v10, 0xc

    add-int/lit8 v12, v2, -0x4

    shr-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v3, v10

    .line 219
    iget-object v3, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    add-int/lit8 v10, v2, -0x4

    int-to-byte v10, v10

    const/16 v12, 0xd

    aput-byte v10, v3, v12

    .line 220
    iget-object v3, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    const/16 v10, 0xe

    aput-byte v5, v3, v10

    .line 221
    iget-object v3, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    const/16 v10, 0xf

    aput-byte v6, v3, v10

    .line 223
    add-int/2addr v2, v12

    .line 225
    iget-object v3, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    shr-int/lit8 v10, v2, 0x18

    int-to-byte v10, v10

    const/4 v12, 0x4

    aput-byte v10, v3, v12

    .line 226
    iget-object v3, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    const/4 v10, 0x5

    shr-int/lit8 v12, v2, 0x10

    int-to-byte v12, v12

    aput-byte v12, v3, v10

    .line 227
    iget-object v3, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    const/4 v10, 0x6

    shr-int/lit8 v12, v2, 0x8

    int-to-byte v12, v12

    aput-byte v12, v3, v10

    .line 228
    iget-object v3, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    const/4 v10, 0x7

    int-to-byte v12, v2

    aput-byte v12, v3, v10

    .line 230
    iget-object v3, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    add-int/lit8 v10, v11, 0x1

    .line 230
    .restart local v10    # "offset":I
    iget-object v12, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->PRECODE:[B

    aget-byte v8, v12, v8

    aput-byte v8, v3, v11

    .line 231
    .end local v11    # "offset":I
    iget-object v3, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    add-int/lit8 v8, v10, 0x1

    .line 231
    .local v8, "offset":I
    iget-object v11, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->PRECODE:[B

    aget-byte v7, v11, v7

    aput-byte v7, v3, v10

    .line 232
    .end local v10    # "offset":I
    iget-object v3, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    add-int/lit8 v7, v8, 0x1

    .line 232
    .local v7, "offset":I
    iget-object v10, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->PRECODE:[B

    aget-byte v6, v10, v6

    aput-byte v6, v3, v8

    .line 233
    .end local v8    # "offset":I
    iget-object v3, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    add-int/lit8 v6, v7, 0x1

    .line 233
    .local v6, "offset":I
    iget-object v8, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->PRECODE:[B

    aget-byte v8, v8, v5

    aput-byte v8, v3, v7

    .line 234
    .end local v7    # "offset":I
    iget-object v3, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    aput-byte v5, v3, v6

    .line 235
    nop

    .line 235
    .local v5, "i":I
    :goto_13
    move v3, v5

    .line 235
    .end local v5    # "i":I
    .local v3, "i":I
    if-ge v3, v6, :cond_25

    .line 236
    iget-object v5, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    aget-byte v7, v5, v6

    iget-object v8, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    aget-byte v8, v8, v3

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 235
    add-int/lit8 v5, v3, 0x1

    .line 235
    .end local v3    # "i":I
    .restart local v5    # "i":I
    goto :goto_13

    .line 238
    .end local v5    # "i":I
    :cond_25
    iget-object v3, v0, Lcom/wen/fluorescence/lis/UdpDataGram;->m_txbuf:[B

    return-object v3
.end method
