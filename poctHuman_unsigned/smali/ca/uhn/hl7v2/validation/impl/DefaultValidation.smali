.class public Lca/uhn/hl7v2/validation/impl/DefaultValidation;
.super Lca/uhn/hl7v2/validation/impl/ValidationContextImpl;
.source "DefaultValidation.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    new-instance v0, Lca/uhn/hl7v2/validation/builder/support/DefaultValidationBuilder;

    invoke-direct {v0}, Lca/uhn/hl7v2/validation/builder/support/DefaultValidationBuilder;-><init>()V

    invoke-direct {p0, v0}, Lca/uhn/hl7v2/validation/impl/ValidationContextImpl;-><init>(Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;)V

    .line 47
    return-void
.end method
