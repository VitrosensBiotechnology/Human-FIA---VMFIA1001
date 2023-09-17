.class public abstract Lca/uhn/hl7v2/model/AbstractMessage;
.super Lca/uhn/hl7v2/model/AbstractGroup;
.source "AbstractMessage.java"

# interfaces
.implements Lca/uhn/hl7v2/model/Message;


# static fields
.field private static final ourVersionPattern:Ljava/util/regex/Pattern;


# instance fields
.field private transient myParser:Lca/uhn/hl7v2/parser/Parser;

.field private myVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const-string v0, "\\.(v2[0-9][0-9]?)\\."

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/model/AbstractMessage;->ourVersionPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 1
    .param p1, "theFactory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractGroup;-><init>(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 68
    return-void
.end method

.method private instantiateACK()Lca/uhn/hl7v2/model/Message;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 242
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractMessage;->getParser()Lca/uhn/hl7v2/parser/Parser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractMessage;->getParser()Lca/uhn/hl7v2/parser/Parser;

    move-result-object v0

    invoke-virtual {v0}, Lca/uhn/hl7v2/parser/Parser;->getFactory()Lca/uhn/hl7v2/parser/ModelClassFactory;

    move-result-object v0

    goto :goto_0

    .line 244
    :cond_0
    new-instance v0, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;

    invoke-direct {v0}, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;-><init>()V

    .line 242
    :goto_0
    nop

    .line 245
    .local v0, "mcf":Lca/uhn/hl7v2/parser/ModelClassFactory;
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractMessage;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lca/uhn/hl7v2/Version;->versionOf(Ljava/lang/String;)Lca/uhn/hl7v2/Version;

    move-result-object v1

    .line 246
    .local v1, "version":Lca/uhn/hl7v2/Version;
    const/4 v2, 0x0

    .line 247
    .local v2, "out":Lca/uhn/hl7v2/model/Message;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lca/uhn/hl7v2/Version;->available()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 248
    const-string v3, "ACK"

    invoke-virtual {v1}, Lca/uhn/hl7v2/Version;->getVersion()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v0, v3, v4, v5}, Lca/uhn/hl7v2/parser/ModelClassFactory;->getMessageClass(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v3

    .line 249
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Message;>;"
    if-eqz v3, :cond_1

    .line 250
    invoke-static {v3, v0}, Lca/uhn/hl7v2/util/ReflectionUtil;->instantiateMessage(Ljava/lang/Class;Lca/uhn/hl7v2/parser/ModelClassFactory;)Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    .line 253
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Message;>;"
    :cond_1
    if-nez v2, :cond_2

    .line 254
    new-instance v3, Lca/uhn/hl7v2/model/GenericMessage$UnknownVersion;

    invoke-direct {v3, v0}, Lca/uhn/hl7v2/model/GenericMessage$UnknownVersion;-><init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    move-object v2, v3

    .line 257
    :cond_2
    instance-of v3, v2, Lca/uhn/hl7v2/model/GenericMessage;

    if-eqz v3, :cond_4

    .line 258
    invoke-interface {v2}, Lca/uhn/hl7v2/model/Message;->getNames()[Ljava/lang/String;

    move-result-object v3

    const-string v4, "MSA"

    invoke-static {v3, v4}, Lca/uhn/hl7v2/util/ArrayUtil;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 259
    const-string v3, "MSA"

    invoke-interface {v2, v3}, Lca/uhn/hl7v2/model/Message;->addNonstandardSegment(Ljava/lang/String;)Ljava/lang/String;

    .line 261
    :cond_3
    invoke-interface {v2}, Lca/uhn/hl7v2/model/Message;->getNames()[Ljava/lang/String;

    move-result-object v3

    const-string v4, "ERR"

    invoke-static {v3, v4}, Lca/uhn/hl7v2/util/ArrayUtil;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 262
    const-string v3, "ERR"

    invoke-interface {v2, v3}, Lca/uhn/hl7v2/model/Message;->addNonstandardSegment(Ljava/lang/String;)Ljava/lang/String;

    .line 266
    :cond_4
    return-object v2
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

    .line 418
    invoke-interface {p1, p0}, Lca/uhn/hl7v2/model/MessageVisitor;->start(Lca/uhn/hl7v2/model/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {p0, p1, p2}, Lca/uhn/hl7v2/model/AbstractMessage;->visitNestedStructures(Lca/uhn/hl7v2/model/MessageVisitor;Lca/uhn/hl7v2/Location;)V

    .line 421
    :cond_0
    invoke-interface {p1, p0}, Lca/uhn/hl7v2/model/MessageVisitor;->end(Lca/uhn/hl7v2/model/Message;)Z

    move-result v0

    return v0
.end method

.method public encode()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 204
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractMessage;->getParser()Lca/uhn/hl7v2/parser/Parser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lca/uhn/hl7v2/parser/Parser;->encode(Lca/uhn/hl7v2/model/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public fillResponseHeader(Lca/uhn/hl7v2/model/Message;Lca/uhn/hl7v2/AcknowledgmentCode;)Lca/uhn/hl7v2/model/Message;
    .locals 24
    .param p1, "out"    # Lca/uhn/hl7v2/model/Message;
    .param p2, "code"    # Lca/uhn/hl7v2/AcknowledgmentCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 284
    const-string v1, "MSH"

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lca/uhn/hl7v2/model/AbstractMessage;->get(Ljava/lang/String;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v1

    check-cast v1, Lca/uhn/hl7v2/model/Segment;

    .line 285
    .local v1, "mshIn":Lca/uhn/hl7v2/model/Segment;
    const-string v3, "MSH"

    invoke-interface {v0, v3}, Lca/uhn/hl7v2/model/Message;->get(Ljava/lang/String;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v3

    check-cast v3, Lca/uhn/hl7v2/model/Segment;

    .line 288
    .local v3, "mshOut":Lca/uhn/hl7v2/model/Segment;
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v1, v11, v10, v11, v11}, Lca/uhn/hl7v2/util/Terser;->get(Lca/uhn/hl7v2/model/Segment;IIII)Ljava/lang/String;

    move-result-object v12

    .line 289
    .local v12, "fieldSep":Ljava/lang/String;
    const/4 v13, 0x2

    invoke-static {v1, v13, v10, v11, v11}, Lca/uhn/hl7v2/util/Terser;->get(Lca/uhn/hl7v2/model/Segment;IIII)Ljava/lang/String;

    move-result-object v14

    .line 290
    .local v14, "encChars":Ljava/lang/String;
    const/16 v4, 0xb

    invoke-static {v1, v4, v10, v11, v11}, Lca/uhn/hl7v2/util/Terser;->get(Lca/uhn/hl7v2/model/Segment;IIII)Ljava/lang/String;

    move-result-object v15

    .line 293
    .local v15, "procID":Ljava/lang/String;
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v4, v3

    move-object v9, v12

    invoke-static/range {v4 .. v9}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 294
    const/4 v5, 0x2

    move-object v9, v14

    invoke-static/range {v4 .. v9}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 295
    new-instance v4, Ljava/util/GregorianCalendar;

    invoke-direct {v4}, Ljava/util/GregorianCalendar;-><init>()V

    move-object v9, v4

    .line 296
    .local v9, "now":Ljava/util/GregorianCalendar;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9, v4}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 297
    invoke-static {v9}, Lca/uhn/hl7v2/model/primitive/CommonTS;->toHl7TSFormat(Ljava/util/GregorianCalendar;)Ljava/lang/String;

    move-result-object v16

    const/4 v5, 0x7

    move-object v4, v3

    move-object/from16 v17, v9

    move-object/from16 v9, v16

    .line 297
    .end local v9    # "now":Ljava/util/GregorianCalendar;
    .local v17, "now":Ljava/util/GregorianCalendar;
    invoke-static/range {v4 .. v9}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 298
    const-string v9, "ACK"

    const/16 v5, 0x9

    invoke-static/range {v4 .. v9}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 299
    const/16 v4, 0x9

    invoke-static {v1, v4, v10, v13, v11}, Lca/uhn/hl7v2/util/Terser;->get(Lca/uhn/hl7v2/model/Segment;IIII)Ljava/lang/String;

    move-result-object v9

    const/4 v7, 0x2

    move-object v4, v3

    invoke-static/range {v4 .. v9}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 300
    invoke-interface {v3}, Lca/uhn/hl7v2/model/Segment;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v4

    invoke-interface {v4}, Lca/uhn/hl7v2/model/Message;->getVersion()Ljava/lang/String;

    move-result-object v13

    .line 301
    .local v13, "v":Ljava/lang/String;
    if-eqz v13, :cond_0

    .line 302
    invoke-static {v13}, Lca/uhn/hl7v2/Version;->versionOf(Ljava/lang/String;)Lca/uhn/hl7v2/Version;

    move-result-object v9

    .line 303
    .local v9, "version":Lca/uhn/hl7v2/Version;
    if-eqz v9, :cond_0

    sget-object v4, Lca/uhn/hl7v2/Version;->V25:Lca/uhn/hl7v2/Version;

    invoke-virtual {v4, v9}, Lca/uhn/hl7v2/Version;->isGreaterThan(Lca/uhn/hl7v2/Version;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 304
    const/16 v5, 0x9

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x1

    const-string v16, "ACK"

    move-object v4, v3

    move-object/from16 v18, v9

    move-object/from16 v9, v16

    .line 304
    .end local v9    # "version":Lca/uhn/hl7v2/Version;
    .local v18, "version":Lca/uhn/hl7v2/Version;
    invoke-static/range {v4 .. v9}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 307
    .end local v18    # "version":Lca/uhn/hl7v2/Version;
    :cond_0
    const/16 v5, 0xa

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-interface {v1}, Lca/uhn/hl7v2/model/Segment;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v4

    invoke-interface {v4}, Lca/uhn/hl7v2/model/Message;->getParser()Lca/uhn/hl7v2/parser/Parser;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/parser/Parser;->getParserConfiguration()Lca/uhn/hl7v2/parser/ParserConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/parser/ParserConfiguration;->getIdGenerator()Lca/uhn/hl7v2/util/idgenerator/IDGenerator;

    move-result-object v4

    invoke-interface {v4}, Lca/uhn/hl7v2/util/idgenerator/IDGenerator;->getID()Ljava/lang/String;

    move-result-object v9

    move-object v4, v3

    invoke-static/range {v4 .. v9}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 308
    const/16 v5, 0xb

    move-object v9, v15

    invoke-static/range {v4 .. v9}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 310
    const/16 v4, 0xc

    invoke-static {v1, v4, v10, v11, v11}, Lca/uhn/hl7v2/util/Terser;->get(Lca/uhn/hl7v2/model/Segment;IIII)Ljava/lang/String;

    move-result-object v4

    .line 311
    .local v4, "versionId":Ljava/lang/String;
    invoke-static {v4}, Lca/uhn/hl7v2/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 312
    invoke-static {}, Lca/uhn/hl7v2/Version;->highestAvailableVersionOrDefault()Lca/uhn/hl7v2/Version;

    move-result-object v5

    invoke-virtual {v5}, Lca/uhn/hl7v2/Version;->getVersion()Ljava/lang/String;

    move-result-object v4

    .line 314
    .end local v4    # "versionId":Ljava/lang/String;
    .local v16, "versionId":Ljava/lang/String;
    :cond_1
    move-object/from16 v16, v4

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v4, v3

    move-object/from16 v9, v16

    invoke-static/range {v4 .. v9}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 317
    const/4 v5, 0x3

    const/4 v4, 0x5

    invoke-static {v1, v4, v10, v11, v11}, Lca/uhn/hl7v2/util/Terser;->get(Lca/uhn/hl7v2/model/Segment;IIII)Ljava/lang/String;

    move-result-object v9

    move-object v4, v3

    invoke-static/range {v4 .. v9}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 318
    const/4 v5, 0x4

    const/4 v4, 0x6

    invoke-static {v1, v4, v10, v11, v11}, Lca/uhn/hl7v2/util/Terser;->get(Lca/uhn/hl7v2/model/Segment;IIII)Ljava/lang/String;

    move-result-object v9

    move-object v4, v3

    invoke-static/range {v4 .. v9}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 319
    const/4 v5, 0x5

    const/4 v4, 0x3

    invoke-static {v1, v4, v10, v11, v11}, Lca/uhn/hl7v2/util/Terser;->get(Lca/uhn/hl7v2/model/Segment;IIII)Ljava/lang/String;

    move-result-object v9

    move-object v4, v3

    invoke-static/range {v4 .. v9}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 320
    const/4 v5, 0x6

    const/4 v4, 0x4

    invoke-static {v1, v4, v10, v11, v11}, Lca/uhn/hl7v2/util/Terser;->get(Lca/uhn/hl7v2/model/Segment;IIII)Ljava/lang/String;

    move-result-object v9

    move-object v4, v3

    invoke-static/range {v4 .. v9}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 323
    const-string v4, "MSA"

    invoke-interface {v0, v4}, Lca/uhn/hl7v2/model/Message;->get(Ljava/lang/String;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v4

    check-cast v4, Lca/uhn/hl7v2/model/Segment;

    .line 324
    .local v4, "msaOut":Lca/uhn/hl7v2/model/Segment;
    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x1

    invoke-virtual/range {p2 .. p2}, Lca/uhn/hl7v2/AcknowledgmentCode;->name()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v18, v4

    invoke-static/range {v18 .. v23}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 325
    const/16 v19, 0x2

    const/16 v5, 0xa

    invoke-static {v1, v5, v10, v11, v11}, Lca/uhn/hl7v2/util/Terser;->get(Lca/uhn/hl7v2/model/Segment;IIII)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v18 .. v23}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 326
    return-object v0
.end method

.method public generateACK()Lca/uhn/hl7v2/model/Message;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    sget-object v0, Lca/uhn/hl7v2/AcknowledgmentCode;->AA:Lca/uhn/hl7v2/AcknowledgmentCode;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/AbstractMessage;->generateACK(Lca/uhn/hl7v2/AcknowledgmentCode;Lca/uhn/hl7v2/HL7Exception;)Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    return-object v0
.end method

.method public generateACK(Lca/uhn/hl7v2/AcknowledgmentCode;Lca/uhn/hl7v2/HL7Exception;)Lca/uhn/hl7v2/model/Message;
    .locals 2
    .param p1, "theAcknowledgementCode"    # Lca/uhn/hl7v2/AcknowledgmentCode;
    .param p2, "theException"    # Lca/uhn/hl7v2/HL7Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lca/uhn/hl7v2/HL7Exception;->getResponseMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p2}, Lca/uhn/hl7v2/HL7Exception;->getResponseMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    return-object v0

    .line 232
    :cond_0
    invoke-direct {p0}, Lca/uhn/hl7v2/model/AbstractMessage;->instantiateACK()Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    .line 233
    .local v0, "out":Lca/uhn/hl7v2/model/Message;
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractMessage;->getParser()Lca/uhn/hl7v2/parser/Parser;

    move-result-object v1

    invoke-interface {v0, v1}, Lca/uhn/hl7v2/model/Message;->setParser(Lca/uhn/hl7v2/parser/Parser;)V

    .line 234
    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractMessage;->fillResponseHeader(Lca/uhn/hl7v2/model/Message;Lca/uhn/hl7v2/AcknowledgmentCode;)Lca/uhn/hl7v2/model/Message;

    .line 235
    if-eqz p2, :cond_1

    .line 236
    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Lca/uhn/hl7v2/HL7Exception;->populateResponse(Lca/uhn/hl7v2/model/Message;Lca/uhn/hl7v2/AcknowledgmentCode;I)Lca/uhn/hl7v2/model/Message;

    .line 238
    :cond_1
    return-object v0
.end method

.method public generateACK(Ljava/lang/String;Lca/uhn/hl7v2/HL7Exception;)Lca/uhn/hl7v2/model/Message;
    .locals 2
    .param p1, "theAcknowledgementCode"    # Ljava/lang/String;
    .param p2, "theException"    # Lca/uhn/hl7v2/HL7Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    if-nez p1, :cond_0

    .line 220
    sget-object v0, Lca/uhn/hl7v2/AcknowledgmentCode;->AA:Lca/uhn/hl7v2/AcknowledgmentCode;

    goto :goto_0

    .line 221
    :cond_0
    invoke-static {p1}, Lca/uhn/hl7v2/AcknowledgmentCode;->valueOf(Ljava/lang/String;)Lca/uhn/hl7v2/AcknowledgmentCode;

    move-result-object v0

    .line 219
    :goto_0
    nop

    .line 222
    .local v0, "theCode":Lca/uhn/hl7v2/AcknowledgmentCode;
    invoke-virtual {p0, v0, p2}, Lca/uhn/hl7v2/model/AbstractMessage;->generateACK(Lca/uhn/hl7v2/AcknowledgmentCode;Lca/uhn/hl7v2/HL7Exception;)Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    return-object v1
.end method

.method public getEncodingCharactersValue()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 147
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractMessage;->getNames()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/AbstractMessage;->get(Ljava/lang/String;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Segment;

    .line 148
    .local v0, "firstSegment":Lca/uhn/hl7v2/model/Segment;
    const/4 v2, 0x2

    invoke-interface {v0, v2, v1}, Lca/uhn/hl7v2/model/Segment;->getField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v1

    check-cast v1, Lca/uhn/hl7v2/model/Primitive;

    .line 149
    .local v1, "value":Lca/uhn/hl7v2/model/Primitive;
    invoke-interface {v1}, Lca/uhn/hl7v2/model/Primitive;->getValue()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getFieldSeparatorValue()Ljava/lang/Character;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 133
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractMessage;->getNames()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/AbstractMessage;->get(Ljava/lang/String;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Segment;

    .line 134
    .local v0, "firstSegment":Lca/uhn/hl7v2/model/Segment;
    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lca/uhn/hl7v2/model/Segment;->getField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v2

    check-cast v2, Lca/uhn/hl7v2/model/Primitive;

    .line 135
    .local v2, "value":Lca/uhn/hl7v2/model/Primitive;
    invoke-interface {v2}, Lca/uhn/hl7v2/model/Primitive;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, "valueString":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    return-object v1

    .line 137
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getMessage()Lca/uhn/hl7v2/model/Message;
    .locals 0

    .line 74
    return-object p0
.end method

.method public getParent()Lca/uhn/hl7v2/model/Group;
    .locals 0

    .line 78
    return-object p0
.end method

.method public getParser()Lca/uhn/hl7v2/parser/Parser;
    .locals 1

    .line 183
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractMessage;->myParser:Lca/uhn/hl7v2/parser/Parser;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Lca/uhn/hl7v2/parser/PipeParser;

    invoke-direct {v0}, Lca/uhn/hl7v2/parser/PipeParser;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/model/AbstractMessage;->myParser:Lca/uhn/hl7v2/parser/Parser;

    .line 187
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractMessage;->myParser:Lca/uhn/hl7v2/parser/Parser;

    return-object v0
.end method

.method public getValidationContext()Lca/uhn/hl7v2/validation/ValidationContext;
    .locals 1

    .line 124
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractMessage;->getParser()Lca/uhn/hl7v2/parser/Parser;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractMessage;->getParser()Lca/uhn/hl7v2/parser/Parser;

    move-result-object v0

    invoke-virtual {v0}, Lca/uhn/hl7v2/parser/Parser;->getParserConfiguration()Lca/uhn/hl7v2/parser/ParserConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lca/uhn/hl7v2/parser/ParserConfiguration;->isValidating()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractMessage;->getParser()Lca/uhn/hl7v2/parser/Parser;

    move-result-object v0

    invoke-virtual {v0}, Lca/uhn/hl7v2/parser/Parser;->getHapiContext()Lca/uhn/hl7v2/HapiContext;

    move-result-object v0

    invoke-interface {v0}, Lca/uhn/hl7v2/HapiContext;->getValidationContext()Lca/uhn/hl7v2/validation/ValidationContext;

    move-result-object v0

    return-object v0

    .line 124
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 9

    .line 90
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractMessage;->myVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractMessage;->myVersion:Ljava/lang/String;

    return-object v0

    .line 94
    :cond_0
    const/4 v0, 0x0

    .line 95
    .local v0, "version":Ljava/lang/String;
    sget-object v1, Lca/uhn/hl7v2/model/AbstractMessage;->ourVersionPattern:Ljava/util/regex/Pattern;

    .line 96
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 97
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 98
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, "verFolder":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 100
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 101
    .local v5, "chars":[C
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .local v6, "buf":Ljava/lang/StringBuilder;
    const/4 v7, 0x1

    .line 102
    .local v7, "i":I
    :goto_0
    array-length v8, v5

    if-lt v7, v8, :cond_1

    .line 106
    .end local v7    # "i":I
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    .end local v4    # "verFolder":Ljava/lang/String;
    .end local v5    # "chars":[C
    .end local v6    # "buf":Ljava/lang/StringBuilder;
    goto :goto_1

    .line 103
    .restart local v4    # "verFolder":Ljava/lang/String;
    .restart local v5    # "chars":[C
    .restart local v6    # "buf":Ljava/lang/StringBuilder;
    .restart local v7    # "i":I
    :cond_1
    aget-char v8, v5, v7

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    array-length v8, v5

    sub-int/2addr v8, v3

    if-ge v7, v8, :cond_2

    const/16 v8, 0x2e

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 110
    .end local v4    # "verFolder":Ljava/lang/String;
    .end local v5    # "chars":[C
    .end local v6    # "buf":Ljava/lang/StringBuilder;
    .end local v7    # "i":I
    :cond_3
    :goto_1
    if-nez v0, :cond_4

    .line 111
    invoke-static {}, Lca/uhn/hl7v2/Version;->lowestAvailableVersion()Lca/uhn/hl7v2/Version;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/Version;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 113
    :cond_4
    iput-object v0, p0, Lca/uhn/hl7v2/model/AbstractMessage;->myVersion:Ljava/lang/String;

    .line 114
    return-object v0
.end method

.method public initQuickstart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "messageCode"    # Ljava/lang/String;
    .param p2, "messageTriggerEvent"    # Ljava/lang/String;
    .param p3, "processingId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 383
    const-string v0, "MSH"

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/AbstractMessage;->get(Ljava/lang/String;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Segment;

    .line 384
    .local v0, "msh":Lca/uhn/hl7v2/model/Segment;
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractMessage;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lca/uhn/hl7v2/Version;->versionOf(Ljava/lang/String;)Lca/uhn/hl7v2/Version;

    move-result-object v7

    .line 385
    .local v7, "version":Lca/uhn/hl7v2/Version;
    const-string v6, "|"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 386
    sget-object v1, Lca/uhn/hl7v2/Version;->V27:Lca/uhn/hl7v2/Version;

    invoke-virtual {v1, v7}, Lca/uhn/hl7v2/Version;->isGreaterThan(Lca/uhn/hl7v2/Version;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    const-string v1, "^~\\&"

    .line 386
    :goto_0
    move-object v6, v1

    goto :goto_1

    .line 387
    :cond_0
    const-string v1, "^~\\&#"

    goto :goto_0

    .line 386
    :goto_1
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 388
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    move-object v8, v1

    .line 389
    .local v8, "now":Ljava/util/GregorianCalendar;
    const/4 v2, 0x7

    invoke-static {v8}, Lca/uhn/hl7v2/model/primitive/CommonTS;->toHl7TSFormat(Ljava/util/GregorianCalendar;)Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 390
    const/16 v2, 0x9

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 391
    const/4 v4, 0x2

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 392
    const/16 v2, 0xa

    const/4 v4, 0x1

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractMessage;->getParser()Lca/uhn/hl7v2/parser/Parser;

    move-result-object v1

    invoke-virtual {v1}, Lca/uhn/hl7v2/parser/Parser;->getParserConfiguration()Lca/uhn/hl7v2/parser/ParserConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lca/uhn/hl7v2/parser/ParserConfiguration;->getIdGenerator()Lca/uhn/hl7v2/util/idgenerator/IDGenerator;

    move-result-object v1

    invoke-interface {v1}, Lca/uhn/hl7v2/util/idgenerator/IDGenerator;->getID()Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 393
    const/16 v2, 0xb

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 394
    const/16 v2, 0xc

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractMessage;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 397
    sget-object v1, Lca/uhn/hl7v2/Version;->V24:Lca/uhn/hl7v2/Version;

    invoke-virtual {v1, v7}, Lca/uhn/hl7v2/Version;->isGreaterThan(Lca/uhn/hl7v2/Version;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 398
    instance-of v1, p0, Lca/uhn/hl7v2/model/SuperStructure;

    if-eqz v1, :cond_1

    .line 399
    new-instance v1, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;

    invoke-direct {v1}, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;-><init>()V

    invoke-virtual {v1, v7}, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;->getEventMapForVersion(Lca/uhn/hl7v2/Version;)Ljava/util/Map;

    move-result-object v9

    .line 400
    .local v9, "eventMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lca/uhn/hl7v2/util/StringUtil;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p2}, Lca/uhn/hl7v2/util/StringUtil;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/lang/String;

    .line 402
    .local v10, "structure":Ljava/lang/String;
    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    move-object v1, v0

    move-object v6, v10

    invoke-static/range {v1 .. v6}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 404
    .end local v9    # "eventMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "structure":Ljava/lang/String;
    goto :goto_2

    .line 405
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 406
    .local v1, "className":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 407
    .local v9, "lastIndexOf":I
    add-int/lit8 v2, v9, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 408
    .end local v1    # "className":Ljava/lang/String;
    .local v10, "className":Ljava/lang/String;
    const-string v1, "[A-Z]{3}_[A-Z0-9]{3}"

    invoke-virtual {v10, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 409
    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    move-object v1, v0

    move-object v6, v10

    invoke-static/range {v1 .. v6}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 414
    .end local v9    # "lastIndexOf":I
    .end local v10    # "className":Ljava/lang/String;
    :cond_2
    :goto_2
    return-void
.end method

.method public parse(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 195
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractMessage;->clear()V

    .line 196
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractMessage;->getParser()Lca/uhn/hl7v2/parser/Parser;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lca/uhn/hl7v2/parser/Parser;->parse(Lca/uhn/hl7v2/model/Message;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public printStructure()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v8}, Lca/uhn/hl7v2/model/AbstractMessage;->appendStructureDescription(Ljava/lang/StringBuilder;IZZZZZ)V

    .line 348
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public printStructure(Z)Ljava/lang/String;
    .locals 9
    .param p1, "includeEmptyElements"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 357
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, v0

    move v8, p1

    invoke-virtual/range {v1 .. v8}, Lca/uhn/hl7v2/model/AbstractMessage;->appendStructureDescription(Ljava/lang/StringBuilder;IZZZZZ)V

    .line 358
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setParser(Lca/uhn/hl7v2/parser/Parser;)V
    .locals 2
    .param p1, "parser"    # Lca/uhn/hl7v2/parser/Parser;

    .line 167
    if-nez p1, :cond_0

    .line 168
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Value may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    iput-object p1, p0, Lca/uhn/hl7v2/model/AbstractMessage;->myParser:Lca/uhn/hl7v2/parser/Parser;

    .line 172
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 336
    :try_start_0
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractMessage;->encode()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Lca/uhn/hl7v2/HL7Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " - Failed to create toString(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lca/uhn/hl7v2/HL7Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
