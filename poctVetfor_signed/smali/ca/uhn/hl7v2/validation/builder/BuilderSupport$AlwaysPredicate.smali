.class Lca/uhn/hl7v2/validation/builder/BuilderSupport$AlwaysPredicate;
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
    name = "AlwaysPredicate"
.end annotation


# instance fields
.field private b:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput-boolean p1, p0, Lca/uhn/hl7v2/validation/builder/BuilderSupport$AlwaysPredicate;->b:Z

    .line 313
    return-void
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/validation/ValidationException;
        }
    .end annotation

    .line 316
    iget-boolean v0, p0, Lca/uhn/hl7v2/validation/builder/BuilderSupport$AlwaysPredicate;->b:Z

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 320
    iget-boolean v0, p0, Lca/uhn/hl7v2/validation/builder/BuilderSupport$AlwaysPredicate;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "anything"

    goto :goto_0

    :cond_0
    const-string v0, "nothing"

    :goto_0
    return-object v0
.end method
