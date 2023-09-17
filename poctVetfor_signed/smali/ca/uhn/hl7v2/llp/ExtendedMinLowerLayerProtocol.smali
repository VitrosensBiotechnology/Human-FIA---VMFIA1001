.class public Lca/uhn/hl7v2/llp/ExtendedMinLowerLayerProtocol;
.super Lca/uhn/hl7v2/llp/LowerLayerProtocol;
.source "ExtendedMinLowerLayerProtocol.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lca/uhn/hl7v2/llp/LowerLayerProtocol;-><init>()V

    return-void
.end method


# virtual methods
.method public getReader(Ljava/io/InputStream;)Lca/uhn/hl7v2/llp/HL7Reader;
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/llp/LLPException;
        }
    .end annotation

    .line 66
    :try_start_0
    new-instance v0, Lca/uhn/hl7v2/llp/ExtendedMinLLPReader;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/llp/ExtendedMinLLPReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lca/uhn/hl7v2/llp/LLPException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t create MinLLPReader with the given input stream: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lca/uhn/hl7v2/llp/LLPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public getWriter(Ljava/io/OutputStream;)Lca/uhn/hl7v2/llp/HL7Writer;
    .locals 4
    .param p1, "theOut"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/llp/LLPException;
        }
    .end annotation

    .line 78
    :try_start_0
    new-instance v0, Lca/uhn/hl7v2/llp/ExtendedMinLLPWriter;

    iget-object v1, p0, Lca/uhn/hl7v2/llp/ExtendedMinLowerLayerProtocol;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Lca/uhn/hl7v2/llp/ExtendedMinLLPWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lca/uhn/hl7v2/llp/LLPException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t create ExtendedMllpWriter with the given output stream: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lca/uhn/hl7v2/llp/LLPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
