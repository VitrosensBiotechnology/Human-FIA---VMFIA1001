.class Lca/uhn/hl7v2/validation/builder/BuilderSupport$AllOfPredicate;
.super Ljava/lang/Object;
.source "BuilderSupport.java"

# interfaces
.implements Lca/uhn/hl7v2/validation/builder/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/validation/builder/BuilderSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AllOfPredicate"
.end annotation


# instance fields
.field private predicates:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Lca/uhn/hl7v2/validation/builder/Predicate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lca/uhn/hl7v2/validation/builder/Predicate;",
            ">;)V"
        }
    .end annotation

    .line 506
    .local p1, "predicates":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lca/uhn/hl7v2/validation/builder/Predicate;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 507
    iput-object p1, p0, Lca/uhn/hl7v2/validation/builder/BuilderSupport$AllOfPredicate;->predicates:Ljava/lang/Iterable;

    .line 508
    return-void
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/validation/ValidationException;
        }
    .end annotation

    .line 511
    iget-object v0, p0, Lca/uhn/hl7v2/validation/builder/BuilderSupport$AllOfPredicate;->predicates:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 516
    const/4 v0, 0x1

    return v0

    .line 511
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lca/uhn/hl7v2/validation/builder/Predicate;

    .line 512
    .local v1, "p":Lca/uhn/hl7v2/validation/builder/Predicate;
    invoke-interface {v1, p1}, Lca/uhn/hl7v2/validation/builder/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 513
    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 5

    .line 520
    const-string v0, " and "

    .line 521
    .local v0, "and":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 522
    .local v1, "b":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lca/uhn/hl7v2/validation/builder/BuilderSupport$AllOfPredicate;->predicates:Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 525
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 522
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lca/uhn/hl7v2/validation/builder/Predicate;

    .line 523
    .local v3, "p":Lca/uhn/hl7v2/validation/builder/Predicate;
    invoke-interface {v3}, Lca/uhn/hl7v2/validation/builder/Predicate;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .end local v3    # "p":Lca/uhn/hl7v2/validation/builder/Predicate;
    goto :goto_0
.end method
