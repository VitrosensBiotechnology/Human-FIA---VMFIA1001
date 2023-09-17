.class public final Lca/uhn/hl7v2/model/MessageVisitors;
.super Ljava/lang/Object;
.source "MessageVisitors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lca/uhn/hl7v2/model/MessageVisitors$PopulatedVisitor;,
        Lca/uhn/hl7v2/model/MessageVisitors$StructuresVisitor;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static visit(Lca/uhn/hl7v2/model/Visitable;Lca/uhn/hl7v2/model/MessageVisitor;)Lca/uhn/hl7v2/model/MessageVisitor;
    .locals 1
    .param p0, "visitable"    # Lca/uhn/hl7v2/model/Visitable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lca/uhn/hl7v2/model/MessageVisitor;",
            ">(",
            "Lca/uhn/hl7v2/model/Visitable;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 48
    .local p1, "visitor":Lca/uhn/hl7v2/model/MessageVisitor;, "TT;"
    new-instance v0, Lca/uhn/hl7v2/Location;

    invoke-direct {v0}, Lca/uhn/hl7v2/Location;-><init>()V

    invoke-interface {p0, p1, v0}, Lca/uhn/hl7v2/model/Visitable;->accept(Lca/uhn/hl7v2/model/MessageVisitor;Lca/uhn/hl7v2/Location;)Z

    .line 49
    return-object p1
.end method

.method public static visitPopulatedElements(Lca/uhn/hl7v2/model/MessageVisitor;)Lca/uhn/hl7v2/model/MessageVisitors$PopulatedVisitor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lca/uhn/hl7v2/model/MessageVisitor;",
            ">(TT;)",
            "Lca/uhn/hl7v2/model/MessageVisitors$PopulatedVisitor<",
            "TT;>;"
        }
    .end annotation

    .line 70
    .local p0, "visitor":Lca/uhn/hl7v2/model/MessageVisitor;, "TT;"
    new-instance v0, Lca/uhn/hl7v2/model/MessageVisitors$PopulatedVisitor;

    invoke-direct {v0, p0}, Lca/uhn/hl7v2/model/MessageVisitors$PopulatedVisitor;-><init>(Lca/uhn/hl7v2/model/MessageVisitor;)V

    return-object v0
.end method

.method public static visitStructures(Lca/uhn/hl7v2/model/MessageVisitor;)Lca/uhn/hl7v2/model/MessageVisitors$StructuresVisitor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lca/uhn/hl7v2/model/MessageVisitor;",
            ">(TT;)",
            "Lca/uhn/hl7v2/model/MessageVisitors$StructuresVisitor<",
            "TT;>;"
        }
    .end annotation

    .line 58
    .local p0, "visitor":Lca/uhn/hl7v2/model/MessageVisitor;, "TT;"
    new-instance v0, Lca/uhn/hl7v2/model/MessageVisitors$StructuresVisitor;

    invoke-direct {v0, p0}, Lca/uhn/hl7v2/model/MessageVisitors$StructuresVisitor;-><init>(Lca/uhn/hl7v2/model/MessageVisitor;)V

    return-object v0
.end method
