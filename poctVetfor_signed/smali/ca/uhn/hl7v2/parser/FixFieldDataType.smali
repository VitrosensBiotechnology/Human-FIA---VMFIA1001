.class public final Lca/uhn/hl7v2/parser/FixFieldDataType;
.super Ljava/lang/Object;
.source "FixFieldDataType.java"


# static fields
.field public static final DEFAULT_OBX2_TYPE_PROP:Ljava/lang/String; = "ca.uhn.hl7v2.model.varies.default_obx2_type"

.field public static final ESCAPE_SUBCOMPONENT_DELIM_IN_PRIMITIVE:Ljava/lang/String; = "ca.uhn.hl7v2.model.varies.escape_subcomponent_delim_in_primitive"

.field public static final INVALID_OBX2_TYPE_PROP:Ljava/lang/String; = "ca.uhn.hl7v2.model.varies.invalid_obx2_type"

.field private static final LOG:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    const-class v0, Lca/uhn/hl7v2/model/Varies;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/parser/FixFieldDataType;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static escapeSubcomponentDelimInPrimitive()Z
    .locals 2

    .line 245
    const-string v0, "ca.uhn.hl7v2.model.varies.escape_subcomponent_delim_in_primitive"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "property":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public static fix(Lca/uhn/hl7v2/model/Segment;IILjava/lang/String;Ljava/lang/String;Lca/uhn/hl7v2/parser/ModelClassFactory;Lca/uhn/hl7v2/parser/ParserConfiguration;)V
    .locals 25
    .param p0, "segment"    # Lca/uhn/hl7v2/model/Segment;
    .param p1, "typeField"    # I
    .param p2, "dataField"    # I
    .param p3, "defaultType"    # Ljava/lang/String;
    .param p4, "invalidType"    # Ljava/lang/String;
    .param p5, "factory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;
    .param p6, "parserConfiguration"    # Lca/uhn/hl7v2/parser/ParserConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    .line 151
    const/4 v7, 0x0

    :try_start_0
    invoke-interface {v1, v2, v7}, Lca/uhn/hl7v2/model/Segment;->getField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v8

    check-cast v8, Lca/uhn/hl7v2/model/Primitive;

    .line 152
    .local v8, "type":Lca/uhn/hl7v2/model/Primitive;
    invoke-interface {v1, v3}, Lca/uhn/hl7v2/model/Segment;->getField(I)[Lca/uhn/hl7v2/model/Type;

    move-result-object v9

    .line 153
    .local v9, "reps":[Lca/uhn/hl7v2/model/Type;
    array-length v10, v9

    move v11, v7

    :goto_0
    if-lt v11, v10, :cond_0

    .line 234
    .end local v8    # "type":Lca/uhn/hl7v2/model/Primitive;
    .end local v9    # "reps":[Lca/uhn/hl7v2/model/Type;
    nop

    .line 242
    return-void

    .line 153
    .restart local v8    # "type":Lca/uhn/hl7v2/model/Primitive;
    .restart local v9    # "reps":[Lca/uhn/hl7v2/model/Type;
    :cond_0
    aget-object v12, v9, v11

    .line 154
    .local v12, "rep":Lca/uhn/hl7v2/model/Type;
    move-object v13, v12

    check-cast v13, Lca/uhn/hl7v2/model/Varies;

    .line 155
    .local v13, "v":Lca/uhn/hl7v2/model/Varies;
    invoke-interface {v8}, Lca/uhn/hl7v2/model/Primitive;->getValue()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_1

    .line 156
    if-eqz v4, :cond_1

    .line 158
    invoke-interface {v8, v4}, Lca/uhn/hl7v2/model/Primitive;->setValue(Ljava/lang/String;)V

    .line 162
    :cond_1
    invoke-interface {v8}, Lca/uhn/hl7v2/model/Primitive;->getValue()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    if-nez v14, :cond_3

    .line 163
    invoke-virtual {v13}, Lca/uhn/hl7v2/model/Varies;->getData()Lca/uhn/hl7v2/model/Type;

    move-result-object v14

    if-eqz v14, :cond_a

    .line 164
    invoke-virtual {v13}, Lca/uhn/hl7v2/model/Varies;->getData()Lca/uhn/hl7v2/model/Type;

    move-result-object v14

    instance-of v14, v14, Lca/uhn/hl7v2/model/Primitive;

    if-eqz v14, :cond_2

    invoke-virtual {v13}, Lca/uhn/hl7v2/model/Varies;->getData()Lca/uhn/hl7v2/model/Type;

    move-result-object v14

    check-cast v14, Lca/uhn/hl7v2/model/Primitive;

    invoke-interface {v14}, Lca/uhn/hl7v2/model/Primitive;->getValue()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_a

    .line 165
    :cond_2
    new-instance v10, Lca/uhn/hl7v2/HL7Exception;

    .line 166
    const-string v11, "A datatype for %s-%n must be specified in %s-%n."

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    invoke-interface/range {p0 .. p0}, Lca/uhn/hl7v2/model/Segment;->getName()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v14, v7

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v14, v15

    invoke-interface/range {p0 .. p0}, Lca/uhn/hl7v2/model/Segment;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v15, 0x2

    aput-object v7, v14, v15

    const/4 v7, 0x3

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v7

    .line 165
    invoke-static {v11, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 167
    sget-object v11, Lca/uhn/hl7v2/ErrorCode;->REQUIRED_FIELD_MISSING:Lca/uhn/hl7v2/ErrorCode;

    .line 165
    invoke-direct {v10, v7, v11}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;Lca/uhn/hl7v2/ErrorCode;)V

    throw v10

    .line 173
    :cond_3
    invoke-interface/range {p0 .. p0}, Lca/uhn/hl7v2/model/Segment;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v14

    invoke-interface {v14}, Lca/uhn/hl7v2/model/Message;->getVersion()Ljava/lang/String;

    move-result-object v14

    .line 174
    .local v14, "version":Ljava/lang/String;
    invoke-interface {v8}, Lca/uhn/hl7v2/model/Primitive;->getValue()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v18, v17

    .line 175
    .local v18, "typeValue":Ljava/lang/String;
    move-object/from16 v7, v18

    invoke-interface {v6, v7, v14}, Lca/uhn/hl7v2/parser/ModelClassFactory;->getTypeClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v17

    .line 176
    .end local v18    # "typeValue":Ljava/lang/String;
    .local v7, "typeValue":Ljava/lang/String;
    .local v17, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Type;>;"
    if-nez v17, :cond_5

    .line 177
    if-eqz v5, :cond_4

    .line 178
    invoke-interface {v6, v5, v14}, Lca/uhn/hl7v2/parser/ModelClassFactory;->getTypeClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v18

    move-object/from16 v17, v18

    .line 181
    :cond_4
    if-nez v17, :cond_5

    .line 182
    const/4 v10, 0x0

    invoke-interface {v1, v15, v10}, Lca/uhn/hl7v2/model/Segment;->getField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v10

    check-cast v10, Lca/uhn/hl7v2/model/Primitive;

    .line 183
    .local v10, "obx1":Lca/uhn/hl7v2/model/Primitive;
    new-instance v11, Lca/uhn/hl7v2/HL7Exception;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-direct {v15, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-interface {v8}, Lca/uhn/hl7v2/model/Primitive;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' in record "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-interface {v10}, Lca/uhn/hl7v2/model/Primitive;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is invalid for version "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 186
    sget-object v15, Lca/uhn/hl7v2/ErrorCode;->DATA_TYPE_ERROR:Lca/uhn/hl7v2/ErrorCode;

    .line 183
    invoke-direct {v11, v4, v15}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;Lca/uhn/hl7v2/ErrorCode;)V

    move-object v4, v11

    .line 187
    .local v4, "h":Lca/uhn/hl7v2/HL7Exception;
    invoke-interface/range {p0 .. p0}, Lca/uhn/hl7v2/model/Segment;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lca/uhn/hl7v2/HL7Exception;->setSegmentName(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v4, v2}, Lca/uhn/hl7v2/HL7Exception;->setFieldPosition(I)V

    .line 189
    throw v4
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 195
    .end local v4    # "h":Lca/uhn/hl7v2/HL7Exception;
    .end local v10    # "obx1":Lca/uhn/hl7v2/model/Primitive;
    :cond_5
    move-object/from16 v4, v17

    .line 195
    .end local v17    # "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Type;>;"
    .local v4, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Type;>;"
    :try_start_1
    new-array v2, v15, [Ljava/lang/Class;

    const-class v17, Lca/uhn/hl7v2/model/Message;

    const/16 v18, 0x0

    aput-object v17, v2, v18

    invoke-virtual {v4, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 196
    .local v2, "constr":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lca/uhn/hl7v2/model/Type;>;"
    new-array v5, v15, [Ljava/lang/Object;

    invoke-virtual {v13}, Lca/uhn/hl7v2/model/Varies;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v17, v5, v18

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lca/uhn/hl7v2/model/Type;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 196
    .end local v2    # "constr":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lca/uhn/hl7v2/model/Type;>;"
    move-object v2, v5

    .line 197
    .local v2, "newTypeInstance":Lca/uhn/hl7v2/model/Type;
    nop

    .line 199
    move/from16 v17, v15

    move-object v15, v2

    const/4 v2, 0x0

    goto :goto_1

    .line 197
    .end local v2    # "newTypeInstance":Lca/uhn/hl7v2/model/Type;
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 198
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const/4 v5, 0x2

    :try_start_2
    new-array v15, v5, [Ljava/lang/Class;

    const-class v5, Lca/uhn/hl7v2/model/Message;

    const/16 v17, 0x0

    aput-object v5, v15, v17

    const-class v5, Ljava/lang/Integer;

    const/16 v17, 0x1

    aput-object v5, v15, v17

    invoke-virtual {v4, v15}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 199
    .local v5, "constr":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lca/uhn/hl7v2/model/Type;>;"
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v13}, Lca/uhn/hl7v2/model/Varies;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v16

    move-object/from16 v19, v2

    const/4 v2, 0x0

    aput-object v16, v15, v2

    .line 199
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .local v19, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x1

    aput-object v16, v15, v17

    invoke-virtual {v5, v15}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lca/uhn/hl7v2/model/Type;

    .line 199
    .end local v5    # "constr":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lca/uhn/hl7v2/model/Type;>;"
    .end local v19    # "e":Ljava/lang/NoSuchMethodException;
    .local v15, "newTypeInstance":Lca/uhn/hl7v2/model/Type;
    :goto_1
    move-object v5, v15

    .line 203
    .end local v15    # "newTypeInstance":Lca/uhn/hl7v2/model/Type;
    .local v5, "newTypeInstance":Lca/uhn/hl7v2/model/Type;
    invoke-virtual/range {p6 .. p6}, Lca/uhn/hl7v2/parser/ParserConfiguration;->isEscapeSubcomponentDelimiterInPrimitive()Z

    move-result v15

    if-nez v15, :cond_6

    .line 204
    invoke-static {}, Lca/uhn/hl7v2/parser/FixFieldDataType;->escapeSubcomponentDelimInPrimitive()Z

    move-result v15

    if-nez v15, :cond_6

    .line 202
    move/from16 v17, v2

    nop

    :cond_6
    move/from16 v15, v17

    .line 207
    .local v15, "escapeSubcomponentDelimInPrimitive":Z
    instance-of v2, v5, Lca/uhn/hl7v2/model/Primitive;

    if-eqz v2, :cond_9

    .line 208
    invoke-static {v13}, Lca/uhn/hl7v2/parser/FixFieldDataType;->getFirstComponentSubcomponentsOnlyIfMoreThanOne(Lca/uhn/hl7v2/model/Varies;)[Lca/uhn/hl7v2/model/Type;

    move-result-object v2

    .line 209
    .local v2, "subComponentsInFirstField":[Lca/uhn/hl7v2/model/Type;
    if-eqz v2, :cond_9

    .line 211
    if-eqz v15, :cond_9

    .line 213
    move-object/from16 v20, v4

    new-instance v4, Ljava/lang/StringBuilder;

    .line 213
    .end local v4    # "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Type;>;"
    .local v20, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Type;>;"
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .local v4, "firstComponentValue":Ljava/lang/StringBuilder;
    array-length v6, v2

    move-object/from16 v21, v7

    const/4 v7, 0x0

    .line 214
    .end local v7    # "typeValue":Ljava/lang/String;
    .local v21, "typeValue":Ljava/lang/String;
    :goto_2
    if-lt v7, v6, :cond_7

    .line 222
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6}, Lca/uhn/hl7v2/parser/FixFieldDataType;->setFirstComponentPrimitiveValue(Lca/uhn/hl7v2/model/Varies;Ljava/lang/String;)V

    .line 222
    .end local v2    # "subComponentsInFirstField":[Lca/uhn/hl7v2/model/Type;
    .end local v4    # "firstComponentValue":Ljava/lang/StringBuilder;
    goto :goto_4

    .line 214
    .restart local v2    # "subComponentsInFirstField":[Lca/uhn/hl7v2/model/Type;
    .restart local v4    # "firstComponentValue":Ljava/lang/StringBuilder;
    :cond_7
    aget-object v16, v2, v7

    move-object/from16 v22, v16

    .line 215
    .local v22, "stype":Lca/uhn/hl7v2/model/Type;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    if-eqz v16, :cond_8

    .line 216
    move-object/from16 v23, v2

    invoke-interface/range {p0 .. p0}, Lca/uhn/hl7v2/model/Segment;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    .line 216
    .end local v2    # "subComponentsInFirstField":[Lca/uhn/hl7v2/model/Type;
    .local v23, "subComponentsInFirstField":[Lca/uhn/hl7v2/model/Type;
    invoke-static {v2}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getInstance(Lca/uhn/hl7v2/model/Message;)Lca/uhn/hl7v2/parser/EncodingCharacters;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getSubcomponentSeparator()C

    move-result v2

    .line 217
    .local v2, "subComponentSeparator":C
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 217
    .end local v2    # "subComponentSeparator":C
    goto :goto_3

    .line 219
    .end local v23    # "subComponentsInFirstField":[Lca/uhn/hl7v2/model/Type;
    .local v2, "subComponentsInFirstField":[Lca/uhn/hl7v2/model/Type;
    :cond_8
    move-object/from16 v23, v2

    .line 219
    .end local v2    # "subComponentsInFirstField":[Lca/uhn/hl7v2/model/Type;
    .restart local v23    # "subComponentsInFirstField":[Lca/uhn/hl7v2/model/Type;
    :goto_3
    move/from16 v24, v6

    move-object/from16 v2, v22

    invoke-interface {v2}, Lca/uhn/hl7v2/model/Type;->encode()Ljava/lang/String;

    move-result-object v6

    .line 219
    .end local v22    # "stype":Lca/uhn/hl7v2/model/Type;
    .local v2, "stype":Lca/uhn/hl7v2/model/Type;
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .end local v2    # "stype":Lca/uhn/hl7v2/model/Type;
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, v23

    move/from16 v6, v24

    goto :goto_2

    .line 229
    .end local v20    # "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Type;>;"
    .end local v21    # "typeValue":Ljava/lang/String;
    .end local v23    # "subComponentsInFirstField":[Lca/uhn/hl7v2/model/Type;
    .local v4, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Type;>;"
    .restart local v7    # "typeValue":Ljava/lang/String;
    :cond_9
    move-object/from16 v20, v4

    move-object/from16 v21, v7

    .line 229
    .end local v4    # "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Type;>;"
    .end local v7    # "typeValue":Ljava/lang/String;
    .restart local v20    # "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Type;>;"
    .restart local v21    # "typeValue":Ljava/lang/String;
    :goto_4
    invoke-virtual {v13, v5}, Lca/uhn/hl7v2/model/Varies;->setData(Lca/uhn/hl7v2/model/Type;)V
    :try_end_2
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 153
    .end local v5    # "newTypeInstance":Lca/uhn/hl7v2/model/Type;
    .end local v12    # "rep":Lca/uhn/hl7v2/model/Type;
    .end local v13    # "v":Lca/uhn/hl7v2/model/Varies;
    .end local v14    # "version":Ljava/lang/String;
    .end local v15    # "escapeSubcomponentDelimInPrimitive":Z
    .end local v20    # "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Type;>;"
    .end local v21    # "typeValue":Ljava/lang/String;
    :cond_a
    add-int/lit8 v11, v11, 0x1

    move/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 238
    .end local v8    # "type":Lca/uhn/hl7v2/model/Primitive;
    .end local v9    # "reps":[Lca/uhn/hl7v2/model/Type;
    :catch_1
    move-exception v0

    move-object v2, v0

    .line 239
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Lca/uhn/hl7v2/HL7Exception;

    .line 240
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " trying to set data type of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p0 .. p0}, Lca/uhn/hl7v2/model/Segment;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 239
    invoke-direct {v4, v5, v2}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 235
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    move-object v2, v0

    .line 236
    .local v2, "e":Lca/uhn/hl7v2/HL7Exception;
    throw v2
.end method

.method public static fixMFE3(Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/parser/ModelClassFactory;Lca/uhn/hl7v2/parser/ParserConfiguration;)V
    .locals 9
    .param p0, "segment"    # Lca/uhn/hl7v2/model/Segment;
    .param p1, "factory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;
    .param p2, "parserConfiguration"    # Lca/uhn/hl7v2/parser/ParserConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 128
    invoke-interface {p0}, Lca/uhn/hl7v2/model/Segment;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MFE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    invoke-interface {p0}, Lca/uhn/hl7v2/model/Segment;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Message;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lca/uhn/hl7v2/Version;->versionOf(Ljava/lang/String;)Lca/uhn/hl7v2/Version;

    move-result-object v0

    sget-object v1, Lca/uhn/hl7v2/Version;->V23:Lca/uhn/hl7v2/Version;

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/Version;->isGreaterThan(Lca/uhn/hl7v2/Version;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected MFE segment, but was: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lca/uhn/hl7v2/model/Segment;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v7, p1

    move-object v8, p2

    invoke-static/range {v2 .. v8}, Lca/uhn/hl7v2/parser/FixFieldDataType;->fix(Lca/uhn/hl7v2/model/Segment;IILjava/lang/String;Ljava/lang/String;Lca/uhn/hl7v2/parser/ModelClassFactory;Lca/uhn/hl7v2/parser/ParserConfiguration;)V

    .line 133
    return-void
.end method

.method public static fixOBX5(Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/parser/ModelClassFactory;Lca/uhn/hl7v2/parser/ParserConfiguration;)V
    .locals 9
    .param p0, "segment"    # Lca/uhn/hl7v2/model/Segment;
    .param p1, "factory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;
    .param p2, "parserConfiguration"    # Lca/uhn/hl7v2/parser/ParserConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 111
    invoke-interface {p0}, Lca/uhn/hl7v2/model/Segment;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OBX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected OBX segment, but was: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lca/uhn/hl7v2/model/Segment;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    invoke-virtual {p2}, Lca/uhn/hl7v2/parser/ParserConfiguration;->getDefaultObx2Type()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "defaultOBX2Type":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 116
    const-string v1, "ca.uhn.hl7v2.model.varies.default_obx2_type"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    :cond_1
    invoke-virtual {p2}, Lca/uhn/hl7v2/parser/ParserConfiguration;->getInvalidObx2Type()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "invalidOBX2Type":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 120
    const-string v2, "ca.uhn.hl7v2.model.varies.invalid_obx2_type"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    .end local v1    # "invalidOBX2Type":Ljava/lang/String;
    .local v8, "invalidOBX2Type":Ljava/lang/String;
    :cond_2
    move-object v8, v1

    const/4 v2, 0x2

    const/4 v3, 0x5

    move-object v1, p0

    move-object v4, v0

    move-object v5, v8

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Lca/uhn/hl7v2/parser/FixFieldDataType;->fix(Lca/uhn/hl7v2/model/Segment;IILjava/lang/String;Ljava/lang/String;Lca/uhn/hl7v2/parser/ModelClassFactory;Lca/uhn/hl7v2/parser/ParserConfiguration;)V

    .line 124
    return-void
.end method

.method private static getFirstComponentSubcomponentsOnlyIfMoreThanOne(Lca/uhn/hl7v2/model/Varies;)[Lca/uhn/hl7v2/model/Type;
    .locals 4
    .param p0, "v"    # Lca/uhn/hl7v2/model/Varies;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 287
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Varies;->getData()Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    instance-of v0, v0, Lca/uhn/hl7v2/model/Composite;

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Varies;->getData()Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Composite;

    .line 289
    .local v0, "c":Lca/uhn/hl7v2/model/Composite;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lca/uhn/hl7v2/model/Composite;->getComponent(I)Lca/uhn/hl7v2/model/Type;

    move-result-object v1

    .line 290
    .local v1, "firstComponent":Lca/uhn/hl7v2/model/Type;
    instance-of v2, v1, Lca/uhn/hl7v2/model/Varies;

    if-eqz v2, :cond_0

    .line 291
    move-object v2, v1

    check-cast v2, Lca/uhn/hl7v2/model/Varies;

    .line 292
    .local v2, "firstComponentVaries":Lca/uhn/hl7v2/model/Varies;
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/Varies;->getData()Lca/uhn/hl7v2/model/Type;

    move-result-object v3

    instance-of v3, v3, Lca/uhn/hl7v2/model/Composite;

    if-eqz v3, :cond_0

    .line 293
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/Varies;->getData()Lca/uhn/hl7v2/model/Type;

    move-result-object v3

    check-cast v3, Lca/uhn/hl7v2/model/Composite;

    invoke-interface {v3}, Lca/uhn/hl7v2/model/Composite;->getComponents()[Lca/uhn/hl7v2/model/Type;

    move-result-object v3

    return-object v3

    .line 297
    .end local v0    # "c":Lca/uhn/hl7v2/model/Composite;
    .end local v1    # "firstComponent":Lca/uhn/hl7v2/model/Type;
    .end local v2    # "firstComponentVaries":Lca/uhn/hl7v2/model/Varies;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static setFirstComponentPrimitiveValue(Lca/uhn/hl7v2/model/Type;Ljava/lang/String;)V
    .locals 5
    .param p0, "theFirstComponent"    # Lca/uhn/hl7v2/model/Type;
    .param p1, "theValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 259
    instance-of v0, p0, Lca/uhn/hl7v2/model/Varies;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 260
    move-object v0, p0

    check-cast v0, Lca/uhn/hl7v2/model/Varies;

    .line 261
    .local v0, "firstComponentVaries":Lca/uhn/hl7v2/model/Varies;
    move-object v2, p0

    check-cast v2, Lca/uhn/hl7v2/model/Varies;

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/Varies;->getData()Lca/uhn/hl7v2/model/Type;

    move-result-object v2

    instance-of v2, v2, Lca/uhn/hl7v2/model/Composite;

    if-eqz v2, :cond_1

    .line 262
    invoke-virtual {v0}, Lca/uhn/hl7v2/model/Varies;->getData()Lca/uhn/hl7v2/model/Type;

    move-result-object v2

    check-cast v2, Lca/uhn/hl7v2/model/Composite;

    invoke-interface {v2}, Lca/uhn/hl7v2/model/Composite;->getComponents()[Lca/uhn/hl7v2/model/Type;

    move-result-object v2

    .line 263
    .local v2, "subComponents":[Lca/uhn/hl7v2/model/Type;
    aget-object v1, v2, v1

    invoke-static {v1, p1}, Lca/uhn/hl7v2/parser/FixFieldDataType;->setFirstComponentPrimitiveValue(Lca/uhn/hl7v2/model/Type;Ljava/lang/String;)V

    .line 264
    const/4 v1, 0x1

    .line 264
    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-lt v1, v3, :cond_0

    .line 267
    .end local v1    # "i":I
    .end local v2    # "subComponents":[Lca/uhn/hl7v2/model/Type;
    goto :goto_2

    .line 265
    .restart local v1    # "i":I
    .restart local v2    # "subComponents":[Lca/uhn/hl7v2/model/Type;
    :cond_0
    aget-object v3, v2, v1

    const-string v4, ""

    invoke-static {v3, v4}, Lca/uhn/hl7v2/parser/FixFieldDataType;->setFirstComponentPrimitiveValue(Lca/uhn/hl7v2/model/Type;Ljava/lang/String;)V

    .line 264
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 268
    .end local v1    # "i":I
    .end local v2    # "subComponents":[Lca/uhn/hl7v2/model/Type;
    :cond_1
    invoke-virtual {v0}, Lca/uhn/hl7v2/model/Varies;->getData()Lca/uhn/hl7v2/model/Type;

    move-result-object v1

    check-cast v1, Lca/uhn/hl7v2/model/Primitive;

    .line 269
    .local v1, "p":Lca/uhn/hl7v2/model/Primitive;
    invoke-interface {v1, p1}, Lca/uhn/hl7v2/model/Primitive;->setValue(Ljava/lang/String;)V

    .line 271
    .end local v0    # "firstComponentVaries":Lca/uhn/hl7v2/model/Varies;
    .end local v1    # "p":Lca/uhn/hl7v2/model/Primitive;
    goto :goto_2

    :cond_2
    instance-of v0, p0, Lca/uhn/hl7v2/model/Composite;

    if-eqz v0, :cond_4

    .line 272
    move-object v0, p0

    check-cast v0, Lca/uhn/hl7v2/model/Composite;

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Composite;->getComponents()[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    .line 273
    .local v0, "subComponents":[Lca/uhn/hl7v2/model/Type;
    aget-object v1, v0, v1

    invoke-static {v1, p1}, Lca/uhn/hl7v2/parser/FixFieldDataType;->setFirstComponentPrimitiveValue(Lca/uhn/hl7v2/model/Type;Ljava/lang/String;)V

    .line 274
    const/4 v1, 0x1

    .line 274
    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-lt v1, v2, :cond_3

    .line 277
    .end local v0    # "subComponents":[Lca/uhn/hl7v2/model/Type;
    .end local v1    # "i":I
    goto :goto_2

    .line 275
    .restart local v0    # "subComponents":[Lca/uhn/hl7v2/model/Type;
    .restart local v1    # "i":I
    :cond_3
    aget-object v2, v0, v1

    const-string v3, ""

    invoke-static {v2, v3}, Lca/uhn/hl7v2/parser/FixFieldDataType;->setFirstComponentPrimitiveValue(Lca/uhn/hl7v2/model/Type;Ljava/lang/String;)V

    .line 274
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 278
    .end local v0    # "subComponents":[Lca/uhn/hl7v2/model/Type;
    .end local v1    # "i":I
    :cond_4
    move-object v0, p0

    check-cast v0, Lca/uhn/hl7v2/model/Primitive;

    invoke-interface {v0, p1}, Lca/uhn/hl7v2/model/Primitive;->setValue(Ljava/lang/String;)V

    .line 280
    :goto_2
    return-void
.end method

.method private static setFirstComponentPrimitiveValue(Lca/uhn/hl7v2/model/Varies;Ljava/lang/String;)V
    .locals 2
    .param p0, "v"    # Lca/uhn/hl7v2/model/Varies;
    .param p1, "theValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 250
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Varies;->getData()Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Composite;

    .line 251
    .local v0, "c":Lca/uhn/hl7v2/model/Composite;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lca/uhn/hl7v2/model/Composite;->getComponent(I)Lca/uhn/hl7v2/model/Type;

    move-result-object v1

    .line 252
    .local v1, "firstComponent":Lca/uhn/hl7v2/model/Type;
    invoke-static {v1, p1}, Lca/uhn/hl7v2/parser/FixFieldDataType;->setFirstComponentPrimitiveValue(Lca/uhn/hl7v2/model/Type;Ljava/lang/String;)V

    .line 253
    return-void
.end method
