.class public Lca/uhn/hl7v2/validation/impl/ValidationContextImpl;
.super Ljava/lang/Object;
.source "ValidationContextImpl.java"

# interfaces
.implements Lca/uhn/hl7v2/validation/ValidationContext;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lca/uhn/hl7v2/validation/impl/ValidationContextImpl$RuleCache;
    }
.end annotation


# instance fields
.field protected encodingRuleCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lca/uhn/hl7v2/validation/EncodingRule;",
            ">;>;"
        }
    .end annotation
.end field

.field protected messageRuleCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lca/uhn/hl7v2/validation/MessageRule;",
            ">;>;"
        }
    .end annotation
.end field

.field private myEncodingRuleBindings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/validation/impl/RuleBinding<",
            "Lca/uhn/hl7v2/validation/EncodingRule;",
            ">;>;"
        }
    .end annotation
.end field

.field private myMessageRuleBindings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/validation/impl/RuleBinding<",
            "Lca/uhn/hl7v2/validation/MessageRule;",
            ">;>;"
        }
    .end annotation
.end field

.field private myPrimitiveRuleBindings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/validation/impl/RuleBinding<",
            "Lca/uhn/hl7v2/validation/PrimitiveTypeRule;",
            ">;>;"
        }
    .end annotation
.end field

.field protected primitiveRuleCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lca/uhn/hl7v2/validation/PrimitiveTypeRule;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/validation/impl/ValidationContextImpl;->myPrimitiveRuleBindings:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/validation/impl/ValidationContextImpl;->myMessageRuleBindings:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/validation/impl/ValidationContextImpl;->myEncodingRuleBindings:Ljava/util/List;

    .line 60
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/impl/ValidationContextImpl;->initCaches()V

    .line 61
    return-void
.end method

.method constructor <init>(Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;)V
    .locals 4
    .param p1, "builder"    # Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;

    .line 64
    invoke-direct {p0}, Lca/uhn/hl7v2/validation/impl/ValidationContextImpl;-><init>()V

    .line 65
    invoke-virtual {p1}, Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;->initialize()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 73
    return-void

    .line 65
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lca/uhn/hl7v2/validation/impl/RuleBinding;

    .line 66
    .local v1, "ruleBinding":Lca/uhn/hl7v2/validation/impl/RuleBinding;, "Lca/uhn/hl7v2/validation/impl/RuleBinding<+Lca/uhn/hl7v2/validation/Rule<*>;>;"
    instance-of v2, v1, Lca/uhn/hl7v2/validation/impl/MessageRuleBinding;

    if-eqz v2, :cond_2

    .line 67
    iget-object v2, p0, Lca/uhn/hl7v2/validation/impl/ValidationContextImpl;->myMessageRuleBindings:Ljava/util/List;

    move-object v3, v1

    check-cast v3, Lca/uhn/hl7v2/validation/impl/MessageRuleBinding;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    :cond_2
    instance-of v2, v1, Lca/uhn/hl7v2/validation/impl/EncodingRuleBinding;

    if-eqz v2, :cond_3

    .line 69
    iget-object v2, p0, Lca/uhn/hl7v2/validation/impl/ValidationContextImpl;->myEncodingRuleBindings:Ljava/util/List;

    move-object v3, v1

    check-cast v3, Lca/uhn/hl7v2/validation/impl/EncodingRuleBinding;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    :cond_3
    instance-of v2, v1, Lca/uhn/hl7v2/validation/impl/PrimitiveTypeRuleBinding;

    if-eqz v2, :cond_0

    .line 71
    iget-object v2, p0, Lca/uhn/hl7v2/validation/impl/ValidationContextImpl;->myPrimitiveRuleBindings:Ljava/util/List;

    move-object v3, v1

    check-cast v3, Lca/uhn/hl7v2/validation/impl/PrimitiveTypeRuleBinding;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    .end local v1    # "ruleBinding":Lca/uhn/hl7v2/validation/impl/RuleBinding;, "Lca/uhn/hl7v2/validation/impl/RuleBinding<+Lca/uhn/hl7v2/validation/Rule<*>;>;"
    goto :goto_0
