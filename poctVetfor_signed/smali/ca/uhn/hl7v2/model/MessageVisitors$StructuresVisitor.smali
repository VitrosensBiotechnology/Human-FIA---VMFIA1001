.class public final Lca/uhn/hl7v2/model/MessageVisitors$StructuresVisitor;
.super Lca/uhn/hl7v2/model/DelegatingMessageVisitor;
.source "MessageVisitors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/model/MessageVisitors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StructuresVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lca/uhn/hl7v2/model/MessageVisitor;",
        ">",
        "Lca/uhn/hl7v2/model/DelegatingMessageVisitor<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lca/uhn/hl7v2/model/MessageVisitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 77
    .local p0, "this":Lca/uhn/hl7v2/model/MessageVisitors$StructuresVisitor;, "Lca/uhn/hl7v2/model/MessageVisitors$StructuresVisitor<TT;>;"
    .local p1, "visitor":Lca/uhn/hl7v2/model/MessageVisitor;, "TT;"
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/DelegatingMessageVisitor;-><init>(Lca/uhn/hl7v2/model/MessageVisitor;)V

    .line 78
    return-void
.end method


# virtual methods
.method public final start(Lca/uhn/hl7v2/model/Composite;Lca/uhn/hl7v2/Location;)Z
    .locals 1
    .param p1, "type"    # Lca/uhn/hl7v2/model/Composite;
    .param p2, "location"    # Lca/uhn/hl7v2/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 88
    .local p0, "this":Lca/uhn/hl7v2/model/MessageVisitors$StructuresVisitor;, "Lca/uhn/hl7v2/model/MessageVisitors$StructuresVisitor<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public start(Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/Location;)Z
    .locals 1
    .param p1, "segment"    # Lca/uhn/hl7v2/model/Segment;
    .param p2, "location"    # Lca/uhn/hl7v2/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 82
    .local p0, "this":Lca/uhn/hl7v2/model/MessageVisitors$StructuresVisitor;, "Lca/uhn/hl7v2/model/MessageVisitors$StructuresVisitor<TT;>;"
    invoke-super {p0, p1, p2}, Lca/uhn/hl7v2/model/DelegatingMessageVisitor;->start(Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/Location;)Z

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public visit(Lca/uhn/hl7v2/model/Primitive;Lca/uhn/hl7v2/Location;)Z
    .locals 1
    .param p1, "type"    # Lca/uhn/hl7v2/model/Primitive;
    .param p2, "location"    # Lca/uhn/hl7v2/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 93
    .local p0, "this":Lca/uhn/hl7v2/model/MessageVisitors$StructuresVisitor;, "Lca/uhn/hl7v2/model/MessageVisitors$StructuresVisitor<TT;>;"
    const/4 v0, 0x0

    return v0
.end method
