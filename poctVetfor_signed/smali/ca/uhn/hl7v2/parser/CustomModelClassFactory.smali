.class public Lca/uhn/hl7v2/parser/CustomModelClassFactory;
.super Lca/uhn/hl7v2/parser/AbstractModelClassFactory;
.source "CustomModelClassFactory.java"


# static fields
.field private static LOG:Lorg/slf4j/Logger; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private cache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private customModelClasses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final delegate:Lca/uhn/hl7v2/parser/ModelClassFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const-class v0, Lca/uhn/hl7v2/parser/CustomModelClassFactory;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/parser/CustomModelClassFactory;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lca/uhn/hl7v2/parser/CustomModelClassFactory;-><init>(Ljava/util/Map;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/parser/ModelClassFactory;Ljava/util/Map;)V
    .locals 1
    .param p1, "defaultFactory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/parser/ModelClassFactory;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 117
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-direct {p0}, Lca/uhn/hl7v2/parser/AbstractModelClassFactory;-><init>()V

    .line 62
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/parser/CustomModelClassFactory;->cache:Ljava/util/concurrent/ConcurrentMap;

    .line 118
    iput-object p1, p0, Lca/uhn/hl7v2/parser/CustomModelClassFactory;->delegate:Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 119
    iput-object p2, p0, Lca/uhn/hl7v2/parser/CustomModelClassFactory;->customModelClasses:Ljava/util/Map;

    .line 120
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lca/uhn/hl7v2/parser/CustomModelClassFactory;-><init>(Ljava/util/Map;)V

    .line 86
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 89
    :cond_0
    invoke-static {}, Lca/uhn/hl7v2/Version;->values()[Lca/uhn/hl7v2/Version;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-lt v3, v2, :cond_1

    .line 92
    return-void

    .line 89
    :cond_1
    aget-object v4, v0, v3

    .line 90
    .local v4, "v":Lca/uhn/hl7v2/Version;
    invoke-virtual {v4}, Lca/uhn/hl7v2/Version;->getVersion()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lca/uhn/hl7v2/Version;->getPackageVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-direct {p0, v5, v6}, Lca/uhn/hl7v2/parser/CustomModelClassFactory;->addModel(Ljava/lang/String;[Ljava/lang/String;)V

    .line 89
    .end local v4    # "v":Lca/uhn/hl7v2/Version;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 109
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    new-instance v0, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;

    invoke-direct {v0}, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;-><init>()V

    invoke-direct {p0, v0, p1}, Lca/uhn/hl7v2/parser/CustomModelClassFactory;-><init>(Lca/uhn/hl7v2/parser/ModelClassFactory;Ljava/util/Map;)V

    .line 110
    return-void
.end method

.method private addModel(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "newPackageNames"    # [Ljava/lang/String;

    .line 241
    iget-object v0, p0, Lca/uhn/hl7v2/parser/CustomModelClassFactory;->customModelClasses:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lca/uhn/hl7v2/parser/CustomModelClassFactory;->customModelClasses:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 244
    .local v0, "existingPackageNames":[Ljava/lang/String;
    iget-object v1, p0, Lca/uhn/hl7v2/parser/CustomModelClassFactory;->customModelClasses:Ljava/util/Map;

    invoke-static {v0, p2}, Lca/uhn/hl7v2/util/StringUtil;->concatenate([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .end local v0    # "existingPackageNames":[Ljava/lang/String;
    goto :goto_0

    .line 246
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/parser/CustomModelClassFactory;->customModelClasses:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    :goto_0
    return-void
.end method


# virtual methods
.method public addModels(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 232
    .local p1, "addedModelClasses":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/parser/CustomModelClassFactory;->customModelClasses:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/parser/CustomModelClassFactory;->customModelClasses:Ljava/util/Map;

    .line 235
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 238
    return-void

    .line 235
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 236
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lca/uhn/hl7v2/parser/CustomModelClassFactory;->addModel(Ljava/lang/String;[Ljava/lang/String;)V

    .line 236
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    goto :goto_0
.end method

.method protected findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 9
    .param p1, "subpackage"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, "classLoaded":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v1, p0, Lca/uhn/hl7v2/parser/CustomModelClassFactory;->customModelClasses:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 193
    iget-object v1, p0, Lca/uhn/hl7v2/parser/CustomModelClassFactory;->customModelClasses:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 194
    iget-object v1, p0, Lca/uhn/hl7v2/parser/CustomModelClassFactory;->customModelClasses:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    goto :goto_2

    :cond_0
    aget-object v4, v1, v3

    .line 195
    .local v4, "next":Ljava/lang/String;
    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 196
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 198
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 200
    .local v5, "fullyQualifiedName":Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    move-object v0, v6

    .line 201
    sget-object v6, Lca/uhn/hl7v2/parser/CustomModelClassFactory;->LOG:Lorg/slf4j/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Found "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " in custom HL7 model"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    goto :goto_1

    :catch_0
    move-exception v6

    .line 194
    .end local v4    # "next":Ljava/lang/String;
    .end local v5    # "fullyQualifiedName":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 208
    :cond_2
    :goto_2
    return-object v0
.end method

.method public getCustomModelClasses()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lca/uhn/hl7v2/parser/CustomModelClassFactory;->customModelClasses:Ljava/util/Map;

    return-object v0
.end method

.method public getGroupClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lca/uhn/hl7v2/model/Group;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "group"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lca/uhn/hl7v2/parser/CustomModelClassFactory;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 147
    .local v1, "retVal":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Group;>;"
    if-eqz v1, :cond_0

    return-object v1

    .line 148
    :cond_0
    const-string v2, "group"

    invoke-virtual {p0, v2, p1, p2}, Lca/uhn/hl7v2/parser/CustomModelClassFactory;->findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 149
    if-nez v1, :cond_1

    .line 150
    iget-object v2, p0, Lca/uhn/hl7v2/parser/CustomModelClassFactory;->delegate:Lca/uhn/hl7v2/parser/ModelClassFactory;

    invoke-interface {v2, p1, p2}, Lca/uhn/hl7v2/parser/ModelClassFactory;->getGroupClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 152
    :cond_1
    if-eqz v1, :cond_2

    iget-object v2, p0, Lca/uhn/hl7v2/parser/CustomModelClassFactory;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_2
    return-object v1
.end method

.method public getMessageClass(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "isExplicit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class<",
            "+",
            "Lca/uhn/hl7v2/model/Message;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 126
    if-nez p3, :cond_0

    .line 127
    invoke-static {p2}, Lca/uhn/hl7v2/Version;->versionOf(Ljava/lang/String;)Lca/uhn/hl7v2/Version;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lca/uhn/hl7v2/parser/CustomModelClassFactory;->getMessageStructureForEvent(Ljava/lang/String;Lca/uhn/hl7v2/Version;)Ljava/lang/String;

    move-result-object p1

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "message"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lca/uhn/hl7v2/parser/CustomModelClassFactory;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 131
    .local v1, "retVal":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Message;>;"
    if-eqz v1, :cond_1

    return-object v1

    .line 133
    :cond_1
    const-string v2, "message"

    invoke-virtual {p0, v2, p1, p2}, Lca/uhn/hl7v2/parser/CustomModelClassFactory;->findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 134
    if-nez v1, :cond_2

    .line 135
    iget-object v2, p0, Lca/uhn/hl7v2/parser/CustomModelClassFactory;->delegate:Lca/uhn/hl7v2/parser/ModelClassFactory;

    invoke-interface {v2, p1, p2, p3}, Lca/uhn/hl7v2/parser/ModelClassFactory;->getMessageClass(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v1

    .line 137
    :cond_2
    if-eqz v1, :cond_3

    iget-object v2, p0, Lca/uhn/hl7v2/parser/CustomModelClassFactory;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_3
    return-object v1
.end method

.method public getMessageClassInASpecificPackage(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "theName"    # Ljava/lang/String;
    .param p2, "theVersion"    # Ljava/lang/String;
    .param p3, "theIsExplicit"    # Z
    .param p4, "thePackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lca/uhn/hl7v2/model/Message;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lca/uhn/hl7v2/parser/CustomModelClassFactory;->delegate:Lca/uhn/hl7v2/parser/ModelClassFactory;

    invoke-interface {v0, p1, p2, p3, p4}, Lca/uhn/hl7v2/parser/ModelClassFactory;->getMessageClassInASpecificPackage(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getMessageStructureForEvent(Ljava/lang/String;Lca/uhn/hl7v2/Version;)Ljava/lang/String;
    .locals 2
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "version"    # Lca/uhn/hl7v2/Version;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 260
    invoke-super {p0, p1, p2}, Lca/uhn/hl7v2/parser/AbstractModelClassFactory;->getMessageStructureForEvent(Ljava/lang/String;Lca/uhn/hl7v2/Version;)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "structure":Ljava/lang/String;
    if-eqz v0, :cond_0

    return-object v0

    .line 262
    :cond_0
    iget-object v1, p0, Lca/uhn/hl7v2/parser/CustomModelClassFactory;->delegate:Lca/uhn/hl7v2/parser/ModelClassFactory;

    invoke-interface {v1, p1, p2}, Lca/uhn/hl7v2/parser/ModelClassFactory;->getMessageStructureForEvent(Ljava/lang/String;Lca/uhn/hl7v2/Version;)Ljava/lang/String;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    return-object v1
.end method

.method public getSegmentClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lca/uhn/hl7v2/model/Segment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "segment"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lca/uhn/hl7v2/parser/CustomModelClassFactory;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 162
    .local v1, "retVal":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Segment;>;"
    if-eqz v1, :cond_0

    return-object v1

    .line 163
    :cond_0
    const-string v2, "segment"

    invoke-virtual {p0, v2, p1, p2}, Lca/uhn/hl7v2/parser/CustomModelClassFactory;->findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 164
    if-nez v1, :cond_1

    .line 165
    iget-object v2, p0, Lca/uhn/hl7v2/parser/CustomModelClassFactory;->delegate:Lca/uhn/hl7v2/parser/ModelClassFactory;

    invoke-interface {v2, p1, p2}, Lca/uhn/hl7v2/parser/ModelClassFactory;->getSegmentClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 167
    :cond_1
    if-eqz v1, :cond_2

    iget-object v2, p0, Lca/uhn/hl7v2/parser/CustomModelClassFactory;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_2
    return-object v1
.end method

.method public getTypeClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lca/uhn/hl7v2/model/Type;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "datatype"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lca/uhn/hl7v2/parser/CustomModelClassFactory;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 177
    .local v1, "retVal":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Type;>;"
    if-eqz v1, :cond_0

    return-object v1

    .line 178
    :cond_0
    const-string v2, "datatype"

    invoke-virtual {p0, v2, p1, p2}, Lca/uhn/hl7v2/parser/CustomModelClassFactory;->findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 179
    if-nez v1, :cond_1

    .line 180
    iget-object v2, p0, Lca/uhn/hl7v2/parser/CustomModelClassFactory;->delegate:Lca/uhn/hl7v2/parser/ModelClassFactory;

    invoke-interface {v2, p1, p2}, Lca/uhn/hl7v2/parser/ModelClassFactory;->getTypeClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 182
    :cond_1
    if-eqz v1, :cond_2

    iget-object v2, p0, Lca/uhn/hl7v2/parser/CustomModelClassFactory;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_2
    return-object v1
.end method
