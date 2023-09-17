.class public Lorg/slf4j/impl/Log4jLoggerFactory;
.super Ljava/lang/Object;
.source "Log4jLoggerFactory.java"

# interfaces
.implements Lorg/slf4j/ILoggerFactory;


# instance fields
.field loggerMap:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/slf4j/impl/Log4jLoggerFactory;->loggerMap:Ljava/util/Map;

    .line 47
    return-void
.end method


# virtual methods
.method public getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    .line 57
    .local v0, "slf4jLogger":Lorg/slf4j/Logger;
    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v1, p0, Lorg/slf4j/impl/Log4jLoggerFactory;->loggerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/slf4j/Logger;

    move-object v0, v1

    .line 59
    if-nez v0, :cond_1

    .line 61
    const-string v1, "ROOT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-static {}, Lorg/apache/log4j/LogManager;->getRootLogger()Lorg/apache/log4j/Logger;

    move-result-object v1

    .line 62
    .local v1, "log4jLogger":Lorg/apache/log4j/Logger;
    goto :goto_0

    .line 64
    .end local v1    # "log4jLogger":Lorg/apache/log4j/Logger;
    :cond_0
    invoke-static {p1}, Lorg/apache/log4j/LogManager;->getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object v1

    .line 66
    .restart local v1    # "log4jLogger":Lorg/apache/log4j/Logger;
    :goto_0
    new-instance v2, Lorg/slf4j/impl/Log4jLoggerAdapter;

    invoke-direct {v2, v1}, Lorg/slf4j/impl/Log4jLoggerAdapter;-><init>(Lorg/apache/log4j/Logger;)V

    move-object v0, v2

    .line 67
    iget-object v2, p0, Lorg/slf4j/impl/Log4jLoggerFactory;->loggerMap:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .end local v1    # "log4jLogger":Lorg/apache/log4j/Logger;
    :cond_1
    monitor-exit p0

    .line 70
    return-object v0

    .line 69
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
