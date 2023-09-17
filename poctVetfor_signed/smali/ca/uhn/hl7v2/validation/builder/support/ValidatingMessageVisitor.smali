.class public abstract Lca/uhn/hl7v2/validation/builder/support/ValidatingMessageVisitor;
.super Lca/uhn/hl7v2/model/MessageVisitorSupport;
.source "ValidatingMessageVisitor.java"


# instance fields
.field private validationExceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/validation/ValidationException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lca/uhn/hl7v2/model/MessageVisitorSupport;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/validation/builder/support/ValidatingMessageVisitor;->validationExceptions:Ljava/util/List;

    .line 42
    return-void
.end method


# virtual methods
.method protected addValidationException(Lca/uhn/hl7v2/validation/ValidationException;)Z
    .locals 1
    .param p1, "e"    # Lca/uhn/hl7v2/validation/ValidationException;

    .line 47
    if-eqz p1, :cond_0

    iget-object v0, p0, Lca/uhn/hl7v2/validation/builder/support/ValidatingMessageVisitor;->validationExceptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected varargs addValidationExceptions([Lca/uhn/hl7v2/validation/ValidationException;)Z
    .locals 2
    .param p1, "e"    # [Lca/uhn/hl7v2/validation/ValidationException;

    .line 51
    if-eqz p1, :cond_0

    iget-object v0, p0, Lca/uhn/hl7v2/validation/builder/support/ValidatingMessageVisitor;->validationExceptions:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method getValidationExceptions()[Lca/uhn/hl7v2/validation/ValidationException;
    .locals 2

    .line 55
    iget-object v0, p0, Lca/uhn/hl7v2/validation/builder/support/ValidatingMessageVisitor;->validationExceptions:Ljava/util/List;

    iget-object v1, p0, Lca/uhn/hl7v2/validation/builder/support/ValidatingMessageVisitor;->validationExceptions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lca/uhn/hl7v2/validation/ValidationException;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/validation/ValidationException;

    return-object v0
.end method
