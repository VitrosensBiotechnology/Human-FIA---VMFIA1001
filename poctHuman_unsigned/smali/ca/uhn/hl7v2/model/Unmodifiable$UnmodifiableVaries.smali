.class Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableVaries;
.super Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableType;
.source "Unmodifiable.java"

# interfaces
.implements Lca/uhn/hl7v2/model/Variable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/model/Unmodifiable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmodifiableVaries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableType<",
        "Lca/uhn/hl7v2/model/Variable;",
        ">;",
        "Lca/uhn/hl7v2/model/Variable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Variable;)V
    .locals 0
    .param p1, "delegate"    # Lca/uhn/hl7v2/model/Variable;

    .line 471
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableType;-><init>(Lca/uhn/hl7v2/model/Type;)V

    .line 472
    return-void
.end method


# virtual methods
.method public getData()Lca/uhn/hl7v2/model/Type;
    .locals 1

    .line 475
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableVaries;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Variable;

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Variable;->getData()Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    invoke-static {v0}, Lca/uhn/hl7v2/model/Unmodifiable;->access$2(Lca/uhn/hl7v2/model/Type;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    return-object v0
.end method

.method public setData(Lca/uhn/hl7v2/model/Type;)V
    .locals 2
    .param p1, "data"    # Lca/uhn/hl7v2/model/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 479
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This Varies is unmodifiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
