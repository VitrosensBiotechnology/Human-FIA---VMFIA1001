.class public Lca/uhn/hl7v2/protocol/impl/AcceptAcknowledger;
.super Ljava/lang/Object;
.source "AcceptAcknowledger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lca/uhn/hl7v2/protocol/impl/AcceptAcknowledger$AcceptACK;
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;

.field private static ourParser:Lca/uhn/hl7v2/parser/Parser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lca/uhn/hl7v2/protocol/impl/AcceptAcknowledger;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/protocol/impl/AcceptAcknowledger;->log:Lorg/slf4j/Logger;

    .line 35
    new-instance v0, Lca/uhn/hl7v2/parser/GenericParser;

    invoke-direct {v0}, Lca/uhn/hl7v2/parser/GenericParser;-><init>()V

    sput-object v0, Lca/uhn/hl7v2/protocol/impl/AcceptAcknowledger;->ourParser:Lca/uhn/hl7v2/parser/Parser;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static makeAcceptAck(Lca/uhn/hl7v2/protocol/Transportable;Ljava/lang/String;Lca/uhn/hl7v2/ErrorCode;Ljava/lang/String;)Lca/uhn/hl7v2/protocol/Transportable;
    .locals 8
    .param p0, "theMessage"    # Lca/uhn/hl7v2/protocol/Transportable;
    .param p1, "theAckCode"    # Ljava/lang/String;
    .param p2, "theErrorCode"    # Lca/uhn/hl7v2/ErrorCode;
    .param p3, "theDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 73
    sget-object v0, Lca/uhn/hl7v2/protocol/impl/AcceptAcknowledger;->ourParser:Lca/uhn/hl7v2/parser/Parser;

    invoke-interface {p0}, Lca/uhn/hl7v2/protocol/Transportable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/parser/Parser;->getCriticalResponseData(Ljava/lang/String;)Lca/uhn/hl7v2/model/Segment;

    move-result-object v0

    .line 74
    .local v0, "header":Lca/uhn/hl7v2/model/Segment;
    invoke-interface {v0}, Lca/uhn/hl7v2/model/Segment;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    .line 76
    .local v1, "dummy":Lca/uhn/hl7v2/model/Message;
    const-string v2, "MSH"

    invoke-interface {v1, v2}, Lca/uhn/hl7v2/model/Message;->get(Ljava/lang/String;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v2

    check-cast v2, Lca/uhn/hl7v2/model/Segment;

    invoke-static {v0, v2}, Lca/uhn/hl7v2/util/DeepCopy;->copy(Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/model/Segment;)V

    .line 79
    :try_start_0
    new-instance v2, Lca/uhn/hl7v2/HL7Exception;

    invoke-direct {v2, p3, p2}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;Lca/uhn/hl7v2/ErrorCode;)V

    .line 80
    .local v2, "hl7e":Lca/uhn/hl7v2/HL7Exception;
    if-nez p1, :cond_0

    .line 81
    sget-object v3, Lca/uhn/hl7v2/AcknowledgmentCode;->CR:Lca/uhn/hl7v2/AcknowledgmentCode;

    goto :goto_0

    .line 82
    :cond_0
    invoke-static {p1}, Lca/uhn/hl7v2/AcknowledgmentCode;->valueOf(Ljava/lang/String;)Lca/uhn/hl7v2/AcknowledgmentCode;

    move-result-object v3

    .line 80
    :goto_0
    nop

    .line 83
    .local v3, "code":Lca/uhn/hl7v2/AcknowledgmentCode;
    invoke-interface {v1, v3, v2}, Lca/uhn/hl7v2/model/Message;->generateACK(Lca/uhn/hl7v2/AcknowledgmentCode;Lca/uhn/hl7v2/HL7Exception;)Lca/uhn/hl7v2/model/Message;

    move-result-object v4

    .line 84
    .local v4, "out":Lca/uhn/hl7v2/model/Message;
    sget-object v5, Lca/uhn/hl7v2/protocol/impl/AcceptAcknowledger;->ourParser:Lca/uhn/hl7v2/parser/Parser;

    invoke-interface {p0}, Lca/uhn/hl7v2/protocol/Transportable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/parser/Parser;->getEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 85
    .local v5, "originalEncoding":Ljava/lang/String;
    sget-object v6, Lca/uhn/hl7v2/protocol/impl/AcceptAcknowledger;->ourParser:Lca/uhn/hl7v2/parser/Parser;

    invoke-virtual {v6, v4, v5}, Lca/uhn/hl7v2/parser/Parser;->encode(Lca/uhn/hl7v2/model/Message;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 86
    .local v6, "ackText":Ljava/lang/String;
    new-instance v7, Lca/uhn/hl7v2/protocol/impl/TransportableImpl;

    invoke-direct {v7, v6}, Lca/uhn/hl7v2/protocol/impl/TransportableImpl;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    .line 87
    .end local v2    # "hl7e":Lca/uhn/hl7v2/HL7Exception;
    .end local v3    # "code":Lca/uhn/hl7v2/AcknowledgmentCode;
    .end local v4    # "out":Lca/uhn/hl7v2/model/Message;
    .end local v5    # "originalEncoding":Ljava/lang/String;
    .end local v6    # "ackText":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 88
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lca/uhn/hl7v2/HL7Exception;

    invoke-direct {v3, v2}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static validate(Lca/uhn/hl7v2/protocol/ProcessorContext;Lca/uhn/hl7v2/protocol/Transportable;)Lca/uhn/hl7v2/protocol/impl/AcceptAcknowledger$AcceptACK;
    .locals 8
    .param p0, "theContext"    # Lca/uhn/hl7v2/protocol/ProcessorContext;
    .param p1, "theMessage"    # Lca/uhn/hl7v2/protocol/Transportable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 44
    const/4 v0, 0x0

    .line 46
    .local v0, "ruling":Lca/uhn/hl7v2/protocol/impl/AcceptAcknowledger$AcceptACK;
    invoke-interface {p0}, Lca/uhn/hl7v2/protocol/ProcessorContext;->getValidators()[Lca/uhn/hl7v2/protocol/AcceptValidator;

    move-result-object v1

    .line 47
    .local v1, "validators":[Lca/uhn/hl7v2/protocol/AcceptValidator;
    const/4 v2, 0x0

    .line 47
    .local v2, "i":I
    :goto_0
    const/4 v3, 0x0

    array-length v4, v1

    if-ge v2, v4, :cond_3

    if-eqz v0, :cond_0

    .line 47
    .end local v2    # "i":I
    goto :goto_2

    .line 48
    .restart local v2    # "i":I
    :cond_0
    aget-object v4, v1, v2

    invoke-interface {v4, p1}, Lca/uhn/hl7v2/protocol/AcceptValidator;->check(Lca/uhn/hl7v2/protocol/Transportable;)Lca/uhn/hl7v2/protocol/AcceptValidator$AcceptRuling;

    move-result-object v4

    .line 49
    .local v4, "vr":Lca/uhn/hl7v2/protocol/AcceptValidator$AcceptRuling;
    invoke-interface {v4}, Lca/uhn/hl7v2/protocol/AcceptValidator$AcceptRuling;->isAcceptable()Z

    move-result v5

    if-nez v5, :cond_2

    .line 50
    invoke-interface {v4}, Lca/uhn/hl7v2/protocol/AcceptValidator$AcceptRuling;->getReasons()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_1

    invoke-interface {v4}, Lca/uhn/hl7v2/protocol/AcceptValidator$AcceptRuling;->getReasons()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 51
    .local v5, "description":Ljava/lang/String;
    :goto_1
    invoke-interface {v4}, Lca/uhn/hl7v2/protocol/AcceptValidator$AcceptRuling;->getAckCode()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4}, Lca/uhn/hl7v2/protocol/AcceptValidator$AcceptRuling;->getErrorCode()I

    move-result v7

    invoke-static {v7}, Lca/uhn/hl7v2/ErrorCode;->errorCodeFor(I)Lca/uhn/hl7v2/ErrorCode;

    move-result-object v7

    invoke-static {p1, v6, v7, v5}, Lca/uhn/hl7v2/protocol/impl/AcceptAcknowledger;->makeAcceptAck(Lca/uhn/hl7v2/protocol/Transportable;Ljava/lang/String;Lca/uhn/hl7v2/ErrorCode;Ljava/lang/String;)Lca/uhn/hl7v2/protocol/Transportable;

    move-result-object v6

    .line 52
    .local v6, "ack":Lca/uhn/hl7v2/protocol/Transportable;
    new-instance v7, Lca/uhn/hl7v2/protocol/impl/AcceptAcknowledger$AcceptACK;

    invoke-direct {v7, v3, v6}, Lca/uhn/hl7v2/protocol/impl/AcceptAcknowledger$AcceptACK;-><init>(ZLca/uhn/hl7v2/protocol/Transportable;)V

    move-object v0, v7

    .line 47
    .end local v4    # "vr":Lca/uhn/hl7v2/protocol/AcceptValidator$AcceptRuling;
    .end local v5    # "description":Ljava/lang/String;
    .end local v6    # "ack":Lca/uhn/hl7v2/protocol/Transportable;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    .end local v2    # "i":I
    :cond_3
    :goto_2
    if-nez v0, :cond_4

    .line 58
    :try_start_0
    invoke-interface {p0}, Lca/uhn/hl7v2/protocol/ProcessorContext;->getSafeStorage()Lca/uhn/hl7v2/protocol/SafeStorage;

    move-result-object v2

    invoke-interface {v2, p1}, Lca/uhn/hl7v2/protocol/SafeStorage;->store(Lca/uhn/hl7v2/protocol/Transportable;)V

    .line 59
    const-string v2, "CA"

    sget-object v4, Lca/uhn/hl7v2/ErrorCode;->MESSAGE_ACCEPTED:Lca/uhn/hl7v2/ErrorCode;

    const-string v5, ""

    invoke-static {p1, v2, v4, v5}, Lca/uhn/hl7v2/protocol/impl/AcceptAcknowledger;->makeAcceptAck(Lca/uhn/hl7v2/protocol/Transportable;Ljava/lang/String;Lca/uhn/hl7v2/ErrorCode;Ljava/lang/String;)Lca/uhn/hl7v2/protocol/Transportable;

    move-result-object v2

    .line 60
    .local v2, "ack":Lca/uhn/hl7v2/protocol/Transportable;
    new-instance v4, Lca/uhn/hl7v2/protocol/impl/AcceptAcknowledger$AcceptACK;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v2}, Lca/uhn/hl7v2/protocol/impl/AcceptAcknowledger$AcceptACK;-><init>(ZLca/uhn/hl7v2/protocol/Transportable;)V
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 61
    .end local v2    # "ack":Lca/uhn/hl7v2/protocol/Transportable;
    goto :goto_3

    :catch_0
    move-exception v2

    .line 62
    .local v2, "e":Lca/uhn/hl7v2/HL7Exception;
    sget-object v4, Lca/uhn/hl7v2/protocol/impl/AcceptAcknowledger;->log:Lorg/slf4j/Logger;

    invoke-virtual {v2}, Lca/uhn/hl7v2/HL7Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    const-string v4, "CR"

    sget-object v5, Lca/uhn/hl7v2/ErrorCode;->APPLICATION_INTERNAL_ERROR:Lca/uhn/hl7v2/ErrorCode;

    invoke-virtual {v2}, Lca/uhn/hl7v2/HL7Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v4, v5, v6}, Lca/uhn/hl7v2/protocol/impl/AcceptAcknowledger;->makeAcceptAck(Lca/uhn/hl7v2/protocol/Transportable;Ljava/lang/String;Lca/uhn/hl7v2/ErrorCode;Ljava/lang/String;)Lca/uhn/hl7v2/protocol/Transportable;

    move-result-object v4

    .line 64
    .local v4, "ack":Lca/uhn/hl7v2/protocol/Transportable;
    new-instance v5, Lca/uhn/hl7v2/protocol/impl/AcceptAcknowledger$AcceptACK;

    invoke-direct {v5, v3, v4}, Lca/uhn/hl7v2/protocol/impl/AcceptAcknowledger$AcceptACK;-><init>(ZLca/uhn/hl7v2/protocol/Transportable;)V

    move-object v0, v5

    .line 68
    .end local v2    # "e":Lca/uhn/hl7v2/HL7Exception;
    .end local v4    # "ack":Lca/uhn/hl7v2/protocol/Transportable;
    :cond_4
    :goto_3
    return-object v0
.end method
