.class public Lca/uhn/hl7v2/util/Terser;
.super Ljava/lang/Object;
.source "Terser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lca/uhn/hl7v2/util/Terser$PathSpec;
    }
.end annotation


# static fields
.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private finder:Lca/uhn/hl7v2/util/SegmentFinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 116
    const-class v0, Lca/uhn/hl7v2/util/Terser;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/util/Terser;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/model/Message;)V
    .locals 2
    .param p1, "message"    # Lca/uhn/hl7v2/model/Message;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    if-nez p1, :cond_0

    .line 124
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Message may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    new-instance v0, Lca/uhn/hl7v2/util/SegmentFinder;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/util/SegmentFinder;-><init>(Lca/uhn/hl7v2/model/Group;)V

    iput-object v0, p0, Lca/uhn/hl7v2/util/Terser;->finder:Lca/uhn/hl7v2/util/SegmentFinder;

    .line 127
    return-void
.end method

.method public static get(Lca/uhn/hl7v2/model/Segment;IIII)Ljava/lang/String;
    .locals 2
    .param p0, "segment"    # Lca/uhn/hl7v2/model/Segment;
    .param p1, "field"    # I
    .param p2, "rep"    # I
    .param p3, "component"    # I
    .param p4, "subcomponent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 141
    if-nez p0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "segment may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    if-gez p2, :cond_1

    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rep must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_1
    const/4 v0, 0x1

    if-ge p3, v0, :cond_2

    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 149
    const-string v1, "component must not be 1 or more (note that this parameter is 1-indexed, not 0-indexed)"

    .line 148
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_2
    if-ge p4, v0, :cond_3

    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 153
    const-string v1, "subcomponent must not be 1 or more (note that this parameter is 1-indexed, not 0-indexed)"

    .line 152
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Lca/uhn/hl7v2/util/Terser;->getPrimitive(Lca/uhn/hl7v2/model/Segment;IIII)Lca/uhn/hl7v2/model/Primitive;

    move-result-object v0

    .line 157
    .local v0, "prim":Lca/uhn/hl7v2/model/Primitive;
    invoke-interface {v0}, Lca/uhn/hl7v2/model/Primitive;->getValue()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getComponent(Lca/uhn/hl7v2/model/Type;I)Lca/uhn/hl7v2/model/Type;
    .locals 5
    .param p0, "type"    # Lca/uhn/hl7v2/model/Type;
    .param p1, "comp"    # I

    .line 278
    instance-of v0, p0, Lca/uhn/hl7v2/model/Primitive;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-ne p1, v1, :cond_0

    .line 279
    return-object p0

    .line 281
    :cond_0
    instance-of v0, p0, Lca/uhn/hl7v2/model/Composite;

    if-eqz v0, :cond_2

    .line 282
    invoke-static {p0}, Lca/uhn/hl7v2/util/Terser;->numStandardComponents(Lca/uhn/hl7v2/model/Type;)I

    move-result v0

    if-le p1, v0, :cond_1

    instance-of v0, p0, Lca/uhn/hl7v2/model/GenericComposite;

    if-eqz v0, :cond_2

    .line 284
    :cond_1
    :try_start_0
    move-object v0, p0

    check-cast v0, Lca/uhn/hl7v2/model/Composite;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Lca/uhn/hl7v2/model/Composite;->getComponent(I)Lca/uhn/hl7v2/model/Type;

    move-result-object v0
    :try_end_0
    .catch Lca/uhn/hl7v2/model/DataTypeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Lca/uhn/hl7v2/model/DataTypeException;
    new-instance v1, Ljava/lang/RuntimeException;

    .line 287
    const-string v2, "Internal error: HL7Exception thrown on getComponent(x) where x < # standard components."

    .line 288
    nop

    .line 286
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 292
    .end local v0    # "e":Lca/uhn/hl7v2/model/DataTypeException;
    :cond_2
    const-class v0, Lca/uhn/hl7v2/model/Varies;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 293
    move-object v0, p0

    check-cast v0, Lca/uhn/hl7v2/model/Varies;

    .line 295
    .local v0, "v":Lca/uhn/hl7v2/model/Varies;
    if-le p1, v1, :cond_3

    :try_start_1
    const-class v1, Lca/uhn/hl7v2/model/GenericPrimitive;

    invoke-virtual {v0}, Lca/uhn/hl7v2/model/Varies;->getData()Lca/uhn/hl7v2/model/Type;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 296
    new-instance v1, Lca/uhn/hl7v2/model/GenericComposite;

    invoke-virtual {v0}, Lca/uhn/hl7v2/model/Varies;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/model/GenericComposite;-><init>(Lca/uhn/hl7v2/model/Message;)V

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/model/Varies;->setData(Lca/uhn/hl7v2/model/Type;)V
    :try_end_1
    .catch Lca/uhn/hl7v2/model/DataTypeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 297
    goto :goto_0

    :catch_1
    move-exception v1

    .line 298
    .local v1, "e":Lca/uhn/hl7v2/model/DataTypeException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected exception copying data to generic composite: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lca/uhn/hl7v2/model/DataTypeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 299
    nop

    .line 298
    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 302
    .end local v1    # "e":Lca/uhn/hl7v2/model/DataTypeException;
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lca/uhn/hl7v2/model/Varies;->getData()Lca/uhn/hl7v2/model/Type;

    move-result-object v1

    invoke-static {v1, p1}, Lca/uhn/hl7v2/util/Terser;->getComponent(Lca/uhn/hl7v2/model/Type;I)Lca/uhn/hl7v2/model/Type;

    move-result-object v1

    return-object v1

    .line 305
    .end local v0    # "v":Lca/uhn/hl7v2/model/Varies;
    :cond_4
    invoke-interface {p0}, Lca/uhn/hl7v2/model/Type;->getExtraComponents()Lca/uhn/hl7v2/model/ExtraComponents;

    move-result-object v0

    invoke-static {p0}, Lca/uhn/hl7v2/util/Terser;->numStandardComponents(Lca/uhn/hl7v2/model/Type;)I

    move-result v2

    sub-int v2, p1, v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lca/uhn/hl7v2/model/ExtraComponents;->getComponent(I)Lca/uhn/hl7v2/model/Variable;

    move-result-object v0

    return-object v0
