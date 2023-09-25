.class public abstract Lca/uhn/hl7v2/concurrent/Service;
.super Ljava/lang/Object;
.source "Service.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private volatile keepRunning:Z

.field private final name:Ljava/lang/String;

.field private serviceExitedWithException:Ljava/lang/Throwable;

.field private shutdownTimeout:J

.field private startupLatch:Ljava/util/concurrent/CountDownLatch;

.field private thread:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lca/uhn/hl7v2/concurrent/Service;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 47
    sput-object v0, Lca/uhn/hl7v2/concurrent/Service;->log:Lorg/slf4j/Logger;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lca/uhn/hl7v2/concurrent/Service;->shutdownTimeout:J

    .line 55
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lca/uhn/hl7v2/concurrent/Service;->startupLatch:Ljava/util/concurrent/CountDownLatch;

    .line 59
    iput-object p1, p0, Lca/uhn/hl7v2/concurrent/Service;->name:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lca/uhn/hl7v2/concurrent/Service;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 61
    return-void
.end method


# virtual methods
.method protected afterStartup()V
    .locals 0

    .line 132
    return-void
.end method

.method protected afterTermination()V
    .locals 0

    .line 184
    return-void
.end method

.method public getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 72
    iget-object v0, p0, Lca/uhn/hl7v2/concurrent/Service;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getServiceExitedWithException()Ljava/lang/Throwable;
    .locals 1

    .line 239
    iget-object v0, p0, Lca/uhn/hl7v2/concurrent/Service;->serviceExitedWithException:Ljava/lang/Throwable;

    return-object v0
.end method

.method protected abstract handle()V
.end method

.method public isRunning()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lca/uhn/hl7v2/concurrent/Service;->keepRunning:Z

    return v0
.end method

.method protected prepareTermination()V
    .locals 3

    .line 191
    sget-object v0, Lca/uhn/hl7v2/concurrent/Service;->log:Lorg/slf4j/Logger;

    const-string v1, "Prepare to stop thread {}"

    iget-object v2, p0, Lca/uhn/hl7v2/concurrent/Service;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lca/uhn/hl7v2/concurrent/Service;->keepRunning:Z

    .line 193
    return-void
.end method

.method public final run()V
    .locals 3

    .line 202
    :try_start_0
    invoke-virtual {p0}, Lca/uhn/hl7v2/concurrent/Service;->afterStartup()V

    .line 203
    sget-object v0, Lca/uhn/hl7v2/concurrent/Service;->log:Lorg/slf4j/Logger;

    const-string v1, "Thread {} entering main loop"

    iget-object v2, p0, Lca/uhn/hl7v2/concurrent/Service;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    :goto_0
    invoke-virtual {p0}, Lca/uhn/hl7v2/concurrent/Service;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    sget-object v0, Lca/uhn/hl7v2/concurrent/Service;->log:Lorg/slf4j/Logger;

    const-string v1, "Thread {} leaving main loop"

    iget-object v2, p0, Lca/uhn/hl7v2/concurrent/Service;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 209
    goto :goto_1

    .line 205
    :cond_0
    invoke-virtual {p0}, Lca/uhn/hl7v2/concurrent/Service;->handle()V

    .line 206
    iget-object v0, p0, Lca/uhn/hl7v2/concurrent/Service;->startupLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 219
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_1
    iput-object v0, p0, Lca/uhn/hl7v2/concurrent/Service;->serviceExitedWithException:Ljava/lang/Throwable;

    .line 218
    sget-object v1, Lca/uhn/hl7v2/concurrent/Service;->log:Lorg/slf4j/Logger;

    const-string v2, "Thread exiting main loop due to exception:"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    iget-object v0, p0, Lca/uhn/hl7v2/concurrent/Service;->startupLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 221
    invoke-virtual {p0}, Lca/uhn/hl7v2/concurrent/Service;->afterTermination()V

    goto :goto_3

    .line 209
    :catch_1
    move-exception v0

    .line 210
    .local v0, "t":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 211
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    iput-object v1, p0, Lca/uhn/hl7v2/concurrent/Service;->serviceExitedWithException:Ljava/lang/Throwable;

    .line 212
    goto :goto_2

    .line 213
    :cond_1
    iput-object v0, p0, Lca/uhn/hl7v2/concurrent/Service;->serviceExitedWithException:Ljava/lang/Throwable;

    .line 215
    :goto_2
    sget-object v1, Lca/uhn/hl7v2/concurrent/Service;->log:Lorg/slf4j/Logger;

    const-string v2, "Thread exiting main loop due to exception:"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 215
    .end local v0    # "t":Ljava/lang/RuntimeException;
    goto :goto_1

    .line 224
    :goto_3
    return-void

    .line 219
    :goto_4
    nop

    .line 220
    iget-object v1, p0, Lca/uhn/hl7v2/concurrent/Service;->startupLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 221
    invoke-virtual {p0}, Lca/uhn/hl7v2/concurrent/Service;->afterTermination()V

    .line 222
    throw v0
