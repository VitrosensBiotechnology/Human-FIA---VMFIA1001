.class Lca/uhn/hl7v2/app/AcceptorThread;
.super Lca/uhn/hl7v2/concurrent/Service;
.source "AcceptorThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;
    }
.end annotation


# static fields
.field static final TIMEOUT:I = 0x1f4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private port:I

.field private final queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;",
            ">;"
        }
    .end annotation
.end field

.field private final socketFactory:Lca/uhn/hl7v2/util/SocketFactory;

.field private ss:Ljava/net/ServerSocket;

.field private tls:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-class v0, Lca/uhn/hl7v2/app/AcceptorThread;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 57
    sput-object v0, Lca/uhn/hl7v2/app/AcceptorThread;->log:Lorg/slf4j/Logger;

    .line 58
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ExecutorService;Ljava/util/concurrent/BlockingQueue;)V
    .locals 1
    .param p1, "port"    # I
    .param p2, "service"    # Ljava/util/concurrent/ExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 75
    .local p3, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lca/uhn/hl7v2/app/AcceptorThread;-><init>(IZLjava/util/concurrent/ExecutorService;Ljava/util/concurrent/BlockingQueue;)V

    .line 76
    return-void
.end method

.method public constructor <init>(IZLjava/util/concurrent/ExecutorService;Ljava/util/concurrent/BlockingQueue;)V
    .locals 6
    .param p1, "port"    # I
    .param p2, "tls"    # Z
    .param p3, "service"    # Ljava/util/concurrent/ExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 81
    .local p4, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lca/uhn/hl7v2/app/AcceptorThread;-><init>(IZLjava/util/concurrent/ExecutorService;Ljava/util/concurrent/BlockingQueue;Lca/uhn/hl7v2/util/SocketFactory;)V

    .line 82
    return-void
.end method

.method public constructor <init>(IZLjava/util/concurrent/ExecutorService;Ljava/util/concurrent/BlockingQueue;Lca/uhn/hl7v2/util/SocketFactory;)V
    .locals 1
    .param p1, "port"    # I
    .param p2, "tls"    # Z
    .param p3, "service"    # Ljava/util/concurrent/ExecutorService;
    .param p5, "socketFactory"    # Lca/uhn/hl7v2/util/SocketFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;",
            ">;",
            "Lca/uhn/hl7v2/util/SocketFactory;",
            ")V"
        }
    .end annotation

    .line 85
    .local p4, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;>;"
    const-string v0, "Socket Acceptor"

    invoke-direct {p0, v0, p3}, Lca/uhn/hl7v2/concurrent/Service;-><init>(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lca/uhn/hl7v2/app/AcceptorThread;->tls:Z

    .line 86
    iput p1, p0, Lca/uhn/hl7v2/app/AcceptorThread;->port:I

    .line 87
    iput-object p4, p0, Lca/uhn/hl7v2/app/AcceptorThread;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 88
    iput-boolean p2, p0, Lca/uhn/hl7v2/app/AcceptorThread;->tls:Z

    .line 89
    if-nez p5, :cond_0

    .line 90
    new-instance v0, Lca/uhn/hl7v2/util/StandardSocketFactory;

    invoke-direct {v0}, Lca/uhn/hl7v2/util/StandardSocketFactory;-><init>()V

    move-object p5, v0

    .line 92
    :cond_0
    iput-object p5, p0, Lca/uhn/hl7v2/app/AcceptorThread;->socketFactory:Lca/uhn/hl7v2/util/SocketFactory;

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/net/ServerSocket;ILjava/util/concurrent/ExecutorService;Ljava/util/concurrent/BlockingQueue;)V
    .locals 1
    .param p1, "serverSocket"    # Ljava/net/ServerSocket;
    .param p2, "port"    # I
    .param p3, "service"    # Ljava/util/concurrent/ExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/ServerSocket;",
            "I",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 68
    .local p4, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3, p4}, Lca/uhn/hl7v2/app/AcceptorThread;-><init>(IZLjava/util/concurrent/ExecutorService;Ljava/util/concurrent/BlockingQueue;)V

    .line 69
    iput-object p1, p0, Lca/uhn/hl7v2/app/AcceptorThread;->ss:Ljava/net/ServerSocket;

    .line 70
    return-void
