.class public Lca/uhn/hl7v2/app/TwoPortService;
.super Lca/uhn/hl7v2/app/HL7Service;
.source "TwoPortService.java"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final hapiContext:Lca/uhn/hl7v2/HapiContext;

.field private inboundAcceptor:Lca/uhn/hl7v2/app/AcceptorThread;

.field private inboundPort:I

.field private outboundAcceptor:Lca/uhn/hl7v2/app/AcceptorThread;

.field private outboundPort:I

.field private queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;",
            ">;"
        }
    .end annotation
.end field

.field private tls:Z

.field private waitingForSecondSocket:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    const-class v0, Lca/uhn/hl7v2/app/TwoPortService;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 63
    sput-object v0, Lca/uhn/hl7v2/app/TwoPortService;->log:Lorg/slf4j/Logger;

    .line 64
    return-void
.end method

.method public constructor <init>(II)V
    .locals 6
    .param p1, "inboundPort"    # I
    .param p2, "outboundPort"    # I

    .line 75
    new-instance v1, Lca/uhn/hl7v2/parser/PipeParser;

    invoke-direct {v1}, Lca/uhn/hl7v2/parser/PipeParser;-><init>()V

    new-instance v2, Lca/uhn/hl7v2/llp/MinLowerLayerProtocol;

    invoke-direct {v2}, Lca/uhn/hl7v2/llp/MinLowerLayerProtocol;-><init>()V

    .line 76
    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lca/uhn/hl7v2/app/TwoPortService;-><init>(Lca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;IIZ)V

    .line 77
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 6
    .param p1, "inboundPort"    # I
    .param p2, "outboundPort"    # I
    .param p3, "tls"    # Z

    .line 80
    new-instance v1, Lca/uhn/hl7v2/parser/PipeParser;

    invoke-direct {v1}, Lca/uhn/hl7v2/parser/PipeParser;-><init>()V

    new-instance v2, Lca/uhn/hl7v2/llp/MinLowerLayerProtocol;

    invoke-direct {v2}, Lca/uhn/hl7v2/llp/MinLowerLayerProtocol;-><init>()V

    .line 81
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lca/uhn/hl7v2/app/TwoPortService;-><init>(Lca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;IIZ)V

    .line 82
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/HapiContext;IIZ)V
    .locals 2
    .param p1, "hapiContext"    # Lca/uhn/hl7v2/HapiContext;
    .param p2, "inboundPort"    # I
    .param p3, "outboundPort"    # I
    .param p4, "tls"    # Z

    .line 94
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/app/HL7Service;-><init>(Lca/uhn/hl7v2/HapiContext;)V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/app/TwoPortService;->waitingForSecondSocket:Ljava/util/Map;

    .line 95
    iput-object p1, p0, Lca/uhn/hl7v2/app/TwoPortService;->hapiContext:Lca/uhn/hl7v2/HapiContext;

    .line 96
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/app/TwoPortService;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 97
    iput p2, p0, Lca/uhn/hl7v2/app/TwoPortService;->inboundPort:I

    .line 98
    iput p3, p0, Lca/uhn/hl7v2/app/TwoPortService;->outboundPort:I

    .line 99
    iput-boolean p4, p0, Lca/uhn/hl7v2/app/TwoPortService;->tls:Z

    .line 101
    if-ne p2, p3, :cond_0

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Inbound port and outbound port can not be the same"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    const/4 v0, 0x1

    if-ge p2, v0, :cond_1

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid inbound port"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_1
    if-ge p3, v0, :cond_2

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid outbound port"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_2
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;IIZ)V
    .locals 7
    .param p1, "parser"    # Lca/uhn/hl7v2/parser/Parser;
    .param p2, "llp"    # Lca/uhn/hl7v2/llp/LowerLayerProtocol;
    .param p3, "inboundPort"    # I
    .param p4, "outboundPort"    # I
    .param p5, "tls"    # Z

    .line 87
    nop

    .line 88
    invoke-static {}, Lca/uhn/hl7v2/concurrent/DefaultExecutorService;->getDefaultService()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lca/uhn/hl7v2/app/TwoPortService;-><init>(Lca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;IIZLjava/util/concurrent/ExecutorService;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;IIZLjava/util/concurrent/ExecutorService;)V
    .locals 1
    .param p1, "parser"    # Lca/uhn/hl7v2/parser/Parser;
    .param p2, "llp"    # Lca/uhn/hl7v2/llp/LowerLayerProtocol;
    .param p3, "inboundPort"    # I
    .param p4, "outboundPort"    # I
    .param p5, "tls"    # Z
    .param p6, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .line 117
    invoke-direct {p0, p1, p2, p6}, Lca/uhn/hl7v2/app/HL7Service;-><init>(Lca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;Ljava/util/concurrent/ExecutorService;)V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/app/TwoPortService;->waitingForSecondSocket:Ljava/util/Map;

    .line 118
    new-instance v0, Lca/uhn/hl7v2/DefaultHapiContext;

    invoke-direct {v0}, Lca/uhn/hl7v2/DefaultHapiContext;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/app/TwoPortService;->hapiContext:Lca/uhn/hl7v2/HapiContext;

    .line 119
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/app/TwoPortService;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 120
    iput p3, p0, Lca/uhn/hl7v2/app/TwoPortService;->inboundPort:I

    .line 121
    iput p4, p0, Lca/uhn/hl7v2/app/TwoPortService;->outboundPort:I

    .line 122
    iput-boolean p5, p0, Lca/uhn/hl7v2/app/TwoPortService;->tls:Z

    .line 123
    return-void
