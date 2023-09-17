.class Lca/uhn/hl7v2/llp/MllpDecoder;
.super Ljava/lang/Object;
.source "MllpDecoder.java"


# static fields
.field private static final ourLog:Lorg/slf4j/Logger;


# instance fields
.field protected charset:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lca/uhn/hl7v2/llp/MllpDecoder;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/llp/MllpDecoder;->ourLog:Lorg/slf4j/Logger;

    return-void
.end method

.method constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 0
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lca/uhn/hl7v2/llp/MllpDecoder;->charset:Ljava/nio/charset/Charset;

    .line 48
    return-void
.end method

.method protected static asString([BLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 89
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 90
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public getMessage(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lca/uhn/hl7v2/llp/LLPException;
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 61
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lca/uhn/hl7v2/llp/MllpDecoderState;->START:Lca/uhn/hl7v2/llp/MllpDecoderState;

    .line 62
    .local v2, "state":Lca/uhn/hl7v2/llp/MllpDecoderState;
    :goto_0
    sget-object v3, Lca/uhn/hl7v2/llp/MllpDecoderState;->END:Lca/uhn/hl7v2/llp/MllpDecoderState;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_1

    .line 65
    .end local v2    # "state":Lca/uhn/hl7v2/llp/MllpDecoderState;
    nop

    .line 73
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lca/uhn/hl7v2/llp/MllpDecoder;->toString([B)Ljava/lang/String;

    move-result-object v1

    nop

    :cond_0
    return-object v1

    .line 63
    .restart local v2    # "state":Lca/uhn/hl7v2/llp/MllpDecoderState;
    :cond_1
    :try_start_1
    invoke-virtual {v2, p1, v0}, Lca/uhn/hl7v2/llp/MllpDecoderState;->read(Ljava/io/InputStream;Ljava/io/OutputStream;)Lca/uhn/hl7v2/llp/MllpDecoderState;

    move-result-object v3
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v3

    goto :goto_0

    .line 65
    .end local v2    # "state":Lca/uhn/hl7v2/llp/MllpDecoderState;
    :catch_0
    move-exception v2

    .line 66
    .local v2, "e":Ljava/net/SocketTimeoutException;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 67
    sget-object v3, Lca/uhn/hl7v2/llp/MllpDecoder;->ourLog:Lorg/slf4j/Logger;

    const-string v4, "Got SocketTimeoutException while waiting for data"

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    sget-object v3, Lca/uhn/hl7v2/llp/MllpDecoder;->ourLog:Lorg/slf4j/Logger;

    const-string v4, "Got SocketTimeoutException while waiting for data, discarding {} bytes"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    :goto_1
    return-object v1
.end method

.method protected toString([B)Ljava/lang/String;
    .locals 1
    .param p1, "data"    # [B

    .line 84
    iget-object v0, p0, Lca/uhn/hl7v2/llp/MllpDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lca/uhn/hl7v2/llp/MllpDecoder;->asString([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
