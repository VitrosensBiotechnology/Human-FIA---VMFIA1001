.class public Lca/uhn/hl7v2/parser/EncodingCharacters;
.super Ljava/lang/Object;
.source "EncodingCharacters.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private encChars:[C

.field private fieldSep:C


# direct methods
.method public constructor <init>(CCCCC)V
    .locals 2
    .param p1, "fieldSeparator"    # C
    .param p2, "componentSeparator"    # C
    .param p3, "repetitionSeparator"    # C
    .param p4, "escapeCharacter"    # C
    .param p5, "subcomponentSeparator"    # C

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lca/uhn/hl7v2/parser/EncodingCharacters;-><init>(CLjava/lang/String;)V

    .line 109
    return-void
.end method

.method public constructor <init>(CCCCCC)V
    .locals 2
    .param p1, "fieldSeparator"    # C
    .param p2, "componentSeparator"    # C
    .param p3, "repetitionSeparator"    # C
    .param p4, "escapeCharacter"    # C
    .param p5, "subcomponentSeparator"    # C
    .param p6, "truncationCharacter"    # C

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lca/uhn/hl7v2/parser/EncodingCharacters;-><init>(CLjava/lang/String;)V

    .line 115
    return-void
.end method

.method public constructor <init>(CLjava/lang/String;)V
    .locals 3
    .param p1, "fieldSeparator"    # C
    .param p2, "encodingCharacters"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-char p1, p0, Lca/uhn/hl7v2/parser/EncodingCharacters;->fieldSep:C

    .line 59
    const/4 v0, 0x5

    new-array v0, v0, [C

    iput-object v0, p0, Lca/uhn/hl7v2/parser/EncodingCharacters;->encChars:[C

    .line 61
    if-nez p2, :cond_0

    .line 62
    const/16 v0, 0x5e

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/parser/EncodingCharacters;->setComponentSeparator(C)V

    .line 63
    const/16 v0, 0x7e

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/parser/EncodingCharacters;->setRepetitionSeparator(C)V

    .line 64
    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/parser/EncodingCharacters;->setEscapeCharacter(C)V

    .line 65
    const/16 v0, 0x26

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/parser/EncodingCharacters;->setSubcomponentSeparator(C)V

    .line 66
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/parser/EncodingCharacters;->setTruncationCharacter(C)V

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/parser/EncodingCharacters;->encChars:[C

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p2, v1, v2, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 70
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 71
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 72
    .local v0, "extraChar":C
    if-eq v0, p1, :cond_1

    .line 73
    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/parser/EncodingCharacters;->setTruncationCharacter(C)V

    .line 78
    .end local v0    # "extraChar":C
    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/parser/EncodingCharacters;)V
    .locals 1
    .param p1, "other"    # Lca/uhn/hl7v2/parser/EncodingCharacters;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-virtual {p1}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getFieldSeparator()C

    move-result v0

    iput-char v0, p0, Lca/uhn/hl7v2/parser/EncodingCharacters;->fieldSep:C

    .line 121
    const/4 v0, 0x5

    new-array v0, v0, [C

    iput-object v0, p0, Lca/uhn/hl7v2/parser/EncodingCharacters;->encChars:[C

    .line 122
    invoke-virtual {p1}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getComponentSeparator()C

    move-result v0

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/parser/EncodingCharacters;->setComponentSeparator(C)V

    .line 123
    invoke-virtual {p1}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getRepetitionSeparator()C

    move-result v0

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/parser/EncodingCharacters;->setRepetitionSeparator(C)V

    .line 124
    invoke-virtual {p1}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getEscapeCharacter()C

    move-result v0

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/parser/EncodingCharacters;->setEscapeCharacter(C)V

    .line 125
    invoke-virtual {p1}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getSubcomponentSeparator()C

    move-result v0

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/parser/EncodingCharacters;->setSubcomponentSeparator(C)V

    .line 126
    invoke-virtual {p1}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getTruncationCharacter()C

    move-result v0

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/parser/EncodingCharacters;->setTruncationCharacter(C)V

    .line 127
    return-void
.end method

.method public static defaultInstance()Lca/uhn/hl7v2/parser/EncodingCharacters;
    .locals 3

    .line 253
    new-instance v0, Lca/uhn/hl7v2/parser/EncodingCharacters;

    const/16 v1, 0x7c

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lca/uhn/hl7v2/parser/EncodingCharacters;-><init>(CLjava/lang/String;)V

    return-object v0
.end method

.method public static getInstance(Lca/uhn/hl7v2/model/Message;)Lca/uhn/hl7v2/parser/EncodingCharacters;
    .locals 4
    .param p0, "message"    # Lca/uhn/hl7v2/model/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 90
    invoke-interface {p0}, Lca/uhn/hl7v2/model/Message;->getEncodingCharactersValue()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "encodingCharactersValue":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    invoke-interface {p0}, Lca/uhn/hl7v2/model/Message;->getFieldSeparatorValue()Ljava/lang/Character;

    move-result-object v1

    .line 96
    .local v1, "fieldSeparatorValue":Ljava/lang/Character;
    if-nez v1, :cond_1

    .line 97
    new-instance v2, Lca/uhn/hl7v2/HL7Exception;

    const-string v3, "Field separator not populated"

    invoke-direct {v2, v3}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 100
    :cond_1
    new-instance v2, Lca/uhn/hl7v2/parser/EncodingCharacters;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-direct {v2, v3, v0}, Lca/uhn/hl7v2/parser/EncodingCharacters;-><init>(CLjava/lang/String;)V

    return-object v2

    .line 92
    .end local v1    # "fieldSeparatorValue":Ljava/lang/Character;
    :cond_2
    :goto_0
    new-instance v1, Lca/uhn/hl7v2/HL7Exception;

    const-string v2, "encoding characters not populated"

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 193
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 194
    new-instance v0, Lca/uhn/hl7v2/parser/EncodingCharacters;

    invoke-direct {v0, p0}, Lca/uhn/hl7v2/parser/EncodingCharacters;-><init>(Lca/uhn/hl7v2/parser/EncodingCharacters;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 223
    instance-of v0, p1, Lca/uhn/hl7v2/parser/EncodingCharacters;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 224
    move-object v0, p1

    check-cast v0, Lca/uhn/hl7v2/parser/EncodingCharacters;

    .line 225
    .local v0, "other":Lca/uhn/hl7v2/parser/EncodingCharacters;
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getFieldSeparator()C

    move-result v2

    invoke-virtual {v0}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getFieldSeparator()C

    move-result v3

    if-ne v2, v3, :cond_0

    .line 226
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getComponentSeparator()C

    move-result v2

    invoke-virtual {v0}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getComponentSeparator()C

    move-result v3

    if-ne v2, v3, :cond_0

    .line 227
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getEscapeCharacter()C

    move-result v2

    invoke-virtual {v0}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getEscapeCharacter()C

    move-result v3

    if-ne v2, v3, :cond_0

    .line 228
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getRepetitionSeparator()C

    move-result v2

    invoke-virtual {v0}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getRepetitionSeparator()C

    move-result v3

    if-ne v2, v3, :cond_0

    .line 229
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getSubcomponentSeparator()C

    move-result v2

    invoke-virtual {v0}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getSubcomponentSeparator()C

    move-result v3

    if-ne v2, v3, :cond_0

    .line 230
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getTruncationCharacter()C

    move-result v2

    invoke-virtual {v0}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getTruncationCharacter()C

    move-result v3

    if-ne v2, v3, :cond_0

    .line 225
    const/4 v1, 0x1

    :cond_0
    return v1

    .line 232
    .end local v0    # "other":Lca/uhn/hl7v2/parser/EncodingCharacters;
    :cond_1
    return v1
.end method

.method public getComponentSeparator()C
    .locals 2

    .line 144
    iget-object v0, p0, Lca/uhn/hl7v2/parser/EncodingCharacters;->encChars:[C

    const/4 v1, 0x0

    aget-char v0, v0, v1

    return v0
.end method

.method public getEscapeCharacter()C
    .locals 2

    .line 162
    iget-object v0, p0, Lca/uhn/hl7v2/parser/EncodingCharacters;->encChars:[C

    const/4 v1, 0x2

    aget-char v0, v0, v1

    return v0
.end method

.method public getFieldSeparator()C
    .locals 1

    .line 135
    iget-char v0, p0, Lca/uhn/hl7v2/parser/EncodingCharacters;->fieldSep:C

    return v0
.end method

.method public getRepetitionSeparator()C
    .locals 2

    .line 153
    iget-object v0, p0, Lca/uhn/hl7v2/parser/EncodingCharacters;->encChars:[C

    const/4 v1, 0x1

    aget-char v0, v0, v1

    return v0
.end method

.method public getSubcomponentSeparator()C
    .locals 2

    .line 171
    iget-object v0, p0, Lca/uhn/hl7v2/parser/EncodingCharacters;->encChars:[C

    const/4 v1, 0x3

    aget-char v0, v0, v1

    return v0
.end method

.method public getTruncationCharacter()C
    .locals 2

    .line 180
    iget-object v0, p0, Lca/uhn/hl7v2/parser/EncodingCharacters;->encChars:[C

    const/4 v1, 0x4

    aget-char v0, v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 238
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getComponentSeparator()C

    move-result v0

    const/4 v1, 0x7

    mul-int/2addr v1, v0

    .line 239
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getEscapeCharacter()C

    move-result v0

    .line 238
    mul-int/2addr v1, v0

    .line 240
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getFieldSeparator()C

    move-result v0

    .line 238
    mul-int/2addr v1, v0

    .line 241
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getRepetitionSeparator()C

    move-result v0

    .line 238
    mul-int/2addr v1, v0

    .line 242
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getSubcomponentSeparator()C

    move-result v0

    .line 238
    mul-int/2addr v1, v0

    .line 243
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getTruncationCharacter()C

    move-result v0

    .line 238
    mul-int/2addr v1, v0

    return v1
.end method

.method public setComponentSeparator(C)V
    .locals 2
    .param p1, "newComponentSep"    # C

    .line 202
    iget-object v0, p0, Lca/uhn/hl7v2/parser/EncodingCharacters;->encChars:[C

    const/4 v1, 0x0

    aput-char p1, v0, v1

    .line 203
    return-void
.end method

.method public setEscapeCharacter(C)V
    .locals 2
    .param p1, "newEscapeChar"    # C

    .line 210
    iget-object v0, p0, Lca/uhn/hl7v2/parser/EncodingCharacters;->encChars:[C

    const/4 v1, 0x2

    aput-char p1, v0, v1

    .line 211
    return-void
.end method

.method public setFieldSeparator(C)V
    .locals 0
    .param p1, "newFieldSep"    # C

    .line 198
    iput-char p1, p0, Lca/uhn/hl7v2/parser/EncodingCharacters;->fieldSep:C

    .line 199
    return-void
.end method

.method public setRepetitionSeparator(C)V
    .locals 2
    .param p1, "newRepetitionSep"    # C

    .line 206
    iget-object v0, p0, Lca/uhn/hl7v2/parser/EncodingCharacters;->encChars:[C

    const/4 v1, 0x1

    aput-char p1, v0, v1

    .line 207
    return-void
.end method

.method public setSubcomponentSeparator(C)V
    .locals 2
    .param p1, "newSubcomponentSep"    # C

    .line 214
    iget-object v0, p0, Lca/uhn/hl7v2/parser/EncodingCharacters;->encChars:[C

    const/4 v1, 0x3

    aput-char p1, v0, v1

    .line 215
    return-void
.end method

.method public setTruncationCharacter(C)V
    .locals 2
    .param p1, "newTruncationChar"    # C

    .line 218
    iget-object v0, p0, Lca/uhn/hl7v2/parser/EncodingCharacters;->encChars:[C

    const/4 v1, 0x4

    aput-char p1, v0, v1

    .line 219
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lca/uhn/hl7v2/parser/EncodingCharacters;->encChars:[C

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
