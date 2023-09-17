.class enum Lca/uhn/hl7v2/llp/MllpDecoderState$1;
.super Lca/uhn/hl7v2/llp/MllpDecoderState;
.source "MllpDecoderState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/llp/MllpDecoderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4000
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IIZ)V
    .locals 6
    .param p3, "$anonymous0"    # I
    .param p4, "$anonymous1"    # Z

    .line 51
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lca/uhn/hl7v2/llp/MllpDecoderState;-><init>(Ljava/lang/String;IIZLca/uhn/hl7v2/llp/MllpDecoderState;)V

    .line 1
    return-void
.end method


# virtual methods
.method protected handleEndOfStream()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-static {}, Lca/uhn/hl7v2/llp/MllpDecoderState;->access$3()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "End of input stream reached."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 60
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "End of input stream reached before message starts"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected proceed()Lca/uhn/hl7v2/llp/MllpDecoderState;
    .locals 1

    .line 54
    sget-object v0, Lca/uhn/hl7v2/llp/MllpDecoderState$1;->BODY:Lca/uhn/hl7v2/llp/MllpDecoderState;

    return-object v0
.end method
