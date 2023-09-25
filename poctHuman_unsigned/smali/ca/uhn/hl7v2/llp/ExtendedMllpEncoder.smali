.class Lca/uhn/hl7v2/llp/ExtendedMllpEncoder;
.super Lca/uhn/hl7v2/llp/MllpEncoder;
.source "ExtendedMllpEncoder.java"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lca/uhn/hl7v2/llp/ExtendedMllpEncoder;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/llp/ExtendedMllpEncoder;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;Z)V
    .locals 0
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "omitBOM"    # Z

    .line 47
    invoke-direct {p0, p1, p2}, Lca/uhn/hl7v2/llp/MllpEncoder;-><init>(Ljava/nio/charset/Charset;Z)V

    .line 48
    return-void
.end method


# virtual methods
.method protected toByteArray(Ljava/lang/String;)[B
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lca/uhn/hl7v2/llp/ExtendedMllpEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lca/uhn/hl7v2/llp/CharSetUtil;->checkCharset(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 60
    .local v0, "charset":Ljava/nio/charset/Charset;
    iget-boolean v1, p0, Lca/uhn/hl7v2/llp/ExtendedMllpEncoder;->omitBOM:Z

    invoke-static {p1, v0, v1}, Lca/uhn/hl7v2/llp/ExtendedMllpEncoder;->asByteArray(Ljava/lang/String;Ljava/nio/charset/Charset;Z)[B

    move-result-object v1

    return-object v1
.end method
