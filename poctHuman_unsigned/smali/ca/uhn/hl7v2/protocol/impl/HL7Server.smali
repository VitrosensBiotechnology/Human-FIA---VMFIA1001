.class public Lca/uhn/hl7v2/protocol/impl/HL7Server;
.super Ljava/lang/Object;
.source "HL7Server.java"


# static fields
.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private myIsRunning:Z

.field private myProcessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/protocol/Processor;",
            ">;"
        }
    .end annotation
.end field

.field private final myRouter:Lca/uhn/hl7v2/protocol/ApplicationRouter;

.field private final myServerSocket:Ljava/net/ServerSocket;

.field private myServerSocket2:Ljava/net/ServerSocket;

.field private final myStorage:Lca/uhn/hl7v2/protocol/SafeStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lca/uhn/hl7v2/protocol/impl/HL7Server;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/protocol/impl/HL7Server;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/net/ServerSocket;Lca/uhn/hl7v2/protocol/ApplicationRouter;Lca/uhn/hl7v2/protocol/SafeStorage;)V
    .locals 1
    .param p1, "theServerSocket"    # Ljava/net/ServerSocket;
    .param p2, "theRouter"    # Lca/uhn/hl7v2/protocol/ApplicationRouter;
    .param p3, "theStorage"    # Lca/uhn/hl7v2/protocol/SafeStorage;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lca/uhn/hl7v2/protocol/impl/HL7Server;->myIsRunning:Z

    .line 75
    iput-object p1, p0, Lca/uhn/hl7v2/protocol/impl/HL7Server;->myServerSocket:Ljava/net/ServerSocket;

    .line 76
    iput-object p2, p0, Lca/uhn/hl7v2/protocol/impl/HL7Server;->myRouter:Lca/uhn/hl7v2/protocol/ApplicationRouter;

    .line 77
    iput-object p3, p0, Lca/uhn/hl7v2/protocol/impl/HL7Server;->myStorage:Lca/uhn/hl7v2/protocol/SafeStorage;

    .line 78
    invoke-direct {p0}, Lca/uhn/hl7v2/protocol/impl/HL7Server;->initProcessorList()V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/net/ServerSocket;Ljava/net/ServerSocket;Lca/uhn/hl7v2/protocol/ApplicationRouter;Lca/uhn/hl7v2/protocol/SafeStorage;)V
    .locals 1
    .param p1, "theLocallyDriven"    # Ljava/net/ServerSocket;
    .param p2, "theRemotelyDriven"    # Ljava/net/ServerSocket;
    .param p3, "theRouter"    # Lca/uhn/hl7v2/protocol/ApplicationRouter;
    .param p4, "theStorage"    # Lca/uhn/hl7v2/protocol/SafeStorage;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lca/uhn/hl7v2/protocol/impl/HL7Server;->myIsRunning:Z

    .line 93
    iput-object p1, p0, Lca/uhn/hl7v2/protocol/impl/HL7Server;->myServerSocket:Ljava/net/ServerSocket;

    .line 94
    iput-object p2, p0, Lca/uhn/hl7v2/protocol/impl/HL7Server;->myServerSocket2:Ljava/net/ServerSocket;

    .line 95
    iput-object p3, p0, Lca/uhn/hl7v2/protocol/impl/HL7Server;->myRouter:Lca/uhn/hl7v2/protocol/ApplicationRouter;

    .line 96
    iput-object p4, p0, Lca/uhn/hl7v2/protocol/impl/HL7Server;->myStorage:Lca/uhn/hl7v2/protocol/SafeStorage;

    .line 97
    invoke-direct {p0}, Lca/uhn/hl7v2/protocol/impl/HL7Server;->initProcessorList()V

    .line 98
    return-void
.end method

.method static synthetic access$0(Lca/uhn/hl7v2/protocol/impl/HL7Server;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lca/uhn/hl7v2/protocol/impl/HL7Server;->myIsRunning:Z

    return p0
.end method

.method static synthetic access$1(Lca/uhn/hl7v2/protocol/impl/HL7Server;Lca/uhn/hl7v2/protocol/Processor;)V
    .locals 0

    .line 194
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/protocol/impl/HL7Server;->newProcessor(Lca/uhn/hl7v2/protocol/Processor;)V

    return-void
.end method

.method static synthetic access$2()Lorg/slf4j/Logger;
    .locals 1

    .line 57
    sget-object v0, Lca/uhn/hl7v2/protocol/impl/HL7Server;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method private static getTransport(Ljava/net/ServerSocket;Ljava/lang/String;)Lca/uhn/hl7v2/protocol/TransportLayer;
    .locals 2
    .param p0, "theServerSocket"    # Ljava/net/ServerSocket;
    .param p1, "theAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/TransportException;
        }
    .end annotation

    .line 155
    new-instance v0, Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource;

    invoke-direct {v0, p0, p1}, Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource;-><init>(Ljava/net/ServerSocket;Ljava/lang/String;)V

    .line 156
    .local v0, "ss":Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource;
    new-instance v1, Lca/uhn/hl7v2/protocol/impl/MLLPTransport;

    invoke-direct {v1, v0}, Lca/uhn/hl7v2/protocol/impl/MLLPTransport;-><init>(Lca/uhn/hl7v2/protocol/StreamSource;)V

    return-object v1
