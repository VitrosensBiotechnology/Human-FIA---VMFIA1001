.class public abstract Lca/uhn/hl7v2/validation/impl/AbstractPrimitiveTypeRule;
.super Lca/uhn/hl7v2/validation/impl/RuleSupport;
.source "AbstractPrimitiveTypeRule.java"

# interfaces
.implements Lca/uhn/hl7v2/validation/PrimitiveTypeRule;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lca/uhn/hl7v2/validation/impl/RuleSupport<",
        "Ljava/lang/String;",
        ">;",
        "Lca/uhn/hl7v2/validation/PrimitiveTypeRule;"
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
.method public correct(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 47
    return-object p1
.end method

.method public test(Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 42
    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/validation/impl/AbstractPrimitiveTypeRule;->apply(Ljava/lang/Object;)[Lca/uhn/hl7v2/validation/ValidationException;

    move-result-object v0

    .line 43
    .local v0, "exceptions":[Lca/uhn/hl7v2/validation/ValidationException;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x1

    return v1
.end method
