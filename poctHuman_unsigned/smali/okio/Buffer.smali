.class public final Lokio/Buffer;
.super Ljava/lang/Object;
.source "Buffer.java"

# interfaces
.implements Lokio/BufferedSource;
.implements Lokio/BufferedSink;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/Buffer$UnsafeCursor;
    }
.end annotation


# static fields
.field private static final DIGITS:[B

.field static final REPLACEMENT_CHARACTER:I = 0xfffd


# instance fields
.field head:Lokio/Segment;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field size:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lokio/Buffer;->DIGITS:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method private digest(Ljava/lang/String;)Lokio/ByteString;
    .locals 6
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 1712
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 1713
    .local v0, "messageDigest":Ljava/security/MessageDigest;
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v1, :cond_0

    .line 1714
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v1, v1, Lokio/Segment;->data:[B

    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v2, v2, Lokio/Segment;->pos:I

    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v3, v3, Lokio/Segment;->limit:I

    iget-object v4, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v4, v4, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 1715
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v1, v1, Lokio/Segment;->next:Lokio/Segment;

    .line 1715
    .local v1, "s":Lokio/Segment;
    :goto_0
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eq v1, v2, :cond_0

    .line 1716
    iget-object v2, v1, Lokio/Segment;->data:[B

    iget v3, v1, Lokio/Segment;->pos:I

    iget v4, v1, Lokio/Segment;->limit:I

    iget v5, v1, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 1715
    iget-object v2, v1, Lokio/Segment;->next:Lokio/Segment;

    move-object v1, v2

    goto :goto_0

    .line 1719
    .end local v1    # "s":Lokio/Segment;
    :cond_0
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1720
    .end local v0    # "messageDigest":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 1721
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method private hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;
    .locals 6
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "key"    # Lokio/ByteString;

    .line 1742
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 1743
    .local v0, "mac":Ljavax/crypto/Mac;
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Lokio/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 1744
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v1, :cond_0

    .line 1745
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v1, v1, Lokio/Segment;->data:[B

    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v2, v2, Lokio/Segment;->pos:I

    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v3, v3, Lokio/Segment;->limit:I

    iget-object v4, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v4, v4, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Mac;->update([BII)V

    .line 1746
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v1, v1, Lokio/Segment;->next:Lokio/Segment;

    .line 1746
    .local v1, "s":Lokio/Segment;
    :goto_0
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eq v1, v2, :cond_0

    .line 1747
    iget-object v2, v1, Lokio/Segment;->data:[B

    iget v3, v1, Lokio/Segment;->pos:I

    iget v4, v1, Lokio/Segment;->limit:I

    iget v5, v1, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v2, v3, v4}, Ljavax/crypto/Mac;->update([BII)V

    .line 1746
    iget-object v2, v1, Lokio/Segment;->next:Lokio/Segment;

    move-object v1, v2

    goto :goto_0

    .line 1750
    .end local v1    # "s":Lokio/Segment;
    :cond_0
    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v1

    invoke-static {v1}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1753
    .end local v0    # "mac":Ljavax/crypto/Mac;
    :catch_0
    move-exception v0

    .line 1754
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1751
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v0

    .line 1752
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method private rangeEquals(Lokio/Segment;ILokio/ByteString;II)Z
    .locals 5
    .param p1, "segment"    # Lokio/Segment;
    .param p2, "segmentPos"    # I
    .param p3, "bytes"    # Lokio/ByteString;
    .param p4, "bytesOffset"    # I
    .param p5, "bytesLimit"    # I

    .line 1643
    iget v0, p1, Lokio/Segment;->limit:I

    .line 1644
    .local v0, "segmentLimit":I
    iget-object v1, p1, Lokio/Segment;->data:[B

    .line 1646
    .local v1, "data":[B
    move-object v2, v1

    move-object v1, p1

    move p1, p4

    .line 1646
    .local v1, "segment":Lokio/Segment;
    .local v2, "data":[B
    .local p1, "i":I
    :goto_0
    if-ge p1, p5, :cond_2

    .line 1647
    if-ne p2, v0, :cond_0

    .line 1648
    iget-object v1, v1, Lokio/Segment;->next:Lokio/Segment;

    .line 1649
    iget-object v2, v1, Lokio/Segment;->data:[B

    .line 1650
    iget p2, v1, Lokio/Segment;->pos:I

    .line 1651
    iget v0, v1, Lokio/Segment;->limit:I

    .line 1654
    :cond_0
    aget-byte v3, v2, p2

    invoke-virtual {p3, p1}, Lokio/ByteString;->getByte(I)B

    move-result v4

    if-eq v3, v4, :cond_1

    .line 1655
    const/4 v3, 0x0

    return v3

    .line 1658
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 1659
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1662
    .end local p1    # "i":I
    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private readFrom(Ljava/io/InputStream;JZ)V
    .locals 9
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "byteCount"    # J
    .param p4, "forever"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_2

    if-eqz p4, :cond_1

    goto :goto_1

    .line 267
    :cond_1
    return-void

    .line 256
    :cond_2
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v0

    .line 257
    .local v0, "tail":Lokio/Segment;
    iget v1, v0, Lokio/Segment;->limit:I

    rsub-int v1, v1, 0x2000

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 258
    .local v1, "maxToCopy":I
    iget-object v2, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->limit:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 259
    .local v2, "bytesRead":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 260
    if-eqz p4, :cond_3

    return-void

    .line 261
    :cond_3
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 263
    :cond_4
    iget v3, v0, Lokio/Segment;->limit:I

    add-int/2addr v3, v2

    iput v3, v0, Lokio/Segment;->limit:I

    .line 264
    iget-wide v3, p0, Lokio/Buffer;->size:J

    int-to-long v5, v2

    add-long v7, v3, v5

    iput-wide v7, p0, Lokio/Buffer;->size:J

    .line 265
    int-to-long v3, v2

    sub-long v0, p2, v3

    .line 266
    .end local v1    # "maxToCopy":I
    .end local v2    # "bytesRead":I
    .end local p2    # "byteCount":J
    .local v0, "byteCount":J
    nop

    .line 255
    move-wide p2, v0

    goto :goto_0
.end method


# virtual methods
.method public buffer()Lokio/Buffer;
    .locals 0

    .line 71
    return-object p0
.end method

.method public final clear()V
    .locals 2

    .line 930
    :try_start_0
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 933
    nop

    .line 934
    return-void

    .line 931
    :catch_0
    move-exception v0

    .line 932
    .local v0, "e":Ljava/io/EOFException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lokio/Buffer;
    .locals 6

    .line 1814
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 1815
    .local v0, "result":Lokio/Buffer;
    iget-wide v1, p0, Lokio/Buffer;->size:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    return-object v0

    .line 1817
    :cond_0
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-virtual {v1}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v1

    iput-object v1, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1818
    iget-object v1, v0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v3, v0, Lokio/Buffer;->head:Lokio/Segment;

    iput-object v3, v2, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v3, v1, Lokio/Segment;->next:Lokio/Segment;

    .line 1819
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1819
    .local v1, "s":Lokio/Segment;
    :goto_0
    iget-object v1, v1, Lokio/Segment;->next:Lokio/Segment;

    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eq v1, v2, :cond_1

    .line 1820
    iget-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    invoke-virtual {v1}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    .line 1819
    goto :goto_0

    .line 1822
    .end local v1    # "s":Lokio/Segment;
    :cond_1
    iget-wide v1, p0, Lokio/Buffer;->size:J

    iput-wide v1, v0, Lokio/Buffer;->size:J

    .line 1823
    return-object v0
.end method

.method public close()V
    .locals 0

    .line 1673
    return-void
.end method

.method public final completeSegmentByteCount()J
    .locals 7

    .line 275
    iget-wide v0, p0, Lokio/Buffer;->size:J

    .line 276
    .local v0, "result":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 279
    :cond_0
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    .line 280
    .local v2, "tail":Lokio/Segment;
    iget v3, v2, Lokio/Segment;->limit:I

    const/16 v4, 0x2000

    if-ge v3, v4, :cond_1

    iget-boolean v3, v2, Lokio/Segment;->owner:Z

    if-eqz v3, :cond_1

    .line 281
    iget v3, v2, Lokio/Segment;->limit:I

    iget v4, v2, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long v5, v0, v3

    .line 284
    .end local v0    # "result":J
    .local v5, "result":J
    move-wide v0, v5

    .line 284
    .end local v5    # "result":J
    .restart local v0    # "result":J
    :cond_1
    return-wide v0
.end method

.method public final copyTo(Ljava/io/OutputStream;)Lokio/Buffer;
    .locals 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    iget-wide v4, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->copyTo(Ljava/io/OutputStream;JJ)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public final copyTo(Ljava/io/OutputStream;JJ)Lokio/Buffer;
    .locals 9
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "offset"    # J
    .param p4, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    iget-wide v2, p0, Lokio/Buffer;->size:J

    move-wide v4, p2

    move-wide v6, p4

    invoke-static/range {v2 .. v7}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 160
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_1

    return-object p0

    .line 163
    :cond_1
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 164
    .local v2, "s":Lokio/Segment;
    :goto_0
    iget v3, v2, Lokio/Segment;->limit:I

    iget v4, v2, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    cmp-long v5, p2, v3

    if-ltz v5, :cond_2

    .line 165
    iget v3, v2, Lokio/Segment;->limit:I

    iget v4, v2, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long v5, p2, v3

    .line 164
    .end local p2    # "offset":J
    .local v5, "offset":J
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    .line 163
    move-wide p2, v5

    goto :goto_0

    .line 169
    .end local v5    # "offset":J
    .restart local p2    # "offset":J
    :cond_2
    :goto_1
    cmp-long v3, p4, v0

    if-lez v3, :cond_3

    .line 170
    iget v3, v2, Lokio/Segment;->pos:I

    int-to-long v3, v3

    add-long v5, v3, p2

    long-to-int v3, v5

    .line 171
    .local v3, "pos":I
    iget v4, v2, Lokio/Segment;->limit:I

    sub-int/2addr v4, v3

    int-to-long v4, v4

    invoke-static {v4, v5, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    .line 172
    .local v4, "toCopy":I
    iget-object v5, v2, Lokio/Segment;->data:[B

    invoke-virtual {p1, v5, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 173
    int-to-long v5, v4

    sub-long v7, p4, v5

    .line 174
    .end local p4    # "byteCount":J
    .local v7, "byteCount":J
    const-wide/16 p2, 0x0

    .line 169
    .end local v3    # "pos":I
    .end local v4    # "toCopy":I
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    move-wide p4, v7

    goto :goto_1

    .line 177
    .end local v7    # "byteCount":J
    .restart local p4    # "byteCount":J
    :cond_3
    return-object p0
.end method

.method public final copyTo(Lokio/Buffer;JJ)Lokio/Buffer;
    .locals 8
    .param p1, "out"    # Lokio/Buffer;
    .param p2, "offset"    # J
    .param p4, "byteCount"    # J

    .line 182
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_0
    iget-wide v2, p0, Lokio/Buffer;->size:J

    move-wide v4, p2

    move-wide v6, p4

    invoke-static/range {v2 .. v7}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 184
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_1

    return-object p0

    .line 186
    :cond_1
    iget-wide v2, p1, Lokio/Buffer;->size:J

    add-long v4, v2, p4

    iput-wide v4, p1, Lokio/Buffer;->size:J

    .line 189
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 190
    .local v2, "s":Lokio/Segment;
    :goto_0
    iget v3, v2, Lokio/Segment;->limit:I

    iget v4, v2, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    cmp-long v5, p2, v3

    if-ltz v5, :cond_2

    .line 191
    iget v3, v2, Lokio/Segment;->limit:I

    iget v4, v2, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long v5, p2, v3

    .line 190
    .end local p2    # "offset":J
    .local v5, "offset":J
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    .line 189
    move-wide p2, v5

    goto :goto_0

    .line 195
    .end local v5    # "offset":J
    .restart local p2    # "offset":J
    :cond_2
    :goto_1
    cmp-long v3, p4, v0

    if-lez v3, :cond_4

    .line 196
    invoke-virtual {v2}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v3

    .line 197
    .local v3, "copy":Lokio/Segment;
    iget v4, v3, Lokio/Segment;->pos:I

    int-to-long v4, v4

    add-long v6, v4, p2

    long-to-int v4, v6

    iput v4, v3, Lokio/Segment;->pos:I

    .line 198
    iget v4, v3, Lokio/Segment;->pos:I

    long-to-int v5, p4

    add-int/2addr v4, v5

    iget v5, v3, Lokio/Segment;->limit:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Lokio/Segment;->limit:I

    .line 199
    iget-object v4, p1, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v4, :cond_3

    .line 200
    iput-object v3, v3, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    iput-object v3, p1, Lokio/Buffer;->head:Lokio/Segment;

    goto :goto_2

    .line 202
    :cond_3
    iget-object v4, p1, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v4, v4, Lokio/Segment;->prev:Lokio/Segment;

    invoke-virtual {v4, v3}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    .line 204
    :goto_2
    iget v4, v3, Lokio/Segment;->limit:I

    iget v5, v3, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    sub-long v6, p4, v4

    .line 205
    .end local p4    # "byteCount":J
    .local v6, "byteCount":J
    const-wide/16 p2, 0x0

    .line 195
    .end local v3    # "copy":Lokio/Segment;
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    move-wide p4, v6

    goto :goto_1

    .line 208
    .end local v6    # "byteCount":J
    .restart local p4    # "byteCount":J
    :cond_4
    return-object p0
.end method

.method public emit()Lokio/BufferedSink;
    .locals 0

    .line 105
    return-object p0
.end method

.method public emitCompleteSegments()Lokio/Buffer;
    .locals 0

    .line 101
    return-object p0
.end method

.method public bridge synthetic emitCompleteSegments()Lokio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lokio/Buffer;->emitCompleteSegments()Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 17
    .param p1, "o"    # Ljava/lang/Object;

    move-object/from16 v0, p0

    .line 1759
    move-object/from16 v1, p1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 1760
    :cond_0
    instance-of v3, v1, Lokio/Buffer;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    return v4

    .line 1761
    :cond_1
    move-object v3, v1

    check-cast v3, Lokio/Buffer;

    .line 1762
    .local v3, "that":Lokio/Buffer;
    iget-wide v5, v0, Lokio/Buffer;->size:J

    iget-wide v7, v3, Lokio/Buffer;->size:J

    cmp-long v9, v5, v7

    if-eqz v9, :cond_2

    return v4

    .line 1763
    :cond_2
    iget-wide v5, v0, Lokio/Buffer;->size:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_3

    return v2

    .line 1765
    :cond_3
    iget-object v5, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1766
    .local v5, "sa":Lokio/Segment;
    iget-object v6, v3, Lokio/Buffer;->head:Lokio/Segment;

    .line 1767
    .local v6, "sb":Lokio/Segment;
    iget v9, v5, Lokio/Segment;->pos:I

    .line 1768
    .local v9, "posA":I
    iget v10, v6, Lokio/Segment;->pos:I

    .line 1770
    .local v10, "posB":I
    nop

    .line 1770
    .local v7, "pos":J
    :goto_0
    iget-wide v11, v0, Lokio/Buffer;->size:J

    cmp-long v13, v7, v11

    if-gez v13, :cond_8

    .line 1771
    iget v11, v5, Lokio/Segment;->limit:I

    sub-int/2addr v11, v9

    iget v12, v6, Lokio/Segment;->limit:I

    sub-int/2addr v12, v10

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    int-to-long v11, v11

    .line 1773
    .local v11, "count":J
    move v13, v10

    move v10, v9

    move v9, v4

    .line 1773
    .local v9, "i":I
    .local v10, "posA":I
    .local v13, "posB":I
    :goto_1
    int-to-long v14, v9

    cmp-long v16, v14, v11

    if-gez v16, :cond_5

    .line 1774
    iget-object v14, v5, Lokio/Segment;->data:[B

    add-int/lit8 v15, v10, 0x1

    .line 1774
    .local v15, "posA":I
    aget-byte v10, v14, v10

    .line 1774
    .end local v10    # "posA":I
    iget-object v14, v6, Lokio/Segment;->data:[B

    add-int/lit8 v16, v13, 0x1

    .line 1774
    .local v16, "posB":I
    aget-byte v13, v14, v13

    .line 1774
    .end local v13    # "posB":I
    if-eq v10, v13, :cond_4

    return v4

    .line 1773
    :cond_4
    add-int/lit8 v9, v9, 0x1

    move v10, v15

    move/from16 v13, v16

    goto :goto_1

    .line 1777
    .end local v9    # "i":I
    .end local v15    # "posA":I
    .end local v16    # "posB":I
    .restart local v10    # "posA":I
    .restart local v13    # "posB":I
    :cond_5
    iget v9, v5, Lokio/Segment;->limit:I

    if-ne v10, v9, :cond_6

    .line 1778
    iget-object v5, v5, Lokio/Segment;->next:Lokio/Segment;

    .line 1779
    iget v9, v5, Lokio/Segment;->pos:I

    .line 1779
    .end local v10    # "posA":I
    .local v9, "posA":I
    goto :goto_2

    .line 1782
    .end local v9    # "posA":I
    .restart local v10    # "posA":I
    :cond_6
    move v9, v10

    .line 1782
    .end local v10    # "posA":I
    .restart local v9    # "posA":I
    :goto_2
    iget v10, v6, Lokio/Segment;->limit:I

    if-ne v13, v10, :cond_7

    .line 1783
    iget-object v6, v6, Lokio/Segment;->next:Lokio/Segment;

    .line 1784
    iget v10, v6, Lokio/Segment;->pos:I

    .line 1784
    .end local v13    # "posB":I
    .local v10, "posB":I
    goto :goto_3

    .line 1770
    .end local v10    # "posB":I
    .restart local v13    # "posB":I
    :cond_7
    move v10, v13

    .line 1770
    .end local v13    # "posB":I
    .restart local v10    # "posB":I
    :goto_3
    add-long v13, v7, v11

    .line 1770
    .end local v7    # "pos":J
    .local v13, "pos":J
    move-wide v7, v13

    goto :goto_0

    .line 1788
    .end local v11    # "count":J
    .end local v13    # "pos":J
    :cond_8
    return v2
.end method

.method public exhausted()Z
    .locals 5

    .line 109
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public flush()V
    .locals 0

    .line 1666
    return-void
.end method

.method public getBuffer()Lokio/Buffer;
    .locals 0

    .line 75
    return-object p0
.end method

.method public final getByte(J)B
    .locals 6
    .param p1, "pos"    # J

    .line 310
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 311
    iget-wide v0, p0, Lokio/Buffer;->size:J

    sub-long v2, v0, p1

    cmp-long v0, v2, p1

    if-lez v0, :cond_1

    .line 312
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 313
    .local v0, "s":Lokio/Segment;
    :goto_0
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    .line 314
    .local v1, "segmentByteCount":I
    int-to-long v2, v1

    cmp-long v4, p1, v2

    if-gez v4, :cond_0

    iget-object v2, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->pos:I

    long-to-int v4, p1

    add-int/2addr v3, v4

    aget-byte v2, v2, v3

    return v2

    .line 315
    :cond_0
    int-to-long v2, v1

    sub-long v4, p1, v2

    .line 312
    .end local v1    # "segmentByteCount":I
    .end local p1    # "pos":J
    .local v4, "pos":J
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-wide p1, v4

    goto :goto_0

    .line 318
    .end local v0    # "s":Lokio/Segment;
    .end local v4    # "pos":J
    .restart local p1    # "pos":J
    :cond_1
    iget-wide v0, p0, Lokio/Buffer;->size:J

    sub-long v2, p1, v0

    .line 319
    .end local p1    # "pos":J
    .local v2, "pos":J
    iget-object p1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object p1, p1, Lokio/Segment;->prev:Lokio/Segment;

    .line 320
    .local p1, "s":Lokio/Segment;
    :goto_1
    iget p2, p1, Lokio/Segment;->limit:I

    iget v0, p1, Lokio/Segment;->pos:I

    sub-int/2addr p2, v0

    int-to-long v0, p2

    add-long v4, v2, v0

    .line 321
    .end local v2    # "pos":J
    .restart local v4    # "pos":J
    const-wide/16 v0, 0x0

    cmp-long p2, v4, v0

    if-ltz p2, :cond_2

    iget-object p2, p1, Lokio/Segment;->data:[B

    iget v0, p1, Lokio/Segment;->pos:I

    long-to-int v1, v4

    add-int/2addr v0, v1

    aget-byte p2, p2, v0

    return p2

    .line 319
    :cond_2
    iget-object p1, p1, Lokio/Segment;->prev:Lokio/Segment;

    move-wide v2, v4

    goto :goto_1
.end method

.method public hashCode()I
    .locals 6

    .line 1792
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1793
    .local v0, "s":Lokio/Segment;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 1794
    :cond_0
    const/4 v1, 0x1

    .line 1796
    .local v1, "result":I
    :cond_1
    iget v2, v0, Lokio/Segment;->pos:I

    .line 1796
    .local v2, "pos":I
    iget v3, v0, Lokio/Segment;->limit:I

    .line 1796
    .local v3, "limit":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 1797
    const/16 v4, 0x1f

    mul-int/2addr v4, v1

    iget-object v5, v0, Lokio/Segment;->data:[B

    aget-byte v5, v5, v2

    add-int v1, v4, v5

    .line 1796
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1799
    .end local v2    # "pos":I
    .end local v3    # "limit":I
    :cond_2
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    .line 1800
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-ne v0, v2, :cond_1

    .line 1801
    return v1
.end method

.method public final hmacSha1(Lokio/ByteString;)Lokio/ByteString;
    .locals 1
    .param p1, "key"    # Lokio/ByteString;

    .line 1727
    const-string v0, "HmacSHA1"

    invoke-direct {p0, v0, p1}, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final hmacSha256(Lokio/ByteString;)Lokio/ByteString;
    .locals 1
    .param p1, "key"    # Lokio/ByteString;

    .line 1732
    const-string v0, "HmacSHA256"

    invoke-direct {p0, v0, p1}, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final hmacSha512(Lokio/ByteString;)Lokio/ByteString;
    .locals 1
    .param p1, "key"    # Lokio/ByteString;

    .line 1737
    const-string v0, "HmacSHA512"

    invoke-direct {p0, v0, p1}, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(B)J
    .locals 6
    .param p1, "b"    # B

    .line 1413
    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(BJ)J
    .locals 6
    .param p1, "b"    # B
    .param p2, "fromIndex"    # J

    .line 1421
    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(BJJ)J
    .locals 18
    .param p1, "b"    # B
    .param p2, "fromIndex"    # J
    .param p4, "toIndex"    # J

    move-object/from16 v0, p0

    .line 1425
    const-wide/16 v5, 0x0

    cmp-long v7, p2, v5

    if-ltz v7, :cond_9

    cmp-long v7, p4, p2

    if-gez v7, :cond_0

    goto/16 :goto_5

    .line 1430
    :cond_0
    iget-wide v7, v0, Lokio/Buffer;->size:J

    cmp-long v9, p4, v7

    if-lez v9, :cond_1

    iget-wide v3, v0, Lokio/Buffer;->size:J

    .line 1430
    .end local p4    # "toIndex":J
    .local v3, "toIndex":J
    goto :goto_0

    .line 1431
    .end local v3    # "toIndex":J
    .restart local p4    # "toIndex":J
    :cond_1
    move-wide/from16 v3, p4

    .line 1431
    .end local p4    # "toIndex":J
    .restart local v3    # "toIndex":J
    :goto_0
    cmp-long v7, p2, v3

    const-wide/16 v8, -0x1

    if-nez v7, :cond_2

    return-wide v8

    .line 1439
    :cond_2
    iget-object v7, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1440
    .local v7, "s":Lokio/Segment;
    if-nez v7, :cond_3

    .line 1442
    return-wide v8

    .line 1443
    :cond_3
    iget-wide v10, v0, Lokio/Buffer;->size:J

    sub-long v12, v10, p2

    cmp-long v10, v12, p2

    if-gez v10, :cond_5

    .line 1445
    iget-wide v5, v0, Lokio/Buffer;->size:J

    .line 1446
    .local v5, "offset":J
    :goto_1
    cmp-long v10, v5, p2

    if-lez v10, :cond_4

    .line 1447
    iget-object v7, v7, Lokio/Segment;->prev:Lokio/Segment;

    .line 1448
    iget v10, v7, Lokio/Segment;->limit:I

    iget v11, v7, Lokio/Segment;->pos:I

    sub-int/2addr v10, v11

    int-to-long v10, v10

    sub-long v12, v5, v10

    .line 1445
    .end local v5    # "offset":J
    .local v12, "offset":J
    move-wide v5, v12

    goto :goto_1

    .line 1461
    .end local v12    # "offset":J
    .restart local v5    # "offset":J
    :cond_4
    move-wide/from16 v1, p2

    goto :goto_3

    .line 1452
    .end local v5    # "offset":J
    :cond_5
    nop

    .line 1453
    .restart local v5    # "offset":J
    :goto_2
    iget v10, v7, Lokio/Segment;->limit:I

    iget v11, v7, Lokio/Segment;->pos:I

    sub-int/2addr v10, v11

    int-to-long v10, v10

    add-long v12, v5, v10

    move-wide v10, v12

    .line 1453
    .local v10, "nextOffset":J
    cmp-long v14, v12, p2

    if-gez v14, :cond_4

    .line 1454
    iget-object v7, v7, Lokio/Segment;->next:Lokio/Segment;

    .line 1455
    move-wide v5, v10

    goto :goto_2

    .line 1461
    .end local v10    # "nextOffset":J
    .end local p2    # "fromIndex":J
    .local v1, "fromIndex":J
    :goto_3
    cmp-long v10, v5, v3

    if-gez v10, :cond_8

    .line 1462
    iget-object v10, v7, Lokio/Segment;->data:[B

    .line 1463
    .local v10, "data":[B
    iget v11, v7, Lokio/Segment;->limit:I

    int-to-long v11, v11

    iget v13, v7, Lokio/Segment;->pos:I

    int-to-long v13, v13

    add-long v15, v13, v3

    sub-long v13, v15, v5

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v11, v11

    .line 1464
    .local v11, "limit":I
    iget v12, v7, Lokio/Segment;->pos:I

    int-to-long v12, v12

    add-long v14, v12, v1

    sub-long v12, v14, v5

    long-to-int v12, v12

    .line 1465
    .local v12, "pos":I
    :goto_4
    if-ge v12, v11, :cond_7

    .line 1466
    aget-byte v13, v10, v12

    move/from16 v14, p1

    if-ne v13, v14, :cond_6

    .line 1467
    iget v8, v7, Lokio/Segment;->pos:I

    sub-int v8, v12, v8

    int-to-long v8, v8

    add-long v15, v8, v5

    return-wide v15

    .line 1465
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 1472
    :cond_7
    move/from16 v14, p1

    iget v13, v7, Lokio/Segment;->limit:I

    iget v15, v7, Lokio/Segment;->pos:I

    sub-int/2addr v13, v15

    int-to-long v8, v13

    add-long v15, v5, v8

    .line 1473
    .end local v5    # "offset":J
    .local v15, "offset":J
    move-wide v1, v15

    .line 1474
    iget-object v7, v7, Lokio/Segment;->next:Lokio/Segment;

    .line 1475
    .end local v10    # "data":[B
    .end local v11    # "limit":I
    .end local v12    # "pos":I
    nop

    .line 1461
    move-wide v5, v15

    const-wide/16 v8, -0x1

    goto :goto_3

    .line 1477
    .end local v15    # "offset":J
    .restart local v5    # "offset":J
    :cond_8
    move/from16 v14, p1

    const-wide/16 v8, -0x1

    return-wide v8

    .line 1426
    .end local v1    # "fromIndex":J
    .end local v3    # "toIndex":J
    .end local v5    # "offset":J
    .end local v7    # "s":Lokio/Segment;
    .restart local p2    # "fromIndex":J
    .restart local p4    # "toIndex":J
    :cond_9
    :goto_5
    move/from16 v14, p1

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "size=%s fromIndex=%s toIndex=%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-wide v9, v0, Lokio/Buffer;->size:J

    .line 1427
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const/4 v8, 0x2

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public indexOf(Lokio/ByteString;)J
    .locals 2
    .param p1, "bytes"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1481
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->indexOf(Lokio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(Lokio/ByteString;J)J
    .locals 23
    .param p1, "bytes"    # Lokio/ByteString;
    .param p2, "fromIndex"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    .line 1485
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "bytes is empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1486
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-gez v4, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "fromIndex < 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1494
    :cond_1
    iget-object v4, v6, Lokio/Buffer;->head:Lokio/Segment;

    .line 1495
    .local v4, "s":Lokio/Segment;
    const-wide/16 v7, -0x1

    if-nez v4, :cond_2

    .line 1497
    return-wide v7

    .line 1498
    :cond_2
    iget-wide v9, v6, Lokio/Buffer;->size:J

    sub-long v11, v9, p2

    cmp-long v5, v11, p2

    if-gez v5, :cond_3

    .line 1500
    iget-wide v2, v6, Lokio/Buffer;->size:J

    .line 1501
    .local v2, "offset":J
    :goto_0
    cmp-long v5, v2, p2

    if-lez v5, :cond_4

    .line 1502
    iget-object v4, v4, Lokio/Segment;->prev:Lokio/Segment;

    .line 1503
    iget v5, v4, Lokio/Segment;->limit:I

    iget v9, v4, Lokio/Segment;->pos:I

    sub-int/2addr v5, v9

    int-to-long v9, v5

    sub-long v11, v2, v9

    .line 1500
    .end local v2    # "offset":J
    .local v11, "offset":J
    move-wide v2, v11

    goto :goto_0

    .line 1507
    .end local v11    # "offset":J
    :cond_3
    nop

    .line 1508
    .restart local v2    # "offset":J
    :goto_1
    iget v5, v4, Lokio/Segment;->limit:I

    iget v9, v4, Lokio/Segment;->pos:I

    sub-int/2addr v5, v9

    int-to-long v9, v5

    add-long v11, v2, v9

    move-wide v9, v11

    .line 1508
    .local v9, "nextOffset":J
    cmp-long v5, v11, p2

    if-gez v5, :cond_4

    .line 1509
    iget-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    .line 1510
    move-wide v2, v9

    goto :goto_1

    .line 1517
    .end local v9    # "nextOffset":J
    :cond_4
    const/4 v5, 0x0

    move-object/from16 v9, p1

    invoke-virtual {v9, v5}, Lokio/ByteString;->getByte(I)B

    move-result v10

    .line 1518
    .local v10, "b0":B
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v11

    .line 1519
    .local v11, "bytesSize":I
    iget-wide v12, v6, Lokio/Buffer;->size:J

    int-to-long v14, v11

    sub-long v16, v12, v14

    const-wide/16 v12, 0x1

    add-long v14, v16, v12

    move-wide/from16 v16, p2

    move-wide v12, v2

    move-object v5, v4

    .line 1520
    .end local v2    # "offset":J
    .end local v4    # "s":Lokio/Segment;
    .end local p2    # "fromIndex":J
    .local v5, "s":Lokio/Segment;
    .local v12, "offset":J
    .local v14, "resultLimit":J
    .local v16, "fromIndex":J
    :goto_2
    cmp-long v0, v12, v14

    if-gez v0, :cond_8

    .line 1522
    iget-object v4, v5, Lokio/Segment;->data:[B

    .line 1523
    .local v4, "data":[B
    iget v0, v5, Lokio/Segment;->limit:I

    int-to-long v0, v0

    iget v2, v5, Lokio/Segment;->pos:I

    int-to-long v2, v2

    add-long v18, v2, v14

    sub-long v2, v18, v12

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v3, v0

    .line 1524
    .local v3, "segmentLimit":I
    iget v0, v5, Lokio/Segment;->pos:I

    int-to-long v0, v0

    add-long v18, v0, v16

    sub-long v0, v18, v12

    long-to-int v0, v0

    .line 1524
    .local v0, "pos":I
    :goto_3
    move v2, v0

    .line 1524
    .end local v0    # "pos":I
    .local v2, "pos":I
    if-ge v2, v3, :cond_7

    .line 1525
    aget-byte v0, v4, v2

    if-ne v0, v10, :cond_5

    add-int/lit8 v18, v2, 0x1

    const/16 v19, 0x1

    move-object v0, v6

    move-object v1, v5

    move/from16 v20, v2

    move/from16 v2, v18

    .line 1525
    .end local v2    # "pos":I
    .local v20, "pos":I
    move/from16 v18, v3

    move-object v3, v9

    .line 1525
    .end local v3    # "segmentLimit":I
    .local v18, "segmentLimit":I
    move-object/from16 v21, v4

    move/from16 v4, v19

    .line 1525
    .end local v4    # "data":[B
    .local v21, "data":[B
    move-object v7, v5

    move v5, v11

    .line 1525
    .end local v5    # "s":Lokio/Segment;
    .local v7, "s":Lokio/Segment;
    invoke-direct/range {v0 .. v5}, Lokio/Buffer;->rangeEquals(Lokio/Segment;ILokio/ByteString;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1526
    iget v0, v7, Lokio/Segment;->pos:I

    sub-int v2, v20, v0

    int-to-long v0, v2

    add-long v2, v0, v12

    return-wide v2

    .line 1524
    .end local v7    # "s":Lokio/Segment;
    .end local v18    # "segmentLimit":I
    .end local v20    # "pos":I
    .end local v21    # "data":[B
    .restart local v2    # "pos":I
    .restart local v3    # "segmentLimit":I
    .restart local v4    # "data":[B
    .restart local v5    # "s":Lokio/Segment;
    :cond_5
    move/from16 v20, v2

    move/from16 v18, v3

    move-object/from16 v21, v4

    move-object v7, v5

    .line 1524
    .end local v2    # "pos":I
    .end local v3    # "segmentLimit":I
    .end local v4    # "data":[B
    .end local v5    # "s":Lokio/Segment;
    .restart local v7    # "s":Lokio/Segment;
    .restart local v18    # "segmentLimit":I
    .restart local v20    # "pos":I
    .restart local v21    # "data":[B
    :cond_6
    add-int/lit8 v0, v20, 0x1

    .line 1524
    .end local v20    # "pos":I
    .restart local v0    # "pos":I
    move-object v5, v7

    move/from16 v3, v18

    move-object/from16 v4, v21

    const-wide/16 v7, -0x1

    goto :goto_3

    .line 1531
    .end local v0    # "pos":I
    .end local v7    # "s":Lokio/Segment;
    .end local v18    # "segmentLimit":I
    .end local v21    # "data":[B
    .restart local v3    # "segmentLimit":I
    .restart local v4    # "data":[B
    .restart local v5    # "s":Lokio/Segment;
    :cond_7
    move/from16 v18, v3

    move-object/from16 v21, v4

    move-object v7, v5

    .line 1531
    .end local v3    # "segmentLimit":I
    .end local v4    # "data":[B
    .end local v5    # "s":Lokio/Segment;
    .restart local v7    # "s":Lokio/Segment;
    .restart local v18    # "segmentLimit":I
    .restart local v21    # "data":[B
    iget v0, v7, Lokio/Segment;->limit:I

    iget v1, v7, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long v2, v12, v0

    .line 1532
    .end local v12    # "offset":J
    .local v2, "offset":J
    move-wide/from16 v16, v2

    .line 1533
    iget-object v5, v7, Lokio/Segment;->next:Lokio/Segment;

    .line 1534
    .end local v7    # "s":Lokio/Segment;
    .end local v18    # "segmentLimit":I
    .end local v21    # "data":[B
    .restart local v5    # "s":Lokio/Segment;
    nop

    .line 1519
    move-wide v12, v2

    const-wide/16 v7, -0x1

    goto :goto_2

    .line 1536
    .end local v2    # "offset":J
    .restart local v12    # "offset":J
    :cond_8
    move-object v7, v5

    .line 1536
    .end local v5    # "s":Lokio/Segment;
    .restart local v7    # "s":Lokio/Segment;
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public indexOfElement(Lokio/ByteString;)J
    .locals 2
    .param p1, "targetBytes"    # Lokio/ByteString;

    .line 1540
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->indexOfElement(Lokio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOfElement(Lokio/ByteString;J)J
    .locals 18
    .param p1, "targetBytes"    # Lokio/ByteString;
    .param p2, "fromIndex"    # J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1544
    const-wide/16 v4, 0x0

    cmp-long v6, p2, v4

    if-gez v6, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "fromIndex < 0"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1552
    :cond_0
    iget-object v6, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1553
    .local v6, "s":Lokio/Segment;
    const-wide/16 v7, -0x1

    if-nez v6, :cond_1

    .line 1555
    return-wide v7

    .line 1556
    :cond_1
    iget-wide v9, v0, Lokio/Buffer;->size:J

    sub-long v11, v9, p2

    cmp-long v9, v11, p2

    if-gez v9, :cond_2

    .line 1558
    iget-wide v4, v0, Lokio/Buffer;->size:J

    .line 1559
    .local v4, "offset":J
    :goto_0
    cmp-long v9, v4, p2

    if-lez v9, :cond_3

    .line 1560
    iget-object v6, v6, Lokio/Segment;->prev:Lokio/Segment;

    .line 1561
    iget v9, v6, Lokio/Segment;->limit:I

    iget v10, v6, Lokio/Segment;->pos:I

    sub-int/2addr v9, v10

    int-to-long v9, v9

    sub-long v11, v4, v9

    .line 1558
    .end local v4    # "offset":J
    .local v11, "offset":J
    move-wide v4, v11

    goto :goto_0

    .line 1565
    .end local v11    # "offset":J
    :cond_2
    nop

    .line 1566
    .restart local v4    # "offset":J
    :goto_1
    iget v9, v6, Lokio/Segment;->limit:I

    iget v10, v6, Lokio/Segment;->pos:I

    sub-int/2addr v9, v10

    int-to-long v9, v9

    add-long v11, v4, v9

    move-wide v9, v11

    .line 1566
    .local v9, "nextOffset":J
    cmp-long v13, v11, p2

    if-gez v13, :cond_3

    .line 1567
    iget-object v6, v6, Lokio/Segment;->next:Lokio/Segment;

    .line 1568
    move-wide v4, v9

    goto :goto_1

    .line 1576
    .end local v9    # "nextOffset":J
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v9

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-ne v9, v10, :cond_8

    .line 1578
    invoke-virtual {v1, v11}, Lokio/ByteString;->getByte(I)B

    move-result v9

    .line 1579
    .local v9, "b0":B
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Lokio/ByteString;->getByte(I)B

    move-result v10

    move-wide/from16 v2, p2

    .line 1580
    .end local p2    # "fromIndex":J
    .local v2, "fromIndex":J
    .local v10, "b1":B
    :goto_2
    iget-wide v11, v0, Lokio/Buffer;->size:J

    cmp-long v13, v4, v11

    if-gez v13, :cond_7

    .line 1581
    iget-object v11, v6, Lokio/Segment;->data:[B

    .line 1582
    .local v11, "data":[B
    iget v12, v6, Lokio/Segment;->pos:I

    int-to-long v12, v12

    add-long v14, v12, v2

    sub-long v12, v14, v4

    long-to-int v12, v12

    .line 1582
    .local v12, "pos":I
    iget v13, v6, Lokio/Segment;->limit:I

    .line 1582
    .local v13, "limit":I
    :goto_3
    if-ge v12, v13, :cond_6

    .line 1583
    aget-byte v14, v11, v12

    .line 1584
    .local v14, "b":I
    if-eq v14, v9, :cond_5

    if-ne v14, v10, :cond_4

    goto :goto_4

    .line 1582
    .end local v14    # "b":I
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1585
    .restart local v14    # "b":I
    :cond_5
    :goto_4
    iget v7, v6, Lokio/Segment;->pos:I

    sub-int v7, v12, v7

    int-to-long v7, v7

    add-long v15, v7, v4

    return-wide v15

    .line 1590
    .end local v12    # "pos":I
    .end local v13    # "limit":I
    .end local v14    # "b":I
    :cond_6
    iget v12, v6, Lokio/Segment;->limit:I

    iget v13, v6, Lokio/Segment;->pos:I

    sub-int/2addr v12, v13

    int-to-long v12, v12

    add-long v14, v4, v12

    .line 1591
    .end local v4    # "offset":J
    .local v14, "offset":J
    move-wide v2, v14

    .line 1592
    iget-object v6, v6, Lokio/Segment;->next:Lokio/Segment;

    .line 1593
    .end local v11    # "data":[B
    nop

    .line 1579
    move-wide v4, v14

    goto :goto_2

    .line 1594
    .end local v9    # "b0":B
    .end local v10    # "b1":B
    .end local v14    # "offset":J
    .restart local v4    # "offset":J
    :cond_7
    goto :goto_8

    .line 1596
    .end local v2    # "fromIndex":J
    .restart local p2    # "fromIndex":J
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->internalArray()[B

    move-result-object v9

    move-wide/from16 v2, p2

    .line 1597
    .end local p2    # "fromIndex":J
    .restart local v2    # "fromIndex":J
    .local v9, "targetByteArray":[B
    :goto_5
    iget-wide v12, v0, Lokio/Buffer;->size:J

    cmp-long v10, v4, v12

    if-gez v10, :cond_c

    .line 1598
    iget-object v10, v6, Lokio/Segment;->data:[B

    .line 1599
    .local v10, "data":[B
    iget v12, v6, Lokio/Segment;->pos:I

    int-to-long v12, v12

    add-long v14, v12, v2

    sub-long v12, v14, v4

    long-to-int v12, v12

    .line 1599
    .restart local v12    # "pos":I
    iget v13, v6, Lokio/Segment;->limit:I

    .line 1599
    .restart local v13    # "limit":I
    :goto_6
    if-ge v12, v13, :cond_b

    .line 1600
    aget-byte v14, v10, v12

    .line 1601
    .local v14, "b":I
    array-length v15, v9

    :goto_7
    if-ge v11, v15, :cond_a

    aget-byte v7, v9, v11

    .line 1602
    .local v7, "t":B
    if-ne v14, v7, :cond_9

    iget v8, v6, Lokio/Segment;->pos:I

    sub-int v8, v12, v8

    int-to-long v0, v8

    add-long v15, v0, v4

    return-wide v15

    .line 1601
    .end local v7    # "t":B
    :cond_9
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v7, -0x1

    goto :goto_7

    .line 1599
    .end local v14    # "b":I
    :cond_a
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v7, -0x1

    const/4 v11, 0x0

    goto :goto_6

    .line 1607
    .end local v12    # "pos":I
    .end local v13    # "limit":I
    :cond_b
    iget v0, v6, Lokio/Segment;->limit:I

    iget v1, v6, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long v7, v4, v0

    .line 1608
    .end local v4    # "offset":J
    .local v7, "offset":J
    move-wide v2, v7

    .line 1609
    iget-object v6, v6, Lokio/Segment;->next:Lokio/Segment;

    .line 1610
    .end local v10    # "data":[B
    nop

    .line 1596
    move-wide v4, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v7, -0x1

    const/4 v11, 0x0

    goto :goto_5

    .line 1613
    .end local v7    # "offset":J
    .end local v9    # "targetByteArray":[B
    .restart local v4    # "offset":J
    :cond_c
    :goto_8
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public inputStream()Ljava/io/InputStream;
    .locals 1

    .line 125
    new-instance v0, Lokio/Buffer$2;

    invoke-direct {v0, p0}, Lokio/Buffer$2;-><init>(Lokio/Buffer;)V

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 1669
    const/4 v0, 0x1

    return v0
.end method

.method public final md5()Lokio/ByteString;
    .locals 1

    .line 1692
    const-string v0, "MD5"

    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public outputStream()Ljava/io/OutputStream;
    .locals 1

    .line 79
    new-instance v0, Lokio/Buffer$1;

    invoke-direct {v0, p0}, Lokio/Buffer$1;-><init>(Lokio/Buffer;)V

    return-object v0
.end method

.method public peek()Lokio/BufferedSource;
    .locals 1

    .line 121
    new-instance v0, Lokio/PeekSource;

    invoke-direct {v0, p0}, Lokio/PeekSource;-><init>(Lokio/BufferedSource;)V

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    return-object v0
.end method

.method public rangeEquals(JLokio/ByteString;)Z
    .locals 6
    .param p1, "offset"    # J
    .param p3, "bytes"    # Lokio/ByteString;

    .line 1617
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v5

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->rangeEquals(JLokio/ByteString;II)Z

    move-result v0

    return v0
.end method

.method public rangeEquals(JLokio/ByteString;II)Z
    .locals 6
    .param p1, "offset"    # J
    .param p3, "bytes"    # Lokio/ByteString;
    .param p4, "bytesOffset"    # I
    .param p5, "byteCount"    # I

    .line 1622
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v0, 0x0

    if-ltz v2, :cond_3

    if-ltz p4, :cond_3

    if-ltz p5, :cond_3

    iget-wide v1, p0, Lokio/Buffer;->size:J

    sub-long v3, v1, p1

    int-to-long v1, p5

    cmp-long v5, v3, v1

    if-ltz v5, :cond_3

    .line 1626
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v1

    sub-int/2addr v1, p4

    if-ge v1, p5, :cond_0

    goto :goto_1

    .line 1629
    :cond_0
    move v1, v0

    .line 1629
    .local v1, "i":I
    :goto_0
    if-ge v1, p5, :cond_2

    .line 1630
    int-to-long v2, v1

    add-long v4, p1, v2

    invoke-virtual {p0, v4, v5}, Lokio/Buffer;->getByte(J)B

    move-result v2

    add-int v3, p4, v1

    invoke-virtual {p3, v3}, Lokio/ByteString;->getByte(I)B

    move-result v3

    if-eq v2, v3, :cond_1

    .line 1631
    return v0

    .line 1629
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1634
    .end local v1    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 1627
    :cond_3
    :goto_1
    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 8
    .param p1, "sink"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 907
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 908
    .local v0, "s":Lokio/Segment;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    return v1

    .line 910
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget v2, v0, Lokio/Segment;->limit:I

    iget v3, v0, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 911
    .local v1, "toCopy":I
    iget-object v2, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->pos:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 913
    iget v2, v0, Lokio/Segment;->pos:I

    add-int/2addr v2, v1

    iput v2, v0, Lokio/Segment;->pos:I

    .line 914
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v4, v1

    sub-long v6, v2, v4

    iput-wide v6, p0, Lokio/Buffer;->size:J

    .line 916
    iget v2, v0, Lokio/Segment;->pos:I

    iget v3, v0, Lokio/Segment;->limit:I

    if-ne v2, v3, :cond_1

    .line 917
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 918
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 921
    :cond_1
    return v1
.end method

.method public read([B)I
    .locals 2
    .param p1, "sink"    # [B

    .line 875
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 8
    .param p1, "sink"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    .line 888
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 890
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 891
    .local v0, "s":Lokio/Segment;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    return v1

    .line 892
    :cond_0
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 893
    .local v1, "toCopy":I
    iget-object v2, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->pos:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 895
    iget v2, v0, Lokio/Segment;->pos:I

    add-int/2addr v2, v1

    iput v2, v0, Lokio/Segment;->pos:I

    .line 896
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v4, v1

    sub-long v6, v2, v4

    iput-wide v6, p0, Lokio/Buffer;->size:J

    .line 898
    iget v2, v0, Lokio/Segment;->pos:I

    iget v3, v0, Lokio/Segment;->limit:I

    if-ne v2, v3, :cond_1

    .line 899
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 900
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 903
    :cond_1
    return v1
.end method

.method public read(Lokio/Buffer;J)J
    .locals 5
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J

    .line 1404
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1405
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1406
    :cond_1
    iget-wide v2, p0, Lokio/Buffer;->size:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_2

    const-wide/16 v0, -0x1

    return-wide v0

    .line 1407
    :cond_2
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v2, p2, v0

    if-lez v2, :cond_3

    iget-wide p2, p0, Lokio/Buffer;->size:J

    .line 1408
    :cond_3
    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 1409
    return-wide p2
.end method

.method public readAll(Lokio/Sink;)J
    .locals 5
    .param p1, "sink"    # Lokio/Sink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 683
    iget-wide v0, p0, Lokio/Buffer;->size:J

    .line 684
    .local v0, "byteCount":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 685
    invoke-interface {p1, p0, v0, v1}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .line 687
    :cond_0
    return-wide v0
.end method

.method public final readAndWriteUnsafe()Lokio/Buffer$UnsafeCursor;
    .locals 1

    .line 1857
    new-instance v0, Lokio/Buffer$UnsafeCursor;

    invoke-direct {v0}, Lokio/Buffer$UnsafeCursor;-><init>()V

    invoke-virtual {p0, v0}, Lokio/Buffer;->readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    move-result-object v0

    return-object v0
.end method

.method public final readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;
    .locals 2
    .param p1, "unsafeCursor"    # Lokio/Buffer$UnsafeCursor;

    .line 1861
    iget-object v0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-eqz v0, :cond_0

    .line 1862
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already attached to a buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1865
    :cond_0
    iput-object p0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    .line 1866
    const/4 v0, 0x1

    iput-boolean v0, p1, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    .line 1867
    return-object p1
.end method

.method public readByte()B
    .locals 11

    .line 288
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_0
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 291
    .local v0, "segment":Lokio/Segment;
    iget v1, v0, Lokio/Segment;->pos:I

    .line 292
    .local v1, "pos":I
    iget v2, v0, Lokio/Segment;->limit:I

    .line 294
    .local v2, "limit":I
    iget-object v3, v0, Lokio/Segment;->data:[B

    .line 295
    .local v3, "data":[B
    add-int/lit8 v4, v1, 0x1

    .line 295
    .local v4, "pos":I
    aget-byte v1, v3, v1

    .line 296
    .local v1, "b":B
    iget-wide v5, p0, Lokio/Buffer;->size:J

    const-wide/16 v7, 0x1

    sub-long v9, v5, v7

    iput-wide v9, p0, Lokio/Buffer;->size:J

    .line 298
    if-ne v4, v2, :cond_1

    .line 299
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v5

    iput-object v5, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 300
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    .line 302
    :cond_1
    iput v4, v0, Lokio/Segment;->pos:I

    .line 305
    :goto_0
    return v1
.end method

.method public readByteArray()[B
    .locals 2

    .line 857
    :try_start_0
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 858
    :catch_0
    move-exception v0

    .line 859
    .local v0, "e":Ljava/io/EOFException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public readByteArray(J)[B
    .locals 6
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 864
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 865
    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 866
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 869
    :cond_0
    long-to-int v0, p1

    new-array v0, v0, [B

    .line 870
    .local v0, "result":[B
    invoke-virtual {p0, v0}, Lokio/Buffer;->readFully([B)V

    .line 871
    return-object v0
.end method

.method public readByteString()Lokio/ByteString;
    .locals 2

    .line 548
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/Buffer;->readByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public readByteString(J)Lokio/ByteString;
    .locals 2
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 552
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public readDecimalLong()J
    .locals 21

    .line 434
    move-object/from16 v0, p0

    iget-wide v1, v0, Lokio/Buffer;->size:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "size == 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 437
    :cond_0
    const-wide/16 v1, 0x0

    .line 438
    .local v1, "value":J
    const/4 v3, 0x0

    .line 439
    .local v3, "seen":I
    const/4 v4, 0x0

    .line 440
    .local v4, "negative":Z
    const/4 v5, 0x0

    .line 442
    .local v5, "done":Z
    const-wide v6, -0xcccccccccccccccL

    .line 443
    .local v6, "overflowZone":J
    const-wide/16 v8, -0x7

    .line 446
    .local v8, "overflowDigit":J
    :goto_0
    iget-object v10, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 448
    .local v10, "segment":Lokio/Segment;
    iget-object v11, v10, Lokio/Segment;->data:[B

    .line 449
    .local v11, "data":[B
    iget v12, v10, Lokio/Segment;->pos:I

    .line 450
    .local v12, "pos":I
    iget v13, v10, Lokio/Segment;->limit:I

    .line 452
    .local v13, "limit":I
    :goto_1
    if-ge v12, v13, :cond_8

    .line 453
    aget-byte v14, v11, v12

    .line 454
    .local v14, "b":B
    const/16 v15, 0x30

    if-lt v14, v15, :cond_5

    const/16 v15, 0x39

    if-gt v14, v15, :cond_5

    .line 455
    const/16 v15, 0x30

    sub-int/2addr v15, v14

    .line 458
    .local v15, "digit":I
    cmp-long v16, v1, v6

    if-ltz v16, :cond_3

    cmp-long v16, v1, v6

    if-nez v16, :cond_1

    move/from16 v19, v5

    move-wide/from16 v17, v6

    int-to-long v5, v15

    .line 458
    .end local v5    # "done":Z
    .end local v6    # "overflowZone":J
    .local v17, "overflowZone":J
    .local v19, "done":Z
    cmp-long v7, v5, v8

    if-gez v7, :cond_2

    goto :goto_2

    .line 463
    .end local v17    # "overflowZone":J
    .end local v19    # "done":Z
    .restart local v5    # "done":Z
    .restart local v6    # "overflowZone":J
    :cond_1
    move/from16 v19, v5

    move-wide/from16 v17, v6

    .line 463
    .end local v5    # "done":Z
    .end local v6    # "overflowZone":J
    .restart local v17    # "overflowZone":J
    .restart local v19    # "done":Z
    :cond_2
    const-wide/16 v5, 0xa

    mul-long/2addr v1, v5

    .line 464
    int-to-long v5, v15

    add-long v15, v1, v5

    .line 465
    .end local v1    # "value":J
    .local v15, "value":J
    nop

    .line 452
    move-object/from16 v20, v11

    move-wide v1, v15

    goto :goto_3

    .line 459
    .end local v17    # "overflowZone":J
    .end local v19    # "done":Z
    .restart local v1    # "value":J
    .restart local v5    # "done":Z
    .restart local v6    # "overflowZone":J
    .local v15, "digit":I
    :cond_3
    move/from16 v19, v5

    move-wide/from16 v17, v6

    .line 459
    .end local v5    # "done":Z
    .end local v6    # "overflowZone":J
    .restart local v17    # "overflowZone":J
    .restart local v19    # "done":Z
    :goto_2
    new-instance v5, Lokio/Buffer;

    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    invoke-virtual {v5, v1, v2}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    move-result-object v5

    invoke-virtual {v5, v14}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v5

    .line 460
    .local v5, "buffer":Lokio/Buffer;
    if-nez v4, :cond_4

    invoke-virtual {v5}, Lokio/Buffer;->readByte()B

    .line 461
    :cond_4
    new-instance v6, Ljava/lang/NumberFormatException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v11

    const-string v11, "Number too large: "

    .line 461
    .end local v11    # "data":[B
    .local v20, "data":[B
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 465
    .end local v15    # "digit":I
    .end local v17    # "overflowZone":J
    .end local v19    # "done":Z
    .end local v20    # "data":[B
    .local v5, "done":Z
    .restart local v6    # "overflowZone":J
    .restart local v11    # "data":[B
    :cond_5
    move/from16 v19, v5

    move-wide/from16 v17, v6

    move-object/from16 v20, v11

    .line 465
    .end local v5    # "done":Z
    .end local v6    # "overflowZone":J
    .end local v11    # "data":[B
    .restart local v17    # "overflowZone":J
    .restart local v19    # "done":Z
    .restart local v20    # "data":[B
    const/16 v5, 0x2d

    if-ne v14, v5, :cond_6

    if-nez v3, :cond_6

    .line 466
    const/4 v4, 0x1

    .line 467
    const-wide/16 v5, 0x1

    sub-long v15, v8, v5

    .line 452
    .end local v8    # "overflowDigit":J
    .local v15, "overflowDigit":J
    move-wide v8, v15

    .line 452
    .end local v14    # "b":B
    .end local v15    # "overflowDigit":J
    .restart local v8    # "overflowDigit":J
    :goto_3
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v3, v3, 0x1

    .line 450
    move-wide/from16 v6, v17

    move/from16 v5, v19

    move-object/from16 v11, v20

    goto :goto_1

    .line 469
    .restart local v14    # "b":B
    :cond_6
    if-nez v3, :cond_7

    .line 470
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected leading [0-9] or \'-\' character but was 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 474
    :cond_7
    const/4 v5, 0x1

    .line 475
    .end local v19    # "done":Z
    .restart local v5    # "done":Z
    goto :goto_4

    .line 479
    .end local v14    # "b":B
    .end local v17    # "overflowZone":J
    .end local v20    # "data":[B
    .restart local v6    # "overflowZone":J
    .restart local v11    # "data":[B
    :cond_8
    move/from16 v19, v5

    move-wide/from16 v17, v6

    move-object/from16 v20, v11

    .line 479
    .end local v6    # "overflowZone":J
    .end local v11    # "data":[B
    .restart local v17    # "overflowZone":J
    .restart local v20    # "data":[B
    :goto_4
    if-ne v12, v13, :cond_9

    .line 480
    invoke-virtual {v10}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v6

    iput-object v6, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 481
    invoke-static {v10}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_5

    .line 483
    :cond_9
    iput v12, v10, Lokio/Segment;->pos:I

    .line 485
    .end local v10    # "segment":Lokio/Segment;
    .end local v12    # "pos":I
    .end local v13    # "limit":I
    .end local v20    # "data":[B
    :goto_5
    if-nez v5, :cond_b

    iget-object v6, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v6, :cond_a

    goto :goto_6

    .line 443
    :cond_a
    move-wide/from16 v6, v17

    goto/16 :goto_0

    .line 487
    :cond_b
    :goto_6
    iget-wide v6, v0, Lokio/Buffer;->size:J

    int-to-long v10, v3

    sub-long v12, v6, v10

    iput-wide v12, v0, Lokio/Buffer;->size:J

    .line 488
    if-eqz v4, :cond_c

    move-wide v6, v1

    goto :goto_7

    :cond_c
    neg-long v6, v1

    :goto_7
    return-wide v6
.end method

.method public final readFrom(Ljava/io/InputStream;)Lokio/Buffer;
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lokio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V

    .line 243
    return-object p0
.end method

.method public final readFrom(Ljava/io/InputStream;J)Lokio/Buffer;
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lokio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V

    .line 250
    return-object p0
.end method

.method public readFully(Lokio/Buffer;J)V
    .locals 3
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 675
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v2, v0, p2

    if-gez v2, :cond_0

    .line 676
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p1, p0, v0, v1}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 677
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 679
    :cond_0
    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 680
    return-void
.end method

.method public readFully([B)V
    .locals 3
    .param p1, "sink"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 879
    const/4 v0, 0x0

    .line 880
    .local v0, "offset":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 881
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->read([BII)I

    move-result v1

    .line 882
    .local v1, "read":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 883
    :cond_0
    add-int/2addr v0, v1

    .line 884
    .end local v1    # "read":I
    goto :goto_0

    .line 885
    :cond_1
    return-void
.end method

.method public readHexadecimalUnsignedLong()J
    .locals 17

    .line 492
    move-object/from16 v0, p0

    iget-wide v1, v0, Lokio/Buffer;->size:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "size == 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 494
    :cond_0
    const-wide/16 v1, 0x0

    .line 495
    .local v1, "value":J
    const/4 v5, 0x0

    .line 496
    .local v5, "seen":I
    const/4 v6, 0x0

    .line 499
    .local v6, "done":Z
    :cond_1
    iget-object v7, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 501
    .local v7, "segment":Lokio/Segment;
    iget-object v8, v7, Lokio/Segment;->data:[B

    .line 502
    .local v8, "data":[B
    iget v9, v7, Lokio/Segment;->pos:I

    .line 503
    .local v9, "pos":I
    iget v10, v7, Lokio/Segment;->limit:I

    .line 505
    .local v10, "limit":I
    :goto_0
    if-ge v9, v10, :cond_7

    .line 508
    aget-byte v11, v8, v9

    .line 509
    .local v11, "b":B
    const/16 v12, 0x30

    if-lt v11, v12, :cond_2

    const/16 v12, 0x39

    if-gt v11, v12, :cond_2

    .line 510
    add-int/lit8 v12, v11, -0x30

    .line 510
    .local v12, "digit":I
    :goto_1
    goto :goto_2

    .line 511
    .end local v12    # "digit":I
    :cond_2
    const/16 v12, 0x61

    if-lt v11, v12, :cond_3

    const/16 v12, 0x66

    if-gt v11, v12, :cond_3

    .line 512
    add-int/lit8 v12, v11, -0x61

    add-int/lit8 v12, v12, 0xa

    goto :goto_1

    .line 513
    :cond_3
    const/16 v12, 0x41

    if-lt v11, v12, :cond_5

    const/16 v12, 0x46

    if-gt v11, v12, :cond_5

    .line 514
    add-int/lit8 v12, v11, -0x41

    add-int/lit8 v12, v12, 0xa

    goto :goto_1

    .line 522
    .restart local v12    # "digit":I
    :goto_2
    nop

    .line 526
    const-wide/high16 v13, -0x1000000000000000L    # -3.105036184601418E231

    and-long v15, v1, v13

    cmp-long v13, v15, v3

    if-eqz v13, :cond_4

    .line 527
    new-instance v3, Lokio/Buffer;

    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    invoke-virtual {v3, v1, v2}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    move-result-object v3

    invoke-virtual {v3, v11}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v3

    .line 528
    .local v3, "buffer":Lokio/Buffer;
    new-instance v4, Ljava/lang/NumberFormatException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Number too large: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v4, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 531
    .end local v3    # "buffer":Lokio/Buffer;
    :cond_4
    const/4 v13, 0x4

    shl-long/2addr v1, v13

    .line 532
    int-to-long v13, v12

    or-long v11, v1, v13

    .line 505
    .end local v1    # "value":J
    .end local v12    # "digit":I
    .local v11, "value":J
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v5, v5, 0x1

    .line 503
    move-wide v1, v11

    goto :goto_0

    .line 516
    .restart local v1    # "value":J
    .local v11, "b":B
    :cond_5
    if-nez v5, :cond_6

    .line 517
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 521
    :cond_6
    const/4 v6, 0x1

    .line 522
    nop

    .line 535
    .end local v11    # "b":B
    :cond_7
    if-ne v9, v10, :cond_8

    .line 536
    invoke-virtual {v7}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v11

    iput-object v11, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 537
    invoke-static {v7}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_3

    .line 539
    :cond_8
    iput v9, v7, Lokio/Segment;->pos:I

    .line 541
    .end local v7    # "segment":Lokio/Segment;
    .end local v8    # "data":[B
    .end local v9    # "pos":I
    .end local v10    # "limit":I
    :goto_3
    if-nez v6, :cond_9

    iget-object v7, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v7, :cond_1

    .line 543
    :cond_9
    iget-wide v3, v0, Lokio/Buffer;->size:J

    int-to-long v7, v5

    sub-long v9, v3, v7

    iput-wide v9, v0, Lokio/Buffer;->size:J

    .line 544
    return-wide v1
.end method

.method public readInt()I
    .locals 12

    .line 356
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x4

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lokio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_0
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 359
    .local v0, "segment":Lokio/Segment;
    iget v1, v0, Lokio/Segment;->pos:I

    .line 360
    .local v1, "pos":I
    iget v4, v0, Lokio/Segment;->limit:I

    .line 363
    .local v4, "limit":I
    sub-int v5, v4, v1

    const/4 v6, 0x4

    if-ge v5, v6, :cond_1

    .line 364
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    .line 365
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    .line 366
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    .line 367
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    .line 364
    return v2

    .line 370
    :cond_1
    iget-object v5, v0, Lokio/Segment;->data:[B

    .line 371
    .local v5, "data":[B
    add-int/lit8 v6, v1, 0x1

    .line 371
    .local v6, "pos":I
    aget-byte v1, v5, v1

    .line 371
    .end local v1    # "pos":I
    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v7, v6, 0x1

    .line 371
    .local v7, "pos":I
    aget-byte v6, v5, v6

    .line 371
    .end local v6    # "pos":I
    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v1, v6

    add-int/lit8 v6, v7, 0x1

    .line 371
    .restart local v6    # "pos":I
    aget-byte v7, v5, v7

    .line 371
    .end local v7    # "pos":I
    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v1, v7

    add-int/lit8 v7, v6, 0x1

    .line 371
    .restart local v7    # "pos":I
    aget-byte v6, v5, v6

    .line 371
    .end local v6    # "pos":I
    and-int/lit16 v6, v6, 0xff

    or-int/2addr v1, v6

    .line 375
    .local v1, "i":I
    iget-wide v8, p0, Lokio/Buffer;->size:J

    sub-long v10, v8, v2

    iput-wide v10, p0, Lokio/Buffer;->size:J

    .line 377
    if-ne v7, v4, :cond_2

    .line 378
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 379
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    .line 381
    :cond_2
    iput v7, v0, Lokio/Segment;->pos:I

    .line 384
    :goto_0
    return v1
.end method

.method public readIntLe()I
    .locals 1

    .line 426
    invoke-virtual {p0}, Lokio/Buffer;->readInt()I

    move-result v0

    invoke-static {v0}, Lokio/Util;->reverseBytesInt(I)I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 18

    .line 388
    move-object/from16 v0, p0

    iget-wide v1, v0, Lokio/Buffer;->size:J

    const-wide/16 v3, 0x8

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size < 8: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lokio/Buffer;->size:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 390
    :cond_0
    iget-object v1, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 391
    .local v1, "segment":Lokio/Segment;
    iget v2, v1, Lokio/Segment;->pos:I

    .line 392
    .local v2, "pos":I
    iget v5, v1, Lokio/Segment;->limit:I

    .line 395
    .local v5, "limit":I
    sub-int v6, v5, v2

    const/16 v7, 0x20

    const/16 v8, 0x8

    if-ge v6, v8, :cond_1

    .line 396
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->readInt()I

    move-result v3

    int-to-long v3, v3

    const-wide v8, 0xffffffffL

    and-long v10, v3, v8

    shl-long v3, v10, v7

    .line 397
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->readInt()I

    move-result v6

    int-to-long v6, v6

    and-long v10, v6, v8

    or-long v6, v3, v10

    .line 396
    return-wide v6

    .line 400
    :cond_1
    iget-object v6, v1, Lokio/Segment;->data:[B

    .line 401
    .local v6, "data":[B
    add-int/lit8 v9, v2, 0x1

    .line 401
    .local v9, "pos":I
    aget-byte v2, v6, v2

    .line 401
    .end local v2    # "pos":I
    int-to-long v10, v2

    const-wide/16 v12, 0xff

    and-long v14, v10, v12

    const/16 v2, 0x38

    shl-long v10, v14, v2

    add-int/lit8 v2, v9, 0x1

    .line 401
    .restart local v2    # "pos":I
    aget-byte v9, v6, v9

    .line 401
    .end local v9    # "pos":I
    int-to-long v14, v9

    and-long v16, v14, v12

    const/16 v9, 0x30

    shl-long v14, v16, v9

    or-long v16, v10, v14

    add-int/lit8 v9, v2, 0x1

    .line 401
    .restart local v9    # "pos":I
    aget-byte v2, v6, v2

    .line 401
    .end local v2    # "pos":I
    int-to-long v10, v2

    and-long v14, v10, v12

    const/16 v2, 0x28

    shl-long v10, v14, v2

    or-long v14, v16, v10

    add-int/lit8 v2, v9, 0x1

    .line 401
    .restart local v2    # "pos":I
    aget-byte v9, v6, v9

    .line 401
    .end local v9    # "pos":I
    int-to-long v9, v9

    and-long v16, v9, v12

    shl-long v9, v16, v7

    or-long v16, v14, v9

    add-int/lit8 v7, v2, 0x1

    .line 401
    .local v7, "pos":I
    aget-byte v2, v6, v2

    .line 401
    .end local v2    # "pos":I
    int-to-long v9, v2

    and-long v14, v9, v12

    const/16 v2, 0x18

    shl-long v9, v14, v2

    or-long v14, v16, v9

    add-int/lit8 v2, v7, 0x1

    .line 401
    .restart local v2    # "pos":I
    aget-byte v7, v6, v7

    .line 401
    .end local v7    # "pos":I
    int-to-long v9, v7

    and-long v16, v9, v12

    const/16 v7, 0x10

    shl-long v9, v16, v7

    or-long v16, v14, v9

    add-int/lit8 v7, v2, 0x1

    .line 401
    .restart local v7    # "pos":I
    aget-byte v2, v6, v2

    .line 401
    .end local v2    # "pos":I
    int-to-long v9, v2

    and-long v14, v9, v12

    shl-long v8, v14, v8

    or-long v10, v16, v8

    add-int/lit8 v2, v7, 0x1

    .line 401
    .restart local v2    # "pos":I
    aget-byte v7, v6, v7

    .line 401
    .end local v7    # "pos":I
    int-to-long v7, v7

    and-long v14, v7, v12

    or-long v7, v10, v14

    .line 409
    .local v7, "v":J
    iget-wide v9, v0, Lokio/Buffer;->size:J

    sub-long v11, v9, v3

    iput-wide v11, v0, Lokio/Buffer;->size:J

    .line 411
    if-ne v2, v5, :cond_2

    .line 412
    invoke-virtual {v1}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v3

    iput-object v3, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 413
    invoke-static {v1}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    .line 415
    :cond_2
    iput v2, v1, Lokio/Segment;->pos:I

    .line 418
    :goto_0
    return-wide v7
.end method

.method public readLongLe()J
    .locals 2

    .line 430
    invoke-virtual {p0}, Lokio/Buffer;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lokio/Util;->reverseBytesLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .locals 12

    .line 327
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lokio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_0
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 330
    .local v0, "segment":Lokio/Segment;
    iget v1, v0, Lokio/Segment;->pos:I

    .line 331
    .local v1, "pos":I
    iget v4, v0, Lokio/Segment;->limit:I

    .line 334
    .local v4, "limit":I
    sub-int v5, v4, v1

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    .line 335
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    .line 336
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    .line 337
    .local v2, "s":I
    int-to-short v3, v2

    return v3

    .line 340
    .end local v2    # "s":I
    :cond_1
    iget-object v5, v0, Lokio/Segment;->data:[B

    .line 341
    .local v5, "data":[B
    add-int/lit8 v6, v1, 0x1

    .line 341
    .local v6, "pos":I
    aget-byte v1, v5, v1

    .line 341
    .end local v1    # "pos":I
    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v7, v6, 0x1

    .line 341
    .local v7, "pos":I
    aget-byte v6, v5, v6

    .line 341
    .end local v6    # "pos":I
    and-int/lit16 v6, v6, 0xff

    or-int/2addr v1, v6

    .line 343
    .local v1, "s":I
    iget-wide v8, p0, Lokio/Buffer;->size:J

    sub-long v10, v8, v2

    iput-wide v10, p0, Lokio/Buffer;->size:J

    .line 345
    if-ne v7, v4, :cond_2

    .line 346
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 347
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    .line 349
    :cond_2
    iput v7, v0, Lokio/Segment;->pos:I

    .line 352
    :goto_0
    int-to-short v2, v1

    return v2
.end method

.method public readShortLe()S
    .locals 1

    .line 422
    invoke-virtual {p0}, Lokio/Buffer;->readShort()S

    move-result v0

    invoke-static {v0}, Lokio/Util;->reverseBytesShort(S)S

    move-result v0

    return v0
.end method

.method public readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6
    .param p1, "byteCount"    # J
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 711
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 712
    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 713
    :cond_0
    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 714
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 716
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_2

    const-string v0, ""

    return-object v0

    .line 718
    :cond_2
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 719
    .local v0, "s":Lokio/Segment;
    iget v1, v0, Lokio/Segment;->pos:I

    int-to-long v1, v1

    add-long v3, v1, p1

    iget v1, v0, Lokio/Segment;->limit:I

    int-to-long v1, v1

    cmp-long v5, v3, v1

    if-lez v5, :cond_3

    .line 721
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v2

    invoke-direct {v1, v2, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    .line 724
    :cond_3
    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->pos:I

    long-to-int v4, p1

    invoke-direct {v1, v2, v3, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 725
    .local v1, "result":Ljava/lang/String;
    iget v2, v0, Lokio/Segment;->pos:I

    int-to-long v2, v2

    add-long v4, v2, p1

    long-to-int v2, v4

    iput v2, v0, Lokio/Segment;->pos:I

    .line 726
    iget-wide v2, p0, Lokio/Buffer;->size:J

    sub-long v4, v2, p1

    iput-wide v4, p0, Lokio/Buffer;->size:J

    .line 728
    iget v2, v0, Lokio/Segment;->pos:I

    iget v3, v0, Lokio/Segment;->limit:I

    if-ne v2, v3, :cond_4

    .line 729
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 730
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 733
    :cond_4
    return-object v1
.end method

.method public readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 704
    :try_start_0
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, v0, v1, p1}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 705
    :catch_0
    move-exception v0

    .line 706
    .local v0, "e":Ljava/io/EOFException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final readUnsafe()Lokio/Buffer$UnsafeCursor;
    .locals 1

    .line 1843
    new-instance v0, Lokio/Buffer$UnsafeCursor;

    invoke-direct {v0}, Lokio/Buffer$UnsafeCursor;-><init>()V

    invoke-virtual {p0, v0}, Lokio/Buffer;->readUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    move-result-object v0

    return-object v0
.end method

.method public final readUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;
    .locals 2
    .param p1, "unsafeCursor"    # Lokio/Buffer$UnsafeCursor;

    .line 1847
    iget-object v0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-eqz v0, :cond_0

    .line 1848
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already attached to a buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1851
    :cond_0
    iput-object p0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    .line 1852
    const/4 v0, 0x0

    iput-boolean v0, p1, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    .line 1853
    return-object p1
.end method

.method public readUtf8()Ljava/lang/String;
    .locals 3

    .line 692
    :try_start_0
    iget-wide v0, p0, Lokio/Buffer;->size:J

    sget-object v2, Lokio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 693
    :catch_0
    move-exception v0

    .line 694
    .local v0, "e":Ljava/io/EOFException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public readUtf8(J)Ljava/lang/String;
    .locals 1
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 699
    sget-object v0, Lokio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8CodePoint()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 781
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 783
    :cond_0
    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v0

    .line 788
    .local v0, "b0":B
    and-int/lit16 v1, v0, 0x80

    const v2, 0xfffd

    if-nez v1, :cond_1

    .line 790
    and-int/lit8 v1, v0, 0x7f

    .line 791
    .local v1, "codePoint":I
    const/4 v3, 0x1

    .line 792
    .local v3, "byteCount":I
    const/4 v4, 0x0

    .line 792
    .local v4, "min":I
    :goto_0
    goto :goto_1

    .line 794
    .end local v1    # "codePoint":I
    .end local v3    # "byteCount":I
    .end local v4    # "min":I
    :cond_1
    and-int/lit16 v1, v0, 0xe0

    const/16 v3, 0xc0

    if-ne v1, v3, :cond_2

    .line 796
    and-int/lit8 v1, v0, 0x1f

    .line 797
    .restart local v1    # "codePoint":I
    const/4 v3, 0x2

    .line 798
    .restart local v3    # "byteCount":I
    const/16 v4, 0x80

    goto :goto_0

    .line 800
    .end local v1    # "codePoint":I
    .end local v3    # "byteCount":I
    :cond_2
    and-int/lit16 v1, v0, 0xf0

    const/16 v3, 0xe0

    if-ne v1, v3, :cond_3

    .line 802
    and-int/lit8 v1, v0, 0xf

    .line 803
    .restart local v1    # "codePoint":I
    const/4 v3, 0x3

    .line 804
    .restart local v3    # "byteCount":I
    const/16 v4, 0x800

    goto :goto_0

    .line 806
    .end local v1    # "codePoint":I
    .end local v3    # "byteCount":I
    :cond_3
    and-int/lit16 v1, v0, 0xf8

    const/16 v3, 0xf0

    if-ne v1, v3, :cond_a

    .line 808
    and-int/lit8 v1, v0, 0x7

    .line 809
    .restart local v1    # "codePoint":I
    const/4 v3, 0x4

    .line 810
    .restart local v3    # "byteCount":I
    const/high16 v4, 0x10000

    goto :goto_0

    .line 815
    .restart local v4    # "min":I
    :goto_1
    nop

    .line 818
    iget-wide v5, p0, Lokio/Buffer;->size:J

    int-to-long v7, v3

    cmp-long v9, v5, v7

    if-gez v9, :cond_4

    .line 819
    new-instance v2, Ljava/io/EOFException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "size < "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lokio/Buffer;->size:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " (to read code point prefixed 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 826
    :cond_4
    const/4 v5, 0x1

    .line 826
    .local v5, "i":I
    :goto_2
    if-ge v5, v3, :cond_6

    .line 827
    int-to-long v6, v5

    invoke-virtual {p0, v6, v7}, Lokio/Buffer;->getByte(J)B

    move-result v6

    .line 828
    .local v6, "b":B
    and-int/lit16 v7, v6, 0xc0

    const/16 v8, 0x80

    if-ne v7, v8, :cond_5

    .line 830
    shl-int/lit8 v1, v1, 0x6

    .line 831
    and-int/lit8 v7, v6, 0x3f

    or-int/2addr v1, v7

    .line 826
    .end local v6    # "b":B
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 833
    .restart local v6    # "b":B
    :cond_5
    int-to-long v7, v5

    invoke-virtual {p0, v7, v8}, Lokio/Buffer;->skip(J)V

    .line 834
    return v2

    .line 838
    .end local v5    # "i":I
    .end local v6    # "b":B
    :cond_6
    int-to-long v5, v3

    invoke-virtual {p0, v5, v6}, Lokio/Buffer;->skip(J)V

    .line 840
    const v5, 0x10ffff

    if-le v1, v5, :cond_7

    .line 841
    return v2

    .line 844
    :cond_7
    const v5, 0xd800

    if-lt v1, v5, :cond_8

    const v5, 0xdfff

    if-gt v1, v5, :cond_8

    .line 845
    return v2

    .line 848
    :cond_8
    if-ge v1, v4, :cond_9

    .line 849
    return v2

    .line 852
    :cond_9
    return v1

    .line 814
    .end local v1    # "codePoint":I
    .end local v3    # "byteCount":I
    .end local v4    # "min":I
    :cond_a
    const-wide/16 v3, 0x1

    invoke-virtual {p0, v3, v4}, Lokio/Buffer;->skip(J)V

    .line 815
    return v2
.end method

.method public readUtf8Line()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 737
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lokio/Buffer;->indexOf(B)J

    move-result-wide v0

    .line 739
    .local v0, "newline":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 740
    iget-wide v2, p0, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    iget-wide v2, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 743
    :cond_1
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method readUtf8Line(J)Ljava/lang/String;
    .locals 4
    .param p1, "newline"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 766
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const-wide/16 v0, 0x1

    if-lez v2, :cond_0

    sub-long v2, p1, v0

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    .line 768
    sub-long v2, p1, v0

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    .line 769
    .local v0, "result":Ljava/lang/String;
    const-wide/16 v1, 0x2

    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->skip(J)V

    .line 770
    return-object v0

    .line 774
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v2

    .line 775
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V

    .line 776
    return-object v2
.end method

.method public readUtf8LineStrict()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 747
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8LineStrict(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8LineStrict(J)Ljava/lang/String;
    .locals 13
    .param p1, "limit"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 751
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limit < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 752
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    const-wide/16 v3, 0x1

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    add-long v0, p1, v3

    .line 753
    .local v0, "scanLength":J
    :goto_0
    const/16 v6, 0xa

    const-wide/16 v7, 0x0

    move-object v5, p0

    move-wide v9, v0

    invoke-virtual/range {v5 .. v10}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v5

    .line 754
    .local v5, "newline":J
    const-wide/16 v7, -0x1

    cmp-long v2, v5, v7

    if-eqz v2, :cond_2

    invoke-virtual {p0, v5, v6}, Lokio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 755
    :cond_2
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v7

    cmp-long v2, v0, v7

    if-gez v2, :cond_3

    sub-long v7, v0, v3

    .line 756
    invoke-virtual {p0, v7, v8}, Lokio/Buffer;->getByte(J)B

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_3

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->getByte(J)B

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3

    .line 757
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 759
    :cond_3
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    .line 760
    .local v2, "data":Lokio/Buffer;
    const-wide/16 v9, 0x0

    const-wide/16 v3, 0x20

    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    move-object v7, p0

    move-object v8, v2

    invoke-virtual/range {v7 .. v12}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 761
    new-instance v3, Ljava/io/EOFException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\\n not found: limit="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v7

    invoke-static {v7, v8, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " content="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    invoke-virtual {v2}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v7

    invoke-virtual {v7}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x2026

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public request(J)Z
    .locals 3
    .param p1, "byteCount"    # J

    .line 117
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public require(J)V
    .locals 3
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 113
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 114
    :cond_0
    return-void
.end method

.method segmentSizes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1681
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1682
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1683
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v1, v1, Lokio/Segment;->limit:I

    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v2, v2, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1684
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1684
    .local v1, "s":Lokio/Segment;
    :goto_0
    iget-object v1, v1, Lokio/Segment;->next:Lokio/Segment;

    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eq v1, v2, :cond_1

    .line 1685
    iget v2, v1, Lokio/Segment;->limit:I

    iget v3, v1, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1684
    goto :goto_0

    .line 1687
    .end local v1    # "s":Lokio/Segment;
    :cond_1
    return-object v0
.end method

.method public select(Lokio/Options;)I
    .locals 4
    .param p1, "options"    # Lokio/Options;

    .line 556
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lokio/Buffer;->selectPrefix(Lokio/Options;Z)I

    move-result v0

    .line 557
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 560
    :cond_0
    iget-object v1, p1, Lokio/Options;->byteStrings:[Lokio/ByteString;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v1

    .line 562
    .local v1, "selectedSize":I
    int-to-long v2, v1

    :try_start_0
    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->skip(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    nop

    .line 566
    return v0

    .line 563
    :catch_0
    move-exception v2

    .line 564
    .local v2, "e":Ljava/io/EOFException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
.end method

.method selectPrefix(Lokio/Options;Z)I
    .locals 19
    .param p1, "options"    # Lokio/Options;
    .param p2, "selectTruncated"    # Z

    move-object/from16 v0, p1

    .line 582
    move-object/from16 v1, p0

    iget-object v2, v1, Lokio/Buffer;->head:Lokio/Segment;

    .line 583
    .local v2, "head":Lokio/Segment;
    const/4 v3, -0x2

    if-nez v2, :cond_1

    .line 584
    if-eqz p2, :cond_0

    return v3

    .line 585
    :cond_0
    sget-object v3, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-virtual {v0, v3}, Lokio/Options;->indexOf(Ljava/lang/Object;)I

    move-result v3

    return v3

    .line 588
    :cond_1
    move-object v4, v2

    .line 589
    .local v4, "s":Lokio/Segment;
    iget-object v5, v2, Lokio/Segment;->data:[B

    .line 590
    .local v5, "data":[B
    iget v6, v2, Lokio/Segment;->pos:I

    .line 591
    .local v6, "pos":I
    iget v7, v2, Lokio/Segment;->limit:I

    .line 593
    .local v7, "limit":I
    iget-object v8, v0, Lokio/Options;->trie:[I

    .line 594
    .local v8, "trie":[I
    const/4 v9, 0x0

    .line 596
    .local v9, "triePos":I
    const/4 v10, -0x1

    move v11, v7

    move v7, v6

    move-object v6, v5

    move-object v5, v4

    move v4, v10

    .line 600
    .local v4, "prefixIndex":I
    .local v5, "s":Lokio/Segment;
    .local v6, "data":[B
    .local v7, "pos":I
    .local v11, "limit":I
    :goto_0
    add-int/lit8 v12, v9, 0x1

    .line 600
    .local v12, "triePos":I
    aget v9, v8, v9

    .line 602
    .local v9, "scanOrSelect":I
    add-int/lit8 v13, v12, 0x1

    .line 602
    .local v13, "triePos":I
    aget v12, v8, v12

    .line 603
    .local v12, "possiblePrefixIndex":I
    if-eq v12, v10, :cond_2

    .line 604
    move v4, v12

    .line 609
    :cond_2
    if-nez v5, :cond_3

    .line 610
    nop

    .line 670
    move v10, v7

    goto :goto_3

    .line 611
    :cond_3
    if-gez v9, :cond_a

    .line 613
    mul-int v14, v10, v9

    .line 614
    .local v14, "scanByteCount":I
    add-int v15, v13, v14

    .line 614
    .local v15, "trieLimit":I
    :goto_1
    move/from16 v16, v15

    .line 616
    .end local v15    # "trieLimit":I
    .local v16, "trieLimit":I
    add-int/lit8 v10, v7, 0x1

    .line 616
    .local v10, "pos":I
    aget-byte v7, v6, v7

    .line 616
    .end local v7    # "pos":I
    and-int/lit16 v7, v7, 0xff

    .line 617
    .local v7, "b":I
    add-int/lit8 v3, v13, 0x1

    .line 617
    .local v3, "triePos":I
    aget v13, v8, v13

    .line 617
    .end local v13    # "triePos":I
    if-eq v7, v13, :cond_4

    return v4

    .line 618
    :cond_4
    move/from16 v13, v16

    if-ne v3, v13, :cond_5

    .line 618
    .end local v16    # "trieLimit":I
    .local v13, "trieLimit":I
    const/4 v15, 0x1

    goto :goto_2

    :cond_5
    const/4 v15, 0x0

    .line 621
    .local v15, "scanComplete":Z
    :goto_2
    if-ne v10, v11, :cond_8

    .line 622
    iget-object v5, v5, Lokio/Segment;->next:Lokio/Segment;

    .line 623
    iget v10, v5, Lokio/Segment;->pos:I

    .line 624
    iget-object v6, v5, Lokio/Segment;->data:[B

    .line 625
    iget v11, v5, Lokio/Segment;->limit:I

    .line 626
    if-ne v5, v2, :cond_8

    .line 627
    if-nez v15, :cond_7

    .line 670
    .end local v7    # "b":I
    .end local v9    # "scanOrSelect":I
    .end local v12    # "possiblePrefixIndex":I
    .end local v13    # "trieLimit":I
    .end local v14    # "scanByteCount":I
    .end local v15    # "scanComplete":Z
    move v13, v3

    .line 670
    .end local v3    # "triePos":I
    .local v13, "triePos":I
    :goto_3
    if-eqz p2, :cond_6

    const/16 v16, -0x2

    return v16

    .line 671
    :cond_6
    return v4

    .line 628
    .restart local v3    # "triePos":I
    .restart local v7    # "b":I
    .restart local v9    # "scanOrSelect":I
    .restart local v12    # "possiblePrefixIndex":I
    .local v13, "trieLimit":I
    .restart local v14    # "scanByteCount":I
    .restart local v15    # "scanComplete":Z
    :cond_7
    const/16 v16, -0x2

    const/4 v5, 0x0

    goto :goto_4

    .line 632
    :cond_8
    const/16 v16, -0x2

    :goto_4
    if-eqz v15, :cond_9

    .line 633
    aget v17, v8, v3

    .line 634
    .local v17, "nextStep":I
    nop

    .line 636
    .end local v7    # "b":I
    .end local v13    # "trieLimit":I
    .end local v14    # "scanByteCount":I
    .end local v15    # "scanComplete":Z
    nop

    .line 637
    nop

    .line 665
    move v13, v3

    goto :goto_6

    .line 636
    .end local v17    # "nextStep":I
    .restart local v13    # "trieLimit":I
    .restart local v14    # "scanByteCount":I
    :cond_9
    nop

    .line 614
    move v7, v10

    move v15, v13

    const/4 v10, -0x1

    move v13, v3

    move/from16 v3, v16

    goto :goto_1

    .line 639
    .end local v3    # "triePos":I
    .end local v10    # "pos":I
    .end local v14    # "scanByteCount":I
    .local v7, "pos":I
    .local v13, "triePos":I
    :cond_a
    move/from16 v16, v3

    move v3, v9

    .line 640
    .local v3, "selectChoiceCount":I
    add-int/lit8 v10, v7, 0x1

    .line 640
    .restart local v10    # "pos":I
    aget-byte v7, v6, v7

    .line 640
    .end local v7    # "pos":I
    and-int/lit16 v7, v7, 0xff

    .line 641
    .local v7, "b":I
    add-int v14, v13, v3

    .line 643
    .local v14, "selectLimit":I
    :goto_5
    if-ne v13, v14, :cond_b

    return v4

    .line 645
    :cond_b
    aget v0, v8, v13

    if-ne v7, v0, :cond_f

    .line 646
    add-int v0, v13, v3

    aget v17, v8, v0

    .line 647
    .restart local v17    # "nextStep":I
    nop

    .line 650
    nop

    .line 654
    if-ne v10, v11, :cond_d

    .line 655
    iget-object v0, v5, Lokio/Segment;->next:Lokio/Segment;

    .line 656
    .end local v5    # "s":Lokio/Segment;
    .local v0, "s":Lokio/Segment;
    iget v5, v0, Lokio/Segment;->pos:I

    .line 657
    .end local v10    # "pos":I
    .local v5, "pos":I
    iget-object v6, v0, Lokio/Segment;->data:[B

    .line 658
    iget v10, v0, Lokio/Segment;->limit:I

    .line 659
    .end local v11    # "limit":I
    .local v10, "limit":I
    if-ne v0, v2, :cond_c

    .line 660
    const/4 v0, 0x0

    .line 665
    .end local v3    # "selectChoiceCount":I
    .end local v10    # "limit":I
    .end local v14    # "selectLimit":I
    .end local v17    # "nextStep":I
    .local v0, "nextStep":I
    .local v5, "s":Lokio/Segment;
    .local v7, "pos":I
    .restart local v11    # "limit":I
    :cond_c
    move v7, v5

    move v11, v10

    move-object v5, v0

    goto :goto_7

    :cond_d
    :goto_6
    move v7, v10

    :goto_7
    move/from16 v0, v17

    if-ltz v0, :cond_e

    return v0

    .line 666
    :cond_e
    neg-int v9, v0

    .line 667
    .end local v0    # "nextStep":I
    .end local v12    # "possiblePrefixIndex":I
    .end local v13    # "triePos":I
    .local v9, "triePos":I
    nop

    .line 596
    move/from16 v3, v16

    move-object/from16 v0, p1

    const/4 v10, -0x1

    goto/16 :goto_0

    .line 650
    .restart local v3    # "selectChoiceCount":I
    .local v7, "b":I
    .local v9, "scanOrSelect":I
    .local v10, "pos":I
    .restart local v12    # "possiblePrefixIndex":I
    .restart local v13    # "triePos":I
    .restart local v14    # "selectLimit":I
    :cond_f
    add-int/lit8 v13, v13, 0x1

    .line 641
    move-object/from16 v0, p1

    goto :goto_5
.end method

.method public final sha1()Lokio/ByteString;
    .locals 1

    .line 1697
    const-string v0, "SHA-1"

    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final sha256()Lokio/ByteString;
    .locals 1

    .line 1702
    const-string v0, "SHA-256"

    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final sha512()Lokio/ByteString;
    .locals 1

    .line 1707
    const-string v0, "SHA-512"

    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final size()J
    .locals 2

    .line 67
    iget-wide v0, p0, Lokio/Buffer;->size:J

    return-wide v0
.end method

.method public skip(J)V
    .locals 7
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 938
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 939
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 941
    :cond_0
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v0, v0, Lokio/Segment;->limit:I

    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v1, v1, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 942
    .local v0, "toSkip":I
    iget-wide v1, p0, Lokio/Buffer;->size:J

    int-to-long v3, v0

    sub-long v5, v1, v3

    iput-wide v5, p0, Lokio/Buffer;->size:J

    .line 943
    int-to-long v1, v0

    sub-long v3, p1, v1

    .line 944
    .end local p1    # "byteCount":J
    .local v3, "byteCount":J
    iget-object p1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget p2, p1, Lokio/Segment;->pos:I

    add-int/2addr p2, v0

    iput p2, p1, Lokio/Segment;->pos:I

    .line 946
    iget-object p1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget p1, p1, Lokio/Segment;->pos:I

    iget-object p2, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget p2, p2, Lokio/Segment;->limit:I

    if-ne p1, p2, :cond_1

    .line 947
    iget-object p1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 948
    .local p1, "toRecycle":Lokio/Segment;
    invoke-virtual {p1}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object p2

    iput-object p2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 949
    invoke-static {p1}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 951
    .end local v0    # "toSkip":I
    .end local p1    # "toRecycle":Lokio/Segment;
    :cond_1
    nop

    .line 938
    move-wide p1, v3

    goto :goto_0

    .line 952
    .end local v3    # "byteCount":J
    .local p1, "byteCount":J
    :cond_2
    return-void
.end method

.method public final snapshot()Lokio/ByteString;
    .locals 5

    .line 1828
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 1829
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lokio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1831
    :cond_0
    iget-wide v0, p0, Lokio/Buffer;->size:J

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lokio/Buffer;->snapshot(I)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final snapshot(I)Lokio/ByteString;
    .locals 1
    .param p1, "byteCount"    # I

    .line 1838
    if-nez p1, :cond_0

    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    return-object v0

    .line 1839
    :cond_0
    new-instance v0, Lokio/SegmentedByteString;

    invoke-direct {v0, p0, p1}, Lokio/SegmentedByteString;-><init>(Lokio/Buffer;I)V

    return-object v0
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .line 1676
    sget-object v0, Lokio/Timeout;->NONE:Lokio/Timeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1809
    invoke-virtual {p0}, Lokio/Buffer;->snapshot()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writableSegment(I)Lokio/Segment;
    .locals 3
    .param p1, "minimumCapacity"    # I

    .line 1298
    const/4 v0, 0x1

    if-lt p1, v0, :cond_4

    const/16 v0, 0x2000

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 1300
    :cond_0
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v1, :cond_1

    .line 1301
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object v0

    iput-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1302
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    iput-object v2, v1, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v2, v0, Lokio/Segment;->next:Lokio/Segment;

    return-object v2

    .line 1305
    :cond_1
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v1, v1, Lokio/Segment;->prev:Lokio/Segment;

    .line 1306
    .local v1, "tail":Lokio/Segment;
    iget v2, v1, Lokio/Segment;->limit:I

    add-int/2addr v2, p1

    if-gt v2, v0, :cond_2

    iget-boolean v0, v1, Lokio/Segment;->owner:Z

    if-nez v0, :cond_3

    .line 1307
    :cond_2
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object v0

    invoke-virtual {v1, v0}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v1

    .line 1309
    :cond_3
    return-object v1

    .line 1298
    .end local v1    # "tail":Lokio/Segment;
    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 8
    .param p1, "source"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1122
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1124
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 1125
    .local v0, "byteCount":I
    move v1, v0

    .line 1126
    .local v1, "remaining":I
    :goto_0
    if-lez v1, :cond_1

    .line 1127
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v2

    .line 1129
    .local v2, "tail":Lokio/Segment;
    iget v3, v2, Lokio/Segment;->limit:I

    rsub-int v3, v3, 0x2000

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1130
    .local v3, "toCopy":I
    iget-object v4, v2, Lokio/Segment;->data:[B

    iget v5, v2, Lokio/Segment;->limit:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1132
    sub-int/2addr v1, v3

    .line 1133
    iget v4, v2, Lokio/Segment;->limit:I

    add-int/2addr v4, v3

    iput v4, v2, Lokio/Segment;->limit:I

    .line 1134
    .end local v2    # "tail":Lokio/Segment;
    .end local v3    # "toCopy":I
    goto :goto_0

    .line 1136
    :cond_1
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v4, v0

    add-long v6, v2, v4

    iput-wide v6, p0, Lokio/Buffer;->size:J

    .line 1137
    return v0
.end method

.method public write(Lokio/ByteString;)Lokio/Buffer;
    .locals 2
    .param p1, "byteString"    # Lokio/ByteString;

    .line 955
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byteString == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 956
    :cond_0
    invoke-virtual {p1, p0}, Lokio/ByteString;->write(Lokio/Buffer;)V

    .line 957
    return-object p0
.end method

.method public write([B)Lokio/Buffer;
    .locals 2
    .param p1, "source"    # [B

    .line 1098
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1099
    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public write([BII)Lokio/Buffer;
    .locals 7
    .param p1, "source"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    .line 1103
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1104
    :cond_0
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 1106
    add-int v0, p2, p3

    .line 1107
    .local v0, "limit":I
    :goto_0
    if-ge p2, v0, :cond_1

    .line 1108
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v1

    .line 1110
    .local v1, "tail":Lokio/Segment;
    sub-int v2, v0, p2

    iget v3, v1, Lokio/Segment;->limit:I

    rsub-int v3, v3, 0x2000

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1111
    .local v2, "toCopy":I
    iget-object v3, v1, Lokio/Segment;->data:[B

    iget v4, v1, Lokio/Segment;->limit:I

    invoke-static {p1, p2, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1113
    add-int/2addr p2, v2

    .line 1114
    iget v3, v1, Lokio/Segment;->limit:I

    add-int/2addr v3, v2

    iput v3, v1, Lokio/Segment;->limit:I

    .line 1115
    .end local v1    # "tail":Lokio/Segment;
    .end local v2    # "toCopy":I
    goto :goto_0

    .line 1117
    :cond_1
    iget-wide v1, p0, Lokio/Buffer;->size:J

    int-to-long v3, p3

    add-long v5, v1, v3

    iput-wide v5, p0, Lokio/Buffer;->size:J

    .line 1118
    return-object p0
.end method

.method public bridge synthetic write(Lokio/ByteString;)Lokio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public write(Lokio/Source;J)Lokio/BufferedSink;
    .locals 5
    .param p1, "source"    # Lokio/Source;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1150
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 1151
    invoke-interface {p1, p0, p2, p3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v0

    .line 1152
    .local v0, "read":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 1153
    :cond_0
    sub-long v2, p2, v0

    .line 1154
    .end local v0    # "read":J
    .end local p2    # "byteCount":J
    .local v2, "byteCount":J
    nop

    .line 1150
    move-wide p2, v2

    goto :goto_0

    .line 1155
    .end local v2    # "byteCount":J
    .restart local p2    # "byteCount":J
    :cond_1
    return-object p0
.end method

.method public bridge synthetic write([B)Lokio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->write([B)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic write([BII)Lokio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public write(Lokio/Buffer;J)V
    .locals 8
    .param p1, "source"    # Lokio/Buffer;
    .param p2, "byteCount"    # J

    .line 1363
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1364
    :cond_0
    if-ne p1, p0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == this"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1365
    :cond_1
    iget-wide v2, p1, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x0

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 1367
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_7

    .line 1369
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    iget v0, v0, Lokio/Segment;->limit:I

    iget-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    iget v1, v1, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v2, p2, v0

    if-gez v2, :cond_5

    .line 1370
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 1371
    .local v0, "tail":Lokio/Segment;
    :goto_1
    if-eqz v0, :cond_4

    iget-boolean v1, v0, Lokio/Segment;->owner:Z

    if-eqz v1, :cond_4

    iget v1, v0, Lokio/Segment;->limit:I

    int-to-long v1, v1

    add-long v3, p2, v1

    iget-boolean v1, v0, Lokio/Segment;->shared:Z

    if-eqz v1, :cond_3

    .line 1372
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    iget v1, v0, Lokio/Segment;->pos:I

    :goto_2
    int-to-long v1, v1

    sub-long v5, v3, v1

    const-wide/16 v1, 0x2000

    cmp-long v3, v5, v1

    if-gtz v3, :cond_4

    .line 1374
    iget-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    long-to-int v2, p2

    invoke-virtual {v1, v0, v2}, Lokio/Segment;->writeTo(Lokio/Segment;I)V

    .line 1375
    iget-wide v1, p1, Lokio/Buffer;->size:J

    sub-long v3, v1, p2

    iput-wide v3, p1, Lokio/Buffer;->size:J

    .line 1376
    iget-wide v1, p0, Lokio/Buffer;->size:J

    add-long v3, v1, p2

    iput-wide v3, p0, Lokio/Buffer;->size:J

    .line 1377
    return-void

    .line 1381
    :cond_4
    iget-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    long-to-int v2, p2

    invoke-virtual {v1, v2}, Lokio/Segment;->split(I)Lokio/Segment;

    move-result-object v1

    iput-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1386
    .end local v0    # "tail":Lokio/Segment;
    :cond_5
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1387
    .local v0, "segmentToMove":Lokio/Segment;
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    .line 1388
    .local v1, "movedByteCount":J
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v3

    iput-object v3, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1389
    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v3, :cond_6

    .line 1390
    iput-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1391
    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v4, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v5, p0, Lokio/Buffer;->head:Lokio/Segment;

    iput-object v5, v4, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v5, v3, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_3

    .line 1393
    :cond_6
    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v3, v3, Lokio/Segment;->prev:Lokio/Segment;

    .line 1394
    .local v3, "tail":Lokio/Segment;
    invoke-virtual {v3, v0}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v3

    .line 1395
    invoke-virtual {v3}, Lokio/Segment;->compact()V

    .line 1397
    .end local v3    # "tail":Lokio/Segment;
    :goto_3
    iget-wide v3, p1, Lokio/Buffer;->size:J

    sub-long v5, v3, v1

    iput-wide v5, p1, Lokio/Buffer;->size:J

    .line 1398
    iget-wide v3, p0, Lokio/Buffer;->size:J

    add-long v5, v3, v1

    iput-wide v5, p0, Lokio/Buffer;->size:J

    .line 1399
    sub-long v3, p2, v1

    .line 1400
    .end local v0    # "segmentToMove":Lokio/Segment;
    .end local v1    # "movedByteCount":J
    .end local p2    # "byteCount":J
    .local v3, "byteCount":J
    nop

    .line 1367
    move-wide p2, v3

    goto/16 :goto_0

    .line 1401
    .end local v3    # "byteCount":J
    .restart local p2    # "byteCount":J
    :cond_7
    return-void
.end method

.method public writeAll(Lokio/Source;)J
    .locals 9
    .param p1, "source"    # Lokio/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1141
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1142
    :cond_0
    const-wide/16 v0, 0x0

    .line 1143
    .local v0, "totalBytesRead":J
    :goto_0
    const-wide/16 v2, 0x2000

    invoke-interface {p1, p0, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v2

    move-wide v4, v2

    .line 1143
    .local v4, "readCount":J
    const-wide/16 v6, -0x1

    cmp-long v8, v2, v6

    if-eqz v8, :cond_1

    .line 1144
    add-long v2, v0, v4

    .line 1142
    .end local v0    # "totalBytesRead":J
    .local v2, "totalBytesRead":J
    move-wide v0, v2

    goto :goto_0

    .line 1146
    .end local v2    # "totalBytesRead":J
    .end local v4    # "readCount":J
    .restart local v0    # "totalBytesRead":J
    :cond_1
    return-wide v0
.end method

.method public writeByte(I)Lokio/Buffer;
    .locals 7
    .param p1, "b"    # I

    .line 1159
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v0

    .line 1160
    .local v0, "tail":Lokio/Segment;
    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v2, v0, Lokio/Segment;->limit:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lokio/Segment;->limit:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 1161
    iget-wide v1, p0, Lokio/Buffer;->size:J

    const-wide/16 v3, 0x1

    add-long v5, v1, v3

    iput-wide v5, p0, Lokio/Buffer;->size:J

    .line 1162
    return-object p0
.end method

.method public bridge synthetic writeByte(I)Lokio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeDecimalLong(J)Lokio/Buffer;
    .locals 11
    .param p1, "v"    # J

    .line 1219
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 1221
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v0

    return-object v0

    .line 1224
    :cond_0
    const/4 v2, 0x0

    .line 1225
    .local v2, "negative":Z
    cmp-long v3, p1, v0

    if-gez v3, :cond_2

    .line 1226
    neg-long p1, p1

    .line 1227
    cmp-long v3, p1, v0

    if-gez v3, :cond_1

    .line 1228
    const-string v0, "-9223372036854775808"

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object v0

    return-object v0

    .line 1230
    :cond_1
    const/4 v2, 0x1

    .line 1234
    :cond_2
    const-wide/32 v3, 0x5f5e100

    cmp-long v5, p1, v3

    const-wide/16 v3, 0xa

    if-gez v5, :cond_a

    .line 1237
    const-wide/16 v5, 0x2710

    cmp-long v7, p1, v5

    if-gez v7, :cond_6

    .line 1238
    const-wide/16 v5, 0x64

    cmp-long v7, p1, v5

    if-gez v7, :cond_4

    cmp-long v5, p1, v3

    if-gez v5, :cond_3

    .line 1252
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1238
    :cond_3
    const/4 v5, 0x2

    goto/16 :goto_0

    .line 1239
    :cond_4
    const-wide/16 v5, 0x3e8

    cmp-long v7, p1, v5

    if-gez v7, :cond_5

    const/4 v5, 0x3

    goto/16 :goto_0

    :cond_5
    const/4 v5, 0x4

    goto/16 :goto_0

    .line 1241
    :cond_6
    const-wide/32 v5, 0xf4240

    cmp-long v7, p1, v5

    if-gez v7, :cond_8

    const-wide/32 v5, 0x186a0

    cmp-long v7, p1, v5

    if-gez v7, :cond_7

    const/4 v5, 0x5

    goto/16 :goto_0

    :cond_7
    const/4 v5, 0x6

    goto/16 :goto_0

    .line 1242
    :cond_8
    const-wide/32 v5, 0x989680

    cmp-long v7, p1, v5

    if-gez v7, :cond_9

    const/4 v5, 0x7

    goto/16 :goto_0

    :cond_9
    const/16 v5, 0x8

    goto/16 :goto_0

    .line 1244
    :cond_a
    const-wide v5, 0xe8d4a51000L

    cmp-long v7, p1, v5

    if-gez v7, :cond_e

    .line 1245
    const-wide v5, 0x2540be400L

    cmp-long v7, p1, v5

    if-gez v7, :cond_c

    const-wide/32 v5, 0x3b9aca00

    cmp-long v7, p1, v5

    if-gez v7, :cond_b

    const/16 v5, 0x9

    goto :goto_0

    :cond_b
    const/16 v5, 0xa

    goto :goto_0

    .line 1246
    :cond_c
    const-wide v5, 0x174876e800L

    cmp-long v7, p1, v5

    if-gez v7, :cond_d

    const/16 v5, 0xb

    goto :goto_0

    :cond_d
    const/16 v5, 0xc

    goto :goto_0

    .line 1248
    :cond_e
    const-wide v5, 0x38d7ea4c68000L

    cmp-long v7, p1, v5

    if-gez v7, :cond_11

    const-wide v5, 0x9184e72a000L

    cmp-long v7, p1, v5

    if-gez v7, :cond_f

    const/16 v5, 0xd

    goto :goto_0

    .line 1249
    :cond_f
    const-wide v5, 0x5af3107a4000L

    cmp-long v7, p1, v5

    if-gez v7, :cond_10

    const/16 v5, 0xe

    goto :goto_0

    :cond_10
    const/16 v5, 0xf

    goto :goto_0

    .line 1251
    :cond_11
    const-wide v5, 0x16345785d8a0000L

    cmp-long v7, p1, v5

    if-gez v7, :cond_13

    const-wide v5, 0x2386f26fc10000L

    cmp-long v7, p1, v5

    if-gez v7, :cond_12

    const/16 v5, 0x10

    goto :goto_0

    :cond_12
    const/16 v5, 0x11

    goto :goto_0

    .line 1252
    :cond_13
    const-wide v5, 0xde0b6b3a7640000L

    cmp-long v7, p1, v5

    if-gez v7, :cond_14

    const/16 v5, 0x12

    goto :goto_0

    :cond_14
    const/16 v5, 0x13

    .line 1253
    .local v5, "width":I
    :goto_0
    if-eqz v2, :cond_15

    .line 1254
    add-int/lit8 v5, v5, 0x1

    .line 1257
    :cond_15
    invoke-virtual {p0, v5}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v6

    .line 1258
    .local v6, "tail":Lokio/Segment;
    iget-object v7, v6, Lokio/Segment;->data:[B

    .line 1259
    .local v7, "data":[B
    iget v8, v6, Lokio/Segment;->limit:I

    add-int/2addr v8, v5

    .line 1260
    .local v8, "pos":I
    :goto_1
    cmp-long v9, p1, v0

    if-eqz v9, :cond_16

    .line 1261
    rem-long v9, p1, v3

    long-to-int v9, v9

    .line 1262
    .local v9, "digit":I
    add-int/lit8 v8, v8, -0x1

    sget-object v10, Lokio/Buffer;->DIGITS:[B

    aget-byte v10, v10, v9

    aput-byte v10, v7, v8

    .line 1263
    div-long/2addr p1, v3

    .line 1264
    .end local v9    # "digit":I
    goto :goto_1

    .line 1265
    :cond_16
    if-eqz v2, :cond_17

    .line 1266
    add-int/lit8 v8, v8, -0x1

    const/16 v0, 0x2d

    aput-byte v0, v7, v8

    .line 1269
    :cond_17
    iget v0, v6, Lokio/Segment;->limit:I

    add-int/2addr v0, v5

    iput v0, v6, Lokio/Segment;->limit:I

    .line 1270
    iget-wide v0, p0, Lokio/Buffer;->size:J

    int-to-long v3, v5

    add-long v9, v0, v3

    iput-wide v9, p0, Lokio/Buffer;->size:J

    .line 1271
    return-object p0
.end method

.method public bridge synthetic writeDecimalLong(J)Lokio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeHexadecimalUnsignedLong(J)Lokio/Buffer;
    .locals 11
    .param p1, "v"    # J

    .line 1275
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 1277
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v0

    return-object v0

    .line 1280
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    const/4 v1, 0x4

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 1282
    .local v0, "width":I
    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v2

    .line 1283
    .local v2, "tail":Lokio/Segment;
    iget-object v3, v2, Lokio/Segment;->data:[B

    .line 1284
    .local v3, "data":[B
    iget v4, v2, Lokio/Segment;->limit:I

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    .line 1284
    .local v4, "pos":I
    iget v5, v2, Lokio/Segment;->limit:I

    .line 1284
    .local v5, "start":I
    :goto_0
    if-lt v4, v5, :cond_1

    .line 1285
    sget-object v6, Lokio/Buffer;->DIGITS:[B

    const-wide/16 v7, 0xf

    and-long v9, p1, v7

    long-to-int v7, v9

    aget-byte v6, v6, v7

    aput-byte v6, v3, v4

    .line 1286
    ushr-long/2addr p1, v1

    .line 1284
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1288
    .end local v4    # "pos":I
    .end local v5    # "start":I
    :cond_1
    iget v1, v2, Lokio/Segment;->limit:I

    add-int/2addr v1, v0

    iput v1, v2, Lokio/Segment;->limit:I

    .line 1289
    iget-wide v4, p0, Lokio/Buffer;->size:J

    int-to-long v6, v0

    add-long v8, v4, v6

    iput-wide v8, p0, Lokio/Buffer;->size:J

    .line 1290
    return-object p0
.end method

.method public bridge synthetic writeHexadecimalUnsignedLong(J)Lokio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeInt(I)Lokio/Buffer;
    .locals 9
    .param p1, "i"    # I

    .line 1181
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v0

    .line 1182
    .local v0, "tail":Lokio/Segment;
    iget-object v1, v0, Lokio/Segment;->data:[B

    .line 1183
    .local v1, "data":[B
    iget v2, v0, Lokio/Segment;->limit:I

    .line 1184
    .local v2, "limit":I
    add-int/lit8 v3, v2, 0x1

    .line 1184
    .local v3, "limit":I
    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1185
    .end local v2    # "limit":I
    add-int/lit8 v2, v3, 0x1

    .line 1185
    .restart local v2    # "limit":I
    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1186
    .end local v3    # "limit":I
    add-int/lit8 v3, v2, 0x1

    .line 1186
    .restart local v3    # "limit":I
    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1187
    .end local v2    # "limit":I
    add-int/lit8 v2, v3, 0x1

    .line 1187
    .restart local v2    # "limit":I
    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1188
    .end local v3    # "limit":I
    iput v2, v0, Lokio/Segment;->limit:I

    .line 1189
    iget-wide v3, p0, Lokio/Buffer;->size:J

    const-wide/16 v5, 0x4

    add-long v7, v3, v5

    iput-wide v7, p0, Lokio/Buffer;->size:J

    .line 1190
    return-object p0
.end method

.method public bridge synthetic writeInt(I)Lokio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeIntLe(I)Lokio/Buffer;
    .locals 1
    .param p1, "i"    # I

    .line 1194
    invoke-static {p1}, Lokio/Util;->reverseBytesInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeIntLe(I)Lokio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeIntLe(I)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeLong(J)Lokio/Buffer;
    .locals 11
    .param p1, "v"    # J

    .line 1198
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v1

    .line 1199
    .local v1, "tail":Lokio/Segment;
    iget-object v2, v1, Lokio/Segment;->data:[B

    .line 1200
    .local v2, "data":[B
    iget v3, v1, Lokio/Segment;->limit:I

    .line 1201
    .local v3, "limit":I
    add-int/lit8 v4, v3, 0x1

    .line 1201
    .local v4, "limit":I
    const/16 v5, 0x38

    ushr-long v5, p1, v5

    const-wide/16 v7, 0xff

    and-long v9, v5, v7

    long-to-int v5, v9

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    .line 1202
    .end local v3    # "limit":I
    add-int/lit8 v3, v4, 0x1

    .line 1202
    .restart local v3    # "limit":I
    const/16 v5, 0x30

    ushr-long v5, p1, v5

    and-long v9, v5, v7

    long-to-int v5, v9

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 1203
    .end local v4    # "limit":I
    add-int/lit8 v4, v3, 0x1

    .line 1203
    .restart local v4    # "limit":I
    const/16 v5, 0x28

    ushr-long v5, p1, v5

    and-long v9, v5, v7

    long-to-int v5, v9

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    .line 1204
    .end local v3    # "limit":I
    add-int/lit8 v3, v4, 0x1

    .line 1204
    .restart local v3    # "limit":I
    const/16 v5, 0x20

    ushr-long v5, p1, v5

    and-long v9, v5, v7

    long-to-int v5, v9

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 1205
    .end local v4    # "limit":I
    add-int/lit8 v4, v3, 0x1

    .line 1205
    .restart local v4    # "limit":I
    const/16 v5, 0x18

    ushr-long v5, p1, v5

    and-long v9, v5, v7

    long-to-int v5, v9

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    .line 1206
    .end local v3    # "limit":I
    add-int/lit8 v3, v4, 0x1

    .line 1206
    .restart local v3    # "limit":I
    const/16 v5, 0x10

    ushr-long v5, p1, v5

    and-long v9, v5, v7

    long-to-int v5, v9

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 1207
    .end local v4    # "limit":I
    add-int/lit8 v4, v3, 0x1

    .line 1207
    .restart local v4    # "limit":I
    ushr-long v5, p1, v0

    and-long v9, v5, v7

    long-to-int v0, v9

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    .line 1208
    .end local v3    # "limit":I
    add-int/lit8 v0, v4, 0x1

    .line 1208
    .local v0, "limit":I
    and-long v5, p1, v7

    long-to-int v3, v5

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 1209
    .end local v4    # "limit":I
    iput v0, v1, Lokio/Segment;->limit:I

    .line 1210
    iget-wide v3, p0, Lokio/Buffer;->size:J

    const-wide/16 v5, 0x8

    add-long v7, v3, v5

    iput-wide v7, p0, Lokio/Buffer;->size:J

    .line 1211
    return-object p0
.end method

.method public bridge synthetic writeLong(J)Lokio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeLongLe(J)Lokio/Buffer;
    .locals 2
    .param p1, "v"    # J

    .line 1215
    invoke-static {p1, p2}, Lokio/Util;->reverseBytesLong(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeLongLe(J)Lokio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeLongLe(J)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeShort(I)Lokio/Buffer;
    .locals 9
    .param p1, "s"    # I

    .line 1166
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v0

    .line 1167
    .local v0, "tail":Lokio/Segment;
    iget-object v1, v0, Lokio/Segment;->data:[B

    .line 1168
    .local v1, "data":[B
    iget v2, v0, Lokio/Segment;->limit:I

    .line 1169
    .local v2, "limit":I
    add-int/lit8 v3, v2, 0x1

    .line 1169
    .local v3, "limit":I
    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1170
    .end local v2    # "limit":I
    add-int/lit8 v2, v3, 0x1

    .line 1170
    .restart local v2    # "limit":I
    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1171
    .end local v3    # "limit":I
    iput v2, v0, Lokio/Segment;->limit:I

    .line 1172
    iget-wide v3, p0, Lokio/Buffer;->size:J

    const-wide/16 v5, 0x2

    add-long v7, v3, v5

    iput-wide v7, p0, Lokio/Buffer;->size:J

    .line 1173
    return-object p0
.end method

.method public bridge synthetic writeShort(I)Lokio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeShortLe(I)Lokio/Buffer;
    .locals 1
    .param p1, "s"    # I

    .line 1177
    int-to-short v0, p1

    invoke-static {v0}, Lokio/Util;->reverseBytesShort(S)S

    move-result v0

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeShortLe(I)Lokio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeShortLe(I)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I
    .param p4, "charset"    # Ljava/nio/charset/Charset;

    .line 1082
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "string == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1083
    :cond_0
    if-gez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalAccessError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1084
    :cond_1
    if-ge p3, p2, :cond_2

    .line 1085
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex < beginIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1087
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le p3, v0, :cond_3

    .line 1088
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex > string.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1091
    :cond_3
    if-nez p4, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1092
    :cond_4
    sget-object v0, Lokio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object v0

    return-object v0

    .line 1093
    :cond_5
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 1094
    .local v0, "data":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object v1

    return-object v1
.end method

.method public writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 1077
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lokio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1, p2, p3, p4}, Lokio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public final writeTo(Ljava/io/OutputStream;)Lokio/Buffer;
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->writeTo(Ljava/io/OutputStream;J)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Ljava/io/OutputStream;J)Lokio/Buffer;
    .locals 8
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    iget-wide v2, p0, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x0

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 221
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 222
    .local v0, "s":Lokio/Segment;
    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_2

    .line 223
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 224
    .local v1, "toCopy":I
    iget-object v2, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->pos:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 226
    iget v2, v0, Lokio/Segment;->pos:I

    add-int/2addr v2, v1

    iput v2, v0, Lokio/Segment;->pos:I

    .line 227
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v4, v1

    sub-long v6, v2, v4

    iput-wide v6, p0, Lokio/Buffer;->size:J

    .line 228
    int-to-long v2, v1

    sub-long v4, p2, v2

    .line 230
    .end local p2    # "byteCount":J
    .local v4, "byteCount":J
    iget p2, v0, Lokio/Segment;->pos:I

    iget p3, v0, Lokio/Segment;->limit:I

    if-ne p2, p3, :cond_1

    .line 231
    move-object p2, v0

    .line 232
    .local p2, "toRecycle":Lokio/Segment;
    invoke-virtual {p2}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object p3

    move-object v0, p3

    iput-object p3, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 233
    invoke-static {p2}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 235
    .end local v1    # "toCopy":I
    .end local p2    # "toRecycle":Lokio/Segment;
    :cond_1
    nop

    .line 221
    move-wide p2, v4

    goto :goto_0

    .line 237
    .end local v4    # "byteCount":J
    .local p2, "byteCount":J
    :cond_2
    return-object p0
.end method

.method public writeUtf8(Ljava/lang/String;)Lokio/Buffer;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .line 961
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeUtf8(Ljava/lang/String;II)Lokio/Buffer;
    .locals 18
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 965
    move/from16 v3, p3

    if-nez v1, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "string == null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 966
    :cond_0
    if-gez v2, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "beginIndex < 0: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 967
    :cond_1
    if-ge v3, v2, :cond_2

    .line 968
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "endIndex < beginIndex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " < "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 970
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_3

    .line 971
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "endIndex > string.length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 976
    :cond_3
    move v4, v2

    .line 976
    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_d

    .line 977
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 979
    .local v5, "c":I
    const/16 v6, 0x80

    if-ge v5, v6, :cond_6

    .line 980
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v7

    .line 981
    .local v7, "tail":Lokio/Segment;
    iget-object v8, v7, Lokio/Segment;->data:[B

    .line 982
    .local v8, "data":[B
    iget v9, v7, Lokio/Segment;->limit:I

    sub-int/2addr v9, v4

    .line 983
    .local v9, "segmentOffset":I
    rsub-int v10, v9, 0x2000

    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 986
    .local v10, "runLimit":I
    add-int/lit8 v11, v4, 0x1

    .line 986
    .local v11, "i":I
    add-int/2addr v4, v9

    .line 986
    .end local v4    # "i":I
    int-to-byte v12, v5

    aput-byte v12, v8, v4

    .line 990
    :goto_1
    if-ge v11, v10, :cond_5

    .line 991
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 992
    if-lt v5, v6, :cond_4

    goto :goto_2

    .line 993
    :cond_4
    add-int/lit8 v4, v11, 0x1

    .line 993
    .restart local v4    # "i":I
    add-int/2addr v11, v9

    .line 993
    .end local v11    # "i":I
    int-to-byte v12, v5

    aput-byte v12, v8, v11

    .line 990
    move v11, v4

    goto :goto_1

    .line 996
    .end local v4    # "i":I
    .restart local v11    # "i":I
    :cond_5
    :goto_2
    add-int v4, v11, v9

    iget v6, v7, Lokio/Segment;->limit:I

    sub-int/2addr v4, v6

    .line 997
    .local v4, "runSize":I
    iget v6, v7, Lokio/Segment;->limit:I

    add-int/2addr v6, v4

    iput v6, v7, Lokio/Segment;->limit:I

    .line 998
    iget-wide v12, v0, Lokio/Buffer;->size:J

    int-to-long v14, v4

    move/from16 v17, v4

    move/from16 v16, v5

    add-long v4, v12, v14

    .line 998
    .end local v4    # "runSize":I
    .end local v5    # "c":I
    .local v16, "c":I
    .local v17, "runSize":I
    iput-wide v4, v0, Lokio/Buffer;->size:J

    .line 1000
    .end local v7    # "tail":Lokio/Segment;
    .end local v8    # "data":[B
    .end local v9    # "segmentOffset":I
    .end local v10    # "runLimit":I
    .end local v17    # "runSize":I
    nop

    .line 1035
    move v4, v11

    goto/16 :goto_6

    .line 1000
    .end local v11    # "i":I
    .end local v16    # "c":I
    .local v4, "i":I
    .restart local v5    # "c":I
    :cond_6
    const/16 v7, 0x800

    if-ge v5, v7, :cond_7

    .line 1002
    shr-int/lit8 v7, v5, 0x6

    or-int/lit16 v7, v7, 0xc0

    invoke-virtual {v0, v7}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1003
    and-int/lit8 v7, v5, 0x3f

    or-int/2addr v6, v7

    invoke-virtual {v0, v6}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1004
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6

    .line 1006
    :cond_7
    const v7, 0xd800

    const/16 v8, 0x3f

    if-lt v5, v7, :cond_c

    const v7, 0xdfff

    if-le v5, v7, :cond_8

    goto :goto_5

    .line 1016
    :cond_8
    add-int/lit8 v9, v4, 0x1

    if-ge v9, v3, :cond_9

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_3

    :cond_9
    const/4 v9, 0x0

    .line 1017
    .local v9, "low":I
    :goto_3
    const v10, 0xdbff

    if-gt v5, v10, :cond_b

    const v10, 0xdc00

    if-lt v9, v10, :cond_b

    if-le v9, v7, :cond_a

    goto :goto_4

    .line 1026
    :cond_a
    const/high16 v7, 0x10000

    const v10, -0xd801

    and-int/2addr v10, v5

    shl-int/lit8 v10, v10, 0xa

    const v11, -0xdc01

    and-int/2addr v11, v9

    or-int/2addr v10, v11

    add-int/2addr v7, v10

    .line 1029
    .local v7, "codePoint":I
    shr-int/lit8 v10, v7, 0x12

    or-int/lit16 v10, v10, 0xf0

    invoke-virtual {v0, v10}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1030
    shr-int/lit8 v10, v7, 0xc

    and-int/2addr v10, v8

    or-int/2addr v10, v6

    invoke-virtual {v0, v10}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1031
    shr-int/lit8 v10, v7, 0x6

    and-int/2addr v8, v10

    or-int/2addr v8, v6

    invoke-virtual {v0, v8}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1032
    and-int/lit8 v8, v7, 0x3f

    or-int/2addr v6, v8

    invoke-virtual {v0, v6}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1033
    add-int/lit8 v4, v4, 0x2

    .line 1033
    .end local v5    # "c":I
    .end local v7    # "codePoint":I
    .end local v9    # "low":I
    goto :goto_6

    .line 1018
    .restart local v5    # "c":I
    .restart local v9    # "low":I
    :cond_b
    :goto_4
    invoke-virtual {v0, v8}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1019
    add-int/lit8 v4, v4, 0x1

    .line 1020
    goto/16 :goto_0

    .line 1008
    .end local v9    # "low":I
    :cond_c
    :goto_5
    shr-int/lit8 v7, v5, 0xc

    or-int/lit16 v7, v7, 0xe0

    invoke-virtual {v0, v7}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1009
    shr-int/lit8 v7, v5, 0x6

    and-int/2addr v7, v8

    or-int/2addr v7, v6

    invoke-virtual {v0, v7}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1010
    and-int/lit8 v7, v5, 0x3f

    or-int/2addr v6, v7

    invoke-virtual {v0, v6}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1011
    add-int/lit8 v4, v4, 0x1

    .line 1035
    .end local v5    # "c":I
    :goto_6
    goto/16 :goto_0

    .line 1037
    .end local v4    # "i":I
    :cond_d
    return-object v0
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;II)Lokio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeUtf8CodePoint(I)Lokio/Buffer;
    .locals 3
    .param p1, "codePoint"    # I

    .line 1041
    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    .line 1043
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_0

    .line 1045
    :cond_0
    const/16 v1, 0x800

    if-ge p1, v1, :cond_1

    .line 1047
    shr-int/lit8 v1, p1, 0x6

    or-int/lit16 v1, v1, 0xc0

    invoke-virtual {p0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1048
    and-int/lit8 v1, p1, 0x3f

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_0

    .line 1050
    :cond_1
    const/high16 v1, 0x10000

    const/16 v2, 0x3f

    if-ge p1, v1, :cond_3

    .line 1051
    const v1, 0xd800

    if-lt p1, v1, :cond_2

    const v1, 0xdfff

    if-gt p1, v1, :cond_2

    .line 1053
    invoke-virtual {p0, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_0

    .line 1056
    :cond_2
    shr-int/lit8 v1, p1, 0xc

    or-int/lit16 v1, v1, 0xe0

    invoke-virtual {p0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1057
    shr-int/lit8 v1, p1, 0x6

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1058
    and-int/lit8 v1, p1, 0x3f

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_0

    .line 1061
    :cond_3
    const v1, 0x10ffff

    if-gt p1, v1, :cond_4

    .line 1063
    shr-int/lit8 v1, p1, 0x12

    or-int/lit16 v1, v1, 0xf0

    invoke-virtual {p0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1064
    shr-int/lit8 v1, p1, 0xc

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1065
    shr-int/lit8 v1, p1, 0x6

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1066
    and-int/lit8 v1, p1, 0x3f

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1073
    :goto_0
    return-object p0

    .line 1069
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected code point: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic writeUtf8CodePoint(I)Lokio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method
