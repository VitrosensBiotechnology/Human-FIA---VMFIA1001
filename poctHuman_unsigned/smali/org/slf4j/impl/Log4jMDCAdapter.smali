.class public Lorg/slf4j/impl/Log4jMDCAdapter;
.super Ljava/lang/Object;
.source "Log4jMDCAdapter.java"

# interfaces
.implements Lorg/slf4j/spi/MDCAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 36
    invoke-static {}, Lorg/apache/log4j/MDC;->getContext()Ljava/util/Hashtable;

    move-result-object v0

    .line 37
    .local v0, "map":Ljava/util/Map;
    if-eqz v0, :cond_0

    .line 38
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 40
    :cond_0
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 43
    invoke-static {p1}, Lorg/apache/log4j/MDC;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCopyOfContextMap()Ljava/util/Map;
    .locals 2

    .line 67
    invoke-static {}, Lorg/apache/log4j/MDC;->getContext()Ljava/util/Hashtable;

    move-result-object v0

    .line 68
    .local v0, "old":Ljava/util/Map;
    if-eqz v0, :cond_0

    .line 69
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v1

    .line 71
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .line 59
    invoke-static {p1, p2}, Lorg/apache/log4j/MDC;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 63
    invoke-static {p1}, Lorg/apache/log4j/MDC;->remove(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public setContextMap(Ljava/util/Map;)V
    .locals 5
    .param p1, "contextMap"    # Ljava/util/Map;

    .line 76
    invoke-static {}, Lorg/apache/log4j/MDC;->getContext()Ljava/util/Hashtable;

    move-result-object v0

    .line 77
    .local v0, "old":Ljava/util/Map;
    if-nez v0, :cond_1

    .line 78
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 79
    .local v1, "entrySetIterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 81
    .local v2, "mapEntry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/log4j/MDC;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    .end local v2    # "mapEntry":Ljava/util/Map$Entry;
    goto :goto_0

    .line 83
    .end local v1    # "entrySetIterator":Ljava/util/Iterator;
    :cond_0
    goto :goto_1

    .line 84
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 85
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 87
    :goto_1
    return-void
.end method