.end method

.method private acceptConnection(Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;)Lca/uhn/hl7v2/app/ActiveConnection;
    .locals 12
    .param p1, "newSocket"    # Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/llp/LLPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, "conn":Lca/uhn/hl7v2/app/ActiveConnection;
    if-eqz p1, :cond_1

    .line 192
    iget-object v1, p1, Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "address":Ljava/lang/String;
    iget-object v2, p0, Lca/uhn/hl7v2/app/TwoPortService;->waitingForSecondSocket:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;

    .line 194
    .local v2, "otherSocket":Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;->origin:Lca/uhn/hl7v2/app/AcceptorThread;

    iget-object v4, p1, Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;->origin:Lca/uhn/hl7v2/app/AcceptorThread;

    if-eq v3, v4, :cond_0

    .line 195
    sget-object v3, Lca/uhn/hl7v2/app/TwoPortService;->log:Lorg/slf4j/Logger;

    const-string v4, "Socket {} completes a two-port connection"

    .line 196
    iget-object v5, p1, Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;->socket:Ljava/net/Socket;

    .line 195
    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 197
    invoke-direct {p0, p1, v2}, Lca/uhn/hl7v2/app/TwoPortService;->getInboundSocket(Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;)Ljava/net/Socket;

    move-result-object v3

    .line 198
    .local v3, "in":Ljava/net/Socket;
    invoke-direct {p0, p1, v2}, Lca/uhn/hl7v2/app/TwoPortService;->getOutboundSocket(Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;)Ljava/net/Socket;

    move-result-object v4

    .line 199
    .local v4, "out":Ljava/net/Socket;
    new-instance v5, Lca/uhn/hl7v2/app/ActiveConnection;

    invoke-virtual {p0}, Lca/uhn/hl7v2/app/TwoPortService;->getParser()Lca/uhn/hl7v2/parser/Parser;

    move-result-object v7

    invoke-virtual {p0}, Lca/uhn/hl7v2/app/TwoPortService;->getLlp()Lca/uhn/hl7v2/llp/LowerLayerProtocol;

    move-result-object v8

    .line 200
    invoke-virtual {p0}, Lca/uhn/hl7v2/app/TwoPortService;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v11

    .line 199
    move-object v6, v5

    move-object v9, v3

    move-object v10, v4

    invoke-direct/range {v6 .. v11}, Lca/uhn/hl7v2/app/ActiveConnection;-><init>(Lca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;Ljava/net/Socket;Ljava/net/Socket;Ljava/util/concurrent/ExecutorService;)V

    move-object v0, v5

    .line 201
    .end local v3    # "in":Ljava/net/Socket;
    .end local v4    # "out":Ljava/net/Socket;
    goto :goto_0

    .line 202
    :cond_0
    sget-object v3, Lca/uhn/hl7v2/app/TwoPortService;->log:Lorg/slf4j/Logger;

    .line 203
    const-string v4, "Registered {} Still waiting for second socket for two-port connection"

    .line 204
    iget-object v5, p1, Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;->socket:Ljava/net/Socket;

    .line 202
    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    iget-object v3, p0, Lca/uhn/hl7v2/app/TwoPortService;->waitingForSecondSocket:Ljava/util/Map;

    invoke-interface {v3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .end local v1    # "address":Ljava/lang/String;
    .end local v2    # "otherSocket":Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;
    :cond_1
    :goto_0
    return-object v0
.end method

.method private getInboundSocket(Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;)Ljava/net/Socket;
    .locals 2
    .param p1, "socket1"    # Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;
    .param p2, "socket2"    # Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;

    .line 213
    iget-object v0, p1, Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;->origin:Lca/uhn/hl7v2/app/AcceptorThread;

    iget-object v1, p0, Lca/uhn/hl7v2/app/TwoPortService;->inboundAcceptor:Lca/uhn/hl7v2/app/AcceptorThread;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;->socket:Ljava/net/Socket;

    goto :goto_0

    .line 214
    :cond_0
    iget-object v0, p2, Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;->socket:Ljava/net/Socket;

    .line 213
    :goto_0
    return-object v0
.end method

.method private getOutboundSocket(Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;)Ljava/net/Socket;
    .locals 2
    .param p1, "socket1"    # Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;
    .param p2, "socket2"    # Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;

    .line 219
    iget-object v0, p1, Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;->origin:Lca/uhn/hl7v2/app/AcceptorThread;

    iget-object v1, p0, Lca/uhn/hl7v2/app/TwoPortService;->outboundAcceptor:Lca/uhn/hl7v2/app/AcceptorThread;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;->socket:Ljava/net/Socket;

    goto :goto_0

    .line 220
    :cond_0
    iget-object v0, p2, Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;->socket:Ljava/net/Socket;

    .line 219
    :goto_0
    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 10
    .param p0, "args"    # [Ljava/lang/String;

    .line 237
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    array-length v3, p0

    if-lt v3, v1, :cond_0

    array-length v3, p0

    if-le v3, v0, :cond_1

    .line 238
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 239
    const-string v4, "Usage: ca.uhn.hl7v2.app.TwoPortService inbound_port outbound_port [application_spec_file_name]"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 240
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 243
    :cond_1
    const/4 v3, 0x0

    .line 244
    .local v3, "inPort":I
    const/4 v4, 0x0

    move v5, v4

    .line 246
    .local v5, "outPort":I
    :try_start_0
    aget-object v6, p0, v4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v3, v6

    .line 247
    aget-object v6, p0, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v6

    .line 248
    goto :goto_0

    :catch_0
    move-exception v6

    .line 249
    .local v6, "e":Ljava/lang/NumberFormatException;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "One of the given ports ("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, p0, v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " or "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    aget-object v4, p0, v2

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") is not an integer."

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 249
    invoke-virtual {v7, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 251
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 254
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    const/4 v2, 0x0

    .line 255
    .local v2, "appFile":Ljava/io/File;
    array-length v4, p0

    if-ne v4, v0, :cond_2

    .line 256
    new-instance v0, Ljava/io/File;

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    .line 260
    :cond_2
    :try_start_1
    new-instance v0, Lca/uhn/hl7v2/app/TwoPortService;

    invoke-direct {v0, v3, v5}, Lca/uhn/hl7v2/app/TwoPortService;-><init>(II)V

    .line 261
    .local v0, "server":Lca/uhn/hl7v2/app/TwoPortService;
    if-eqz v2, :cond_3

    .line 262
    invoke-virtual {v0, v2}, Lca/uhn/hl7v2/app/TwoPortService;->loadApplicationsFromFile(Ljava/io/File;)V

    .line 263
    :cond_3
    invoke-virtual {v0}, Lca/uhn/hl7v2/app/TwoPortService;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 264
    .end local v0    # "server":Lca/uhn/hl7v2/app/TwoPortService;
    goto :goto_1

    :catch_1
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 268
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method


# virtual methods
.method protected afterStartup()V
    .locals 5

    .line 134
    :try_start_0
    invoke-super {p0}, Lca/uhn/hl7v2/app/HL7Service;->afterStartup()V

    .line 135
    iget v0, p0, Lca/uhn/hl7v2/app/TwoPortService;->inboundPort:I

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/app/TwoPortService;->createAcceptThread(I)Lca/uhn/hl7v2/app/AcceptorThread;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/app/TwoPortService;->inboundAcceptor:Lca/uhn/hl7v2/app/AcceptorThread;

    .line 136
    iget v0, p0, Lca/uhn/hl7v2/app/TwoPortService;->outboundPort:I

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/app/TwoPortService;->createAcceptThread(I)Lca/uhn/hl7v2/app/AcceptorThread;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/app/TwoPortService;->outboundAcceptor:Lca/uhn/hl7v2/app/AcceptorThread;

    .line 137
    iget-object v0, p0, Lca/uhn/hl7v2/app/TwoPortService;->inboundAcceptor:Lca/uhn/hl7v2/app/AcceptorThread;

    invoke-virtual {v0}, Lca/uhn/hl7v2/app/AcceptorThread;->start()V

    .line 138
    iget-object v0, p0, Lca/uhn/hl7v2/app/TwoPortService;->outboundAcceptor:Lca/uhn/hl7v2/app/AcceptorThread;

    invoke-virtual {v0}, Lca/uhn/hl7v2/app/AcceptorThread;->start()V

    .line 139
    sget-object v0, Lca/uhn/hl7v2/app/TwoPortService;->log:Lorg/slf4j/Logger;

    const-string v1, "TwoPortService running on ports {} and {}"

    iget v2, p0, Lca/uhn/hl7v2/app/TwoPortService;->inboundPort:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 140
    iget v3, p0, Lca/uhn/hl7v2/app/TwoPortService;->outboundPort:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 139
    invoke-interface {v0, v1, v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    nop

    .line 146
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lca/uhn/hl7v2/app/TwoPortService;->log:Lorg/slf4j/Logger;

    const-string v2, "Could not run TwoPortService on ports {} and {}"

    .line 143
    iget v3, p0, Lca/uhn/hl7v2/app/TwoPortService;->inboundPort:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lca/uhn/hl7v2/app/TwoPortService;->outboundPort:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 142
    invoke-interface {v1, v2, v3, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 144
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected afterTermination()V
    .locals 1

    .line 155
    invoke-super {p0}, Lca/uhn/hl7v2/app/HL7Service;->afterTermination()V

    .line 156
    iget-object v0, p0, Lca/uhn/hl7v2/app/TwoPortService;->inboundAcceptor:Lca/uhn/hl7v2/app/AcceptorThread;

    invoke-virtual {v0}, Lca/uhn/hl7v2/app/AcceptorThread;->stop()V

    .line 157
    iget-object v0, p0, Lca/uhn/hl7v2/app/TwoPortService;->outboundAcceptor:Lca/uhn/hl7v2/app/AcceptorThread;

    invoke-virtual {v0}, Lca/uhn/hl7v2/app/AcceptorThread;->stop()V

    .line 158
    return-void
.end method

.method protected createAcceptThread(I)Lca/uhn/hl7v2/app/AcceptorThread;
    .locals 8
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lca/uhn/hl7v2/app/TwoPortService;->hapiContext:Lca/uhn/hl7v2/HapiContext;

    invoke-interface {v0}, Lca/uhn/hl7v2/HapiContext;->getSocketFactory()Lca/uhn/hl7v2/util/SocketFactory;

    move-result-object v0

    .line 226
    .local v0, "ss":Lca/uhn/hl7v2/util/SocketFactory;
    new-instance v7, Lca/uhn/hl7v2/app/AcceptorThread;

    iget-boolean v3, p0, Lca/uhn/hl7v2/app/TwoPortService;->tls:Z

    invoke-virtual {p0}, Lca/uhn/hl7v2/app/TwoPortService;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    iget-object v5, p0, Lca/uhn/hl7v2/app/TwoPortService;->queue:Ljava/util/concurrent/BlockingQueue;

    move-object v1, v7

    move v2, p1

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lca/uhn/hl7v2/app/AcceptorThread;-><init>(IZLjava/util/concurrent/ExecutorService;Ljava/util/concurrent/BlockingQueue;Lca/uhn/hl7v2/util/SocketFactory;)V

    return-object v7
.end method

.method protected handle()V
    .locals 4

    .line 164
    iget-object v0, p0, Lca/uhn/hl7v2/app/TwoPortService;->inboundAcceptor:Lca/uhn/hl7v2/app/AcceptorThread;

    invoke-virtual {v0}, Lca/uhn/hl7v2/app/AcceptorThread;->getServiceExitedWithException()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lca/uhn/hl7v2/app/TwoPortService;->inboundAcceptor:Lca/uhn/hl7v2/app/AcceptorThread;

    invoke-virtual {v0}, Lca/uhn/hl7v2/app/AcceptorThread;->getServiceExitedWithException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/app/TwoPortService;->setServiceExitedWithException(Ljava/lang/Throwable;)V

    .line 167
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/app/TwoPortService;->outboundAcceptor:Lca/uhn/hl7v2/app/AcceptorThread;

    invoke-virtual {v0}, Lca/uhn/hl7v2/app/AcceptorThread;->getServiceExitedWithException()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lca/uhn/hl7v2/app/TwoPortService;->outboundAcceptor:Lca/uhn/hl7v2/app/AcceptorThread;

    invoke-virtual {v0}, Lca/uhn/hl7v2/app/AcceptorThread;->getServiceExitedWithException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/app/TwoPortService;->setServiceExitedWithException(Ljava/lang/Throwable;)V

    .line 172
    :cond_1
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/app/TwoPortService;->queue:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v1, 0x2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;

    invoke-direct {p0, v0}, Lca/uhn/hl7v2/app/TwoPortService;->acceptConnection(Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;)Lca/uhn/hl7v2/app/ActiveConnection;

    move-result-object v0

    .line 173
    .local v0, "conn":Lca/uhn/hl7v2/app/ActiveConnection;
    if-eqz v0, :cond_2

    .line 174
    sget-object v1, Lca/uhn/hl7v2/app/TwoPortService;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Accepted connection from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0}, Lca/uhn/hl7v2/app/ActiveConnection;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 174
    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/app/TwoPortService;->newConnection(Lca/uhn/hl7v2/app/ActiveConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .end local v0    # "conn":Lca/uhn/hl7v2/app/ActiveConnection;
    goto :goto_0

    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lca/uhn/hl7v2/app/TwoPortService;->log:Lorg/slf4j/Logger;

    const-string v2, "Error while accepting connections: "

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 181
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return-void
.end method
