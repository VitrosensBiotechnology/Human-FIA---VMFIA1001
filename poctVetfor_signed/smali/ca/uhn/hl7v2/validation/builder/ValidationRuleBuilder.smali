.class public Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;
.super Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;
.source "ValidationRuleBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder$VersionExpressionBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder<",
        "Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;",
        "Lca/uhn/hl7v2/validation/Rule<",
        "*>;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;-><init>()V

    .line 46
    return-void
.end method

.method private varargs constructor <init>(Ljava/util/List;[Lca/uhn/hl7v2/Version;)V
    .locals 0
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

    .line 49
    .local p1, "rules":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/validation/impl/RuleBinding<+Lca/uhn/hl7v2/validation/Rule<*>;>;>;"
    invoke-direct {p0, p1, p2}, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;-><init>(Ljava/util/List;[Lca/uhn/hl7v2/Version;)V

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;[Lca/uhn/hl7v2/Version;Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;-><init>(Ljava/util/List;[Lca/uhn/hl7v2/Version;)V

    return-void
.end method


# virtual methods
.method protected configure()V
    .locals 0

    .line 61
    return-void
.end method

.method public final forAllVersions()Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;->forVersion()Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder$VersionExpressionBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder$VersionExpressionBuilder;->all()Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final forVersion()Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder$VersionExpressionBuilder;
    .locals 1

    .line 78
    new-instance v0, Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder$VersionExpressionBuilder;

    invoke-direct {v0, p0}, Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder$VersionExpressionBuilder;-><init>(Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;)V

    return-object v0
.end method

.method public final varargs forVersion([Lca/uhn/hl7v2/Version;)Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;
    .locals 2
    .param p1, "version"    # [Lca/uhn/hl7v2/Version;

    .line 65
    new-instance v0, Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;

    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;->getRules()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;-><init>(Ljava/util/List;[Lca/uhn/hl7v2/Version;)V

    return-object v0
.end method

.method public final varargs forVersion([Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;
    .locals 3
    .param p1, "version"    # [Ljava/lang/String;

    .line 70
    array-length v0, p1

    new-array v0, v0, [Lca/uhn/hl7v2/Version;

    .line 71
    .local v0, "versions":[Lca/uhn/hl7v2/Version;
    const/4 v1, 0x0

    .line 71
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 74
    .end local v1    # "i":I
    new-instance v1, Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;

    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;->getRules()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;-><init>(Ljava/util/List;[Lca/uhn/hl7v2/Version;)V

    return-object v1

    .line 72
    .restart local v1    # "i":I
    :cond_0
    aget-object v2, p1, v1

    invoke-static {v2}, Lca/uhn/hl7v2/Version;->versionOf(Ljava/lang/String;)Lca/uhn/hl7v2/Version;

    move-result-object v2

    aput-object v2, v0, v1

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final initialize()Ljava/util/List;
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

    .line 53
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;->getRules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;->configure()V

    .line 54
    :cond_0
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;->getRules()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
