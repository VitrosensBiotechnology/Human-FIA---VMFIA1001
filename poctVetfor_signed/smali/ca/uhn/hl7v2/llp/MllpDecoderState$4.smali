.class enum Lca/uhn/hl7v2/llp/MllpDecoderState$4;
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

    .line 87
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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lca/uhn/hl7v2/llp/LLPException;
        }
    .end annotation

    .line 95
    return-void
.end method

.method protected proceed()Lca/uhn/hl7v2/llp/MllpDecoderState;
    .locals 1

    .line 90
    sget-object v0, Lca/uhn/hl7v2/llp/MllpDecoderState$4;->END:Lca/uhn/hl7v2/llp/MllpDecoderState;

    return-object v0
.end method

.method read(Ljava/io/InputStream;Ljava/io/OutputStream;)Lca/uhn/hl7v2/llp/MllpDecoderState;
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lca/uhn/hl7v2/llp/LLPException;
        }
    .end annotation

    .line 99
    new-instance v0, Lca/uhn/hl7v2/llp/LLPException;

    const-string v1, "Internal error - reading after end of message"

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/llp/LLPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
