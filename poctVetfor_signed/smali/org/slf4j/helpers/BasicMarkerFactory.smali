.class public Lorg/slf4j/helpers/BasicMarkerFactory;
.super Ljava/lang/Object;
.source "BasicMarkerFactory.java"

# interfaces
.implements Lorg/slf4j/IMarkerFactory;


# instance fields
.field markerMap:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/slf4j/helpers/BasicMarkerFactory;->markerMap:Ljava/util/Map;

    .line 53
    return-void
.end method


# virtual methods
.method public detachMarker(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 87
    return v0

    .line 89
    :cond_0
    iget-object v1, p0, Lorg/slf4j/helpers/BasicMarkerFactory;->markerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0
.end method

.method public declared-synchronized exists(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 79
    if-nez p1, :cond_0

    .line 80
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 82
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/slf4j/helpers/BasicMarkerFactory;->markerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 78
    .end local p1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getDetachedMarker(Ljava/lang/String;)Lorg/slf4j/Marker;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 94
    new-instance v0, Lorg/slf4j/helpers/BasicMarker;

    invoke-direct {v0, p1}, Lorg/slf4j/helpers/BasicMarker;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public declared-synchronized getMarker(Ljava/lang/String;)Lorg/slf4j/Marker;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 63
    if-nez p1, :cond_0

    .line 64
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Marker name cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    .end local p1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 67
    .restart local p1    # "name":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lorg/slf4j/helpers/BasicMarkerFactory;->markerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/slf4j/Marker;

    .line 68
    .local v0, "marker":Lorg/slf4j/Marker;
    if-nez v0, :cond_1

    .line 69
    new-instance v1, Lorg/slf4j/helpers/BasicMarker;

    invoke-direct {v1, p1}, Lorg/slf4j/helpers/BasicMarker;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 70
    iget-object v1, p0, Lorg/slf4j/helpers/BasicMarkerFactory;->markerMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_1
    monitor-exit p0

    return-object v0

    .line 62
    .end local v0    # "marker":Lorg/slf4j/Marker;
    .end local p1    # "name":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    throw p1
.end method
