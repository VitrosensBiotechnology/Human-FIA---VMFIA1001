.class public Lca/uhn/hl7v2/validation/impl/DefaultValidationWithoutTN;
.super Lca/uhn/hl7v2/validation/impl/ValidationContextImpl;
.source "DefaultValidationWithoutTN.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    new-instance v0, Lca/uhn/hl7v2/validation/builder/support/DefaultValidationWithoutTNBuilder;

    invoke-direct {v0}, Lca/uhn/hl7v2/validation/builder/support/DefaultValidationWithoutTNBuilder;-><init>()V

    invoke-direct {p0, v0}, Lca/uhn/hl7v2/validation/impl/ValidationContextImpl;-><init>(Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;)V

    .line 48
    return-void
.end method
