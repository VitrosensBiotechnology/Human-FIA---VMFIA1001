.class public Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;
.super Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;
.source "MessageRuleBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder<",
        "Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;",
        "Lca/uhn/hl7v2/validation/MessageRule;",
        ">;"
    }
.end annotation


# instance fields
.field private messageType:Ljava/lang/String;

.field private triggerEvents:[Ljava/lang/String;


# direct methods
.method protected varargs constructor <init>(Ljava/util/List;Ljava/util/Set;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p3, "messageType"    # Ljava/lang/String;
    .param p4, "triggerEvents"    # [Ljava/lang/String;
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
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 52
    .local p1, "rules":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/validation/impl/RuleBinding<+Lca/uhn/hl7v2/validation/Rule<*>;>;>;"
    .local p2, "versions":Ljava/util/Set;, "Ljava/util/Set<Lca/uhn/hl7v2/Version;>;"
    invoke-direct {p0, p1, p2}, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;-><init>(Ljava/util/List;Ljava/util/Set;)V

    .line 53
    iput-object p3, p0, Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;->messageType:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;->triggerEvents:[Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public choiceElementsRespected()Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;
    .locals 1

    .line 111
    sget-object v0, Lca/uhn/hl7v2/validation/builder/support/ChoiceElementsRespectedRule;->CHOICE_ELEMENTS_RESPECTED:Lca/uhn/hl7v2/validation/MessageRule;

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;->prepareRule(Lca/uhn/hl7v2/validation/Rule;)Lca/uhn/hl7v2/validation/Rule;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/validation/MessageRule;

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;->test(Lca/uhn/hl7v2/validation/Rule;)Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;

    return-object v0
.end method

.method public conformance()Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;
    .locals 1

    .line 142
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;->conformance(Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;

    move-result-object v0

    return-object v0
.end method

.method public conformance(Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;
    .locals 1
    .param p1, "profileId"    # Ljava/lang/String;

    .line 153
    new-instance v0, Lca/uhn/hl7v2/validation/impl/ConformanceProfileRule;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/validation/impl/ConformanceProfileRule;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;->prepareRule(Lca/uhn/hl7v2/validation/Rule;)Lca/uhn/hl7v2/validation/Rule;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/validation/MessageRule;

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;->test(Lca/uhn/hl7v2/validation/Rule;)Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;

    return-object v0
.end method

.method getMessageType()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;->messageType:Ljava/lang/String;

    return-object v0
.end method

.method protected getRuleBindings(Lca/uhn/hl7v2/validation/MessageRule;Ljava/lang/String;)Ljava/util/Collection;
    .locals 7
    .param p1, "rule"    # Lca/uhn/hl7v2/validation/MessageRule;
    .param p2, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/validation/MessageRule;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lca/uhn/hl7v2/validation/impl/RuleBinding<",
            "Lca/uhn/hl7v2/validation/MessageRule;",
            ">;>;"
        }
    .end annotation

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v0, "bindings":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/validation/impl/RuleBinding<Lca/uhn/hl7v2/validation/MessageRule;>;>;"
    iget-object v1, p0, Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;->triggerEvents:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-lt v2, v3, :cond_0

    .line 173
    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;->activate(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    return-object v1

    .line 169
    :cond_0
    aget-object v4, v1, v2

    .line 170
    .local v4, "triggerEvent":Ljava/lang/String;
    new-instance v5, Lca/uhn/hl7v2/validation/impl/MessageRuleBinding;

    iget-object v6, p0, Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;->messageType:Ljava/lang/String;

    .line 171
    invoke-direct {v5, p2, v6, v4, p1}, Lca/uhn/hl7v2/validation/impl/MessageRuleBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lca/uhn/hl7v2/validation/MessageRule;)V

    .line 170
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    .end local v4    # "triggerEvent":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic getRuleBindings(Lca/uhn/hl7v2/validation/Rule;Ljava/lang/String;)Ljava/util/Collection;
    .locals 0

    .line 1
    check-cast p1, Lca/uhn/hl7v2/validation/MessageRule;

    invoke-virtual {p0, p1, p2}, Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;->getRuleBindings(Lca/uhn/hl7v2/validation/MessageRule;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method getTriggerEvents()[Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;->triggerEvents:[Ljava/lang/String;

    return-object v0
.end method

.method public inspect(Lca/uhn/hl7v2/model/MessageVisitorFactory;)Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/model/MessageVisitorFactory<",
            "+",
            "Lca/uhn/hl7v2/validation/builder/support/ValidatingMessageVisitor;",
            ">;)",
            "Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;"
        }
    .end annotation

    .line 79
    .local p1, "visitorFactory":Lca/uhn/hl7v2/model/MessageVisitorFactory;, "Lca/uhn/hl7v2/model/MessageVisitorFactory<+Lca/uhn/hl7v2/validation/builder/support/ValidatingMessageVisitor;>;"
    new-instance v0, Lca/uhn/hl7v2/validation/builder/support/VisitorMessageRule;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/validation/builder/support/VisitorMessageRule;-><init>(Lca/uhn/hl7v2/model/MessageVisitorFactory;)V

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;->prepareRule(Lca/uhn/hl7v2/validation/Rule;)Lca/uhn/hl7v2/validation/Rule;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/validation/MessageRule;

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;->test(Lca/uhn/hl7v2/validation/Rule;)Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;

    return-object v0
.end method

.method public onlyAllowableSegmentsInSuperStructure()Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;
    .locals 1

    .line 100
    sget-object v0, Lca/uhn/hl7v2/validation/builder/support/OnlyAllowableSegmentsInSuperstructureRule;->ONLY_ALLOWABLE_SEGMENTS:Lca/uhn/hl7v2/validation/MessageRule;

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;->prepareRule(Lca/uhn/hl7v2/validation/Rule;)Lca/uhn/hl7v2/validation/Rule;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/validation/MessageRule;

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;->test(Lca/uhn/hl7v2/validation/Rule;)Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;

    return-object v0
.end method

.method public onlyKnownSegments()Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;
    .locals 1

    .line 89
    sget-object v0, Lca/uhn/hl7v2/validation/builder/support/OnlyKnownSegmentsRule;->ONLY_KNOWN_SEGMENTS:Lca/uhn/hl7v2/validation/MessageRule;

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;->prepareRule(Lca/uhn/hl7v2/validation/Rule;)Lca/uhn/hl7v2/validation/Rule;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/validation/MessageRule;

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;->test(Lca/uhn/hl7v2/validation/Rule;)Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;

    return-object v0
.end method

.method public terser(Ljava/lang/String;Lca/uhn/hl7v2/validation/builder/Predicate;)Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;
    .locals 1
    .param p1, "spec"    # Ljava/lang/String;
    .param p2, "predicate"    # Lca/uhn/hl7v2/validation/builder/Predicate;

    .line 66
    new-instance v0, Lca/uhn/hl7v2/validation/builder/support/TerserMessageRule;

    invoke-direct {v0, p1, p2}, Lca/uhn/hl7v2/validation/builder/support/TerserMessageRule;-><init>(Ljava/lang/String;Lca/uhn/hl7v2/validation/builder/Predicate;)V

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;->prepareRule(Lca/uhn/hl7v2/validation/Rule;)Lca/uhn/hl7v2/validation/Rule;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/validation/MessageRule;

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;->test(Lca/uhn/hl7v2/validation/Rule;)Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;

    return-object v0
.end method

.method public wrongVersion()Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;
    .locals 1

    .line 132
    sget-object v0, Lca/uhn/hl7v2/validation/builder/support/WrongVersionRule;->WRONG_VERSION:Lca/uhn/hl7v2/validation/MessageRule;

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;->prepareRule(Lca/uhn/hl7v2/validation/Rule;)Lca/uhn/hl7v2/validation/Rule;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/validation/MessageRule;

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;->test(Lca/uhn/hl7v2/validation/Rule;)Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;

    return-object v0
.end method
