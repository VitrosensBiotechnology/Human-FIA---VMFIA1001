.class public Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;
.super Lca/uhn/hl7v2/validation/builder/BuilderSupport;
.source "RuleTypeBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder$MessageExpressionBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder<",
        "TS;TT;>;T::",
        "Lca/uhn/hl7v2/validation/Rule<",
        "*>;>",
        "Lca/uhn/hl7v2/validation/builder/BuilderSupport;"
    }
.end annotation


# instance fields
.field private active:Z

.field private description:Ljava/lang/String;

.field private rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/validation/impl/RuleBinding<",
            "+",
            "Lca/uhn/hl7v2/validation/Rule<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private sectionReference:Ljava/lang/String;

.field private severity:Lca/uhn/hl7v2/Severity;

.field private versions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lca/uhn/hl7v2/Version;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 69
    .local p0, "this":Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;, "Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder<TS;TT;>;"
    invoke-direct {p0}, Lca/uhn/hl7v2/validation/builder/BuilderSupport;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;->rules:Ljava/util/List;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;->active:Z

    .line 66
    sget-object v0, Lca/uhn/hl7v2/Severity;->ERROR:Lca/uhn/hl7v2/Severity;

    iput-object v0, p0, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;->severity:Lca/uhn/hl7v2/Severity;

    .line 70
    return-void
.end method

.method protected constructor <init>(Ljava/util/List;Ljava/util/Set;)V
    .locals 2
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
            ">;)V"
        }
    .end annotation

    .line 73
    .local p0, "this":Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;, "Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder<TS;TT;>;"
    .local p1, "rules":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/validation/impl/RuleBinding<+Lca/uhn/hl7v2/validation/Rule<*>;>;>;"
    .local p2, "versions":Ljava/util/Set;, "Ljava/util/Set<Lca/uhn/hl7v2/Version;>;"
    invoke-direct {p0}, Lca/uhn/hl7v2/validation/builder/BuilderSupport;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;->rules:Ljava/util/List;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;->active:Z

    .line 66
    sget-object v0, Lca/uhn/hl7v2/Severity;->ERROR:Lca/uhn/hl7v2/Severity;

    iput-object v0, p0, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;->severity:Lca/uhn/hl7v2/Severity;

    .line 74
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify a version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    iput-object p1, p0, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;->rules:Ljava/util/List;

    .line 77
    iput-object p2, p0, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;->versions:Ljava/util/Set;

    .line 78
    return-void
.end method

.method protected varargs constructor <init>(Ljava/util/List;[Lca/uhn/hl7v2/Version;)V
    .locals 2
    .param p2, "versions"    # [Lca/uhn/hl7v2/Version;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/validation/impl/RuleBinding<",
            "+",
            "Lca/uhn/hl7v2/validation/Rule<",
            "*>;>;>;[",
            "Lca/uhn/hl7v2/Version;",
            ")V"
        }
    .end annotation

    .line 81
    .local p0, "this":Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;, "Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder<TS;TT;>;"
    .local p1, "rules":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/validation/impl/RuleBinding<+Lca/uhn/hl7v2/validation/Rule<*>;>;>;"
    invoke-direct {p0}, Lca/uhn/hl7v2/validation/builder/BuilderSupport;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;->rules:Ljava/util/List;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;->active:Z

    .line 66
    sget-object v0, Lca/uhn/hl7v2/Severity;->ERROR:Lca/uhn/hl7v2/Severity;

    iput-object v0, p0, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;->severity:Lca/uhn/hl7v2/Severity;

    .line 82
    array-length v0, p2

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify a version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    iput-object p1, p0, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;->rules:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;->versions:Ljava/util/Set;

    .line 86
    return-void
.end method

