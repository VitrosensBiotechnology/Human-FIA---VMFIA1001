.class Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableMessageVisitor;
.super Lca/uhn/hl7v2/model/Unmodifiable$Delegating;
.source "Unmodifiable.java"

# interfaces
.implements Lca/uhn/hl7v2/model/MessageVisitor;
.implements Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/model/Unmodifiable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmodifiableMessageVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lca/uhn/hl7v2/model/Unmodifiable$Delegating<",
        "Lca/uhn/hl7v2/model/MessageVisitor;",
        ">;",
        "Lca/uhn/hl7v2/model/MessageVisitor;",
        "Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableModel;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/MessageVisitor;)V
    .locals 0
    .param p1, "delegate"    # Lca/uhn/hl7v2/model/MessageVisitor;

    .line 533
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/Unmodifiable$Delegating;-><init>(Ljava/lang/Object;)V

    .line 534
    return-void
.end method


# virtual methods
.method public end(Lca/uhn/hl7v2/model/Composite;Lca/uhn/hl7v2/Location;)Z
    .locals 2
    .param p1, "type"    # Lca/uhn/hl7v2/model/Composite;
    .param p2, "location"    # Lca/uhn/hl7v2/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 575
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableMessageVisitor;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/MessageVisitor;

    invoke-static {p1}, Lca/uhn/hl7v2/model/Unmodifiable;->access$2(Lca/uhn/hl7v2/model/Type;)Lca/uhn/hl7v2/model/Type;

    move-result-object v1

    check-cast v1, Lca/uhn/hl7v2/model/Composite;

    invoke-interface {v0, v1, p2}, Lca/uhn/hl7v2/model/MessageVisitor;->end(Lca/uhn/hl7v2/model/Composite;Lca/uhn/hl7v2/Location;)Z

    move-result v0

    return v0
.end method

.method public end(Lca/uhn/hl7v2/model/Field;Lca/uhn/hl7v2/Location;)Z
    .locals 1
    .param p1, "field"    # Lca/uhn/hl7v2/model/Field;
    .param p2, "location"    # Lca/uhn/hl7v2/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 567
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableMessageVisitor;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/MessageVisitor;

    invoke-interface {v0, p1, p2}, Lca/uhn/hl7v2/model/MessageVisitor;->end(Lca/uhn/hl7v2/model/Field;Lca/uhn/hl7v2/Location;)Z

    move-result v0

    return v0
.end method

