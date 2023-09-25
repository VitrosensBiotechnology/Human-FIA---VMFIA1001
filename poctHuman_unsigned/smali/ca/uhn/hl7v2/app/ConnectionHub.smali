.class public Lca/uhn/hl7v2/app/ConnectionHub;
.super Lca/uhn/hl7v2/HapiContextSupport;
.source "ConnectionHub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;
    }
.end annotation


# static fields
.field public static final MAX_CONCURRENT_TARGETS:Ljava/lang/String;

.field private static volatile instance:Lca/uhn/hl7v2/app/ConnectionHub;

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final connectionMutexes:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final connections:Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lca/uhn/hl7v2/app/ConnectionHub$CountingMap<",
            "Lca/uhn/hl7v2/app/ConnectionData;",
            "Lca/uhn/hl7v2/app/Connection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 66
    const/4 v0, 0x0

    sput-object v0, Lca/uhn/hl7v2/app/ConnectionHub;->instance:Lca/uhn/hl7v2/app/ConnectionHub;

    .line 67
    const-class v0, Lca/uhn/hl7v2/app/ConnectionHub;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/app/ConnectionHub;->log:Lorg/slf4j/Logger;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lca/uhn/hl7v2/app/ConnectionHub;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".maxSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/app/ConnectionHub;->MAX_CONCURRENT_TARGETS:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lca/uhn/hl7v2/HapiContext;)V
    .locals 1
    .param p1, "context"    # Lca/uhn/hl7v2/HapiContext;

    .line 83
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/HapiContextSupport;-><init>(Lca/uhn/hl7v2/HapiContext;)V

    .line 74
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/app/ConnectionHub;->connectionMutexes:Ljava/util/concurrent/ConcurrentMap;

    .line 84
    new-instance v0, Lca/uhn/hl7v2/app/ConnectionHub$1;

    invoke-direct {v0, p0}, Lca/uhn/hl7v2/app/ConnectionHub$1;-><init>(Lca/uhn/hl7v2/app/ConnectionHub;)V

    iput-object v0, p0, Lca/uhn/hl7v2/app/ConnectionHub;->connections:Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;

    .line 98
    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .line 79
    new-instance v0, Lca/uhn/hl7v2/DefaultHapiContext;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/DefaultHapiContext;-><init>(Ljava/util/concurrent/ExecutorService;)V

    invoke-direct {p0, v0}, Lca/uhn/hl7v2/app/ConnectionHub;-><init>(Lca/uhn/hl7v2/HapiContext;)V

    .line 80
    return-void
.end method

.method private discardConnectionIfStale(Lca/uhn/hl7v2/app/Connection;)V
    .locals 3
    .param p1, "conn"    # Lca/uhn/hl7v2/app/Connection;

    .line 364
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lca/uhn/hl7v2/app/Connection;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    sget-object v0, Lca/uhn/hl7v2/app/ConnectionHub;->log:Lorg/slf4j/Logger;

    const-string v1, "Discarding connection which appears to be closed. Remote addr: {}"

    .line 366
    invoke-interface {p1}, Lca/uhn/hl7v2/app/Connection;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 365
    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 367
    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/app/ConnectionHub;->discard(Lca/uhn/hl7v2/app/Connection;)V

    .line 368
    const/4 p1, 0x0

    .line 370
    :cond_0
    return-void
.end method

