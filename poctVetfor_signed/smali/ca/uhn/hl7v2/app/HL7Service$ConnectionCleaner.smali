.class Lca/uhn/hl7v2/app/HL7Service$ConnectionCleaner;
.super Lca/uhn/hl7v2/concurrent/Service;
.source "HL7Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/app/HL7Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionCleaner"
.end annotation


# instance fields
.field private final service:Lca/uhn/hl7v2/app/HL7Service;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/app/HL7Service;)V
    .locals 2
    .param p1, "service"    # Lca/uhn/hl7v2/app/HL7Service;

    .line 424
    const-string v0, "ConnectionCleaner"

    invoke-virtual {p1}, Lca/uhn/hl7v2/app/HL7Service;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lca/uhn/hl7v2/concurrent/Service;-><init>(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    .line 425
    iput-object p1, p0, Lca/uhn/hl7v2/app/HL7Service$ConnectionCleaner;->service:Lca/uhn/hl7v2/app/HL7Service;

    .line 426
    return-void
.end method


# virtual methods
.method public handle()V
    .locals 6

    .line 436
    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 437
    iget-object v0, p0, Lca/uhn/hl7v2/app/HL7Service$ConnectionCleaner;->service:Lca/uhn/hl7v2/app/HL7Service;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    :try_start_1
    iget-object v1, p0, Lca/uhn/hl7v2/app/HL7Service$ConnectionCleaner;->service:Lca/uhn/hl7v2/app/HL7Service;

    invoke-virtual {v1}, Lca/uhn/hl7v2/app/HL7Service;->getRemoteConnections()Ljava/util/List;

    move-result-object v1

    .line 439
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 438
    nop

    .line 440
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lca/uhn/hl7v2/app/Connection;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 437
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lca/uhn/hl7v2/app/Connection;>;"
    monitor-exit v0

    goto :goto_1

    .line 441
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lca/uhn/hl7v2/app/Connection;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lca/uhn/hl7v2/app/Connection;

    .line 442
    .local v2, "conn":Lca/uhn/hl7v2/app/Connection;
    invoke-interface {v2}, Lca/uhn/hl7v2/app/Connection;->isOpen()Z

    move-result v3

    if-nez v3, :cond_0

    .line 443
    invoke-static {}, Lca/uhn/hl7v2/app/HL7Service;->access$0()Lorg/slf4j/Logger;

    move-result-object v3

    .line 444
    const-string v4, "Removing connection from {} from connection list"

    .line 445
    invoke-interface {v2}, Lca/uhn/hl7v2/app/Connection;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .line 443
    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 446
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 447
    iget-object v3, p0, Lca/uhn/hl7v2/app/HL7Service$ConnectionCleaner;->service:Lca/uhn/hl7v2/app/HL7Service;

    invoke-static {v3, v2}, Lca/uhn/hl7v2/app/HL7Service;->access$1(Lca/uhn/hl7v2/app/HL7Service;Lca/uhn/hl7v2/app/Connection;)V

    .line 447
    .end local v2    # "conn":Lca/uhn/hl7v2/app/Connection;
    goto :goto_0

    .line 437
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lca/uhn/hl7v2/app/Connection;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 451
    :catch_0
    move-exception v0

    .line 454
    :goto_1
    return-void
.end method

.method public start()V
    .locals 2

    .line 430
    invoke-static {}, Lca/uhn/hl7v2/app/HL7Service;->access$0()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Starting ConnectionCleaner service"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 431
    invoke-super {p0}, Lca/uhn/hl7v2/concurrent/Service;->start()V

    .line 432
    return-void
.end method
