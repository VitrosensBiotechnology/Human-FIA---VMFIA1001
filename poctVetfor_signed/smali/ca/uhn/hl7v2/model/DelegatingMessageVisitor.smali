.class public Lca/uhn/hl7v2/model/DelegatingMessageVisitor;
.super Ljava/lang/Object;
.source "DelegatingMessageVisitor.java"

# interfaces
.implements Lca/uhn/hl7v2/model/MessageVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lca/uhn/hl7v2/model/MessageVisitor;",
        ">",
        "Ljava/lang/Object;",
        "Lca/uhn/hl7v2/model/MessageVisitor;"
    }
.end annotation


# static fields
.field protected static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private delegate:Lca/uhn/hl7v2/model/MessageVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lca/uhn/hl7v2/model/DelegatingMessageVisitor;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/model/DelegatingMessageVisitor;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/model/MessageVisitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 46
    .local p0, "this":Lca/uhn/hl7v2/model/DelegatingMessageVisitor;, "Lca/uhn/hl7v2/model/DelegatingMessageVisitor<TT;>;"
    .local p1, "delegate":Lca/uhn/hl7v2/model/MessageVisitor;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lca/uhn/hl7v2/model/DelegatingMessageVisitor;->delegate:Lca/uhn/hl7v2/model/MessageVisitor;

    .line 48
    return-void
.end method


# virtual methods
.method public end(Lca/uhn/hl7v2/model/Composite;Lca/uhn/hl7v2/Location;)Z
    .locals 1
    .param p1, "type"    # Lca/uhn/hl7v2/model/Composite;
    .param p2, "location"    # Lca/uhn/hl7v2/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 94
    .local p0, "this":Lca/uhn/hl7v2/model/DelegatingMessageVisitor;, "Lca/uhn/hl7v2/model/DelegatingMessageVisitor<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/model/DelegatingMessageVisitor;->delegate:Lca/uhn/hl7v2/model/MessageVisitor;

    invoke-interface {v0, p1, p2}, Lca/uhn/hl7v2/model/MessageVisitor;->end(Lca/uhn/hl7v2/model/Composite;Lca/uhn/hl7v2/Location;)Z

    move-result v0

    return v0
.end method

.method public end(Lca/uhn/hl7v2/model/Field;Lca/uhn/hl7v2/Location;)Z
    .locals 1
    .param p1, "Field"    # Lca/uhn/hl7v2/model/Field;
    .param p2, "location"    # Lca/uhn/hl7v2/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 86
    .local p0, "this":Lca/uhn/hl7v2/model/DelegatingMessageVisitor;, "Lca/uhn/hl7v2/model/DelegatingMessageVisitor<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/model/DelegatingMessageVisitor;->delegate:Lca/uhn/hl7v2/model/MessageVisitor;

    invoke-interface {v0, p1, p2}, Lca/uhn/hl7v2/model/MessageVisitor;->end(Lca/uhn/hl7v2/model/Field;Lca/uhn/hl7v2/Location;)Z

    move-result v0

    return v0
.end method

.method public end(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/Location;)Z
    .locals 1
    .param p1, "group"    # Lca/uhn/hl7v2/model/Group;
    .param p2, "location"    # Lca/uhn/hl7v2/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 70
    .local p0, "this":Lca/uhn/hl7v2/model/DelegatingMessageVisitor;, "Lca/uhn/hl7v2/model/DelegatingMessageVisitor<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/model/DelegatingMessageVisitor;->delegate:Lca/uhn/hl7v2/model/MessageVisitor;

    invoke-interface {v0, p1, p2}, Lca/uhn/hl7v2/model/MessageVisitor;->end(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/Location;)Z

    move-result v0

    return v0
.end method

.method public end(Lca/uhn/hl7v2/model/Message;)Z
    .locals 1
    .param p1, "message"    # Lca/uhn/hl7v2/model/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 62
    .local p0, "this":Lca/uhn/hl7v2/model/DelegatingMessageVisitor;, "Lca/uhn/hl7v2/model/DelegatingMessageVisitor<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/model/DelegatingMessageVisitor;->delegate:Lca/uhn/hl7v2/model/MessageVisitor;

    invoke-interface {v0, p1}, Lca/uhn/hl7v2/model/MessageVisitor;->end(Lca/uhn/hl7v2/model/Message;)Z

    move-result v0

    return v0
.end method

