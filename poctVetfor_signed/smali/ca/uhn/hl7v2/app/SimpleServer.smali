.class public Lca/uhn/hl7v2/app/SimpleServer;
.super Lca/uhn/hl7v2/app/HL7Service;
.source "SimpleServer.java"


# static fields
.field public static final SO_TIMEOUT:I = 0x1f4

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private acceptor:Lca/uhn/hl7v2/app/AcceptorThread;

.field private hapiContext:Lca/uhn/hl7v2/HapiContext;

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

.field private tls:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    const-class v0, Lca/uhn/hl7v2/app/SimpleServer;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/app/SimpleServer;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "port"    # I

    .line 94
    new-instance v0, Lca/uhn/hl7v2/llp/MinLowerLayerProtocol;

    invoke-direct {v0}, Lca/uhn/hl7v2/llp/MinLowerLayerProtocol;-><init>()V

    new-instance v1, Lca/uhn/hl7v2/parser/PipeParser;

    invoke-direct {v1}, Lca/uhn/hl7v2/parser/PipeParser;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lca/uhn/hl7v2/app/SimpleServer;-><init>(ILca/uhn/hl7v2/llp/LowerLayerProtocol;Lca/uhn/hl7v2/parser/Parser;Z)V

    .line 95
    return-void
.end method

.method public constructor <init>(ILca/uhn/hl7v2/llp/LowerLayerProtocol;Lca/uhn/hl7v2/parser/Parser;)V
    .locals 1
    .param p1, "port"    # I
    .param p2, "llp"    # Lca/uhn/hl7v2/llp/LowerLayerProtocol;
    .param p3, "parser"    # Lca/uhn/hl7v2/parser/Parser;

    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lca/uhn/hl7v2/app/SimpleServer;-><init>(ILca/uhn/hl7v2/llp/LowerLayerProtocol;Lca/uhn/hl7v2/parser/Parser;Z)V

    .line 110
    return-void
.end method

.method public constructor <init>(ILca/uhn/hl7v2/llp/LowerLayerProtocol;Lca/uhn/hl7v2/parser/Parser;Z)V
    .locals 6
    .param p1, "port"    # I
    .param p2, "llp"    # Lca/uhn/hl7v2/llp/LowerLayerProtocol;
    .param p3, "parser"    # Lca/uhn/hl7v2/parser/Parser;
    .param p4, "tls"    # Z

    .line 116
    invoke-static {}, Lca/uhn/hl7v2/concurrent/DefaultExecutorService;->getDefaultService()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lca/uhn/hl7v2/app/SimpleServer;-><init>(ILca/uhn/hl7v2/llp/LowerLayerProtocol;Lca/uhn/hl7v2/parser/Parser;ZLjava/util/concurrent/ExecutorService;)V

    .line 117
    return-void
.end method

