.class public Lca/uhn/hl7v2/concurrent/DefaultExecutorService;
.super Ljava/lang/Object;
.source "DefaultExecutorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lca/uhn/hl7v2/concurrent/DefaultExecutorService$MyThreadFactory;
    }
.end annotation


# static fields
.field static defaultExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static completionService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/CompletionService;
    .locals 1
    .param p0, "executor"    # Ljava/util/concurrent/ExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ExecutorService;",
            ")",
            "Ljava/util/concurrent/CompletionService<",
            "TV;>;"
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/util/concurrent/ExecutorCompletionService;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutorCompletionService;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static declared-synchronized getDefaultService()Ljava/util/concurrent/ExecutorService;
    .locals 2

    const-class v0, Lca/uhn/hl7v2/concurrent/DefaultExecutorService;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lca/uhn/hl7v2/concurrent/DefaultExecutorService;->defaultExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    sget-object v1, Lca/uhn/hl7v2/concurrent/DefaultExecutorService;->defaultExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    :cond_0
    new-instance v1, Lca/uhn/hl7v2/concurrent/DefaultExecutorService$MyThreadFactory;

    invoke-direct {v1}, Lca/uhn/hl7v2/concurrent/DefaultExecutorService$MyThreadFactory;-><init>()V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lca/uhn/hl7v2/concurrent/DefaultExecutorService;->defaultExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 53
    :cond_1
    sget-object v1, Lca/uhn/hl7v2/concurrent/DefaultExecutorService;->defaultExecutorService:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 49
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isDefaultService(Ljava/util/concurrent/ExecutorService;)Z
    .locals 1
    .param p0, "service"    # Ljava/util/concurrent/ExecutorService;

    .line 60
    if-eqz p0, :cond_0

    sget-object v0, Lca/uhn/hl7v2/concurrent/DefaultExecutorService;->defaultExecutorService:Ljava/util/concurrent/ExecutorService;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static shutdown()V
    .locals 1

    .line 67
    sget-object v0, Lca/uhn/hl7v2/concurrent/DefaultExecutorService;->defaultExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 68
    return-void
.end method

.method public static shutdownNow()V
    .locals 1

    .line 74
    sget-object v0, Lca/uhn/hl7v2/concurrent/DefaultExecutorService;->defaultExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 75
    return-void
.end method