.method public static getInstance()Lca/uhn/hl7v2/app/ConnectionHub;
    .locals 1

    .line 387
    invoke-static {}, Lca/uhn/hl7v2/concurrent/DefaultExecutorService;->getDefaultService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lca/uhn/hl7v2/app/ConnectionHub;->getInstance(Ljava/util/concurrent/ExecutorService;)Lca/uhn/hl7v2/app/ConnectionHub;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lca/uhn/hl7v2/HapiContext;)Lca/uhn/hl7v2/app/ConnectionHub;
    .locals 1
    .param p0, "context"    # Lca/uhn/hl7v2/HapiContext;

    .line 410
    sget-object v0, Lca/uhn/hl7v2/app/ConnectionHub;->instance:Lca/uhn/hl7v2/app/ConnectionHub;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lca/uhn/hl7v2/HapiContext;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    :cond_0
    new-instance v0, Lca/uhn/hl7v2/app/ConnectionHub;

    invoke-direct {v0, p0}, Lca/uhn/hl7v2/app/ConnectionHub;-><init>(Lca/uhn/hl7v2/HapiContext;)V

    sput-object v0, Lca/uhn/hl7v2/app/ConnectionHub;->instance:Lca/uhn/hl7v2/app/ConnectionHub;

    .line 413
    :cond_1
    sget-object v0, Lca/uhn/hl7v2/app/ConnectionHub;->instance:Lca/uhn/hl7v2/app/ConnectionHub;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Ljava/util/concurrent/ExecutorService;)Lca/uhn/hl7v2/app/ConnectionHub;
    .locals 2
    .param p0, "service"    # Ljava/util/concurrent/ExecutorService;

    const-class v0, Lca/uhn/hl7v2/app/ConnectionHub;

    monitor-enter v0

    .line 397
    :try_start_0
    sget-object v1, Lca/uhn/hl7v2/app/ConnectionHub;->instance:Lca/uhn/hl7v2/app/ConnectionHub;

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 398
    :cond_0
    new-instance v1, Lca/uhn/hl7v2/app/ConnectionHub;

    invoke-direct {v1, p0}, Lca/uhn/hl7v2/app/ConnectionHub;-><init>(Ljava/util/concurrent/ExecutorService;)V

    sput-object v1, Lca/uhn/hl7v2/app/ConnectionHub;->instance:Lca/uhn/hl7v2/app/ConnectionHub;

    .line 400
    :cond_1
    sget-object v1, Lca/uhn/hl7v2/app/ConnectionHub;->instance:Lca/uhn/hl7v2/app/ConnectionHub;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 396
    .end local p0    # "service":Ljava/util/concurrent/ExecutorService;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getNewInstance(Lca/uhn/hl7v2/HapiContext;)Lca/uhn/hl7v2/app/ConnectionHub;
    .locals 2
    .param p0, "context"    # Lca/uhn/hl7v2/HapiContext;

    const-class v0, Lca/uhn/hl7v2/app/ConnectionHub;

    monitor-enter v0

    .line 427
    :try_start_0
    new-instance v1, Lca/uhn/hl7v2/app/ConnectionHub;

    invoke-direct {v1, p0}, Lca/uhn/hl7v2/app/ConnectionHub;-><init>(Lca/uhn/hl7v2/HapiContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 427
    .end local p0    # "context":Lca/uhn/hl7v2/HapiContext;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static shutdown()V
    .locals 2

    .line 434
    invoke-static {}, Lca/uhn/hl7v2/app/ConnectionHub;->getInstance()Lca/uhn/hl7v2/app/ConnectionHub;

    move-result-object v0

    .line 435
    .local v0, "hub":Lca/uhn/hl7v2/app/ConnectionHub;
    invoke-virtual {v0}, Lca/uhn/hl7v2/app/ConnectionHub;->getHapiContext()Lca/uhn/hl7v2/HapiContext;

    move-result-object v1

    invoke-interface {v1}, Lca/uhn/hl7v2/HapiContext;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-static {v1}, Lca/uhn/hl7v2/concurrent/DefaultExecutorService;->isDefaultService(Ljava/util/concurrent/ExecutorService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 436
    invoke-virtual {v0}, Lca/uhn/hl7v2/app/ConnectionHub;->getHapiContext()Lca/uhn/hl7v2/HapiContext;

    move-result-object v1

    invoke-interface {v1}, Lca/uhn/hl7v2/HapiContext;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 437
    const/4 v1, 0x0

    sput-object v1, Lca/uhn/hl7v2/app/ConnectionHub;->instance:Lca/uhn/hl7v2/app/ConnectionHub;

    .line 439
    :cond_0
    return-void
.end method


# virtual methods
.method public allConnections()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Lca/uhn/hl7v2/app/ConnectionData;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lca/uhn/hl7v2/app/ConnectionHub;->connections:Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;

    invoke-virtual {v0}, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public attach(Lca/uhn/hl7v2/DefaultHapiContext;Ljava/lang/String;IIZ)Lca/uhn/hl7v2/app/Connection;
    .locals 10
    .param p1, "hapiContext"    # Lca/uhn/hl7v2/DefaultHapiContext;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "outboundPort"    # I
    .param p4, "inboundPort"    # I
    .param p5, "tls"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 271
    new-instance v9, Lca/uhn/hl7v2/app/ConnectionData;

    invoke-virtual {p1}, Lca/uhn/hl7v2/DefaultHapiContext;->getGenericParser()Lca/uhn/hl7v2/parser/GenericParser;

    move-result-object v4

    .line 272
    invoke-virtual {p1}, Lca/uhn/hl7v2/DefaultHapiContext;->getLowerLayerProtocol()Lca/uhn/hl7v2/llp/LowerLayerProtocol;

    move-result-object v5

    invoke-virtual {p1}, Lca/uhn/hl7v2/DefaultHapiContext;->getSocketFactory()Lca/uhn/hl7v2/util/SocketFactory;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v6, p5

    invoke-direct/range {v0 .. v8}, Lca/uhn/hl7v2/app/ConnectionData;-><init>(Ljava/lang/String;IILca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;ZLca/uhn/hl7v2/util/SocketFactory;Z)V

    .line 271
    invoke-virtual {p0, v9}, Lca/uhn/hl7v2/app/ConnectionHub;->attach(Lca/uhn/hl7v2/app/ConnectionData;)Lca/uhn/hl7v2/app/Connection;

    move-result-object v0

    return-object v0
.end method

.method public attach(Lca/uhn/hl7v2/DefaultHapiContext;Ljava/lang/String;IZ)Lca/uhn/hl7v2/app/Connection;
    .locals 10
    .param p1, "hapiContext"    # Lca/uhn/hl7v2/DefaultHapiContext;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "tls"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 255
    new-instance v9, Lca/uhn/hl7v2/app/ConnectionData;

    invoke-virtual {p1}, Lca/uhn/hl7v2/DefaultHapiContext;->getGenericParser()Lca/uhn/hl7v2/parser/GenericParser;

    move-result-object v4

    invoke-virtual {p1}, Lca/uhn/hl7v2/DefaultHapiContext;->getLowerLayerProtocol()Lca/uhn/hl7v2/llp/LowerLayerProtocol;

    move-result-object v5

    .line 256
    invoke-virtual {p1}, Lca/uhn/hl7v2/DefaultHapiContext;->getSocketFactory()Lca/uhn/hl7v2/util/SocketFactory;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p2

    move v2, p3

    move v6, p4

    invoke-direct/range {v0 .. v8}, Lca/uhn/hl7v2/app/ConnectionData;-><init>(Ljava/lang/String;IILca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;ZLca/uhn/hl7v2/util/SocketFactory;Z)V

    .line 255
    invoke-virtual {p0, v9}, Lca/uhn/hl7v2/app/ConnectionHub;->attach(Lca/uhn/hl7v2/app/ConnectionData;)Lca/uhn/hl7v2/app/Connection;

    move-result-object v0

    return-object v0
.end method

.method public attach(Lca/uhn/hl7v2/app/ConnectionData;)Lca/uhn/hl7v2/app/Connection;
    .locals 4
    .param p1, "data"    # Lca/uhn/hl7v2/app/ConnectionData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 109
    const/4 v0, 0x0

    .line 111
    .local v0, "conn":Lca/uhn/hl7v2/app/Connection;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/app/ConnectionHub;->connectionMutexes:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lca/uhn/hl7v2/app/ConnectionData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lca/uhn/hl7v2/app/ConnectionData;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v1, p0, Lca/uhn/hl7v2/app/ConnectionHub;->connectionMutexes:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lca/uhn/hl7v2/app/ConnectionData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 113
    .local v1, "mutex":Ljava/lang/String;
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :try_start_1
    iget-object v2, p0, Lca/uhn/hl7v2/app/ConnectionHub;->connections:Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;

    invoke-virtual {v2, p1}, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lca/uhn/hl7v2/app/Connection;

    invoke-direct {p0, v2}, Lca/uhn/hl7v2/app/ConnectionHub;->discardConnectionIfStale(Lca/uhn/hl7v2/app/Connection;)V

    .line 116
    iget-object v2, p0, Lca/uhn/hl7v2/app/ConnectionHub;->connections:Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;

    invoke-virtual {v2, p1}, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;->put(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lca/uhn/hl7v2/app/Connection;

    move-object v0, v2

    .line 113
    monitor-exit v1

    .line 118
    return-object v0

    .line 113
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 119
    .end local v0    # "conn":Lca/uhn/hl7v2/app/Connection;
    .end local v1    # "mutex":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lca/uhn/hl7v2/app/ConnectionHub;->log:Lorg/slf4j/Logger;

    const-string v2, "Failed to attach"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    new-instance v1, Lca/uhn/hl7v2/HL7Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot open connection to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lca/uhn/hl7v2/app/ConnectionData;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p1}, Lca/uhn/hl7v2/app/ConnectionData;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lca/uhn/hl7v2/app/ConnectionData;->getPort2()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-direct {v1, v2, v0}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public attach(Ljava/lang/String;IILca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;Z)Lca/uhn/hl7v2/app/Connection;
    .locals 10
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "outboundPort"    # I
    .param p3, "inboundPort"    # I
    .param p4, "parser"    # Lca/uhn/hl7v2/parser/Parser;
    .param p5, "llp"    # Lca/uhn/hl7v2/llp/LowerLayerProtocol;
    .param p6, "tls"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 208
    new-instance v9, Lca/uhn/hl7v2/app/ConnectionData;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v8}, Lca/uhn/hl7v2/app/ConnectionData;-><init>(Ljava/lang/String;IILca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;ZLca/uhn/hl7v2/util/SocketFactory;Z)V

    move-object v0, p0

    invoke-virtual {v0, v9}, Lca/uhn/hl7v2/app/ConnectionHub;->attach(Lca/uhn/hl7v2/app/ConnectionData;)Lca/uhn/hl7v2/app/Connection;

    move-result-object v1

    return-object v1
.end method

.method public attach(Ljava/lang/String;IILca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;ZLca/uhn/hl7v2/util/SocketFactory;)Lca/uhn/hl7v2/app/Connection;
    .locals 10
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "outboundPort"    # I
    .param p3, "inboundPort"    # I
    .param p4, "parser"    # Lca/uhn/hl7v2/parser/Parser;
    .param p5, "llp"    # Lca/uhn/hl7v2/llp/LowerLayerProtocol;
    .param p6, "tls"    # Z
    .param p7, "socketFactory"    # Lca/uhn/hl7v2/util/SocketFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 224
    new-instance v9, Lca/uhn/hl7v2/app/ConnectionData;

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lca/uhn/hl7v2/app/ConnectionData;-><init>(Ljava/lang/String;IILca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;ZLca/uhn/hl7v2/util/SocketFactory;Z)V

    move-object v0, p0

    invoke-virtual {v0, v9}, Lca/uhn/hl7v2/app/ConnectionHub;->attach(Lca/uhn/hl7v2/app/ConnectionData;)Lca/uhn/hl7v2/app/Connection;

    move-result-object v1

    return-object v1
.end method

.method public attach(Ljava/lang/String;IILca/uhn/hl7v2/parser/Parser;Ljava/lang/Class;)Lca/uhn/hl7v2/app/Connection;
    .locals 7
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "outboundPort"    # I
    .param p3, "inboundPort"    # I
    .param p4, "parser"    # Lca/uhn/hl7v2/parser/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lca/uhn/hl7v2/parser/Parser;",
            "Ljava/lang/Class<",
            "+",
            "Lca/uhn/hl7v2/llp/LowerLayerProtocol;",
            ">;)",
            "Lca/uhn/hl7v2/app/Connection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 177
    .local p5, "llpClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/llp/LowerLayerProtocol;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lca/uhn/hl7v2/app/ConnectionHub;->attach(Ljava/lang/String;IILca/uhn/hl7v2/parser/Parser;Ljava/lang/Class;Z)Lca/uhn/hl7v2/app/Connection;

    move-result-object v0

    return-object v0
.end method

.method public attach(Ljava/lang/String;IILca/uhn/hl7v2/parser/Parser;Ljava/lang/Class;Z)Lca/uhn/hl7v2/app/Connection;
    .locals 8
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "outboundPort"    # I
    .param p3, "inboundPort"    # I
    .param p4, "parser"    # Lca/uhn/hl7v2/parser/Parser;
    .param p6, "tls"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lca/uhn/hl7v2/parser/Parser;",
            "Ljava/lang/Class<",
            "+",
            "Lca/uhn/hl7v2/llp/LowerLayerProtocol;",
            ">;Z)",
            "Lca/uhn/hl7v2/app/Connection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 193
    .local p5, "llpClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/llp/LowerLayerProtocol;>;"
    invoke-static {p5}, Lca/uhn/hl7v2/util/ReflectionUtil;->instantiate(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/llp/LowerLayerProtocol;

    .line 194
    .local v0, "llp":Lca/uhn/hl7v2/llp/LowerLayerProtocol;
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, v0

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lca/uhn/hl7v2/app/ConnectionHub;->attach(Ljava/lang/String;IILca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;Z)Lca/uhn/hl7v2/app/Connection;

    move-result-object v1

    return-object v1
.end method

.method public attach(Ljava/lang/String;IIZ)Lca/uhn/hl7v2/app/Connection;
    .locals 10
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "outboundPort"    # I
    .param p3, "inboundPort"    # I
    .param p4, "tls"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 158
    new-instance v9, Lca/uhn/hl7v2/app/ConnectionData;

    invoke-virtual {p0}, Lca/uhn/hl7v2/app/ConnectionHub;->getHapiContext()Lca/uhn/hl7v2/HapiContext;

    move-result-object v0

    .line 159
    invoke-interface {v0}, Lca/uhn/hl7v2/HapiContext;->getGenericParser()Lca/uhn/hl7v2/parser/GenericParser;

    move-result-object v4

    invoke-virtual {p0}, Lca/uhn/hl7v2/app/ConnectionHub;->getHapiContext()Lca/uhn/hl7v2/HapiContext;

    move-result-object v0

    invoke-interface {v0}, Lca/uhn/hl7v2/HapiContext;->getLowerLayerProtocol()Lca/uhn/hl7v2/llp/LowerLayerProtocol;

    move-result-object v5

    .line 160
    invoke-virtual {p0}, Lca/uhn/hl7v2/app/ConnectionHub;->getHapiContext()Lca/uhn/hl7v2/HapiContext;

    move-result-object v0

    invoke-interface {v0}, Lca/uhn/hl7v2/HapiContext;->getSocketFactory()Lca/uhn/hl7v2/util/SocketFactory;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v8}, Lca/uhn/hl7v2/app/ConnectionData;-><init>(Ljava/lang/String;IILca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;ZLca/uhn/hl7v2/util/SocketFactory;Z)V

    .line 158
    invoke-virtual {p0, v9}, Lca/uhn/hl7v2/app/ConnectionHub;->attach(Lca/uhn/hl7v2/app/ConnectionData;)Lca/uhn/hl7v2/app/Connection;

    move-result-object v0

    return-object v0
.end method

.method public attach(Ljava/lang/String;ILca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;)Lca/uhn/hl7v2/app/Connection;
    .locals 7
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "parser"    # Lca/uhn/hl7v2/parser/Parser;
    .param p4, "llp"    # Lca/uhn/hl7v2/llp/LowerLayerProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 304
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lca/uhn/hl7v2/app/ConnectionHub;->attach(Ljava/lang/String;IILca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;Z)Lca/uhn/hl7v2/app/Connection;

    move-result-object v0

    return-object v0
.end method

.method public attach(Ljava/lang/String;ILca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;Z)Lca/uhn/hl7v2/app/Connection;
    .locals 7
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "parser"    # Lca/uhn/hl7v2/parser/Parser;
    .param p4, "llp"    # Lca/uhn/hl7v2/llp/LowerLayerProtocol;
    .param p5, "tls"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 321
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lca/uhn/hl7v2/app/ConnectionHub;->attach(Ljava/lang/String;IILca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;Z)Lca/uhn/hl7v2/app/Connection;

    move-result-object v0

    return-object v0
.end method

.method public attach(Ljava/lang/String;ILca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;ZLca/uhn/hl7v2/util/SocketFactory;)Lca/uhn/hl7v2/app/Connection;
    .locals 10
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "parser"    # Lca/uhn/hl7v2/parser/Parser;
    .param p4, "llp"    # Lca/uhn/hl7v2/llp/LowerLayerProtocol;
    .param p5, "tls"    # Z
    .param p6, "socketFactory"    # Lca/uhn/hl7v2/util/SocketFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 240
    new-instance v9, Lca/uhn/hl7v2/app/ConnectionData;

    const/4 v3, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lca/uhn/hl7v2/app/ConnectionData;-><init>(Ljava/lang/String;IILca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;ZLca/uhn/hl7v2/util/SocketFactory;Z)V

    move-object v0, p0

    invoke-virtual {v0, v9}, Lca/uhn/hl7v2/app/ConnectionHub;->attach(Lca/uhn/hl7v2/app/ConnectionData;)Lca/uhn/hl7v2/app/Connection;

    move-result-object v1

    return-object v1
.end method

.method public attach(Ljava/lang/String;ILca/uhn/hl7v2/parser/Parser;Ljava/lang/Class;)Lca/uhn/hl7v2/app/Connection;
    .locals 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "parser"    # Lca/uhn/hl7v2/parser/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lca/uhn/hl7v2/parser/Parser;",
            "Ljava/lang/Class<",
            "+",
            "Lca/uhn/hl7v2/llp/LowerLayerProtocol;",
            ">;)",
            "Lca/uhn/hl7v2/app/Connection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 288
    .local p4, "llpClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/llp/LowerLayerProtocol;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lca/uhn/hl7v2/app/ConnectionHub;->attach(Ljava/lang/String;ILca/uhn/hl7v2/parser/Parser;Ljava/lang/Class;Z)Lca/uhn/hl7v2/app/Connection;

    move-result-object v0

    return-object v0
.end method

.method public attach(Ljava/lang/String;ILca/uhn/hl7v2/parser/Parser;Ljava/lang/Class;Z)Lca/uhn/hl7v2/app/Connection;
    .locals 7
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "parser"    # Lca/uhn/hl7v2/parser/Parser;
    .param p5, "tls"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lca/uhn/hl7v2/parser/Parser;",
            "Ljava/lang/Class<",
            "+",
            "Lca/uhn/hl7v2/llp/LowerLayerProtocol;",
            ">;Z)",
            "Lca/uhn/hl7v2/app/Connection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 296
    .local p4, "llpClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/llp/LowerLayerProtocol;>;"
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lca/uhn/hl7v2/app/ConnectionHub;->attach(Ljava/lang/String;IILca/uhn/hl7v2/parser/Parser;Ljava/lang/Class;Z)Lca/uhn/hl7v2/app/Connection;

    move-result-object v0

    return-object v0
.end method

.method public attach(Ljava/lang/String;IZ)Lca/uhn/hl7v2/app/Connection;
    .locals 10
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "tls"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 135
    new-instance v9, Lca/uhn/hl7v2/app/ConnectionData;

    invoke-virtual {p0}, Lca/uhn/hl7v2/app/ConnectionHub;->getHapiContext()Lca/uhn/hl7v2/HapiContext;

    move-result-object v0

    invoke-interface {v0}, Lca/uhn/hl7v2/HapiContext;->getGenericParser()Lca/uhn/hl7v2/parser/GenericParser;

    move-result-object v4

    .line 136
    invoke-virtual {p0}, Lca/uhn/hl7v2/app/ConnectionHub;->getHapiContext()Lca/uhn/hl7v2/HapiContext;

    move-result-object v0

    invoke-interface {v0}, Lca/uhn/hl7v2/HapiContext;->getLowerLayerProtocol()Lca/uhn/hl7v2/llp/LowerLayerProtocol;

    move-result-object v5

    invoke-virtual {p0}, Lca/uhn/hl7v2/app/ConnectionHub;->getHapiContext()Lca/uhn/hl7v2/HapiContext;

    move-result-object v0

    .line 137
    invoke-interface {v0}, Lca/uhn/hl7v2/HapiContext;->getSocketFactory()Lca/uhn/hl7v2/util/SocketFactory;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p1

    move v2, p2

    move v6, p3

    invoke-direct/range {v0 .. v8}, Lca/uhn/hl7v2/app/ConnectionData;-><init>(Ljava/lang/String;IILca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;ZLca/uhn/hl7v2/util/SocketFactory;Z)V

    .line 135
    invoke-virtual {p0, v9}, Lca/uhn/hl7v2/app/ConnectionHub;->attach(Lca/uhn/hl7v2/app/ConnectionData;)Lca/uhn/hl7v2/app/Connection;

    move-result-object v0

    return-object v0
.end method

.method public attachLazily(Lca/uhn/hl7v2/DefaultHapiContext;Ljava/lang/String;IIZ)Lca/uhn/hl7v2/app/Connection;
    .locals 10
    .param p1, "hapiContext"    # Lca/uhn/hl7v2/DefaultHapiContext;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "outboundPort"    # I
    .param p4, "inboundPort"    # I
    .param p5, "tls"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 279
    new-instance v9, Lca/uhn/hl7v2/app/ConnectionData;

    invoke-virtual {p1}, Lca/uhn/hl7v2/DefaultHapiContext;->getGenericParser()Lca/uhn/hl7v2/parser/GenericParser;

    move-result-object v4

    .line 280
    invoke-virtual {p1}, Lca/uhn/hl7v2/DefaultHapiContext;->getLowerLayerProtocol()Lca/uhn/hl7v2/llp/LowerLayerProtocol;

    move-result-object v5

    invoke-virtual {p1}, Lca/uhn/hl7v2/DefaultHapiContext;->getSocketFactory()Lca/uhn/hl7v2/util/SocketFactory;

    move-result-object v7

    const/4 v8, 0x1

    move-object v0, v9

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v6, p5

    invoke-direct/range {v0 .. v8}, Lca/uhn/hl7v2/app/ConnectionData;-><init>(Ljava/lang/String;IILca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;ZLca/uhn/hl7v2/util/SocketFactory;Z)V

    .line 279
    invoke-virtual {p0, v9}, Lca/uhn/hl7v2/app/ConnectionHub;->attach(Lca/uhn/hl7v2/app/ConnectionData;)Lca/uhn/hl7v2/app/Connection;

    move-result-object v0

    return-object v0
.end method

.method public attachLazily(Lca/uhn/hl7v2/DefaultHapiContext;Ljava/lang/String;IZ)Lca/uhn/hl7v2/app/Connection;
    .locals 10
    .param p1, "hapiContext"    # Lca/uhn/hl7v2/DefaultHapiContext;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "tls"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 263
    new-instance v9, Lca/uhn/hl7v2/app/ConnectionData;

    invoke-virtual {p1}, Lca/uhn/hl7v2/DefaultHapiContext;->getGenericParser()Lca/uhn/hl7v2/parser/GenericParser;

    move-result-object v4

    invoke-virtual {p1}, Lca/uhn/hl7v2/DefaultHapiContext;->getLowerLayerProtocol()Lca/uhn/hl7v2/llp/LowerLayerProtocol;

    move-result-object v5

    .line 264
    invoke-virtual {p1}, Lca/uhn/hl7v2/DefaultHapiContext;->getSocketFactory()Lca/uhn/hl7v2/util/SocketFactory;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v8, 0x1

    move-object v0, v9

    move-object v1, p2

    move v2, p3

    move v6, p4

    invoke-direct/range {v0 .. v8}, Lca/uhn/hl7v2/app/ConnectionData;-><init>(Ljava/lang/String;IILca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;ZLca/uhn/hl7v2/util/SocketFactory;Z)V

    .line 263
    invoke-virtual {p0, v9}, Lca/uhn/hl7v2/app/ConnectionHub;->attach(Lca/uhn/hl7v2/app/ConnectionData;)Lca/uhn/hl7v2/app/Connection;

    move-result-object v0

    return-object v0
.end method

.method public attachLazily(Ljava/lang/String;IILca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;Z)Lca/uhn/hl7v2/app/Connection;
    .locals 10
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "outboundPort"    # I
    .param p3, "inboundPort"    # I
    .param p4, "parser"    # Lca/uhn/hl7v2/parser/Parser;
    .param p5, "llp"    # Lca/uhn/hl7v2/llp/LowerLayerProtocol;
    .param p6, "tls"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 216
    new-instance v9, Lca/uhn/hl7v2/app/ConnectionData;

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, v9

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v8}, Lca/uhn/hl7v2/app/ConnectionData;-><init>(Ljava/lang/String;IILca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;ZLca/uhn/hl7v2/util/SocketFactory;Z)V

    move-object v0, p0

    invoke-virtual {v0, v9}, Lca/uhn/hl7v2/app/ConnectionHub;->attach(Lca/uhn/hl7v2/app/ConnectionData;)Lca/uhn/hl7v2/app/Connection;

    move-result-object v1

    return-object v1
