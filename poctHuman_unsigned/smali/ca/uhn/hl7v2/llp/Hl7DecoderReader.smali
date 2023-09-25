.class abstract Lca/uhn/hl7v2/llp/Hl7DecoderReader;
.super Ljava/lang/Object;
.source "Hl7DecoderReader.java"

# interfaces
.implements Lca/uhn/hl7v2/llp/HL7Reader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lca/uhn/hl7v2/llp/MllpDecoder;",
        ">",
        "Ljava/lang/Object;",
        "Lca/uhn/hl7v2/llp/HL7Reader;"
    }
.end annotation


# instance fields
.field private charset:Ljava/nio/charset/Charset;

.field private decoder:Lca/uhn/hl7v2/llp/MllpDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    .local p0, "this":Lca/uhn/hl7v2/llp/Hl7DecoderReader;, "Lca/uhn/hl7v2/llp/Hl7DecoderReader<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p0}, Lca/uhn/hl7v2/llp/Hl7DecoderReader;->initDecoder()Lca/uhn/hl7v2/llp/MllpDecoder;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/llp/Hl7DecoderReader;->decoder:Lca/uhn/hl7v2/llp/MllpDecoder;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lca/uhn/hl7v2/llp/Hl7DecoderReader;, "Lca/uhn/hl7v2/llp/Hl7DecoderReader<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/llp/Hl7DecoderReader;->setInputStream(Ljava/io/InputStream;)V

    .line 51
    invoke-virtual {p0}, Lca/uhn/hl7v2/llp/Hl7DecoderReader;->initDecoder()Lca/uhn/hl7v2/llp/MllpDecoder;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/llp/Hl7DecoderReader;->decoder:Lca/uhn/hl7v2/llp/MllpDecoder;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    .local p0, "this":Lca/uhn/hl7v2/llp/Hl7DecoderReader;, "Lca/uhn/hl7v2/llp/Hl7DecoderReader<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/llp/Hl7DecoderReader;->setInputStream(Ljava/io/InputStream;)V

    .line 56
    iput-object p2, p0, Lca/uhn/hl7v2/llp/Hl7DecoderReader;->charset:Ljava/nio/charset/Charset;

    .line 57
    invoke-virtual {p0}, Lca/uhn/hl7v2/llp/Hl7DecoderReader;->initDecoder()Lca/uhn/hl7v2/llp/MllpDecoder;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/llp/Hl7DecoderReader;->decoder:Lca/uhn/hl7v2/llp/MllpDecoder;

    .line 58
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    .local p0, "this":Lca/uhn/hl7v2/llp/Hl7DecoderReader;, "Lca/uhn/hl7v2/llp/Hl7DecoderReader<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/llp/Hl7DecoderReader;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lca/uhn/hl7v2/llp/Hl7DecoderReader;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 81
    :cond_0
    return-void
.end method

.method protected getCharset()Ljava/nio/charset/Charset;
    .locals 2

    .line 63
    .local p0, "this":Lca/uhn/hl7v2/llp/Hl7DecoderReader;, "Lca/uhn/hl7v2/llp/Hl7DecoderReader<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/llp/Hl7DecoderReader;->charset:Ljava/nio/charset/Charset;

    if-nez v0, :cond_1

    .line 64
    const-string v0, "ca.uhn.hl7v2.llp.charset"

    const-string v1, "US-ASCII"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "charsetString":Ljava/lang/String;
    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    iput-object v1, p0, Lca/uhn/hl7v2/llp/Hl7DecoderReader;->charset:Ljava/nio/charset/Charset;

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    iput-object v1, p0, Lca/uhn/hl7v2/llp/Hl7DecoderReader;->charset:Ljava/nio/charset/Charset;

    .line 71
    .end local v0    # "charsetString":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v0, p0, Lca/uhn/hl7v2/llp/Hl7DecoderReader;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method protected getDecoder()Lca/uhn/hl7v2/llp/MllpDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 88
    .local p0, "this":Lca/uhn/hl7v2/llp/Hl7DecoderReader;, "Lca/uhn/hl7v2/llp/Hl7DecoderReader<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/llp/Hl7DecoderReader;->decoder:Lca/uhn/hl7v2/llp/MllpDecoder;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lca/uhn/hl7v2/llp/LLPException;
        }
    .end annotation

    .line 84
    .local p0, "this":Lca/uhn/hl7v2/llp/Hl7DecoderReader;, "Lca/uhn/hl7v2/llp/Hl7DecoderReader<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/llp/Hl7DecoderReader;->decoder:Lca/uhn/hl7v2/llp/MllpDecoder;

    iget-object v1, p0, Lca/uhn/hl7v2/llp/Hl7DecoderReader;->in:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/llp/MllpDecoder;->getMessage(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract initDecoder()Lca/uhn/hl7v2/llp/MllpDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    .local p0, "this":Lca/uhn/hl7v2/llp/Hl7DecoderReader;, "Lca/uhn/hl7v2/llp/Hl7DecoderReader<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "InputStream is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lca/uhn/hl7v2/llp/Hl7DecoderReader;->in:Ljava/io/InputStream;

    .line 77
    return-void
.end method