.end method

.method private applies(Lca/uhn/hl7v2/validation/impl/RuleBinding;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "scope"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/validation/impl/RuleBinding<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 161
    .local p1, "binding":Lca/uhn/hl7v2/validation/impl/RuleBinding;, "Lca/uhn/hl7v2/validation/impl/RuleBinding<*>;"
    invoke-virtual {p1}, Lca/uhn/hl7v2/validation/impl/RuleBinding;->getActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lca/uhn/hl7v2/validation/impl/RuleBinding;->appliesToVersion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p3}, Lca/uhn/hl7v2/validation/impl/RuleBinding;->appliesToScope(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getRules(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Collection;
    .locals 4
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "scope"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lca/uhn/hl7v2/validation/Rule<",
            "*>;>(",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/validation/impl/RuleBinding<",
            "TT;>;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 152
    .local p1, "bindings":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/validation/impl/RuleBinding<TT;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 153
    .local v0, "active":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 157
    return-object v0

    .line 153
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lca/uhn/hl7v2/validation/impl/RuleBinding;

    .line 154
    .local v2, "binding":Lca/uhn/hl7v2/validation/impl/RuleBinding;, "Lca/uhn/hl7v2/validation/impl/RuleBinding<TT;>;"
    invoke-direct {p0, v2, p2, p3}, Lca/uhn/hl7v2/validation/impl/ValidationContextImpl;->applies(Lca/uhn/hl7v2/validation/impl/RuleBinding;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 155
    invoke-virtual {v2}, Lca/uhn/hl7v2/validation/impl/RuleBinding;->getRule()Lca/uhn/hl7v2/validation/Rule;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    .end local v2    # "binding":Lca/uhn/hl7v2/validation/impl/RuleBinding;, "Lca/uhn/hl7v2/validation/impl/RuleBinding<TT;>;"
    goto :goto_0
.end method

.method protected static newRuleCache(I)Ljava/util/Map;
    .locals 2
    .param p0, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lca/uhn/hl7v2/validation/Rule<",
            "*>;>(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "TT;>;>;"
        }
    .end annotation

    .line 187
    new-instance v0, Lca/uhn/hl7v2/validation/impl/ValidationContextImpl$RuleCache;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lca/uhn/hl7v2/validation/impl/ValidationContextImpl$RuleCache;-><init>(ILca/uhn/hl7v2/validation/impl/ValidationContextImpl$RuleCache;)V

    .line 188
    .local v0, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<TT;>;>;"
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getEncodingRuleBindings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/validation/impl/RuleBinding<",
            "Lca/uhn/hl7v2/validation/EncodingRule;",
            ">;>;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lca/uhn/hl7v2/validation/impl/ValidationContextImpl;->myEncodingRuleBindings:Ljava/util/List;

    return-object v0
.end method

.method public getEncodingRules(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Collection;
    .locals 4
    .param p1, "theVersion"    # Ljava/lang/String;
    .param p2, "theEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lca/uhn/hl7v2/validation/EncodingRule;",
            ">;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lca/uhn/hl7v2/validation/impl/ValidationContextImpl;->encodingRuleCache:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 137
    .local v0, "rules":Ljava/util/Collection;, "Ljava/util/Collection<Lca/uhn/hl7v2/validation/EncodingRule;>;"
    if-nez v0, :cond_0

    .line 138
    iget-object v1, p0, Lca/uhn/hl7v2/validation/impl/ValidationContextImpl;->myEncodingRuleBindings:Ljava/util/List;

    invoke-direct {p0, v1, p1, p2}, Lca/uhn/hl7v2/validation/impl/ValidationContextImpl;->getRules(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lca/uhn/hl7v2/validation/impl/ValidationContextImpl;->encodingRuleCache:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_0
    return-object v0
.end method

.method public getMessageRuleBindings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/validation/impl/RuleBinding<",
            "Lca/uhn/hl7v2/validation/MessageRule;",
            ">;>;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lca/uhn/hl7v2/validation/impl/ValidationContextImpl;->myMessageRuleBindings:Ljava/util/List;

    return-object v0
.end method

.method public getMessageRules(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Collection;
    .locals 4
    .param p1, "theVersion"    # Ljava/lang/String;
    .param p2, "theMessageType"    # Ljava/lang/String;
    .param p3, "theTriggerEvent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lca/uhn/hl7v2/validation/MessageRule;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lca/uhn/hl7v2/validation/impl/ValidationContextImpl;->messageRuleCache:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 117
    .local v0, "rules":Ljava/util/Collection;, "Ljava/util/Collection<Lca/uhn/hl7v2/validation/MessageRule;>;"
    if-nez v0, :cond_0

    .line 118
    iget-object v1, p0, Lca/uhn/hl7v2/validation/impl/ValidationContextImpl;->myMessageRuleBindings:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "^"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, p1, v2}, Lca/uhn/hl7v2/validation/impl/ValidationContextImpl;->getRules(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lca/uhn/hl7v2/validation/impl/ValidationContextImpl;->messageRuleCache:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_0
    return-object v0
.end method

.method public getPrimitiveRuleBindings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/validation/impl/RuleBinding<",
            "Lca/uhn/hl7v2/validation/PrimitiveTypeRule;",
            ">;>;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lca/uhn/hl7v2/validation/impl/ValidationContextImpl;->myPrimitiveRuleBindings:Ljava/util/List;

    return-object v0
.end method

.method public getPrimitiveRules(Ljava/lang/String;Ljava/lang/String;Lca/uhn/hl7v2/model/Primitive;)Ljava/util/Collection;
    .locals 4
    .param p1, "theVersion"    # Ljava/lang/String;
    .param p2, "theTypeName"    # Ljava/lang/String;
    .param p3, "theType"    # Lca/uhn/hl7v2/model/Primitive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lca/uhn/hl7v2/model/Primitive;",
            ")",
            "Ljava/util/Collection<",
            "Lca/uhn/hl7v2/validation/PrimitiveTypeRule;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lca/uhn/hl7v2/validation/impl/ValidationContextImpl;->primitiveRuleCache:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 96
    .local v0, "rules":Ljava/util/Collection;, "Ljava/util/Collection<Lca/uhn/hl7v2/validation/PrimitiveTypeRule;>;"
    if-nez v0, :cond_0

    .line 97
    iget-object v1, p0, Lca/uhn/hl7v2/validation/impl/ValidationContextImpl;->myPrimitiveRuleBindings:Ljava/util/List;

    invoke-direct {p0, v1, p1, p2}, Lca/uhn/hl7v2/validation/impl/ValidationContextImpl;->getRules(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lca/uhn/hl7v2/validation/impl/ValidationContextImpl;->primitiveRuleCache:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_0
    return-object v0
.end method

.method protected initCaches()V
    .locals 2

    .line 85
    const/16 v0, 0x64

    invoke-static {v0}, Lca/uhn/hl7v2/validation/impl/ValidationContextImpl;->newRuleCache(I)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lca/uhn/hl7v2/validation/impl/ValidationContextImpl;->primitiveRuleCache:Ljava/util/Map;

    .line 86
    invoke-static {v0}, Lca/uhn/hl7v2/validation/impl/ValidationContextImpl;->newRuleCache(I)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/validation/impl/ValidationContextImpl;->messageRuleCache:Ljava/util/Map;

    .line 87
    const/16 v0, 0xa

    invoke-static {v0}, Lca/uhn/hl7v2/validation/impl/ValidationContextImpl;->newRuleCache(I)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/validation/impl/ValidationContextImpl;->encodingRuleCache:Ljava/util/Map;

    .line 88
    return-void
.end method
