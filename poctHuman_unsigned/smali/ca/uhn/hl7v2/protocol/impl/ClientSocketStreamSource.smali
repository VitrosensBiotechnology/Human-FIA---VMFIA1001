.class public Lca/uhn/hl7v2/protocol/impl/ClientSocketStreamSource;
.super Lca/uhn/hl7v2/protocol/impl/SocketStreamSource;
.source "ClientSocketStreamSource.java"


# instance fields
.field private myAddress:Ljava/net/SocketAddress;

.field private mySocket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/SocketAddress;)V
    .locals 0
    .param p1, "theAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/TransportException;
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Lca/uhn/hl7v2/protocol/impl/SocketStreamSource;-><init>()V

    .line 28
    iput-object p1, p0, Lca/uhn/hl7v2/protocol/impl/ClientSocketStreamSource;->myAddress:Ljava/net/SocketAddress;

    .line 29
    return-void
.end method

.method private getSocket(Ljava/net/SocketAddress;)Ljava/net/Socket;
    .locals 3
    .param p1, "theAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/TransportException;
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    .line 48
    .local v0, "s":Ljava/net/Socket;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    nop

    .line 52
    return-object v0

    .line 49
    :catch_0
    move-exception v1

    .line 50
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lca/uhn/hl7v2/protocol/TransportException;

    invoke-direct {v2, v1}, Lca/uhn/hl7v2/protocol/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/TransportException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/ClientSocketStreamSource;->myAddress:Ljava/net/SocketAddress;

    invoke-direct {p0, v0}, Lca/uhn/hl7v2/protocol/impl/ClientSocketStreamSource;->getSocket(Ljava/net/SocketAddress;)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/protocol/impl/ClientSocketStreamSource;->mySocket:Ljava/net/Socket;

    .line 43
    return-void
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 1

    .line 35
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/ClientSocketStreamSource;->mySocket:Ljava/net/Socket;

    return-object v0
.end method