.end method

.method public attachLazily(Ljava/lang/String;IILca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;ZLca/uhn/hl7v2/util/SocketFactory;)Lca/uhn/hl7v2/app/Connection;
    .locals 10
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "outboundPort"    # I
    .param p3, "inboundPort"    # I
    .param p4, "parser"    # Lca/uhn/hl7v2/parser/Parser;
    .param p5, "llp"    # Lca/uhn/hl7v2/llp/LowerLayerProtocol;
    .param p6, "tls"    # Z
    .param p7, "socketFactory"    # Lca/uhn/hl7v2/util/SocketFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 232
    new-instance v9, Lca/uhn/hl7v2/app/ConnectionData;

    const/4 v8, 0x1

    move-object v0, v9

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lca/uhn/hl7v2/app/ConnectionData;-><init>(Ljava/lang/String;IILca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;ZLca/uhn/hl7v2/util/SocketFactory;Z)V

    move-object v0, p0

    invoke-virtual {v0, v9}, Lca/uhn/hl7v2/app/ConnectionHub;->attach(Lca/uhn/hl7v2/app/ConnectionData;)Lca/uhn/hl7v2/app/Connection;

    move-result-object v1

    return-object v1
.end method

.method public attachLazily(Ljava/lang/String;IILca/uhn/hl7v2/parser/Parser;Ljava/lang/Class;)Lca/uhn/hl7v2/app/Connection;
    .locals 7
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "outboundPort"    # I
    .param p3, "inboundPort"    # I
    .param p4, "parser"    # Lca/uhn/hl7v2/parser/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lca/uhn/hl7v2/parser/Parser;",
            "Ljava/lang/Class<",
            "+",
            "Lca/uhn/hl7v2/llp/LowerLayerProtocol;",
            ">;)",
            "Lca/uhn/hl7v2/app/Connection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 185
    .local p5, "llpClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/llp/LowerLayerProtocol;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lca/uhn/hl7v2/app/ConnectionHub;->attachLazily(Ljava/lang/String;IILca/uhn/hl7v2/parser/Parser;Ljava/lang/Class;Z)Lca/uhn/hl7v2/app/Connection;

    move-result-object v0

    return-object v0
