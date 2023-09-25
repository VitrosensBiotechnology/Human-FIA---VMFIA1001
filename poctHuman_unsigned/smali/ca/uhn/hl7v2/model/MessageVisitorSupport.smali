.class public Lca/uhn/hl7v2/model/MessageVisitorSupport;
.super Ljava/lang/Object;
.source "MessageVisitorSupport.java"

# interfaces
.implements Lca/uhn/hl7v2/model/MessageVisitor;


# static fields
.field protected static final LOG:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lca/uhn/hl7v2/model/MessageVisitorSupport;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/model/MessageVisitorSupport;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 88
    sget-object v0, Lca/uhn/hl7v2/model/MessageVisitorSupport;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Leave composite {} {}"

    invoke-interface {v0, v1, p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public end(Lca/uhn/hl7v2/model/Field;Lca/uhn/hl7v2/Location;)Z
    .locals 2
    .param p1, "field"    # Lca/uhn/hl7v2/model/Field;
    .param p2, "location"    # Lca/uhn/hl7v2/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 78
    sget-object v0, Lca/uhn/hl7v2/model/MessageVisitorSupport;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Leave field {} {}"

    invoke-interface {v0, v1, p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    const/4 v0, 0x1

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

    .line 58
    sget-object v0, Lca/uhn/hl7v2/model/MessageVisitorSupport;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Leave group {} {}"

    invoke-interface {v0, v1, p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    const/4 v0, 0x1

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

    .line 48
    sget-object v0, Lca/uhn/hl7v2/model/MessageVisitorSupport;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Leave message {}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    const/4 v0, 0x1

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

    .line 68
    sget-object v0, Lca/uhn/hl7v2/model/MessageVisitorSupport;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Leave segment {} {}"

    invoke-interface {v0, v1, p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    const/4 v0, 0x1

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

    .line 83
    sget-object v0, Lca/uhn/hl7v2/model/MessageVisitorSupport;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Enter composite {} {}"

    invoke-interface {v0, v1, p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public start(Lca/uhn/hl7v2/model/Field;Lca/uhn/hl7v2/Location;)Z
    .locals 2
    .param p1, "field"    # Lca/uhn/hl7v2/model/Field;
    .param p2, "location"    # Lca/uhn/hl7v2/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 73
    sget-object v0, Lca/uhn/hl7v2/model/MessageVisitorSupport;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Enter field {} {}"

    invoke-interface {v0, v1, p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    const/4 v0, 0x1

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

    .line 53
    sget-object v0, Lca/uhn/hl7v2/model/MessageVisitorSupport;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Enter group {} {}"

    invoke-interface {v0, v1, p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    const/4 v0, 0x1

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

    .line 43
    sget-object v0, Lca/uhn/hl7v2/model/MessageVisitorSupport;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Enter message {}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    const/4 v0, 0x1

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

    .line 63
    sget-object v0, Lca/uhn/hl7v2/model/MessageVisitorSupport;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Enter segment {} {}"

    invoke-interface {v0, v1, p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    const/4 v0, 0x1

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

    .line 93
    sget-object v0, Lca/uhn/hl7v2/model/MessageVisitorSupport;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Visit primitive {} {}"

    invoke-interface {v0, v1, p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    const/4 v0, 0x1

    return v0
.end method