.end method

.method private static getURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 4
    .param p0, "theUrlSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, "url":Ljava/net/URL;
    const-string v1, "classpath:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ":"

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 245
    .local v1, "tok":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 246
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "resource":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 248
    .end local v1    # "tok":Ljava/util/StringTokenizer;
    .end local v2    # "resource":Ljava/lang/String;
    goto :goto_0

    .line 249
    :cond_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 251
    :goto_0
    return-object v0
.end method

.method private initProcessorList()V
    .locals 2

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/protocol/impl/HL7Server;->myProcessors:Ljava/util/List;

    .line 104
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/HL7Server;->myProcessors:Ljava/util/List;

    .line 105
    .local v0, "processors":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/protocol/Processor;>;"
    new-instance v1, Lca/uhn/hl7v2/protocol/impl/HL7Server$1;

    invoke-direct {v1, p0, v0}, Lca/uhn/hl7v2/protocol/impl/HL7Server$1;-><init>(Lca/uhn/hl7v2/protocol/impl/HL7Server;Ljava/util/List;)V

    .line 123
    .local v1, "cleaner":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 124
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 11
    .param p0, "args"    # [Ljava/lang/String;

    .line 255
    const/4 v0, 0x3

    const/4 v1, 0x1

    array-length v2, p0

    if-lt v2, v1, :cond_0

    array-length v2, p0

    if-le v2, v0, :cond_1

    .line 256
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Usage: HL7Server (shared_port | (locally_driven_port remotely_driven_port)) app_binding_URL"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 257
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 260
    :cond_1
    new-instance v2, Lca/uhn/hl7v2/protocol/impl/NullSafeStorage;

    invoke-direct {v2}, Lca/uhn/hl7v2/protocol/impl/NullSafeStorage;-><init>()V

    .line 261
    .local v2, "storage":Lca/uhn/hl7v2/protocol/SafeStorage;
    new-instance v3, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;

    invoke-direct {v3}, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;-><init>()V

    .line 264
    .local v3, "router":Lca/uhn/hl7v2/protocol/ApplicationRouter;
    const/4 v4, 0x0

    .line 265
    .local v4, "server":Lca/uhn/hl7v2/protocol/impl/HL7Server;
    const/4 v5, 0x0

    .line 266
    .local v5, "appURL":Ljava/lang/String;
    const/4 v6, 0x2

    :try_start_0
    array-length v7, p0

    const/4 v8, 0x0

    if-ne v7, v6, :cond_2

    .line 267
    aget-object v7, p0, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 268
    .local v7, "port":I
    new-instance v8, Lca/uhn/hl7v2/protocol/impl/HL7Server;

    new-instance v9, Ljava/net/ServerSocket;

    invoke-direct {v9, v7}, Ljava/net/ServerSocket;-><init>(I)V

    invoke-direct {v8, v9, v3, v2}, Lca/uhn/hl7v2/protocol/impl/HL7Server;-><init>(Ljava/net/ServerSocket;Lca/uhn/hl7v2/protocol/ApplicationRouter;Lca/uhn/hl7v2/protocol/SafeStorage;)V

    move-object v4, v8

    .line 269
    aget-object v1, p0, v1

    .line 270
    .end local v5    # "appURL":Ljava/lang/String;
    .end local v7    # "port":I
    .local v1, "appURL":Ljava/lang/String;
    goto :goto_0

    .line 271
    .end local v1    # "appURL":Ljava/lang/String;
    .restart local v5    # "appURL":Ljava/lang/String;
    :cond_2
    aget-object v7, p0, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 272
    .local v7, "localPort":I
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 273
    .local v1, "remotePort":I
    new-instance v8, Lca/uhn/hl7v2/protocol/impl/HL7Server;

    new-instance v9, Ljava/net/ServerSocket;

    invoke-direct {v9, v7}, Ljava/net/ServerSocket;-><init>(I)V

    new-instance v10, Ljava/net/ServerSocket;

    invoke-direct {v10, v1}, Ljava/net/ServerSocket;-><init>(I)V

    invoke-direct {v8, v9, v10, v3, v2}, Lca/uhn/hl7v2/protocol/impl/HL7Server;-><init>(Ljava/net/ServerSocket;Ljava/net/ServerSocket;Lca/uhn/hl7v2/protocol/ApplicationRouter;Lca/uhn/hl7v2/protocol/SafeStorage;)V

    move-object v4, v8

    .line 274
    aget-object v8, p0, v6

    move-object v1, v8

    .line 277
    .end local v5    # "appURL":Ljava/lang/String;
    .end local v7    # "localPort":I
    .local v1, "appURL":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Lca/uhn/hl7v2/protocol/impl/HL7Server;->getURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    invoke-static {v3, v5}, Lca/uhn/hl7v2/protocol/impl/ApplicationLoader;->loadApplications(Lca/uhn/hl7v2/protocol/ApplicationRouter;Ljava/net/URL;)V

    .line 279
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/protocol/impl/HL7Server;->start(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local v1    # "appURL":Ljava/lang/String;
    .end local v4    # "server":Lca/uhn/hl7v2/protocol/impl/HL7Server;
    goto :goto_1

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 298
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 298
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_1

    .line 293
    :catch_1
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 295
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 295
    .end local v0    # "e":Ljava/lang/InstantiationException;
    goto :goto_1

    .line 290
    :catch_2
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 292
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 292
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_1

    .line 287
    :catch_3
    move-exception v0

    .line 288
    .local v0, "e":Lca/uhn/hl7v2/HL7Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 289
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 289
    .end local v0    # "e":Lca/uhn/hl7v2/HL7Exception;
    goto :goto_1

    .line 284
    :catch_4
    move-exception v1

    .line 285
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 286
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 286
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 281
    :catch_5
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Port arguments must be integers"

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 283
    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    .line 301
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_1
    return-void
.end method

.method private newProcessor(Lca/uhn/hl7v2/protocol/Processor;)V
    .locals 2
    .param p1, "theProcessor"    # Lca/uhn/hl7v2/protocol/Processor;

    .line 195
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/HL7Server;->myProcessors:Ljava/util/List;

    monitor-enter v0

    .line 196
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/protocol/impl/HL7Server;->myProcessors:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    monitor-exit v0

    .line 198
    return-void

    .line 195
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public accept(Ljava/lang/String;)Lca/uhn/hl7v2/protocol/Processor;
    .locals 7
    .param p1, "theAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/TransportException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/HL7Server;->myServerSocket:Ljava/net/ServerSocket;

    invoke-static {v0, p1}, Lca/uhn/hl7v2/protocol/impl/HL7Server;->getTransport(Ljava/net/ServerSocket;Ljava/lang/String;)Lca/uhn/hl7v2/protocol/TransportLayer;

    move-result-object v0

    .line 139
    .local v0, "transport":Lca/uhn/hl7v2/protocol/TransportLayer;
    const/4 v1, 0x0

    .line 141
    .local v1, "context":Lca/uhn/hl7v2/protocol/ProcessorContext;
    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/HL7Server;->myServerSocket2:Ljava/net/ServerSocket;

    if-nez v2, :cond_0

    .line 142
    invoke-interface {v0}, Lca/uhn/hl7v2/protocol/TransportLayer;->connect()V

    .line 143
    new-instance v2, Lca/uhn/hl7v2/protocol/impl/ProcessorContextImpl;

    iget-object v3, p0, Lca/uhn/hl7v2/protocol/impl/HL7Server;->myRouter:Lca/uhn/hl7v2/protocol/ApplicationRouter;

    iget-object v4, p0, Lca/uhn/hl7v2/protocol/impl/HL7Server;->myStorage:Lca/uhn/hl7v2/protocol/SafeStorage;

    invoke-direct {v2, v3, v0, v4}, Lca/uhn/hl7v2/protocol/impl/ProcessorContextImpl;-><init>(Lca/uhn/hl7v2/protocol/ApplicationRouter;Lca/uhn/hl7v2/protocol/TransportLayer;Lca/uhn/hl7v2/protocol/SafeStorage;)V

    move-object v1, v2

    .line 144
    goto :goto_0

    .line 145
    :cond_0
    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/HL7Server;->myServerSocket2:Ljava/net/ServerSocket;

    invoke-static {v2, p1}, Lca/uhn/hl7v2/protocol/impl/HL7Server;->getTransport(Ljava/net/ServerSocket;Ljava/lang/String;)Lca/uhn/hl7v2/protocol/TransportLayer;

    move-result-object v2

    .line 146
    .local v2, "transport2":Lca/uhn/hl7v2/protocol/TransportLayer;
    new-instance v3, Lca/uhn/hl7v2/protocol/impl/DualTransportConnector;

    invoke-direct {v3, v0, v2}, Lca/uhn/hl7v2/protocol/impl/DualTransportConnector;-><init>(Lca/uhn/hl7v2/protocol/TransportLayer;Lca/uhn/hl7v2/protocol/TransportLayer;)V

    .line 147
    .local v3, "connector":Lca/uhn/hl7v2/protocol/impl/DualTransportConnector;
    invoke-virtual {v3}, Lca/uhn/hl7v2/protocol/impl/DualTransportConnector;->connect()V

    .line 149
    new-instance v4, Lca/uhn/hl7v2/protocol/impl/ProcessorContextImpl;

    iget-object v5, p0, Lca/uhn/hl7v2/protocol/impl/HL7Server;->myRouter:Lca/uhn/hl7v2/protocol/ApplicationRouter;

    iget-object v6, p0, Lca/uhn/hl7v2/protocol/impl/HL7Server;->myStorage:Lca/uhn/hl7v2/protocol/SafeStorage;

    invoke-direct {v4, v5, v0, v2, v6}, Lca/uhn/hl7v2/protocol/impl/ProcessorContextImpl;-><init>(Lca/uhn/hl7v2/protocol/ApplicationRouter;Lca/uhn/hl7v2/protocol/TransportLayer;Lca/uhn/hl7v2/protocol/TransportLayer;Lca/uhn/hl7v2/protocol/SafeStorage;)V

    move-object v1, v4

    .line 151
    .end local v2    # "transport2":Lca/uhn/hl7v2/protocol/TransportLayer;
    .end local v3    # "connector":Lca/uhn/hl7v2/protocol/impl/DualTransportConnector;
    :goto_0
    new-instance v2, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;-><init>(Lca/uhn/hl7v2/protocol/ProcessorContext;Z)V

    return-object v2
.end method

.method public getProcessors()[Lca/uhn/hl7v2/protocol/Processor;
    .locals 3

    .line 229
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/HL7Server;->myProcessors:Ljava/util/List;

    monitor-enter v0

    .line 230
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/protocol/impl/HL7Server;->myProcessors:Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [Lca/uhn/hl7v2/protocol/Processor;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lca/uhn/hl7v2/protocol/Processor;

    monitor-exit v0

    return-object v1

    .line 229
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isRunning()Z
    .locals 1

    .line 222
    iget-boolean v0, p0, Lca/uhn/hl7v2/protocol/impl/HL7Server;->myIsRunning:Z

    return v0
.end method

.method public start(Ljava/lang/String;)V
    .locals 3
    .param p1, "theAddress"    # Ljava/lang/String;

    .line 168
    move-object v0, p0

    .line 169
    .local v0, "server":Lca/uhn/hl7v2/protocol/impl/HL7Server;
    new-instance v1, Lca/uhn/hl7v2/protocol/impl/HL7Server$2;

    invoke-direct {v1, p0, v0, p1}, Lca/uhn/hl7v2/protocol/impl/HL7Server$2;-><init>(Lca/uhn/hl7v2/protocol/impl/HL7Server;Lca/uhn/hl7v2/protocol/impl/HL7Server;Ljava/lang/String;)V

    .line 188
    .local v1, "acceptor":Ljava/lang/Runnable;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lca/uhn/hl7v2/protocol/impl/HL7Server;->myIsRunning:Z

    .line 190
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 191
    .local v2, "thd":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 192
    return-void
.end method

.method public stop()V
    .locals 3

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lca/uhn/hl7v2/protocol/impl/HL7Server;->myIsRunning:Z

    .line 205
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/HL7Server;->myProcessors:Ljava/util/List;

    monitor-enter v0

    .line 206
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/protocol/impl/HL7Server;->myProcessors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 205
    monitor-exit v0

    .line 210
    return-void

    .line 206
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lca/uhn/hl7v2/protocol/Processor;

    .line 207
    .local v2, "next":Lca/uhn/hl7v2/protocol/Processor;
    invoke-interface {v2}, Lca/uhn/hl7v2/protocol/Processor;->stop()V

    .line 207
    .end local v2    # "next":Lca/uhn/hl7v2/protocol/Processor;
    goto :goto_0

    .line 205
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
