.class abstract Lca/uhn/hl7v2/llp/HL7EncoderWriter;
.super Ljava/lang/Object;
.source "HL7EncoderWriter.java"

# interfaces
.implements Lca/uhn/hl7v2/llp/HL7Writer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lca/uhn/hl7v2/llp/MllpEncoder;",
        ">",
        "Ljava/lang/Object;",
        "Lca/uhn/hl7v2/llp/HL7Writer;"
    }
.end annotation


# instance fields
.field private charset:Ljava/nio/charset/Charset;

.field private encoder:Lca/uhn/hl7v2/llp/MllpEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected omitBOM:Z

.field private out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    .local p0, "this":Lca/uhn/hl7v2/llp/HL7EncoderWriter;, "Lca/uhn/hl7v2/llp/HL7EncoderWriter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p0}, Lca/uhn/hl7v2/llp/HL7EncoderWriter;->initEncoder()Lca/uhn/hl7v2/llp/MllpEncoder;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/llp/HL7EncoderWriter;->encoder:Lca/uhn/hl7v2/llp/MllpEncoder;

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    .local p0, "this":Lca/uhn/hl7v2/llp/HL7EncoderWriter;, "Lca/uhn/hl7v2/llp/HL7EncoderWriter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/llp/HL7EncoderWriter;->setOutputStream(Ljava/io/OutputStream;)V

    .line 70
    invoke-virtual {p0}, Lca/uhn/hl7v2/llp/HL7EncoderWriter;->initEncoder()Lca/uhn/hl7v2/llp/MllpEncoder;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/llp/HL7EncoderWriter;->encoder:Lca/uhn/hl7v2/llp/MllpEncoder;

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Z)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "omitBOM"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    .local p0, "this":Lca/uhn/hl7v2/llp/HL7EncoderWriter;, "Lca/uhn/hl7v2/llp/HL7EncoderWriter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lca/uhn/hl7v2/llp/HL7EncoderWriter;->out:Ljava/io/OutputStream;

    .line 78
    iput-object p2, p0, Lca/uhn/hl7v2/llp/HL7EncoderWriter;->charset:Ljava/nio/charset/Charset;

    .line 79
    iput-boolean p3, p0, Lca/uhn/hl7v2/llp/HL7EncoderWriter;->omitBOM:Z

    .line 80
    invoke-virtual {p0}, Lca/uhn/hl7v2/llp/HL7EncoderWriter;->initEncoder()Lca/uhn/hl7v2/llp/MllpEncoder;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/llp/HL7EncoderWriter;->encoder:Lca/uhn/hl7v2/llp/MllpEncoder;

    .line 81
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    .local p0, "this":Lca/uhn/hl7v2/llp/HL7EncoderWriter;, "Lca/uhn/hl7v2/llp/HL7EncoderWriter<TT;>;"
    monitor-enter p0

    .line 121
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/llp/HL7EncoderWriter;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lca/uhn/hl7v2/llp/HL7EncoderWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_0
    monitor-exit p0

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getCharset()Ljava/nio/charset/Charset;
    .locals 2

    .line 125
    .local p0, "this":Lca/uhn/hl7v2/llp/HL7EncoderWriter;, "Lca/uhn/hl7v2/llp/HL7EncoderWriter<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/llp/HL7EncoderWriter;->charset:Ljava/nio/charset/Charset;

    if-nez v0, :cond_1

    .line 126
    const-string v0, "ca.uhn.hl7v2.llp.charset"

    const-string v1, "US-ASCII"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "charsetString":Ljava/lang/String;
    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    iput-object v1, p0, Lca/uhn/hl7v2/llp/HL7EncoderWriter;->charset:Ljava/nio/charset/Charset;

    .line 129
    goto :goto_0

    .line 130
    :cond_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    iput-object v1, p0, Lca/uhn/hl7v2/llp/HL7EncoderWriter;->charset:Ljava/nio/charset/Charset;

    .line 133
    .end local v0    # "charsetString":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v0, p0, Lca/uhn/hl7v2/llp/HL7EncoderWriter;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method protected abstract initEncoder()Lca/uhn/hl7v2/llp/MllpEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public declared-synchronized setOutputStream(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    .local p0, "this":Lca/uhn/hl7v2/llp/HL7EncoderWriter;, "Lca/uhn/hl7v2/llp/HL7EncoderWriter<TT;>;"
    monitor-enter p0

    .line 89
    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "OutputStream must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    .end local p1    # "out":Ljava/io/OutputStream;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 90
    .restart local p1    # "out":Ljava/io/OutputStream;
    :cond_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lca/uhn/hl7v2/llp/HL7EncoderWriter;->out:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    .line 88
    .end local p1    # "out":Ljava/io/OutputStream;
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized writeMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/llp/LLPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    .local p0, "this":Lca/uhn/hl7v2/llp/HL7EncoderWriter;, "Lca/uhn/hl7v2/llp/HL7EncoderWriter<TT;>;"
    monitor-enter p0

    .line 98
    if-nez p1, :cond_0

    .line 99
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Message must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    .end local p1    # "message":Ljava/lang/String;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 101
    .restart local p1    # "message":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/llp/HL7EncoderWriter;->encoder:Lca/uhn/hl7v2/llp/MllpEncoder;

    iget-object v1, p0, Lca/uhn/hl7v2/llp/HL7EncoderWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, v1}, Lca/uhn/hl7v2/llp/MllpEncoder;->putMessage(Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    .line 97
    .end local p1    # "message":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized writeMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/llp/LLPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    .local p0, "this":Lca/uhn/hl7v2/llp/HL7EncoderWriter;, "Lca/uhn/hl7v2/llp/HL7EncoderWriter<TT;>;"
    monitor-enter p0

    .line 109
    if-nez p1, :cond_0

    .line 110
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Message may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    .end local p1    # "message":Ljava/lang/String;
    .end local p2    # "charset":Ljava/lang/String;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 112
    .restart local p1    # "message":Ljava/lang/String;
    .restart local p2    # "charset":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lca/uhn/hl7v2/llp/HL7EncoderWriter;->out:Ljava/io/OutputStream;

    invoke-direct {v0, v1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 113
    .local v0, "writer":Ljava/io/OutputStreamWriter;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 114
    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 115
    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 116
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 117
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    .line 108
    .end local v0    # "writer":Ljava/io/OutputStreamWriter;
    .end local p1    # "message":Ljava/lang/String;
    .end local p2    # "charset":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    throw p1
.end method
