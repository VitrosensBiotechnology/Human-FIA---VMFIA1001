.class public abstract Lca/uhn/hl7v2/validation/builder/PredicateMessageRule;
.super Lca/uhn/hl7v2/validation/impl/AbstractMessageRule;
.source "PredicateMessageRule.java"

# interfaces
.implements Lca/uhn/hl7v2/validation/builder/PredicateRuleSupport;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lca/uhn/hl7v2/validation/impl/AbstractMessageRule;",
        "Lca/uhn/hl7v2/validation/builder/PredicateRuleSupport<",
        "Lca/uhn/hl7v2/model/Message;",
        ">;"
    }
.end annotation


# instance fields
.field private testExpression:Lca/uhn/hl7v2/validation/builder/Expression;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lca/uhn/hl7v2/validation/builder/Expression<",
            "Lca/uhn/hl7v2/model/Message;",
            ">;"
        }
    .end annotation
.end field

.field private testPredicate:Lca/uhn/hl7v2/validation/builder/Predicate;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/validation/builder/Predicate;Lca/uhn/hl7v2/validation/builder/Expression;)V
    .locals 2
    .param p1, "predicate"    # Lca/uhn/hl7v2/validation/builder/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/validation/builder/Predicate;",
            "Lca/uhn/hl7v2/validation/builder/Expression<",
            "Lca/uhn/hl7v2/model/Message;",
            ">;)V"
        }
    .end annotation

    .line 50
    .local p2, "expression":Lca/uhn/hl7v2/validation/builder/Expression;, "Lca/uhn/hl7v2/validation/builder/Expression<Lca/uhn/hl7v2/model/Message;>;"
    invoke-direct {p0}, Lca/uhn/hl7v2/validation/impl/AbstractMessageRule;-><init>()V

    .line 51
    iput-object p1, p0, Lca/uhn/hl7v2/validation/builder/PredicateMessageRule;->testPredicate:Lca/uhn/hl7v2/validation/builder/Predicate;

    .line 52
    iput-object p2, p0, Lca/uhn/hl7v2/validation/builder/PredicateMessageRule;->testExpression:Lca/uhn/hl7v2/validation/builder/Expression;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lca/uhn/hl7v2/validation/builder/PredicateMessageRule;->testExpression:Lca/uhn/hl7v2/validation/builder/Expression;

    invoke-interface {v1}, Lca/uhn/hl7v2/validation/builder/Expression;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " \'%s\' requires to be "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget-object v1, p0, Lca/uhn/hl7v2/validation/builder/PredicateMessageRule;->testPredicate:Lca/uhn/hl7v2/validation/builder/Predicate;

    invoke-interface {v1}, Lca/uhn/hl7v2/validation/builder/Predicate;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/validation/builder/PredicateMessageRule;->setDescription(Ljava/lang/String;)V

    .line 55
    return-void
.end method


# virtual methods
.method public apply(Lca/uhn/hl7v2/model/Message;)[Lca/uhn/hl7v2/validation/ValidationException;
    .locals 3
    .param p1, "msg"    # Lca/uhn/hl7v2/model/Message;

    .line 59
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/validation/builder/PredicateMessageRule;->testExpression:Lca/uhn/hl7v2/validation/builder/Expression;

    invoke-interface {v0, p1}, Lca/uhn/hl7v2/validation/builder/Expression;->evaluate(Lca/uhn/hl7v2/model/Structure;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    .local v0, "subject":Ljava/lang/Object;
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/builder/PredicateMessageRule;->getPredicate()Lca/uhn/hl7v2/validation/builder/Predicate;

    move-result-object v1

    invoke-interface {v1, v0}, Lca/uhn/hl7v2/validation/builder/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v1

    .line 61
    .local v1, "passed":Z
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/builder/PredicateMessageRule;->passed()[Lca/uhn/hl7v2/validation/ValidationException;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lca/uhn/hl7v2/validation/builder/PredicateMessageRule;->testExpression:Lca/uhn/hl7v2/validation/builder/Expression;

    invoke-interface {v2, p1}, Lca/uhn/hl7v2/validation/builder/Expression;->getLocation(Lca/uhn/hl7v2/model/Structure;)Lca/uhn/hl7v2/Location;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lca/uhn/hl7v2/validation/builder/PredicateMessageRule;->failedWithValue(Ljava/lang/Object;Lca/uhn/hl7v2/Location;)[Lca/uhn/hl7v2/validation/ValidationException;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    .line 62
    .end local v0    # "subject":Ljava/lang/Object;
    .end local v1    # "passed":Z
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/validation/builder/PredicateMessageRule;->failed(Ljava/lang/Exception;)[Lca/uhn/hl7v2/validation/ValidationException;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)[Lca/uhn/hl7v2/validation/ValidationException;
    .locals 0

    .line 1
    check-cast p1, Lca/uhn/hl7v2/model/Message;

    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/validation/builder/PredicateMessageRule;->apply(Lca/uhn/hl7v2/model/Message;)[Lca/uhn/hl7v2/validation/ValidationException;

    move-result-object p1

    return-object p1
.end method

.method public getPredicate()Lca/uhn/hl7v2/validation/builder/Predicate;
    .locals 1

    .line 68
    iget-object v0, p0, Lca/uhn/hl7v2/validation/builder/PredicateMessageRule;->testPredicate:Lca/uhn/hl7v2/validation/builder/Predicate;

    return-object v0
.end method
