.class abstract Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableStructure;
.super Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableVisitable;
.source "Unmodifiable.java"

# interfaces
.implements Lca/uhn/hl7v2/model/Structure;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/model/Unmodifiable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "UnmodifiableStructure"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lca/uhn/hl7v2/model/Structure;",
        ">",
        "Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableVisitable<",
        "TS;>;",
        "Lca/uhn/hl7v2/model/Structure;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lca/uhn/hl7v2/model/Structure;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 192
    .local p0, "this":Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableStructure;, "Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableStructure<TS;>;"
    .local p1, "delegate":Lca/uhn/hl7v2/model/Structure;, "TS;"
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableVisitable;-><init>(Lca/uhn/hl7v2/model/Visitable;)V

    .line 193
    return-void
.end method

.method synthetic constructor <init>(Lca/uhn/hl7v2/model/Structure;Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableStructure;)V
    .locals 0

    .line 191
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableStructure;-><init>(Lca/uhn/hl7v2/model/Structure;)V

    return-void
.end method


# virtual methods
.method public getMessage()Lca/uhn/hl7v2/model/Message;
    .locals 1

    .line 196
    .local p0, "this":Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableStructure;, "Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableStructure<TS;>;"
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableStructure;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Structure;

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Structure;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 200
    .local p0, "this":Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableStructure;, "Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableStructure<TS;>;"
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableStructure;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Structure;

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Structure;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lca/uhn/hl7v2/model/Group;
    .locals 1

    .line 204
    .local p0, "this":Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableStructure;, "Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableStructure<TS;>;"
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableStructure;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Structure;

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Structure;->getParent()Lca/uhn/hl7v2/model/Group;

    move-result-object v0

    invoke-static {v0}, Lca/uhn/hl7v2/model/Unmodifiable;->access$1(Lca/uhn/hl7v2/model/Structure;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Group;

    return-object v0
.end method
