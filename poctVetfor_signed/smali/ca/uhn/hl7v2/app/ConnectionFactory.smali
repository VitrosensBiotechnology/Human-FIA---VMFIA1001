.class Lca/uhn/hl7v2/app/ConnectionFactory;
.super Ljava/lang/Object;
.source "ConnectionFactory.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createSocket(Lca/uhn/hl7v2/util/SocketFactory;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 2
    .param p0, "socketFactory"    # Lca/uhn/hl7v2/util/SocketFactory;
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "tls"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    if-eqz p3, :cond_0

    .line 73
    invoke-interface {p0}, Lca/uhn/hl7v2/util/SocketFactory;->createTlsSocket()Ljava/net/Socket;

    move-result-object v0

    .line 74
    .local v0, "socket":Ljava/net/Socket;
    goto :goto_0

    .line 75
    .end local v0    # "socket":Ljava/net/Socket;
    :cond_0
    invoke-interface {p0}, Lca/uhn/hl7v2/util/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .line 77
    .restart local v0    # "socket":Ljava/net/Socket;
    :goto_0
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 78
    return-object v0
.end method

.method public static open(Lca/uhn/hl7v2/app/ConnectionData;Ljava/util/concurrent/ExecutorService;)Lca/uhn/hl7v2/app/Connection;
    .locals 1
    .param p0, "connectionData"    # Lca/uhn/hl7v2/app/ConnectionData;
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lca/uhn/hl7v2/app/ConnectionData;->isLazy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Lca/uhn/hl7v2/app/LazyConnection;

    invoke-direct {v0, p0, p1}, Lca/uhn/hl7v2/app/LazyConnection;-><init>(Lca/uhn/hl7v2/app/ConnectionData;Ljava/util/concurrent/ExecutorService;)V

    goto :goto_0

    .line 44
    :cond_0
    invoke-static {p0, p1}, Lca/uhn/hl7v2/app/ConnectionFactory;->openEagerly(Lca/uhn/hl7v2/app/ConnectionData;Ljava/util/concurrent/ExecutorService;)Lca/uhn/hl7v2/app/Connection;

    move-result-object v0

    .line 42
    :goto_0
    return-object v0
.end method

.method public static openEagerly(Lca/uhn/hl7v2/app/ConnectionData;Ljava/util/concurrent/ExecutorService;)Lca/uhn/hl7v2/app/Connection;
    .locals 10
    .param p0, "connectionData"    # Lca/uhn/hl7v2/app/ConnectionData;
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lca/uhn/hl7v2/app/ConnectionData;->getPort2()I

    move-result v0

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lca/uhn/hl7v2/app/ActiveConnection;

    invoke-virtual {p0}, Lca/uhn/hl7v2/app/ConnectionData;->getParser()Lca/uhn/hl7v2/parser/Parser;

    move-result-object v1

    .line 53
    invoke-virtual {p0}, Lca/uhn/hl7v2/app/ConnectionData;->getProtocol()Lca/uhn/hl7v2/llp/LowerLayerProtocol;

    move-result-object v2

    invoke-virtual {p0}, Lca/uhn/hl7v2/app/ConnectionData;->getSocketFactory()Lca/uhn/hl7v2/util/SocketFactory;

    move-result-object v3

    .line 54
    invoke-virtual {p0}, Lca/uhn/hl7v2/app/ConnectionData;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lca/uhn/hl7v2/app/ConnectionData;->getPort()I

    move-result v5

    .line 55
    invoke-virtual {p0}, Lca/uhn/hl7v2/app/ConnectionData;->isTls()Z

    move-result v6

    .line 53
    invoke-static {v3, v4, v5, v6}, Lca/uhn/hl7v2/app/ConnectionFactory;->createSocket(Lca/uhn/hl7v2/util/SocketFactory;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v3

    .line 55
    nop

    .line 52
    invoke-direct {v0, v1, v2, v3, p1}, Lca/uhn/hl7v2/app/ActiveConnection;-><init>(Lca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;Ljava/net/Socket;Ljava/util/concurrent/ExecutorService;)V

    .line 56
    .local v0, "connection":Lca/uhn/hl7v2/app/Connection;
    goto :goto_0

    .line 57
    .end local v0    # "connection":Lca/uhn/hl7v2/app/Connection;
    :cond_0
    invoke-virtual {p0}, Lca/uhn/hl7v2/app/ConnectionData;->getSocketFactory()Lca/uhn/hl7v2/util/SocketFactory;

    move-result-object v0

    invoke-virtual {p0}, Lca/uhn/hl7v2/app/ConnectionData;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-virtual {p0}, Lca/uhn/hl7v2/app/ConnectionData;->getPort()I

    move-result v2

    invoke-virtual {p0}, Lca/uhn/hl7v2/app/ConnectionData;->isTls()Z

    move-result v3

    .line 57
    invoke-static {v0, v1, v2, v3}, Lca/uhn/hl7v2/app/ConnectionFactory;->createSocket(Lca/uhn/hl7v2/util/SocketFactory;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    .line 59
    .local v0, "outbound":Ljava/net/Socket;
    invoke-virtual {p0}, Lca/uhn/hl7v2/app/ConnectionData;->getSocketFactory()Lca/uhn/hl7v2/util/SocketFactory;

    move-result-object v1

    invoke-virtual {p0}, Lca/uhn/hl7v2/app/ConnectionData;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-virtual {p0}, Lca/uhn/hl7v2/app/ConnectionData;->getPort2()I

    move-result v3

    invoke-virtual {p0}, Lca/uhn/hl7v2/app/ConnectionData;->isTls()Z

    move-result v4

    .line 59
    invoke-static {v1, v2, v3, v4}, Lca/uhn/hl7v2/app/ConnectionFactory;->createSocket(Lca/uhn/hl7v2/util/SocketFactory;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v1

    .line 61
    .local v1, "inbound":Ljava/net/Socket;
    new-instance v2, Lca/uhn/hl7v2/app/ActiveConnection;

    invoke-virtual {p0}, Lca/uhn/hl7v2/app/ConnectionData;->getParser()Lca/uhn/hl7v2/parser/Parser;

    move-result-object v5

    .line 62
    invoke-virtual {p0}, Lca/uhn/hl7v2/app/ConnectionData;->getProtocol()Lca/uhn/hl7v2/llp/LowerLayerProtocol;

    move-result-object v6

    .line 63
    nop

    .line 61
    move-object v4, v2

    move-object v7, v1

    move-object v8, v0

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Lca/uhn/hl7v2/app/ActiveConnection;-><init>(Lca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;Ljava/net/Socket;Ljava/net/Socket;Ljava/util/concurrent/ExecutorService;)V

    .line 61
    .end local v0    # "outbound":Ljava/net/Socket;
    .end local v1    # "inbound":Ljava/net/Socket;
    move-object v0, v2

    .line 65
    .local v0, "connection":Lca/uhn/hl7v2/app/Connection;
    :goto_0
    invoke-interface {v0}, Lca/uhn/hl7v2/app/Connection;->activate()V

    .line 66
    return-object v0
.end method
