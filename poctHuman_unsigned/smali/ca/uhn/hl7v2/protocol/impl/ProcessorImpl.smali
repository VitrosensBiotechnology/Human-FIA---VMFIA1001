.class public Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;
.super Ljava/lang/Object;
.source "ProcessorImpl.java"

# interfaces
.implements Lca/uhn/hl7v2/protocol/Processor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$Cycler;,
        Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$ExpiringTransportable;
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private ackCycler:Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$Cycler;

.field private final myAcceptAcks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$ExpiringTransportable;",
            ">;"
        }
    .end annotation
.end field

.field private final myAvailableMessages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$ExpiringTransportable;",
            ">;"
        }
    .end annotation
.end field

.field private myContext:Lca/uhn/hl7v2/protocol/ProcessorContext;

.field private final myReservations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private myResponseExecutorService:Ljava/util/concurrent/ExecutorService;

.field private myThreaded:Z

.field private nonAckCycler:Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$Cycler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-class v0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/protocol/ProcessorContext;Z)V
    .locals 5
    .param p1, "theContext"    # Lca/uhn/hl7v2/protocol/ProcessorContext;
    .param p2, "isThreaded"    # Z

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->myContext:Lca/uhn/hl7v2/protocol/ProcessorContext;

    .line 83
    iput-boolean p2, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->myThreaded:Z

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->myAcceptAcks:Ljava/util/Map;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->myReservations:Ljava/util/Map;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->myAvailableMessages:Ljava/util/Map;

    .line 88
    if-eqz p2, :cond_0

    .line 89
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->myResponseExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 91
    invoke-interface {p1}, Lca/uhn/hl7v2/protocol/ProcessorContext;->getLocallyDrivenTransportLayer()Lca/uhn/hl7v2/protocol/TransportLayer;

    move-result-object v0

    .line 92
    .local v0, "local":Lca/uhn/hl7v2/protocol/TransportLayer;
    invoke-interface {p1}, Lca/uhn/hl7v2/protocol/ProcessorContext;->getRemotelyDrivenTransportLayer()Lca/uhn/hl7v2/protocol/TransportLayer;

    move-result-object v1

    .line 94
    .local v1, "remote":Lca/uhn/hl7v2/protocol/TransportLayer;
    new-instance v2, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$Cycler;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$Cycler;-><init>(Lca/uhn/hl7v2/protocol/Processor;Z)V

    iput-object v2, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->ackCycler:Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$Cycler;

    .line 95
    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->ackCycler:Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$Cycler;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 96
    .local v2, "ackThd":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 98
    if-eq v0, v1, :cond_0

    .line 99
    new-instance v3, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$Cycler;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$Cycler;-><init>(Lca/uhn/hl7v2/protocol/Processor;Z)V

    iput-object v3, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->nonAckCycler:Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$Cycler;

    .line 100
    new-instance v3, Ljava/lang/Thread;

    iget-object v4, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->nonAckCycler:Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$Cycler;

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 101
    .local v3, "nonAckThd":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 105
    .end local v0    # "local":Lca/uhn/hl7v2/protocol/TransportLayer;
    .end local v1    # "remote":Lca/uhn/hl7v2/protocol/TransportLayer;
    .end local v2    # "ackThd":Ljava/lang/Thread;
    .end local v3    # "nonAckThd":Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method static synthetic access$0()Lorg/slf4j/Logger;
    .locals 1

    .line 54
    sget-object v0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method private checkValidAckNeededCode(Ljava/lang/String;)V
    .locals 2
    .param p1, "theCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 173
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    const-string v0, "AL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    const-string v0, "NE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SU"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Lca/uhn/hl7v2/HL7Exception;

    const-string v1, "MSH-15 must be AL, ER, NE, or SU in the outgoing message"

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    return-void
.end method