.method static synthetic access$0(Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;)Ljava/util/List;
    .locals 0

    .line 61
    iget-object p0, p0, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;->rules:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1(Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;)Ljava/util/Set;
    .locals 0

    .line 62
    iget-object p0, p0, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;->versions:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method protected activate(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lca/uhn/hl7v2/validation/impl/RuleBinding<",
            "TT;>;>;)",
            "Ljava/util/Collection<",
            "Lca/uhn/hl7v2/validation/impl/RuleBinding<",
            "TT;>;>;"
        }
    .end annotation

    .line 236
    .local p0, "this":Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;, "Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder<TS;TT;>;"
    .local p1, "bindings":Ljava/util/Collection;, "Ljava/util/Collection<Lca/uhn/hl7v2/validation/impl/RuleBinding<TT;>;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 239
    return-object p1

    .line 236
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lca/uhn/hl7v2/validation/impl/RuleBinding;

    .line 237
    .local v1, "ruleBinding":Lca/uhn/hl7v2/validation/impl/RuleBinding;, "Lca/uhn/hl7v2/validation/impl/RuleBinding<TT;>;"
    iget-boolean v2, p0, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;->active:Z

    invoke-virtual {v1, v2}, Lca/uhn/hl7v2/validation/impl/RuleBinding;->setActive(Z)V

    .line 237
    .end local v1    # "ruleBinding":Lca/uhn/hl7v2/validation/impl/RuleBinding;, "Lca/uhn/hl7v2/validation/impl/RuleBinding<TT;>;"
    goto :goto_0
.end method

