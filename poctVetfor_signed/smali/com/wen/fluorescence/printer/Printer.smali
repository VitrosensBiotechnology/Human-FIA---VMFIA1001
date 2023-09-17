.class public Lcom/wen/fluorescence/printer/Printer;
.super Ljava/lang/Object;
.source "Printer.java"


# instance fields
.field public OneBufferData:[B

.field public byteArray:[B

.field public mode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    const/4 v0, 0x0

    iput v0, p0, Lcom/wen/fluorescence/printer/Printer;->mode:I

    return-void
.end method


# virtual methods
.method public ClearBufferData()V
    .locals 1

    .line 47
    const/16 v0, 0x64

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    .line 48
    return-void
.end method

.method public OneTmpBuffers(I[B)[B
    .locals 4
    .param p1, "Start"    # I
    .param p2, "HexByte"    # [B

    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "ByteNum":I
    move v1, v0

    move v0, p1

    .line 73
    .local v0, "i":I
    .local v1, "ByteNum":I
    :goto_0
    array-length v2, p2

    add-int/2addr v2, p1

    if-ge v0, v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    aget-byte v3, p2, v1

    aput-byte v3, v2, v0

    .line 75
    add-int/lit8 v1, v1, 0x1

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    return-object v0
.end method

.method public PrintBoldMessage(Ljava/lang/String;)V
    .locals 7
    .param p1, "message"    # Ljava/lang/String;

    .line 428
    const/4 v0, 0x3

    .line 429
    .local v0, "Skip":I
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/Printer;->ClearBufferData()V

    .line 431
    iget-object v1, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/16 v2, 0x1b

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 432
    iget-object v1, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/4 v4, 0x1

    const/16 v5, 0x7b

    aput-byte v5, v1, v4

    .line 433
    iget-object v1, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/4 v5, 0x2

    aput-byte v3, v1, v5

    .line 435
    iget-object v1, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    add-int v6, v3, v0

    aput-byte v2, v1, v6

    .line 436
    iget-object v1, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    add-int/2addr v4, v0

    const/16 v6, 0x57

    aput-byte v6, v1, v4

    .line 437
    iget-object v1, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    add-int v4, v5, v0

    aput-byte v5, v1, v4

    .line 439
    iget-object v1, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/4 v4, 0x3

    add-int/2addr v4, v0

    const/16 v5, 0x1c

    aput-byte v5, v1, v4

    .line 440
    iget-object v1, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/4 v4, 0x4

    add-int/2addr v4, v0

    const/16 v5, 0x26

    aput-byte v5, v1, v4

    .line 441
    add-int v1, v3, v0

    .line 443
    .local v1, "li_Len":I
    iget-object v4, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/16 v5, 0x9

    add-int/2addr v5, v1

    aput-byte v2, v4, v5

    .line 444
    iget-object v2, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/16 v4, 0xa

    add-int/2addr v4, v1

    const/16 v5, 0x66

    aput-byte v5, v2, v4

    .line 445
    iget-object v2, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/16 v4, 0xb

    add-int/2addr v4, v1

    aput-byte v3, v2, v4

    .line 446
    iget-object v2, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/16 v3, 0xc

    add-int/2addr v3, v1

    const/16 v4, 0x10

    aput-byte v4, v2, v3

    .line 447
    invoke-static {p1}, Lcom/wen/fluorescence/util/PublicFuction;->StrToByteS(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/wen/fluorescence/printer/Printer;->byteArray:[B

    .line 448
    iget-object v2, p0, Lcom/wen/fluorescence/printer/Printer;->byteArray:[B

    const/16 v3, 0xd

    invoke-virtual {p0, v3, v2}, Lcom/wen/fluorescence/printer/Printer;->OneTmpBuffers(I[B)[B

    .line 449
    iget-object v2, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    add-int v4, v3, v1

    iget-object v5, p0, Lcom/wen/fluorescence/printer/Printer;->byteArray:[B

    array-length v5, v5

    add-int/2addr v4, v5

    aput-byte v3, v2, v4

    .line 450
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/Printer;->print()V

    .line 451
    return-void
.end method

.method public PrintHeaders(Ljava/lang/String;)V
    .locals 13
    .param p1, "TestProNamePrintHead"    # Ljava/lang/String;

    .line 222
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/Printer;->ClearBufferData()V

    .line 223
    const/4 v0, 0x0

    iput v0, p0, Lcom/wen/fluorescence/printer/Printer;->mode:I

    .line 224
    move-object v1, p1

    .line 225
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Lcom/wen/fluorescence/util/PublicFuction;->StrToByteS(Ljava/lang/String;)[B

    move-result-object v2

    .line 226
    .local v2, "byteArray":[B
    const/16 v3, 0xe

    const/4 v4, 0x1

    const/4 v5, 0x2

    array-length v6, v2

    if-le v6, v3, :cond_0

    .line 227
    array-length v6, v2

    rsub-int/lit8 v6, v6, 0x20

    div-int/2addr v6, v5

    .line 228
    .local v6, "li_Len":I
    iput v4, p0, Lcom/wen/fluorescence/printer/Printer;->mode:I

    goto :goto_0

    .line 230
    .end local v6    # "li_Len":I
    :cond_0
    array-length v6, v2

    rsub-int/lit8 v6, v6, 0x10

    div-int/2addr v6, v5

    .line 233
    .restart local v6    # "li_Len":I
    :goto_0
    const/4 v7, 0x6

    .line 234
    .local v7, "Skip":I
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/Printer;->ClearBufferData()V

    .line 236
    iget-object v8, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/16 v9, 0x1b

    aput-byte v9, v8, v0

    .line 237
    iget-object v8, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/16 v10, 0x61

    aput-byte v10, v8, v4

    .line 238
    iget-object v8, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    aput-byte v4, v8, v5

    .line 240
    iget-object v8, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/4 v10, 0x3

    aput-byte v9, v8, v10

    .line 241
    iget-object v8, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/16 v11, 0x7b

    const/4 v12, 0x4

    aput-byte v11, v8, v12

    .line 242
    iget-object v8, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/4 v11, 0x5

    aput-byte v0, v8, v11

    .line 245
    iget-object v8, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    add-int/2addr v0, v7

    aput-byte v9, v8, v0

    .line 246
    iget-object v0, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    add-int v8, v4, v7

    const/16 v9, 0x57

    aput-byte v9, v0, v8

    .line 247
    array-length v0, v2

    if-le v0, v3, :cond_1

    .line 248
    iget-object v0, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    add-int/2addr v5, v7

    aput-byte v4, v0, v5

    goto :goto_1

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    add-int v3, v5, v7

    aput-byte v5, v0, v3

    .line 253
    :goto_1
    iget-object v0, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    add-int/2addr v10, v7

    const/16 v3, 0x1c

    aput-byte v3, v0, v10

    .line 254
    iget-object v0, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    add-int/2addr v12, v7

    const/16 v3, 0x26

    aput-byte v3, v0, v12

    .line 260
    iget-object v0, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    add-int/2addr v11, v7

    int-to-byte v3, v6

    aput-byte v3, v0, v11

    .line 261
    const/4 v0, 0x6

    add-int v3, v0, v7

    invoke-virtual {p0, v3, v2}, Lcom/wen/fluorescence/printer/Printer;->OneTmpBuffers(I[B)[B

    .line 262
    iget-object v3, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    add-int/2addr v0, v7

    array-length v4, v2

    add-int/2addr v0, v4

    const/16 v4, 0xd

    aput-byte v4, v3, v0

    .line 263
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/Printer;->print()V

    .line 264
    return-void
.end method

.method public PrintItemInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 19
    .param p1, "ProName"    # Ljava/lang/String;
    .param p2, "Result"    # Ljava/lang/String;

    move-object/from16 v0, p0

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/printer/Printer;->ClearBufferData()V

    .line 102
    iget-object v1, v0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/16 v2, 0x1b

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 104
    iget-object v1, v0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/4 v4, 0x1

    const/16 v5, 0x57

    aput-byte v5, v1, v4

    .line 105
    iget-object v1, v0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/4 v5, 0x2

    aput-byte v4, v1, v5

    .line 108
    iget-object v1, v0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/4 v6, 0x3

    aput-byte v2, v1, v6

    .line 109
    iget-object v1, v0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/4 v6, 0x4

    const/16 v7, 0x2b

    aput-byte v7, v1, v6

    .line 110
    iget-object v1, v0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/4 v6, 0x5

    aput-byte v3, v1, v6

    .line 113
    iget-object v1, v0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/4 v6, 0x6

    const/16 v7, 0x1c

    aput-byte v7, v1, v6

    .line 114
    iget-object v1, v0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/4 v7, 0x7

    const/16 v8, 0x26

    aput-byte v8, v1, v7

    .line 117
    invoke-static/range {p1 .. p1}, Lcom/wen/fluorescence/util/PublicFuction;->StrToByteS(Ljava/lang/String;)[B

    move-result-object v1

    .line 118
    .local v1, "byteArray":[B
    const/16 v9, 0xb

    const/16 v10, 0x9

    const/16 v11, 0x8

    const/16 v12, 0xe

    const/16 v13, 0xa

    const/16 v14, 0xc

    const/16 v15, 0x66

    const/16 v16, 0xd

    array-length v4, v1

    .line 119
    .local v4, "li_Len":I
    invoke-virtual {v0, v11, v1}, Lcom/wen/fluorescence/printer/Printer;->OneTmpBuffers(I[B)[B

    .line 121
    if-gt v4, v14, :cond_1

    .line 122
    rsub-int/lit8 v17, v4, 0xa

    div-int/lit8 v7, v17, 0x2

    .line 125
    .local v7, "len":I
    iget-object v8, v0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    add-int v17, v11, v4

    aput-byte v2, v8, v17

    .line 126
    iget-object v8, v0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    add-int/2addr v10, v4

    aput-byte v15, v8, v10

    .line 127
    iget-object v8, v0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    add-int/2addr v13, v4

    aput-byte v3, v8, v13

    .line 128
    iget-object v8, v0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    add-int/2addr v9, v4

    int-to-byte v10, v7

    aput-byte v10, v8, v9

    .line 131
    invoke-static/range {p2 .. p2}, Lcom/wen/fluorescence/util/PublicFuction;->StrToByteS(Ljava/lang/String;)[B

    move-result-object v1

    .line 132
    array-length v8, v1

    .line 133
    .local v8, "li_Len1":I
    add-int v9, v14, v4

    invoke-virtual {v0, v9, v1}, Lcom/wen/fluorescence/printer/Printer;->OneTmpBuffers(I[B)[B

    .line 135
    if-gt v8, v6, :cond_0

    .line 136
    sub-int/2addr v11, v8

    div-int/2addr v11, v5

    .line 138
    .local v11, "len2":I
    iget-object v5, v0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    add-int/2addr v14, v4

    add-int/2addr v14, v8

    aput-byte v2, v5, v14

    .line 139
    iget-object v5, v0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    add-int v6, v16, v4

    add-int/2addr v6, v8

    aput-byte v15, v5, v6

    .line 140
    iget-object v5, v0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    add-int/2addr v12, v4

    add-int/2addr v12, v8

    aput-byte v3, v5, v12

    .line 141
    iget-object v5, v0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/16 v6, 0xf

    add-int/2addr v6, v4

    add-int/2addr v6, v8

    int-to-byte v9, v11

    aput-byte v9, v5, v6

    .line 144
    iget-object v5, v0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/16 v6, 0x10

    add-int/2addr v6, v4

    add-int/2addr v6, v8

    aput-byte v2, v5, v6

    .line 145
    iget-object v2, v0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/16 v5, 0x11

    add-int/2addr v5, v4

    add-int/2addr v5, v8

    aput-byte v15, v2, v5

    .line 146
    iget-object v2, v0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/16 v5, 0x12

    add-int/2addr v5, v4

    add-int/2addr v5, v8

    aput-byte v3, v2, v5

    .line 147
    iget-object v2, v0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/16 v3, 0x13

    add-int/2addr v3, v4

    add-int/2addr v3, v8

    const/4 v5, 0x1

    aput-byte v5, v2, v3

    .line 149
    iget-object v2, v0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/16 v3, 0x14

    add-int/2addr v3, v4

    add-int/2addr v3, v8

    aput-byte v16, v2, v3

    .line 151
    .end local v11    # "len2":I
    goto :goto_0

    .line 153
    :cond_0
    iget-object v5, v0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    add-int v6, v16, v4

    add-int/2addr v6, v8

    aput-byte v2, v5, v6

    .line 154
    iget-object v2, v0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    add-int/2addr v12, v4

    add-int/2addr v12, v8

    aput-byte v15, v2, v12

    .line 155
    iget-object v2, v0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/16 v5, 0xf

    add-int/2addr v5, v4

    add-int/2addr v5, v8

    aput-byte v3, v2, v5

    .line 156
    iget-object v2, v0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/16 v3, 0x10

    add-int/2addr v3, v4

    add-int/2addr v3, v8

    const/4 v5, 0x1

    aput-byte v5, v2, v3

    .line 158
    iget-object v2, v0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/16 v3, 0x11

    add-int/2addr v3, v4

    add-int/2addr v3, v8

    aput-byte v16, v2, v3

    .line 161
    .end local v7    # "len":I
    .end local v8    # "li_Len1":I
    :goto_0
    goto :goto_1

    .line 163
    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/wen/fluorescence/util/PublicFuction;->StrToByteS(Ljava/lang/String;)[B

    move-result-object v1

    .line 164
    array-length v7, v1

    .line 165
    .local v7, "li_Len1":I
    add-int v8, v10, v4

    invoke-virtual {v0, v8, v1}, Lcom/wen/fluorescence/printer/Printer;->OneTmpBuffers(I[B)[B

    .line 166
    if-gt v7, v6, :cond_2

    .line 167
    rsub-int/lit8 v6, v4, 0x4

    div-int/2addr v6, v5

    .line 169
    .local v6, "len1":I
    iget-object v5, v0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    add-int/2addr v10, v4

    add-int/2addr v10, v7

    aput-byte v2, v5, v10

    .line 170
    iget-object v5, v0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    add-int/2addr v13, v4

    add-int/2addr v13, v7

    aput-byte v15, v5, v13

    .line 171
    iget-object v5, v0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    add-int/2addr v9, v4

    add-int/2addr v9, v7

    aput-byte v3, v5, v9

    .line 172
    iget-object v5, v0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    add-int/2addr v14, v4

    add-int/2addr v14, v7

    int-to-byte v8, v6

    aput-byte v8, v5, v14

    .line 175
    iget-object v5, v0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    add-int v8, v16, v4

    add-int/2addr v8, v7

    aput-byte v2, v5, v8

    .line 176
    iget-object v2, v0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    add-int/2addr v12, v4

    add-int/2addr v12, v7

    aput-byte v15, v2, v12

    .line 177
    iget-object v2, v0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/16 v5, 0xf

    add-int v8, v5, v4

    add-int/2addr v8, v7

    aput-byte v3, v2, v8

    .line 178
    iget-object v2, v0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/16 v3, 0x10

    add-int/2addr v3, v4

    add-int/2addr v3, v7

    const/4 v5, 0x1

    aput-byte v5, v2, v3

    .line 180
    iget-object v2, v0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/16 v3, 0x11

    add-int/2addr v3, v4

    add-int/2addr v3, v7

    aput-byte v16, v2, v3

    .line 181
    .end local v6    # "len1":I
    goto :goto_1

    .line 184
    :cond_2
    iget-object v5, v0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    add-int/2addr v13, v4

    add-int/2addr v13, v7

    aput-byte v2, v5, v13

    .line 185
    iget-object v2, v0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    add-int/2addr v9, v4

    add-int/2addr v9, v7

    aput-byte v15, v2, v9

    .line 186
    iget-object v2, v0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    add-int/2addr v14, v4

    add-int/2addr v14, v7

    aput-byte v3, v2, v14

    .line 187
    iget-object v2, v0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    add-int v3, v16, v4

    add-int/2addr v3, v7

    const/4 v5, 0x1

    aput-byte v5, v2, v3

    .line 189
    iget-object v2, v0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    add-int/2addr v12, v4

    add-int/2addr v12, v7

    aput-byte v16, v2, v12

    .line 193
    .end local v7    # "li_Len1":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/printer/Printer;->print()V

    .line 194
    return-void
.end method

.method public PrintLeft()V
    .locals 4

    .line 344
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/Printer;->ClearBufferData()V

    .line 346
    iget-object v0, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/4 v1, 0x0

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    .line 347
    iget-object v0, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/4 v2, 0x1

    const/16 v3, 0x61

    aput-byte v3, v0, v2

    .line 348
    iget-object v0, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 349
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/Printer;->print()V

    .line 350
    return-void
.end method

.method public PrintMessage(Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;

    .line 320
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/Printer;->ClearBufferData()V

    .line 322
    iget-object v0, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/16 v1, 0x1b

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 323
    iget-object v0, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/4 v3, 0x1

    const/16 v4, 0x61

    aput-byte v4, v0, v3

    .line 324
    iget-object v0, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/4 v4, 0x2

    aput-byte v2, v0, v4

    .line 326
    iget-object v0, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/4 v4, 0x3

    aput-byte v1, v0, v4

    .line 327
    iget-object v0, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/4 v4, 0x4

    const/16 v5, 0x7b

    aput-byte v5, v0, v4

    .line 328
    iget-object v0, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/4 v4, 0x5

    aput-byte v2, v0, v4

    .line 330
    iget-object v0, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/4 v2, 0x6

    aput-byte v1, v0, v2

    .line 331
    iget-object v0, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/4 v1, 0x7

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    .line 332
    iget-object v0, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/16 v1, 0x8

    aput-byte v3, v0, v1

    .line 334
    iget-object v0, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/16 v1, 0x9

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    .line 335
    iget-object v0, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/16 v1, 0xa

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    .line 336
    invoke-static {p1}, Lcom/wen/fluorescence/util/PublicFuction;->StrToByteS(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/wen/fluorescence/printer/Printer;->byteArray:[B

    .line 337
    iget-object v0, p0, Lcom/wen/fluorescence/printer/Printer;->byteArray:[B

    const/16 v1, 0xb

    invoke-virtual {p0, v1, v0}, Lcom/wen/fluorescence/printer/Printer;->OneTmpBuffers(I[B)[B

    .line 338
    iget-object v0, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    iget-object v2, p0, Lcom/wen/fluorescence/printer/Printer;->byteArray:[B

    const/16 v3, 0xd

    array-length v2, v2

    add-int/2addr v1, v2

    aput-byte v3, v0, v1

    .line 339
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/Printer;->print()V

    .line 340
    return-void
.end method

.method public PrintMessage(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "enter"    # Z

    .line 354
    const/4 v0, 0x3

    .line 355
    .local v0, "Skip":I
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/Printer;->ClearBufferData()V

    .line 357
    iget-object v1, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/16 v2, 0x1b

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 358
    iget-object v1, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/4 v4, 0x1

    const/16 v5, 0x7b

    aput-byte v5, v1, v4

    .line 359
    iget-object v1, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/4 v5, 0x2

    aput-byte v3, v1, v5

    .line 361
    iget-object v1, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    add-int/2addr v3, v0

    aput-byte v2, v1, v3

    .line 362
    iget-object v1, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    add-int v2, v4, v0

    const/16 v3, 0x57

    aput-byte v3, v1, v2

    .line 363
    iget-object v1, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    add-int/2addr v5, v0

    aput-byte v4, v1, v5

    .line 365
    iget-object v1, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/4 v2, 0x3

    add-int/2addr v2, v0

    const/16 v3, 0x1c

    aput-byte v3, v1, v2

    .line 366
    iget-object v1, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/4 v2, 0x4

    add-int/2addr v2, v0

    const/16 v3, 0x26

    aput-byte v3, v1, v2

    .line 367
    invoke-static {p1}, Lcom/wen/fluorescence/util/PublicFuction;->StrToByteS(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/wen/fluorescence/printer/Printer;->byteArray:[B

    .line 368
    const/4 v1, 0x5

    add-int v2, v1, v0

    iget-object v3, p0, Lcom/wen/fluorescence/printer/Printer;->byteArray:[B

    invoke-virtual {p0, v2, v3}, Lcom/wen/fluorescence/printer/Printer;->OneTmpBuffers(I[B)[B

    .line 369
    if-eqz p2, :cond_0

    .line 370
    iget-object v2, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    add-int/2addr v1, v0

    iget-object v3, p0, Lcom/wen/fluorescence/printer/Printer;->byteArray:[B

    array-length v3, v3

    add-int/2addr v1, v3

    const/16 v3, 0xd

    aput-byte v3, v2, v1

    .line 371
    :cond_0
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/Printer;->print()V

    .line 372
    return-void
.end method

.method public PrintNewLine()V
    .locals 3

    .line 203
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/Printer;->ClearBufferData()V

    .line 205
    iget-object v0, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/4 v1, 0x0

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    .line 206
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/Printer;->print()V

    .line 207
    return-void
.end method

.method public PrintOrganization(Ljava/lang/String;)V
    .locals 11
    .param p1, "TestProNamePrintHead"    # Ljava/lang/String;

    .line 276
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/Printer;->ClearBufferData()V

    .line 277
    const/4 v0, 0x0

    iput v0, p0, Lcom/wen/fluorescence/printer/Printer;->mode:I

    .line 278
    invoke-static {p1}, Lcom/wen/fluorescence/util/PublicFuction;->StrToByteS(Ljava/lang/String;)[B

    move-result-object v1

    .line 279
    .local v1, "byteArray":[B
    const/4 v2, 0x1

    const/4 v3, 0x2

    const/16 v4, 0xe

    array-length v5, v1

    if-le v5, v4, :cond_0

    .line 280
    array-length v4, v1

    rsub-int/lit8 v4, v4, 0x20

    div-int/2addr v4, v3

    .line 281
    .local v4, "li_Len":I
    iput v2, p0, Lcom/wen/fluorescence/printer/Printer;->mode:I

    goto :goto_0

    .line 283
    .end local v4    # "li_Len":I
    :cond_0
    array-length v4, v1

    rsub-int/lit8 v4, v4, 0x10

    div-int/2addr v4, v3

    .line 286
    .restart local v4    # "li_Len":I
    :goto_0
    const/4 v5, 0x6

    .line 287
    .local v5, "Skip":I
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/Printer;->ClearBufferData()V

    .line 289
    iget-object v6, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/16 v7, 0x1b

    aput-byte v7, v6, v0

    .line 290
    iget-object v6, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/16 v8, 0x7b

    aput-byte v8, v6, v2

    .line 291
    iget-object v6, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    aput-byte v0, v6, v3

    .line 292
    iget-object v6, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/4 v8, 0x3

    aput-byte v7, v6, v8

    .line 293
    iget-object v6, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/16 v9, 0x61

    const/4 v10, 0x4

    aput-byte v9, v6, v10

    .line 294
    iget-object v6, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/4 v9, 0x5

    aput-byte v2, v6, v9

    .line 297
    iget-object v6, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    add-int/2addr v0, v5

    aput-byte v7, v6, v0

    .line 298
    iget-object v0, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    add-int/2addr v2, v5

    const/16 v6, 0x57

    aput-byte v6, v0, v2

    .line 299
    iget-object v0, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    add-int v2, v3, v5

    aput-byte v3, v0, v2

    .line 301
    iget-object v0, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    add-int/2addr v8, v5

    const/16 v2, 0x1c

    aput-byte v2, v0, v8

    .line 302
    iget-object v0, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    add-int/2addr v10, v5

    const/16 v2, 0x26

    aput-byte v2, v0, v10

    .line 308
    iget-object v0, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    add-int/2addr v9, v5

    int-to-byte v2, v4

    aput-byte v2, v0, v9

    .line 309
    const/4 v0, 0x6

    add-int/2addr v0, v5

    invoke-virtual {p0, v0, v1}, Lcom/wen/fluorescence/printer/Printer;->OneTmpBuffers(I[B)[B

    .line 310
    iget-object v0, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/4 v2, 0x7

    add-int/2addr v2, v5

    array-length v3, v1

    add-int/2addr v2, v3

    const/16 v3, 0xd

    aput-byte v3, v0, v2

    .line 311
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/Printer;->print()V

    .line 312
    return-void
.end method

.method public openMutilLanguage()V
    .locals 6

    .line 28
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/Printer;->ClearBufferData()V

    .line 29
    iget-object v0, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/16 v1, 0x1d

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 30
    iget-object v0, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/16 v2, 0x61

    const/4 v3, 0x1

    aput-byte v2, v0, v3

    .line 31
    iget-object v0, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/4 v4, 0x2

    const/16 v5, 0x10

    aput-byte v5, v0, v4

    .line 32
    iget-object v0, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/4 v4, 0x3

    const/16 v5, -0x11

    aput-byte v5, v0, v4

    .line 33
    iget-object v0, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/4 v4, 0x4

    aput-byte v3, v0, v4

    .line 34
    iget-object v0, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/4 v4, 0x5

    aput-byte v1, v0, v4

    .line 35
    iget-object v0, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/4 v1, 0x6

    aput-byte v2, v0, v1

    .line 36
    iget-object v0, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/4 v1, 0x7

    const/4 v2, -0x2

    aput-byte v2, v0, v1

    .line 37
    iget-object v0, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    const/16 v1, 0x8

    aput-byte v3, v0, v1

    .line 38
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/Printer;->print()V

    .line 39
    return-void
.end method

.method public print()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/wen/fluorescence/printer/Printer;->OneBufferData:[B

    invoke-static {v0}, Lcom/wen/fluorescence/serialport/CommActivity;->SendPrintData([B)V

    .line 62
    return-void
.end method

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

    .line 455
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    monitor-enter p0

    .line 455
    const/4 v0, 0x0

    move v1, v0

    .line 455
    .local v1, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 456
    :try_start_0
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/Printer;->PrintNewLine()V

    .line 455
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 454
    .end local v1    # "i":I
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "result":Lcom/wen/fluorescence/database/TestResult;
    .end local p3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    :catchall_0
    move-exception p1

    goto/16 :goto_3

    .line 458
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "result":Lcom/wen/fluorescence/database/TestResult;
    .restart local p3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    :cond_0
    const v1, 0x7f0c00b5

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/printer/Printer;->PrintHeaders(Ljava/lang/String;)V

    .line 459
    const-string v1, "------------------"

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/printer/Printer;->PrintBoldMessage(Ljava/lang/String;)V

    .line 460
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/Printer;->PrintLeft()V

    .line 461
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

    invoke-virtual {p0, v1, v2}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;Z)V

    .line 462
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

    invoke-virtual {p0, v1, v2}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;Z)V

    .line 463
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

    invoke-virtual {p0, v1, v2}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;Z)V

    .line 464
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

    invoke-virtual {p0, v1, v2}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;Z)V

    .line 466
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

    invoke-virtual {p0, v1, v2}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;Z)V

    .line 467
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

    invoke-virtual {p0, v1, v2}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;Z)V

    .line 468
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

    invoke-virtual {p0, v1, v2}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;Z)V

    .line 470
    move v1, v2

    .line 470
    .restart local v1    # "i":I
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 471
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

    .line 472
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

    invoke-virtual {p0, v6, v2}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;Z)V

    .line 473
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

    .line 474
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

    .line 473
    invoke-virtual {p0, v6, v2}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;Z)V

    .line 475
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

    .line 476
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeVerdict()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 475
    invoke-virtual {p0, v6, v2}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;Z)V

    .line 470
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 480
    .end local v1    # "i":I
    :cond_2
    const-string v1, "------"

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/printer/Printer;->PrintBoldMessage(Ljava/lang/String;)V

    .line 481
    invoke-static {p1}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v1

    const-string v3, "OrganizationFragment"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 482
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

    invoke-virtual {p0, v3, v2}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;Z)V

    .line 483
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

    invoke-virtual {p0, v3, v2}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;Z)V

    .line 484
    const v3, 0x7f0c0095

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;Z)V

    .line 485
    nop

    .line 485
    .local v0, "i":I
    :goto_2
    const/4 v2, 0x5

    if-ge v0, v2, :cond_3

    .line 486
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/Printer;->PrintNewLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 488
    .end local v0    # "i":I
    :cond_3
    monitor-exit p0

    return-void

    .line 454
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

    .line 499
    .local p4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    monitor-enter p0

    .line 499
    const/4 v6, 0x0

    .line 499
    .local v6, "i":I
    :goto_0
    const/4 v7, 0x2

    if-ge v6, v7, :cond_0

    .line 500
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/printer/Printer;->PrintNewLine()V

    .line 499
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 498
    .end local v6    # "i":I
    .end local p1    # "mContext":Landroid/content/Context;
    .end local p2    # "dbm":Lcom/wen/fluorescence/database/DBManager;
    .end local p3    # "result":Lcom/wen/fluorescence/database/TestResult;
    .end local p4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_19

    .line 503
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

    .line 504
    .local v6, "organization":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 505
    invoke-virtual {v1, v6}, Lcom/wen/fluorescence/printer/Printer;->PrintOrganization(Ljava/lang/String;)V

    .line 507
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/printer/Printer;->PrintNewLine()V

    .line 509
    const v8, 0x7f0c001b

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/wen/fluorescence/printer/Printer;->PrintHeaders(Ljava/lang/String;)V

    .line 510
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f0c00f9

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
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

    .line 510
    invoke-virtual {v1, v8}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 513
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSex()I

    move-result v8

    const v9, 0x7f0c0064

    const v10, 0x7f0c00b2

    const/4 v11, 0x1

    if-ne v8, v11, :cond_4

    .line 514
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\uff1a"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v10, 0x7f0c0016

    .line 515
    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "          "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getAge()I

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "-"

    goto :goto_2

    :cond_3
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getAge()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :goto_2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 514
    invoke-virtual {v1, v8}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 518
    :cond_4
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSex()I

    move-result v8

    if-ne v8, v7, :cond_6

    .line 519
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\uff1a"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v10, 0x7f0c00ab

    .line 520
    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "          "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getAge()I

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "-"

    goto :goto_3

    :cond_5
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getAge()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :goto_3
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 519
    invoke-virtual {v1, v8}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    goto :goto_5

    .line 524
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\uff1a-         "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getAge()I

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "-"

    goto :goto_4

    :cond_7
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getAge()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :goto_4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 524
    invoke-virtual {v1, v8}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 529
    :goto_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0114

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getPatientNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 530
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

    invoke-virtual {v1, v8}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 531
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

    invoke-virtual {v1, v8}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 532
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

    invoke-virtual {v1, v8}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 533
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v8

    invoke-virtual {v8}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v8

    const/4 v9, 0x7

    if-ne v8, v9, :cond_8

    .line 534
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x7f0c0151

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getAppId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 536
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x7f0c002a

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getTestTime()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 538
    const-string v8, "-------------------------------"

    invoke-virtual {v1, v8}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 541
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/wen/fluorescence/database/DBManager;->queryRangeMin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 542
    .local v8, "min":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/wen/fluorescence/database/DBManager;->queryRangeMax(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 544
    .local v10, "max":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 582
    .local v12, "range":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c00d2

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 583
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeFlag()I

    move-result v13

    const v5, 0x7f0c0149

    if-nez v13, :cond_b

    .line 584
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 585
    .local v13, "printResult":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getiValid()I

    move-result v14

    if-nez v14, :cond_9

    .line 586
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v13, v11

    .line 588
    :cond_9
    invoke-virtual {v1, v13}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 591
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_a

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 592
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v11

    const-string v14, "  "

    invoke-virtual {v11, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 593
    .local v11, "strArray":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReResult()Ljava/lang/String;

    move-result-object v14

    const-string v9, "  "

    invoke-virtual {v14, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 594
    .local v9, "resultArray":[Ljava/lang/String;
    const/4 v14, 0x1

    .line 594
    .local v14, "i":I
    :goto_6
    array-length v7, v11

    if-ge v14, v7, :cond_a

    .line 595
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  : "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v11, v14

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 596
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v15, 0x7f0c0149

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v9, v14

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 594
    add-int/lit8 v14, v14, 0x1

    const v5, 0x7f0c0149

    const/4 v7, 0x2

    const v15, 0x7f0c00d2

    goto :goto_6

    .line 599
    .end local v9    # "resultArray":[Ljava/lang/String;
    .end local v11    # "strArray":[Ljava/lang/String;
    .end local v13    # "printResult":Ljava/lang/String;
    .end local v14    # "i":I
    :cond_a
    goto/16 :goto_a

    .line 600
    :cond_b
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v5

    const/4 v7, 0x2

    if-le v5, v7, :cond_f

    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v5

    const/4 v7, 0x7

    if-lt v5, v7, :cond_c

    goto/16 :goto_7

    .line 616
    :cond_c
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getIsShowResult()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_e

    .line 617
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0c0149

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 618
    .local v5, "printResult":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getiValid()I

    move-result v7

    if-nez v7, :cond_d

    .line 619
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 621
    :cond_d
    invoke-virtual {v1, v5}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 623
    .end local v5    # "printResult":Ljava/lang/String;
    :cond_e
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getIsShowConclusion()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_10

    .line 624
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0c01c6

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeVerdict()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    goto :goto_8

    .line 614
    :cond_f
    :goto_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0c0149

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Lcom/wen/fluorescence/util/PublicFuction;->getShowResult(Lcom/wen/fluorescence/database/TestResult;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 629
    :cond_10
    :goto_8
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_11

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 630
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v5

    const-string v7, "  "

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 631
    .local v5, "strArray":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReResult()Ljava/lang/String;

    move-result-object v7

    const-string v9, "  "

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 632
    .local v7, "resultArray":[Ljava/lang/String;
    const/4 v9, 0x1

    .line 632
    .local v9, "j":I
    :goto_9
    array-length v11, v5

    if-ge v9, v11, :cond_11

    .line 633
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c00d2

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "  : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v5, v9

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 634
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c0149

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "  : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v7, v9

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 632
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 638
    .end local v5    # "strArray":[Ljava/lang/String;
    .end local v7    # "resultArray":[Ljava/lang/String;
    .end local v9    # "j":I
    :cond_11
    :goto_a
    const/4 v5, 0x1

    .line 638
    .local v5, "i":I
    :goto_b
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_1c

    .line 639
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v9}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 640
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f0c00d2

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v5, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v9}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 641
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeFlag()I

    move-result v7

    if-nez v7, :cond_14

    .line 642
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f0c0149

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v5, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v9}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 643
    .local v7, "printResult":Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v9}, Lcom/wen/fluorescence/database/TestResult;->getiValid()I

    move-result v9

    if-nez v9, :cond_12

    .line 644
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v11}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 646
    :cond_12
    invoke-virtual {v1, v7}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 649
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v9}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_13

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v9}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v11}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13

    .line 650
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v9}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v9

    const-string v11, "  "

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 651
    .local v9, "strArray":[Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v11}, Lcom/wen/fluorescence/database/TestResult;->getReResult()Ljava/lang/String;

    move-result-object v11

    const-string v13, "  "

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 652
    .local v11, "resultArray":[Ljava/lang/String;
    const/4 v13, 0x1

    .line 652
    .local v13, "j":I
    :goto_c
    array-length v14, v9

    if-ge v13, v14, :cond_13

    .line 653
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v16, v6

    const v6, 0x7f0c00d2

    invoke-virtual {v15, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 653
    .end local v6    # "organization":Ljava/lang/String;
    .local v16, "organization":Ljava/lang/String;
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  : "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v9, v13

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 654
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c0149

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "  : "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v11, v13

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 652
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v6, v16

    goto :goto_c

    .line 657
    .end local v7    # "printResult":Ljava/lang/String;
    .end local v9    # "strArray":[Ljava/lang/String;
    .end local v11    # "resultArray":[Ljava/lang/String;
    .end local v13    # "j":I
    .end local v16    # "organization":Ljava/lang/String;
    .restart local v6    # "organization":Ljava/lang/String;
    :cond_13
    move-object/from16 v16, v6

    .line 638
    .end local v6    # "organization":Ljava/lang/String;
    .restart local v16    # "organization":Ljava/lang/String;
    const v7, 0x7f0c0149

    const v11, 0x7f0c01c6

    goto/16 :goto_10

    .line 658
    .end local v16    # "organization":Ljava/lang/String;
    .restart local v6    # "organization":Ljava/lang/String;
    :cond_14
    move-object/from16 v16, v6

    .line 658
    .end local v6    # "organization":Ljava/lang/String;
    .restart local v16    # "organization":Ljava/lang/String;
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_19

    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v6

    const/4 v7, 0x7

    if-lt v6, v7, :cond_15

    goto/16 :goto_d

    .line 673
    :cond_15
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getIsShowResult()I

    move-result v6

    const/4 v9, 0x1

    if-ne v6, v9, :cond_17

    .line 674
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f0c0149

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v5, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v9}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 675
    .local v6, "printResult":Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v9}, Lcom/wen/fluorescence/database/TestResult;->getiValid()I

    move-result v9

    if-nez v9, :cond_16

    .line 676
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v11}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 678
    :cond_16
    invoke-virtual {v1, v6}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 680
    .end local v6    # "printResult":Ljava/lang/String;
    :cond_17
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getIsShowConclusion()I

    move-result v6

    const/4 v9, 0x1

    if-ne v6, v9, :cond_18

    .line 681
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f0c01c6

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v5, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v9}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeVerdict()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    goto :goto_e

    .line 686
    :cond_18
    const v11, 0x7f0c01c6

    goto :goto_e

    .line 671
    :cond_19
    const/4 v7, 0x7

    :goto_d
    const v11, 0x7f0c01c6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v13, 0x7f0c0149

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v5, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wen/fluorescence/database/TestResult;

    invoke-static {v9}, Lcom/wen/fluorescence/util/PublicFuction;->getShowResult(Lcom/wen/fluorescence/database/TestResult;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 686
    :goto_e
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1a

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v9}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1a

    .line 687
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v6

    const-string v9, "  "

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 688
    .local v6, "strArray":[Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v9}, Lcom/wen/fluorescence/database/TestResult;->getReResult()Ljava/lang/String;

    move-result-object v9

    const-string v13, "  "

    invoke-virtual {v9, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 689
    .local v9, "resultArray":[Ljava/lang/String;
    const/4 v13, 0x1

    .line 689
    .restart local v13    # "j":I
    :goto_f
    array-length v14, v6

    if-ge v13, v14, :cond_1a

    .line 690
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v7, 0x7f0c00d2

    invoke-virtual {v15, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "  : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v15, v6, v13

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 691
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v7, 0x7f0c0149

    invoke-virtual {v15, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "  : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v15, v9, v13

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 689
    add-int/lit8 v13, v13, 0x1

    const/4 v7, 0x7

    goto :goto_f

    .line 638
    .end local v6    # "strArray":[Ljava/lang/String;
    .end local v9    # "resultArray":[Ljava/lang/String;
    .end local v13    # "j":I
    :cond_1a
    const v7, 0x7f0c0149

    goto :goto_10

    .line 638
    .end local v16    # "organization":Ljava/lang/String;
    .local v6, "organization":Ljava/lang/String;
    :cond_1b
    move-object/from16 v16, v6

    const v7, 0x7f0c0149

    const v11, 0x7f0c01c6

    .line 638
    .end local v6    # "organization":Ljava/lang/String;
    .restart local v16    # "organization":Ljava/lang/String;
    :goto_10
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v6, v16

    goto/16 :goto_b

    .line 753
    .end local v5    # "i":I
    .end local v16    # "organization":Ljava/lang/String;
    .restart local v6    # "organization":Ljava/lang/String;
    :cond_1c
    move-object/from16 v16, v6

    .line 753
    .end local v6    # "organization":Ljava/lang/String;
    .restart local v16    # "organization":Ljava/lang/String;
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v5

    const v6, 0x7f0c0142

    const/4 v7, 0x2

    if-le v5, v7, :cond_22

    .line 754
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeFlag()I

    move-result v5

    if-nez v5, :cond_28

    .line 755
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v9}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

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

    invoke-virtual {v1, v5}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 757
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1e

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1e

    .line 758
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v5

    const-string v7, "  "

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 759
    .local v5, "strArray":[Ljava/lang/String;
    const/4 v7, 0x1

    .line 759
    .local v7, "j":I
    :goto_11
    array-length v9, v5

    if-ge v7, v9, :cond_1e

    .line 760
    const/4 v9, 0x0

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v11}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v9

    aget-object v11, v5, v7

    invoke-static {v2, v8, v10, v9, v11}, Lcom/wen/fluorescence/util/PublicFuction;->getUnitRange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 761
    .local v9, "unitRange":Ljava/lang/String;
    const-string v11, "F200"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u591a\u5355\u4f4d\u8303\u56f4\uff1a"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    if-eqz v9, :cond_1d

    const-string v11, ""

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1d

    .line 763
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v13, v5, v7

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 759
    .end local v9    # "unitRange":Ljava/lang/String;
    :cond_1d
    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    .line 768
    .end local v5    # "strArray":[Ljava/lang/String;
    .end local v7    # "j":I
    :cond_1e
    const/4 v5, 0x1

    .line 768
    .local v5, "j":I
    :goto_12
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_28

    .line 769
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/wen/fluorescence/database/DBManager;->queryRangeMin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 770
    .local v7, "min2":Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v9}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/wen/fluorescence/database/DBManager;->queryRangeMax(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 771
    .local v9, "max2":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v13}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1f

    .line 772
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " - "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 774
    .local v11, "range2":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v14}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v14}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 778
    .end local v11    # "range2":Ljava/lang/String;
    :cond_1f
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v11}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_21

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v11}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v13}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_21

    .line 779
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v11}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v11

    const-string v13, "  "

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 780
    .local v11, "strArray":[Ljava/lang/String;
    const/4 v13, 0x1

    .line 780
    .local v13, "k":I
    :goto_13
    array-length v14, v11

    if-ge v13, v14, :cond_21

    .line 781
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v14}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v14

    aget-object v15, v11, v13

    invoke-static {v2, v7, v9, v14, v15}, Lcom/wen/fluorescence/util/PublicFuction;->getUnitRange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 782
    .local v14, "unitRange":Ljava/lang/String;
    const-string v15, "F200"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v7

    const-string v7, "\u591a\u5355\u4f4d\u8303\u56f4\uff1a"

    .line 782
    .end local v7    # "min2":Ljava/lang/String;
    .local v17, "min2":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    if-eqz v14, :cond_20

    const-string v6, ""

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_20

    .line 784
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v11, v13

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v15, 0x7f0c0142

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 780
    .end local v14    # "unitRange":Ljava/lang/String;
    :cond_20
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v7, v17

    const v6, 0x7f0c0142

    goto :goto_13

    .line 768
    .end local v9    # "max2":Ljava/lang/String;
    .end local v11    # "strArray":[Ljava/lang/String;
    .end local v13    # "k":I
    .end local v17    # "min2":Ljava/lang/String;
    :cond_21
    add-int/lit8 v5, v5, 0x1

    const v6, 0x7f0c0142

    goto/16 :goto_12

    .line 791
    .end local v5    # "j":I
    :cond_22
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeFlag()I

    move-result v5

    const/4 v7, 0x1

    if-gt v5, v7, :cond_28

    .line 792
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v9}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0c0142

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

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

    invoke-virtual {v1, v5}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 794
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_24

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_24

    .line 795
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 796
    .local v5, "strArray":[Ljava/lang/String;
    move v6, v7

    .line 796
    .local v6, "j":I
    :goto_14
    array-length v9, v5

    if-ge v6, v9, :cond_24

    .line 797
    const/4 v9, 0x0

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v11}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v11

    aget-object v13, v5, v6

    invoke-static {v2, v8, v10, v11, v13}, Lcom/wen/fluorescence/util/PublicFuction;->getUnitRange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 798
    .local v11, "unitRange":Ljava/lang/String;
    const-string v13, "F200"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u591a\u5355\u4f4d\u8303\u56f4\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    if-eqz v11, :cond_23

    const-string v13, ""

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_23

    .line 800
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v14, v5, v6

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c0142

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 796
    .end local v11    # "unitRange":Ljava/lang/String;
    :cond_23
    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    .line 805
    .end local v5    # "strArray":[Ljava/lang/String;
    .end local v6    # "j":I
    :cond_24
    const/4 v9, 0x0

    move v5, v7

    .line 805
    .local v5, "j":I
    :goto_15
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_28

    .line 806
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/wen/fluorescence/database/DBManager;->queryRangeMin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 807
    .local v6, "min2":Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v11}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/wen/fluorescence/database/DBManager;->queryRangeMax(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 808
    .local v11, "max2":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v14}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_25

    .line 809
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 811
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

    const v7, 0x7f0c0142

    invoke-virtual {v15, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 815
    .end local v13    # "range2":Ljava/lang/String;
    :cond_25
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_27

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v13}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_27

    .line 816
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v7}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v7

    const-string v13, "  "

    invoke-virtual {v7, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 817
    .local v7, "strArray":[Ljava/lang/String;
    const/4 v13, 0x1

    .line 817
    .local v13, "k":I
    :goto_16
    array-length v14, v7

    if-ge v13, v14, :cond_27

    .line 818
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v14}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v14

    aget-object v15, v7, v13

    invoke-static {v2, v6, v11, v14, v15}, Lcom/wen/fluorescence/util/PublicFuction;->getUnitRange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 819
    .restart local v14    # "unitRange":Ljava/lang/String;
    const-string v15, "F200"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u591a\u5355\u4f4d\u8303\u56f4\uff1a"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    if-eqz v14, :cond_26

    const-string v3, ""

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 821
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v7, v13

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v15, 0x7f0c0142

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 821
    .end local v14    # "unitRange":Ljava/lang/String;
    goto :goto_17

    .line 817
    :cond_26
    const v15, 0x7f0c0142

    :goto_17
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, p2

    const/4 v9, 0x0

    goto :goto_16

    .line 805
    .end local v6    # "min2":Ljava/lang/String;
    .end local v7    # "strArray":[Ljava/lang/String;
    .end local v11    # "max2":Ljava/lang/String;
    .end local v13    # "k":I
    :cond_27
    const v15, 0x7f0c0142

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, p2

    const/4 v7, 0x1

    const/4 v9, 0x0

    goto/16 :goto_15

    .line 831
    .end local v5    # "j":I
    :cond_28
    const-string v3, "-------------------------------"

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 832
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

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 834
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

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 838
    const-string v3, "-------------------------------"

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 840
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0c0027

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 843
    const/16 v18, 0x0

    .line 843
    .local v18, "i":I
    :goto_18
    move/from16 v3, v18

    .line 843
    .end local v18    # "i":I
    .local v3, "i":I
    const/4 v5, 0x6

    if-ge v3, v5, :cond_29

    .line 844
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/printer/Printer;->PrintNewLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 843
    add-int/lit8 v18, v3, 0x1

    .line 843
    .end local v3    # "i":I
    .restart local v18    # "i":I
    goto :goto_18

    .line 846
    .end local v18    # "i":I
    :cond_29
    monitor-exit p0

    return-void

    .line 498
    .end local v8    # "min":Ljava/lang/String;
    .end local v10    # "max":Ljava/lang/String;
    .end local v12    # "range":Ljava/lang/String;
    .end local v16    # "organization":Ljava/lang/String;
    .end local p1    # "mContext":Landroid/content/Context;
    .end local p2    # "dbm":Lcom/wen/fluorescence/database/DBManager;
    .end local p3    # "result":Lcom/wen/fluorescence/database/TestResult;
    .end local p4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    :goto_19
    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized printeCow(Landroid/content/Context;Lcom/wen/fluorescence/database/DBManager;Lcom/wen/fluorescence/database/TestResult;Ljava/util/List;)V
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

    .line 858
    .local p4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    monitor-enter p0

    .line 858
    const/4 v4, 0x0

    move v5, v4

    .line 858
    .local v5, "i":I
    :goto_0
    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    .line 859
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/printer/Printer;->PrintNewLine()V

    .line 858
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 857
    .end local v5    # "i":I
    .end local p1    # "mContext":Landroid/content/Context;
    .end local p2    # "dbm":Lcom/wen/fluorescence/database/DBManager;
    .end local p3    # "result":Lcom/wen/fluorescence/database/TestResult;
    .end local p4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_b

    .line 862
    .restart local p1    # "mContext":Landroid/content/Context;
    .restart local p2    # "dbm":Lcom/wen/fluorescence/database/DBManager;
    .restart local p3    # "result":Lcom/wen/fluorescence/database/TestResult;
    .restart local p4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v5

    const-string v7, "OrganizationFragment"

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 863
    .local v5, "organization":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 864
    invoke-virtual {v1, v5}, Lcom/wen/fluorescence/printer/Printer;->PrintOrganization(Ljava/lang/String;)V

    .line 866
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/printer/Printer;->PrintNewLine()V

    .line 867
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getItemTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/wen/fluorescence/printer/Printer;->PrintHeaders(Ljava/lang/String;)V

    .line 868
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0153

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSampleNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 869
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0087

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSubmittingDivision()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 870
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c016f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 871
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0154

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSimpleType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 872
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0089

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getHolder5()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 873
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0086

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getInspectingTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 874
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0183

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSubmittingTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 875
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c002a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getTestTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 877
    const-string v7, "-------------------------------"

    invoke-virtual {v1, v7}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 880
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/wen/fluorescence/database/DBManager;->queryRangeMin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 881
    .local v7, "min":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/wen/fluorescence/database/DBManager;->queryRangeMax(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 883
    .local v8, "max":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 884
    .local v9, "range":Ljava/lang/String;
    const-string v10, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 886
    .local v10, "flag":Ljava/lang/String;
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    invoke-static {v8}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    cmpl-double v15, v11, v13

    if-lez v15, :cond_2

    .line 887
    const-string v11, "\u2191"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v10, v11

    .line 893
    :cond_2
    goto :goto_1

    .line 889
    :catch_0
    move-exception v0

    move-object v11, v0

    .line 890
    .local v11, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v12

    const-string v13, ">"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 891
    const-string v12, "\u2191"

    move-object v10, v12

    .line 895
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v11

    .line 897
    .local v11, "s1":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0c00d2

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    array-length v12, v12

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    array-length v14, v14

    sub-int/2addr v12, v14

    div-int/2addr v12, v6

    .line 898
    .local v12, "i1":I
    if-lez v12, :cond_5

    .line 899
    move-object v14, v11

    move v11, v4

    .line 899
    .local v11, "i":I
    .local v14, "s1":Ljava/lang/String;
    :goto_2
    if-ge v11, v12, :cond_4

    .line 900
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v14, v6

    .line 899
    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x2

    goto :goto_2

    .line 905
    .end local v11    # "i":I
    :cond_4
    move-object v11, v14

    .line 905
    .end local v14    # "s1":Ljava/lang/String;
    .local v11, "s1":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "       "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v13, 0x7f0c0149

    invoke-virtual {v15, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v6, v13}, Lcom/wen/fluorescence/printer/Printer;->PrintItemInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v6

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "     "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/wen/fluorescence/database/TestResult;

    invoke-static {v14}, Lcom/wen/fluorescence/util/PublicFuction;->getShowResult(Lcom/wen/fluorescence/database/TestResult;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v6, v13}, Lcom/wen/fluorescence/printer/Printer;->PrintItemInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    const/4 v13, 0x1

    .line 907
    .local v13, "i":I
    :goto_3
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_9

    .line 908
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v15}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 909
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v14}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v14

    .line 911
    .local v14, "s2":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v6, 0x7f0c00d2

    invoke-virtual {v15, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    array-length v15, v15

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    sub-int/2addr v15, v6

    const/4 v6, 0x2

    div-int/2addr v15, v6

    .line 912
    .local v15, "i2":I
    if-lez v15, :cond_7

    .line 913
    move-object v6, v14

    move v14, v4

    .line 913
    .local v6, "s2":Ljava/lang/String;
    .local v14, "j":I
    :goto_4
    if-ge v14, v15, :cond_6

    .line 914
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v17, v5

    const-string v5, " "

    .line 914
    .end local v5    # "organization":Ljava/lang/String;
    .local v17, "organization":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .line 913
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v5, v17

    const/4 v4, 0x0

    goto :goto_4

    .line 918
    .end local v14    # "j":I
    .end local v17    # "organization":Ljava/lang/String;
    .restart local v5    # "organization":Ljava/lang/String;
    :cond_6
    move-object/from16 v17, v5

    move-object v14, v6

    goto :goto_5

    .line 918
    .end local v6    # "s2":Ljava/lang/String;
    .local v14, "s2":Ljava/lang/String;
    :cond_7
    move-object/from16 v17, v5

    .line 918
    .end local v5    # "organization":Ljava/lang/String;
    .restart local v17    # "organization":Ljava/lang/String;
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "     "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wen/fluorescence/database/TestResult;

    invoke-static {v5}, Lcom/wen/fluorescence/util/PublicFuction;->getShowResult(Lcom/wen/fluorescence/database/TestResult;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v14, v4}, Lcom/wen/fluorescence/printer/Printer;->PrintItemInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    .end local v14    # "s2":Ljava/lang/String;
    .end local v15    # "i2":I
    goto :goto_6

    .line 907
    .end local v17    # "organization":Ljava/lang/String;
    .restart local v5    # "organization":Ljava/lang/String;
    :cond_8
    move-object/from16 v17, v5

    .line 907
    .end local v5    # "organization":Ljava/lang/String;
    .restart local v17    # "organization":Ljava/lang/String;
    :goto_6
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v5, v17

    const/4 v4, 0x0

    goto/16 :goto_3

    .line 921
    .end local v13    # "i":I
    .end local v17    # "organization":Ljava/lang/String;
    .restart local v5    # "organization":Ljava/lang/String;
    :cond_9
    move-object/from16 v17, v5

    .line 921
    .end local v5    # "organization":Ljava/lang/String;
    .restart local v17    # "organization":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/printer/Printer;->PrintNewLine()V

    .line 924
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v5}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeFlag()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_b

    .line 925
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v13}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c0142

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 926
    nop

    .line 926
    .local v5, "j":I
    :goto_7
    move v4, v5

    .line 926
    .end local v5    # "j":I
    .local v4, "j":I
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_b

    .line 927
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v13}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 928
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v5}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/wen/fluorescence/database/DBManager;->queryRangeMin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 929
    .local v5, "min2":Ljava/lang/String;
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v13}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/wen/fluorescence/database/DBManager;->queryRangeMax(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 930
    .local v13, "max2":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " - "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 932
    .local v6, "range2":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v14, v16

    check-cast v14, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v14}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v2, 0x7f0c0142

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ":"

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v14}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 932
    .end local v5    # "min2":Ljava/lang/String;
    .end local v6    # "range2":Ljava/lang/String;
    .end local v13    # "max2":Ljava/lang/String;
    goto :goto_8

    .line 926
    :cond_a
    move v2, v14

    :goto_8
    add-int/lit8 v5, v4, 0x1

    .line 926
    .end local v4    # "j":I
    .local v5, "j":I
    move v14, v2

    move-object/from16 v2, p2

    const/4 v6, 0x0

    goto/16 :goto_7

    .line 939
    .end local v5    # "j":I
    :cond_b
    const-string v2, "-------------------------------"

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 940
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0c0088

    move-object/from16 v5, p1

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\uff1a"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 942
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "-"

    goto :goto_9

    :cond_c
    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getName()Ljava/lang/String;

    move-result-object v4

    :goto_9
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 940
    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 943
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0c0106

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/wen/fluorescence/database/TestResult;->getNote()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 947
    const-string v2, "-------------------------------"

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 948
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0027

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 951
    const/16 v18, 0x0

    .line 951
    .local v18, "i":I
    :goto_a
    move/from16 v2, v18

    .line 951
    .end local v18    # "i":I
    .local v2, "i":I
    const/4 v4, 0x6

    if-ge v2, v4, :cond_d

    .line 952
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/printer/Printer;->PrintNewLine()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 951
    add-int/lit8 v18, v2, 0x1

    .line 951
    .end local v2    # "i":I
    .restart local v18    # "i":I
    goto :goto_a

    .line 954
    .end local v18    # "i":I
    :cond_d
    monitor-exit p0

    return-void

    .line 857
    .end local v7    # "min":Ljava/lang/String;
    .end local v8    # "max":Ljava/lang/String;
    .end local v9    # "range":Ljava/lang/String;
    .end local v10    # "flag":Ljava/lang/String;
    .end local v11    # "s1":Ljava/lang/String;
    .end local v12    # "i1":I
    .end local v17    # "organization":Ljava/lang/String;
    .end local p1    # "mContext":Landroid/content/Context;
    .end local p2    # "dbm":Lcom/wen/fluorescence/database/DBManager;
    .end local p3    # "result":Lcom/wen/fluorescence/database/TestResult;
    .end local p4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    :goto_b
    monitor-exit p0

    throw v2
.end method

.method public printerMax()V
    .locals 3

    .line 410
    const/4 v0, 0x0

    move v1, v0

    .line 410
    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 411
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/Printer;->PrintNewLine()V

    .line 410
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 413
    .end local v1    # "i":I
    :cond_0
    const-string v1, "\u66f2\u7ebf\u5168\u4e3a65535..."

    .line 414
    .local v1, "test":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 420
    nop

    .line 420
    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 421
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/Printer;->PrintNewLine()V

    .line 420
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 423
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public declared-synchronized printerQC(Landroid/content/Context;ZZZZ)V
    .locals 10
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "M0"    # Z
    .param p3, "M1"    # Z
    .param p4, "M2"    # Z
    .param p5, "M3"    # Z

    monitor-enter p0

    .line 968
    :try_start_0
    const-string v0, ""

    .line 968
    .local v0, "sTitle":Ljava/lang/String;
    const-string v1, ""

    .line 968
    .local v1, "normal":Ljava/lang/String;
    const-string v2, ""

    .line 969
    .local v2, "abnormal":Ljava/lang/String;
    const/4 v3, 0x0

    move v4, v3

    .line 969
    .local v4, "i":I
    :goto_0
    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 970
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/Printer;->PrintNewLine()V

    .line 969
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 972
    .end local v4    # "i":I
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c014e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 973
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0104

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 974
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0056

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 975
    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/printer/Printer;->PrintHeaders(Ljava/lang/String;)V

    .line 976
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/Printer;->PrintNewLine()V

    .line 977
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0c0129

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "yyyy-MM-dd"

    .line 978
    invoke-static {v5}, Lcom/wen/fluorescence/util/DateUtils;->getSysemDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 977
    invoke-virtual {p0, v4}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 979
    const-string v4, "-------------------------------"

    invoke-virtual {p0, v4}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 980
    const v4, 0x7f0c00d2

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "       "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v6, 0x7f0c0149

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/wen/fluorescence/printer/Printer;->PrintItemInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wen/fluorescence/util/Global;->getLanguage()I

    move-result v4

    const v5, 0x1a00001

    const v6, 0x7f0c0128

    const v7, 0x7f0c0126

    const v8, 0x7f0c015b

    const v9, 0x7f0c0127

    if-ne v4, v5, :cond_5

    .line 982
    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "     "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_1

    move-object v9, v1

    goto :goto_1

    :cond_1
    move-object v9, v2

    :goto_1
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/wen/fluorescence/printer/Printer;->PrintItemInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "     "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    move-object v8, v1

    goto :goto_2

    :cond_2
    move-object v8, v2

    :goto_2
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/wen/fluorescence/printer/Printer;->PrintItemInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "     "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_3

    move-object v7, v1

    goto :goto_3

    :cond_3
    move-object v7, v2

    :goto_3
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/wen/fluorescence/printer/Printer;->PrintItemInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "     "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_4

    move-object v6, v1

    goto :goto_4

    :cond_4
    move-object v6, v2

    :goto_4
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/wen/fluorescence/printer/Printer;->PrintItemInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 987
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "     "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_6

    move-object v9, v1

    goto :goto_5

    :cond_6
    move-object v9, v2

    :goto_5
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/wen/fluorescence/printer/Printer;->PrintItemInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_7

    move-object v8, v1

    goto :goto_6

    :cond_7
    move-object v8, v2

    :goto_6
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/wen/fluorescence/printer/Printer;->PrintItemInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "     "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_8

    move-object v7, v1

    goto :goto_7

    :cond_8
    move-object v7, v2

    :goto_7
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/wen/fluorescence/printer/Printer;->PrintItemInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "     "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_9

    move-object v6, v1

    goto :goto_8

    :cond_9
    move-object v6, v2

    :goto_8
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/wen/fluorescence/printer/Printer;->PrintItemInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    :goto_9
    const-string v4, "-------------------------------"

    invoke-virtual {p0, v4}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 994
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0c001a

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    .line 995
    invoke-static {v5}, Lcom/wen/fluorescence/util/DateUtils;->getSysemDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 994
    invoke-virtual {p0, v4}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 996
    nop

    .line 996
    .local v3, "i":I
    :goto_a
    const/4 v4, 0x4

    if-ge v3, v4, :cond_a

    .line 997
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/Printer;->PrintNewLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 996
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 999
    .end local v3    # "i":I
    :cond_a
    monitor-exit p0

    return-void

    .line 967
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

.method public printerTest()V
    .locals 3

    .line 375
    const/4 v0, 0x0

    move v1, v0

    .line 375
    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 376
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/Printer;->PrintNewLine()V

    .line 375
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 378
    .end local v1    # "i":I
    :cond_0
    const-string v1, "\u03b2\u8fd9\u51e0\u5929\u5fc3\u91cc\u03b1\u9887\u4e0d\u5b81\u9759\u03b2\u3002\u4eca\u665a\u5728\u9662\u5b50\u03b1\u91cc\u5750\u7740\u4e58\u51c9\uff0c"

    .line 379
    .local v1, "test":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 380
    const-string v1, "\u5ffd\u7136\u60f3\u8d77\u65e5\u65e5\u8d70\u8fc7\u7684\u8377\u5858\uff0c\u5728\u8fd9\u6ee1\u6708\u7684\u6708\u5149\u91cc\uff0c"

    .line 381
    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 382
    const-string v1, "\u603b\u8be5\u53e6\u6709\u4e00\u756a\u6837\u5b50\u5427\u3002\u6708\u4eae\u6e10\u6e10\u5730\u5347\u9ad8\u4e86\uff0c\u5899\u5916\u9a6c\u8def"

    .line 383
    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 384
    const-string v1, "\u4e0a\u5b69\u5b50\u4eec\u7684\u6b22\u7b11\uff0c\u5df2\u7ecf\u542c\u4e0d\u89c1\u4e86\uff1b\u59bb\u5728\u5c4b\u91cc\u62cd\u7740\u95f0\u513f\uff0c"

    .line 385
    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 386
    const-string v1, "\u8ff7\u8ff7\u7cca\u7cca\u5730\u54fc\u7740\u7720\u6b4c\u3002\u6211\u6084\u6084\u5730\u62ab\u4e86\u5927\u886b\uff0c\u5e26\u4e0a\u95e8\u51fa\u53bb\u3002\n"

    .line 387
    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 388
    nop

    .line 388
    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 389
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/Printer;->PrintNewLine()V

    .line 388
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 391
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public printerZero()V
    .locals 3

    .line 394
    const/4 v0, 0x0

    move v1, v0

    .line 394
    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 395
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/Printer;->PrintNewLine()V

    .line 394
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 397
    .end local v1    # "i":I
    :cond_0
    const-string v1, "\u66f2\u7ebf\u5168\u4e3a0......"

    .line 398
    .local v1, "test":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/printer/Printer;->PrintMessage(Ljava/lang/String;)V

    .line 404
    nop

    .line 404
    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 405
    invoke-virtual {p0}, Lcom/wen/fluorescence/printer/Printer;->PrintNewLine()V

    .line 404
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 407
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
