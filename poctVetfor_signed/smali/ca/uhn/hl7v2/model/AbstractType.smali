.class public abstract Lca/uhn/hl7v2/model/AbstractType;
.super Ljava/lang/Object;
.source "AbstractType.java"

# interfaces
.implements Lca/uhn/hl7v2/model/Type;


# static fields
.field private static final serialVersionUID:J = -0x60d0a787bb0bb7d1L


# instance fields
.field private final extra:Lca/uhn/hl7v2/model/ExtraComponents;

.field private final message:Lca/uhn/hl7v2/model/Message;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Message;)V
    .locals 1
    .param p1, "message"    # Lca/uhn/hl7v2/model/Message;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lca/uhn/hl7v2/model/ExtraComponents;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/model/ExtraComponents;-><init>(Lca/uhn/hl7v2/model/Message;)V

    iput-object v0, p0, Lca/uhn/hl7v2/model/AbstractType;->extra:Lca/uhn/hl7v2/model/ExtraComponents;

    .line 54
    iput-object p1, p0, Lca/uhn/hl7v2/model/AbstractType;->message:Lca/uhn/hl7v2/model/Message;

    .line 55
    return-void
.end method

.method static toString(Lca/uhn/hl7v2/model/Type;)Ljava/lang/String;
    .locals 2
    .param p0, "theType"    # Lca/uhn/hl7v2/model/Type;

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .local v0, "b":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-static {}, Lca/uhn/hl7v2/parser/EncodingCharacters;->defaultInstance()Lca/uhn/hl7v2/parser/EncodingCharacters;

    move-result-object v1

    invoke-static {p0, v1}, Lca/uhn/hl7v2/parser/PipeParser;->encode(Lca/uhn/hl7v2/model/Type;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 97
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractType;->extra:Lca/uhn/hl7v2/model/ExtraComponents;

    invoke-virtual {v0}, Lca/uhn/hl7v2/model/ExtraComponents;->clear()V

    .line 98
    return-void
.end method

.method public encode()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractType;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Message;->getParser()Lca/uhn/hl7v2/parser/Parser;

    move-result-object v0

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractType;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-static {v1}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getInstance(Lca/uhn/hl7v2/model/Message;)Lca/uhn/hl7v2/parser/EncodingCharacters;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lca/uhn/hl7v2/parser/Parser;->doEncode(Lca/uhn/hl7v2/model/Type;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtraComponents()Lca/uhn/hl7v2/model/ExtraComponents;
    .locals 1

    .line 65
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractType;->extra:Lca/uhn/hl7v2/model/ExtraComponents;

    return-object v0
.end method

.method public getMessage()Lca/uhn/hl7v2/model/Message;
    .locals 1

    .line 73
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractType;->message:Lca/uhn/hl7v2/model/Message;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "longClassName":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isEmpty()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractType;->extra:Lca/uhn/hl7v2/model/ExtraComponents;

    invoke-virtual {v0}, Lca/uhn/hl7v2/model/ExtraComponents;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 81
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractType;->clear()V

    .line 82
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractType;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Message;->getParser()Lca/uhn/hl7v2/parser/Parser;

    move-result-object v0

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractType;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-static {v1}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getInstance(Lca/uhn/hl7v2/model/Message;)Lca/uhn/hl7v2/parser/EncodingCharacters;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lca/uhn/hl7v2/parser/Parser;->parse(Lca/uhn/hl7v2/model/Type;Ljava/lang/String;Lca/uhn/hl7v2/parser/EncodingCharacters;)V

    .line 83
    return-void
.end method

.method public provideLocation(Lca/uhn/hl7v2/Location;II)Lca/uhn/hl7v2/Location;
    .locals 1
    .param p1, "location"    # Lca/uhn/hl7v2/Location;
    .param p2, "index"    # I
    .param p3, "repetition"    # I

    .line 131
    invoke-virtual {p1}, Lca/uhn/hl7v2/Location;->getField()I

    move-result v0

    if-gez v0, :cond_0

    .line 132
    new-instance v0, Lca/uhn/hl7v2/Location;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/Location;-><init>(Lca/uhn/hl7v2/Location;)V

    .line 133
    invoke-virtual {v0, p2}, Lca/uhn/hl7v2/Location;->withField(I)Lca/uhn/hl7v2/Location;

    move-result-object v0

    .line 134
    invoke-virtual {v0, p3}, Lca/uhn/hl7v2/Location;->withFieldRepetition(I)Lca/uhn/hl7v2/Location;

    move-result-object v0

    .line 132
    return-object v0

    .line 135
    :cond_0
    invoke-virtual {p1}, Lca/uhn/hl7v2/Location;->getComponent()I

    move-result v0

    if-gez v0, :cond_1

    .line 136
    new-instance v0, Lca/uhn/hl7v2/Location;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/Location;-><init>(Lca/uhn/hl7v2/Location;)V

    .line 137
    invoke-virtual {v0, p2}, Lca/uhn/hl7v2/Location;->withComponent(I)Lca/uhn/hl7v2/Location;

    move-result-object v0

    .line 136
    return-object v0

    .line 138
    :cond_1
    new-instance v0, Lca/uhn/hl7v2/Location;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/Location;-><init>(Lca/uhn/hl7v2/Location;)V

    .line 139
    invoke-virtual {v0, p2}, Lca/uhn/hl7v2/Location;->withSubcomponent(I)Lca/uhn/hl7v2/Location;

    move-result-object v0

    .line 138
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 113
    invoke-static {p0}, Lca/uhn/hl7v2/model/AbstractType;->toString(Lca/uhn/hl7v2/model/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
