.class public Lca/uhn/hl7v2/validation/builder/support/VisitorMessageRule;
.super Lca/uhn/hl7v2/validation/impl/AbstractMessageRule;
.source "VisitorMessageRule.java"


# instance fields
.field private final visitorFactory:Lca/uhn/hl7v2/model/MessageVisitorFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lca/uhn/hl7v2/model/MessageVisitorFactory<",
            "+",
            "Lca/uhn/hl7v2/validation/builder/support/ValidatingMessageVisitor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/MessageVisitorFactory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/model/MessageVisitorFactory<",
            "+",
            "Lca/uhn/hl7v2/validation/builder/support/ValidatingMessageVisitor;",
            ">;)V"
        }
    .end annotation

    .line 44
    .local p1, "visitorFactory":Lca/uhn/hl7v2/model/MessageVisitorFactory;, "Lca/uhn/hl7v2/model/MessageVisitorFactory<+Lca/uhn/hl7v2/validation/builder/support/ValidatingMessageVisitor;>;"
    invoke-direct {p0}, Lca/uhn/hl7v2/validation/impl/AbstractMessageRule;-><init>()V

    .line 45
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Visitor factory must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    iput-object p1, p0, Lca/uhn/hl7v2/validation/builder/support/VisitorMessageRule;->visitorFactory:Lca/uhn/hl7v2/model/MessageVisitorFactory;

    .line 47
    return-void
.end method


# virtual methods
.method public apply(Lca/uhn/hl7v2/model/Message;)[Lca/uhn/hl7v2/validation/ValidationException;
    .locals 4
    .param p1, "message"    # Lca/uhn/hl7v2/model/Message;

    .line 51
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/validation/builder/support/VisitorMessageRule;->visitorFactory:Lca/uhn/hl7v2/model/MessageVisitorFactory;

    invoke-interface {v0}, Lca/uhn/hl7v2/model/MessageVisitorFactory;->create()Lca/uhn/hl7v2/model/MessageVisitor;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/validation/builder/support/ValidatingMessageVisitor;

    .line 52
    .local v0, "visitor":Lca/uhn/hl7v2/validation/builder/support/ValidatingMessageVisitor;
    invoke-static {p1, v0}, Lca/uhn/hl7v2/model/MessageVisitors;->visit(Lca/uhn/hl7v2/model/Visitable;Lca/uhn/hl7v2/model/MessageVisitor;)Lca/uhn/hl7v2/model/MessageVisitor;

    .line 53
    invoke-virtual {v0}, Lca/uhn/hl7v2/validation/builder/support/ValidatingMessageVisitor;->getValidationExceptions()[Lca/uhn/hl7v2/validation/ValidationException;

    move-result-object v1
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 54
    .end local v0    # "visitor":Lca/uhn/hl7v2/validation/builder/support/ValidatingMessageVisitor;
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Lca/uhn/hl7v2/HL7Exception;
    const/4 v1, 0x1

    new-array v1, v1, [Lca/uhn/hl7v2/validation/ValidationException;

    const/4 v2, 0x0

    .line 56
    new-instance v3, Lca/uhn/hl7v2/validation/ValidationException;

    invoke-direct {v3, v0}, Lca/uhn/hl7v2/validation/ValidationException;-><init>(Ljava/lang/Throwable;)V

    aput-object v3, v1, v2

    .line 55
    return-object v1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)[Lca/uhn/hl7v2/validation/ValidationException;
    .locals 0

    .line 1
    check-cast p1, Lca/uhn/hl7v2/model/Message;

    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/validation/builder/support/VisitorMessageRule;->apply(Lca/uhn/hl7v2/model/Message;)[Lca/uhn/hl7v2/validation/ValidationException;

    move-result-object p1

    return-object p1
.end method
