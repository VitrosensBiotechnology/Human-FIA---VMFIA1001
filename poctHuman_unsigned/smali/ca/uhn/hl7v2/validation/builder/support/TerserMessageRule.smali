.class public Lca/uhn/hl7v2/validation/builder/support/TerserMessageRule;
.super Lca/uhn/hl7v2/validation/builder/PredicateMessageRule;
.source "TerserMessageRule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lca/uhn/hl7v2/validation/builder/support/TerserMessageRule$TerserExpression;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lca/uhn/hl7v2/validation/builder/Predicate;)V
    .locals 1
    .param p1, "terserExpression"    # Ljava/lang/String;
    .param p2, "predicate"    # Lca/uhn/hl7v2/validation/builder/Predicate;

    .line 53
    new-instance v0, Lca/uhn/hl7v2/validation/builder/support/TerserMessageRule$TerserExpression;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/validation/builder/support/TerserMessageRule$TerserExpression;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v0}, Lca/uhn/hl7v2/validation/builder/PredicateMessageRule;-><init>(Lca/uhn/hl7v2/validation/builder/Predicate;Lca/uhn/hl7v2/validation/builder/Expression;)V

    .line 54
    return-void
.end method
