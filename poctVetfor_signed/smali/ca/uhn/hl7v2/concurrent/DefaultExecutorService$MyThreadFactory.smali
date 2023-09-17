.class Lca/uhn/hl7v2/concurrent/DefaultExecutorService$MyThreadFactory;
.super Ljava/lang/Object;
.source "DefaultExecutorService.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/concurrent/DefaultExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyThreadFactory"
.end annotation


# instance fields
.field private group:Ljava/lang/ThreadGroup;

.field private threadNum:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/concurrent/DefaultExecutorService$MyThreadFactory;->group:Ljava/lang/ThreadGroup;

    .line 84
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lca/uhn/hl7v2/concurrent/DefaultExecutorService$MyThreadFactory;->threadNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 85
    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 8
    .param p1, "theR"    # Ljava/lang/Runnable;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hapi-worker-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lca/uhn/hl7v2/concurrent/DefaultExecutorService$MyThreadFactory;->threadNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Ljava/lang/Thread;

    iget-object v3, p0, Lca/uhn/hl7v2/concurrent/DefaultExecutorService$MyThreadFactory;->group:Ljava/lang/ThreadGroup;

    const-wide/16 v6, 0x0

    move-object v2, v1

    move-object v4, p1

    move-object v5, v0

    invoke-direct/range {v2 .. v7}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 90
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->isDaemon()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 93
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Thread;->getPriority()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    .line 94
    invoke-virtual {v1, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 96
    :cond_1
    return-object v1
.end method
