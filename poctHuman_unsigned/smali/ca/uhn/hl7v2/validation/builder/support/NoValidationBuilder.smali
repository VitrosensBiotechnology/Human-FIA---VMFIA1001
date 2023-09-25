.class public Lca/uhn/hl7v2/validation/builder/support/NoValidationBuilder;
.super Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;
.source "NoValidationBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method protected configure()V
    .locals 5

    .line 35
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/builder/support/NoValidationBuilder;->forAllVersions()Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 36
    const-string v2, "FT"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "ST"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;->primitive([Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;->leftTrim()Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    .line 37
    const-string v2, "TX"

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;->primitive([Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;->rightTrim()Lca/uhn/hl7v2/validation/builder/PrimitiveRuleBuilder;

    .line 38
    return-void
.end method
