.class Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor$1;
.super Ljava/lang/Object;
.source "ServerSocketStreamSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor;-><init>(Ljava/net/ServerSocket;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor;

.field private final synthetic val$a:Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor;

.field private final synthetic val$theAddress:Ljava/lang/String;

.field private final synthetic val$theServer:Ljava/net/ServerSocket;


# direct methods
.method constructor <init>(Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor;Ljava/net/ServerSocket;Ljava/lang/String;Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor$1;->this$1:Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor;

    iput-object p2, p0, Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor$1;->val$theServer:Ljava/net/ServerSocket;

    iput-object p3, p0, Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor$1;->val$theAddress:Ljava/lang/String;

    iput-object p4, p0, Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor$1;->val$a:Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 125
    :goto_0
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor$1;->val$theServer:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 126
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor$1;->val$theServer:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 127
    .local v0, "s":Ljava/net/Socket;
    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 128
    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "address":Ljava/lang/String;
    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor$1;->val$theAddress:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor$1;->val$theAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 135
    :cond_0
    invoke-static {}, Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor;->access$0()Lorg/slf4j/Logger;

    move-result-object v2

    const-string v3, "Ignoring connection from {}: expecting "

    iget-object v4, p0, Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor$1;->val$theAddress:Ljava/lang/String;

    invoke-interface {v2, v3, v1, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 139
    .end local v0    # "s":Ljava/net/Socket;
    .end local v1    # "address":Ljava/lang/String;
    goto :goto_2

    .line 130
    .restart local v0    # "s":Ljava/net/Socket;
    .restart local v1    # "address":Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor$1;->val$a:Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor;

    invoke-virtual {v2, v0}, Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor;->setSocket(Ljava/net/Socket;)V

    .line 131
    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor$1;->val$a:Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor;

    monitor-enter v2
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :try_start_1
    iget-object v3, p0, Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor$1;->val$a:Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 131
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 141
    .end local v0    # "s":Ljava/net/Socket;
    .end local v1    # "address":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor;->access$0()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Error accepting remote connection"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 139
    :catch_1
    move-exception v0

    .line 140
    .local v0, "e":Ljava/net/SocketTimeoutException;
    invoke-static {}, Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor;->access$0()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Socket timed out without receiving a connection"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 145
    .end local v0    # "e":Ljava/net/SocketTimeoutException;
    :cond_2
    :goto_2
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor$1;->val$a:Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor;

    invoke-virtual {v0}, Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor;->getSocket()Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 146
    invoke-static {}, Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor;->access$0()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Accepted connection from address: {}"

    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor$1;->val$a:Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor;

    invoke-virtual {v2}, Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    return-void

    .line 150
    :cond_3
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor$1;->val$theServer:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 151
    invoke-static {}, Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor;->access$0()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Server socket closed, aborting"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 152
    return-void

    .line 157
    :cond_4
    const-wide/16 v0, 0x3e8

    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 158
    goto/16 :goto_0

    :catch_2
    move-exception v0

    .line 120
    goto/16 :goto_0
.end method