.end method

.method public attachLazily(Ljava/lang/String;IILca/uhn/hl7v2/parser/Parser;Ljava/lang/Class;Z)Lca/uhn/hl7v2/app/Connection;
    .locals 8
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "outboundPort"    # I
    .param p3, "inboundPort"    # I
    .param p4, "parser"    # Lca/uhn/hl7v2/parser/Parser;
    .param p6, "tls"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lca/uhn/hl7v2/parser/Parser;",
            "Ljava/lang/Class<",
            "+",
            "Lca/uhn/hl7v2/llp/LowerLayerProtocol;",
            ">;Z)",
            "Lca/uhn/hl7v2/app/Connection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 199
    .local p5, "llpClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/llp/LowerLayerProtocol;>;"
    invoke-static {p5}, Lca/uhn/hl7v2/util/ReflectionUtil;->instantiate(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/llp/LowerLayerProtocol;

    .line 200
    .local v0, "llp":Lca/uhn/hl7v2/llp/LowerLayerProtocol;
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, v0

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lca/uhn/hl7v2/app/ConnectionHub;->attachLazily(Ljava/lang/String;IILca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;Z)Lca/uhn/hl7v2/app/Connection;

    move-result-object v1

    return-object v1
.end method

.method public attachLazily(Ljava/lang/String;IIZ)Lca/uhn/hl7v2/app/Connection;
    .locals 10
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "outboundPort"    # I
    .param p3, "inboundPort"    # I
    .param p4, "tls"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 167
    new-instance v9, Lca/uhn/hl7v2/app/ConnectionData;

    invoke-virtual {p0}, Lca/uhn/hl7v2/app/ConnectionHub;->getHapiContext()Lca/uhn/hl7v2/HapiContext;

    move-result-object v0

    .line 168
    invoke-interface {v0}, Lca/uhn/hl7v2/HapiContext;->getGenericParser()Lca/uhn/hl7v2/parser/GenericParser;

    move-result-object v4

    invoke-virtual {p0}, Lca/uhn/hl7v2/app/ConnectionHub;->getHapiContext()Lca/uhn/hl7v2/HapiContext;

    move-result-object v0

    invoke-interface {v0}, Lca/uhn/hl7v2/HapiContext;->getLowerLayerProtocol()Lca/uhn/hl7v2/llp/LowerLayerProtocol;

    move-result-object v5

    .line 169
    invoke-virtual {p0}, Lca/uhn/hl7v2/app/ConnectionHub;->getHapiContext()Lca/uhn/hl7v2/HapiContext;

    move-result-object v0

    invoke-interface {v0}, Lca/uhn/hl7v2/HapiContext;->getSocketFactory()Lca/uhn/hl7v2/util/SocketFactory;

    move-result-object v7

    const/4 v8, 0x1

    move-object v0, v9

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v8}, Lca/uhn/hl7v2/app/ConnectionData;-><init>(Ljava/lang/String;IILca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;ZLca/uhn/hl7v2/util/SocketFactory;Z)V

    .line 167
    invoke-virtual {p0, v9}, Lca/uhn/hl7v2/app/ConnectionHub;->attach(Lca/uhn/hl7v2/app/ConnectionData;)Lca/uhn/hl7v2/app/Connection;

    move-result-object v0

    return-object v0
