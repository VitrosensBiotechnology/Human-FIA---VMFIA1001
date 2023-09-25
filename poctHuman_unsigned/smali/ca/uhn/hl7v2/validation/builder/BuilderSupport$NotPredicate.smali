.class Lca/uhn/hl7v2/validation/builder/BuilderSupport$NotPredicate;
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
    name = "NotPredicate"
.end annotation


# instance fields
.field private delegate:Lca/uhn/hl7v2/validation/builder/Predicate;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/validation/builder/Predicate;)V
    .locals 0
    .param p1, "delegate"    # Lca/uhn/hl7v2/validation/builder/Predicate;

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    iput-object p1, p0, Lca/uhn/hl7v2/validation/builder/BuilderSupport$NotPredicate;->delegate:Lca/uhn/hl7v2/validation/builder/Predicate;

    .line 380
    return-void
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/validation/ValidationException;
        }
    .end annotation

    .line 384
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/validation/builder/BuilderSupport$NotPredicate;->delegate:Lca/uhn/hl7v2/validation/builder/Predicate;

    invoke-interface {v1, p1}, Lca/uhn/hl7v2/validation/builder/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Lca/uhn/hl7v2/validation/ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr v0, v1

    return v0

    .line 385
    :catch_0
    move-exception v1

    .line 386
    .local v1, "e":Lca/uhn/hl7v2/validation/ValidationException;
    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "not "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lca/uhn/hl7v2/validation/builder/BuilderSupport$NotPredicate;->delegate:Lca/uhn/hl7v2/validation/builder/Predicate;

    invoke-interface {v1}, Lca/uhn/hl7v2/validation/builder/Predicate;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
