.class public Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;
.super Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;
.source "PrimitiveRuleBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder<",
        "Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;",
        "Lca/uhn/hl7v2/validation/PrimitiveTypeRule;",
        ">;"
    }
.end annotation


# instance fields
.field private types:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/List;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/validation/impl/RuleBinding<",
            "+",
            "Lca/uhn/hl7v2/validation/Rule<",
            "*>;>;>;",
            "Ljava/util/Set<",
            "Lca/uhn/hl7v2/Version;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 52
    .local p1, "rules":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/validation/impl/RuleBinding<+Lca/uhn/hl7v2/validation/Rule<*>;>;>;"
    .local p2, "versions":Ljava/util/Set;, "Ljava/util/Set<Lca/uhn/hl7v2/Version;>;"
    .local p3, "types":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;-><init>(Ljava/util/List;Ljava/util/Set;)V

    .line 53
    iput-object p3, p0, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;->types:Ljava/util/Set;

    .line 54
    return-void
.end method


# virtual methods
.method public allTrim()Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;
    .locals 1

    .line 119
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;->always(Z)Lca/uhn/hl7v2/validation/builder/Predicate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;->allTrim(Lca/uhn/hl7v2/validation/builder/Predicate;)Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;

    move-result-object v0

    return-object v0
.end method

.method public allTrim(Lca/uhn/hl7v2/validation/builder/Predicate;)Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;
    .locals 2
    .param p1, "predicate"    # Lca/uhn/hl7v2/validation/builder/Predicate;

    .line 131
    new-instance v0, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule;

    sget-object v1, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;->ALL:Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;

    invoke-direct {v0, p1, v1}, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule;-><init>(Lca/uhn/hl7v2/validation/builder/Predicate;Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;)V

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;->prepareRule(Lca/uhn/hl7v2/validation/Rule;)Lca/uhn/hl7v2/validation/Rule;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/validation/PrimitiveTypeRule;

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;->test(Lca/uhn/hl7v2/validation/Rule;)Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;

    return-object v0
.end method

.method protected getRuleBindings(Lca/uhn/hl7v2/validation/PrimitiveTypeRule;Ljava/lang/String;)Ljava/util/Collection;
    .locals 4
    .param p1, "rule"    # Lca/uhn/hl7v2/validation/PrimitiveTypeRule;
    .param p2, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/validation/PrimitiveTypeRule;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lca/uhn/hl7v2/validation/impl/RuleBinding<",
            "Lca/uhn/hl7v2/validation/PrimitiveTypeRule;",
            ">;>;"
        }
    .end annotation

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v0, "bindings":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/validation/impl/RuleBinding<Lca/uhn/hl7v2/validation/PrimitiveTypeRule;>;>;"
    iget-object v1, p0, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;->types:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 141
    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;->activate(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    return-object v1

    .line 138
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 139
    .local v2, "type":Ljava/lang/String;
    new-instance v3, Lca/uhn/hl7v2/validation/impl/PrimitiveTypeRuleBinding;

    invoke-direct {v3, p2, v2, p1}, Lca/uhn/hl7v2/validation/impl/PrimitiveTypeRuleBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lca/uhn/hl7v2/validation/PrimitiveTypeRule;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    .end local v2    # "type":Ljava/lang/String;
    goto :goto_0
.end method

.method protected bridge synthetic getRuleBindings(Lca/uhn/hl7v2/validation/Rule;Ljava/lang/String;)Ljava/util/Collection;
    .locals 0

    .line 1
    check-cast p1, Lca/uhn/hl7v2/validation/PrimitiveTypeRule;

    invoke-virtual {p0, p1, p2}, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;->getRuleBindings(Lca/uhn/hl7v2/validation/PrimitiveTypeRule;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method getTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;->types:Ljava/util/Set;

    return-object v0
.end method

.method public is(Lca/uhn/hl7v2/validation/builder/Predicate;)Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;
    .locals 1
    .param p1, "predicate"    # Lca/uhn/hl7v2/validation/builder/Predicate;

    .line 65
    new-instance v0, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule;-><init>(Lca/uhn/hl7v2/validation/builder/Predicate;)V

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;->prepareRule(Lca/uhn/hl7v2/validation/Rule;)Lca/uhn/hl7v2/validation/Rule;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/validation/PrimitiveTypeRule;

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;->test(Lca/uhn/hl7v2/validation/Rule;)Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;

    return-object v0
.end method

.method public leftTrim()Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;
    .locals 1

    .line 87
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;->always(Z)Lca/uhn/hl7v2/validation/builder/Predicate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;->leftTrim(Lca/uhn/hl7v2/validation/builder/Predicate;)Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;

    move-result-object v0

    return-object v0
.end method

.method public leftTrim(Lca/uhn/hl7v2/validation/builder/Predicate;)Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;
    .locals 2
    .param p1, "predicate"    # Lca/uhn/hl7v2/validation/builder/Predicate;

    .line 77
    new-instance v0, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule;

    sget-object v1, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;->LEFT:Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;

    invoke-direct {v0, p1, v1}, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule;-><init>(Lca/uhn/hl7v2/validation/builder/Predicate;Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;)V

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;->prepareRule(Lca/uhn/hl7v2/validation/Rule;)Lca/uhn/hl7v2/validation/Rule;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/validation/PrimitiveTypeRule;

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;->test(Lca/uhn/hl7v2/validation/Rule;)Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;

    return-object v0
.end method

.method public rightTrim()Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;
    .locals 1

    .line 97
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;->always(Z)Lca/uhn/hl7v2/validation/builder/Predicate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;->rightTrim(Lca/uhn/hl7v2/validation/builder/Predicate;)Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;

    move-result-object v0

    return-object v0
.end method

.method public rightTrim(Lca/uhn/hl7v2/validation/builder/Predicate;)Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;
    .locals 2
    .param p1, "predicate"    # Lca/uhn/hl7v2/validation/builder/Predicate;

    .line 109
    new-instance v0, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule;

    sget-object v1, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;->RIGHT:Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;

    invoke-direct {v0, p1, v1}, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule;-><init>(Lca/uhn/hl7v2/validation/builder/Predicate;Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;)V

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;->prepareRule(Lca/uhn/hl7v2/validation/Rule;)Lca/uhn/hl7v2/validation/Rule;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/validation/PrimitiveTypeRule;

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;->test(Lca/uhn/hl7v2/validation/Rule;)Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;

    return-object v0
.end method
