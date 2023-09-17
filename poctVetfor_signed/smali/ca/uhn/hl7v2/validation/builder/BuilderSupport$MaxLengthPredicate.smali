.class Lca/uhn/hl7v2/validation/builder/BuilderSupport$MaxLengthPredicate;
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
    name = "MaxLengthPredicate"
.end annotation


# instance fields
.field private maxLength:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxSize"    # I

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    const v0, 0x7fffffff

    iput v0, p0, Lca/uhn/hl7v2/validation/builder/BuilderSupport$MaxLengthPredicate;->maxLength:I

    .line 330
    iput p1, p0, Lca/uhn/hl7v2/validation/builder/BuilderSupport$MaxLengthPredicate;->maxLength:I

    .line 331
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

    .line 334
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lca/uhn/hl7v2/validation/builder/BuilderSupport$MaxLengthPredicate;->maxLength:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "shorter than "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lca/uhn/hl7v2/validation/builder/BuilderSupport$MaxLengthPredicate;->maxLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " characters"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