.end method

.method public attachLazily(Ljava/lang/String;ILca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;)Lca/uhn/hl7v2/app/Connection;
    .locals 7
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "parser"    # Lca/uhn/hl7v2/parser/Parser;
    .param p4, "llp"    # Lca/uhn/hl7v2/llp/LowerLayerProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 312
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lca/uhn/hl7v2/app/ConnectionHub;->attachLazily(Ljava/lang/String;IILca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;Z)Lca/uhn/hl7v2/app/Connection;

    move-result-object v0

    return-object v0
.end method

.method public attachLazily(Ljava/lang/String;ILca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;Z)Lca/uhn/hl7v2/app/Connection;
    .locals 7
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "parser"    # Lca/uhn/hl7v2/parser/Parser;
    .param p4, "llp"    # Lca/uhn/hl7v2/llp/LowerLayerProtocol;
    .param p5, "tls"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 329
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lca/uhn/hl7v2/app/ConnectionHub;->attachLazily(Ljava/lang/String;IILca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;Z)Lca/uhn/hl7v2/app/Connection;

    move-result-object v0

    return-object v0
.end method

.method public attachLazily(Ljava/lang/String;ILca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;ZLca/uhn/hl7v2/util/SocketFactory;)Lca/uhn/hl7v2/app/Connection;
    .locals 10
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "parser"    # Lca/uhn/hl7v2/parser/Parser;
    .param p4, "llp"    # Lca/uhn/hl7v2/llp/LowerLayerProtocol;
    .param p5, "tls"    # Z
    .param p6, "socketFactory"    # Lca/uhn/hl7v2/util/SocketFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 248
    new-instance v9, Lca/uhn/hl7v2/app/ConnectionData;

    const/4 v3, 0x0

    const/4 v8, 0x1

    move-object v0, v9

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lca/uhn/hl7v2/app/ConnectionData;-><init>(Ljava/lang/String;IILca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;ZLca/uhn/hl7v2/util/SocketFactory;Z)V

    move-object v0, p0

    invoke-virtual {v0, v9}, Lca/uhn/hl7v2/app/ConnectionHub;->attach(Lca/uhn/hl7v2/app/ConnectionData;)Lca/uhn/hl7v2/app/Connection;

    move-result-object v1

    return-object v1
