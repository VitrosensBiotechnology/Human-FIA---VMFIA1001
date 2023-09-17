.class public Lca/uhn/hl7v2/validation/builder/support/DefaultValidationWithoutTNBuilder;
.super Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;
.source "DefaultValidationWithoutTNBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method protected configure()V
    .locals 6

    .line 46
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/builder/support/DefaultValidationWithoutTNBuilder;->forAllVersions()Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;->message()Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder$MessageExpressionBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder$MessageExpressionBuilder;->all()Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;->choiceElementsRespected()Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;->message()Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder$MessageExpressionBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder$MessageExpressionBuilder;->all()Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;->onlyAllowableSegmentsInSuperStructure()Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 49
    const-string v3, "FT"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;->primitive([Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;

    move-result-object v0

    const/16 v2, 0x7d00

    invoke-virtual {p0, v2}, Lca/uhn/hl7v2/validation/builder/support/DefaultValidationWithoutTNBuilder;->maxLength(I)Lca/uhn/hl7v2/validation/builder/Predicate;

    move-result-object v2

    invoke-virtual {v0, v2}, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;->leftTrim(Lca/uhn/hl7v2/validation/builder/Predicate;)Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/String;

    .line 50
    const-string v3, "ST"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;->primitive([Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;->leftTrim()Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/String;

    .line 51
    const-string v3, "TX"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;->primitive([Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;->rightTrim()Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;

    move-result-object v0

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    .line 52
    const-string v5, "ID"

    aput-object v5, v3, v4

    const-string v5, "IS"

    aput-object v5, v3, v1

    invoke-virtual {v0, v3}, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;->primitive([Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;

    move-result-object v0

    const/16 v3, 0xc8

    invoke-virtual {p0, v3}, Lca/uhn/hl7v2/validation/builder/support/DefaultValidationWithoutTNBuilder;->maxLength(I)Lca/uhn/hl7v2/validation/builder/Predicate;

    move-result-object v3

    invoke-virtual {v0, v3}, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;->is(Lca/uhn/hl7v2/validation/builder/Predicate;)Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/String;

    .line 53
    const-string v5, "SI"

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;->primitive([Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/builder/support/DefaultValidationWithoutTNBuilder;->nonNegativeInteger()Lca/uhn/hl7v2/validation/builder/Predicate;

    move-result-object v3

    invoke-virtual {p0, v3}, Lca/uhn/hl7v2/validation/builder/support/DefaultValidationWithoutTNBuilder;->emptyOr(Lca/uhn/hl7v2/validation/builder/Predicate;)Lca/uhn/hl7v2/validation/builder/Predicate;

    move-result-object v3

    invoke-virtual {v0, v3}, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;->is(Lca/uhn/hl7v2/validation/builder/Predicate;)Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/String;

    .line 54
    const-string v5, "NM"

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;->primitive([Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/builder/support/DefaultValidationWithoutTNBuilder;->number()Lca/uhn/hl7v2/validation/builder/Predicate;

    move-result-object v3

    invoke-virtual {p0, v3}, Lca/uhn/hl7v2/validation/builder/support/DefaultValidationWithoutTNBuilder;->emptyOr(Lca/uhn/hl7v2/validation/builder/Predicate;)Lca/uhn/hl7v2/validation/builder/Predicate;

    move-result-object v3

    invoke-virtual {v0, v3}, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;->is(Lca/uhn/hl7v2/validation/builder/Predicate;)Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/String;

    .line 55
    const-string v5, "DT"

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;->primitive([Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;

    move-result-object v0

    .line 56
    const-string v3, "Version 2.5 Section 2.A.21"

    invoke-virtual {v0, v3}, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;->refersToSection(Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;

    .line 57
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/builder/support/DefaultValidationWithoutTNBuilder;->date()Lca/uhn/hl7v2/validation/builder/Predicate;

    move-result-object v3

    invoke-virtual {p0, v3}, Lca/uhn/hl7v2/validation/builder/support/DefaultValidationWithoutTNBuilder;->emptyOr(Lca/uhn/hl7v2/validation/builder/Predicate;)Lca/uhn/hl7v2/validation/builder/Predicate;

    move-result-object v3

    invoke-virtual {v0, v3}, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;->is(Lca/uhn/hl7v2/validation/builder/Predicate;)Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/String;

    .line 58
    const-string v5, "TM"

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;->primitive([Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;

    move-result-object v0

    .line 59
    const-string v3, "Version 2.5 Section 2.A.75"

    invoke-virtual {v0, v3}, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;->refersToSection(Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;

    .line 60
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/builder/support/DefaultValidationWithoutTNBuilder;->time()Lca/uhn/hl7v2/validation/builder/Predicate;

    move-result-object v3

    invoke-virtual {p0, v3}, Lca/uhn/hl7v2/validation/builder/support/DefaultValidationWithoutTNBuilder;->emptyOr(Lca/uhn/hl7v2/validation/builder/Predicate;)Lca/uhn/hl7v2/validation/builder/Predicate;

    move-result-object v3

    invoke-virtual {v0, v3}, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;->is(Lca/uhn/hl7v2/validation/builder/Predicate;)Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/String;

    .line 61
    const-string v5, "NULLDT"

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;->primitive([Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/builder/support/DefaultValidationWithoutTNBuilder;->withdrawn()Lca/uhn/hl7v2/validation/builder/Predicate;

    move-result-object v3

    invoke-virtual {v0, v3}, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;->is(Lca/uhn/hl7v2/validation/builder/Predicate;)Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;

    .line 63
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/builder/support/DefaultValidationWithoutTNBuilder;->forVersion()Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder$VersionExpressionBuilder;

    move-result-object v0

    sget-object v3, Lca/uhn/hl7v2/Version;->V25:Lca/uhn/hl7v2/Version;

    invoke-virtual {v0, v3}, Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder$VersionExpressionBuilder;->before(Lca/uhn/hl7v2/Version;)Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/String;

    .line 64
    const-string v5, "TSComponentOne"

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;->primitive([Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;

    move-result-object v0

    .line 65
    const-string v3, "Version 2.4 Section 2.9.47"

    invoke-virtual {v0, v3}, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;->refersToSection(Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;

    .line 66
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/builder/support/DefaultValidationWithoutTNBuilder;->dateTime()Lca/uhn/hl7v2/validation/builder/Predicate;

    move-result-object v3

    invoke-virtual {p0, v3}, Lca/uhn/hl7v2/validation/builder/support/DefaultValidationWithoutTNBuilder;->emptyOr(Lca/uhn/hl7v2/validation/builder/Predicate;)Lca/uhn/hl7v2/validation/builder/Predicate;

    move-result-object v3

    invoke-virtual {v0, v3}, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;->is(Lca/uhn/hl7v2/validation/builder/Predicate;)Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;

    .line 68
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/builder/support/DefaultValidationWithoutTNBuilder;->forVersion()Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder$VersionExpressionBuilder;

    move-result-object v0

    sget-object v3, Lca/uhn/hl7v2/Version;->V25:Lca/uhn/hl7v2/Version;

    invoke-virtual {v0, v3}, Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder$VersionExpressionBuilder;->asOf(Lca/uhn/hl7v2/Version;)Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/String;

    .line 69
    const-string v3, "TSComponentOne"

    aput-object v3, v2, v4

    const-string v3, "DTM"

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;->primitive([Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;

    move-result-object v0

    .line 70
    const-string v1, "Version 2.5 Section 2.A.22"

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;->refersToSection(Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;

    .line 71
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/builder/support/DefaultValidationWithoutTNBuilder;->dateTime25()Lca/uhn/hl7v2/validation/builder/Predicate;

    move-result-object v1

    invoke-virtual {p0, v1}, Lca/uhn/hl7v2/validation/builder/support/DefaultValidationWithoutTNBuilder;->emptyOr(Lca/uhn/hl7v2/validation/builder/Predicate;)Lca/uhn/hl7v2/validation/builder/Predicate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;->is(Lca/uhn/hl7v2/validation/builder/Predicate;)Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;

    .line 72
    return-void
.end method
