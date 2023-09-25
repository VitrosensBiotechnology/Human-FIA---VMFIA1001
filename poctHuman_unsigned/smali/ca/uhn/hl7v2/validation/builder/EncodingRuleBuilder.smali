.class public Lca/uhn/hl7v2/validation/builder/EncodingRuleBuilder;
.super Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;
.source "EncodingRuleBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder<",
        "Lca/uhn/hl7v2/validation/builder/EncodingRuleBuilder;",
        "Lca/uhn/hl7v2/validation/EncodingRule;",
        ">;"
    }
.end annotation


# instance fields
.field private encoding:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/util/List;Ljava/util/Set;Ljava/lang/String;)V
    .locals 0
    .param p3, "encoding"    # Ljava/lang/String;
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
            ")V"
        }
    .end annotation

    .line 52
    .local p1, "rules":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/validation/impl/RuleBinding<+Lca/uhn/hl7v2/validation/Rule<*>;>;>;"
    .local p2, "versions":Ljava/util/Set;, "Ljava/util/Set<Lca/uhn/hl7v2/Version;>;"
    invoke-direct {p0, p1, p2}, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;-><init>(Ljava/util/List;Ljava/util/Set;)V

    .line 53
    iput-object p3, p0, Lca/uhn/hl7v2/validation/builder/EncodingRuleBuilder;->encoding:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method getEncoding()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lca/uhn/hl7v2/validation/builder/EncodingRuleBuilder;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method protected getRuleBindings(Lca/uhn/hl7v2/validation/EncodingRule;Ljava/lang/String;)Ljava/util/Collection;
    .locals 2
    .param p1, "rule"    # Lca/uhn/hl7v2/validation/EncodingRule;
    .param p2, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/validation/EncodingRule;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lca/uhn/hl7v2/validation/impl/RuleBinding<",
            "Lca/uhn/hl7v2/validation/EncodingRule;",
            ">;>;"
        }
    .end annotation

    .line 73
    new-instance v0, Lca/uhn/hl7v2/validation/impl/EncodingRuleBinding;

    iget-object v1, p0, Lca/uhn/hl7v2/validation/builder/EncodingRuleBuilder;->encoding:Ljava/lang/String;

    invoke-direct {v0, p2, v1, p1}, Lca/uhn/hl7v2/validation/impl/EncodingRuleBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lca/uhn/hl7v2/validation/EncodingRule;)V

    .line 74
    .local v0, "binding":Lca/uhn/hl7v2/validation/impl/RuleBinding;, "Lca/uhn/hl7v2/validation/impl/RuleBinding<Lca/uhn/hl7v2/validation/EncodingRule;>;"
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lca/uhn/hl7v2/validation/builder/EncodingRuleBuilder;->activate(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic getRuleBindings(Lca/uhn/hl7v2/validation/Rule;Ljava/lang/String;)Ljava/util/Collection;
    .locals 0

    .line 1
    check-cast p1, Lca/uhn/hl7v2/validation/EncodingRule;

    invoke-virtual {p0, p1, p2}, Lca/uhn/hl7v2/validation/builder/EncodingRuleBuilder;->getRuleBindings(Lca/uhn/hl7v2/validation/EncodingRule;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public xsd()Lca/uhn/hl7v2/validation/builder/EncodingRuleBuilder;
    .locals 1

    .line 62
    new-instance v0, Lca/uhn/hl7v2/validation/impl/XMLSchemaRule;

    invoke-direct {v0}, Lca/uhn/hl7v2/validation/impl/XMLSchemaRule;-><init>()V

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/validation/builder/EncodingRuleBuilder;->prepareRule(Lca/uhn/hl7v2/validation/Rule;)Lca/uhn/hl7v2/validation/Rule;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/validation/EncodingRule;

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/validation/builder/EncodingRuleBuilder;->test(Lca/uhn/hl7v2/validation/Rule;)Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/validation/builder/EncodingRuleBuilder;

    return-object v0
.end method
