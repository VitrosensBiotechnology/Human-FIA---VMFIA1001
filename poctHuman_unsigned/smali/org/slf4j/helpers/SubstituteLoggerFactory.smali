.class public Lorg/slf4j/helpers/SubstituteLoggerFactory;
.super Ljava/lang/Object;
.source "SubstituteLoggerFactory.java"

# interfaces
.implements Lorg/slf4j/ILoggerFactory;


# instance fields
.field final loggerNameList:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/slf4j/helpers/SubstituteLoggerFactory;->loggerNameList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lorg/slf4j/helpers/SubstituteLoggerFactory;->loggerNameList:Ljava/util/List;

    monitor-enter v0

    .line 51
    :try_start_0
    iget-object v1, p0, Lorg/slf4j/helpers/SubstituteLoggerFactory;->loggerNameList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    sget-object v0, Lorg/slf4j/helpers/NOPLogger;->NOP_LOGGER:Lorg/slf4j/helpers/NOPLogger;

    return-object v0

    .line 52
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getLoggerNameList()Ljava/util/List;
    .locals 3

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v0, "copy":Ljava/util/List;
    iget-object v1, p0, Lorg/slf4j/helpers/SubstituteLoggerFactory;->loggerNameList:Ljava/util/List;

    monitor-enter v1

    .line 59
    :try_start_0
    iget-object v2, p0, Lorg/slf4j/helpers/SubstituteLoggerFactory;->loggerNameList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    monitor-exit v1

    .line 61
    return-object v0

    .line 60
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
