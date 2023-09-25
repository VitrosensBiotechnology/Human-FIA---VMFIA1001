.class public abstract Lca/uhn/hl7v2/parser/AbstractModelClassFactory;
.super Ljava/lang/Object;
.source "AbstractModelClassFactory.java"

# interfaces
.implements Lca/uhn/hl7v2/parser/ModelClassFactory;


# static fields
.field protected static final DEFAULT_EVENT_MAP_DIRECTORY:Ljava/lang/String; = "ca/uhn/hl7v2/parser/eventmap/"

.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private eventMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lca/uhn/hl7v2/Version;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private eventMapDirectory:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lca/uhn/hl7v2/parser/AbstractModelClassFactory;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/parser/AbstractModelClassFactory;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "ca/uhn/hl7v2/parser/eventmap/"

    iput-object v0, p0, Lca/uhn/hl7v2/parser/AbstractModelClassFactory;->eventMapDirectory:Ljava/lang/String;

    .line 50
    return-void
.end method

.method private getResource(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p1, "resource"    # Ljava/lang/String;

    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "in":Ljava/io/InputStream;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 158
    .local v1, "loader":Ljava/lang/ClassLoader;
    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 161
    :cond_0
    if-nez v0, :cond_1

    .line 162
    const-class v2, Lca/uhn/hl7v2/parser/AbstractModelClassFactory;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 163
    if-eqz v1, :cond_1

    .line 164
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 167
    :cond_1
    if-nez v0, :cond_2

    .line 168
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 170
    :cond_2
    return-object v0
.end method


# virtual methods
.method declared-synchronized getEventMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lca/uhn/hl7v2/Version;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    monitor-enter p0

    .line 115
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/parser/AbstractModelClassFactory;->eventMap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 117
    :try_start_1
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/AbstractModelClassFactory;->loadMessageStructures()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/parser/AbstractModelClassFactory;->eventMap:Ljava/util/Map;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    goto :goto_0

    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v1, Lca/uhn/hl7v2/HL7Exception;

    const-string v2, "Could not load event map"

    invoke-direct {v1, v2, v0}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 122
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lca/uhn/hl7v2/parser/AbstractModelClassFactory;->eventMap:Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEventMapDirectory()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lca/uhn/hl7v2/parser/AbstractModelClassFactory;->eventMapDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public getEventMapForVersion(Lca/uhn/hl7v2/Version;)Ljava/util/Map;
    .locals 1
    .param p1, "version"    # Lca/uhn/hl7v2/Version;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/Version;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/AbstractModelClassFactory;->getEventMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getMessageStructureForEvent(Ljava/lang/String;Lca/uhn/hl7v2/Version;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # Lca/uhn/hl7v2/Version;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 78
    invoke-virtual {p0, p2}, Lca/uhn/hl7v2/parser/AbstractModelClassFactory;->getEventMapForVersion(Lca/uhn/hl7v2/Version;)Ljava/util/Map;

    move-result-object v0

    .line 79
    .local v0, "p":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 82
    sget-object v1, Lca/uhn/hl7v2/parser/AbstractModelClassFactory;->LOG:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No event map found for version "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 83
    return-object p1

    .line 88
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method protected loadMessageStructures()Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lca/uhn/hl7v2/Version;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 133
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Lca/uhn/hl7v2/Version;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {}, Lca/uhn/hl7v2/Version;->values()[Lca/uhn/hl7v2/Version;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-lt v2, v3, :cond_0

    .line 152
    return-object v0

    .line 133
    :cond_0
    aget-object v4, v1, v2

    .line 134
    .local v4, "v":Lca/uhn/hl7v2/Version;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/AbstractModelClassFactory;->getEventMapDirectory()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lca/uhn/hl7v2/Version;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".properties"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 135
    .local v5, "resource":Ljava/lang/String;
    invoke-direct {p0, v5}, Lca/uhn/hl7v2/parser/AbstractModelClassFactory;->getResource(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 136
    .local v6, "in":Ljava/io/InputStream;
    if-eqz v6, :cond_2

    .line 138
    :try_start_0
    new-instance v7, Ljava/util/Properties;

    invoke-direct {v7}, Ljava/util/Properties;-><init>()V

    .line 139
    .local v7, "structures":Ljava/util/Properties;
    invoke-virtual {v7, v6}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 141
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 142
    .local v8, "structureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_1

    .line 146
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v0, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    .end local v7    # "structures":Ljava/util/Properties;
    .end local v8    # "structureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    nop

    .line 148
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 148
    .end local v4    # "v":Lca/uhn/hl7v2/Version;
    .end local v5    # "resource":Ljava/lang/String;
    .end local v6    # "in":Ljava/io/InputStream;
    goto :goto_2

    .line 142
    .restart local v4    # "v":Lca/uhn/hl7v2/Version;
    .restart local v5    # "resource":Ljava/lang/String;
    .restart local v6    # "in":Ljava/io/InputStream;
    .restart local v7    # "structures":Ljava/util/Properties;
    .restart local v8    # "structureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 143
    .local v10, "next":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v8, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    .end local v10    # "next":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    goto :goto_1

    .line 147
    .end local v7    # "structures":Ljava/util/Properties;
    .end local v8    # "structureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    .line 148
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 149
    throw v1

    .line 133
    .end local v4    # "v":Lca/uhn/hl7v2/Version;
    .end local v5    # "resource":Ljava/lang/String;
    .end local v6    # "in":Ljava/io/InputStream;
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setEventMapDirectory(Ljava/lang/String;)V
    .locals 0
    .param p1, "eventMapPrefix"    # Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lca/uhn/hl7v2/parser/AbstractModelClassFactory;->eventMapDirectory:Ljava/lang/String;

    .line 71
    return-void
.end method
