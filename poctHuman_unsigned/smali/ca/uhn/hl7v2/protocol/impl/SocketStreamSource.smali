.class public abstract Lca/uhn/hl7v2/protocol/impl/SocketStreamSource;
.super Ljava/lang/Object;
.source "SocketStreamSource.java"

# interfaces
.implements Lca/uhn/hl7v2/protocol/StreamSource;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkConnected()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/TransportException;
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Lca/uhn/hl7v2/protocol/impl/SocketStreamSource;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lca/uhn/hl7v2/protocol/TransportException;

    const-string v1, "The socket is not connected"

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/protocol/TransportException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    return-void
.end method

.method private isConnected()Z
    .locals 2

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, "is":Z
    invoke-virtual {p0}, Lca/uhn/hl7v2/protocol/impl/SocketStreamSource;->getSocket()Ljava/net/Socket;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lca/uhn/hl7v2/protocol/impl/SocketStreamSource;->getSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lca/uhn/hl7v2/protocol/impl/SocketStreamSource;->getSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    const/4 v0, 0x1

    .line 73
    :cond_0
    return v0
.end method


# virtual methods
.method public abstract connect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/TransportException;
        }
    .end annotation
.end method

.method public disconnect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/TransportException;
        }
    .end annotation

    .line 40
    :try_start_0
    invoke-direct {p0}, Lca/uhn/hl7v2/protocol/impl/SocketStreamSource;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lca/uhn/hl7v2/protocol/impl/SocketStreamSource;->getOutboundStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 42
    invoke-virtual {p0}, Lca/uhn/hl7v2/protocol/impl/SocketStreamSource;->getInboundStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 43
    invoke-virtual {p0}, Lca/uhn/hl7v2/protocol/impl/SocketStreamSource;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    nop

    .line 48
    :cond_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lca/uhn/hl7v2/protocol/TransportException;

    invoke-direct {v1, v0}, Lca/uhn/hl7v2/protocol/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getInboundStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/TransportException;
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Lca/uhn/hl7v2/protocol/impl/SocketStreamSource;->checkConnected()V

    .line 82
    :try_start_0
    invoke-virtual {p0}, Lca/uhn/hl7v2/protocol/impl/SocketStreamSource;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lca/uhn/hl7v2/protocol/TransportException;

    invoke-direct {v1, v0}, Lca/uhn/hl7v2/protocol/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getOutboundStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/TransportException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Lca/uhn/hl7v2/protocol/impl/SocketStreamSource;->checkConnected()V

    .line 56
    :try_start_0
    invoke-virtual {p0}, Lca/uhn/hl7v2/protocol/impl/SocketStreamSource;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lca/uhn/hl7v2/protocol/TransportException;

    invoke-direct {v1, v0}, Lca/uhn/hl7v2/protocol/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract getSocket()Ljava/net/Socket;
.end method
