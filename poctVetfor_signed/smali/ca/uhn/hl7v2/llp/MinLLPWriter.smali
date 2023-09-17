.class public Lca/uhn/hl7v2/llp/MinLLPWriter;
.super Lca/uhn/hl7v2/llp/HL7EncoderWriter;
.source "MinLLPWriter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lca/uhn/hl7v2/llp/HL7EncoderWriter<",
        "Lca/uhn/hl7v2/llp/MllpEncoder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lca/uhn/hl7v2/llp/HL7EncoderWriter;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/llp/HL7EncoderWriter;-><init>(Ljava/io/OutputStream;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lca/uhn/hl7v2/llp/MinLLPWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Z)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Z)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "omitBOM"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lca/uhn/hl7v2/llp/HL7EncoderWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Z)V

    .line 61
    return-void
.end method


# virtual methods
.method public bridge synthetic close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lca/uhn/hl7v2/llp/HL7EncoderWriter;->close()V

    return-void
.end method

.method protected initEncoder()Lca/uhn/hl7v2/llp/MllpEncoder;
    .locals 3

    .line 65
    new-instance v0, Lca/uhn/hl7v2/llp/MllpEncoder;

    invoke-virtual {p0}, Lca/uhn/hl7v2/llp/MinLLPWriter;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    iget-boolean v2, p0, Lca/uhn/hl7v2/llp/MinLLPWriter;->omitBOM:Z

    invoke-direct {v0, v1, v2}, Lca/uhn/hl7v2/llp/MllpEncoder;-><init>(Ljava/nio/charset/Charset;Z)V

    return-object v0
.end method

.method public bridge synthetic setOutputStream(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lca/uhn/hl7v2/llp/HL7EncoderWriter;->setOutputStream(Ljava/io/OutputStream;)V

    return-void
.end method

.method public bridge synthetic writeMessage(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/llp/LLPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lca/uhn/hl7v2/llp/HL7EncoderWriter;->writeMessage(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic writeMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/llp/LLPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lca/uhn/hl7v2/llp/HL7EncoderWriter;->writeMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
