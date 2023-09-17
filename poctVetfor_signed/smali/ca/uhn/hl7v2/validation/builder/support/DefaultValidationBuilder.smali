.class public Lca/uhn/hl7v2/validation/builder/support/DefaultValidationBuilder;
.super Lca/uhn/hl7v2/validation/builder/support/DefaultValidationWithoutTNBuilder;
.source "DefaultValidationBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lca/uhn/hl7v2/validation/builder/support/DefaultValidationWithoutTNBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method protected configure()V
    .locals 4

    .line 40
    invoke-super {p0}, Lca/uhn/hl7v2/validation/builder/support/DefaultValidationWithoutTNBuilder;->configure()V

    .line 42
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/builder/support/DefaultValidationBuilder;->forAllVersions()Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 43
    const-string v2, "TN"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;->primitive([Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;

    move-result-object v0

    .line 44
    const-string v1, "Version 2.4 Section 2.9.45"

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;->refersToSection(Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;

    .line 45
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/builder/support/DefaultValidationBuilder;->usPhoneNumber()Lca/uhn/hl7v2/validation/builder/Predicate;

    move-result-object v1

    invoke-virtual {p0, v1}, Lca/uhn/hl7v2/validation/builder/support/DefaultValidationBuilder;->emptyOr(Lca/uhn/hl7v2/validation/builder/Predicate;)Lca/uhn/hl7v2/validation/builder/Predicate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;->is(Lca/uhn/hl7v2/validation/builder/Predicate;)Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;

    .line 46
    return-void
.end method
