.class Lca/uhn/hl7v2/llp/MllpEncoder;
.super Ljava/lang/Object;
.source "MllpEncoder.java"


# instance fields
.field protected charset:Ljava/nio/charset/Charset;

.field protected omitBOM:Z


# direct methods
.method constructor <init>(Ljava/nio/charset/Charset;Z)V
    .locals 0
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "omitBOM"    # Z

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lca/uhn/hl7v2/llp/MllpEncoder;->charset:Ljava/nio/charset/Charset;

    .line 44
    iput-boolean p2, p0, Lca/uhn/hl7v2/llp/MllpEncoder;->omitBOM:Z

    .line 45
    return-void
.end method

.method protected static asByteArray(Ljava/lang/String;Ljava/nio/charset/Charset;Z)[B
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "omitBOM"    # Z

    .line 82
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 83
    .local v0, "b":[B
    if-eqz p2, :cond_0

    invoke-static {v0}, Lca/uhn/hl7v2/llp/CharSetUtil;->withoutBOM([B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1

    .line 84
    .end local v0    # "b":[B
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public putMessage(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lca/uhn/hl7v2/llp/LLPException;
        }
    .end annotation

    .line 58
    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/llp/MllpEncoder;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 59
    .local v0, "bytes":[B
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xb

    const/16 v4, 0x1c

    const/16 v5, 0xd

    array-length v6, v0

    add-int/lit8 v6, v6, 0x3

    new-array v6, v6, [B

    .line 60
    .local v6, "outBytes":[B
    aput-byte v3, v6, v2

    .line 61
    array-length v3, v0

    invoke-static {v0, v2, v6, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    array-length v2, v6

    add-int/lit8 v2, v2, -0x2

    aput-byte v4, v6, v2

    .line 63
    array-length v2, v6

    sub-int/2addr v2, v1

    aput-byte v5, v6, v2

    .line 65
    invoke-virtual {p2, v6}, Ljava/io/OutputStream;->write([B)V

    .line 66
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 67
    return-void
.end method

.method protected toByteArray(Ljava/lang/String;)[B
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lca/uhn/hl7v2/llp/MllpEncoder;->charset:Ljava/nio/charset/Charset;

    iget-boolean v1, p0, Lca/uhn/hl7v2/llp/MllpEncoder;->omitBOM:Z

    invoke-static {p1, v0, v1}, Lca/uhn/hl7v2/llp/MllpEncoder;->asByteArray(Ljava/lang/String;Ljava/nio/charset/Charset;Z)[B

    move-result-object v0

    return-object v0
.end method