.method public active(Z)Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;
    .locals 1
    .param p1, "active"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TS;"
        }
    .end annotation

    .line 147
    .local p0, "this":Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;, "Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder<TS;TT;>;"
    iput-boolean p1, p0, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;->active:Z

    .line 148
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;->instance()Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected addRuleBindings(Lca/uhn/hl7v2/validation/Rule;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 212
    .local p0, "this":Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;, "Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder<TS;TT;>;"
    .local p1, "rule":Lca/uhn/hl7v2/validation/Rule;, "TT;"
    iget-object v0, p0, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;->versions:Ljava/util/Set;

    invoke-static {v0}, Lca/uhn/hl7v2/Version;->allVersions(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;->rules:Ljava/util/List;

    const-string v1, "*"

    invoke-virtual {p0, p1, v1}, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;->getRuleBindings(Lca/uhn/hl7v2/validation/Rule;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 215
    goto :goto_1

    .line 216
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;->versions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 220
    :goto_1
    return-void

    .line 216
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lca/uhn/hl7v2/Version;

    .line 217
    .local v1, "version":Lca/uhn/hl7v2/Version;
    iget-object v2, p0, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;->rules:Ljava/util/List;

    invoke-virtual {v1}, Lca/uhn/hl7v2/Version;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;->getRuleBindings(Lca/uhn/hl7v2/validation/Rule;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 217
    .end local v1    # "version":Lca/uhn/hl7v2/Version;
    goto :goto_0
.end method

.method public description(Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;
    .locals 1
    .param p1, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TS;"
        }
    .end annotation

    .line 114
    .local p0, "this":Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;, "Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder<TS;TT;>;"
    iput-object p1, p0, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;->description:Ljava/lang/String;

    .line 115
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;->instance()Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;

    move-result-object v0

    return-object v0
.end method

.method public encoding(Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/EncodingRuleBuilder;
    .locals 3
    .param p1, "encoding"    # Ljava/lang/String;

    .line 203
    .local p0, "this":Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;, "Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder<TS;TT;>;"
    new-instance v0, Lca/uhn/hl7v2/validation/builder/EncodingRuleBuilder;

    iget-object v1, p0, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;->rules:Ljava/util/List;

    iget-object v2, p0, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;->versions:Ljava/util/Set;

    invoke-direct {v0, v1, v2, p1}, Lca/uhn/hl7v2/validation/builder/EncodingRuleBuilder;-><init>(Ljava/util/List;Ljava/util/Set;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getRuleBindings(Lca/uhn/hl7v2/validation/Rule;Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .param p2, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lca/uhn/hl7v2/validation/impl/RuleBinding<",
            "TT;>;>;"
        }
    .end annotation

    .line 232
    .local p0, "this":Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;, "Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder<TS;TT;>;"
    .local p1, "rule":Lca/uhn/hl7v2/validation/Rule;, "TT;"
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method protected getRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/validation/impl/RuleBinding<",
            "+",
            "Lca/uhn/hl7v2/validation/Rule<",
            "*>;>;>;"
        }
    .end annotation

    .line 94
    .local p0, "this":Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;, "Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder<TS;TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;->rules:Ljava/util/List;

    return-object v0
.end method

.method getVersions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lca/uhn/hl7v2/Version;",
            ">;"
        }
    .end annotation

    .line 244
    .local p0, "this":Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;, "Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder<TS;TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;->versions:Ljava/util/Set;

    return-object v0
.end method

.method protected instance()Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 90
    .local p0, "this":Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;, "Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder<TS;TT;>;"
    return-object p0
.end method

.method public varargs message(Ljava/lang/String;[Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;
    .locals 3
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "triggerEvents"    # [Ljava/lang/String;

    .line 183
    .local p0, "this":Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;, "Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder<TS;TT;>;"
    new-instance v0, Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;

    iget-object v1, p0, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;->rules:Ljava/util/List;

    iget-object v2, p0, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;->versions:Ljava/util/Set;

    invoke-direct {v0, v1, v2, p1, p2}, Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;-><init>(Ljava/util/List;Ljava/util/Set;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public message()Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder$MessageExpressionBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder<",
            "TS;TT;>.MessageExpressionBuilder;"
        }
    .end annotation

    .line 193
    .local p0, "this":Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;, "Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder<TS;TT;>;"
    new-instance v0, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder$MessageExpressionBuilder;

    invoke-direct {v0, p0}, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder$MessageExpressionBuilder;-><init>(Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;)V

    return-object v0
.end method

.method protected prepareRule(Lca/uhn/hl7v2/validation/Rule;)Lca/uhn/hl7v2/validation/Rule;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 98
    .local p0, "this":Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;, "Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder<TS;TT;>;"
    .local p1, "rule":Lca/uhn/hl7v2/validation/Rule;, "TT;"
    instance-of v0, p1, Lca/uhn/hl7v2/validation/impl/RuleSupport;

    if-eqz v0, :cond_2

    .line 99
    move-object v0, p1

    check-cast v0, Lca/uhn/hl7v2/validation/impl/RuleSupport;

    .line 100
    .local v0, "rs":Lca/uhn/hl7v2/validation/impl/RuleSupport;, "Lca/uhn/hl7v2/validation/impl/RuleSupport<*>;"
    iget-object v1, p0, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;->description:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/validation/impl/RuleSupport;->setDescription(Ljava/lang/String;)V

    .line 101
    :cond_0
    iget-object v1, p0, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;->sectionReference:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;->sectionReference:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/validation/impl/RuleSupport;->setSectionReference(Ljava/lang/String;)V

    .line 102
    :cond_1
    iget-object v1, p0, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;->severity:Lca/uhn/hl7v2/Severity;

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/validation/impl/RuleSupport;->setSeverity(Lca/uhn/hl7v2/Severity;)V

    .line 104
    .end local v0    # "rs":Lca/uhn/hl7v2/validation/impl/RuleSupport;, "Lca/uhn/hl7v2/validation/impl/RuleSupport<*>;"
    :cond_2
    return-object p1
.end method

.method public varargs primitive([Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;
    .locals 5
    .param p1, "type"    # [Ljava/lang/String;

    .line 169
    .local p0, "this":Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;, "Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder<TS;TT;>;"
    array-length v0, p1

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify a type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    new-instance v0, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;

    iget-object v1, p0, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;->rules:Ljava/util/List;

    iget-object v2, p0, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;->versions:Ljava/util/Set;

    new-instance v3, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2, v3}, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;-><init>(Ljava/util/List;Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method public refersToSection(Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;
    .locals 1
    .param p1, "sectionReference"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TS;"
        }
    .end annotation

    .line 125
    .local p0, "this":Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;, "Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder<TS;TT;>;"
    iput-object p1, p0, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;->sectionReference:Ljava/lang/String;

    .line 126
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;->instance()Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;

    move-result-object v0

    return-object v0
.end method

.method public severity(Lca/uhn/hl7v2/Severity;)Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;
    .locals 1
    .param p1, "severity"    # Lca/uhn/hl7v2/Severity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/Severity;",
            ")TS;"
        }
    .end annotation

    .line 136
    .local p0, "this":Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;, "Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder<TS;TT;>;"
    iput-object p1, p0, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;->severity:Lca/uhn/hl7v2/Severity;

    .line 137
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;->instance()Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;

    move-result-object v0

    return-object v0
.end method

.method public test(Lca/uhn/hl7v2/validation/Rule;)Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TS;"
        }
    .end annotation

    .line 158
    .local p0, "this":Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;, "Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder<TS;TT;>;"
    .local p1, "rule":Lca/uhn/hl7v2/validation/Rule;, "TT;"
    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;->addRuleBindings(Lca/uhn/hl7v2/validation/Rule;)V

    .line 159
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;->instance()Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;

    move-result-object v0

    return-object v0
.end method
