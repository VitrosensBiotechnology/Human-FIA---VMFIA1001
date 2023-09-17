.class public abstract Lca/uhn/hl7v2/validation/impl/AbstractEncodingRule;
.super Lca/uhn/hl7v2/validation/impl/RuleSupport;
.source "AbstractEncodingRule.java"

# interfaces
.implements Lca/uhn/hl7v2/validation/EncodingRule;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lca/uhn/hl7v2/validation/impl/RuleSupport<",
        "Ljava/lang/String;",
        ">;",
        "Lca/uhn/hl7v2/validation/EncodingRule;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lca/uhn/hl7v2/validation/impl/RuleSupport;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/String;)[Lca/uhn/hl7v2/validation/ValidationException;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 42
    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/validation/impl/AbstractEncodingRule;->apply(Ljava/lang/Object;)[Lca/uhn/hl7v2/validation/ValidationException;

    move-result-object v0

    return-object v0
.end method
