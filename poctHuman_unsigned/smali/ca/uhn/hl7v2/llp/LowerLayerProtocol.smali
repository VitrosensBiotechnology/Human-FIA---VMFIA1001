.class public abstract Lca/uhn/hl7v2/llp/LowerLayerProtocol;
.super Ljava/lang/Object;
.source "LowerLayerProtocol.java"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field protected charset:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lca/uhn/hl7v2/llp/LowerLayerProtocol;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/llp/LowerLayerProtocol;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logCharacterReceived(I)V
    .locals 4
    .param p0, "c"    # I

    .line 95
    sget-object v0, Lca/uhn/hl7v2/llp/LowerLayerProtocol;->log:Lorg/slf4j/Logger;

    const-string v1, "Char received: {} ({})"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    int-to-char v3, p0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    return-void
.end method

.method public static makeLLP()Lca/uhn/hl7v2/llp/LowerLayerProtocol;
    .locals 1

    .line 60
    new-instance v0, Lca/uhn/hl7v2/llp/MinLowerLayerProtocol;

    invoke-direct {v0}, Lca/uhn/hl7v2/llp/MinLowerLayerProtocol;-><init>()V

    return-object v0
.end method

.method public static makeLLP(Z)Lca/uhn/hl7v2/llp/LowerLayerProtocol;
    .locals 1
    .param p0, "respectMSH18"    # Z

    .line 69
    new-instance v0, Lca/uhn/hl7v2/llp/MinLowerLayerProtocol;

    invoke-direct {v0, p0}, Lca/uhn/hl7v2/llp/MinLowerLayerProtocol;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public abstract getReader(Ljava/io/InputStream;)Lca/uhn/hl7v2/llp/HL7Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/llp/LLPException;
        }
    .end annotation
.end method

.method public abstract getWriter(Ljava/io/OutputStream;)Lca/uhn/hl7v2/llp/HL7Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/llp/LLPException;
        }
    .end annotation
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 1
    .param p1, "charsetName"    # Ljava/lang/String;

    .line 113
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/llp/LowerLayerProtocol;->charset:Ljava/nio/charset/Charset;

    .line 114
    return-void
.end method

.method public setCharset(Ljava/nio/charset/Charset;)V
    .locals 0
    .param p1, "theCharset"    # Ljava/nio/charset/Charset;

    .line 104
    iput-object p1, p0, Lca/uhn/hl7v2/llp/LowerLayerProtocol;->charset:Ljava/nio/charset/Charset;

    .line 105
    return-void
.end method