.end method

.method public attachLazily(Ljava/lang/String;IZ)Lca/uhn/hl7v2/app/Connection;
    .locals 10
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "tls"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 149
    new-instance v9, Lca/uhn/hl7v2/app/ConnectionData;

    invoke-virtual {p0}, Lca/uhn/hl7v2/app/ConnectionHub;->getHapiContext()Lca/uhn/hl7v2/HapiContext;

    move-result-object v0

    invoke-interface {v0}, Lca/uhn/hl7v2/HapiContext;->getGenericParser()Lca/uhn/hl7v2/parser/GenericParser;

    move-result-object v4

    .line 150
    invoke-virtual {p0}, Lca/uhn/hl7v2/app/ConnectionHub;->getHapiContext()Lca/uhn/hl7v2/HapiContext;

    move-result-object v0

    invoke-interface {v0}, Lca/uhn/hl7v2/HapiContext;->getLowerLayerProtocol()Lca/uhn/hl7v2/llp/LowerLayerProtocol;

    move-result-object v5

    invoke-virtual {p0}, Lca/uhn/hl7v2/app/ConnectionHub;->getHapiContext()Lca/uhn/hl7v2/HapiContext;

    move-result-object v0

    .line 151
    invoke-interface {v0}, Lca/uhn/hl7v2/HapiContext;->getSocketFactory()Lca/uhn/hl7v2/util/SocketFactory;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v8, 0x1

    move-object v0, v9

    move-object v1, p1

    move v2, p2

    move v6, p3

    invoke-direct/range {v0 .. v8}, Lca/uhn/hl7v2/app/ConnectionData;-><init>(Ljava/lang/String;IILca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;ZLca/uhn/hl7v2/util/SocketFactory;Z)V

    .line 149
    invoke-virtual {p0, v9}, Lca/uhn/hl7v2/app/ConnectionHub;->attach(Lca/uhn/hl7v2/app/ConnectionData;)Lca/uhn/hl7v2/app/Connection;

    move-result-object v0

    return-object v0
