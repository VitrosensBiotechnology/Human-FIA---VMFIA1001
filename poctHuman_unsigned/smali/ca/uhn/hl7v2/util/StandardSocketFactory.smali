.class public Lca/uhn/hl7v2/util/StandardSocketFactory;
.super Ljava/lang/Object;
.source "StandardSocketFactory.java"

# interfaces
.implements Lca/uhn/hl7v2/util/SocketFactory;


# static fields
.field public static final DEFAULT_ACCEPTED_SOCKET_TIMEOUT:I = 0x1f4


# instance fields
.field private myAcceptedSocketTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/16 v0, 0x1f4

    iput v0, p0, Lca/uhn/hl7v2/util/StandardSocketFactory;->myAcceptedSocketTimeout:I

    .line 8
    return-void
.end method


# virtual methods
.method public configureNewAcceptedSocket(Ljava/net/Socket;)V
    .locals 1
    .param p1, "theSocket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 69
    iget v0, p0, Lca/uhn/hl7v2/util/StandardSocketFactory;->myAcceptedSocketTimeout:I

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 70
    return-void
.end method

.method public createServerSocket()Ljava/net/ServerSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-static {}, Ljavax/net/ServerSocketFactory;->getDefault()Ljavax/net/ServerSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ServerSocketFactory;->createServerSocket()Ljava/net/ServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket()Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .line 39
    .local v0, "retVal":Ljava/net/Socket;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 40
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 41
    return-object v0
.end method

.method public createTlsServerSocket()Ljava/net/ServerSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-static {}, Ljavax/net/ssl/SSLServerSocketFactory;->getDefault()Ljavax/net/ServerSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ServerSocketFactory;->createServerSocket()Ljava/net/ServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public createTlsSocket()Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .line 49
    .local v0, "retVal":Ljava/net/Socket;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 50
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 51
    return-object v0
.end method

.method public getAcceptedSocketTimeout()I
    .locals 1

    .line 21
    iget v0, p0, Lca/uhn/hl7v2/util/StandardSocketFactory;->myAcceptedSocketTimeout:I

    return v0
.end method

.method public setAcceptedSocketTimeout(I)V
    .locals 2
    .param p1, "theAcceptedSocketTimeout"    # I

    .line 28
    if-gez p1, :cond_0

    .line 29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    iput p1, p0, Lca/uhn/hl7v2/util/StandardSocketFactory;->myAcceptedSocketTimeout:I

    .line 32
    return-void
.end method
