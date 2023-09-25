.class Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor;
.super Ljava/lang/Object;
.source "ServerSocketStreamSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Acceptor"
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private mySocket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 99
    const-class v0, Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/net/ServerSocket;Ljava/lang/String;)V
    .locals 3
    .param p1, "theServer"    # Ljava/net/ServerSocket;
    .param p2, "theAddress"    # Ljava/lang/String;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    move-object v0, p0

    .line 112
    .local v0, "a":Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor;
    if-eqz p2, :cond_0

    .line 113
    sget-object v1, Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor;->log:Lorg/slf4j/Logger;

    const-string v2, "Server socket is about to try to accept a connection from {}"

    invoke-interface {v1, v2, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    goto :goto_0

    .line 115
    :cond_0
    sget-object v1, Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor;->log:Lorg/slf4j/Logger;

    const-string v2, "Server socket is about to try to accept a connection from any addess"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 118
    :goto_0
    new-instance v1, Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor$1;

    invoke-direct {v1, p0, p1, p2, v0}, Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor$1;-><init>(Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor;Ljava/net/ServerSocket;Ljava/lang/String;Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor;)V

    .line 164
    .local v1, "r":Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 165
    .local v2, "thd":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 166
    return-void
.end method

.method static synthetic access$0()Lorg/slf4j/Logger;
    .locals 1

    .line 99
    sget-object v0, Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor;->log:Lorg/slf4j/Logger;

    return-object v0
.end method


# virtual methods
.method public getSocket()Ljava/net/Socket;
    .locals 1

    .line 173
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor;->mySocket:Ljava/net/Socket;

    return-object v0
.end method

.method public setSocket(Ljava/net/Socket;)V
    .locals 0
    .param p1, "theSocket"    # Ljava/net/Socket;

    .line 169
    iput-object p1, p0, Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor;->mySocket:Ljava/net/Socket;

    .line 170
    return-void
.end method

.method public waitForSocket()Ljava/net/Socket;
    .locals 2

    .line 181
    :goto_0
    invoke-virtual {p0}, Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor;->getSocket()Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor;->getSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0

    .line 183
    :cond_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    const-wide/16 v0, 0x64

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 183
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 186
    :catch_0
    move-exception v0

    goto :goto_0
.end method