.method public end(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/Location;)Z
    .locals 2
    .param p1, "group"    # Lca/uhn/hl7v2/model/Group;
    .param p2, "location"    # Lca/uhn/hl7v2/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 549
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableMessageVisitor;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/MessageVisitor;

    invoke-static {p1}, Lca/uhn/hl7v2/model/Unmodifiable;->access$1(Lca/uhn/hl7v2/model/Structure;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v1

    check-cast v1, Lca/uhn/hl7v2/model/Group;

    invoke-interface {v0, v1, p2}, Lca/uhn/hl7v2/model/MessageVisitor;->end(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/Location;)Z

    move-result v0

    return v0
.end method

.method public end(Lca/uhn/hl7v2/model/Message;)Z
    .locals 2
    .param p1, "message"    # Lca/uhn/hl7v2/model/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 541
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableMessageVisitor;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/MessageVisitor;

    invoke-static {p1}, Lca/uhn/hl7v2/model/Unmodifiable;->unmodifiableMessage(Lca/uhn/hl7v2/model/Message;)Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lca/uhn/hl7v2/model/MessageVisitor;->end(Lca/uhn/hl7v2/model/Message;)Z

    move-result v0

    return v0
.end method

.method public end(Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/Location;)Z
    .locals 2
    .param p1, "segment"    # Lca/uhn/hl7v2/model/Segment;
    .param p2, "location"    # Lca/uhn/hl7v2/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 557
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableMessageVisitor;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/MessageVisitor;

    invoke-static {p1}, Lca/uhn/hl7v2/model/Unmodifiable;->access$1(Lca/uhn/hl7v2/model/Structure;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v1

    check-cast v1, Lca/uhn/hl7v2/model/Segment;

    invoke-interface {v0, v1, p2}, Lca/uhn/hl7v2/model/MessageVisitor;->end(Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/Location;)Z

    move-result v0

    return v0
.end method

.method public start(Lca/uhn/hl7v2/model/Composite;Lca/uhn/hl7v2/Location;)Z
    .locals 2
    .param p1, "type"    # Lca/uhn/hl7v2/model/Composite;
    .param p2, "location"    # Lca/uhn/hl7v2/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 571
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableMessageVisitor;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/MessageVisitor;

    invoke-static {p1}, Lca/uhn/hl7v2/model/Unmodifiable;->access$2(Lca/uhn/hl7v2/model/Type;)Lca/uhn/hl7v2/model/Type;

    move-result-object v1

    check-cast v1, Lca/uhn/hl7v2/model/Composite;

    invoke-interface {v0, v1, p2}, Lca/uhn/hl7v2/model/MessageVisitor;->start(Lca/uhn/hl7v2/model/Composite;Lca/uhn/hl7v2/Location;)Z

    move-result v0

    return v0
.end method

.method public start(Lca/uhn/hl7v2/model/Field;Lca/uhn/hl7v2/Location;)Z
    .locals 1
    .param p1, "field"    # Lca/uhn/hl7v2/model/Field;
    .param p2, "location"    # Lca/uhn/hl7v2/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 562
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableMessageVisitor;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/MessageVisitor;

    invoke-interface {v0, p1, p2}, Lca/uhn/hl7v2/model/MessageVisitor;->start(Lca/uhn/hl7v2/model/Field;Lca/uhn/hl7v2/Location;)Z

    move-result v0

    return v0
.end method

.method public start(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/Location;)Z
    .locals 2
    .param p1, "group"    # Lca/uhn/hl7v2/model/Group;
    .param p2, "location"    # Lca/uhn/hl7v2/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 545
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableMessageVisitor;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/MessageVisitor;

    invoke-static {p1}, Lca/uhn/hl7v2/model/Unmodifiable;->access$1(Lca/uhn/hl7v2/model/Structure;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v1

    check-cast v1, Lca/uhn/hl7v2/model/Group;

    invoke-interface {v0, v1, p2}, Lca/uhn/hl7v2/model/MessageVisitor;->start(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/Location;)Z

    move-result v0

    return v0
.end method

.method public start(Lca/uhn/hl7v2/model/Message;)Z
    .locals 2
    .param p1, "message"    # Lca/uhn/hl7v2/model/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 537
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableMessageVisitor;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/MessageVisitor;

    invoke-static {p1}, Lca/uhn/hl7v2/model/Unmodifiable;->unmodifiableMessage(Lca/uhn/hl7v2/model/Message;)Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lca/uhn/hl7v2/model/MessageVisitor;->start(Lca/uhn/hl7v2/model/Message;)Z

    move-result v0

    return v0
.end method

.method public start(Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/Location;)Z
    .locals 2
    .param p1, "segment"    # Lca/uhn/hl7v2/model/Segment;
    .param p2, "location"    # Lca/uhn/hl7v2/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 553
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableMessageVisitor;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/MessageVisitor;

    invoke-static {p1}, Lca/uhn/hl7v2/model/Unmodifiable;->access$1(Lca/uhn/hl7v2/model/Structure;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v1

    check-cast v1, Lca/uhn/hl7v2/model/Segment;

    invoke-interface {v0, v1, p2}, Lca/uhn/hl7v2/model/MessageVisitor;->start(Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/Location;)Z

    move-result v0

    return v0
.end method

.method public visit(Lca/uhn/hl7v2/model/Primitive;Lca/uhn/hl7v2/Location;)Z
    .locals 2
    .param p1, "type"    # Lca/uhn/hl7v2/model/Primitive;
    .param p2, "location"    # Lca/uhn/hl7v2/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 579
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableMessageVisitor;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/MessageVisitor;

    invoke-static {p1}, Lca/uhn/hl7v2/model/Unmodifiable;->access$2(Lca/uhn/hl7v2/model/Type;)Lca/uhn/hl7v2/model/Type;

    move-result-object v1

    check-cast v1, Lca/uhn/hl7v2/model/Primitive;

    invoke-interface {v0, v1, p2}, Lca/uhn/hl7v2/model/MessageVisitor;->visit(Lca/uhn/hl7v2/model/Primitive;Lca/uhn/hl7v2/Location;)Z

    move-result v0

    return v0
.end method
