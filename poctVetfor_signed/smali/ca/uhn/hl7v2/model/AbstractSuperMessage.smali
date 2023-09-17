.class public abstract Lca/uhn/hl7v2/model/AbstractSuperMessage;
.super Lca/uhn/hl7v2/model/AbstractMessage;
.source "AbstractSuperMessage.java"

# interfaces
.implements Lca/uhn/hl7v2/model/SuperStructure;


# static fields
.field private static final ourLog:Lorg/slf4j/Logger;


# instance fields
.field private myChildNameToStructures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private myName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lca/uhn/hl7v2/model/AbstractSuperMessage;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/model/AbstractSuperMessage;->ourLog:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 1
    .param p1, "theFactory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 34
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/AbstractMessage;-><init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/model/AbstractSuperMessage;->myChildNameToStructures:Ljava/util/Map;

    .line 35
    return-void
.end method


# virtual methods
.method protected addSuperstructureApplication(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "theChild"    # Ljava/lang/String;
    .param p2, "theStructure"    # Ljava/lang/String;

    .line 38
    invoke-static {p1}, Lca/uhn/hl7v2/util/StringUtil;->validateNotEmpty(Ljava/lang/String;)V

    .line 39
    invoke-static {p2}, Lca/uhn/hl7v2/util/StringUtil;->validateNotEmpty(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractSuperMessage;->myChildNameToStructures:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractSuperMessage;->myChildNameToStructures:Ljava/util/Map;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractSuperMessage;->myChildNameToStructures:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 6

    .line 52
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractSuperMessage;->myName:Ljava/lang/String;

    invoke-static {v0}, Lca/uhn/hl7v2/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    const/4 v0, 0x0

    .line 55
    .local v0, "retVal":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lca/uhn/hl7v2/util/Terser;

    invoke-direct {v1, p0}, Lca/uhn/hl7v2/util/Terser;-><init>(Lca/uhn/hl7v2/model/Message;)V

    .line 56
    .local v1, "t":Lca/uhn/hl7v2/util/Terser;
    const-string v2, "/MSH-9-3"

    invoke-virtual {v1, v2}, Lca/uhn/hl7v2/util/Terser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 58
    invoke-static {v0}, Lca/uhn/hl7v2/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    const-string v2, "/MSH-9-1"

    invoke-virtual {v1, v2}, Lca/uhn/hl7v2/util/Terser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "msh91":Ljava/lang/String;
    const-string v3, "/MSH-9-2"

    invoke-virtual {v1, v3}, Lca/uhn/hl7v2/util/Terser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "msh92":Ljava/lang/String;
    invoke-static {v2}, Lca/uhn/hl7v2/util/StringUtil;->isNotBlank(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Lca/uhn/hl7v2/util/StringUtil;->isNotBlank(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 65
    .end local v1    # "t":Lca/uhn/hl7v2/util/Terser;
    .end local v2    # "msh91":Ljava/lang/String;
    .end local v3    # "msh92":Ljava/lang/String;
    goto :goto_0

    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Lca/uhn/hl7v2/HL7Exception;
    sget-object v2, Lca/uhn/hl7v2/model/AbstractSuperMessage;->ourLog:Lorg/slf4j/Logger;

    const-string v3, "Failed to retrieve MSH-9"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    .end local v1    # "e":Lca/uhn/hl7v2/HL7Exception;
    :cond_0
    :goto_0
    return-object v0

    .line 71
    .end local v0    # "retVal":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractSuperMessage;->myName:Ljava/lang/String;

    return-object v0
.end method

.method public getStructuresWhichChildAppliesTo(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .param p1, "theChildName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractSuperMessage;->myChildNameToStructures:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "theName"    # Ljava/lang/String;

    .line 85
    iput-object p1, p0, Lca/uhn/hl7v2/model/AbstractSuperMessage;->myName:Ljava/lang/String;

    .line 86
    return-void
.end method
