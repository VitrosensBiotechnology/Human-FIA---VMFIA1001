.class abstract Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableType;
.super Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableVisitable;
.source "Unmodifiable.java"

# interfaces
.implements Lca/uhn/hl7v2/model/Type;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/model/Unmodifiable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "UnmodifiableType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lca/uhn/hl7v2/model/Type;",
        ">",
        "Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableVisitable<",
        "TT;>;",
        "Lca/uhn/hl7v2/model/Type;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 396
    .local p0, "this":Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableType;, "Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableType<TT;>;"
    .local p1, "delegate":Lca/uhn/hl7v2/model/Type;, "TT;"
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableVisitable;-><init>(Lca/uhn/hl7v2/model/Visitable;)V

    .line 397
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 420
    .local p0, "this":Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableType;, "Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableType<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This type is unmodifiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 416
    .local p0, "this":Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableType;, "Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableType<TT;>;"
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableType;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Type;

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Type;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtraComponents()Lca/uhn/hl7v2/model/ExtraComponents;
    .locals 1

    .line 404
    .local p0, "this":Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableType;, "Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableType<TT;>;"
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableType;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Type;

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Type;->getExtraComponents()Lca/uhn/hl7v2/model/ExtraComponents;

    move-result-object v0

    invoke-static {v0}, Lca/uhn/hl7v2/model/Unmodifiable;->access$3(Lca/uhn/hl7v2/model/ExtraComponents;)Lca/uhn/hl7v2/model/ExtraComponents;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Lca/uhn/hl7v2/model/Message;
    .locals 1

    .line 408
    .local p0, "this":Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableType;, "Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableType<TT;>;"
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableType;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Type;

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Type;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    invoke-static {v0}, Lca/uhn/hl7v2/model/Unmodifiable;->unmodifiableMessage(Lca/uhn/hl7v2/model/Message;)Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 400
    .local p0, "this":Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableType;, "Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableType<TT;>;"
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableType;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Type;

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Type;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 412
    .local p0, "this":Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableType;, "Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableType<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This type is unmodifiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public provideLocation(Lca/uhn/hl7v2/Location;II)Lca/uhn/hl7v2/Location;
    .locals 1
    .param p1, "parentLocation"    # Lca/uhn/hl7v2/Location;
    .param p2, "index"    # I
    .param p3, "repetition"    # I

    .line 424
    .local p0, "this":Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableType;, "Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableType<TT;>;"
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableType;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Type;

    invoke-interface {v0, p1, p2, p3}, Lca/uhn/hl7v2/model/Type;->provideLocation(Lca/uhn/hl7v2/Location;II)Lca/uhn/hl7v2/Location;

    move-result-object v0

    return-object v0
.end method
