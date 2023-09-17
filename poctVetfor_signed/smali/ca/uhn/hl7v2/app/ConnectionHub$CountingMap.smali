.class abstract Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;
.super Ljava/lang/Object;
.source "ConnectionHub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/app/ConnectionHub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CountingMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lca/uhn/hl7v2/app/ConnectionHub$CountingMap$Count;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private content:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Lca/uhn/hl7v2/app/ConnectionHub$CountingMap<",
            "TK;TD;>.Count;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lca/uhn/hl7v2/app/ConnectionHub;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/app/ConnectionHub;)V
    .locals 0

    .line 451
    .local p0, "this":Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;, "Lca/uhn/hl7v2/app/ConnectionHub$CountingMap<TK;TD;>;"
    iput-object p1, p0, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;->this$0:Lca/uhn/hl7v2/app/ConnectionHub;

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;->content:Ljava/util/Map;

    .line 454
    return-void
.end method


# virtual methods
.method protected abstract dispose(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation
.end method

.method public find(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)TK;"
        }
    .end annotation

    .line 459
    .local p0, "this":Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;, "Lca/uhn/hl7v2/app/ConnectionHub$CountingMap<TK;TD;>;"
    .local p1, "value":Ljava/lang/Object;, "TD;"
    iget-object v0, p0, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;->content:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 464
    const/4 v0, 0x0

    return-object v0

    .line 459
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 460
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Lca/uhn/hl7v2/app/ConnectionHub$CountingMap<TK;TD;>.Count;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap$Count;

    invoke-virtual {v2}, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap$Count;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 461
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TD;"
        }
    .end annotation

    .line 468
    .local p0, "this":Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;, "Lca/uhn/hl7v2/app/ConnectionHub$CountingMap<TK;TD;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;->content:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;->content:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap$Count;

    invoke-virtual {v0}, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap$Count;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
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

    .line 472
    .local p0, "this":Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;, "Lca/uhn/hl7v2/app/ConnectionHub$CountingMap<TK;TD;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;->content:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected abstract open(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public put(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 482
    .local p0, "this":Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;, "Lca/uhn/hl7v2/app/ConnectionHub$CountingMap<TK;TD;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;->content:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;->content:Ljava/util/Map;

    iget-object v1, p0, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;->content:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap$Count;

    invoke-virtual {v1}, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap$Count;->increase()Lca/uhn/hl7v2/app/ConnectionHub$CountingMap$Count;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap$Count;

    invoke-virtual {v0}, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap$Count;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 485
    :cond_0
    new-instance v0, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap$Count;

    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;->open(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap$Count;-><init>(Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;Ljava/lang/Object;)V

    .line 486
    .local v0, "c":Lca/uhn/hl7v2/app/ConnectionHub$CountingMap$Count;, "Lca/uhn/hl7v2/app/ConnectionHub$CountingMap<TK;TD;>.Count;"
    iget-object v1, p0, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;->content:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    invoke-virtual {v0}, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap$Count;->getValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TD;"
        }
    .end annotation

    .line 496
    .local p0, "this":Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;, "Lca/uhn/hl7v2/app/ConnectionHub$CountingMap<TK;TD;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;->content:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap$Count;

    .line 497
    .local v0, "pair":Lca/uhn/hl7v2/app/ConnectionHub$CountingMap$Count;, "Lca/uhn/hl7v2/app/ConnectionHub$CountingMap<TK;TD;>.Count;"
    if-nez v0, :cond_0

    .line 498
    const/4 v1, 0x0

    return-object v1

    .line 499
    :cond_0
    invoke-virtual {v0}, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap$Count;->isLast()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 500
    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;->removeAllOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 502
    :cond_1
    iget-object v1, p0, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;->content:Ljava/util/Map;

    iget-object v2, p0, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;->content:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap$Count;

    invoke-virtual {v2}, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap$Count;->decrease()Lca/uhn/hl7v2/app/ConnectionHub$CountingMap$Count;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap$Count;

    invoke-virtual {v1}, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap$Count;->getValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public removeAllOf(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TD;"
        }
    .end annotation

    .line 509
    .local p0, "this":Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;, "Lca/uhn/hl7v2/app/ConnectionHub$CountingMap<TK;TD;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;->content:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap$Count;

    invoke-static {v0}, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap$Count;->access$0(Lca/uhn/hl7v2/app/ConnectionHub$CountingMap$Count;)Ljava/lang/Object;

    move-result-object v0

    .line 510
    .local v0, "removed":Ljava/lang/Object;, "TD;"
    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;->dispose(Ljava/lang/Object;)V

    .line 511
    return-object v0
.end method
