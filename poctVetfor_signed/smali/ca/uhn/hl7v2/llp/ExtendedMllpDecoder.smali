.class Lca/uhn/hl7v2/llp/ExtendedMllpDecoder;
.super Lca/uhn/hl7v2/llp/MllpDecoder;
.source "ExtendedMllpDecoder.java"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private lastCharset:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lca/uhn/hl7v2/llp/ExtendedMllpDecoder;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/llp/ExtendedMllpDecoder;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 0
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 50
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/llp/MllpDecoder;-><init>(Ljava/nio/charset/Charset;)V

    .line 51
    return-void
.end method


# virtual methods
.method getLastCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 69
    iget-object v0, p0, Lca/uhn/hl7v2/llp/ExtendedMllpDecoder;->lastCharset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method protected toString([B)Ljava/lang/String;
    .locals 2
    .param p1, "data"    # [B

    .line 62
    iget-object v0, p0, Lca/uhn/hl7v2/llp/ExtendedMllpDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lca/uhn/hl7v2/llp/CharSetUtil;->checkCharset([BLjava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 63
    .local v0, "charset":Ljava/nio/charset/Charset;
    iput-object v0, p0, Lca/uhn/hl7v2/llp/ExtendedMllpDecoder;->lastCharset:Ljava/nio/charset/Charset;

    .line 64
    invoke-static {p1, v0}, Lca/uhn/hl7v2/llp/ExtendedMllpDecoder;->asString([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
