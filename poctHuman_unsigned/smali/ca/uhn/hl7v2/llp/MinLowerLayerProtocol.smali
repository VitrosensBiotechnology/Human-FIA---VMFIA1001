.class public Lca/uhn/hl7v2/llp/MinLowerLayerProtocol;
.super Lca/uhn/hl7v2/llp/LowerLayerProtocol;
.source "MinLowerLayerProtocol.java"


# instance fields
.field private final omitBOM:Z

.field private final respectMSH18:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lca/uhn/hl7v2/llp/MinLowerLayerProtocol;-><init>(ZZ)V

    .line 77
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "respectMSH18"    # Z

    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lca/uhn/hl7v2/llp/MinLowerLayerProtocol;-><init>(ZZ)V

    .line 81
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0
    .param p1, "respectMSH18"    # Z
    .param p2, "omitBOM"    # Z

    .line 83
    invoke-direct {p0}, Lca/uhn/hl7v2/llp/LowerLayerProtocol;-><init>()V

    .line 84
    iput-boolean p1, p0, Lca/uhn/hl7v2/llp/MinLowerLayerProtocol;->respectMSH18:Z

    .line 85
    iput-boolean p2, p0, Lca/uhn/hl7v2/llp/MinLowerLayerProtocol;->omitBOM:Z

    .line 86
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

    .line 94
    :try_start_0
    iget-boolean v0, p0, Lca/uhn/hl7v2/llp/MinLowerLayerProtocol;->respectMSH18:Z

    if-eqz v0, :cond_0

    .line 95
    new-instance v0, Lca/uhn/hl7v2/llp/ExtendedMinLLPReader;

    iget-object v1, p0, Lca/uhn/hl7v2/llp/MinLowerLayerProtocol;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Lca/uhn/hl7v2/llp/ExtendedMinLLPReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    goto :goto_0

    .line 96
    :cond_0
    new-instance v0, Lca/uhn/hl7v2/llp/MinLLPReader;

    iget-object v1, p0, Lca/uhn/hl7v2/llp/MinLowerLayerProtocol;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Lca/uhn/hl7v2/llp/MinLLPReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-object v0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lca/uhn/hl7v2/llp/LLPException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t create Reader with the given input stream: "

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
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/llp/LLPException;
        }
    .end annotation

    .line 108
    :try_start_0
    iget-boolean v0, p0, Lca/uhn/hl7v2/llp/MinLowerLayerProtocol;->respectMSH18:Z

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Lca/uhn/hl7v2/llp/ExtendedMinLLPWriter;

    iget-object v1, p0, Lca/uhn/hl7v2/llp/MinLowerLayerProtocol;->charset:Ljava/nio/charset/Charset;

    iget-boolean v2, p0, Lca/uhn/hl7v2/llp/MinLowerLayerProtocol;->omitBOM:Z

    invoke-direct {v0, p1, v1, v2}, Lca/uhn/hl7v2/llp/ExtendedMinLLPWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Z)V

    goto :goto_0

    .line 110
    :cond_0
    new-instance v0, Lca/uhn/hl7v2/llp/MinLLPWriter;

    iget-object v1, p0, Lca/uhn/hl7v2/llp/MinLowerLayerProtocol;->charset:Ljava/nio/charset/Charset;

    iget-boolean v2, p0, Lca/uhn/hl7v2/llp/MinLowerLayerProtocol;->omitBOM:Z

    invoke-direct {v0, p1, v1, v2}, Lca/uhn/hl7v2/llp/MinLLPWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-object v0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lca/uhn/hl7v2/llp/LLPException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t create Writer with the given output stream: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lca/uhn/hl7v2/llp/LLPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
