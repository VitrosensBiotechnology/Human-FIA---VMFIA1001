.class public abstract Lca/uhn/hl7v2/model/AbstractPrimitive;
.super Lca/uhn/hl7v2/model/AbstractType;
.source "AbstractPrimitive.java"

# interfaces
.implements Lca/uhn/hl7v2/model/Primitive;


# instance fields
.field private myValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Message;)V
    .locals 0
    .param p1, "message"    # Lca/uhn/hl7v2/model/Message;

    .line 52
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/AbstractType;-><init>(Lca/uhn/hl7v2/model/Message;)V

    .line 53
    return-void
.end method


# virtual methods
.method public accept(Lca/uhn/hl7v2/model/MessageVisitor;Lca/uhn/hl7v2/Location;)Z
    .locals 1
    .param p1, "visitor"    # Lca/uhn/hl7v2/model/MessageVisitor;
    .param p2, "location"    # Lca/uhn/hl7v2/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 191
    invoke-interface {p1, p0, p2}, Lca/uhn/hl7v2/model/MessageVisitor;->visit(Lca/uhn/hl7v2/model/Primitive;Lca/uhn/hl7v2/Location;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .line 181
    invoke-super {p0}, Lca/uhn/hl7v2/model/AbstractType;->clear()V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lca/uhn/hl7v2/model/AbstractPrimitive;->myValue:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public encode()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractPrimitive;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Message;->getParser()Lca/uhn/hl7v2/parser/Parser;

    move-result-object v0

    .line 113
    .local v0, "p":Lca/uhn/hl7v2/parser/Parser;
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractPrimitive;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-static {v1}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getInstance(Lca/uhn/hl7v2/model/Message;)Lca/uhn/hl7v2/parser/EncodingCharacters;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lca/uhn/hl7v2/parser/Parser;->doEncode(Lca/uhn/hl7v2/model/Type;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractPrimitive;->myValue:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractPrimitive;->myValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractPrimitive;->myValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Lca/uhn/hl7v2/model/AbstractType;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 12
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 122
    if-nez p1, :cond_0

    .line 123
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractPrimitive;->clear()V

    .line 124
    return-void

    .line 127
    :cond_0
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractPrimitive;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    invoke-static {v0}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getInstance(Lca/uhn/hl7v2/model/Message;)Lca/uhn/hl7v2/parser/EncodingCharacters;

    move-result-object v0

    .line 128
    .local v0, "encodingCharacters":Lca/uhn/hl7v2/parser/EncodingCharacters;
    invoke-virtual {v0}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getSubcomponentSeparator()C

    move-result v1

    .line 129
    .local v1, "subc":C
    invoke-virtual {v0}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getComponentSeparator()C

    move-result v2

    .line 131
    .local v2, "cmpc":C
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractPrimitive;->clear()V

    .line 135
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 136
    .local v3, "subcIndex":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 137
    .local v4, "cmpcIndex":I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_2

    if-eq v4, v5, :cond_1

    goto :goto_0

    .line 168
    :cond_1
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractPrimitive;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v5

    invoke-interface {v5}, Lca/uhn/hl7v2/model/Message;->getParser()Lca/uhn/hl7v2/parser/Parser;

    move-result-object v5

    invoke-virtual {v5}, Lca/uhn/hl7v2/parser/Parser;->getParserConfiguration()Lca/uhn/hl7v2/parser/ParserConfiguration;

    move-result-object v5

    .line 169
    invoke-virtual {v5}, Lca/uhn/hl7v2/parser/ParserConfiguration;->getEscaping()Lca/uhn/hl7v2/parser/Escaping;

    move-result-object v5

    invoke-interface {v5, p1, v0}, Lca/uhn/hl7v2/parser/Escaping;->unescape(Ljava/lang/String;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;

    move-result-object v5

    .line 168
    nop

    .line 170
    .local v5, "escaped":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lca/uhn/hl7v2/model/AbstractPrimitive;->setValue(Ljava/lang/String;)V

    .line 170
    .end local v5    # "escaped":Ljava/lang/String;
    goto :goto_3

    .line 143
    :cond_2
    :goto_0
    if-eq v4, v5, :cond_3

    .line 144
    move v6, v4

    .line 145
    .local v6, "index":I
    move v7, v2

    .line 146
    .local v7, "escapeChar":C
    goto :goto_1

    .line 147
    .end local v6    # "index":I
    .end local v7    # "escapeChar":C
    :cond_3
    move v6, v3

    .line 148
    .restart local v6    # "index":I
    move v7, v1

    .line 151
    .restart local v7    # "escapeChar":C
    :goto_1
    const/4 v8, 0x0

    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lca/uhn/hl7v2/model/AbstractPrimitive;->setValue(Ljava/lang/String;)V

    .line 152
    :cond_4
    :goto_2
    if-ne v6, v5, :cond_5

    .line 166
    .end local v6    # "index":I
    .end local v7    # "escapeChar":C
    nop

    .line 173
    :goto_3
    return-void

    .line 153
    .restart local v6    # "index":I
    .restart local v7    # "escapeChar":C
    :cond_5
    add-int/lit8 v8, v6, 0x1

    .line 154
    .local v8, "prevIndex":I
    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 155
    if-eq v6, v5, :cond_6

    .line 156
    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 157
    .local v9, "nextSubComponent":Ljava/lang/String;
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractPrimitive;->getExtraComponents()Lca/uhn/hl7v2/model/ExtraComponents;

    move-result-object v10

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractPrimitive;->getExtraComponents()Lca/uhn/hl7v2/model/ExtraComponents;

    move-result-object v11

    invoke-virtual {v11}, Lca/uhn/hl7v2/model/ExtraComponents;->numComponents()I

    move-result v11

    invoke-virtual {v10, v11}, Lca/uhn/hl7v2/model/ExtraComponents;->getComponent(I)Lca/uhn/hl7v2/model/Variable;

    move-result-object v10

    invoke-interface {v10, v9}, Lca/uhn/hl7v2/model/Variable;->parse(Ljava/lang/String;)V

    .line 158
    .end local v9    # "nextSubComponent":Ljava/lang/String;
    goto :goto_2

    .line 159
    :cond_6
    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 160
    .restart local v9    # "nextSubComponent":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_4

    .line 161
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractPrimitive;->getExtraComponents()Lca/uhn/hl7v2/model/ExtraComponents;

    move-result-object v10

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractPrimitive;->getExtraComponents()Lca/uhn/hl7v2/model/ExtraComponents;

    move-result-object v11

    invoke-virtual {v11}, Lca/uhn/hl7v2/model/ExtraComponents;->numComponents()I

    move-result v11

    invoke-virtual {v10, v11}, Lca/uhn/hl7v2/model/ExtraComponents;->getComponent(I)Lca/uhn/hl7v2/model/Variable;

    move-result-object v10

    invoke-interface {v10, v9}, Lca/uhn/hl7v2/model/Variable;->parse(Ljava/lang/String;)V

    .line 161
    .end local v8    # "prevIndex":I
    .end local v9    # "nextSubComponent":Ljava/lang/String;
    goto :goto_2
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 8
    .param p1, "theValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 84
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractPrimitive;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    .line 86
    .local v0, "message":Lca/uhn/hl7v2/model/Message;
    if-eqz v0, :cond_2

    .line 87
    invoke-interface {v0}, Lca/uhn/hl7v2/model/Message;->getParser()Lca/uhn/hl7v2/parser/Parser;

    move-result-object v1

    invoke-virtual {v1}, Lca/uhn/hl7v2/parser/Parser;->getValidationContext()Lca/uhn/hl7v2/validation/ValidationContext;

    move-result-object v1

    .line 88
    .local v1, "context":Lca/uhn/hl7v2/validation/ValidationContext;
    invoke-interface {v0}, Lca/uhn/hl7v2/model/Message;->getVersion()Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "version":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 91
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractPrimitive;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, p0}, Lca/uhn/hl7v2/validation/ValidationContext;->getPrimitiveRules(Ljava/lang/String;Ljava/lang/String;Lca/uhn/hl7v2/model/Primitive;)Ljava/util/Collection;

    move-result-object v3

    .line 93
    .local v3, "rules":Ljava/util/Collection;, "Ljava/util/Collection<Lca/uhn/hl7v2/validation/PrimitiveTypeRule;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 93
    .end local v1    # "context":Lca/uhn/hl7v2/validation/ValidationContext;
    .end local v2    # "version":Ljava/lang/String;
    .end local v3    # "rules":Ljava/util/Collection;, "Ljava/util/Collection<Lca/uhn/hl7v2/validation/PrimitiveTypeRule;>;"
    goto :goto_0

    .line 93
    .restart local v1    # "context":Lca/uhn/hl7v2/validation/ValidationContext;
    .restart local v2    # "version":Ljava/lang/String;
    .restart local v3    # "rules":Ljava/util/Collection;, "Ljava/util/Collection<Lca/uhn/hl7v2/validation/PrimitiveTypeRule;>;"
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lca/uhn/hl7v2/validation/PrimitiveTypeRule;

    .line 94
    .local v5, "rule":Lca/uhn/hl7v2/validation/PrimitiveTypeRule;
    invoke-interface {v5, p1}, Lca/uhn/hl7v2/validation/PrimitiveTypeRule;->correct(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-interface {v5, p1}, Lca/uhn/hl7v2/validation/PrimitiveTypeRule;->apply(Ljava/lang/Object;)[Lca/uhn/hl7v2/validation/ValidationException;

    move-result-object v6

    .line 96
    .local v6, "ve":[Lca/uhn/hl7v2/validation/ValidationException;
    array-length v7, v6

    if-lez v7, :cond_0

    .line 97
    new-instance v4, Lca/uhn/hl7v2/model/DataTypeException;

    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-direct {v4, v7}, Lca/uhn/hl7v2/model/DataTypeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 103
    .end local v1    # "context":Lca/uhn/hl7v2/validation/ValidationContext;
    .end local v2    # "version":Ljava/lang/String;
    .end local v3    # "rules":Ljava/util/Collection;, "Ljava/util/Collection<Lca/uhn/hl7v2/validation/PrimitiveTypeRule;>;"
    .end local v5    # "rule":Lca/uhn/hl7v2/validation/PrimitiveTypeRule;
    .end local v6    # "ve":[Lca/uhn/hl7v2/validation/ValidationException;
    :cond_2
    :goto_0
    iput-object p1, p0, Lca/uhn/hl7v2/model/AbstractPrimitive;->myValue:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractPrimitive;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