.method public constructor <init>(ILca/uhn/hl7v2/llp/LowerLayerProtocol;Lca/uhn/hl7v2/parser/Parser;ZLjava/util/concurrent/ExecutorService;)V
    .locals 2
    .param p1, "port"    # I
    .param p2, "llp"    # Lca/uhn/hl7v2/llp/LowerLayerProtocol;
    .param p3, "parser"    # Lca/uhn/hl7v2/parser/Parser;
    .param p4, "tls"    # Z
    .param p5, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .line 126
    invoke-direct {p0, p3, p2, p5}, Lca/uhn/hl7v2/app/HL7Service;-><init>(Lca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;Ljava/util/concurrent/ExecutorService;)V

    .line 127
    iput p1, p0, Lca/uhn/hl7v2/app/SimpleServer;->port:I

    .line 128
    iput-boolean p4, p0, Lca/uhn/hl7v2/app/SimpleServer;->tls:Z

    .line 129
    new-instance v0, Lca/uhn/hl7v2/DefaultHapiContext;

    invoke-direct {v0}, Lca/uhn/hl7v2/DefaultHapiContext;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/app/SimpleServer;->hapiContext:Lca/uhn/hl7v2/HapiContext;

    .line 130
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lca/uhn/hl7v2/app/SimpleServer;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 131
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2
    .param p1, "port"    # I
    .param p2, "tls"    # Z

    .line 102
    new-instance v0, Lca/uhn/hl7v2/llp/MinLowerLayerProtocol;

    invoke-direct {v0}, Lca/uhn/hl7v2/llp/MinLowerLayerProtocol;-><init>()V

    new-instance v1, Lca/uhn/hl7v2/parser/PipeParser;

    invoke-direct {v1}, Lca/uhn/hl7v2/parser/PipeParser;-><init>()V

    invoke-direct {p0, p1, v0, v1, p2}, Lca/uhn/hl7v2/app/SimpleServer;-><init>(ILca/uhn/hl7v2/llp/LowerLayerProtocol;Lca/uhn/hl7v2/parser/Parser;Z)V

    .line 103
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/HapiContext;IZ)V
    .locals 2
    .param p1, "hapiContext"    # Lca/uhn/hl7v2/HapiContext;
    .param p2, "port"    # I
    .param p3, "tls"    # Z

    .line 142
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/app/HL7Service;-><init>(Lca/uhn/hl7v2/HapiContext;)V

    .line 143
    iput-object p1, p0, Lca/uhn/hl7v2/app/SimpleServer;->hapiContext:Lca/uhn/hl7v2/HapiContext;

    .line 144
    iput p2, p0, Lca/uhn/hl7v2/app/SimpleServer;->port:I

    .line 145
    iput-boolean p3, p0, Lca/uhn/hl7v2/app/SimpleServer;->tls:Z

    .line 146
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lca/uhn/hl7v2/app/SimpleServer;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 147
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .param p0, "args"    # [Ljava/lang/String;

    .line 212
    const/4 v0, 0x2

    const/4 v1, 0x1

    array-length v2, p0

    if-lt v2, v1, :cond_0

    array-length v2, p0

    if-le v2, v0, :cond_1

    .line 213
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 214
    const-string v3, "Usage: ca.uhn.hl7v2.app.SimpleServer port_num [application_spec_file_name]"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 215
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 218
    :cond_1
    const/4 v2, 0x0

    move v3, v2

    .line 220
    .local v3, "port":I
    :try_start_0
    aget-object v4, p0, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 221
    goto :goto_0

    :catch_0
    move-exception v4

    .line 222
    .local v4, "e":Ljava/lang/NumberFormatException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "The given port ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, p0, v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string v2, ") is not an integer."

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 222
    invoke-virtual {v5, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 224
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 227
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    const/4 v2, 0x0

    .line 228
    .local v2, "appFile":Ljava/io/File;
    array-length v4, p0

    if-ne v4, v0, :cond_2

    .line 229
    new-instance v0, Ljava/io/File;

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    .line 233
    :cond_2
    :try_start_1
    new-instance v0, Lca/uhn/hl7v2/app/SimpleServer;

    invoke-direct {v0, v3}, Lca/uhn/hl7v2/app/SimpleServer;-><init>(I)V

    .line 234
    .local v0, "server":Lca/uhn/hl7v2/app/SimpleServer;
    if-eqz v2, :cond_3

    .line 235
    invoke-virtual {v0, v2}, Lca/uhn/hl7v2/app/SimpleServer;->loadApplicationsFromFile(Ljava/io/File;)V

    .line 236
    :cond_3
    invoke-virtual {v0}, Lca/uhn/hl7v2/app/SimpleServer;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 237
    .end local v0    # "server":Lca/uhn/hl7v2/app/SimpleServer;
    goto :goto_1

    :catch_1
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 241
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method


# virtual methods
.method protected afterStartup()V
    .locals 7

    .line 157
    :try_start_0
    invoke-super {p0}, Lca/uhn/hl7v2/app/HL7Service;->afterStartup()V

    .line 158
    sget-object v0, Lca/uhn/hl7v2/app/SimpleServer;->log:Lorg/slf4j/Logger;

    const-string v1, "Starting SimpleServer running on port {}"

    iget v2, p0, Lca/uhn/hl7v2/app/SimpleServer;->port:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lca/uhn/hl7v2/app/SimpleServer;->hapiContext:Lca/uhn/hl7v2/HapiContext;

    invoke-interface {v0}, Lca/uhn/hl7v2/HapiContext;->getSocketFactory()Lca/uhn/hl7v2/util/SocketFactory;

    move-result-object v6

    .line 160
    .local v6, "ss":Lca/uhn/hl7v2/util/SocketFactory;
    new-instance v0, Lca/uhn/hl7v2/app/AcceptorThread;

    iget v2, p0, Lca/uhn/hl7v2/app/SimpleServer;->port:I

    iget-boolean v3, p0, Lca/uhn/hl7v2/app/SimpleServer;->tls:Z

    invoke-virtual {p0}, Lca/uhn/hl7v2/app/SimpleServer;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    iget-object v5, p0, Lca/uhn/hl7v2/app/SimpleServer;->queue:Ljava/util/concurrent/BlockingQueue;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lca/uhn/hl7v2/app/AcceptorThread;-><init>(IZLjava/util/concurrent/ExecutorService;Ljava/util/concurrent/BlockingQueue;Lca/uhn/hl7v2/util/SocketFactory;)V

    iput-object v0, p0, Lca/uhn/hl7v2/app/SimpleServer;->acceptor:Lca/uhn/hl7v2/app/AcceptorThread;

    .line 161
    iget-object v0, p0, Lca/uhn/hl7v2/app/SimpleServer;->acceptor:Lca/uhn/hl7v2/app/AcceptorThread;

    invoke-virtual {v0}, Lca/uhn/hl7v2/app/AcceptorThread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v6    # "ss":Lca/uhn/hl7v2/util/SocketFactory;
    nop

    .line 166
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lca/uhn/hl7v2/app/SimpleServer;->log:Lorg/slf4j/Logger;

    const-string v2, "Failed starting SimpleServer on port"

    iget v3, p0, Lca/uhn/hl7v2/app/SimpleServer;->port:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected afterTermination()V
    .locals 1

    .line 200
    invoke-super {p0}, Lca/uhn/hl7v2/app/HL7Service;->afterTermination()V

    .line 201
    iget-object v0, p0, Lca/uhn/hl7v2/app/SimpleServer;->acceptor:Lca/uhn/hl7v2/app/AcceptorThread;

    invoke-virtual {v0}, Lca/uhn/hl7v2/app/AcceptorThread;->stop()V

    .line 202
    return-void
.end method

.method protected handle()V
    .locals 6

    .line 174
    iget-object v0, p0, Lca/uhn/hl7v2/app/SimpleServer;->acceptor:Lca/uhn/hl7v2/app/AcceptorThread;

    invoke-virtual {v0}, Lca/uhn/hl7v2/app/AcceptorThread;->getServiceExitedWithException()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lca/uhn/hl7v2/app/SimpleServer;->acceptor:Lca/uhn/hl7v2/app/AcceptorThread;

    invoke-virtual {v0}, Lca/uhn/hl7v2/app/AcceptorThread;->getServiceExitedWithException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/app/SimpleServer;->setServiceExitedWithException(Ljava/lang/Throwable;)V

    .line 180
    :cond_0
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/app/SimpleServer;->queue:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v1, 0x1f4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;

    .line 181
    .local v0, "newSocket":Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;
    if-eqz v0, :cond_1

    .line 182
    sget-object v1, Lca/uhn/hl7v2/app/SimpleServer;->log:Lorg/slf4j/Logger;

    const-string v2, "Accepted connection from {}:{} on local port {}"

    .line 183
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v0, Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getPort()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lca/uhn/hl7v2/app/SimpleServer;->port:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 182
    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    new-instance v1, Lca/uhn/hl7v2/app/ActiveConnection;

    invoke-virtual {p0}, Lca/uhn/hl7v2/app/SimpleServer;->getParser()Lca/uhn/hl7v2/parser/Parser;

    move-result-object v2

    invoke-virtual {p0}, Lca/uhn/hl7v2/app/SimpleServer;->getLlp()Lca/uhn/hl7v2/llp/LowerLayerProtocol;

    move-result-object v3

    iget-object v4, v0, Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;->socket:Ljava/net/Socket;

    .line 185
    invoke-virtual {p0}, Lca/uhn/hl7v2/app/SimpleServer;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    .line 184
    invoke-direct {v1, v2, v3, v4, v5}, Lca/uhn/hl7v2/app/ActiveConnection;-><init>(Lca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;Ljava/net/Socket;Ljava/util/concurrent/ExecutorService;)V

    .line 186
    .local v1, "c":Lca/uhn/hl7v2/app/ActiveConnection;
    invoke-virtual {p0, v1}, Lca/uhn/hl7v2/app/SimpleServer;->newConnection(Lca/uhn/hl7v2/app/ActiveConnection;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local v0    # "newSocket":Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;
    .end local v1    # "c":Lca/uhn/hl7v2/app/ActiveConnection;
    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lca/uhn/hl7v2/app/SimpleServer;->log:Lorg/slf4j/Logger;

    const-string v2, "Error while accepting connections: "

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 188
    :catch_1
    move-exception v0

    .line 193
    :cond_1
    :goto_0
    return-void
.end method