.end method


# virtual methods
.method protected afterStartup()V
    .locals 5

    .line 97
    invoke-super {p0}, Lca/uhn/hl7v2/concurrent/Service;->afterStartup()V

    .line 99
    :try_start_0
    iget-boolean v0, p0, Lca/uhn/hl7v2/app/AcceptorThread;->tls:Z

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lca/uhn/hl7v2/app/AcceptorThread;->socketFactory:Lca/uhn/hl7v2/util/SocketFactory;

    invoke-interface {v0}, Lca/uhn/hl7v2/util/SocketFactory;->createTlsServerSocket()Ljava/net/ServerSocket;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/app/AcceptorThread;->ss:Ljava/net/ServerSocket;

    .line 101
    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/app/AcceptorThread;->socketFactory:Lca/uhn/hl7v2/util/SocketFactory;

    invoke-interface {v0}, Lca/uhn/hl7v2/util/SocketFactory;->createServerSocket()Ljava/net/ServerSocket;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/app/AcceptorThread;->ss:Ljava/net/ServerSocket;

    .line 104
    :goto_0
    iget-object v0, p0, Lca/uhn/hl7v2/app/AcceptorThread;->ss:Ljava/net/ServerSocket;

    new-instance v1, Ljava/net/InetSocketAddress;

    iget v2, p0, Lca/uhn/hl7v2/app/AcceptorThread;->port:I

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 105
    iget-object v0, p0, Lca/uhn/hl7v2/app/AcceptorThread;->ss:Ljava/net/ServerSocket;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    nop

    .line 110
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Unable to create ServerSocket on port %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lca/uhn/hl7v2/app/AcceptorThread;->port:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected afterTermination()V
    .locals 3

    .line 131
    invoke-super {p0}, Lca/uhn/hl7v2/concurrent/Service;->afterTermination()V

    .line 133
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/app/AcceptorThread;->ss:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lca/uhn/hl7v2/app/AcceptorThread;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lca/uhn/hl7v2/app/AcceptorThread;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    goto :goto_0

    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lca/uhn/hl7v2/app/AcceptorThread;->log:Lorg/slf4j/Logger;

    const-string v2, "Error during stopping the thread"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method protected handle()V
    .locals 3

    .line 115
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/app/AcceptorThread;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 116
    .local v0, "s":Ljava/net/Socket;
    iget-object v1, p0, Lca/uhn/hl7v2/app/AcceptorThread;->socketFactory:Lca/uhn/hl7v2/util/SocketFactory;

    invoke-interface {v1, v0}, Lca/uhn/hl7v2/util/SocketFactory;->configureNewAcceptedSocket(Ljava/net/Socket;)V

    .line 117
    iget-object v1, p0, Lca/uhn/hl7v2/app/AcceptorThread;->queue:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;

    invoke-direct {v2, p0, v0}, Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;-><init>(Lca/uhn/hl7v2/app/AcceptorThread;Ljava/net/Socket;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    sget-object v1, Lca/uhn/hl7v2/app/AcceptorThread;->log:Lorg/slf4j/Logger;

    const-string v2, "Denied enqueuing server-side socket {}"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 120
    goto :goto_0

    .line 121
    :cond_0
    sget-object v1, Lca/uhn/hl7v2/app/AcceptorThread;->log:Lorg/slf4j/Logger;

    const-string v2, "Enqueued server-side socket {}"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v0    # "s":Ljava/net/Socket;
    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lca/uhn/hl7v2/app/AcceptorThread;->log:Lorg/slf4j/Logger;

    const-string v2, "Error while accepting connections"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 122
    :catch_1
    move-exception v0

    .line 123
    .local v0, "e":Ljava/net/SocketTimeoutException;
    sget-object v1, Lca/uhn/hl7v2/app/AcceptorThread;->log:Lorg/slf4j/Logger;

    const-string v2, "No connection established while waiting"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 127
    .end local v0    # "e":Ljava/net/SocketTimeoutException;
    :goto_0
    return-void
.end method
