.class Lca/uhn/hl7v2/parser/OldPipeParser;
.super Lca/uhn/hl7v2/parser/Parser;
.source "OldPipeParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lca/uhn/hl7v2/parser/OldPipeParser$MessageStructure;
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;

.field private static final segDelim:Ljava/lang/String; = "\r"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    const-class v0, Lca/uhn/hl7v2/parser/OldPipeParser;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/parser/OldPipeParser;->log:Lorg/slf4j/Logger;

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Lca/uhn/hl7v2/parser/Parser;-><init>()V

    .line 70
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 0
    .param p1, "theFactory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 78
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/parser/Parser;-><init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 79
    return-void
.end method

.method static synthetic access$0()Lorg/slf4j/Logger;
    .locals 1

    .line 64
    sget-object v0, Lca/uhn/hl7v2/parser/OldPipeParser;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method public static encode(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;
    .locals 8
    .param p0, "source"    # Lca/uhn/hl7v2/model/Group;
    .param p1, "encodingChars"    # Lca/uhn/hl7v2/parser/EncodingCharacters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 467
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 469
    .local v0, "result":Ljava/lang/StringBuffer;
    invoke-interface {p0}, Lca/uhn/hl7v2/model/Group;->getNames()[Ljava/lang/String;

    move-result-object v1

    .line 470
    .local v1, "names":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 470
    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-lt v2, v3, :cond_0

    .line 485
    .end local v2    # "i":I
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 471
    .restart local v2    # "i":I
    :cond_0
    aget-object v3, v1, v2

    invoke-interface {p0, v3}, Lca/uhn/hl7v2/model/Group;->getAll(Ljava/lang/String;)[Lca/uhn/hl7v2/model/Structure;

    move-result-object v3

    .line 472
    .local v3, "reps":[Lca/uhn/hl7v2/model/Structure;
    const/4 v4, 0x0

    .line 472
    .local v4, "rep":I
    :goto_1
    array-length v5, v3

    if-lt v4, v5, :cond_1

    .line 470
    .end local v3    # "reps":[Lca/uhn/hl7v2/model/Structure;
    .end local v4    # "rep":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 473
    .restart local v3    # "reps":[Lca/uhn/hl7v2/model/Structure;
    .restart local v4    # "rep":I
    :cond_1
    aget-object v5, v3, v4

    instance-of v5, v5, Lca/uhn/hl7v2/model/Group;

    if-eqz v5, :cond_2

    .line 474
    aget-object v5, v3, v4

    check-cast v5, Lca/uhn/hl7v2/model/Group;

    invoke-static {v5, p1}, Lca/uhn/hl7v2/parser/OldPipeParser;->encode(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 475
    goto :goto_2

    .line 477
    :cond_2
    aget-object v5, v3, v4

    check-cast v5, Lca/uhn/hl7v2/model/Segment;

    invoke-static {v5, p1}, Lca/uhn/hl7v2/parser/OldPipeParser;->encode(Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;

    move-result-object v5

    .line 478
    .local v5, "segString":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    if-lt v6, v7, :cond_3

    .line 479
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 480
    const/16 v6, 0xd

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 472
    .end local v5    # "segString":Ljava/lang/String;
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static encode(Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;
    .locals 8
    .param p0, "source"    # Lca/uhn/hl7v2/model/Segment;
    .param p1, "encodingChars"    # Lca/uhn/hl7v2/parser/EncodingCharacters;

    .line 489
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 490
    .local v0, "result":Ljava/lang/StringBuffer;
    invoke-interface {p0}, Lca/uhn/hl7v2/model/Segment;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 491
    invoke-virtual {p1}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getFieldSeparator()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 494
    const/4 v1, 0x1

    .line 495
    .local v1, "startAt":I
    invoke-interface {p0}, Lca/uhn/hl7v2/model/Segment;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lca/uhn/hl7v2/parser/OldPipeParser;->isDelimDefSegment(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 496
    const/4 v1, 0x2

    .line 499
    :cond_0
    invoke-interface {p0}, Lca/uhn/hl7v2/model/Segment;->numFields()I

    move-result v2

    .line 500
    .local v2, "numFields":I
    move v3, v1

    .line 500
    .local v3, "i":I
    :goto_0
    if-le v3, v2, :cond_1

    .line 520
    .end local v3    # "i":I
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getFieldSeparator()C

    move-result v4

    invoke-static {v3, v4}, Lca/uhn/hl7v2/parser/OldPipeParser;->stripExtraDelimiters(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 502
    .restart local v3    # "i":I
    :cond_1
    :try_start_0
    invoke-interface {p0, v3}, Lca/uhn/hl7v2/model/Segment;->getField(I)[Lca/uhn/hl7v2/model/Type;

    move-result-object v4

    .line 503
    .local v4, "reps":[Lca/uhn/hl7v2/model/Type;
    const/4 v5, 0x0

    .line 503
    .local v5, "j":I
    :goto_1
    array-length v6, v4

    if-lt v5, v6, :cond_2

    .line 512
    .end local v4    # "reps":[Lca/uhn/hl7v2/model/Type;
    .end local v5    # "j":I
    goto :goto_2

    .line 504
    .restart local v4    # "reps":[Lca/uhn/hl7v2/model/Type;
    .restart local v5    # "j":I
    :cond_2
    aget-object v6, v4, v5

    invoke-static {v6, p1}, Lca/uhn/hl7v2/parser/OldPipeParser;->encode(Lca/uhn/hl7v2/model/Type;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;

    move-result-object v6

    .line 506
    .local v6, "fieldText":Ljava/lang/String;
    invoke-interface {p0}, Lca/uhn/hl7v2/model/Segment;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lca/uhn/hl7v2/parser/OldPipeParser;->isDelimDefSegment(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x2

    if-ne v3, v7, :cond_3

    .line 507
    invoke-static {v6, p1}, Lca/uhn/hl7v2/parser/Escape;->unescape(Ljava/lang/String;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 508
    :cond_3
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 509
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    if-ge v5, v7, :cond_4

    .line 510
    invoke-virtual {p1}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getRepetitionSeparator()C

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    .end local v6    # "fieldText":Ljava/lang/String;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 513
    .end local v4    # "reps":[Lca/uhn/hl7v2/model/Type;
    .end local v5    # "j":I
    :catch_0
    move-exception v4

    .line 514
    .local v4, "e":Lca/uhn/hl7v2/HL7Exception;
    sget-object v5, Lca/uhn/hl7v2/parser/OldPipeParser;->log:Lorg/slf4j/Logger;

    const-string v6, "Error while encoding segment: "

    invoke-interface {v5, v6, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 516
    .end local v4    # "e":Lca/uhn/hl7v2/HL7Exception;
    :goto_2
    invoke-virtual {p1}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getFieldSeparator()C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 500
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static encode(Lca/uhn/hl7v2/model/Type;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;
    .locals 6
    .param p0, "source"    # Lca/uhn/hl7v2/model/Type;
    .param p1, "encodingChars"    # Lca/uhn/hl7v2/parser/EncodingCharacters;

    .line 367
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 368
    .local v0, "field":Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    .line 368
    .local v1, "i":I
    :goto_0
    invoke-static {p0}, Lca/uhn/hl7v2/util/Terser;->numComponents(Lca/uhn/hl7v2/model/Type;)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 378
    .end local v1    # "i":I
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getComponentSeparator()C

    move-result v2

    invoke-static {v1, v2}, Lca/uhn/hl7v2/parser/OldPipeParser;->stripExtraDelimiters(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 369
    .restart local v1    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 370
    .local v2, "comp":Ljava/lang/StringBuffer;
    const/4 v3, 0x1

    .line 370
    .local v3, "j":I
    :goto_1
    invoke-static {p0, v1}, Lca/uhn/hl7v2/util/Terser;->numSubComponents(Lca/uhn/hl7v2/model/Type;I)I

    move-result v4

    if-le v3, v4, :cond_1

    .line 375
    .end local v3    # "j":I
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getSubcomponentSeparator()C

    move-result v4

    invoke-static {v3, v4}, Lca/uhn/hl7v2/parser/OldPipeParser;->stripExtraDelimiters(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 376
    invoke-virtual {p1}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getComponentSeparator()C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 368
    .end local v2    # "comp":Ljava/lang/StringBuffer;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 371
    .restart local v2    # "comp":Ljava/lang/StringBuffer;
    .restart local v3    # "j":I
    :cond_1
    invoke-static {p0, v1, v3}, Lca/uhn/hl7v2/util/Terser;->getPrimitive(Lca/uhn/hl7v2/model/Type;II)Lca/uhn/hl7v2/model/Primitive;

    move-result-object v4

    .line 372
    .local v4, "p":Lca/uhn/hl7v2/model/Primitive;
    invoke-static {v4, p1}, Lca/uhn/hl7v2/parser/OldPipeParser;->encodePrimitive(Lca/uhn/hl7v2/model/Primitive;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 373
    invoke-virtual {p1}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getSubcomponentSeparator()C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 370
    .end local v4    # "p":Lca/uhn/hl7v2/model/Primitive;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private static encodePrimitive(Lca/uhn/hl7v2/model/Primitive;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;
    .locals 1
    .param p0, "p"    # Lca/uhn/hl7v2/model/Primitive;
    .param p1, "encodingChars"    # Lca/uhn/hl7v2/parser/EncodingCharacters;

    .line 383
    invoke-interface {p0}, Lca/uhn/hl7v2/model/Primitive;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 385
    const-string v0, ""

    .line 386
    goto :goto_0

    .line 387
    :cond_0
    invoke-static {v0, p1}, Lca/uhn/hl7v2/parser/Escape;->escape(Ljava/lang/String;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;

    move-result-object v0

    .line 389
    :goto_0
    return-object v0
.end method

.method private static getEncodingChars(Ljava/lang/String;)Lca/uhn/hl7v2/parser/EncodingCharacters;
    .locals 4
    .param p0, "message"    # Ljava/lang/String;

    .line 212
    new-instance v0, Lca/uhn/hl7v2/parser/EncodingCharacters;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x4

    const/16 v3, 0x8

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lca/uhn/hl7v2/parser/EncodingCharacters;-><init>(CLjava/lang/String;)V

    return-object v0
.end method

.method private getStructure(Ljava/lang/String;)Lca/uhn/hl7v2/parser/OldPipeParser$MessageStructure;
    .locals 12
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;,
            Lca/uhn/hl7v2/parser/EncodingNotSupportedException;
        }
    .end annotation

    .line 164
    invoke-static {p1}, Lca/uhn/hl7v2/parser/OldPipeParser;->getEncodingChars(Ljava/lang/String;)Lca/uhn/hl7v2/parser/EncodingCharacters;

    move-result-object v0

    .line 165
    .local v0, "ec":Lca/uhn/hl7v2/parser/EncodingCharacters;
    const/4 v1, 0x0

    .line 166
    .local v1, "messageStructure":Ljava/lang/String;
    const/4 v2, 0x1

    move v3, v2

    .line 169
    .local v3, "explicityDefined":Z
    :try_start_0
    const-string v4, "\r"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 170
    invoke-virtual {v0}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getFieldSeparator()C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    .line 169
    invoke-static {v4, v6}, Lca/uhn/hl7v2/parser/OldPipeParser;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 171
    .local v4, "fields":[Ljava/lang/String;
    const/16 v6, 0x8

    aget-object v6, v4, v6

    .line 175
    .local v6, "wholeFieldNine":Ljava/lang/String;
    invoke-virtual {v0}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getComponentSeparator()C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lca/uhn/hl7v2/parser/OldPipeParser;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 176
    .local v7, "comps":[Ljava/lang/String;
    array-length v8, v7

    const/4 v9, 0x2

    const/4 v10, 0x3

    if-lt v8, v10, :cond_0

    .line 177
    aget-object v2, v7, v9

    move-object v1, v2

    .line 178
    goto :goto_0

    :cond_0
    array-length v8, v7

    if-lez v8, :cond_1

    aget-object v8, v7, v5

    if-eqz v8, :cond_1

    aget-object v8, v7, v5

    const-string v11, "ACK"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 179
    const-string v2, "ACK"

    move-object v1, v2

    .line 180
    goto :goto_0

    :cond_1
    array-length v8, v7

    if-ne v8, v9, :cond_2

    .line 181
    const/4 v3, 0x0

    .line 182
    new-instance v8, Ljava/lang/StringBuilder;

    aget-object v5, v7, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v7, v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 183
    nop

    .line 199
    .end local v4    # "fields":[Ljava/lang/String;
    .end local v7    # "comps":[Ljava/lang/String;
    :goto_0
    move-object v2, v6

    .line 204
    .end local v6    # "wholeFieldNine":Ljava/lang/String;
    .local v2, "wholeFieldNine":Ljava/lang/String;
    new-instance v4, Lca/uhn/hl7v2/parser/OldPipeParser$MessageStructure;

    invoke-direct {v4, v1, v3}, Lca/uhn/hl7v2/parser/OldPipeParser$MessageStructure;-><init>(Ljava/lang/String;Z)V

    return-object v4

    .line 188
    .end local v2    # "wholeFieldNine":Ljava/lang/String;
    .restart local v4    # "fields":[Ljava/lang/String;
    .restart local v6    # "wholeFieldNine":Ljava/lang/String;
    .restart local v7    # "comps":[Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v5, "Can\'t determine message structure from MSH-9: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 189
    .local v2, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    array-length v5, v7

    if-ge v5, v10, :cond_3

    .line 191
    const-string v5, " HINT: there are only "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    array-length v5, v7

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 193
    const-string v5, " of 3 components present"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    :cond_3
    new-instance v5, Lca/uhn/hl7v2/HL7Exception;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lca/uhn/hl7v2/ErrorCode;->UNSUPPORTED_MESSAGE_TYPE:Lca/uhn/hl7v2/ErrorCode;

    invoke-direct {v5, v8, v9}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;Lca/uhn/hl7v2/ErrorCode;)V

    throw v5
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 198
    .end local v2    # "buf":Ljava/lang/StringBuffer;
    .end local v4    # "fields":[Ljava/lang/String;
    .end local v6    # "wholeFieldNine":Ljava/lang/String;
    .end local v7    # "comps":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 199
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lca/uhn/hl7v2/HL7Exception;

    .line 200
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t find message structure (MSH-9-3): "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 201
    sget-object v6, Lca/uhn/hl7v2/ErrorCode;->UNSUPPORTED_MESSAGE_TYPE:Lca/uhn/hl7v2/ErrorCode;

    .line 199
    invoke-direct {v4, v5, v6}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;Lca/uhn/hl7v2/ErrorCode;)V

    throw v4
.end method

.method private static isDelimDefSegment(Ljava/lang/String;)Z
    .locals 2
    .param p0, "theSegmentName"    # Ljava/lang/String;

    .line 301
    const/4 v0, 0x0

    .line 302
    .local v0, "is":Z
    const-string v1, "MSH"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 303
    const-string v1, "FHS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 304
    const-string v1, "BHS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 306
    :cond_0
    const/4 v0, 0x1

    .line 308
    :cond_1
    return v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "composite"    # Ljava/lang/String;
    .param p1, "delim"    # Ljava/lang/String;

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 339
    .local v0, "components":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 340
    const-string p0, ""

    .line 341
    :cond_0
    if-nez p1, :cond_1

    .line 342
    const-string p1, ""

    .line 344
    :cond_1
    new-instance v1, Ljava/util/StringTokenizer;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 345
    .local v1, "tok":Ljava/util/StringTokenizer;
    const/4 v2, 0x1

    .line 346
    .local v2, "previousTokenWasDelim":Z
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_2

    .line 359
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3

    .line 347
    :cond_2
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 348
    .local v3, "thisTok":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 349
    if-eqz v2, :cond_3

    .line 350
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    :cond_3
    const/4 v2, 0x1

    .line 352
    goto :goto_0

    .line 354
    :cond_4
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    const/4 v2, 0x0

    .line 355
    .end local v3    # "thisTok":Ljava/lang/String;
    goto :goto_0
.end method

.method private static stripExtraDelimiters(Ljava/lang/String;C)Ljava/lang/String;
    .locals 6
    .param p0, "in"    # Ljava/lang/String;
    .param p1, "delim"    # C

    .line 398
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 401
    .local v0, "chars":[C
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 402
    .local v1, "c":I
    const/4 v2, 0x0

    .line 403
    .local v2, "found":Z
    :goto_0
    if-ltz v1, :cond_2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 404
    :cond_0
    add-int/lit8 v3, v1, -0x1

    .line 404
    .local v3, "c":I
    aget-char v1, v0, v1

    .line 404
    .end local v1    # "c":I
    if-eq v1, p1, :cond_1

    .line 405
    const/4 v2, 0x1

    .line 403
    .end local v3    # "c":I
    .restart local v1    # "c":I
    :cond_1
    move v1, v3

    goto :goto_0

    .line 408
    :cond_2
    :goto_1
    const-string v3, ""

    .line 409
    .local v3, "ret":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 410
    const/4 v4, 0x0

    add-int/lit8 v5, v1, 0x2

    invoke-static {v0, v4, v5}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v3

    .line 411
    :cond_3
    return-object v3
.end method

.method public static stripLeadingWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "in"    # Ljava/lang/String;

    .line 530
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 531
    .local v0, "out":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 532
    .local v1, "chars":[C
    const/4 v2, 0x0

    .line 533
    .local v2, "c":I
    :goto_0
    array-length v3, v1

    if-lt v2, v3, :cond_0

    goto :goto_1

    .line 534
    :cond_0
    aget-char v3, v1, v2

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 535
    nop

    .line 538
    :goto_1
    move v3, v2

    .line 538
    .local v3, "i":I
    :goto_2
    array-length v4, v1

    if-lt v3, v4, :cond_1

    .line 541
    .end local v3    # "i":I
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 539
    .restart local v3    # "i":I
    :cond_1
    aget-char v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 538
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 536
    .end local v3    # "i":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected doEncode(Lca/uhn/hl7v2/model/Message;)Ljava/lang/String;
    .locals 7
    .param p1, "source"    # Lca/uhn/hl7v2/model/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 437
    const-string v0, "MSH"

    invoke-interface {p1, v0}, Lca/uhn/hl7v2/model/Message;->get(Ljava/lang/String;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Segment;

    .line 438
    .local v0, "msh":Lca/uhn/hl7v2/model/Segment;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, v2, v2}, Lca/uhn/hl7v2/util/Terser;->get(Lca/uhn/hl7v2/model/Segment;IIII)Ljava/lang/String;

    move-result-object v3

    .line 440
    .local v3, "fieldSepString":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 441
    new-instance v1, Lca/uhn/hl7v2/HL7Exception;

    const-string v2, "Can\'t encode message: MSH-1 (field separator) is missing"

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 443
    :cond_0
    const/16 v4, 0x7c

    .line 444
    .local v4, "fieldSep":C
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 445
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 447
    :cond_1
    const/4 v5, 0x2

    invoke-static {v0, v5, v1, v2, v2}, Lca/uhn/hl7v2/util/Terser;->get(Lca/uhn/hl7v2/model/Segment;IIII)Ljava/lang/String;

    move-result-object v1

    .line 449
    .local v1, "encCharString":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 450
    new-instance v2, Lca/uhn/hl7v2/HL7Exception;

    const-string v5, "Can\'t encode message: MSH-2 (encoding characters) is missing"

    invoke-direct {v2, v5}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 452
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v5, 0x4

    if-eq v2, v5, :cond_3

    .line 453
    new-instance v2, Lca/uhn/hl7v2/HL7Exception;

    .line 454
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Encoding characters \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' invalid -- must be 4 characters"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 455
    sget-object v6, Lca/uhn/hl7v2/ErrorCode;->DATA_TYPE_ERROR:Lca/uhn/hl7v2/ErrorCode;

    .line 453
    invoke-direct {v2, v5, v6}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;Lca/uhn/hl7v2/ErrorCode;)V

    throw v2

    .line 456
    :cond_3
    new-instance v2, Lca/uhn/hl7v2/parser/EncodingCharacters;

    invoke-direct {v2, v4, v1}, Lca/uhn/hl7v2/parser/EncodingCharacters;-><init>(CLjava/lang/String;)V

    .line 459
    .local v2, "en":Lca/uhn/hl7v2/parser/EncodingCharacters;
    invoke-static {p1, v2}, Lca/uhn/hl7v2/parser/OldPipeParser;->encode(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method protected doEncode(Lca/uhn/hl7v2/model/Message;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "source"    # Lca/uhn/hl7v2/model/Message;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;,
            Lca/uhn/hl7v2/parser/EncodingNotSupportedException;
        }
    .end annotation

    .line 423
    invoke-virtual {p0, p2}, Lca/uhn/hl7v2/parser/OldPipeParser;->supportsEncoding(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    new-instance v0, Lca/uhn/hl7v2/parser/EncodingNotSupportedException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This parser does not support the "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " encoding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/parser/EncodingNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_0
    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/parser/OldPipeParser;->encode(Lca/uhn/hl7v2/model/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public doEncode(Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;
    .locals 1
    .param p1, "structure"    # Lca/uhn/hl7v2/model/Segment;
    .param p2, "encodingCharacters"    # Lca/uhn/hl7v2/parser/EncodingCharacters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 706
    invoke-static {p1, p2}, Lca/uhn/hl7v2/parser/OldPipeParser;->encode(Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public doEncode(Lca/uhn/hl7v2/model/Type;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # Lca/uhn/hl7v2/model/Type;
    .param p2, "encodingCharacters"    # Lca/uhn/hl7v2/parser/EncodingCharacters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 713
    invoke-static {p1, p2}, Lca/uhn/hl7v2/parser/OldPipeParser;->encode(Lca/uhn/hl7v2/model/Type;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected doParse(Ljava/lang/String;Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;,
            Lca/uhn/hl7v2/parser/EncodingNotSupportedException;
        }
    .end annotation

    .line 226
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/parser/OldPipeParser;->getStructure(Ljava/lang/String;)Lca/uhn/hl7v2/parser/OldPipeParser$MessageStructure;

    move-result-object v0

    .line 227
    .local v0, "structure":Lca/uhn/hl7v2/parser/OldPipeParser$MessageStructure;
    iget-object v1, v0, Lca/uhn/hl7v2/parser/OldPipeParser$MessageStructure;->messageStructure:Ljava/lang/String;

    iget-boolean v2, v0, Lca/uhn/hl7v2/parser/OldPipeParser$MessageStructure;->explicitlyDefined:Z

    invoke-virtual {p0, v1, p2, v2}, Lca/uhn/hl7v2/parser/OldPipeParser;->instantiateMessage(Ljava/lang/String;Ljava/lang/String;Z)Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    .line 229
    .local v1, "m":Lca/uhn/hl7v2/model/Message;
    invoke-virtual {p0, v1, p1}, Lca/uhn/hl7v2/parser/OldPipeParser;->parse(Lca/uhn/hl7v2/model/Message;Ljava/lang/String;)V

    .line 231
    return-object v1
.end method

.method protected doParseForSpecificPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;
    .locals 2
    .param p1, "theMessage"    # Ljava/lang/String;
    .param p2, "theVersion"    # Ljava/lang/String;
    .param p3, "thePackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;,
            Lca/uhn/hl7v2/parser/EncodingNotSupportedException;
        }
    .end annotation

    .line 723
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAckID(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "message"    # Ljava/lang/String;

    .line 625
    const/4 v0, 0x0

    .line 626
    .local v0, "ackID":Ljava/lang/String;
    const-string v1, "\rMSA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 627
    .local v1, "startMSA":I
    if-ltz v1, :cond_3

    .line 628
    add-int/lit8 v2, v1, 0x5

    .line 629
    .local v2, "startFieldOne":I
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 630
    .local v3, "fieldDelim":C
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 631
    .local v4, "start":I
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 632
    .local v5, "end":I
    const-string v6, "\r"

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 633
    .local v6, "segEnd":I
    if-le v6, v4, :cond_0

    if-ge v6, v5, :cond_0

    .line 634
    move v5, v6

    .line 637
    :cond_0
    if-gez v5, :cond_2

    .line 638
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0xd

    if-ne v7, v8, :cond_1

    .line 639
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .line 640
    goto :goto_0

    .line 642
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 645
    :cond_2
    :goto_0
    if-lez v4, :cond_3

    if-le v5, v4, :cond_3

    .line 646
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 649
    .end local v2    # "startFieldOne":I
    .end local v3    # "fieldDelim":C
    .end local v4    # "start":I
    .end local v5    # "end":I
    .end local v6    # "segEnd":I
    :cond_3
    sget-object v2, Lca/uhn/hl7v2/parser/OldPipeParser;->log:Lorg/slf4j/Logger;

    const-string v3, "ACK ID: {}"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 650
    return-object v0
.end method

.method public getCriticalResponseData(Ljava/lang/String;)Lca/uhn/hl7v2/model/Segment;
    .locals 31
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 561
    move-object/from16 v1, p1

    const-string v2, "MSH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 562
    .local v2, "locStartMSH":I
    if-gez v2, :cond_0

    .line 563
    new-instance v3, Lca/uhn/hl7v2/HL7Exception;

    .line 564
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Couldn\'t find MSH segment in message: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 565
    sget-object v5, Lca/uhn/hl7v2/ErrorCode;->SEGMENT_SEQUENCE_ERROR:Lca/uhn/hl7v2/ErrorCode;

    .line 563
    invoke-direct {v3, v4, v5}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;Lca/uhn/hl7v2/ErrorCode;)V

    throw v3

    .line 566
    :cond_0
    const/16 v3, 0xd

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 567
    .local v3, "locEndMSH":I
    if-gez v3, :cond_1

    .line 568
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 569
    :cond_1
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 572
    .local v4, "mshString":Ljava/lang/String;
    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 575
    .local v5, "fieldSep":C
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lca/uhn/hl7v2/parser/OldPipeParser;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 577
    .local v6, "fields":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 580
    .local v7, "msh":Lca/uhn/hl7v2/model/Segment;
    const/4 v8, 0x1

    :try_start_0
    aget-object v8, v6, v8

    .line 581
    .local v8, "encChars":Ljava/lang/String;
    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move v14, v9

    .line 582
    .local v14, "compSep":C
    const/16 v9, 0x9

    aget-object v21, v6, v9

    .line 583
    .local v21, "messControlID":Ljava/lang/String;
    const/16 v9, 0xa

    aget-object v9, v6, v9

    invoke-static {v14}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lca/uhn/hl7v2/parser/OldPipeParser;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    move-object/from16 v22, v9

    .line 586
    .local v22, "procIDComps":[Ljava/lang/String;
    invoke-static {}, Lca/uhn/hl7v2/Version;->lowestAvailableVersion()Lca/uhn/hl7v2/Version;

    move-result-object v9

    invoke-virtual {v9}, Lca/uhn/hl7v2/Version;->getVersion()Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 588
    .local v9, "version":Ljava/lang/String;
    :try_start_1
    invoke-virtual/range {p0 .. p1}, Lca/uhn/hl7v2/parser/OldPipeParser;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v9, v10

    .line 589
    nop

    .line 593
    .end local v9    # "version":Ljava/lang/String;
    .local v13, "version":Ljava/lang/String;
    :goto_0
    move-object v13, v9

    goto :goto_1

    .line 590
    .end local v13    # "version":Ljava/lang/String;
    .restart local v9    # "version":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 593
    .end local v9    # "version":Ljava/lang/String;
    .restart local v13    # "version":Ljava/lang/String;
    :goto_1
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/parser/OldPipeParser;->getFactory()Lca/uhn/hl7v2/parser/ModelClassFactory;

    move-result-object v9

    invoke-static {v13, v9}, Lca/uhn/hl7v2/parser/Parser;->makeControlMSH(Ljava/lang/String;Lca/uhn/hl7v2/parser/ModelClassFactory;)Lca/uhn/hl7v2/model/Segment;

    move-result-object v9

    move-object v7, v9

    .line 594
    const/16 v24, 0x1

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v23, v7

    invoke-static/range {v23 .. v28}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 595
    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/16 v16, 0x1

    move-object v9, v7

    move-object/from16 v29, v13

    move/from16 v13, v16

    .line 595
    .end local v13    # "version":Ljava/lang/String;
    .local v29, "version":Ljava/lang/String;
    move/from16 v30, v14

    move-object v14, v8

    .line 595
    .end local v14    # "compSep":C
    .local v30, "compSep":C
    invoke-static/range {v9 .. v14}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 596
    const/16 v17, 0xa

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object/from16 v16, v7

    invoke-static/range {v16 .. v21}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 597
    const/16 v24, 0xb

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x1

    aget-object v28, v22, v15

    move-object/from16 v23, v7

    invoke-static/range {v23 .. v28}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 598
    const/16 v24, 0xc

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x1

    move-object/from16 v23, v7

    move-object/from16 v28, v29

    invoke-static/range {v23 .. v28}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 600
    .end local v8    # "encChars":Ljava/lang/String;
    .end local v21    # "messControlID":Ljava/lang/String;
    .end local v22    # "procIDComps":[Ljava/lang/String;
    .end local v29    # "version":Ljava/lang/String;
    .end local v30    # "compSep":C
    nop

    .line 612
    return-object v7

    .line 601
    :catch_1
    move-exception v0

    move-object v8, v7

    move-object v7, v0

    .line 602
    .local v7, "e":Ljava/lang/Exception;
    .local v8, "msh":Lca/uhn/hl7v2/model/Segment;
    new-instance v9, Lca/uhn/hl7v2/HL7Exception;

    .line 603
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Can\'t parse critical fields from MSH segment ("

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 604
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    const-string v11, "): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 609
    sget-object v11, Lca/uhn/hl7v2/ErrorCode;->REQUIRED_FIELD_MISSING:Lca/uhn/hl7v2/ErrorCode;

    .line 602
    invoke-direct {v9, v10, v11, v7}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;Lca/uhn/hl7v2/ErrorCode;Ljava/lang/Throwable;)V

    throw v9
.end method

.method public getDefaultEncoding()Ljava/lang/String;
    .locals 1

    .line 135
    const-string v0, "VB"

    return-object v0
.end method

.method public getEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "message"    # Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    .line 94
    .local v0, "encoding":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    .line 95
    return-object v3

    .line 98
    :cond_0
    const/4 v1, 0x1

    .line 101
    .local v1, "ok":Z
    const-string v4, "MSH"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 102
    return-object v3

    .line 105
    :cond_1
    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 106
    .local v5, "fourthChar":C
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v7, "\r"

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, p1, v7, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 107
    .local v6, "st":Ljava/util/StringTokenizer;
    :cond_2
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-nez v7, :cond_6

    .line 118
    const/4 v2, 0x0

    .line 119
    .local v2, "nextFieldDelimLoc":I
    const/4 v4, 0x0

    .line 119
    .local v4, "i":I
    :goto_0
    const/16 v7, 0xb

    if-lt v4, v7, :cond_4

    .line 125
    .end local v4    # "i":I
    if-eqz v1, :cond_3

    .line 126
    const-string v0, "VB"

    .line 128
    :cond_3
    return-object v0

    .line 120
    .restart local v4    # "i":I
    :cond_4
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 121
    if-gez v2, :cond_5

    .line 122
    return-object v3

    .line 119
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 108
    .end local v2    # "nextFieldDelimLoc":I
    .end local v4    # "i":I
    :cond_6
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 109
    .local v7, "x":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 110
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 111
    invoke-static {v7}, Lca/uhn/hl7v2/parser/OldPipeParser;->stripLeadingWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 112
    :cond_7
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v9, v2, :cond_2

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v5, :cond_2

    .line 113
    return-object v3
.end method

.method public getMessageStructure(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;,
            Lca/uhn/hl7v2/parser/EncodingNotSupportedException;
        }
    .end annotation

    .line 157
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/parser/OldPipeParser;->getStructure(Ljava/lang/String;)Lca/uhn/hl7v2/parser/OldPipeParser$MessageStructure;

    move-result-object v0

    iget-object v0, v0, Lca/uhn/hl7v2/parser/OldPipeParser$MessageStructure;->messageStructure:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 660
    const-string v0, "MSH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 661
    .local v0, "startMSH":I
    const-string v1, "\r"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 662
    .local v1, "endMSH":I
    if-gez v1, :cond_0

    .line 663
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 664
    :cond_0
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 665
    .local v2, "msh":Ljava/lang/String;
    const/4 v3, 0x0

    .line 666
    .local v3, "fieldSep":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_4

    .line 667
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    .line 668
    nop

    .line 673
    invoke-static {v2, v3}, Lca/uhn/hl7v2/parser/OldPipeParser;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 675
    .local v4, "fields":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 676
    .local v5, "compSep":Ljava/lang/String;
    const/4 v6, 0x1

    array-length v7, v4

    const/4 v8, 0x2

    if-lt v7, v8, :cond_3

    aget-object v7, v4, v6

    if-eqz v7, :cond_3

    aget-object v7, v4, v6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_3

    .line 677
    aget-object v7, v4, v6

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    .line 678
    nop

    .line 684
    const/4 v7, 0x0

    .line 685
    .local v7, "version":Ljava/lang/String;
    array-length v9, v4

    const/16 v10, 0xc

    if-lt v9, v10, :cond_2

    .line 686
    const/16 v9, 0xb

    aget-object v10, v4, v9

    invoke-static {v10, v5}, Lca/uhn/hl7v2/parser/OldPipeParser;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 687
    .local v10, "comp":[Ljava/lang/String;
    array-length v11, v10

    if-lt v11, v6, :cond_1

    .line 688
    aget-object v6, v10, v8

    .line 689
    .end local v7    # "version":Ljava/lang/String;
    .local v6, "version":Ljava/lang/String;
    nop

    .line 699
    .end local v10    # "comp":[Ljava/lang/String;
    return-object v6

    .line 690
    .end local v6    # "version":Ljava/lang/String;
    .restart local v7    # "version":Ljava/lang/String;
    .restart local v10    # "comp":[Ljava/lang/String;
    :cond_1
    new-instance v6, Lca/uhn/hl7v2/HL7Exception;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "Can\'t find version ID - MSH.12 is "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v9, v4, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 691
    sget-object v9, Lca/uhn/hl7v2/ErrorCode;->REQUIRED_FIELD_MISSING:Lca/uhn/hl7v2/ErrorCode;

    .line 690
    invoke-direct {v6, v8, v9}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;Lca/uhn/hl7v2/ErrorCode;)V

    throw v6

    .line 695
    .end local v10    # "comp":[Ljava/lang/String;
    :cond_2
    new-instance v6, Lca/uhn/hl7v2/HL7Exception;

    .line 696
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Can\'t find version ID - MSH has only "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " fields."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 697
    sget-object v9, Lca/uhn/hl7v2/ErrorCode;->REQUIRED_FIELD_MISSING:Lca/uhn/hl7v2/ErrorCode;

    .line 695
    invoke-direct {v6, v8, v9}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;Lca/uhn/hl7v2/ErrorCode;)V

    throw v6

    .line 680
    .end local v7    # "version":Ljava/lang/String;
    :cond_3
    new-instance v7, Lca/uhn/hl7v2/HL7Exception;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Invalid or incomplete encoding characters - MSH-2 is "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v6, v4, v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 681
    sget-object v8, Lca/uhn/hl7v2/ErrorCode;->REQUIRED_FIELD_MISSING:Lca/uhn/hl7v2/ErrorCode;

    .line 680
    invoke-direct {v7, v6, v8}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;Lca/uhn/hl7v2/ErrorCode;)V

    throw v7

    .line 670
    .end local v4    # "fields":[Ljava/lang/String;
    .end local v5    # "compSep":Ljava/lang/String;
    :cond_4
    new-instance v4, Lca/uhn/hl7v2/HL7Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t find field separator in MSH: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lca/uhn/hl7v2/ErrorCode;->UNSUPPORTED_VERSION_ID:Lca/uhn/hl7v2/ErrorCode;

    invoke-direct {v4, v5, v6}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;Lca/uhn/hl7v2/ErrorCode;)V

    throw v4
.end method

.method public parse(Lca/uhn/hl7v2/model/Message;Ljava/lang/String;)V
    .locals 12
    .param p1, "message"    # Lca/uhn/hl7v2/model/Message;
    .param p2, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 727
    new-instance v0, Lca/uhn/hl7v2/util/MessageIterator;

    const-string v1, "MSH"

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lca/uhn/hl7v2/util/MessageIterator;-><init>(Lca/uhn/hl7v2/model/Structure;Ljava/lang/String;Z)V

    .line 728
    .local v0, "messageIter":Lca/uhn/hl7v2/util/MessageIterator;
    new-instance v1, Lca/uhn/hl7v2/parser/OldPipeParser$1;

    invoke-direct {v1, p0}, Lca/uhn/hl7v2/parser/OldPipeParser$1;-><init>(Lca/uhn/hl7v2/parser/OldPipeParser;)V

    .line 737
    .local v1, "segmentsOnly":Lca/uhn/hl7v2/util/FilterIterator$Predicate;, "Lca/uhn/hl7v2/util/FilterIterator$Predicate<Lca/uhn/hl7v2/model/Structure;>;"
    new-instance v2, Lca/uhn/hl7v2/util/FilterIterator;

    invoke-direct {v2, v0, v1}, Lca/uhn/hl7v2/util/FilterIterator;-><init>(Ljava/util/Iterator;Lca/uhn/hl7v2/util/FilterIterator$Predicate;)V

    .line 739
    .local v2, "segmentIter":Lca/uhn/hl7v2/util/FilterIterator;, "Lca/uhn/hl7v2/util/FilterIterator<Lca/uhn/hl7v2/model/Structure;>;"
    const-string v3, "\r"

    invoke-static {p2, v3}, Lca/uhn/hl7v2/parser/OldPipeParser;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 741
    .local v3, "segments":[Ljava/lang/String;
    const/16 v4, 0x7c

    .line 742
    .local v4, "delim":C
    const/4 v5, 0x0

    .line 742
    .local v5, "i":I
    :goto_0
    array-length v6, v3

    if-lt v5, v6, :cond_0

    .line 778
    .end local v5    # "i":I
    return-void

    .line 745
    .restart local v5    # "i":I
    :cond_0
    aget-object v6, v3, v5

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    aget-object v6, v3, v5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    aget-object v6, v3, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 746
    aget-object v6, v3, v5

    invoke-static {v6}, Lca/uhn/hl7v2/parser/OldPipeParser;->stripLeadingWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 749
    :cond_1
    aget-object v6, v3, v5

    if-eqz v6, :cond_4

    aget-object v6, v3, v5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v8, 0x3

    if-lt v6, v8, :cond_4

    .line 751
    if-nez v5, :cond_2

    .line 752
    aget-object v6, v3, v5

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 753
    .local v6, "name":Ljava/lang/String;
    aget-object v7, v3, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 754
    goto :goto_1

    .line 755
    .end local v6    # "name":Ljava/lang/String;
    :cond_2
    aget-object v6, v3, v5

    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_3

    .line 756
    aget-object v6, v3, v5

    aget-object v8, v3, v5

    invoke-virtual {v8, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 757
    .restart local v6    # "name":Ljava/lang/String;
    goto :goto_1

    .line 758
    .end local v6    # "name":Ljava/lang/String;
    :cond_3
    aget-object v6, v3, v5

    .line 762
    .restart local v6    # "name":Ljava/lang/String;
    :goto_1
    sget-object v7, Lca/uhn/hl7v2/parser/OldPipeParser;->log:Lorg/slf4j/Logger;

    const-string v8, "Parsing segment {}"

    invoke-interface {v7, v8, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 764
    invoke-virtual {v0, v6}, Lca/uhn/hl7v2/util/MessageIterator;->setDirection(Ljava/lang/String;)V

    .line 765
    new-instance v7, Lca/uhn/hl7v2/parser/OldPipeParser$2;

    invoke-direct {v7, p0, v6}, Lca/uhn/hl7v2/parser/OldPipeParser$2;-><init>(Lca/uhn/hl7v2/parser/OldPipeParser;Ljava/lang/String;)V

    .line 772
    .local v7, "byDirection":Lca/uhn/hl7v2/util/FilterIterator$Predicate;, "Lca/uhn/hl7v2/util/FilterIterator$Predicate<Lca/uhn/hl7v2/model/Structure;>;"
    new-instance v8, Lca/uhn/hl7v2/util/FilterIterator;

    invoke-direct {v8, v2, v7}, Lca/uhn/hl7v2/util/FilterIterator;-><init>(Ljava/util/Iterator;Lca/uhn/hl7v2/util/FilterIterator$Predicate;)V

    .line 773
    .local v8, "dirIter":Lca/uhn/hl7v2/util/FilterIterator;, "Lca/uhn/hl7v2/util/FilterIterator<Lca/uhn/hl7v2/model/Structure;>;"
    invoke-virtual {v8}, Lca/uhn/hl7v2/util/FilterIterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 774
    invoke-virtual {v8}, Lca/uhn/hl7v2/util/FilterIterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lca/uhn/hl7v2/model/Segment;

    aget-object v10, v3, v5

    invoke-static {p2}, Lca/uhn/hl7v2/parser/OldPipeParser;->getEncodingChars(Ljava/lang/String;)Lca/uhn/hl7v2/parser/EncodingCharacters;

    move-result-object v11

    invoke-virtual {p0, v9, v10, v11}, Lca/uhn/hl7v2/parser/OldPipeParser;->parse(Lca/uhn/hl7v2/model/Segment;Ljava/lang/String;Lca/uhn/hl7v2/parser/EncodingCharacters;)V

    .line 742
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "byDirection":Lca/uhn/hl7v2/util/FilterIterator$Predicate;, "Lca/uhn/hl7v2/util/FilterIterator$Predicate<Lca/uhn/hl7v2/model/Structure;>;"
    .end local v8    # "dirIter":Lca/uhn/hl7v2/util/FilterIterator;, "Lca/uhn/hl7v2/util/FilterIterator<Lca/uhn/hl7v2/model/Structure;>;"
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0
.end method

.method public parse(Lca/uhn/hl7v2/model/Segment;Ljava/lang/String;Lca/uhn/hl7v2/parser/EncodingCharacters;)V
    .locals 11
    .param p1, "destination"    # Lca/uhn/hl7v2/model/Segment;
    .param p2, "segment"    # Ljava/lang/String;
    .param p3, "encodingChars"    # Lca/uhn/hl7v2/parser/EncodingCharacters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, "fieldOffset":I
    invoke-interface {p1}, Lca/uhn/hl7v2/model/Segment;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lca/uhn/hl7v2/parser/OldPipeParser;->isDelimDefSegment(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    const/4 v0, 0x1

    .line 246
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {p3}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getFieldSeparator()C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 249
    :cond_0
    invoke-virtual {p3}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getFieldSeparator()C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lca/uhn/hl7v2/parser/OldPipeParser;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "fields":[Ljava/lang/String;
    const/4 v2, 0x1

    .line 251
    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-lt v2, v3, :cond_2

    .line 289
    .end local v2    # "i":I
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OBX"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 290
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/OldPipeParser;->getFactory()Lca/uhn/hl7v2/parser/ModelClassFactory;

    move-result-object v2

    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/OldPipeParser;->getHapiContext()Lca/uhn/hl7v2/HapiContext;

    move-result-object v3

    invoke-interface {v3}, Lca/uhn/hl7v2/HapiContext;->getParserConfiguration()Lca/uhn/hl7v2/parser/ParserConfiguration;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lca/uhn/hl7v2/parser/FixFieldDataType;->fixOBX5(Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/parser/ModelClassFactory;Lca/uhn/hl7v2/parser/ParserConfiguration;)V

    .line 293
    :cond_1
    return-void

    .line 252
    .restart local v2    # "i":I
    :cond_2
    aget-object v3, v1, v2

    invoke-virtual {p3}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getRepetitionSeparator()C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lca/uhn/hl7v2/parser/OldPipeParser;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, "reps":[Ljava/lang/String;
    sget-object v4, Lca/uhn/hl7v2/parser/OldPipeParser;->log:Lorg/slf4j/Logger;

    const-string v5, "{} reps delimited by: {}"

    const/4 v6, 0x0

    const/4 v7, 0x1

    array-length v8, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p3}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getRepetitionSeparator()C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-interface {v4, v5, v8, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 256
    invoke-interface {p1}, Lca/uhn/hl7v2/model/Segment;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lca/uhn/hl7v2/parser/OldPipeParser;->isDelimDefSegment(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int v4, v2, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    move v4, v7

    goto :goto_1

    :cond_3
    move v4, v6

    .line 257
    .local v4, "isMSH2":Z
    :goto_1
    if-eqz v4, :cond_4

    .line 258
    new-array v3, v7, [Ljava/lang/String;

    .line 259
    aget-object v5, v1, v2

    aput-object v5, v3, v6

    .line 262
    :cond_4
    const/4 v5, 0x0

    .line 262
    .local v5, "j":I
    :goto_2
    array-length v6, v3

    if-lt v5, v6, :cond_5

    .line 251
    .end local v3    # "reps":[Ljava/lang/String;
    .end local v4    # "isMSH2":Z
    .end local v5    # "j":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 264
    .restart local v3    # "reps":[Ljava/lang/String;
    .restart local v4    # "isMSH2":Z
    .restart local v5    # "j":I
    :cond_5
    :try_start_0
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v8, "Parsing field "

    invoke-direct {v6, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 265
    .local v6, "statusMessage":Ljava/lang/StringBuffer;
    add-int v8, v2, v0

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 266
    const-string v8, " repetition "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 267
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 268
    sget-object v8, Lca/uhn/hl7v2/parser/OldPipeParser;->log:Lorg/slf4j/Logger;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 271
    add-int v8, v2, v0

    invoke-interface {p1, v8, v5}, Lca/uhn/hl7v2/model/Segment;->getField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v8

    .line 272
    .local v8, "field":Lca/uhn/hl7v2/model/Type;
    if-eqz v4, :cond_6

    .line 273
    invoke-static {v8, v7, v7}, Lca/uhn/hl7v2/util/Terser;->getPrimitive(Lca/uhn/hl7v2/model/Type;II)Lca/uhn/hl7v2/model/Primitive;

    move-result-object v9

    aget-object v10, v3, v5

    invoke-interface {v9, v10}, Lca/uhn/hl7v2/model/Primitive;->setValue(Ljava/lang/String;)V

    .line 274
    goto :goto_3

    .line 275
    :cond_6
    aget-object v9, v3, v5

    invoke-virtual {p0, v8, v9, p3}, Lca/uhn/hl7v2/parser/OldPipeParser;->parse(Lca/uhn/hl7v2/model/Type;Ljava/lang/String;Lca/uhn/hl7v2/parser/EncodingCharacters;)V
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    .end local v6    # "statusMessage":Ljava/lang/StringBuffer;
    .end local v8    # "field":Lca/uhn/hl7v2/model/Type;
    nop

    .line 262
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 278
    :catch_0
    move-exception v6

    .line 280
    .local v6, "e":Lca/uhn/hl7v2/HL7Exception;
    invoke-virtual {v6, v2}, Lca/uhn/hl7v2/HL7Exception;->setFieldPosition(I)V

    .line 281
    invoke-interface {p1}, Lca/uhn/hl7v2/model/Segment;->getParent()Lca/uhn/hl7v2/model/Group;

    move-result-object v7

    invoke-static {v7, p1}, Lca/uhn/hl7v2/util/MessageIterator;->getIndex(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/model/Structure;)Lca/uhn/hl7v2/util/MessageIterator$Index;

    move-result-object v7

    iget v7, v7, Lca/uhn/hl7v2/util/MessageIterator$Index;->rep:I

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/HL7Exception;->setSegmentRepetition(I)V

    .line 282
    invoke-interface {p1}, Lca/uhn/hl7v2/model/Segment;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/HL7Exception;->setSegmentName(Ljava/lang/String;)V

    .line 283
    throw v6
.end method

.method public parse(Lca/uhn/hl7v2/model/Type;Ljava/lang/String;Lca/uhn/hl7v2/parser/EncodingCharacters;)V
    .locals 7
    .param p1, "destinationField"    # Lca/uhn/hl7v2/model/Type;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "encodingCharacters"    # Lca/uhn/hl7v2/parser/EncodingCharacters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 318
    invoke-virtual {p3}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getComponentSeparator()C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lca/uhn/hl7v2/parser/OldPipeParser;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "components":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 319
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 329
    .end local v1    # "i":I
    return-void

    .line 320
    .restart local v1    # "i":I
    :cond_0
    aget-object v2, v0, v1

    invoke-virtual {p3}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getSubcomponentSeparator()C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lca/uhn/hl7v2/parser/OldPipeParser;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 321
    .local v2, "subcomponents":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 321
    .local v3, "j":I
    :goto_1
    array-length v4, v2

    if-lt v3, v4, :cond_1

    .line 319
    .end local v2    # "subcomponents":[Ljava/lang/String;
    .end local v3    # "j":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 322
    .restart local v2    # "subcomponents":[Ljava/lang/String;
    .restart local v3    # "j":I
    :cond_1
    aget-object v4, v2, v3

    .line 323
    .local v4, "val":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 324
    invoke-static {v4, p3}, Lca/uhn/hl7v2/parser/Escape;->unescape(Ljava/lang/String;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;

    move-result-object v4

    .line 326
    :cond_2
    add-int/lit8 v5, v1, 0x1

    add-int/lit8 v6, v3, 0x1

    invoke-static {p1, v5, v6}, Lca/uhn/hl7v2/util/Terser;->getPrimitive(Lca/uhn/hl7v2/model/Type;II)Lca/uhn/hl7v2/model/Primitive;

    move-result-object v5

    invoke-interface {v5, v4}, Lca/uhn/hl7v2/model/Primitive;->setValue(Ljava/lang/String;)V

    .line 321
    .end local v4    # "val":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public supportsEncoding(Ljava/lang/String;)Z
    .locals 2
    .param p1, "encoding"    # Ljava/lang/String;

    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, "supports":Z
    if-eqz p1, :cond_0

    const-string v1, "VB"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    const/4 v0, 0x1

    .line 146
    :cond_0
    return v0
.end method
