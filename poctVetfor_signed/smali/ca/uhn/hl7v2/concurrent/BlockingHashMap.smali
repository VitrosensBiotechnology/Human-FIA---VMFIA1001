.class public Lca/uhn/hl7v2/concurrent/BlockingHashMap;
.super Ljava/lang/Object;
.source "BlockingHashMap.java"

# interfaces
.implements Lca/uhn/hl7v2/concurrent/BlockingMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lca/uhn/hl7v2/concurrent/BlockingMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private final latches:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;"
        }
    .end annotation
.end field

.field private final map:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    .local p0, "this":Lca/uhn/hl7v2/concurrent/BlockingHashMap;, "Lca/uhn/hl7v2/concurrent/BlockingHashMap<TK;TV;>;"
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, v0}, Lca/uhn/hl7v2/concurrent/BlockingHashMap;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/ExecutorService;

    .line 37
    .local p0, "this":Lca/uhn/hl7v2/concurrent/BlockingHashMap;, "Lca/uhn/hl7v2/concurrent/BlockingHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/concurrent/BlockingHashMap;->map:Ljava/util/concurrent/ConcurrentMap;

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/concurrent/BlockingHashMap;->latches:Ljava/util/concurrent/ConcurrentMap;

    .line 38
    iput-object p1, p0, Lca/uhn/hl7v2/concurrent/BlockingHashMap;->executor:Ljava/util/concurrent/ExecutorService;

    .line 39
    return-void
.end method