.end method

.method public static getIndices(Ljava/lang/String;)[I
    .locals 9
    .param p0, "spec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 403
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "-"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 404
    .local v0, "tok":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 405
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-nez v1, :cond_0

    .line 406
    new-instance v1, Lca/uhn/hl7v2/HL7Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Must specify field in spec "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 408
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    const-string v4, "()"

    invoke-direct {v1, v3, v4, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 409
    .local v1, "fieldSpec":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 410
    .local v3, "fieldNum":I
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 411
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 410
    :cond_1
    move v4, v2

    .line 412
    .local v4, "fieldRep":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    .line 413
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    .line 412
    :cond_2
    move v5, v6

    .line 414
    .local v5, "component":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 415
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_2

    .line 414
    :cond_3
    move v7, v6

    .line 416
    .local v7, "subcomponent":I
    :goto_2
    const/4 v8, 0x4

    new-array v8, v8, [I

    aput v3, v8, v2

    aput v4, v8, v6

    const/4 v2, 0x2

    aput v5, v8, v2

    const/4 v2, 0x3

    aput v7, v8, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    .line 417
    .end local v1    # "fieldSpec":Ljava/util/StringTokenizer;
    .end local v3    # "fieldNum":I
    .end local v4    # "fieldRep":I
    .end local v5    # "component":I
    .end local v7    # "subcomponent":I
    :catch_0
    move-exception v1

    .line 418
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lca/uhn/hl7v2/HL7Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid integer in spec "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getPrimitive(Lca/uhn/hl7v2/model/Segment;IIII)Lca/uhn/hl7v2/model/Primitive;
    .locals 2
    .param p0, "segment"    # Lca/uhn/hl7v2/model/Segment;
    .param p1, "field"    # I
    .param p2, "rep"    # I
    .param p3, "component"    # I
    .param p4, "subcomponent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 206
    invoke-interface {p0, p1, p2}, Lca/uhn/hl7v2/model/Segment;->getField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    .line 207
    .local v0, "type":Lca/uhn/hl7v2/model/Type;
    invoke-static {v0, p3, p4}, Lca/uhn/hl7v2/util/Terser;->getPrimitive(Lca/uhn/hl7v2/model/Type;II)Lca/uhn/hl7v2/model/Primitive;

    move-result-object v1

    return-object v1
.end method

.method private static getPrimitive(Lca/uhn/hl7v2/model/Type;)Lca/uhn/hl7v2/model/Primitive;
    .locals 3
    .param p0, "type"    # Lca/uhn/hl7v2/model/Type;

    .line 257
    instance-of v0, p0, Lca/uhn/hl7v2/model/Primitive;

    if-eqz v0, :cond_0

    .line 258
    move-object v0, p0

    check-cast v0, Lca/uhn/hl7v2/model/Primitive;

    return-object v0

    .line 260
    :cond_0
    instance-of v0, p0, Lca/uhn/hl7v2/model/Composite;

    if-eqz v0, :cond_1

    .line 262
    :try_start_0
    move-object v0, p0

    check-cast v0, Lca/uhn/hl7v2/model/Composite;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lca/uhn/hl7v2/model/Composite;->getComponent(I)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    invoke-static {v0}, Lca/uhn/hl7v2/util/Terser;->getPrimitive(Lca/uhn/hl7v2/model/Type;)Lca/uhn/hl7v2/model/Primitive;

    move-result-object v0
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Lca/uhn/hl7v2/HL7Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Internal error: HL7Exception thrown on Composite.getComponent(0)."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 267
    .end local v0    # "e":Lca/uhn/hl7v2/HL7Exception;
    :cond_1
    move-object v0, p0

    check-cast v0, Lca/uhn/hl7v2/model/Varies;

    invoke-virtual {v0}, Lca/uhn/hl7v2/model/Varies;->getData()Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    invoke-static {v0}, Lca/uhn/hl7v2/util/Terser;->getPrimitive(Lca/uhn/hl7v2/model/Type;)Lca/uhn/hl7v2/model/Primitive;

    move-result-object v0

    return-object v0
.end method

.method public static getPrimitive(Lca/uhn/hl7v2/model/Type;II)Lca/uhn/hl7v2/model/Primitive;
    .locals 4
    .param p0, "type"    # Lca/uhn/hl7v2/model/Type;
    .param p1, "component"    # I
    .param p2, "subcomponent"    # I

    .line 222
    if-nez p0, :cond_0

    .line 223
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    .line 226
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 227
    const-string v1, "component must not be 1 or more (note that this parameter is 1-indexed, not 0-indexed)"

    .line 226
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_1
    if-ge p2, v0, :cond_2

    .line 230
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 231
    const-string v1, "subcomponent must not be 1 or more (note that this parameter is 1-indexed, not 0-indexed)"

    .line 230
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_2
    invoke-static {p0, p1}, Lca/uhn/hl7v2/util/Terser;->getComponent(Lca/uhn/hl7v2/model/Type;I)Lca/uhn/hl7v2/model/Type;

    move-result-object v1

    .line 235
    .local v1, "comp":Lca/uhn/hl7v2/model/Type;
    instance-of v2, p0, Lca/uhn/hl7v2/model/Varies;

    if-eqz v2, :cond_3

    instance-of v2, v1, Lca/uhn/hl7v2/model/GenericPrimitive;

    if-eqz v2, :cond_3

    if-le p2, v0, :cond_3

    .line 237
    :try_start_0
    move-object v0, p0

    check-cast v0, Lca/uhn/hl7v2/model/Varies;

    .line 238
    .local v0, "varies":Lca/uhn/hl7v2/model/Varies;
    new-instance v2, Lca/uhn/hl7v2/model/GenericComposite;

    invoke-interface {p0}, Lca/uhn/hl7v2/model/Type;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    invoke-direct {v2, v3}, Lca/uhn/hl7v2/model/GenericComposite;-><init>(Lca/uhn/hl7v2/model/Message;)V

    .line 239
    .local v2, "comp2":Lca/uhn/hl7v2/model/GenericComposite;
    invoke-virtual {v0, v2}, Lca/uhn/hl7v2/model/Varies;->setData(Lca/uhn/hl7v2/model/Type;)V

    .line 240
    invoke-static {p0, p1}, Lca/uhn/hl7v2/util/Terser;->getComponent(Lca/uhn/hl7v2/model/Type;I)Lca/uhn/hl7v2/model/Type;

    move-result-object v3
    :try_end_0
    .catch Lca/uhn/hl7v2/model/DataTypeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 241
    .end local v0    # "varies":Lca/uhn/hl7v2/model/Varies;
    .end local v2    # "comp2":Lca/uhn/hl7v2/model/GenericComposite;
    goto :goto_0

    :catch_0
    move-exception v0

    .line 242
    .local v0, "de":Lca/uhn/hl7v2/model/DataTypeException;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected exception copying data to generic composite. This is probably a bug within HAPI. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0}, Lca/uhn/hl7v2/model/DataTypeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "message":Ljava/lang/String;
    sget-object v3, Lca/uhn/hl7v2/util/Terser;->log:Lorg/slf4j/Logger;

    invoke-interface {v3, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 245
    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 248
    .end local v0    # "de":Lca/uhn/hl7v2/model/DataTypeException;
    .end local v2    # "message":Ljava/lang/String;
    :cond_3
    :goto_0
    invoke-static {v1, p2}, Lca/uhn/hl7v2/util/Terser;->getComponent(Lca/uhn/hl7v2/model/Type;I)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    .line 249
    .local v0, "sub":Lca/uhn/hl7v2/model/Type;
    invoke-static {v0}, Lca/uhn/hl7v2/util/Terser;->getPrimitive(Lca/uhn/hl7v2/model/Type;)Lca/uhn/hl7v2/model/Primitive;

    move-result-object v2

    return-object v2
.end method

.method public static numComponents(Lca/uhn/hl7v2/model/Type;)I
    .locals 2
    .param p0, "t"    # Lca/uhn/hl7v2/model/Type;

    .line 468
    instance-of v0, p0, Lca/uhn/hl7v2/model/Varies;

    if-nez v0, :cond_0

    .line 469
    invoke-static {p0}, Lca/uhn/hl7v2/util/Terser;->numStandardComponents(Lca/uhn/hl7v2/model/Type;)I

    move-result v0

    invoke-interface {p0}, Lca/uhn/hl7v2/model/Type;->getExtraComponents()Lca/uhn/hl7v2/model/ExtraComponents;

    move-result-object v1

    invoke-virtual {v1}, Lca/uhn/hl7v2/model/ExtraComponents;->numComponents()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 471
    :cond_0
    move-object v0, p0

    check-cast v0, Lca/uhn/hl7v2/model/Varies;

    invoke-virtual {v0}, Lca/uhn/hl7v2/model/Varies;->getData()Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    invoke-static {v0}, Lca/uhn/hl7v2/util/Terser;->numComponents(Lca/uhn/hl7v2/model/Type;)I

    move-result v0

    return v0
.end method

.method private static numStandardComponents(Lca/uhn/hl7v2/model/Type;)I
    .locals 1
    .param p0, "t"    # Lca/uhn/hl7v2/model/Type;

    .line 475
    instance-of v0, p0, Lca/uhn/hl7v2/model/Composite;

    if-eqz v0, :cond_0

    .line 476
    move-object v0, p0

    check-cast v0, Lca/uhn/hl7v2/model/Composite;

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Composite;->getComponents()[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    array-length v0, v0

    return v0

    .line 478
    :cond_0
    instance-of v0, p0, Lca/uhn/hl7v2/model/Varies;

    if-eqz v0, :cond_1

    .line 479
    move-object v0, p0

    check-cast v0, Lca/uhn/hl7v2/model/Varies;

    invoke-virtual {v0}, Lca/uhn/hl7v2/model/Varies;->getData()Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    invoke-static {v0}, Lca/uhn/hl7v2/util/Terser;->numStandardComponents(Lca/uhn/hl7v2/model/Type;)I

    move-result v0

    return v0

    .line 481
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static numSubComponents(Lca/uhn/hl7v2/model/Type;I)I
    .locals 3
    .param p0, "type"    # Lca/uhn/hl7v2/model/Type;
    .param p1, "component"    # I

    .line 450
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-class v1, Lca/uhn/hl7v2/model/Primitive;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 454
    return v0

    .line 456
    :cond_0
    invoke-static {p0, p1}, Lca/uhn/hl7v2/util/Terser;->getComponent(Lca/uhn/hl7v2/model/Type;I)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    .line 457
    .local v0, "comp":Lca/uhn/hl7v2/model/Type;
    invoke-static {v0}, Lca/uhn/hl7v2/util/Terser;->numComponents(Lca/uhn/hl7v2/model/Type;)I

    move-result v1

    return v1
.end method

.method private parsePathSpec(Ljava/lang/String;)Lca/uhn/hl7v2/util/Terser$PathSpec;
    .locals 7
    .param p1, "spec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 367
    new-instance v0, Lca/uhn/hl7v2/util/Terser$PathSpec;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/util/Terser$PathSpec;-><init>(Lca/uhn/hl7v2/util/Terser$PathSpec;)V

    .line 369
    .local v0, "ps":Lca/uhn/hl7v2/util/Terser$PathSpec;
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 370
    const/4 v1, 0x1

    iput-boolean v1, v0, Lca/uhn/hl7v2/util/Terser$PathSpec;->find:Z

    .line 371
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 372
    goto :goto_0

    .line 373
    :cond_0
    iput-boolean v2, v0, Lca/uhn/hl7v2/util/Terser$PathSpec;->find:Z

    .line 376
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 377
    new-instance v1, Lca/uhn/hl7v2/HL7Exception;

    const-string v2, "Invalid path (some path element is either empty or contains only a dot)"

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 379
    :cond_1
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v3, "()"

    invoke-direct {v1, p1, v3, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 380
    .local v1, "tok":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lca/uhn/hl7v2/util/Terser$PathSpec;->pattern:Ljava/lang/String;

    .line 381
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 382
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 384
    .local v2, "repString":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lca/uhn/hl7v2/util/Terser$PathSpec;->rep:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    goto :goto_1

    :catch_0
    move-exception v3

    .line 386
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Lca/uhn/hl7v2/HL7Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " is not a valid rep #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 389
    .end local v2    # "repString":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    iput v2, v0, Lca/uhn/hl7v2/util/Terser$PathSpec;->rep:I

    .line 391
    :goto_1
    return-object v0
.end method

.method public static set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V
    .locals 2
    .param p0, "segment"    # Lca/uhn/hl7v2/model/Segment;
    .param p1, "field"    # I
    .param p2, "rep"    # I
    .param p3, "component"    # I
    .param p4, "subcomponent"    # I
    .param p5, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 173
    if-nez p0, :cond_0

    .line 174
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "segment may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    if-gez p2, :cond_1

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rep must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_1
    const/4 v0, 0x1

    if-ge p3, v0, :cond_2

    .line 180
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 181
    const-string v1, "component must be 1 or more (note that this parameter is 1-indexed, not 0-indexed)"

    .line 180
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_2
    if-ge p4, v0, :cond_3

    .line 184
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 185
    const-string v1, "subcomponent must be 1 or more (note that this parameter is 1-indexed, not 0-indexed)"

    .line 184
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Lca/uhn/hl7v2/util/Terser;->getPrimitive(Lca/uhn/hl7v2/model/Segment;IIII)Lca/uhn/hl7v2/model/Primitive;

    move-result-object v0

    .line 189
    .local v0, "prim":Lca/uhn/hl7v2/model/Primitive;
    invoke-interface {v0, p5}, Lca/uhn/hl7v2/model/Primitive;->setValue(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public static set(Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/Location;Ljava/lang/String;)V
    .locals 6
    .param p0, "segment"    # Lca/uhn/hl7v2/model/Segment;
    .param p1, "location"    # Lca/uhn/hl7v2/Location;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 193
    nop

    .line 194
    invoke-virtual {p1}, Lca/uhn/hl7v2/Location;->getField()I

    move-result v1

    .line 195
    invoke-virtual {p1}, Lca/uhn/hl7v2/Location;->getFieldRepetition()I

    move-result v2

    .line 196
    invoke-virtual {p1}, Lca/uhn/hl7v2/Location;->getComponent()I

    move-result v3

    .line 197
    invoke-virtual {p1}, Lca/uhn/hl7v2/Location;->getSubcomponent()I

    move-result v4

    .line 198
    nop

    .line 193
    move-object v0, p0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 199
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "spec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 323
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "-"

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 324
    .local v0, "tok":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lca/uhn/hl7v2/util/Terser;->getSegment(Ljava/lang/String;)Lca/uhn/hl7v2/model/Segment;

    move-result-object v1

    .line 326
    .local v1, "segment":Lca/uhn/hl7v2/model/Segment;
    invoke-static {p1}, Lca/uhn/hl7v2/util/Terser;->getIndices(Ljava/lang/String;)[I

    move-result-object v3

    .line 327
    .local v3, "ind":[I
    aget v2, v3, v2

    const/4 v4, 0x1

    aget v4, v3, v4

    const/4 v5, 0x2

    aget v5, v3, v5

    const/4 v6, 0x3

    aget v6, v3, v6

    invoke-static {v1, v2, v4, v5, v6}, Lca/uhn/hl7v2/util/Terser;->get(Lca/uhn/hl7v2/model/Segment;IIII)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getFinder()Lca/uhn/hl7v2/util/SegmentFinder;
    .locals 1

    .line 492
    iget-object v0, p0, Lca/uhn/hl7v2/util/Terser;->finder:Lca/uhn/hl7v2/util/SegmentFinder;

    return-object v0
.end method

.method public getSegment(Ljava/lang/String;)Lca/uhn/hl7v2/model/Segment;
    .locals 7
    .param p1, "segSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 338
    const/4 v0, 0x0

    .line 340
    .local v0, "seg":Lca/uhn/hl7v2/model/Segment;
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    invoke-virtual {p0}, Lca/uhn/hl7v2/util/Terser;->getFinder()Lca/uhn/hl7v2/util/SegmentFinder;

    move-result-object v1

    invoke-virtual {v1}, Lca/uhn/hl7v2/util/SegmentFinder;->reset()V

    .line 344
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "/"

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 345
    .local v1, "tok":Ljava/util/StringTokenizer;
    invoke-virtual {p0}, Lca/uhn/hl7v2/util/Terser;->getFinder()Lca/uhn/hl7v2/util/SegmentFinder;

    move-result-object v2

    .line 346
    .local v2, "finder":Lca/uhn/hl7v2/util/SegmentFinder;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_1

    .line 362
    return-object v0

    .line 347
    :cond_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 348
    .local v3, "pathSpec":Ljava/lang/String;
    invoke-direct {p0, v3}, Lca/uhn/hl7v2/util/Terser;->parsePathSpec(Ljava/lang/String;)Lca/uhn/hl7v2/util/Terser$PathSpec;

    move-result-object v4

    .line 349
    .local v4, "ps":Lca/uhn/hl7v2/util/Terser$PathSpec;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    iput-boolean v5, v4, Lca/uhn/hl7v2/util/Terser$PathSpec;->isGroup:Z

    .line 350
    iget-boolean v5, v4, Lca/uhn/hl7v2/util/Terser$PathSpec;->isGroup:Z

    if-eqz v5, :cond_3

    .line 351
    iget-boolean v5, v4, Lca/uhn/hl7v2/util/Terser$PathSpec;->find:Z

    if-eqz v5, :cond_2

    .line 352
    iget-object v5, v4, Lca/uhn/hl7v2/util/Terser$PathSpec;->pattern:Ljava/lang/String;

    iget v6, v4, Lca/uhn/hl7v2/util/Terser$PathSpec;->rep:I

    invoke-virtual {v2, v5, v6}, Lca/uhn/hl7v2/util/SegmentFinder;->findGroup(Ljava/lang/String;I)Lca/uhn/hl7v2/model/Group;

    move-result-object v5

    goto :goto_1

    .line 353
    :cond_2
    iget-object v5, v4, Lca/uhn/hl7v2/util/Terser$PathSpec;->pattern:Ljava/lang/String;

    iget v6, v4, Lca/uhn/hl7v2/util/Terser$PathSpec;->rep:I

    invoke-virtual {v2, v5, v6}, Lca/uhn/hl7v2/util/SegmentFinder;->getGroup(Ljava/lang/String;I)Lca/uhn/hl7v2/model/Group;

    move-result-object v5

    .line 351
    :goto_1
    nop

    .line 354
    .local v5, "g":Lca/uhn/hl7v2/model/Group;
    new-instance v6, Lca/uhn/hl7v2/util/SegmentFinder;

    invoke-direct {v6, v5}, Lca/uhn/hl7v2/util/SegmentFinder;-><init>(Lca/uhn/hl7v2/model/Group;)V

    move-object v2, v6

    .line 355
    .end local v5    # "g":Lca/uhn/hl7v2/model/Group;
    goto :goto_0

    .line 356
    :cond_3
    iget-boolean v5, v4, Lca/uhn/hl7v2/util/Terser$PathSpec;->find:Z

    if-eqz v5, :cond_4

    .line 357
    iget-object v5, v4, Lca/uhn/hl7v2/util/Terser$PathSpec;->pattern:Ljava/lang/String;

    iget v6, v4, Lca/uhn/hl7v2/util/Terser$PathSpec;->rep:I

    invoke-virtual {v2, v5, v6}, Lca/uhn/hl7v2/util/SegmentFinder;->findSegment(Ljava/lang/String;I)Lca/uhn/hl7v2/model/Segment;

    move-result-object v5

    goto :goto_2

    .line 358
    :cond_4
    iget-object v5, v4, Lca/uhn/hl7v2/util/Terser$PathSpec;->pattern:Ljava/lang/String;

    iget v6, v4, Lca/uhn/hl7v2/util/Terser$PathSpec;->rep:I

    invoke-virtual {v2, v5, v6}, Lca/uhn/hl7v2/util/SegmentFinder;->getSegment(Ljava/lang/String;I)Lca/uhn/hl7v2/model/Segment;

    move-result-object v5

    .line 356
    :goto_2
    move-object v0, v5

    .line 356
    .end local v3    # "pathSpec":Ljava/lang/String;
    .end local v4    # "ps":Lca/uhn/hl7v2/util/Terser$PathSpec;
    goto :goto_0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "spec"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 431
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "-"

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 432
    .local v0, "tok":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lca/uhn/hl7v2/util/Terser;->getSegment(Ljava/lang/String;)Lca/uhn/hl7v2/model/Segment;

    move-result-object v1

    .line 434
    .local v1, "segment":Lca/uhn/hl7v2/model/Segment;
    invoke-static {p1}, Lca/uhn/hl7v2/util/Terser;->getIndices(Ljava/lang/String;)[I

    move-result-object v9

    .line 435
    .local v9, "ind":[I
    sget-object v3, Lca/uhn/hl7v2/util/Terser;->log:Lorg/slf4j/Logger;

    const-string v4, "Setting {} seg: {} ind: {} {} {} {}"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-interface {v1}, Lca/uhn/hl7v2/model/Segment;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    aget v6, v9, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x2

    aput-object v6, v5, v8

    aget v6, v9, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v10, 0x3

    aput-object v6, v5, v10

    .line 436
    aget v6, v9, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v11, 0x4

    aput-object v6, v5, v11

    aget v6, v9, v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v11, 0x5

    aput-object v6, v5, v11

    .line 435
    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 437
    aget v4, v9, v2

    aget v5, v9, v7

    aget v6, v9, v8

    aget v7, v9, v10

    move-object v3, v1

    move-object v8, p2

    invoke-static/range {v3 .. v8}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 438
    return-void
.end method
