.class enum Lca/uhn/hl7v2/llp/MllpDecoderState$3;
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

    .line 76
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
            Ljava/io/IOException;,
            Lca/uhn/hl7v2/llp/LLPException;
        }
    .end annotation

    .line 84
    new-instance v0, Lca/uhn/hl7v2/llp/LLPException;

    const-string v1, "MLLP protocol violation - Stream ends before LLP end byte"

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/llp/LLPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected proceed()Lca/uhn/hl7v2/llp/MllpDecoderState;
    .locals 1

    .line 79
    sget-object v0, Lca/uhn/hl7v2/llp/MllpDecoderState$3;->END:Lca/uhn/hl7v2/llp/MllpDecoderState;

    return-object v0
.end method