.method public end(Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/Location;)Z
    .locals 1
    .param p1, "segment"    # Lca/uhn/hl7v2/model/Segment;
    .param p2, "location"    # Lca/uhn/hl7v2/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 78
    .local p0, "this":Lca/uhn/hl7v2/model/DelegatingMessageVisitor;, "Lca/uhn/hl7v2/model/DelegatingMessageVisitor<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/model/DelegatingMessageVisitor;->delegate:Lca/uhn/hl7v2/model/MessageVisitor;

    invoke-interface {v0, p1, p2}, Lca/uhn/hl7v2/model/MessageVisitor;->end(Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/Location;)Z

    move-result v0

    return v0
.end method

.method public getDelegate()Lca/uhn/hl7v2/model/MessageVisitor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 54
    .local p0, "this":Lca/uhn/hl7v2/model/DelegatingMessageVisitor;, "Lca/uhn/hl7v2/model/DelegatingMessageVisitor<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/model/DelegatingMessageVisitor;->delegate:Lca/uhn/hl7v2/model/MessageVisitor;

    return-object v0
.end method

.method public start(Lca/uhn/hl7v2/model/Composite;Lca/uhn/hl7v2/Location;)Z
    .locals 1
    .param p1, "type"    # Lca/uhn/hl7v2/model/Composite;
    .param p2, "location"    # Lca/uhn/hl7v2/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 90
    .local p0, "this":Lca/uhn/hl7v2/model/DelegatingMessageVisitor;, "Lca/uhn/hl7v2/model/DelegatingMessageVisitor<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/model/DelegatingMessageVisitor;->delegate:Lca/uhn/hl7v2/model/MessageVisitor;

    invoke-interface {v0, p1, p2}, Lca/uhn/hl7v2/model/MessageVisitor;->start(Lca/uhn/hl7v2/model/Composite;Lca/uhn/hl7v2/Location;)Z

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

    .line 82
    .local p0, "this":Lca/uhn/hl7v2/model/DelegatingMessageVisitor;, "Lca/uhn/hl7v2/model/DelegatingMessageVisitor<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/model/DelegatingMessageVisitor;->delegate:Lca/uhn/hl7v2/model/MessageVisitor;

    invoke-interface {v0, p1, p2}, Lca/uhn/hl7v2/model/MessageVisitor;->start(Lca/uhn/hl7v2/model/Field;Lca/uhn/hl7v2/Location;)Z

    move-result v0

    return v0
.end method

.method public start(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/Location;)Z
    .locals 1
    .param p1, "group"    # Lca/uhn/hl7v2/model/Group;
    .param p2, "location"    # Lca/uhn/hl7v2/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 66
    .local p0, "this":Lca/uhn/hl7v2/model/DelegatingMessageVisitor;, "Lca/uhn/hl7v2/model/DelegatingMessageVisitor<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/model/DelegatingMessageVisitor;->delegate:Lca/uhn/hl7v2/model/MessageVisitor;

    invoke-interface {v0, p1, p2}, Lca/uhn/hl7v2/model/MessageVisitor;->start(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/Location;)Z

    move-result v0

    return v0
.end method

.method public start(Lca/uhn/hl7v2/model/Message;)Z
    .locals 1
    .param p1, "message"    # Lca/uhn/hl7v2/model/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 58
    .local p0, "this":Lca/uhn/hl7v2/model/DelegatingMessageVisitor;, "Lca/uhn/hl7v2/model/DelegatingMessageVisitor<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/model/DelegatingMessageVisitor;->delegate:Lca/uhn/hl7v2/model/MessageVisitor;

    invoke-interface {v0, p1}, Lca/uhn/hl7v2/model/MessageVisitor;->start(Lca/uhn/hl7v2/model/Message;)Z

    move-result v0

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

    .line 74
    .local p0, "this":Lca/uhn/hl7v2/model/DelegatingMessageVisitor;, "Lca/uhn/hl7v2/model/DelegatingMessageVisitor<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/model/DelegatingMessageVisitor;->delegate:Lca/uhn/hl7v2/model/MessageVisitor;

    invoke-interface {v0, p1, p2}, Lca/uhn/hl7v2/model/MessageVisitor;->start(Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/Location;)Z

    move-result v0

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

    .line 98
    .local p0, "this":Lca/uhn/hl7v2/model/DelegatingMessageVisitor;, "Lca/uhn/hl7v2/model/DelegatingMessageVisitor<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/model/DelegatingMessageVisitor;->delegate:Lca/uhn/hl7v2/model/MessageVisitor;

    invoke-interface {v0, p1, p2}, Lca/uhn/hl7v2/model/MessageVisitor;->visit(Lca/uhn/hl7v2/model/Primitive;Lca/uhn/hl7v2/Location;)Z

    move-result v0

    return v0
.end method