.method private declared-synchronized cleanAcceptAcks()V
    .locals 8

    monitor-enter p0

    .line 396
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->myAcceptAcks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 397
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 404
    monitor-exit p0

    return-void

    .line 398
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 399
    .local v1, "ackId":Ljava/lang/String;
    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->myAcceptAcks:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$ExpiringTransportable;

    .line 400
    .local v2, "et":Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$ExpiringTransportable;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v2, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$ExpiringTransportable;->expiryTime:J

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    .line 401
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 401
    .end local v1    # "ackId":Ljava/lang/String;
    .end local v2    # "et":Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$ExpiringTransportable;
    goto :goto_0

    .line 395
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized cleanReservations()V
    .locals 8

    monitor-enter p0

    .line 382
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->myReservations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 383
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 390
    monitor-exit p0

    return-void

    .line 384
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 385
    .local v1, "ackId":Ljava/lang/String;
    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->myReservations:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 386
    .local v2, "expiry":Ljava/lang/Long;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    .line 387
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    .end local v1    # "ackId":Ljava/lang/String;
    .end local v2    # "expiry":Ljava/lang/Long;
    goto :goto_0

    .line 381
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized cleanReservedMessages()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    monitor-enter p0

    .line 407
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->myAvailableMessages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 408
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 419
    monitor-exit p0

    return-void

    .line 409
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 410
    .local v1, "ackId":Ljava/lang/String;
    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->myAvailableMessages:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$ExpiringTransportable;

    .line 411
    .local v2, "et":Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$ExpiringTransportable;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v2, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$ExpiringTransportable;->expiryTime:J

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    .line 412
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 415
    iget-object v3, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->myContext:Lca/uhn/hl7v2/protocol/ProcessorContext;

    invoke-interface {v3}, Lca/uhn/hl7v2/protocol/ProcessorContext;->getRouter()Lca/uhn/hl7v2/protocol/ApplicationRouter;

    move-result-object v3

    iget-object v4, v2, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$ExpiringTransportable;->transportable:Lca/uhn/hl7v2/protocol/Transportable;

    invoke-interface {v3, v4}, Lca/uhn/hl7v2/protocol/ApplicationRouter;->processMessage(Lca/uhn/hl7v2/protocol/Transportable;)Lca/uhn/hl7v2/protocol/Transportable;

    move-result-object v3

    .line 416
    .local v3, "out":Lca/uhn/hl7v2/protocol/Transportable;
    invoke-direct {p0, v3}, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->sendAppResponse(Lca/uhn/hl7v2/protocol/Transportable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 416
    .end local v1    # "ackId":Ljava/lang/String;
    .end local v2    # "et":Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$ExpiringTransportable;
    .end local v3    # "out":Lca/uhn/hl7v2/protocol/Transportable;
    goto :goto_0

    .line 406
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private cycleIfNeeded(Z)V
    .locals 1
    .param p1, "expectingAck"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 185
    iget-boolean v0, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->myThreaded:Z

    if-nez v0, :cond_0

    .line 186
    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->cycle(Z)V

    .line 188
    :cond_0
    return-void
.end method

.method private static isError(Lca/uhn/hl7v2/protocol/Transportable;)Z
    .locals 6
    .param p0, "theMessage"    # Lca/uhn/hl7v2/protocol/Transportable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, "error":Z
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "MSA-1"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 216
    .local v1, "fieldPaths":[Ljava/lang/String;
    invoke-interface {p0}, Lca/uhn/hl7v2/protocol/Transportable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lca/uhn/hl7v2/preparser/PreParser;->getFields(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, "fields":[Ljava/lang/String;
    aget-object v4, v2, v3

    if-eqz v4, :cond_1

    aget-object v4, v2, v3

    const-string v5, "CE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    aget-object v3, v2, v3

    const-string v4, "AE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 218
    :cond_0
    const/4 v0, 0x1

    .line 220
    :cond_1
    return v0
.end method

.method private static isReject(Lca/uhn/hl7v2/protocol/Transportable;)Z
    .locals 6
    .param p0, "theMessage"    # Lca/uhn/hl7v2/protocol/Transportable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, "reject":Z
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "MSA-1"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 205
    .local v1, "fieldPaths":[Ljava/lang/String;
    invoke-interface {p0}, Lca/uhn/hl7v2/protocol/Transportable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lca/uhn/hl7v2/preparser/PreParser;->getFields(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "fields":[Ljava/lang/String;
    aget-object v4, v2, v3

    if-eqz v4, :cond_1

    aget-object v4, v2, v3

    const-string v5, "CR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    aget-object v3, v2, v3

    const-string v4, "AR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 207
    :cond_0
    const/4 v0, 0x1

    .line 209
    :cond_1
    return v0
.end method

.method private declared-synchronized isReserved(Ljava/lang/String;)Z
    .locals 2
    .param p1, "ackId"    # Ljava/lang/String;

    monitor-enter p0

    .line 422
    const/4 v0, 0x0

    .line 423
    .local v0, "reserved":Z
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->myReservations:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 424
    const/4 v0, 0x1

    .line 426
    :cond_0
    monitor-exit p0

    return v0

    .line 421
    .end local v0    # "reserved":Z
    .end local p1    # "ackId":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized removeReservation(Ljava/lang/String;)V
    .locals 1
    .param p1, "ackId"    # Ljava/lang/String;

    monitor-enter p0

    .line 430
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->myReservations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    monitor-exit p0

    return-void

    .line 429
    .end local p1    # "ackId":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private sendAppResponse(Lca/uhn/hl7v2/protocol/Transportable;)V
    .locals 3
    .param p1, "theResponse"    # Lca/uhn/hl7v2/protocol/Transportable;

    .line 356
    move-object v0, p0

    .line 357
    .local v0, "processor":Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;
    new-instance v1, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$1;

    invoke-direct {v1, p0, p1, v0}, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$1;-><init>(Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;Lca/uhn/hl7v2/protocol/Transportable;Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;)V

    .line 371
    .local v1, "sender":Ljava/lang/Runnable;
    iget-boolean v2, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->myThreaded:Z

    if-eqz v2, :cond_0

    .line 372
    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->myResponseExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 373
    goto :goto_0

    .line 374
    :cond_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 376
    :goto_0
    return-void
.end method

.method private sleepIfNeeded()V
    .locals 2

    .line 194
    iget-boolean v0, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->myThreaded:Z

    if-eqz v0, :cond_0

    .line 196
    const-wide/16 v0, 0x1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    goto :goto_0

    :catch_0
    move-exception v0

    .line 199
    :cond_0
    :goto_0
    return-void
.end method

.method private tryReceive(Lca/uhn/hl7v2/protocol/TransportLayer;)Lca/uhn/hl7v2/protocol/Transportable;
    .locals 2
    .param p1, "theTransport"    # Lca/uhn/hl7v2/protocol/TransportLayer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/TransportException;
        }
    .end annotation

    .line 249
    const/4 v0, 0x0

    .line 251
    .local v0, "message":Lca/uhn/hl7v2/protocol/Transportable;
    :try_start_0
    invoke-interface {p1}, Lca/uhn/hl7v2/protocol/TransportLayer;->receive()Lca/uhn/hl7v2/protocol/Transportable;

    move-result-object v1
    :try_end_0
    .catch Lca/uhn/hl7v2/protocol/TransportException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 252
    goto :goto_0

    :catch_0
    move-exception v1

    .line 253
    .local v1, "e":Lca/uhn/hl7v2/protocol/TransportException;
    invoke-interface {p1}, Lca/uhn/hl7v2/protocol/TransportLayer;->disconnect()V

    .line 254
    invoke-interface {p1}, Lca/uhn/hl7v2/protocol/TransportLayer;->connect()V

    .line 255
    invoke-interface {p1}, Lca/uhn/hl7v2/protocol/TransportLayer;->receive()Lca/uhn/hl7v2/protocol/Transportable;

    move-result-object v0

    .line 257
    .end local v1    # "e":Lca/uhn/hl7v2/protocol/TransportException;
    :goto_0
    return-object v0
.end method

.method private trySend(Lca/uhn/hl7v2/protocol/TransportLayer;Lca/uhn/hl7v2/protocol/Transportable;)V
    .locals 1
    .param p1, "theTransport"    # Lca/uhn/hl7v2/protocol/TransportLayer;
    .param p2, "theTransportable"    # Lca/uhn/hl7v2/protocol/Transportable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/TransportException;
        }
    .end annotation

    .line 236
    :try_start_0
    invoke-interface {p1, p2}, Lca/uhn/hl7v2/protocol/TransportLayer;->send(Lca/uhn/hl7v2/protocol/Transportable;)V
    :try_end_0
    .catch Lca/uhn/hl7v2/protocol/TransportException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    goto :goto_0

    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Lca/uhn/hl7v2/protocol/TransportException;
    invoke-interface {p1}, Lca/uhn/hl7v2/protocol/TransportLayer;->disconnect()V

    .line 239
    invoke-interface {p1}, Lca/uhn/hl7v2/protocol/TransportLayer;->connect()V

    .line 240
    invoke-interface {p1, p2}, Lca/uhn/hl7v2/protocol/TransportLayer;->send(Lca/uhn/hl7v2/protocol/Transportable;)V

    .line 242
    .end local v0    # "e":Lca/uhn/hl7v2/protocol/TransportException;
    :goto_0
    return-void
.end method


# virtual methods
.method public cycle(Z)V
    .locals 11
    .param p1, "expectingAck"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 264
    sget-object v0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->log:Lorg/slf4j/Logger;

    const-string v1, "In cycle({})"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 266
    invoke-direct {p0}, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->cleanReservations()V

    .line 267
    invoke-direct {p0}, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->cleanAcceptAcks()V

    .line 268
    invoke-direct {p0}, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->cleanReservedMessages()V

    .line 270
    const/4 v0, 0x0

    move-object v1, v0

    .line 272
    .local v1, "in":Lca/uhn/hl7v2/protocol/Transportable;
    if-eqz p1, :cond_0

    .line 273
    :try_start_0
    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->myContext:Lca/uhn/hl7v2/protocol/ProcessorContext;

    invoke-interface {v2}, Lca/uhn/hl7v2/protocol/ProcessorContext;->getLocallyDrivenTransportLayer()Lca/uhn/hl7v2/protocol/TransportLayer;

    move-result-object v2

    invoke-direct {p0, v2}, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->tryReceive(Lca/uhn/hl7v2/protocol/TransportLayer;)Lca/uhn/hl7v2/protocol/Transportable;

    move-result-object v2

    move-object v1, v2

    .line 274
    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    goto/16 :goto_5

    .line 275
    :cond_0
    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->myContext:Lca/uhn/hl7v2/protocol/ProcessorContext;

    invoke-interface {v2}, Lca/uhn/hl7v2/protocol/ProcessorContext;->getRemotelyDrivenTransportLayer()Lca/uhn/hl7v2/protocol/TransportLayer;

    move-result-object v2

    invoke-direct {p0, v2}, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->tryReceive(Lca/uhn/hl7v2/protocol/TransportLayer;)Lca/uhn/hl7v2/protocol/Transportable;

    move-result-object v2
    :try_end_0
    .catch Lca/uhn/hl7v2/protocol/TransportException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 277
    nop

    .line 285
    :goto_0
    if-eqz v1, :cond_1

    .line 286
    sget-object v2, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->log:Lorg/slf4j/Logger;

    const-string v3, "Received message: {}"

    invoke-interface {v1}, Lca/uhn/hl7v2/protocol/Transportable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 287
    goto :goto_1

    .line 288
    :cond_1
    sget-object v2, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->log:Lorg/slf4j/Logger;

    const-string v3, "Received no message"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 292
    :goto_1
    if-eqz v1, :cond_9

    .line 293
    const/4 v2, 0x0

    .line 295
    .local v2, "acceptAckNeeded":Ljava/lang/String;
    const/4 v3, 0x0

    .line 296
    .local v3, "ackCode":Ljava/lang/String;
    nop

    .line 299
    .local v0, "ackId":Ljava/lang/String;
    const/4 v4, 0x4

    :try_start_1
    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "MSH-15"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    const-string v7, "MSH-16"

    aput-object v7, v4, v5

    const-string v5, "MSA-1"

    const/4 v7, 0x2

    aput-object v5, v4, v7

    const-string v5, "MSA-2"

    const/4 v8, 0x3

    aput-object v5, v4, v8

    .line 300
    .local v4, "fieldPaths":[Ljava/lang/String;
    invoke-interface {v1}, Lca/uhn/hl7v2/protocol/Transportable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lca/uhn/hl7v2/preparser/PreParser;->getFields(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 301
    .local v5, "fields":[Ljava/lang/String;
    aget-object v6, v5, v6

    move-object v2, v6

    .line 303
    aget-object v6, v5, v7

    move-object v3, v6

    .line 304
    aget-object v6, v5, v8
    :try_end_1
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v6

    .line 305
    .end local v4    # "fieldPaths":[Ljava/lang/String;
    .end local v5    # "fields":[Ljava/lang/String;
    goto :goto_2

    :catch_1
    move-exception v4

    .line 306
    .local v4, "e":Lca/uhn/hl7v2/HL7Exception;
    sget-object v5, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->log:Lorg/slf4j/Logger;

    const-string v6, "Failed to parse accept ack fields in incoming message"

    invoke-interface {v5, v6, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 309
    .end local v4    # "e":Lca/uhn/hl7v2/HL7Exception;
    :goto_2
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    const-string v4, "C"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    add-long v8, v4, v6

    .line 311
    .local v8, "expiryTime":J
    iget-object v4, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->myAcceptAcks:Ljava/util/Map;

    new-instance v5, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$ExpiringTransportable;

    invoke-direct {v5, p0, v1, v8, v9}, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$ExpiringTransportable;-><init>(Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;Lca/uhn/hl7v2/protocol/Transportable;J)V

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    .end local v8    # "expiryTime":J
    goto/16 :goto_4

    .line 313
    :cond_2
    invoke-virtual {p0}, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->getContext()Lca/uhn/hl7v2/protocol/ProcessorContext;

    move-result-object v4

    invoke-static {v4, v1}, Lca/uhn/hl7v2/protocol/impl/AcceptAcknowledger;->validate(Lca/uhn/hl7v2/protocol/ProcessorContext;Lca/uhn/hl7v2/protocol/Transportable;)Lca/uhn/hl7v2/protocol/impl/AcceptAcknowledger$AcceptACK;

    move-result-object v4

    .line 315
    .local v4, "ack":Lca/uhn/hl7v2/protocol/impl/AcceptAcknowledger$AcceptACK;
    if-eqz v2, :cond_3

    const-string v5, "AL"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 316
    :cond_3
    if-eqz v2, :cond_4

    const-string v5, "ER"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lca/uhn/hl7v2/protocol/impl/AcceptAcknowledger$AcceptACK;->isAcceptable()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 317
    :cond_4
    if-eqz v2, :cond_6

    const-string v5, "SU"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Lca/uhn/hl7v2/protocol/impl/AcceptAcknowledger$AcceptACK;->isAcceptable()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 318
    :cond_5
    iget-object v5, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->myContext:Lca/uhn/hl7v2/protocol/ProcessorContext;

    invoke-interface {v5}, Lca/uhn/hl7v2/protocol/ProcessorContext;->getRemotelyDrivenTransportLayer()Lca/uhn/hl7v2/protocol/TransportLayer;

    move-result-object v5

    invoke-virtual {v4}, Lca/uhn/hl7v2/protocol/impl/AcceptAcknowledger$AcceptACK;->getMessage()Lca/uhn/hl7v2/protocol/Transportable;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->trySend(Lca/uhn/hl7v2/protocol/TransportLayer;Lca/uhn/hl7v2/protocol/Transportable;)V

    .line 321
    :cond_6
    invoke-virtual {v4}, Lca/uhn/hl7v2/protocol/impl/AcceptAcknowledger$AcceptACK;->isAcceptable()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 322
    invoke-direct {p0, v0}, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->isReserved(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 324
    sget-object v5, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->log:Lorg/slf4j/Logger;

    const-string v6, "Received expected ACK message with ACK ID: {}"

    invoke-interface {v5, v6, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 326
    invoke-direct {p0, v0}, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->removeReservation(Ljava/lang/String;)V

    .line 327
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0x493e0

    add-long v9, v5, v7

    .line 328
    .local v9, "expiryTime":J
    iget-object v5, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->myAvailableMessages:Ljava/util/Map;

    new-instance v6, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$ExpiringTransportable;

    invoke-direct {v6, p0, v1, v9, v10}, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$ExpiringTransportable;-><init>(Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;Lca/uhn/hl7v2/protocol/Transportable;J)V

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    .end local v9    # "expiryTime":J
    goto :goto_4

    .line 332
    :cond_7
    sget-object v5, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->log:Lorg/slf4j/Logger;

    const-string v6, "Sending message to router"

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 333
    iget-object v5, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->myContext:Lca/uhn/hl7v2/protocol/ProcessorContext;

    invoke-interface {v5}, Lca/uhn/hl7v2/protocol/ProcessorContext;->getRouter()Lca/uhn/hl7v2/protocol/ApplicationRouter;

    move-result-object v5

    invoke-interface {v5, v1}, Lca/uhn/hl7v2/protocol/ApplicationRouter;->processMessage(Lca/uhn/hl7v2/protocol/Transportable;)Lca/uhn/hl7v2/protocol/Transportable;

    move-result-object v5

    .line 334
    .local v5, "out":Lca/uhn/hl7v2/protocol/Transportable;
    invoke-direct {p0, v5}, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->sendAppResponse(Lca/uhn/hl7v2/protocol/Transportable;)V

    .line 337
    .end local v5    # "out":Lca/uhn/hl7v2/protocol/Transportable;
    goto :goto_4

    .line 340
    :cond_8
    sget-object v5, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->log:Lorg/slf4j/Logger;

    const-string v6, "Incoming message was not acceptable"

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 344
    .end local v0    # "ackId":Ljava/lang/String;
    .end local v2    # "acceptAckNeeded":Ljava/lang/String;
    .end local v3    # "ackCode":Ljava/lang/String;
    .end local v4    # "ack":Lca/uhn/hl7v2/protocol/impl/AcceptAcknowledger$AcceptACK;
    goto :goto_4

    .line 345
    :cond_9
    if-eqz p1, :cond_a

    const-string v0, " Locally driven "

    goto :goto_3

    :cond_a
    const-string v0, "Remotely driven"

    .line 346
    .local v0, "transport":Ljava/lang/String;
    :goto_3
    sget-object v2, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->log:Lorg/slf4j/Logger;

    const-string v3, "{} TransportLayer.receive() returned null."

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 349
    .end local v0    # "transport":Ljava/lang/String;
    :goto_4
    invoke-direct {p0}, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->sleepIfNeeded()V

    .line 351
    sget-object v0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->log:Lorg/slf4j/Logger;

    const-string v2, "Exiting cycle()"

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 352
    return-void

    .line 277
    :goto_5
    nop

    .line 279
    .local v0, "e":Lca/uhn/hl7v2/protocol/TransportException;
    const-wide/16 v2, 0x3e8

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 280
    goto :goto_6

    :catch_2
    move-exception v2

    .line 281
    :goto_6
    throw v0
.end method

.method public getContext()Lca/uhn/hl7v2/protocol/ProcessorContext;
    .locals 1

    .line 473
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->myContext:Lca/uhn/hl7v2/protocol/ProcessorContext;

    return-object v0
.end method

.method public isAvailable(Ljava/lang/String;)Z
    .locals 2
    .param p1, "theAckId"    # Ljava/lang/String;

    .line 438
    const/4 v0, 0x0

    .line 439
    .local v0, "available":Z
    iget-object v1, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->myAvailableMessages:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    const/4 v0, 0x1

    .line 442
    :cond_0
    return v0
.end method

.method public receive(Ljava/lang/String;J)Lca/uhn/hl7v2/protocol/Transportable;
    .locals 6
    .param p1, "theAckId"    # Ljava/lang/String;
    .param p2, "theTimeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 449
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->isReserved(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 450
    invoke-virtual {p0, p1, p2, p3}, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->reserve(Ljava/lang/String;J)V

    .line 453
    :cond_0
    const/4 v0, 0x0

    .line 454
    .local v0, "in":Lca/uhn/hl7v2/protocol/Transportable;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long v3, v1, p2

    .line 456
    .local v3, "until":J
    :cond_1
    monitor-enter p0

    .line 457
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->myAvailableMessages:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$ExpiringTransportable;

    .line 458
    .local v1, "et":Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$ExpiringTransportable;
    if-nez v1, :cond_2

    .line 459
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->cycleIfNeeded(Z)V

    .line 460
    goto :goto_0

    .line 461
    :cond_2
    iget-object v2, v1, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$ExpiringTransportable;->transportable:Lca/uhn/hl7v2/protocol/Transportable;

    move-object v0, v2

    .line 456
    .end local v1    # "et":Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$ExpiringTransportable;
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    invoke-direct {p0}, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->sleepIfNeeded()V

    .line 465
    if-nez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 455
    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    .line 466
    :cond_3
    return-object v0

    .line 456
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public declared-synchronized reserve(Ljava/lang/String;J)V
    .locals 5
    .param p1, "theAckId"    # Ljava/lang/String;
    .param p2, "thePeriodMillis"    # J

    monitor-enter p0

    .line 227
    :try_start_0
    new-instance v0, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long v3, v1, p2

    invoke-direct {v0, v3, v4}, Ljava/lang/Long;-><init>(J)V

    .line 228
    .local v0, "expiry":Ljava/lang/Long;
    iget-object v1, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->myReservations:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    monitor-exit p0

    return-void

    .line 226
    .end local v0    # "expiry":Ljava/lang/Long;
    .end local p1    # "theAckId":Ljava/lang/String;
    .end local p2    # "thePeriodMillis":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public send(Lca/uhn/hl7v2/protocol/Transportable;IJ)V
    .locals 19
    .param p1, "theMessage"    # Lca/uhn/hl7v2/protocol/Transportable;
    .param p2, "maxRetries"    # I
    .param p3, "retryIntervalMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 125
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "MSH-10"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "MSH-15"

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-string v4, "MSH-16"

    const/4 v7, 0x2

    aput-object v4, v3, v7

    .line 126
    .local v3, "fieldPaths":[Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lca/uhn/hl7v2/protocol/Transportable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lca/uhn/hl7v2/preparser/PreParser;->getFields(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, "fields":[Ljava/lang/String;
    aget-object v8, v4, v5

    .line 128
    .local v8, "controlId":Ljava/lang/String;
    aget-object v9, v4, v6

    .line 129
    .local v9, "needAcceptAck":Ljava/lang/String;
    aget-object v7, v4, v7

    .line 131
    .local v7, "needAppAck":Ljava/lang/String;
    invoke-direct {v1, v9}, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->checkValidAckNeededCode(Ljava/lang/String;)V

    .line 133
    iget-object v10, v1, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->myContext:Lca/uhn/hl7v2/protocol/ProcessorContext;

    invoke-interface {v10}, Lca/uhn/hl7v2/protocol/ProcessorContext;->getLocallyDrivenTransportLayer()Lca/uhn/hl7v2/protocol/TransportLayer;

    move-result-object v10

    invoke-direct {v1, v10, v2}, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->trySend(Lca/uhn/hl7v2/protocol/TransportLayer;Lca/uhn/hl7v2/protocol/Transportable;)V

    .line 135
    if-nez v9, :cond_0

    if-nez v7, :cond_0

    move v10, v6

    goto :goto_0

    :cond_0
    move v10, v5

    .line 136
    .local v10, "originalMode":Z
    :goto_0
    if-nez v10, :cond_2

    const-string v11, "NE"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    goto :goto_1

    .line 169
    :cond_1
    move/from16 v5, p2

    goto/16 :goto_6

    .line 138
    :cond_2
    :goto_1
    const/4 v11, 0x0

    .line 139
    .local v11, "response":Lca/uhn/hl7v2/protocol/Transportable;
    move-object v12, v11

    move v11, v5

    .line 141
    .local v11, "retries":I
    .local v12, "response":Lca/uhn/hl7v2/protocol/Transportable;
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    add-long v15, v13, p3

    .line 142
    .local v15, "until":J
    :goto_3
    if-nez v12, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    cmp-long v17, v13, v15

    if-ltz v17, :cond_3

    goto :goto_5

    .line 143
    :cond_3
    monitor-enter p0

    .line 144
    :try_start_0
    iget-object v13, v1, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->myAcceptAcks:Ljava/util/Map;

    invoke-interface {v13, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$ExpiringTransportable;

    .line 145
    .local v13, "et":Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$ExpiringTransportable;
    if-nez v13, :cond_4

    .line 146
    invoke-direct {v1, v6}, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->cycleIfNeeded(Z)V

    .line 147
    goto :goto_4

    .line 148
    :cond_4
    iget-object v14, v13, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$ExpiringTransportable;->transportable:Lca/uhn/hl7v2/protocol/Transportable;

    move-object v12, v14

    .line 143
    .end local v13    # "et":Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$ExpiringTransportable;
    :goto_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-direct/range {p0 .. p0}, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->sleepIfNeeded()V

    goto :goto_3

    .line 143
    :catchall_0
    move-exception v0

    move-object v5, v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 154
    :cond_5
    :goto_5
    if-nez v12, :cond_6

    if-eqz v9, :cond_6

    const-string v13, "AL"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 155
    :cond_6
    if-eqz v12, :cond_8

    invoke-static {v12}, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->isReject(Lca/uhn/hl7v2/protocol/Transportable;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 156
    :cond_7
    sget-object v13, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->log:Lorg/slf4j/Logger;

    const-string v14, "Resending message {}"

    invoke-interface {v13, v14, v8}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    iget-object v13, v1, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->myContext:Lca/uhn/hl7v2/protocol/ProcessorContext;

    invoke-interface {v13}, Lca/uhn/hl7v2/protocol/ProcessorContext;->getLocallyDrivenTransportLayer()Lca/uhn/hl7v2/protocol/TransportLayer;

    move-result-object v13

    invoke-direct {v1, v13, v2}, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->trySend(Lca/uhn/hl7v2/protocol/TransportLayer;Lca/uhn/hl7v2/protocol/Transportable;)V

    .line 158
    const/4 v12, 0x0

    .line 161
    :cond_8
    if-eqz v12, :cond_9

    invoke-static {v12}, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->isError(Lca/uhn/hl7v2/protocol/Transportable;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 162
    new-array v6, v6, [Ljava/lang/String;

    const-string v13, "MSA-3"

    aput-object v13, v6, v5

    .line 163
    .local v6, "errMsgPath":[Ljava/lang/String;
    invoke-interface {v12}, Lca/uhn/hl7v2/protocol/Transportable;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v6}, Lca/uhn/hl7v2/preparser/PreParser;->getFields(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 164
    .local v13, "errMsg":[Ljava/lang/String;
    new-instance v14, Lca/uhn/hl7v2/HL7Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v2, "Error message received: "

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aget-object v2, v13, v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v14, v2}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v14

    .line 167
    .end local v6    # "errMsgPath":[Ljava/lang/String;
    .end local v13    # "errMsg":[Ljava/lang/String;
    .end local v15    # "until":J
    :cond_9
    move v2, v5

    if-nez v12, :cond_1

    add-int/lit8 v11, v11, 0x1

    .line 140
    move/from16 v5, p2

    if-le v11, v5, :cond_a

    .line 140
    .end local v11    # "retries":I
    .end local v12    # "response":Lca/uhn/hl7v2/protocol/Transportable;
    goto :goto_6

    .line 139
    .restart local v11    # "retries":I
    .restart local v12    # "response":Lca/uhn/hl7v2/protocol/Transportable;
    :cond_a
    move v5, v2

    move-object/from16 v2, p1

    goto/16 :goto_2

    .line 169
    .end local v11    # "retries":I
    .end local v12    # "response":Lca/uhn/hl7v2/protocol/Transportable;
    :goto_6
    return-void
.end method

.method public stop()V
    .locals 1

    .line 111
    iget-boolean v0, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->myThreaded:Z

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->ackCycler:Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$Cycler;

    invoke-virtual {v0}, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$Cycler;->stop()V

    .line 113
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->nonAckCycler:Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$Cycler;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->nonAckCycler:Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$Cycler;

    invoke-virtual {v0}, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$Cycler;->stop()V

    .line 117
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->myResponseExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 119
    :cond_1
    return-void
.end method