.method private declared-synchronized latchFor(Ljava/lang/Object;)Ljava/util/concurrent/CountDownLatch;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/concurrent/CountDownLatch;"
        }
    .end annotation

    .line 189
    .local p0, "this":Lca/uhn/hl7v2/concurrent/BlockingHashMap;, "Lca/uhn/hl7v2/concurrent/BlockingHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    monitor-enter p0

    .line 189
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/concurrent/BlockingHashMap;->latches:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    .line 190
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    if-nez v0, :cond_0

    .line 191
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v0, v1

    .line 192
    iget-object v1, p0, Lca/uhn/hl7v2/concurrent/BlockingHashMap;->latches:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :cond_0
    monitor-exit p0

    return-object v0

    .line 188
    .end local v0    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public asyncPoll(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;
    .locals 8
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    .line 116
    .local p0, "this":Lca/uhn/hl7v2/concurrent/BlockingHashMap;, "Lca/uhn/hl7v2/concurrent/BlockingHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/concurrent/BlockingHashMap;->latchFor(Ljava/lang/Object;)Ljava/util/concurrent/CountDownLatch;

    .line 117
    iget-object v0, p0, Lca/uhn/hl7v2/concurrent/BlockingHashMap;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lca/uhn/hl7v2/concurrent/BlockingHashMap$2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lca/uhn/hl7v2/concurrent/BlockingHashMap$2;-><init>(Lca/uhn/hl7v2/concurrent/BlockingHashMap;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public asyncTake(Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 97
    .local p0, "this":Lca/uhn/hl7v2/concurrent/BlockingHashMap;, "Lca/uhn/hl7v2/concurrent/BlockingHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/concurrent/BlockingHashMap;->latchFor(Ljava/lang/Object;)Ljava/util/concurrent/CountDownLatch;

    .line 98
    iget-object v0, p0, Lca/uhn/hl7v2/concurrent/BlockingHashMap;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lca/uhn/hl7v2/concurrent/BlockingHashMap$1;

    invoke-direct {v1, p0, p1}, Lca/uhn/hl7v2/concurrent/BlockingHashMap$1;-><init>(Lca/uhn/hl7v2/concurrent/BlockingHashMap;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 2

    .line 165
    .local p0, "this":Lca/uhn/hl7v2/concurrent/BlockingHashMap;, "Lca/uhn/hl7v2/concurrent/BlockingHashMap<TK;TV;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/concurrent/BlockingHashMap;->latches:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    return-void

    .line 165
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Object;

    .line 166
    .local v1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v1}, Lca/uhn/hl7v2/concurrent/BlockingHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 65
    .local p0, "this":Lca/uhn/hl7v2/concurrent/BlockingHashMap;, "Lca/uhn/hl7v2/concurrent/BlockingHashMap<TK;TV;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/concurrent/BlockingHashMap;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 185
    .local p0, "this":Lca/uhn/hl7v2/concurrent/BlockingHashMap;, "Lca/uhn/hl7v2/concurrent/BlockingHashMap<TK;TV;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/concurrent/BlockingHashMap;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 175
    .local p0, "this":Lca/uhn/hl7v2/concurrent/BlockingHashMap;, "Lca/uhn/hl7v2/concurrent/BlockingHashMap<TK;TV;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/concurrent/BlockingHashMap;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 56
    .local p0, "this":Lca/uhn/hl7v2/concurrent/BlockingHashMap;, "Lca/uhn/hl7v2/concurrent/BlockingHashMap<TK;TV;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/concurrent/BlockingHashMap;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized give(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .line 82
    .local p0, "this":Lca/uhn/hl7v2/concurrent/BlockingHashMap;, "Lca/uhn/hl7v2/concurrent/BlockingHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/concurrent/BlockingHashMap;->latches:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 85
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lca/uhn/hl7v2/concurrent/BlockingHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 81
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 132
    .local p0, "this":Lca/uhn/hl7v2/concurrent/BlockingHashMap;, "Lca/uhn/hl7v2/concurrent/BlockingHashMap<TK;TV;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/concurrent/BlockingHashMap;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 47
    .local p0, "this":Lca/uhn/hl7v2/concurrent/BlockingHashMap;, "Lca/uhn/hl7v2/concurrent/BlockingHashMap<TK;TV;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/concurrent/BlockingHashMap;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public poll(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 108
    .local p0, "this":Lca/uhn/hl7v2/concurrent/BlockingHashMap;, "Lca/uhn/hl7v2/concurrent/BlockingHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/concurrent/BlockingHashMap;->latchFor(Ljava/lang/Object;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lca/uhn/hl7v2/concurrent/BlockingHashMap;->latches:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lca/uhn/hl7v2/concurrent/BlockingHashMap;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 112
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 72
    .local p0, "this":Lca/uhn/hl7v2/concurrent/BlockingHashMap;, "Lca/uhn/hl7v2/concurrent/BlockingHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 72
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/concurrent/BlockingHashMap;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 73
    .local v0, "result":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/concurrent/BlockingHashMap;->latchFor(Ljava/lang/Object;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-object v0

    .line 71
    .end local v0    # "result":Ljava/lang/Object;, "TV;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 179
    .local p0, "this":Lca/uhn/hl7v2/concurrent/BlockingHashMap;, "Lca/uhn/hl7v2/concurrent/BlockingHashMap<TK;TV;>;"
    .local p1, "t":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    return-void

    .line 179
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 180
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lca/uhn/hl7v2/concurrent/BlockingHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    goto :goto_0
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 151
    .local p0, "this":Lca/uhn/hl7v2/concurrent/BlockingHashMap;, "Lca/uhn/hl7v2/concurrent/BlockingHashMap<TK;TV;>;"
    monitor-enter p0

    .line 151
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/concurrent/BlockingHashMap;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 152
    .local v0, "result":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lca/uhn/hl7v2/concurrent/BlockingHashMap;->latches:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CountDownLatch;

    .line 153
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    if-eqz v1, :cond_0

    .line 154
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :cond_0
    monitor-exit p0

    return-object v0

    .line 150
    .end local v0    # "result":Ljava/lang/Object;, "TV;"
    .end local v1    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public size()I
    .locals 1

    .line 141
    .local p0, "this":Lca/uhn/hl7v2/concurrent/BlockingHashMap;, "Lca/uhn/hl7v2/concurrent/BlockingHashMap<TK;TV;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/concurrent/BlockingHashMap;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method

.method public take(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 90
    .local p0, "this":Lca/uhn/hl7v2/concurrent/BlockingHashMap;, "Lca/uhn/hl7v2/concurrent/BlockingHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/concurrent/BlockingHashMap;->latchFor(Ljava/lang/Object;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 91
    iget-object v0, p0, Lca/uhn/hl7v2/concurrent/BlockingHashMap;->latches:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lca/uhn/hl7v2/concurrent/BlockingHashMap;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 171
    .local p0, "this":Lca/uhn/hl7v2/concurrent/BlockingHashMap;, "Lca/uhn/hl7v2/concurrent/BlockingHashMap<TK;TV;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/concurrent/BlockingHashMap;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