.end method

.method public detach(Lca/uhn/hl7v2/app/Connection;)V
    .locals 2
    .param p1, "c"    # Lca/uhn/hl7v2/app/Connection;

    .line 338
    iget-object v0, p0, Lca/uhn/hl7v2/app/ConnectionHub;->connections:Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;

    invoke-virtual {v0, p1}, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;->find(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/app/ConnectionData;

    .line 339
    .local v0, "cd":Lca/uhn/hl7v2/app/ConnectionData;
    if-eqz v0, :cond_0

    .line 340
    iget-object v1, p0, Lca/uhn/hl7v2/app/ConnectionHub;->connections:Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;

    invoke-virtual {v1, v0}, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    :cond_0
    return-void
.end method

.method public discard(Lca/uhn/hl7v2/app/Connection;)V
    .locals 2
    .param p1, "c"    # Lca/uhn/hl7v2/app/Connection;

    .line 349
    iget-object v0, p0, Lca/uhn/hl7v2/app/ConnectionHub;->connections:Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;

    invoke-virtual {v0, p1}, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;->find(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/app/ConnectionData;

    .line 350
    .local v0, "cd":Lca/uhn/hl7v2/app/ConnectionData;
    if-eqz v0, :cond_0

    .line 351
    iget-object v1, p0, Lca/uhn/hl7v2/app/ConnectionHub;->connections:Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;

    invoke-virtual {v1, v0}, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;->removeAllOf(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    :cond_0
    return-void
.end method

.method public discardAll()V
    .locals 3

    .line 358
    invoke-virtual {p0}, Lca/uhn/hl7v2/app/ConnectionHub;->allConnections()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 361
    return-void

    .line 358
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lca/uhn/hl7v2/app/ConnectionData;

    .line 359
    .local v1, "cd":Lca/uhn/hl7v2/app/ConnectionData;
    iget-object v2, p0, Lca/uhn/hl7v2/app/ConnectionHub;->connections:Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;

    invoke-virtual {v2, v1}, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;->removeAllOf(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    .end local v1    # "cd":Lca/uhn/hl7v2/app/ConnectionData;
    goto :goto_0
.end method

.method public getKnownConnection(Lca/uhn/hl7v2/app/ConnectionData;)Lca/uhn/hl7v2/app/Connection;
    .locals 1
    .param p1, "key"    # Lca/uhn/hl7v2/app/ConnectionData;

    .line 373
    iget-object v0, p0, Lca/uhn/hl7v2/app/ConnectionHub;->connections:Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;

    invoke-virtual {v0, p1}, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/app/Connection;

    return-object v0
.end method

.method public isOpen(Lca/uhn/hl7v2/app/ConnectionData;)Z
    .locals 1
    .param p1, "key"    # Lca/uhn/hl7v2/app/ConnectionData;

    .line 377
    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/app/ConnectionHub;->getKnownConnection(Lca/uhn/hl7v2/app/ConnectionData;)Lca/uhn/hl7v2/app/Connection;

    move-result-object v0

    invoke-interface {v0}, Lca/uhn/hl7v2/app/Connection;->isOpen()Z

    move-result v0

    return v0
.end method
