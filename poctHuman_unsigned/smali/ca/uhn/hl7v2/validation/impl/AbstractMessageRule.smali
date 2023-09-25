.class public abstract Lca/uhn/hl7v2/validation/impl/AbstractMessageRule;
.super Lca/uhn/hl7v2/validation/impl/RuleSupport;
.source "AbstractMessageRule.java"

# interfaces
.implements Lca/uhn/hl7v2/validation/MessageRule;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lca/uhn/hl7v2/validation/impl/RuleSupport<",
        "Lca/uhn/hl7v2/model/Message;",
        ">;",
        "Lca/uhn/hl7v2/validation/MessageRule;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lca/uhn/hl7v2/validation/impl/RuleSupport;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Lca/uhn/hl7v2/model/Message;)[Lca/uhn/hl7v2/validation/ValidationException;
    .locals 1
    .param p1, "msg"    # Lca/uhn/hl7v2/model/Message;

    .line 41
    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/validation/impl/AbstractMessageRule;->apply(Ljava/lang/Object;)[Lca/uhn/hl7v2/validation/ValidationException;

    move-result-object v0

    return-object v0
.end method
