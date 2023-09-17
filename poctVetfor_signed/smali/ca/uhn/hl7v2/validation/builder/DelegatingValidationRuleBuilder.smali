.class public Lca/uhn/hl7v2/validation/builder/DelegatingValidationRuleBuilder;
.super Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;
.source "DelegatingValidationRuleBuilder.java"


# instance fields
.field private delegate:Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;)V
    .locals 0
    .param p1, "delegate"    # Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;

    .line 38
    invoke-direct {p0}, Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;-><init>()V

    .line 39
    iput-object p1, p0, Lca/uhn/hl7v2/validation/builder/DelegatingValidationRuleBuilder;->delegate:Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;

    .line 40
    return-void
.end method


# virtual methods
.method protected configure()V
    .locals 1

    .line 44
    iget-object v0, p0, Lca/uhn/hl7v2/validation/builder/DelegatingValidationRuleBuilder;->delegate:Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;

    invoke-virtual {v0}, Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;->configure()V

    .line 45
    return-void
.end method
