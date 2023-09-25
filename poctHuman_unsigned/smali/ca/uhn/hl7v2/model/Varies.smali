.class public Lca/uhn/hl7v2/model/Varies;
.super Ljava/lang/Object;
.source "Varies.java"

# interfaces
.implements Lca/uhn/hl7v2/model/Variable;


# static fields
.field public static final DEFAULT_OBX2_TYPE_PROP:Ljava/lang/String; = "ca.uhn.hl7v2.model.varies.default_obx2_type"

.field public static final ESCAPE_SUBCOMPONENT_DELIM_IN_PRIMITIVE:Ljava/lang/String; = "ca.uhn.hl7v2.model.varies.escape_subcomponent_delim_in_primitive"

.field public static final INVALID_OBX2_TYPE_PROP:Ljava/lang/String; = "ca.uhn.hl7v2.model.varies.invalid_obx2_type"


# instance fields
.field private data:Lca/uhn/hl7v2/model/Type;

.field private message:Lca/uhn/hl7v2/model/Message;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Message;)V
    .locals 1
    .param p1, "message"    # Lca/uhn/hl7v2/model/Message;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Lca/uhn/hl7v2/model/GenericPrimitive;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/model/GenericPrimitive;-><init>(Lca/uhn/hl7v2/model/Message;)V

    iput-object v0, p0, Lca/uhn/hl7v2/model/Varies;->data:Lca/uhn/hl7v2/model/Type;

    .line 115
    iput-object p1, p0, Lca/uhn/hl7v2/model/Varies;->message:Lca/uhn/hl7v2/model/Message;

    .line 116
    return-void
.end method