.end method

.method protected setServiceExitedWithException(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "theThreadExitedWithException"    # Ljava/lang/Throwable;

    .line 230
    iput-object p1, p0, Lca/uhn/hl7v2/concurrent/Service;->serviceExitedWithException:Ljava/lang/Throwable;

    .line 231
    return-void
.end method

.method public setShutdownTimeout(J)V
    .locals 0
    .param p1, "shutdownTimeout"    # J

    .line 82
    iput-wide p1, p0, Lca/uhn/hl7v2/concurrent/Service;->shutdownTimeout:J

    .line 83
    return-void
.end method

.method public start()V
    .locals 3

    .line 94
    iget-boolean v0, p0, Lca/uhn/hl7v2/concurrent/Service;->keepRunning:Z

    if-eqz v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Service is already running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    sget-object v0, Lca/uhn/hl7v2/concurrent/Service;->log:Lorg/slf4j/Logger;

    const-string v1, "Starting service {}"

    iget-object v2, p0, Lca/uhn/hl7v2/concurrent/Service;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lca/uhn/hl7v2/concurrent/Service;->keepRunning:Z

    .line 99
    invoke-virtual {p0}, Lca/uhn/hl7v2/concurrent/Service;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 100
    .local v0, "service":Ljava/util/concurrent/ExecutorService;
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ExecutorService is shut down"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :cond_1
    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, p0, Lca/uhn/hl7v2/concurrent/Service;->thread:Ljava/util/concurrent/Future;

    .line 104
    return-void
.end method

.method public startAndWait()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Lca/uhn/hl7v2/concurrent/Service;->start()V

    .line 120
    iget-object v0, p0, Lca/uhn/hl7v2/concurrent/Service;->startupLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 121
    return-void
.end method

.method public stop()V
    .locals 1

    .line 149
    invoke-virtual {p0}, Lca/uhn/hl7v2/concurrent/Service;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lca/uhn/hl7v2/concurrent/Service;->prepareTermination()V

    .line 152
    :cond_0
    return-void
.end method

.method public final stopAndWait()V
    .locals 0

    .line 176
    invoke-virtual {p0}, Lca/uhn/hl7v2/concurrent/Service;->stop()V

    .line 177
    invoke-virtual {p0}, Lca/uhn/hl7v2/concurrent/Service;->waitForTermination()V

    .line 178
    return-void
.end method

.method public waitForTermination()V
    .locals 5

    .line 155
    iget-object v0, p0, Lca/uhn/hl7v2/concurrent/Service;->thread:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/concurrent/Service;->thread:Ljava/util/concurrent/Future;

    iget-wide v1, p0, Lca/uhn/hl7v2/concurrent/Service;->shutdownTimeout:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    goto :goto_0

    .line 160
    :catch_1
    move-exception v0

    .line 161
    .local v0, "te":Ljava/util/concurrent/TimeoutException;
    sget-object v1, Lca/uhn/hl7v2/concurrent/Service;->log:Lorg/slf4j/Logger;

    .line 162
    const-string v2, "Thread did not stop after {} milliseconds. Now cancelling."

    .line 163
    iget-wide v3, p0, Lca/uhn/hl7v2/concurrent/Service;->shutdownTimeout:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 161
    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    iget-object v1, p0, Lca/uhn/hl7v2/concurrent/Service;->thread:Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 164
    .end local v0    # "te":Ljava/util/concurrent/TimeoutException;
    goto :goto_0

    .line 158
    :catch_2
    move-exception v0

    .line 168
    :cond_0
    :goto_0
    return-void
.end method
