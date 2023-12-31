.class public Lorg/apache/log4j/or/RendererMap;
.super Ljava/lang/Object;
.source "RendererMap.java"


# static fields
.field static synthetic class$org$apache$log4j$or$ObjectRenderer:Ljava/lang/Class;

.field static defaultRenderer:Lorg/apache/log4j/or/ObjectRenderer;


# instance fields
.field map:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lorg/apache/log4j/or/DefaultRenderer;

    invoke-direct {v0}, Lorg/apache/log4j/or/DefaultRenderer;-><init>()V

    sput-object v0, Lorg/apache/log4j/or/RendererMap;->defaultRenderer:Lorg/apache/log4j/or/ObjectRenderer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/or/RendererMap;->map:Ljava/util/Hashtable;

    .line 40
    return-void
.end method

.method public static addRenderer(Lorg/apache/log4j/spi/RendererSupport;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "repository"    # Lorg/apache/log4j/spi/RendererSupport;
    .param p1, "renderedClassName"    # Ljava/lang/String;
    .param p2, "renderingClassName"    # Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Rendering class: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "], Rendered class: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 51
    sget-object v0, Lorg/apache/log4j/or/RendererMap;->class$org$apache$log4j$or$ObjectRenderer:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.or.ObjectRenderer"

    invoke-static {v0}, Lorg/apache/log4j/or/RendererMap;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/or/RendererMap;->class$org$apache$log4j$or$ObjectRenderer:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/log4j/or/RendererMap;->class$org$apache$log4j$or$ObjectRenderer:Ljava/lang/Class;

    :goto_0
    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lorg/apache/log4j/helpers/OptionConverter;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/or/ObjectRenderer;

    .line 55
    .local v0, "renderer":Lorg/apache/log4j/or/ObjectRenderer;
    if-nez v0, :cond_1

    .line 56
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not instantiate renderer ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 57
    return-void

    .line 60
    :cond_1
    :try_start_0
    invoke-static {p1}, Lorg/apache/log4j/helpers/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 61
    .local v1, "renderedClass":Ljava/lang/Class;
    invoke-interface {p0, v1, v0}, Lorg/apache/log4j/spi/RendererSupport;->setRenderer(Ljava/lang/Class;Lorg/apache/log4j/or/ObjectRenderer;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v1    # "renderedClass":Ljava/lang/Class;
    goto :goto_1

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not find class ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 53
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 53
    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 188
    iget-object v0, p0, Lorg/apache/log4j/or/RendererMap;->map:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 189
    return-void
.end method

.method public findAndRender(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 77
    if-nez p1, :cond_0

    .line 78
    const/4 v0, 0x0

    return-object v0

    .line 80
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/or/RendererMap;->get(Ljava/lang/Class;)Lorg/apache/log4j/or/ObjectRenderer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/log4j/or/ObjectRenderer;->doRender(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Class;)Lorg/apache/log4j/or/ObjectRenderer;
    .locals 3
    .param p1, "clazz"    # Ljava/lang/Class;

    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, "r":Lorg/apache/log4j/or/ObjectRenderer;
    move-object v1, v0

    move-object v0, p1

    .line 149
    .local v0, "c":Ljava/lang/Class;
    .local v1, "r":Lorg/apache/log4j/or/ObjectRenderer;
    :goto_0
    if-eqz v0, :cond_2

    .line 151
    iget-object v2, p0, Lorg/apache/log4j/or/RendererMap;->map:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lorg/apache/log4j/or/ObjectRenderer;

    .line 152
    if-eqz v1, :cond_0

    .line 153
    return-object v1

    .line 155
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/log4j/or/RendererMap;->searchInterfaces(Ljava/lang/Class;)Lorg/apache/log4j/or/ObjectRenderer;

    move-result-object v1

    .line 156
    if-eqz v1, :cond_1

    .line 157
    return-object v1

    .line 149
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 159
    .end local v0    # "c":Ljava/lang/Class;
    :cond_2
    sget-object v0, Lorg/apache/log4j/or/RendererMap;->defaultRenderer:Lorg/apache/log4j/or/ObjectRenderer;

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Lorg/apache/log4j/or/ObjectRenderer;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 89
    if-nez p1, :cond_0

    .line 90
    const/4 v0, 0x0

    return-object v0

    .line 92
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/or/RendererMap;->get(Ljava/lang/Class;)Lorg/apache/log4j/or/ObjectRenderer;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultRenderer()Lorg/apache/log4j/or/ObjectRenderer;
    .locals 1

    .line 182
    sget-object v0, Lorg/apache/log4j/or/RendererMap;->defaultRenderer:Lorg/apache/log4j/or/ObjectRenderer;

    return-object v0
.end method

.method public put(Ljava/lang/Class;Lorg/apache/log4j/or/ObjectRenderer;)V
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "or"    # Lorg/apache/log4j/or/ObjectRenderer;

    .line 196
    iget-object v0, p0, Lorg/apache/log4j/or/RendererMap;->map:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    return-void
.end method

.method searchInterfaces(Ljava/lang/Class;)Lorg/apache/log4j/or/ObjectRenderer;
    .locals 4
    .param p1, "c"    # Ljava/lang/Class;

    .line 165
    iget-object v0, p0, Lorg/apache/log4j/or/RendererMap;->map:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/or/ObjectRenderer;

    .line 166
    .local v0, "r":Lorg/apache/log4j/or/ObjectRenderer;
    if-eqz v0, :cond_0

    .line 167
    return-object v0

    .line 169
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 170
    .local v1, "ia":[Ljava/lang/Class;
    const/4 v2, 0x0

    .line 170
    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 171
    aget-object v3, v1, v2

    invoke-virtual {p0, v3}, Lorg/apache/log4j/or/RendererMap;->searchInterfaces(Ljava/lang/Class;)Lorg/apache/log4j/or/ObjectRenderer;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_1

    .line 173
    return-object v0

    .line 170
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    .end local v1    # "ia":[Ljava/lang/Class;
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method