.method public static fixOBX5(Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 1
    .param p0, "segment"    # Lca/uhn/hl7v2/model/Segment;
    .param p1, "factory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 184
    invoke-interface {p0}, Lca/uhn/hl7v2/model/Segment;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Message;->getParser()Lca/uhn/hl7v2/parser/Parser;

    move-result-object v0

    invoke-virtual {v0}, Lca/uhn/hl7v2/parser/Parser;->getParserConfiguration()Lca/uhn/hl7v2/parser/ParserConfiguration;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lca/uhn/hl7v2/parser/FixFieldDataType;->fixOBX5(Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/parser/ModelClassFactory;Lca/uhn/hl7v2/parser/ParserConfiguration;)V

    .line 185
    return-void
.end method

.method public static fixOBX5(Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/parser/ModelClassFactory;Lca/uhn/hl7v2/parser/ParserConfiguration;)V
    .locals 0
    .param p0, "segment"    # Lca/uhn/hl7v2/model/Segment;
    .param p1, "factory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;
    .param p2, "parserConfiguration"    # Lca/uhn/hl7v2/parser/ParserConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 207
    invoke-static {p0, p1, p2}, Lca/uhn/hl7v2/parser/FixFieldDataType;->fixOBX5(Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/parser/ModelClassFactory;Lca/uhn/hl7v2/parser/ParserConfiguration;)V

    .line 208
    return-void
.end method


# virtual methods
.method public accept(Lca/uhn/hl7v2/model/MessageVisitor;Lca/uhn/hl7v2/Location;)Z
    .locals 1
    .param p1, "visitor"    # Lca/uhn/hl7v2/model/MessageVisitor;
    .param p2, "currentLocation"    # Lca/uhn/hl7v2/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lca/uhn/hl7v2/model/Varies;->data:Lca/uhn/hl7v2/model/Type;

    invoke-interface {v0, p1, p2}, Lca/uhn/hl7v2/model/Type;->accept(Lca/uhn/hl7v2/model/MessageVisitor;Lca/uhn/hl7v2/Location;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .line 232
    iget-object v0, p0, Lca/uhn/hl7v2/model/Varies;->data:Lca/uhn/hl7v2/model/Type;

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Type;->clear()V

    .line 233
    return-void
.end method

.method public encode()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 225
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Varies;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Message;->getParser()Lca/uhn/hl7v2/parser/Parser;

    move-result-object v0

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Varies;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-static {v1}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getInstance(Lca/uhn/hl7v2/model/Message;)Lca/uhn/hl7v2/parser/EncodingCharacters;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lca/uhn/hl7v2/parser/Parser;->doEncode(Lca/uhn/hl7v2/model/Type;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lca/uhn/hl7v2/model/Type;
    .locals 1

    .line 125
    iget-object v0, p0, Lca/uhn/hl7v2/model/Varies;->data:Lca/uhn/hl7v2/model/Type;

    return-object v0
.end method

.method public getExtraComponents()Lca/uhn/hl7v2/model/ExtraComponents;
    .locals 1

    .line 156
    iget-object v0, p0, Lca/uhn/hl7v2/model/Varies;->data:Lca/uhn/hl7v2/model/Type;

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Type;->getExtraComponents()Lca/uhn/hl7v2/model/ExtraComponents;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Lca/uhn/hl7v2/model/Message;
    .locals 1

    .line 163
    iget-object v0, p0, Lca/uhn/hl7v2/model/Varies;->message:Lca/uhn/hl7v2/model/Message;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 129
    const-string v0, "*"

    .line 130
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lca/uhn/hl7v2/model/Varies;->data:Lca/uhn/hl7v2/model/Type;

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lca/uhn/hl7v2/model/Varies;->data:Lca/uhn/hl7v2/model/Type;

    invoke-interface {v1}, Lca/uhn/hl7v2/model/Type;->getName()Ljava/lang/String;

    move-result-object v0

    .line 133
    :cond_0
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lca/uhn/hl7v2/model/Varies;->data:Lca/uhn/hl7v2/model/Type;

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Type;->isEmpty()Z

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

    .line 215
    iget-object v0, p0, Lca/uhn/hl7v2/model/Varies;->data:Lca/uhn/hl7v2/model/Type;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lca/uhn/hl7v2/model/Varies;->data:Lca/uhn/hl7v2/model/Type;

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Type;->clear()V

    .line 218
    :cond_0
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Varies;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Message;->getParser()Lca/uhn/hl7v2/parser/Parser;

    move-result-object v0

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Varies;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-static {v1}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getInstance(Lca/uhn/hl7v2/model/Message;)Lca/uhn/hl7v2/parser/EncodingCharacters;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lca/uhn/hl7v2/parser/Parser;->parse(Lca/uhn/hl7v2/model/Type;Ljava/lang/String;Lca/uhn/hl7v2/parser/EncodingCharacters;)V

    .line 219
    return-void
.end method

.method public provideLocation(Lca/uhn/hl7v2/Location;II)Lca/uhn/hl7v2/Location;
    .locals 1
    .param p1, "location"    # Lca/uhn/hl7v2/Location;
    .param p2, "index"    # I
    .param p3, "repetition"    # I

    .line 254
    iget-object v0, p0, Lca/uhn/hl7v2/model/Varies;->data:Lca/uhn/hl7v2/model/Type;

    invoke-interface {v0, p1, p2, p3}, Lca/uhn/hl7v2/model/Type;->provideLocation(Lca/uhn/hl7v2/Location;II)Lca/uhn/hl7v2/Location;

    move-result-object v0

    return-object v0
.end method

.method public setData(Lca/uhn/hl7v2/model/Type;)V
    .locals 1
    .param p1, "data"    # Lca/uhn/hl7v2/model/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lca/uhn/hl7v2/model/Varies;->data:Lca/uhn/hl7v2/model/Type;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lca/uhn/hl7v2/model/Varies;->data:Lca/uhn/hl7v2/model/Type;

    instance-of v0, v0, Lca/uhn/hl7v2/model/Primitive;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lca/uhn/hl7v2/model/Varies;->data:Lca/uhn/hl7v2/model/Type;

    check-cast v0, Lca/uhn/hl7v2/model/Primitive;

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Primitive;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 149
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/model/Varies;->data:Lca/uhn/hl7v2/model/Type;

    invoke-static {v0, p1}, Lca/uhn/hl7v2/util/DeepCopy;->copy(Lca/uhn/hl7v2/model/Type;Lca/uhn/hl7v2/model/Type;)V

    .line 152
    :cond_1
    iput-object p1, p0, Lca/uhn/hl7v2/model/Varies;->data:Lca/uhn/hl7v2/model/Type;

    .line 153
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 246
    invoke-static {p0}, Lca/uhn/hl7v2/model/AbstractType;->toString(Lca/uhn/hl7v2/model/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
