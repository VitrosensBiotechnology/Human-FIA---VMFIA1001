.class Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiablePrimitive;
.super Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableType;
.source "Unmodifiable.java"

# interfaces
.implements Lca/uhn/hl7v2/model/Primitive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/model/Unmodifiable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmodifiablePrimitive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableType<",
        "Lca/uhn/hl7v2/model/Primitive;",
        ">;",
        "Lca/uhn/hl7v2/model/Primitive;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Primitive;)V
    .locals 0
    .param p1, "delegate"    # Lca/uhn/hl7v2/model/Primitive;

    .line 432
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableType;-><init>(Lca/uhn/hl7v2/model/Type;)V

    .line 433
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 436
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiablePrimitive;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Primitive;

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Primitive;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 440
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This Primitive is unmodifiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
