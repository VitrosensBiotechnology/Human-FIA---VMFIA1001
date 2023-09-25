.class public Lca/uhn/hl7v2/validation/impl/NoValidation;
.super Lca/uhn/hl7v2/validation/impl/ValidationContextImpl;
.source "NoValidation.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    new-instance v0, Lca/uhn/hl7v2/validation/builder/support/NoValidationBuilder;

    invoke-direct {v0}, Lca/uhn/hl7v2/validation/builder/support/NoValidationBuilder;-><init>()V

    invoke-direct {p0, v0}, Lca/uhn/hl7v2/validation/impl/ValidationContextImpl;-><init>(Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;)V

    .line 50
    return-void
.end method
