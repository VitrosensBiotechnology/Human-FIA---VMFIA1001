.class Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableVisitable;
.super Lca/uhn/hl7v2/model/Unmodifiable$Delegating;
.source "Unmodifiable.java"

# interfaces
.implements Lca/uhn/hl7v2/model/Visitable;
.implements Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/model/Unmodifiable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmodifiableVisitable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lca/uhn/hl7v2/model/Visitable;",
        ">",
        "Lca/uhn/hl7v2/model/Unmodifiable$Delegating<",
        "TS;>;",
        "Lca/uhn/hl7v2/model/Visitable;",
        "Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableModel;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Visitable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 171
    .local p0, "this":Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableVisitable;, "Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableVisitable<TS;>;"
    .local p1, "delegate":Lca/uhn/hl7v2/model/Visitable;, "TS;"
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/Unmodifiable$Delegating;-><init>(Ljava/lang/Object;)V

    .line 172
    return-void
.end method


# virtual methods
.method public accept(Lca/uhn/hl7v2/model/MessageVisitor;Lca/uhn/hl7v2/Location;)Z
    .locals 2
    .param p1, "visitor"    # Lca/uhn/hl7v2/model/MessageVisitor;
    .param p2, "currentLocation"    # Lca/uhn/hl7v2/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 175
    .local p0, "this":Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableVisitable;, "Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableVisitable<TS;>;"
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableVisitable;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Visitable;

    invoke-static {p1}, Lca/uhn/hl7v2/model/Unmodifiable;->access$0(Lca/uhn/hl7v2/model/MessageVisitor;)Lca/uhn/hl7v2/model/MessageVisitor;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lca/uhn/hl7v2/model/Visitable;->accept(Lca/uhn/hl7v2/model/MessageVisitor;Lca/uhn/hl7v2/Location;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 183
    .local p0, "this":Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableVisitable;, "Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableVisitable<TS;>;"
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableVisitable;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Visitable;

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Visitable;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public provideLocation(Lca/uhn/hl7v2/Location;II)Lca/uhn/hl7v2/Location;
    .locals 1
    .param p1, "parentLocation"    # Lca/uhn/hl7v2/Location;
    .param p2, "index"    # I
    .param p3, "repetition"    # I

    .line 179
    .local p0, "this":Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableVisitable;, "Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableVisitable<TS;>;"
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableVisitable;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Visitable;

    invoke-interface {v0, p1, p2, p3}, Lca/uhn/hl7v2/model/Visitable;->provideLocation(Lca/uhn/hl7v2/Location;II)Lca/uhn/hl7v2/Location;

    move-result-object v0

    return-object v0
.end method
