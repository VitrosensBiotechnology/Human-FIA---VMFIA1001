.class public final Lca/uhn/hl7v2/model/Unmodifiable;
.super Ljava/lang/Object;
.source "Unmodifiable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lca/uhn/hl7v2/model/Unmodifiable$Delegating;,
        Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableComposite;,
        Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableExtraComponents;,
        Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableGroup;,
        Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableMessage;,
        Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableMessageVisitor;,
        Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableModel;,
        Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiablePrimitive;,
        Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableSegment;,
        Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableStructure;,
        Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableType;,
        Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableVaries;,
        Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableVisitable;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method static synthetic access$0(Lca/uhn/hl7v2/model/MessageVisitor;)Lca/uhn/hl7v2/model/MessageVisitor;
    .locals 0

    .line 109
    invoke-static {p0}, Lca/uhn/hl7v2/model/Unmodifiable;->unmodifiableVisitor(Lca/uhn/hl7v2/model/MessageVisitor;)Lca/uhn/hl7v2/model/MessageVisitor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1(Lca/uhn/hl7v2/model/Structure;)Lca/uhn/hl7v2/model/Structure;
    .locals 0

    .line 101
    invoke-static {p0}, Lca/uhn/hl7v2/model/Unmodifiable;->unmodifiableStructure(Lca/uhn/hl7v2/model/Structure;)Lca/uhn/hl7v2/model/Structure;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2(Lca/uhn/hl7v2/model/Type;)Lca/uhn/hl7v2/model/Type;
    .locals 0

    .line 93
    invoke-static {p0}, Lca/uhn/hl7v2/model/Unmodifiable;->unmodifiableType(Lca/uhn/hl7v2/model/Type;)Lca/uhn/hl7v2/model/Type;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3(Lca/uhn/hl7v2/model/ExtraComponents;)Lca/uhn/hl7v2/model/ExtraComponents;
    .locals 0

    .line 114
    invoke-static {p0}, Lca/uhn/hl7v2/model/Unmodifiable;->unmodifiableExtraComponents(Lca/uhn/hl7v2/model/ExtraComponents;)Lca/uhn/hl7v2/model/ExtraComponents;

    move-result-object p0

    return-object p0
.end method

.method public static isUnmodifiable(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .line 88
    instance-of v0, p0, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableModel;

    return v0
.end method

.method private static unmodifiableExtraComponents(Lca/uhn/hl7v2/model/ExtraComponents;)Lca/uhn/hl7v2/model/ExtraComponents;
    .locals 1
    .param p0, "ec"    # Lca/uhn/hl7v2/model/ExtraComponents;

    .line 115
    invoke-static {p0}, Lca/uhn/hl7v2/model/Unmodifiable;->isUnmodifiable(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableExtraComponents;

    invoke-direct {v0, p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableExtraComponents;-><init>(Lca/uhn/hl7v2/model/ExtraComponents;)V

    :goto_0
    return-object v0
.end method

.method public static unmodifiableMessage(Lca/uhn/hl7v2/HapiContext;Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;
    .locals 2
    .param p0, "context"    # Lca/uhn/hl7v2/HapiContext;
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 77
    invoke-interface {p0}, Lca/uhn/hl7v2/HapiContext;->getGenericParser()Lca/uhn/hl7v2/parser/GenericParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lca/uhn/hl7v2/parser/GenericParser;->parse(Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    .line 78
    .local v0, "msg":Lca/uhn/hl7v2/model/Message;
    new-instance v1, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableMessage;

    invoke-direct {v1, v0, p1}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableMessage;-><init>(Lca/uhn/hl7v2/model/Message;Ljava/lang/String;)V

    return-object v1
.end method

.method public static unmodifiableMessage(Lca/uhn/hl7v2/model/Message;)Lca/uhn/hl7v2/model/Message;
    .locals 1
    .param p0, "msg"    # Lca/uhn/hl7v2/model/Message;

    .line 63
    invoke-static {p0}, Lca/uhn/hl7v2/model/Unmodifiable;->isUnmodifiable(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableMessage;

    invoke-direct {v0, p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableMessage;-><init>(Lca/uhn/hl7v2/model/Message;)V

    :goto_0
    return-object v0
.end method

.method private static unmodifiableStructure(Lca/uhn/hl7v2/model/Structure;)Lca/uhn/hl7v2/model/Structure;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lca/uhn/hl7v2/model/Structure;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 102
    .local p0, "structure":Lca/uhn/hl7v2/model/Structure;, "TT;"
    invoke-static {p0}, Lca/uhn/hl7v2/model/Unmodifiable;->isUnmodifiable(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 103
    :cond_0
    instance-of v0, p0, Lca/uhn/hl7v2/model/Message;

    if-eqz v0, :cond_1

    new-instance v0, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableMessage;

    move-object v1, p0

    check-cast v1, Lca/uhn/hl7v2/model/Message;

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableMessage;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0

    .line 104
    :cond_1
    instance-of v0, p0, Lca/uhn/hl7v2/model/Group;

    if-eqz v0, :cond_2

    new-instance v0, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableGroup;

    move-object v1, p0

    check-cast v1, Lca/uhn/hl7v2/model/Group;

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableGroup;-><init>(Lca/uhn/hl7v2/model/Group;)V

    return-object v0

    .line 105
    :cond_2
    new-instance v0, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableSegment;

    move-object v1, p0

    check-cast v1, Lca/uhn/hl7v2/model/Segment;

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableSegment;-><init>(Lca/uhn/hl7v2/model/Segment;)V

    return-object v0
.end method

.method private static unmodifiableType(Lca/uhn/hl7v2/model/Type;)Lca/uhn/hl7v2/model/Type;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lca/uhn/hl7v2/model/Type;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 94
    .local p0, "type":Lca/uhn/hl7v2/model/Type;, "TT;"
    invoke-static {p0}, Lca/uhn/hl7v2/model/Unmodifiable;->isUnmodifiable(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 95
    :cond_0
    instance-of v0, p0, Lca/uhn/hl7v2/model/Primitive;

    if-eqz v0, :cond_1

    new-instance v0, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiablePrimitive;

    move-object v1, p0

    check-cast v1, Lca/uhn/hl7v2/model/Primitive;

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiablePrimitive;-><init>(Lca/uhn/hl7v2/model/Primitive;)V

    return-object v0

    .line 96
    :cond_1
    instance-of v0, p0, Lca/uhn/hl7v2/model/Composite;

    if-eqz v0, :cond_2

    new-instance v0, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableComposite;

    move-object v1, p0

    check-cast v1, Lca/uhn/hl7v2/model/Composite;

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableComposite;-><init>(Lca/uhn/hl7v2/model/Composite;)V

    return-object v0

    .line 97
    :cond_2
    new-instance v0, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableVaries;

    move-object v1, p0

    check-cast v1, Lca/uhn/hl7v2/model/Variable;

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableVaries;-><init>(Lca/uhn/hl7v2/model/Variable;)V

    return-object v0
.end method

.method private static unmodifiableVisitor(Lca/uhn/hl7v2/model/MessageVisitor;)Lca/uhn/hl7v2/model/MessageVisitor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lca/uhn/hl7v2/model/MessageVisitor;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 110
    .local p0, "visitor":Lca/uhn/hl7v2/model/MessageVisitor;, "TT;"
    invoke-static {p0}, Lca/uhn/hl7v2/model/Unmodifiable;->isUnmodifiable(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableMessageVisitor;

    invoke-direct {v0, p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableMessageVisitor;-><init>(Lca/uhn/hl7v2/model/MessageVisitor;)V

    :goto_0
    return-object v0
.end method
