.class abstract enum Lca/uhn/hl7v2/llp/MllpDecoderState;
.super Ljava/lang/Enum;
.source "MllpDecoderState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lca/uhn/hl7v2/llp/MllpDecoderState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BODY:Lca/uhn/hl7v2/llp/MllpDecoderState;

.field public static final enum END:Lca/uhn/hl7v2/llp/MllpDecoderState;

.field private static final synthetic ENUM$VALUES:[Lca/uhn/hl7v2/llp/MllpDecoderState;

.field private static final LOG:Lorg/slf4j/Logger;

.field public static final enum PREPARE_END:Lca/uhn/hl7v2/llp/MllpDecoderState;

.field public static final enum START:Lca/uhn/hl7v2/llp/MllpDecoderState;


# instance fields
.field private mustChangeState:Z

.field private nextStateByte:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 51
    new-instance v0, Lca/uhn/hl7v2/llp/MllpDecoderState$1;

    const-string v1, "START"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0xb

    invoke-direct {v0, v1, v3, v4, v2}, Lca/uhn/hl7v2/llp/MllpDecoderState$1;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lca/uhn/hl7v2/llp/MllpDecoderState;->START:Lca/uhn/hl7v2/llp/MllpDecoderState;

    .line 64
    new-instance v0, Lca/uhn/hl7v2/llp/MllpDecoderState$2;

    const-string v1, "BODY"

    const/16 v4, 0x1c

    invoke-direct {v0, v1, v2, v4, v3}, Lca/uhn/hl7v2/llp/MllpDecoderState$2;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lca/uhn/hl7v2/llp/MllpDecoderState;->BODY:Lca/uhn/hl7v2/llp/MllpDecoderState;

    .line 76
    new-instance v0, Lca/uhn/hl7v2/llp/MllpDecoderState$3;

    const-string v1, "PREPARE_END"

    const/4 v4, 0x2

    const/16 v5, 0xd

    invoke-direct {v0, v1, v4, v5, v2}, Lca/uhn/hl7v2/llp/MllpDecoderState$3;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lca/uhn/hl7v2/llp/MllpDecoderState;->PREPARE_END:Lca/uhn/hl7v2/llp/MllpDecoderState;

    .line 87
    new-instance v0, Lca/uhn/hl7v2/llp/MllpDecoderState$4;

    const-string v1, "END"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v3, v3}, Lca/uhn/hl7v2/llp/MllpDecoderState$4;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lca/uhn/hl7v2/llp/MllpDecoderState;->END:Lca/uhn/hl7v2/llp/MllpDecoderState;

    const/4 v0, 0x4

    new-array v0, v0, [Lca/uhn/hl7v2/llp/MllpDecoderState;

    sget-object v1, Lca/uhn/hl7v2/llp/MllpDecoderState;->START:Lca/uhn/hl7v2/llp/MllpDecoderState;

    aput-object v1, v0, v3

    sget-object v1, Lca/uhn/hl7v2/llp/MllpDecoderState;->BODY:Lca/uhn/hl7v2/llp/MllpDecoderState;

    aput-object v1, v0, v2

    sget-object v1, Lca/uhn/hl7v2/llp/MllpDecoderState;->PREPARE_END:Lca/uhn/hl7v2/llp/MllpDecoderState;

    aput-object v1, v0, v4

    sget-object v1, Lca/uhn/hl7v2/llp/MllpDecoderState;->END:Lca/uhn/hl7v2/llp/MllpDecoderState;

    aput-object v1, v0, v5

    sput-object v0, Lca/uhn/hl7v2/llp/MllpDecoderState;->ENUM$VALUES:[Lca/uhn/hl7v2/llp/MllpDecoderState;

    .line 106
    const-class v0, Lca/uhn/hl7v2/llp/MllpDecoderState;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/llp/MllpDecoderState;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .param p3, "nextStateByte"    # I
    .param p4, "mustChangeState"    # Z

    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 110
    iput p3, p0, Lca/uhn/hl7v2/llp/MllpDecoderState;->nextStateByte:I

    .line 111
    iput-boolean p4, p0, Lca/uhn/hl7v2/llp/MllpDecoderState;->mustChangeState:Z

    .line 112
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIZLca/uhn/hl7v2/llp/MllpDecoderState;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1, p2, p3, p4}, Lca/uhn/hl7v2/llp/MllpDecoderState;-><init>(Ljava/lang/String;IIZ)V

    return-void
.end method

.method static synthetic access$3()Lorg/slf4j/Logger;
    .locals 1

    .line 106
    sget-object v0, Lca/uhn/hl7v2/llp/MllpDecoderState;->LOG:Lorg/slf4j/Logger;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lca/uhn/hl7v2/llp/MllpDecoderState;
    .locals 1

    .line 1
    const-class v0, Lca/uhn/hl7v2/llp/MllpDecoderState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lca/uhn/hl7v2/llp/MllpDecoderState;

    return-object p0
.end method

.method public static values()[Lca/uhn/hl7v2/llp/MllpDecoderState;
    .locals 4

    .line 1
    sget-object v0, Lca/uhn/hl7v2/llp/MllpDecoderState;->ENUM$VALUES:[Lca/uhn/hl7v2/llp/MllpDecoderState;

    const/4 v1, 0x0

    array-length v2, v0

    new-array v3, v2, [Lca/uhn/hl7v2/llp/MllpDecoderState;

    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3
.end method


# virtual methods
.method protected abstract handleEndOfStream()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lca/uhn/hl7v2/llp/LLPException;
        }
    .end annotation
.end method

.method protected abstract proceed()Lca/uhn/hl7v2/llp/MllpDecoderState;
.end method

.method read(Ljava/io/InputStream;Ljava/io/OutputStream;)Lca/uhn/hl7v2/llp/MllpDecoderState;
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketTimeoutException;,
            Ljava/io/IOException;,
            Lca/uhn/hl7v2/llp/LLPException;
        }
    .end annotation

    .line 128
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    move v1, v0

    .line 128
    .local v1, "c":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 129
    invoke-virtual {p0}, Lca/uhn/hl7v2/llp/MllpDecoderState;->handleEndOfStream()V

    .line 130
    goto :goto_0

    .line 131
    :cond_0
    invoke-static {v1}, Lca/uhn/hl7v2/llp/LowerLayerProtocol;->logCharacterReceived(I)V

    .line 133
    :goto_0
    iget v0, p0, Lca/uhn/hl7v2/llp/MllpDecoderState;->nextStateByte:I

    if-ne v1, v0, :cond_1

    .line 134
    invoke-virtual {p0}, Lca/uhn/hl7v2/llp/MllpDecoderState;->proceed()Lca/uhn/hl7v2/llp/MllpDecoderState;

    move-result-object v0

    return-object v0

    .line 136
    :cond_1
    iget-boolean v0, p0, Lca/uhn/hl7v2/llp/MllpDecoderState;->mustChangeState:Z

    if-eqz v0, :cond_2

    .line 137
    new-instance v0, Lca/uhn/hl7v2/llp/LLPException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MLLP protocol violation - Expected byte \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lca/uhn/hl7v2/llp/MllpDecoderState;->nextStateByte:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    const-string v3, "\' in state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but was \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-direct {v0, v2}, Lca/uhn/hl7v2/llp/LLPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_2
    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    nop

    .line 146
    nop

    .line 148
    return-object p0

    .line 144
    .end local v1    # "c":I
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/net/SocketException;
    sget-object v1, Lca/uhn/hl7v2/llp/MllpDecoderState;->LOG:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SocketException on read() attempt.  Socket appears to have been closed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 146
    throw v0

    .line 141
    .end local v0    # "e":Ljava/net/SocketException;
    :catch_1
    move-exception v0

    .line 143
    .local v0, "e":Ljava/net/SocketTimeoutException;
    throw v0
.end method
