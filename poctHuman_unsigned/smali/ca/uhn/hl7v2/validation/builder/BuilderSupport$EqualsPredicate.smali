.class Lca/uhn/hl7v2/validation/builder/BuilderSupport$EqualsPredicate;
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
    name = "EqualsPredicate"
.end annotation


# instance fields
.field private expected:Ljava/lang/Object;

.field private ignoresCase:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "expected"    # Ljava/lang/Object;

    .line 402
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lca/uhn/hl7v2/validation/builder/BuilderSupport$EqualsPredicate;-><init>(Ljava/lang/Object;Z)V

    .line 403
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "ignoresCase"    # Z

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    iput-object p1, p0, Lca/uhn/hl7v2/validation/builder/BuilderSupport$EqualsPredicate;->expected:Ljava/lang/Object;

    .line 408
    iput-boolean p2, p0, Lca/uhn/hl7v2/validation/builder/BuilderSupport$EqualsPredicate;->ignoresCase:Z

    .line 409
    return-void
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/validation/ValidationException;
        }
    .end annotation

    .line 412
    iget-boolean v0, p0, Lca/uhn/hl7v2/validation/builder/BuilderSupport$EqualsPredicate;->ignoresCase:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 413
    if-nez p1, :cond_0

    iget-object v0, p0, Lca/uhn/hl7v2/validation/builder/BuilderSupport$EqualsPredicate;->expected:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 414
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lca/uhn/hl7v2/validation/builder/BuilderSupport$EqualsPredicate;->expected:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 413
    :cond_1
    return v2

    :cond_2
    :goto_0
    return v1

    .line 415
    :cond_3
    if-nez p1, :cond_4

    iget-object v0, p0, Lca/uhn/hl7v2/validation/builder/BuilderSupport$EqualsPredicate;->expected:Ljava/lang/Object;

    if-eqz v0, :cond_5

    :cond_4
    if-eqz p1, :cond_6

    iget-object v0, p0, Lca/uhn/hl7v2/validation/builder/BuilderSupport$EqualsPredicate;->expected:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    return v2

    :cond_6
    :goto_1
    return v1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "equal to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lca/uhn/hl7v2/validation/builder/BuilderSupport$EqualsPredicate;->expected:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
