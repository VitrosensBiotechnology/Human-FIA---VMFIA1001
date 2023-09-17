.class public Lca/uhn/hl7v2/parser/PipeParser;
.super Lca/uhn/hl7v2/parser/Parser;
.source "PipeParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lca/uhn/hl7v2/parser/PipeParser$Holder;,
        Lca/uhn/hl7v2/parser/PipeParser$MessageStructure;
    }
.end annotation


# static fields
.field public static final DEFAULT_LEGACY_MODE_PROPERTY:Ljava/lang/String; = "ca.uhn.hl7v2.parser.PipeParser.default_legacy_mode"

.field static final SEGMENT_DELIMITER:Ljava/lang/String; = "\r"

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private myLegacyMode:Ljava/lang/Boolean;

.field private final myStructureDefinitions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lca/uhn/hl7v2/model/Message;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lca/uhn/hl7v2/parser/StructureDefinition;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    const-class v0, Lca/uhn/hl7v2/parser/PipeParser;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/parser/PipeParser;->log:Lorg/slf4j/Logger;

    .line 87
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 92
    invoke-direct {p0}, Lca/uhn/hl7v2/parser/Parser;-><init>()V

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/parser/PipeParser;->myStructureDefinitions:Ljava/util/HashMap;

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lca/uhn/hl7v2/parser/PipeParser;->myLegacyMode:Ljava/lang/Boolean;

    .line 93
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/HapiContext;)V
    .locals 1
    .param p1, "context"    # Lca/uhn/hl7v2/HapiContext;

    .line 100
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/parser/Parser;-><init>(Lca/uhn/hl7v2/HapiContext;)V

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/parser/PipeParser;->myStructureDefinitions:Ljava/util/HashMap;

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lca/uhn/hl7v2/parser/PipeParser;->myLegacyMode:Ljava/lang/Boolean;

    .line 101
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 1
    .param p1, "theFactory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 110
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/parser/Parser;-><init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/parser/PipeParser;->myStructureDefinitions:Ljava/util/HashMap;

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lca/uhn/hl7v2/parser/PipeParser;->myLegacyMode:Ljava/lang/Boolean;

    .line 111
    return-void
.end method

.method private static countInstancesOf(Ljava/lang/String;C)I
    .locals 3
    .param p0, "theString"    # Ljava/lang/String;
    .param p1, "theCharToSearchFor"    # C

    .line 850
    const/4 v0, 0x0

    .line 851
    .local v0, "retVal":I
    const/4 v1, 0x0

    .line 851
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 856
    .end local v1    # "i":I
    return v0

    .line 852
    .restart local v1    # "i":I
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, p1, :cond_1

    .line 853
    add-int/lit8 v0, v0, 0x1

    .line 851
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private createStructureDefinition(Lca/uhn/hl7v2/model/Structure;Lca/uhn/hl7v2/parser/PipeParser$Holder;Ljava/lang/String;)Lca/uhn/hl7v2/parser/StructureDefinition;
    .locals 9
    .param p1, "theStructure"    # Lca/uhn/hl7v2/model/Structure;
    .param p3, "theStructureName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/model/Structure;",
            "Lca/uhn/hl7v2/parser/PipeParser$Holder<",
            "Lca/uhn/hl7v2/parser/StructureDefinition;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lca/uhn/hl7v2/parser/StructureDefinition;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 286
    .local p2, "thePreviousLeaf":Lca/uhn/hl7v2/parser/PipeParser$Holder;, "Lca/uhn/hl7v2/parser/PipeParser$Holder<Lca/uhn/hl7v2/parser/StructureDefinition;>;"
    new-instance v0, Lca/uhn/hl7v2/parser/StructureDefinition;

    invoke-direct {v0}, Lca/uhn/hl7v2/parser/StructureDefinition;-><init>()V

    .line 287
    .local v0, "retVal":Lca/uhn/hl7v2/parser/StructureDefinition;
    invoke-interface {p1}, Lca/uhn/hl7v2/model/Structure;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/parser/StructureDefinition;->setName(Ljava/lang/String;)V

    .line 289
    instance-of v1, p1, Lca/uhn/hl7v2/model/Group;

    if-eqz v1, :cond_3

    .line 290
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/parser/StructureDefinition;->setSegment(Z)V

    .line 291
    move-object v1, p1

    check-cast v1, Lca/uhn/hl7v2/model/Group;

    .line 292
    .local v1, "group":Lca/uhn/hl7v2/model/Group;
    const/4 v2, 0x0

    .line 293
    .local v2, "index":I
    invoke-interface {v1}, Lca/uhn/hl7v2/model/Group;->getNames()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 300
    .local v3, "childNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    instance-of v4, p1, Lca/uhn/hl7v2/model/SuperStructure;

    if-eqz v4, :cond_1

    .line 301
    move-object v4, p3

    .line 302
    .local v4, "struct":Ljava/lang/String;
    new-instance v5, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;

    invoke-direct {v5}, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;-><init>()V

    invoke-interface {p1}, Lca/uhn/hl7v2/model/Structure;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v6

    invoke-interface {v6}, Lca/uhn/hl7v2/model/Message;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lca/uhn/hl7v2/Version;->versionOf(Ljava/lang/String;)Lca/uhn/hl7v2/Version;

    move-result-object v6

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;->getEventMapForVersion(Lca/uhn/hl7v2/Version;)Ljava/util/Map;

    move-result-object v5

    .line 303
    .local v5, "evtMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 304
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Ljava/lang/String;

    .line 306
    :cond_0
    move-object v6, p1

    check-cast v6, Lca/uhn/hl7v2/model/SuperStructure;

    invoke-interface {v6, v4}, Lca/uhn/hl7v2/model/SuperStructure;->getChildNamesForStructure(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 309
    .end local v4    # "struct":Ljava/lang/String;
    .end local v5    # "evtMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 320
    .end local v1    # "group":Lca/uhn/hl7v2/model/Group;
    .end local v2    # "index":I
    .end local v3    # "childNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1

    .line 309
    .restart local v1    # "group":Lca/uhn/hl7v2/model/Group;
    .restart local v2    # "index":I
    .restart local v3    # "childNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 310
    .local v5, "nextName":Ljava/lang/String;
    invoke-interface {v1, v5}, Lca/uhn/hl7v2/model/Group;->get(Ljava/lang/String;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v6

    .line 311
    .local v6, "nextChild":Lca/uhn/hl7v2/model/Structure;
    invoke-direct {p0, v6, p2, p3}, Lca/uhn/hl7v2/parser/PipeParser;->createStructureDefinition(Lca/uhn/hl7v2/model/Structure;Lca/uhn/hl7v2/parser/PipeParser$Holder;Ljava/lang/String;)Lca/uhn/hl7v2/parser/StructureDefinition;

    move-result-object v7

    .line 312
    .local v7, "structureDefinition":Lca/uhn/hl7v2/parser/StructureDefinition;
    invoke-virtual {v7, v5}, Lca/uhn/hl7v2/parser/StructureDefinition;->setNameAsItAppearsInParent(Ljava/lang/String;)V

    .line 313
    invoke-interface {v1, v5}, Lca/uhn/hl7v2/model/Group;->isRepeating(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/parser/StructureDefinition;->setRepeating(Z)V

    .line 314
    invoke-interface {v1, v5}, Lca/uhn/hl7v2/model/Group;->isRequired(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/parser/StructureDefinition;->setRequired(Z)V

    .line 315
    invoke-interface {v1, v5}, Lca/uhn/hl7v2/model/Group;->isChoiceElement(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/parser/StructureDefinition;->setChoiceElement(Z)V

    .line 316
    add-int/lit8 v8, v2, 0x1

    .line 316
    .local v8, "index":I
    invoke-virtual {v7, v2}, Lca/uhn/hl7v2/parser/StructureDefinition;->setPosition(I)V

    .line 317
    .end local v2    # "index":I
    invoke-virtual {v7, v0}, Lca/uhn/hl7v2/parser/StructureDefinition;->setParent(Lca/uhn/hl7v2/parser/IStructureDefinition;)V

    .line 318
    invoke-virtual {v0, v7}, Lca/uhn/hl7v2/parser/StructureDefinition;->addChild(Lca/uhn/hl7v2/parser/StructureDefinition;)V

    .line 309
    .end local v5    # "nextName":Ljava/lang/String;
    .end local v6    # "nextChild":Lca/uhn/hl7v2/model/Structure;
    .end local v7    # "structureDefinition":Lca/uhn/hl7v2/parser/StructureDefinition;
    move v2, v8

    goto :goto_0

    .line 321
    .end local v1    # "group":Lca/uhn/hl7v2/model/Group;
    .end local v3    # "childNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "index":I
    :cond_3
    invoke-virtual {p2}, Lca/uhn/hl7v2/parser/PipeParser$Holder;->getObject()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 322
    invoke-virtual {p2}, Lca/uhn/hl7v2/parser/PipeParser$Holder;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lca/uhn/hl7v2/parser/StructureDefinition;

    invoke-virtual {v1, v0}, Lca/uhn/hl7v2/parser/StructureDefinition;->setNextLeaf(Lca/uhn/hl7v2/parser/IStructureDefinition;)V

    .line 324
    :cond_4
    invoke-virtual {p2, v0}, Lca/uhn/hl7v2/parser/PipeParser$Holder;->setObject(Ljava/lang/Object;)V

    .line 325
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/parser/StructureDefinition;->setSegment(Z)V

    .line 328
    :goto_1
    return-object v0
.end method

.method public static encode(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # Lca/uhn/hl7v2/model/Group;
    .param p1, "encodingChars"    # Lca/uhn/hl7v2/parser/EncodingCharacters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 667
    invoke-interface {p0}, Lca/uhn/hl7v2/model/Group;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Message;->getParser()Lca/uhn/hl7v2/parser/Parser;

    move-result-object v0

    invoke-virtual {v0}, Lca/uhn/hl7v2/parser/Parser;->getParserConfiguration()Lca/uhn/hl7v2/parser/ParserConfiguration;

    move-result-object v0

    const-string v1, ""

    invoke-static {p0, p1, v0, v1}, Lca/uhn/hl7v2/parser/PipeParser;->encode(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/parser/EncodingCharacters;Lca/uhn/hl7v2/parser/ParserConfiguration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static encode(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/parser/EncodingCharacters;Lca/uhn/hl7v2/parser/ParserConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .locals 24
    .param p0, "source"    # Lca/uhn/hl7v2/model/Group;
    .param p1, "encodingChars"    # Lca/uhn/hl7v2/parser/EncodingCharacters;
    .param p2, "parserConfiguration"    # Lca/uhn/hl7v2/parser/ParserConfiguration;
    .param p3, "currentTerserPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 675
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 677
    .local v3, "result":Ljava/lang/StringBuilder;
    invoke-interface/range {p0 .. p0}, Lca/uhn/hl7v2/model/Group;->getNames()[Ljava/lang/String;

    move-result-object v4

    .line 679
    .local v4, "names":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 680
    .local v5, "firstMandatorySegmentName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 681
    .local v6, "haveEncounteredMandatorySegment":Z
    const/4 v7, 0x0

    .line 682
    .local v7, "haveEncounteredContent":Z
    const/4 v8, 0x0

    .line 683
    .local v8, "haveHadMandatorySegment":Z
    const/4 v9, 0x0

    .line 685
    .local v9, "haveHadSegmentBeforeMandatorySegment":Z
    const/4 v10, 0x0

    array-length v11, v4

    move v12, v7

    move v7, v6

    move-object v6, v5

    move v5, v10

    .line 685
    .end local v5    # "firstMandatorySegmentName":Ljava/lang/String;
    .local v6, "firstMandatorySegmentName":Ljava/lang/String;
    .local v7, "haveEncounteredMandatorySegment":Z
    .local v12, "haveEncounteredContent":Z
    :goto_0
    const/4 v13, 0x3

    if-lt v5, v11, :cond_1

    .line 752
    if-eqz v6, :cond_0

    if-nez v8, :cond_0

    if-nez v9, :cond_0

    if-eqz v12, :cond_0

    invoke-virtual/range {p2 .. p2}, Lca/uhn/hl7v2/parser/ParserConfiguration;->isEncodeEmptyMandatorySegments()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 753
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getFieldSeparator()C

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v10, "\r"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 755
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 685
    :cond_1
    aget-object v14, v4, v5

    .line 688
    .local v14, "nextName":Ljava/lang/String;
    invoke-interface {v0, v14}, Lca/uhn/hl7v2/model/Group;->getAll(Ljava/lang/String;)[Lca/uhn/hl7v2/model/Structure;

    move-result-object v15

    .line 689
    .local v15, "reps":[Lca/uhn/hl7v2/model/Structure;
    invoke-interface {v0, v14}, Lca/uhn/hl7v2/model/Group;->isRequired(Ljava/lang/String;)Z

    move-result v16

    .line 691
    .local v16, "nextNameIsRequired":Z
    move/from16 v17, v7

    .line 692
    .local v17, "havePreviouslyEncounteredMandatorySegment":Z
    or-int v7, v7, v16

    .line 693
    if-eqz v16, :cond_2

    if-nez v8, :cond_2

    .line 694
    invoke-interface {v0, v14}, Lca/uhn/hl7v2/model/Group;->isGroup(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 695
    move-object v6, v14

    .line 699
    :cond_2
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "/"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_3
    move-object v10, v14

    .line 702
    .local v10, "nextTerserPath":Ljava/lang/String;
    :goto_1
    array-length v13, v15

    move/from16 v18, v9

    move v9, v8

    const/4 v8, 0x0

    .line 702
    .end local v8    # "haveHadMandatorySegment":Z
    .local v9, "haveHadMandatorySegment":Z
    .local v18, "haveHadSegmentBeforeMandatorySegment":Z
    :goto_2
    if-lt v8, v13, :cond_4

    .line 685
    .end local v10    # "nextTerserPath":Ljava/lang/String;
    .end local v14    # "nextName":Ljava/lang/String;
    .end local v15    # "reps":[Lca/uhn/hl7v2/model/Structure;
    .end local v16    # "nextNameIsRequired":Z
    .end local v17    # "havePreviouslyEncounteredMandatorySegment":Z
    add-int/lit8 v5, v5, 0x1

    move v8, v9

    move/from16 v9, v18

    const/4 v10, 0x0

    goto :goto_0

    .line 702
    .restart local v10    # "nextTerserPath":Ljava/lang/String;
    .restart local v14    # "nextName":Ljava/lang/String;
    .restart local v15    # "reps":[Lca/uhn/hl7v2/model/Structure;
    .restart local v16    # "nextNameIsRequired":Z
    .restart local v17    # "havePreviouslyEncounteredMandatorySegment":Z
    :cond_4
    aget-object v0, v15, v8

    .line 704
    .local v0, "rep":Lca/uhn/hl7v2/model/Structure;
    move-object/from16 v19, v4

    instance-of v4, v0, Lca/uhn/hl7v2/model/Group;

    .line 704
    .end local v4    # "names":[Ljava/lang/String;
    .local v19, "names":[Ljava/lang/String;
    if-eqz v4, :cond_8

    .line 706
    move-object v4, v0

    check-cast v4, Lca/uhn/hl7v2/model/Group;

    invoke-static {v4, v1, v2, v10}, Lca/uhn/hl7v2/parser/PipeParser;->encode(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/parser/EncodingCharacters;Lca/uhn/hl7v2/parser/ParserConfiguration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 707
    .local v4, "encodedGroup":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_7

    .line 710
    if-nez v9, :cond_5

    if-nez v7, :cond_5

    .line 711
    const/16 v18, 0x1

    .line 713
    :cond_5
    if-eqz v16, :cond_6

    if-nez v9, :cond_6

    if-nez v17, :cond_6

    .line 714
    const/4 v9, 0x1

    .line 716
    :cond_6
    const/4 v12, 0x1

    .line 719
    .end local v4    # "encodedGroup":Ljava/lang/String;
    nop

    .line 702
    .end local v0    # "rep":Lca/uhn/hl7v2/model/Structure;
    :cond_7
    move/from16 v21, v5

    goto :goto_3

    .line 723
    .restart local v0    # "rep":Lca/uhn/hl7v2/model/Structure;
    :cond_8
    invoke-virtual {v2, v10}, Lca/uhn/hl7v2/parser/ParserConfiguration;->determineForcedEncodeIncludesTerserPath(Ljava/lang/String;)Z

    move-result v4

    .line 724
    .local v4, "encodeEmptySegments":Z
    move/from16 v21, v5

    move-object v5, v0

    check-cast v5, Lca/uhn/hl7v2/model/Segment;

    invoke-static {v5, v1, v2, v10}, Lca/uhn/hl7v2/parser/PipeParser;->encode(Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/parser/EncodingCharacters;Lca/uhn/hl7v2/parser/ParserConfiguration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 725
    .local v5, "segString":Ljava/lang/String;
    move-object/from16 v22, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    .line 725
    .end local v0    # "rep":Lca/uhn/hl7v2/model/Structure;
    .local v22, "rep":Lca/uhn/hl7v2/model/Structure;
    const/4 v2, 0x4

    if-ge v0, v2, :cond_a

    if-eqz v4, :cond_9

    goto :goto_4

    .line 702
    .end local v4    # "encodeEmptySegments":Z
    .end local v5    # "segString":Ljava/lang/String;
    .end local v22    # "rep":Lca/uhn/hl7v2/model/Structure;
    :cond_9
    :goto_3
    const/4 v2, 0x3

    goto :goto_5

    .line 726
    .restart local v4    # "encodeEmptySegments":Z
    .restart local v5    # "segString":Ljava/lang/String;
    .restart local v22    # "rep":Lca/uhn/hl7v2/model/Structure;
    :cond_a
    :goto_4
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_b

    .line 729
    invoke-virtual/range {p1 .. p1}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getFieldSeparator()C

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 732
    :cond_b
    const-string v0, "\r"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    const/4 v12, 0x1

    .line 736
    if-eqz v16, :cond_c

    .line 737
    const/4 v9, 0x1

    .line 740
    :cond_c
    if-nez v9, :cond_d

    if-nez v7, :cond_d

    .line 741
    const/16 v18, 0x1

    .line 702
    .end local v4    # "encodeEmptySegments":Z
    .end local v5    # "segString":Ljava/lang/String;
    .end local v22    # "rep":Lca/uhn/hl7v2/model/Structure;
    :cond_d
    :goto_5
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v4, v19

    move/from16 v5, v21

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    goto :goto_2
.end method

.method public static encode(Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # Lca/uhn/hl7v2/model/Segment;
    .param p1, "encodingChars"    # Lca/uhn/hl7v2/parser/EncodingCharacters;

    .line 780
    invoke-interface {p0}, Lca/uhn/hl7v2/model/Segment;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Message;->getParser()Lca/uhn/hl7v2/parser/Parser;

    move-result-object v0

    invoke-virtual {v0}, Lca/uhn/hl7v2/parser/Parser;->getParserConfiguration()Lca/uhn/hl7v2/parser/ParserConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lca/uhn/hl7v2/parser/PipeParser;->encode(Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/parser/EncodingCharacters;Lca/uhn/hl7v2/parser/ParserConfiguration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static encode(Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/parser/EncodingCharacters;Lca/uhn/hl7v2/parser/ParserConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "source"    # Lca/uhn/hl7v2/model/Segment;
    .param p1, "encodingChars"    # Lca/uhn/hl7v2/parser/EncodingCharacters;
    .param p2, "parserConfig"    # Lca/uhn/hl7v2/parser/ParserConfiguration;
    .param p3, "currentTerserPath"    # Ljava/lang/String;

    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 785
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Lca/uhn/hl7v2/model/Segment;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    invoke-virtual {p1}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getFieldSeparator()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 790
    const/4 v1, 0x1

    .line 791
    .local v1, "startAt":I
    invoke-interface {p0}, Lca/uhn/hl7v2/model/Segment;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lca/uhn/hl7v2/parser/PipeParser;->isDelimDefSegment(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 792
    const/4 v1, 0x2

    .line 796
    :cond_0
    invoke-interface {p0}, Lca/uhn/hl7v2/model/Segment;->numFields()I

    move-result v2

    .line 798
    .local v2, "numFields":I
    const/4 v3, 0x0

    .line 799
    .local v3, "forceUpToFieldNum":I
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 800
    invoke-virtual {p2, p3}, Lca/uhn/hl7v2/parser/ParserConfiguration;->determineForcedFieldNumForTerserPath(Ljava/lang/String;)I

    move-result v3

    .line 802
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 804
    move v4, v1

    .line 804
    .local v4, "i":I
    :goto_0
    if-le v4, v2, :cond_4

    .line 838
    .end local v4    # "i":I
    invoke-virtual {p1}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getFieldSeparator()C

    move-result v4

    .line 839
    .local v4, "fieldSeparator":C
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lca/uhn/hl7v2/parser/PipeParser;->stripExtraDelimiters(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v5

    .line 841
    .local v5, "retVal":Ljava/lang/String;
    invoke-interface {p0}, Lca/uhn/hl7v2/model/Segment;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lca/uhn/hl7v2/parser/PipeParser;->isDelimDefSegment(Ljava/lang/String;)Z

    move-result v6

    .line 842
    .local v6, "offset":I
    :goto_1
    if-lez v3, :cond_3

    invoke-static {v5, v4}, Lca/uhn/hl7v2/parser/PipeParser;->countInstancesOf(Ljava/lang/String;C)I

    move-result v7

    add-int/2addr v7, v6

    if-lt v7, v3, :cond_2

    goto :goto_2

    .line 843
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 846
    :cond_3
    :goto_2
    return-object v5

    .line 806
    .end local v5    # "retVal":Ljava/lang/String;
    .end local v6    # "offset":I
    .local v4, "i":I
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 807
    .local v5, "nextFieldTerserPath":Ljava/lang/String;
    if-eqz p2, :cond_7

    if-eqz p3, :cond_7

    .line 808
    invoke-virtual {p2}, Lca/uhn/hl7v2/parser/ParserConfiguration;->getForcedEncode()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_4

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 809
    .local v7, "nextPath":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 811
    const/4 v8, 0x0

    :try_start_0
    invoke-interface {p0, v4, v8}, Lca/uhn/hl7v2/model/Segment;->getField(II)Lca/uhn/hl7v2/model/Type;
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    goto :goto_3

    :catch_0
    move-exception v8

    .line 813
    .local v8, "e":Lca/uhn/hl7v2/HL7Exception;
    sget-object v9, Lca/uhn/hl7v2/parser/PipeParser;->log:Lorg/slf4j/Logger;

    const-string v10, "Error while encoding segment: "

    invoke-interface {v9, v10, v8}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 813
    .end local v7    # "nextPath":Ljava/lang/String;
    .end local v8    # "e":Lca/uhn/hl7v2/HL7Exception;
    goto :goto_3

    .line 820
    :cond_7
    :goto_4
    :try_start_1
    invoke-interface {p0, v4}, Lca/uhn/hl7v2/model/Segment;->getField(I)[Lca/uhn/hl7v2/model/Type;

    move-result-object v6

    .line 821
    .local v6, "reps":[Lca/uhn/hl7v2/model/Type;
    const/4 v7, 0x0

    .line 821
    .local v7, "j":I
    :goto_5
    array-length v8, v6

    if-lt v7, v8, :cond_8

    .line 831
    .end local v6    # "reps":[Lca/uhn/hl7v2/model/Type;
    .end local v7    # "j":I
    goto :goto_6

    .line 822
    .restart local v6    # "reps":[Lca/uhn/hl7v2/model/Type;
    .restart local v7    # "j":I
    :cond_8
    aget-object v8, v6, v7

    invoke-static {v8, p1, p2, v5}, Lca/uhn/hl7v2/parser/PipeParser;->encode(Lca/uhn/hl7v2/model/Type;Lca/uhn/hl7v2/parser/EncodingCharacters;Lca/uhn/hl7v2/parser/ParserConfiguration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 825
    .local v8, "fieldText":Ljava/lang/String;
    invoke-interface {p0}, Lca/uhn/hl7v2/model/Segment;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lca/uhn/hl7v2/parser/PipeParser;->isDelimDefSegment(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x2

    if-ne v4, v9, :cond_9

    .line 826
    invoke-virtual {p2}, Lca/uhn/hl7v2/parser/ParserConfiguration;->getEscaping()Lca/uhn/hl7v2/parser/Escaping;

    move-result-object v9

    invoke-interface {v9, v8, p1}, Lca/uhn/hl7v2/parser/Escaping;->unescape(Ljava/lang/String;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 827
    :cond_9
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    array-length v9, v6

    add-int/lit8 v9, v9, -0x1

    if-ge v7, v9, :cond_a

    .line 829
    invoke-virtual {p1}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getRepetitionSeparator()C

    move-result v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 821
    .end local v8    # "fieldText":Ljava/lang/String;
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 831
    .end local v6    # "reps":[Lca/uhn/hl7v2/model/Type;
    .end local v7    # "j":I
    :catch_1
    move-exception v6

    .line 832
    .local v6, "e":Lca/uhn/hl7v2/HL7Exception;
    sget-object v7, Lca/uhn/hl7v2/parser/PipeParser;->log:Lorg/slf4j/Logger;

    const-string v8, "Error while encoding segment: "

    invoke-interface {v7, v8, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 834
    .end local v6    # "e":Lca/uhn/hl7v2/HL7Exception;
    :goto_6
    invoke-virtual {p1}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getFieldSeparator()C

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 804
    .end local v5    # "nextFieldTerserPath":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0
.end method

.method public static encode(Lca/uhn/hl7v2/model/Type;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # Lca/uhn/hl7v2/model/Type;
    .param p1, "encodingChars"    # Lca/uhn/hl7v2/parser/EncodingCharacters;

    .line 516
    invoke-interface {p0}, Lca/uhn/hl7v2/model/Type;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Message;->getParser()Lca/uhn/hl7v2/parser/Parser;

    move-result-object v0

    invoke-virtual {v0}, Lca/uhn/hl7v2/parser/Parser;->getParserConfiguration()Lca/uhn/hl7v2/parser/ParserConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lca/uhn/hl7v2/parser/PipeParser;->encode(Lca/uhn/hl7v2/model/Type;Lca/uhn/hl7v2/parser/EncodingCharacters;Lca/uhn/hl7v2/parser/ParserConfiguration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static encode(Lca/uhn/hl7v2/model/Type;Lca/uhn/hl7v2/parser/EncodingCharacters;Lca/uhn/hl7v2/parser/ParserConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "source"    # Lca/uhn/hl7v2/model/Type;
    .param p1, "encodingChars"    # Lca/uhn/hl7v2/parser/EncodingCharacters;
    .param p2, "parserConfig"    # Lca/uhn/hl7v2/parser/ParserConfiguration;
    .param p3, "currentTerserPath"    # Ljava/lang/String;

    .line 520
    instance-of v0, p0, Lca/uhn/hl7v2/model/Varies;

    if-eqz v0, :cond_0

    .line 521
    move-object v0, p0

    check-cast v0, Lca/uhn/hl7v2/model/Varies;

    .line 522
    .local v0, "varies":Lca/uhn/hl7v2/model/Varies;
    invoke-virtual {v0}, Lca/uhn/hl7v2/model/Varies;->getData()Lca/uhn/hl7v2/model/Type;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 523
    invoke-virtual {v0}, Lca/uhn/hl7v2/model/Varies;->getData()Lca/uhn/hl7v2/model/Type;

    move-result-object p0

    .line 527
    .end local v0    # "varies":Lca/uhn/hl7v2/model/Varies;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 528
    .local v0, "field":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 528
    .local v1, "i":I
    :goto_0
    invoke-static {p0}, Lca/uhn/hl7v2/util/Terser;->numComponents(Lca/uhn/hl7v2/model/Type;)I

    move-result v2

    if-le v1, v2, :cond_7

    .line 539
    .end local v1    # "i":I
    const/4 v1, 0x0

    .line 540
    .local v1, "forceUpToFieldNum":I
    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    .line 541
    invoke-virtual {p2}, Lca/uhn/hl7v2/parser/ParserConfiguration;->getForcedEncode()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 542
    .local v3, "nextPath":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 543
    const/16 v4, 0x2d

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 544
    .local v4, "endOfFieldDef":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 545
    const/4 v1, 0x0

    .line 546
    goto :goto_2

    .line 548
    :cond_3
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 549
    .local v5, "fieldNumString":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 550
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 550
    .end local v3    # "nextPath":Ljava/lang/String;
    .end local v4    # "endOfFieldDef":I
    .end local v5    # "fieldNumString":Ljava/lang/String;
    goto :goto_1

    .line 556
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getComponentSeparator()C

    move-result v2

    .line 557
    .local v2, "componentSeparator":C
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lca/uhn/hl7v2/parser/PipeParser;->stripExtraDelimiters(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v3

    .line 559
    .local v3, "retVal":Ljava/lang/String;
    :goto_3
    if-lez v1, :cond_6

    invoke-static {v3, v2}, Lca/uhn/hl7v2/parser/PipeParser;->countInstancesOf(Ljava/lang/String;C)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-lt v4, v1, :cond_5

    goto :goto_4

    .line 560
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 563
    :cond_6
    :goto_4
    return-object v3

    .line 529
    .end local v2    # "componentSeparator":C
    .end local v3    # "retVal":Ljava/lang/String;
    .local v1, "i":I
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 530
    .local v2, "comp":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    .line 530
    .local v3, "j":I
    :goto_5
    invoke-static {p0, v1}, Lca/uhn/hl7v2/util/Terser;->numSubComponents(Lca/uhn/hl7v2/model/Type;I)I

    move-result v4

    if-le v3, v4, :cond_8

    .line 535
    .end local v3    # "j":I
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getSubcomponentSeparator()C

    move-result v4

    invoke-static {v3, v4}, Lca/uhn/hl7v2/parser/PipeParser;->stripExtraDelimiters(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    invoke-virtual {p1}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getComponentSeparator()C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 528
    .end local v2    # "comp":Ljava/lang/StringBuilder;
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 531
    .restart local v2    # "comp":Ljava/lang/StringBuilder;
    .restart local v3    # "j":I
    :cond_8
    invoke-static {p0, v1, v3}, Lca/uhn/hl7v2/util/Terser;->getPrimitive(Lca/uhn/hl7v2/model/Type;II)Lca/uhn/hl7v2/model/Primitive;

    move-result-object v4

    .line 532
    .local v4, "p":Lca/uhn/hl7v2/model/Primitive;
    invoke-virtual {p2}, Lca/uhn/hl7v2/parser/ParserConfiguration;->getEscaping()Lca/uhn/hl7v2/parser/Escaping;

    move-result-object v5

    invoke-static {v4, v5, p1}, Lca/uhn/hl7v2/parser/PipeParser;->encodePrimitive(Lca/uhn/hl7v2/model/Primitive;Lca/uhn/hl7v2/parser/Escaping;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    invoke-virtual {p1}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getSubcomponentSeparator()C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 530
    .end local v4    # "p":Lca/uhn/hl7v2/model/Primitive;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5
.end method

.method private static encodePrimitive(Lca/uhn/hl7v2/model/Primitive;Lca/uhn/hl7v2/parser/Escaping;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;
    .locals 1
    .param p0, "p"    # Lca/uhn/hl7v2/model/Primitive;
    .param p1, "escaping"    # Lca/uhn/hl7v2/parser/Escaping;
    .param p2, "encodingChars"    # Lca/uhn/hl7v2/parser/EncodingCharacters;

    .line 567
    invoke-interface {p0}, Lca/uhn/hl7v2/model/Primitive;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 569
    const-string v0, ""

    .line 570
    goto :goto_0

    .line 571
    :cond_0
    invoke-interface {p1, v0, p2}, Lca/uhn/hl7v2/parser/Escaping;->escape(Ljava/lang/String;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;

    move-result-object v0

    .line 573
    :goto_0
    return-object v0
.end method

.method private static getEncodingChars(Ljava/lang/String;)Lca/uhn/hl7v2/parser/EncodingCharacters;
    .locals 4
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 205
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 206
    new-instance v0, Lca/uhn/hl7v2/HL7Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid message content: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_0
    new-instance v0, Lca/uhn/hl7v2/parser/EncodingCharacters;

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x4

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lca/uhn/hl7v2/parser/EncodingCharacters;-><init>(CLjava/lang/String;)V

    return-object v0
.end method

.method public static getInstanceWithNoValidation()Lca/uhn/hl7v2/parser/PipeParser;
    .locals 2

    .line 767
    new-instance v0, Lca/uhn/hl7v2/DefaultHapiContext;

    invoke-direct {v0}, Lca/uhn/hl7v2/DefaultHapiContext;-><init>()V

    .line 768
    .local v0, "context":Lca/uhn/hl7v2/HapiContext;
    invoke-static {}, Lca/uhn/hl7v2/validation/impl/ValidationContextFactory;->noValidation()Lca/uhn/hl7v2/validation/ValidationContext;

    move-result-object v1

    invoke-interface {v0, v1}, Lca/uhn/hl7v2/HapiContext;->setValidationContext(Lca/uhn/hl7v2/validation/ValidationContext;)V

    .line 769
    new-instance v1, Lca/uhn/hl7v2/parser/PipeParser;

    invoke-direct {v1, v0}, Lca/uhn/hl7v2/parser/PipeParser;-><init>(Lca/uhn/hl7v2/HapiContext;)V

    return-object v1
.end method

.method private getStructure(Ljava/lang/String;)Lca/uhn/hl7v2/parser/PipeParser$MessageStructure;
    .locals 11
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 152
    invoke-static {p1}, Lca/uhn/hl7v2/parser/PipeParser;->getEncodingChars(Ljava/lang/String;)Lca/uhn/hl7v2/parser/EncodingCharacters;

    move-result-object v0

    .line 154
    .local v0, "ec":Lca/uhn/hl7v2/parser/EncodingCharacters;
    const/4 v1, 0x1

    move v2, v1

    .line 157
    .local v2, "explicityDefined":Z
    :try_start_0
    const-string v3, "\r"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getFieldSeparator()C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lca/uhn/hl7v2/parser/PipeParser;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, "fields":[Ljava/lang/String;
    const/16 v5, 0x8

    aget-object v5, v3, v5

    .line 164
    .local v5, "wholeFieldNine":Ljava/lang/String;
    invoke-virtual {v0}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getComponentSeparator()C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lca/uhn/hl7v2/parser/PipeParser;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 165
    .local v6, "comps":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x2

    const/4 v9, 0x3

    if-lt v7, v9, :cond_0

    .line 166
    aget-object v1, v6, v8

    .line 167
    .local v1, "messageStructure":Ljava/lang/String;
    goto :goto_0

    .line 167
    .end local v1    # "messageStructure":Ljava/lang/String;
    :cond_0
    array-length v7, v6

    if-lez v7, :cond_1

    aget-object v7, v6, v4

    if-eqz v7, :cond_1

    aget-object v7, v6, v4

    const-string v10, "ACK"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 168
    const-string v1, "ACK"

    .line 169
    .restart local v1    # "messageStructure":Ljava/lang/String;
    goto :goto_0

    .line 169
    .end local v1    # "messageStructure":Ljava/lang/String;
    :cond_1
    array-length v7, v6

    if-ne v7, v8, :cond_2

    .line 170
    const/4 v2, 0x0

    .line 171
    new-instance v7, Ljava/lang/StringBuilder;

    aget-object v4, v6, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v6, v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .restart local v1    # "messageStructure":Ljava/lang/String;
    nop

    .line 189
    .end local v3    # "fields":[Ljava/lang/String;
    .end local v6    # "comps":[Ljava/lang/String;
    :goto_0
    move-object v3, v5

    .line 192
    .end local v5    # "wholeFieldNine":Ljava/lang/String;
    .local v3, "wholeFieldNine":Ljava/lang/String;
    new-instance v4, Lca/uhn/hl7v2/parser/PipeParser$MessageStructure;

    invoke-direct {v4, v1, v2}, Lca/uhn/hl7v2/parser/PipeParser$MessageStructure;-><init>(Ljava/lang/String;Z)V

    return-object v4

    .line 179
    .end local v1    # "messageStructure":Ljava/lang/String;
    .local v3, "fields":[Ljava/lang/String;
    .restart local v5    # "wholeFieldNine":Ljava/lang/String;
    .restart local v6    # "comps":[Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t determine message structure from MSH-9: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .local v1, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    array-length v4, v6

    if-ge v4, v9, :cond_3

    .line 182
    const-string v4, " HINT: there are only "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    array-length v4, v6

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    const-string v4, " of 3 components present"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :cond_3
    new-instance v4, Lca/uhn/hl7v2/HL7Exception;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lca/uhn/hl7v2/ErrorCode;->UNSUPPORTED_MESSAGE_TYPE:Lca/uhn/hl7v2/ErrorCode;

    invoke-direct {v4, v7, v8}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;Lca/uhn/hl7v2/ErrorCode;)V

    throw v4
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 188
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    .end local v3    # "fields":[Ljava/lang/String;
    .end local v5    # "wholeFieldNine":Ljava/lang/String;
    .end local v6    # "comps":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 189
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v3, Lca/uhn/hl7v2/HL7Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Can\'t find message structure (MSH-9-3): "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lca/uhn/hl7v2/ErrorCode;->UNSUPPORTED_MESSAGE_TYPE:Lca/uhn/hl7v2/ErrorCode;

    invoke-direct {v3, v4, v5}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;Lca/uhn/hl7v2/ErrorCode;)V

    throw v3
.end method

.method private getStructureDefinition(Lca/uhn/hl7v2/model/Message;)Lca/uhn/hl7v2/parser/IStructureDefinition;
    .locals 7
    .param p1, "theMessage"    # Lca/uhn/hl7v2/model/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 249
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 250
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Message;>;"
    iget-object v1, p0, Lca/uhn/hl7v2/parser/PipeParser;->myStructureDefinitions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 253
    .local v1, "definitions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lca/uhn/hl7v2/parser/StructureDefinition;>;"
    if-eqz v1, :cond_0

    .line 254
    invoke-interface {p1}, Lca/uhn/hl7v2/model/Message;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lca/uhn/hl7v2/parser/StructureDefinition;

    .line 255
    .local v2, "retVal":Lca/uhn/hl7v2/parser/StructureDefinition;
    if-eqz v2, :cond_0

    .line 256
    return-object v2

    .line 260
    .end local v2    # "retVal":Lca/uhn/hl7v2/parser/StructureDefinition;
    :cond_0
    instance-of v2, p1, Lca/uhn/hl7v2/model/SuperStructure;

    if-eqz v2, :cond_1

    .line 261
    move-object v2, p1

    check-cast v2, Lca/uhn/hl7v2/model/SuperStructure;

    const-string v3, "MSH"

    invoke-interface {v2, v3}, Lca/uhn/hl7v2/model/SuperStructure;->getStructuresWhichChildAppliesTo(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 262
    .local v2, "appliesTo":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Lca/uhn/hl7v2/model/Message;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 263
    new-instance v3, Lca/uhn/hl7v2/HL7Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Superstructure "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " does not apply to message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lca/uhn/hl7v2/model/Message;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", can not parse."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 267
    .end local v2    # "appliesTo":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    const-class v2, Lca/uhn/hl7v2/model/DoNotCacheStructure;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 268
    new-instance v2, Lca/uhn/hl7v2/parser/PipeParser$Holder;

    invoke-direct {v2, v3}, Lca/uhn/hl7v2/parser/PipeParser$Holder;-><init>(Lca/uhn/hl7v2/parser/PipeParser$Holder;)V

    .line 269
    .local v2, "previousLeaf":Lca/uhn/hl7v2/parser/PipeParser$Holder;, "Lca/uhn/hl7v2/parser/PipeParser$Holder<Lca/uhn/hl7v2/parser/StructureDefinition;>;"
    invoke-interface {p1}, Lca/uhn/hl7v2/model/Message;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lca/uhn/hl7v2/parser/PipeParser;->createStructureDefinition(Lca/uhn/hl7v2/model/Structure;Lca/uhn/hl7v2/parser/PipeParser$Holder;Ljava/lang/String;)Lca/uhn/hl7v2/parser/StructureDefinition;

    move-result-object v2

    .line 270
    .local v2, "retVal":Lca/uhn/hl7v2/parser/StructureDefinition;
    goto :goto_0

    .line 271
    .end local v2    # "retVal":Lca/uhn/hl7v2/parser/StructureDefinition;
    :cond_2
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/PipeParser;->getFactory()Lca/uhn/hl7v2/parser/ModelClassFactory;

    move-result-object v2

    invoke-static {v0, v2}, Lca/uhn/hl7v2/util/ReflectionUtil;->instantiateMessage(Ljava/lang/Class;Lca/uhn/hl7v2/parser/ModelClassFactory;)Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    .line 272
    .local v2, "message":Lca/uhn/hl7v2/model/Message;
    new-instance v4, Lca/uhn/hl7v2/parser/PipeParser$Holder;

    invoke-direct {v4, v3}, Lca/uhn/hl7v2/parser/PipeParser$Holder;-><init>(Lca/uhn/hl7v2/parser/PipeParser$Holder;)V

    move-object v3, v4

    .line 273
    .local v3, "previousLeaf":Lca/uhn/hl7v2/parser/PipeParser$Holder;, "Lca/uhn/hl7v2/parser/PipeParser$Holder<Lca/uhn/hl7v2/parser/StructureDefinition;>;"
    invoke-interface {p1}, Lca/uhn/hl7v2/model/Message;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lca/uhn/hl7v2/parser/PipeParser;->createStructureDefinition(Lca/uhn/hl7v2/model/Structure;Lca/uhn/hl7v2/parser/PipeParser$Holder;Ljava/lang/String;)Lca/uhn/hl7v2/parser/StructureDefinition;

    move-result-object v4

    .line 275
    .local v4, "retVal":Lca/uhn/hl7v2/parser/StructureDefinition;
    iget-object v5, p0, Lca/uhn/hl7v2/parser/PipeParser;->myStructureDefinitions:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 276
    iget-object v5, p0, Lca/uhn/hl7v2/parser/PipeParser;->myStructureDefinitions:Ljava/util/HashMap;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_3
    iget-object v5, p0, Lca/uhn/hl7v2/parser/PipeParser;->myStructureDefinitions:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-interface {p1}, Lca/uhn/hl7v2/model/Message;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .end local v2    # "message":Lca/uhn/hl7v2/model/Message;
    .end local v3    # "previousLeaf":Lca/uhn/hl7v2/parser/PipeParser$Holder;, "Lca/uhn/hl7v2/parser/PipeParser$Holder<Lca/uhn/hl7v2/parser/StructureDefinition;>;"
    move-object v2, v4

    .line 281
    .end local v4    # "retVal":Lca/uhn/hl7v2/parser/StructureDefinition;
    .local v2, "retVal":Lca/uhn/hl7v2/parser/StructureDefinition;
    :goto_0
    return-object v2
.end method

.method private getValidEncodingCharacters(CLca/uhn/hl7v2/model/Segment;)Lca/uhn/hl7v2/parser/EncodingCharacters;
    .locals 4
    .param p1, "fieldSep"    # C
    .param p2, "msh"    # Lca/uhn/hl7v2/model/Segment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 642
    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p2, v1, v2, v0, v0}, Lca/uhn/hl7v2/util/Terser;->get(Lca/uhn/hl7v2/model/Segment;IIII)Ljava/lang/String;

    move-result-object v0

    .line 644
    .local v0, "encCharString":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 645
    new-instance v1, Lca/uhn/hl7v2/HL7Exception;

    const-string v2, "Can\'t encode message: MSH-2 (encoding characters) is missing"

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 648
    :cond_0
    sget-object v1, Lca/uhn/hl7v2/Version;->V27:Lca/uhn/hl7v2/Version;

    invoke-interface {p2}, Lca/uhn/hl7v2/model/Segment;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    invoke-interface {v2}, Lca/uhn/hl7v2/model/Message;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lca/uhn/hl7v2/Version;->versionOf(Ljava/lang/String;)Lca/uhn/hl7v2/Version;

    move-result-object v2

    invoke-virtual {v1, v2}, Lca/uhn/hl7v2/Version;->isGreaterThan(Lca/uhn/hl7v2/Version;)Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 649
    new-instance v1, Lca/uhn/hl7v2/HL7Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Encoding characters (MSH-2) value \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' invalid -- must be 4 characters"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lca/uhn/hl7v2/ErrorCode;->DATA_TYPE_ERROR:Lca/uhn/hl7v2/ErrorCode;

    invoke-direct {v1, v2, v3}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;Lca/uhn/hl7v2/ErrorCode;)V

    throw v1

    .line 650
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    .line 651
    new-instance v1, Lca/uhn/hl7v2/HL7Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Encoding characters (MSH-2) value \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' invalid -- must be 4 or 5 characters"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lca/uhn/hl7v2/ErrorCode;->DATA_TYPE_ERROR:Lca/uhn/hl7v2/ErrorCode;

    invoke-direct {v1, v2, v3}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;Lca/uhn/hl7v2/ErrorCode;)V

    throw v1

    .line 654
    :cond_2
    new-instance v1, Lca/uhn/hl7v2/parser/EncodingCharacters;

    invoke-direct {v1, p1, v0}, Lca/uhn/hl7v2/parser/EncodingCharacters;-><init>(CLjava/lang/String;)V

    return-object v1
.end method

.method private static isDelimDefSegment(Ljava/lang/String;)Z
    .locals 2
    .param p0, "theSegmentName"    # Ljava/lang/String;

    .line 418
    const/4 v0, 0x0

    .line 419
    .local v0, "is":Z
    const-string v1, "MSH"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "FHS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BHS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 420
    :cond_0
    const/4 v0, 0x1

    .line 422
    :cond_1
    return v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "composite"    # Ljava/lang/String;
    .param p1, "delim"    # Ljava/lang/String;

    .line 460
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 463
    .local v0, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 464
    const-string p0, ""

    .line 465
    :cond_0
    if-nez p1, :cond_1

    .line 466
    const-string p1, ""

    .line 468
    :cond_1
    new-instance v1, Ljava/util/StringTokenizer;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 469
    .local v1, "tok":Ljava/util/StringTokenizer;
    const/4 v2, 0x1

    .line 470
    .local v2, "previousTokenWasDelim":Z
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_3

    .line 482
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 483
    .local v3, "ret":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 483
    .local v4, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v4, v5, :cond_2

    .line 487
    .end local v4    # "i":I
    return-object v3

    .line 484
    .restart local v4    # "i":I
    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 483
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 471
    .end local v3    # "ret":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_3
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 472
    .local v3, "thisTok":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 473
    if-eqz v2, :cond_4

    .line 474
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    :cond_4
    const/4 v2, 0x1

    .line 476
    goto :goto_0

    .line 477
    :cond_5
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    const/4 v2, 0x0

    .line 478
    .end local v3    # "thisTok":Ljava/lang/String;
    goto :goto_0
.end method

.method private static stripExtraDelimiters(Ljava/lang/String;C)Ljava/lang/String;
    .locals 6
    .param p0, "in"    # Ljava/lang/String;
    .param p1, "delim"    # C

    .line 582
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 585
    .local v0, "chars":[C
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 586
    .local v1, "c":I
    const/4 v2, 0x0

    .line 587
    .local v2, "found":Z
    :goto_0
    if-ltz v1, :cond_2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 588
    :cond_0
    add-int/lit8 v3, v1, -0x1

    .line 588
    .local v3, "c":I
    aget-char v1, v0, v1

    .line 588
    .end local v1    # "c":I
    if-eq v1, p1, :cond_1

    .line 589
    const/4 v2, 0x1

    .line 587
    .end local v3    # "c":I
    .restart local v1    # "c":I
    :cond_1
    move v1, v3

    goto :goto_0

    .line 592
    :cond_2
    :goto_1
    const-string v3, ""

    .line 593
    .local v3, "ret":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 594
    const/4 v4, 0x0

    add-int/lit8 v5, v1, 0x2

    invoke-static {v0, v4, v5}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v3

    .line 595
    :cond_3
    return-object v3
.end method

.method public static stripLeadingWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "in"    # Ljava/lang/String;

    .line 871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 872
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 873
    .local v1, "chars":[C
    const/4 v2, 0x0

    .line 874
    .local v2, "c":I
    :goto_0
    array-length v3, v1

    if-lt v2, v3, :cond_0

    goto :goto_1

    .line 875
    :cond_0
    aget-char v3, v1, v2

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 876
    nop

    .line 879
    :goto_1
    move v3, v2

    .line 879
    .local v3, "i":I
    :goto_2
    array-length v4, v1

    if-lt v3, v4, :cond_1

    .line 882
    .end local v3    # "i":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 880
    .restart local v3    # "i":I
    :cond_1
    aget-char v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 879
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 877
    .end local v3    # "i":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected doEncode(Lca/uhn/hl7v2/model/Message;)Ljava/lang/String;
    .locals 6
    .param p1, "source"    # Lca/uhn/hl7v2/model/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 625
    const-string v0, "MSH"

    invoke-interface {p1, v0}, Lca/uhn/hl7v2/model/Message;->get(Ljava/lang/String;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Segment;

    .line 626
    .local v0, "msh":Lca/uhn/hl7v2/model/Segment;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, v2, v2}, Lca/uhn/hl7v2/util/Terser;->get(Lca/uhn/hl7v2/model/Segment;IIII)Ljava/lang/String;

    move-result-object v2

    .line 628
    .local v2, "fieldSepString":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 629
    new-instance v1, Lca/uhn/hl7v2/HL7Exception;

    const-string v3, "Can\'t encode message: MSH-1 (field separator) is missing"

    invoke-direct {v1, v3}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 631
    :cond_0
    const/16 v3, 0x7c

    .line 632
    .local v3, "fieldSep":C
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 634
    :cond_1
    invoke-direct {p0, v3, v0}, Lca/uhn/hl7v2/parser/PipeParser;->getValidEncodingCharacters(CLca/uhn/hl7v2/model/Segment;)Lca/uhn/hl7v2/parser/EncodingCharacters;

    move-result-object v1

    .line 638
    .local v1, "en":Lca/uhn/hl7v2/parser/EncodingCharacters;
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/PipeParser;->getParserConfiguration()Lca/uhn/hl7v2/parser/ParserConfiguration;

    move-result-object v4

    const-string v5, ""

    invoke-static {p1, v1, v4, v5}, Lca/uhn/hl7v2/parser/PipeParser;->encode(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/parser/EncodingCharacters;Lca/uhn/hl7v2/parser/ParserConfiguration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method protected doEncode(Lca/uhn/hl7v2/model/Message;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "source"    # Lca/uhn/hl7v2/model/Message;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 609
    invoke-virtual {p0, p2}, Lca/uhn/hl7v2/parser/PipeParser;->supportsEncoding(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 610
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

    .line 612
    :cond_0
    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/parser/PipeParser;->encode(Lca/uhn/hl7v2/model/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public doEncode(Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;
    .locals 2
    .param p1, "structure"    # Lca/uhn/hl7v2/model/Segment;
    .param p2, "encodingCharacters"    # Lca/uhn/hl7v2/parser/EncodingCharacters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 495
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/PipeParser;->getParserConfiguration()Lca/uhn/hl7v2/parser/ParserConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lca/uhn/hl7v2/parser/PipeParser;->encode(Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/parser/EncodingCharacters;Lca/uhn/hl7v2/parser/ParserConfiguration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public doEncode(Lca/uhn/hl7v2/model/Type;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # Lca/uhn/hl7v2/model/Type;
    .param p2, "encodingCharacters"    # Lca/uhn/hl7v2/parser/EncodingCharacters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 503
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/PipeParser;->getParserConfiguration()Lca/uhn/hl7v2/parser/ParserConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lca/uhn/hl7v2/parser/PipeParser;->encode(Lca/uhn/hl7v2/model/Type;Lca/uhn/hl7v2/parser/EncodingCharacters;Lca/uhn/hl7v2/parser/ParserConfiguration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected doParse(Ljava/lang/String;Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 223
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/parser/PipeParser;->getStructure(Ljava/lang/String;)Lca/uhn/hl7v2/parser/PipeParser$MessageStructure;

    move-result-object v0

    .line 224
    .local v0, "structure":Lca/uhn/hl7v2/parser/PipeParser$MessageStructure;
    iget-object v1, v0, Lca/uhn/hl7v2/parser/PipeParser$MessageStructure;->messageStructure:Ljava/lang/String;

    iget-boolean v2, v0, Lca/uhn/hl7v2/parser/PipeParser$MessageStructure;->explicitlyDefined:Z

    invoke-virtual {p0, v1, p2, v2}, Lca/uhn/hl7v2/parser/PipeParser;->instantiateMessage(Ljava/lang/String;Ljava/lang/String;Z)Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    .line 225
    .local v1, "m":Lca/uhn/hl7v2/model/Message;
    invoke-interface {v1, p0}, Lca/uhn/hl7v2/model/Message;->setParser(Lca/uhn/hl7v2/parser/Parser;)V

    .line 226
    invoke-virtual {p0, v1, p1}, Lca/uhn/hl7v2/parser/PipeParser;->parse(Lca/uhn/hl7v2/model/Message;Ljava/lang/String;)V

    .line 227
    return-object v1
.end method

.method protected doParseForSpecificPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 236
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/parser/PipeParser;->getStructure(Ljava/lang/String;)Lca/uhn/hl7v2/parser/PipeParser$MessageStructure;

    move-result-object v0

    .line 237
    .local v0, "structure":Lca/uhn/hl7v2/parser/PipeParser$MessageStructure;
    iget-object v1, v0, Lca/uhn/hl7v2/parser/PipeParser$MessageStructure;->messageStructure:Ljava/lang/String;

    iget-boolean v2, v0, Lca/uhn/hl7v2/parser/PipeParser$MessageStructure;->explicitlyDefined:Z

    invoke-virtual {p0, v1, p2, v2, p3}, Lca/uhn/hl7v2/parser/PipeParser;->instantiateMessageInASpecificPackage(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    .line 239
    .local v1, "m":Lca/uhn/hl7v2/model/Message;
    invoke-virtual {p0, v1, p1}, Lca/uhn/hl7v2/parser/PipeParser;->parse(Lca/uhn/hl7v2/model/Message;Ljava/lang/String;)V

    .line 241
    return-object v1
.end method

.method public encode(Lca/uhn/hl7v2/model/Message;)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # Lca/uhn/hl7v2/model/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 1006
    iget-object v0, p0, Lca/uhn/hl7v2/parser/PipeParser;->myLegacyMode:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lca/uhn/hl7v2/parser/PipeParser;->myLegacyMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1009
    new-instance v0, Lca/uhn/hl7v2/parser/OldPipeParser;

    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/PipeParser;->getFactory()Lca/uhn/hl7v2/parser/ModelClassFactory;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/parser/OldPipeParser;-><init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 1011
    .local v0, "oldPipeParser":Lca/uhn/hl7v2/parser/OldPipeParser;
    invoke-virtual {v0, p1}, Lca/uhn/hl7v2/parser/OldPipeParser;->encode(Lca/uhn/hl7v2/model/Message;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1013
    .end local v0    # "oldPipeParser":Lca/uhn/hl7v2/parser/OldPipeParser;
    :cond_0
    invoke-super {p0, p1}, Lca/uhn/hl7v2/parser/Parser;->encode(Lca/uhn/hl7v2/model/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAckID(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "message"    # Ljava/lang/String;

    .line 963
    const/4 v0, 0x0

    .line 964
    .local v0, "ackID":Ljava/lang/String;
    const-string v1, "\rMSA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 965
    .local v1, "startMSA":I
    if-ltz v1, :cond_3

    .line 966
    add-int/lit8 v2, v1, 0x5

    .line 967
    .local v2, "startFieldOne":I
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 968
    .local v3, "fieldDelim":C
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 969
    .local v4, "start":I
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 970
    .local v5, "end":I
    const-string v6, "\r"

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 971
    .local v6, "segEnd":I
    if-le v6, v4, :cond_0

    if-ge v6, v5, :cond_0

    .line 972
    move v5, v6

    .line 976
    :cond_0
    if-gez v5, :cond_2

    .line 977
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0xd

    if-ne v7, v8, :cond_1

    .line 978
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .line 979
    goto :goto_0

    .line 980
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 983
    :cond_2
    :goto_0
    if-lez v4, :cond_3

    if-le v5, v4, :cond_3

    .line 984
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 987
    .end local v2    # "startFieldOne":I
    .end local v3    # "fieldDelim":C
    .end local v4    # "start":I
    .end local v5    # "end":I
    .end local v6    # "segEnd":I
    :cond_3
    sget-object v2, Lca/uhn/hl7v2/parser/PipeParser;->log:Lorg/slf4j/Logger;

    const-string v3, "ACK ID: {}"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 988
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

    .line 906
    move-object/from16 v1, p1

    const-string v2, "MSH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 907
    .local v2, "locStartMSH":I
    if-gez v2, :cond_0

    .line 908
    new-instance v3, Lca/uhn/hl7v2/HL7Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Couldn\'t find MSH segment in message: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lca/uhn/hl7v2/ErrorCode;->SEGMENT_SEQUENCE_ERROR:Lca/uhn/hl7v2/ErrorCode;

    invoke-direct {v3, v4, v5}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;Lca/uhn/hl7v2/ErrorCode;)V

    throw v3

    .line 909
    :cond_0
    const/16 v3, 0xd

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 910
    .local v3, "locEndMSH":I
    if-gez v3, :cond_1

    .line 911
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 912
    :cond_1
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 915
    .local v4, "mshString":Ljava/lang/String;
    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 918
    .local v5, "fieldSep":C
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lca/uhn/hl7v2/parser/PipeParser;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 922
    .local v6, "fields":[Ljava/lang/String;
    const/4 v7, 0x1

    :try_start_0
    aget-object v7, v6, v7

    .line 923
    .local v7, "encChars":Ljava/lang/String;
    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v15, v8

    .line 924
    .local v15, "compSep":C
    const/16 v8, 0x9

    aget-object v21, v6, v8

    .line 925
    .local v21, "messControlID":Ljava/lang/String;
    const/16 v8, 0xa

    aget-object v8, v6, v8

    invoke-static {v15}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lca/uhn/hl7v2/parser/PipeParser;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v22, v8

    .line 928
    .local v22, "procIDComps":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 930
    .local v8, "version":Ljava/lang/String;
    :try_start_1
    invoke-virtual/range {p0 .. p1}, Lca/uhn/hl7v2/parser/PipeParser;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v8, v9

    .line 931
    goto :goto_0

    :catch_0
    move-exception v0

    .line 934
    :goto_0
    if-nez v8, :cond_2

    .line 935
    :try_start_2
    invoke-static {}, Lca/uhn/hl7v2/Version;->highestAvailableVersionOrDefault()Lca/uhn/hl7v2/Version;

    move-result-object v9

    .line 936
    .local v9, "availableVersion":Lca/uhn/hl7v2/Version;
    invoke-virtual {v9}, Lca/uhn/hl7v2/Version;->getVersion()Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 939
    .end local v8    # "version":Ljava/lang/String;
    .end local v9    # "availableVersion":Lca/uhn/hl7v2/Version;
    .local v13, "version":Ljava/lang/String;
    :cond_2
    move-object v13, v8

    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/parser/PipeParser;->getFactory()Lca/uhn/hl7v2/parser/ModelClassFactory;

    move-result-object v8

    invoke-static {v13, v8}, Lca/uhn/hl7v2/parser/Parser;->makeControlMSH(Ljava/lang/String;Lca/uhn/hl7v2/parser/ModelClassFactory;)Lca/uhn/hl7v2/model/Segment;

    move-result-object v8

    move-object/from16 v29, v8

    .line 940
    .local v29, "msh":Lca/uhn/hl7v2/model/Segment;
    const/16 v24, 0x1

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v23, v29

    invoke-static/range {v23 .. v28}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 941
    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object/from16 v8, v29

    move-object/from16 v30, v13

    move-object v13, v7

    .line 941
    .end local v13    # "version":Ljava/lang/String;
    .local v30, "version":Ljava/lang/String;
    invoke-static/range {v8 .. v13}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 942
    const/16 v17, 0xa

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object/from16 v16, v29

    invoke-static/range {v16 .. v21}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 943
    const/16 v24, 0xb

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x1

    aget-object v28, v22, v14

    move-object/from16 v23, v29

    invoke-static/range {v23 .. v28}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 944
    const/16 v24, 0xc

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x1

    move-object/from16 v23, v29

    move-object/from16 v28, v30

    invoke-static/range {v23 .. v28}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 945
    return-object v29

    .line 947
    .end local v7    # "encChars":Ljava/lang/String;
    .end local v15    # "compSep":C
    .end local v21    # "messControlID":Ljava/lang/String;
    .end local v22    # "procIDComps":[Ljava/lang/String;
    .end local v29    # "msh":Lca/uhn/hl7v2/model/Segment;
    .end local v30    # "version":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v7, v0

    .line 948
    .local v7, "e":Ljava/lang/Exception;
    new-instance v8, Lca/uhn/hl7v2/HL7Exception;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Can\'t parse critical fields from MSH segment ("

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lca/uhn/hl7v2/ErrorCode;->REQUIRED_FIELD_MISSING:Lca/uhn/hl7v2/ErrorCode;

    invoke-direct {v8, v9, v10, v7}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;Lca/uhn/hl7v2/ErrorCode;Ljava/lang/Throwable;)V

    throw v8
.end method

.method public getDefaultEncoding()Ljava/lang/String;
    .locals 1

    .line 135
    const-string v0, "VB"

    return-object v0
.end method

.method public getEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 128
    invoke-static {p1}, Lca/uhn/hl7v2/parser/EncodingDetector;->isEr7Encoded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/PipeParser;->getDefaultEncoding()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getMessageStructure(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 145
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/parser/PipeParser;->getStructure(Ljava/lang/String;)Lca/uhn/hl7v2/parser/PipeParser$MessageStructure;

    move-result-object v0

    iget-object v0, v0, Lca/uhn/hl7v2/parser/PipeParser$MessageStructure;->messageStructure:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 1071
    const-string v0, "MSH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1072
    .local v0, "startMSH":I
    const-string v1, "\r"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1073
    .local v1, "endMSH":I
    if-gez v1, :cond_0

    .line 1074
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1075
    :cond_0
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1077
    .local v2, "msh":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_6

    .line 1078
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    .line 1079
    .local v3, "fieldSep":Ljava/lang/String;
    nop

    .line 1080
    nop

    .line 1083
    invoke-static {v2, v3}, Lca/uhn/hl7v2/parser/PipeParser;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1086
    .local v4, "fields":[Ljava/lang/String;
    const/4 v5, 0x1

    array-length v6, v4

    const/4 v7, 0x2

    if-lt v6, v7, :cond_5

    aget-object v6, v4, v5

    if-eqz v6, :cond_5

    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_1

    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_5

    .line 1087
    :cond_1
    aget-object v6, v4, v5

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    .line 1088
    .local v6, "compSep":Ljava/lang/String;
    nop

    .line 1089
    nop

    .line 1093
    array-length v8, v4

    const/16 v9, 0xc

    if-lt v8, v9, :cond_3

    .line 1094
    const/16 v8, 0xb

    aget-object v9, v4, v8

    invoke-static {v9, v6}, Lca/uhn/hl7v2/parser/PipeParser;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1095
    .local v9, "comp":[Ljava/lang/String;
    array-length v10, v9

    if-lt v10, v5, :cond_2

    .line 1096
    aget-object v5, v9, v7

    .line 1097
    .local v5, "version":Ljava/lang/String;
    nop

    .line 1103
    .end local v9    # "comp":[Ljava/lang/String;
    nop

    .line 1105
    return-object v5

    .line 1098
    .end local v5    # "version":Ljava/lang/String;
    .restart local v9    # "comp":[Ljava/lang/String;
    :cond_2
    new-instance v5, Lca/uhn/hl7v2/HL7Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "Can\'t find version ID - MSH.12 is "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v8, v4, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lca/uhn/hl7v2/ErrorCode;->REQUIRED_FIELD_MISSING:Lca/uhn/hl7v2/ErrorCode;

    invoke-direct {v5, v7, v8}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;Lca/uhn/hl7v2/ErrorCode;)V

    throw v5

    .line 1100
    .end local v9    # "comp":[Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/PipeParser;->getParserConfiguration()Lca/uhn/hl7v2/parser/ParserConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lca/uhn/hl7v2/parser/ParserConfiguration;->isAllowUnknownVersions()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1101
    invoke-static {}, Lca/uhn/hl7v2/Version;->highestAvailableVersionOrDefault()Lca/uhn/hl7v2/Version;

    move-result-object v5

    invoke-virtual {v5}, Lca/uhn/hl7v2/Version;->getVersion()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1103
    :cond_4
    new-instance v5, Lca/uhn/hl7v2/HL7Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Can\'t find version ID - MSH has only "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " fields."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lca/uhn/hl7v2/ErrorCode;->REQUIRED_FIELD_MISSING:Lca/uhn/hl7v2/ErrorCode;

    invoke-direct {v5, v7, v8}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;Lca/uhn/hl7v2/ErrorCode;)V

    throw v5

    .line 1089
    .end local v6    # "compSep":Ljava/lang/String;
    :cond_5
    new-instance v6, Lca/uhn/hl7v2/HL7Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Invalid or incomplete encoding characters - MSH-2 is "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v4, v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lca/uhn/hl7v2/ErrorCode;->REQUIRED_FIELD_MISSING:Lca/uhn/hl7v2/ErrorCode;

    invoke-direct {v6, v5, v7}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;Lca/uhn/hl7v2/ErrorCode;)V

    throw v6

    .line 1080
    .end local v3    # "fieldSep":Ljava/lang/String;
    .end local v4    # "fields":[Ljava/lang/String;
    :cond_6
    new-instance v3, Lca/uhn/hl7v2/HL7Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Can\'t find field separator in MSH: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lca/uhn/hl7v2/ErrorCode;->UNSUPPORTED_VERSION_ID:Lca/uhn/hl7v2/ErrorCode;

    invoke-direct {v3, v4, v5}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;Lca/uhn/hl7v2/ErrorCode;)V

    throw v3
.end method

.method public isLegacyMode()Z
    .locals 1

    .line 1056
    iget-object v0, p0, Lca/uhn/hl7v2/parser/PipeParser;->myLegacyMode:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1057
    const-string v0, "ca.uhn.hl7v2.parser.PipeParser.default_legacy_mode"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1058
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/parser/PipeParser;->myLegacyMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public parse(Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 1021
    iget-object v0, p0, Lca/uhn/hl7v2/parser/PipeParser;->myLegacyMode:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lca/uhn/hl7v2/parser/PipeParser;->myLegacyMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1024
    new-instance v0, Lca/uhn/hl7v2/parser/OldPipeParser;

    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/PipeParser;->getFactory()Lca/uhn/hl7v2/parser/ModelClassFactory;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/parser/OldPipeParser;-><init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 1026
    .local v0, "oldPipeParser":Lca/uhn/hl7v2/parser/OldPipeParser;
    invoke-virtual {v0, p1}, Lca/uhn/hl7v2/parser/OldPipeParser;->parse(Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    return-object v1

    .line 1028
    .end local v0    # "oldPipeParser":Lca/uhn/hl7v2/parser/OldPipeParser;
    :cond_0
    invoke-super {p0, p1}, Lca/uhn/hl7v2/parser/Parser;->parse(Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lca/uhn/hl7v2/model/Message;Ljava/lang/String;)V
    .locals 13
    .param p1, "message"    # Lca/uhn/hl7v2/model/Message;
    .param p2, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 1110
    instance-of v0, p1, Lca/uhn/hl7v2/model/AbstractSuperMessage;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lca/uhn/hl7v2/model/Message;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1111
    invoke-direct {p0, p2}, Lca/uhn/hl7v2/parser/PipeParser;->getStructure(Ljava/lang/String;)Lca/uhn/hl7v2/parser/PipeParser$MessageStructure;

    move-result-object v0

    iget-object v0, v0, Lca/uhn/hl7v2/parser/PipeParser$MessageStructure;->messageStructure:Ljava/lang/String;

    .line 1112
    .local v0, "structure":Ljava/lang/String;
    move-object v1, p1

    check-cast v1, Lca/uhn/hl7v2/model/AbstractSuperMessage;

    invoke-virtual {v1, v0}, Lca/uhn/hl7v2/model/AbstractSuperMessage;->setName(Ljava/lang/String;)V

    .line 1115
    .end local v0    # "structure":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/parser/PipeParser;->getStructureDefinition(Lca/uhn/hl7v2/model/Message;)Lca/uhn/hl7v2/parser/IStructureDefinition;

    move-result-object v0

    .line 1116
    .local v0, "structureDef":Lca/uhn/hl7v2/parser/IStructureDefinition;
    new-instance v1, Lca/uhn/hl7v2/parser/MessageIterator;

    const-string v2, "MSH"

    const/4 v3, 0x1

    invoke-direct {v1, p1, v0, v2, v3}, Lca/uhn/hl7v2/parser/MessageIterator;-><init>(Lca/uhn/hl7v2/model/Message;Lca/uhn/hl7v2/parser/IStructureDefinition;Ljava/lang/String;Z)V

    .line 1118
    .local v1, "messageIter":Lca/uhn/hl7v2/parser/MessageIterator;
    const-string v2, "\r"

    invoke-static {p2, v2}, Lca/uhn/hl7v2/parser/PipeParser;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1120
    .local v2, "segments":[Ljava/lang/String;
    array-length v3, v2

    if-nez v3, :cond_1

    .line 1121
    new-instance v3, Lca/uhn/hl7v2/HL7Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid message content: \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1124
    :cond_1
    const/4 v3, 0x0

    aget-object v4, v2, v3

    if-eqz v4, :cond_b

    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_2

    goto/16 :goto_4

    .line 1128
    :cond_2
    const/16 v4, 0x7c

    .line 1129
    .local v4, "delim":C
    const/4 v6, 0x0

    .line 1130
    .local v6, "prevName":Ljava/lang/String;
    const/4 v7, 0x1

    .line 1131
    .local v7, "repNum":I
    const/4 v8, 0x0

    .line 1131
    .local v8, "i":I
    :goto_0
    array-length v9, v2

    if-lt v8, v9, :cond_3

    .line 1180
    .end local v8    # "i":I
    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/parser/PipeParser;->applySuperStructureName(Lca/uhn/hl7v2/model/Message;)V

    .line 1181
    return-void

    .line 1134
    .restart local v8    # "i":I
    :cond_3
    aget-object v9, v2, v8

    if-eqz v9, :cond_4

    aget-object v9, v2, v8

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_4

    aget-object v9, v2, v8

    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1135
    aget-object v9, v2, v8

    invoke-static {v9}, Lca/uhn/hl7v2/parser/PipeParser;->stripLeadingWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v8

    .line 1138
    :cond_4
    aget-object v9, v2, v8

    if-eqz v9, :cond_a

    aget-object v9, v2, v8

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x3

    if-lt v9, v10, :cond_a

    .line 1141
    if-nez v8, :cond_6

    .line 1142
    aget-object v9, v2, v8

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v5, :cond_5

    .line 1143
    new-instance v3, Lca/uhn/hl7v2/HL7Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "Invalid message content: \""

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\""

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1145
    :cond_5
    aget-object v9, v2, v8

    invoke-virtual {v9, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1146
    .local v9, "name":Ljava/lang/String;
    aget-object v11, v2, v8

    invoke-virtual {v11, v10}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1147
    goto :goto_1

    .line 1148
    .end local v9    # "name":Ljava/lang/String;
    :cond_6
    aget-object v9, v2, v8

    invoke-virtual {v9, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ltz v9, :cond_7

    .line 1149
    aget-object v9, v2, v8

    aget-object v10, v2, v8

    invoke-virtual {v10, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    invoke-virtual {v9, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1150
    .restart local v9    # "name":Ljava/lang/String;
    goto :goto_1

    .line 1151
    .end local v9    # "name":Ljava/lang/String;
    :cond_7
    aget-object v9, v2, v8

    .line 1155
    .restart local v9    # "name":Ljava/lang/String;
    :goto_1
    sget-object v10, Lca/uhn/hl7v2/parser/PipeParser;->log:Lorg/slf4j/Logger;

    const-string v11, "Parsing segment {}"

    invoke-interface {v10, v11, v9}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1157
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1158
    add-int/lit8 v7, v7, 0x1

    .line 1159
    goto :goto_2

    .line 1160
    :cond_8
    const/4 v7, 0x1

    .line 1161
    move-object v6, v9

    .line 1164
    :goto_2
    invoke-virtual {v1, v9}, Lca/uhn/hl7v2/parser/MessageIterator;->setDirection(Ljava/lang/String;)V

    .line 1167
    :try_start_0
    invoke-virtual {v1}, Lca/uhn/hl7v2/parser/MessageIterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1168
    invoke-virtual {v1}, Lca/uhn/hl7v2/parser/MessageIterator;->next()Lca/uhn/hl7v2/model/Structure;

    move-result-object v10

    check-cast v10, Lca/uhn/hl7v2/model/Segment;

    .line 1169
    .local v10, "next":Lca/uhn/hl7v2/model/Segment;
    aget-object v11, v2, v8

    invoke-static {p2}, Lca/uhn/hl7v2/parser/PipeParser;->getEncodingChars(Ljava/lang/String;)Lca/uhn/hl7v2/parser/EncodingCharacters;

    move-result-object v12

    invoke-virtual {p0, v10, v11, v12, v7}, Lca/uhn/hl7v2/parser/PipeParser;->parse(Lca/uhn/hl7v2/model/Segment;Ljava/lang/String;Lca/uhn/hl7v2/parser/EncodingCharacters;I)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 1171
    .end local v10    # "next":Lca/uhn/hl7v2/model/Segment;
    goto :goto_3

    :catch_0
    move-exception v3

    .line 1172
    .local v3, "e":Ljava/lang/Error;
    invoke-virtual {v3}, Ljava/lang/Error;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    instance-of v5, v5, Lca/uhn/hl7v2/HL7Exception;

    if-eqz v5, :cond_9

    .line 1173
    invoke-virtual {v3}, Ljava/lang/Error;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    check-cast v5, Lca/uhn/hl7v2/HL7Exception;

    throw v5

    .line 1175
    :cond_9
    throw v3

    .line 1131
    .end local v3    # "e":Ljava/lang/Error;
    .end local v9    # "name":Ljava/lang/String;
    :cond_a
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 1125
    .end local v4    # "delim":C
    .end local v6    # "prevName":Ljava/lang/String;
    .end local v7    # "repNum":I
    .end local v8    # "i":I
    :cond_b
    :goto_4
    new-instance v3, Lca/uhn/hl7v2/HL7Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid message content: \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public parse(Lca/uhn/hl7v2/model/Segment;Ljava/lang/String;Lca/uhn/hl7v2/parser/EncodingCharacters;)V
    .locals 1
    .param p1, "destination"    # Lca/uhn/hl7v2/model/Segment;
    .param p2, "segment"    # Ljava/lang/String;
    .param p3, "encodingChars"    # Lca/uhn/hl7v2/parser/EncodingCharacters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 343
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lca/uhn/hl7v2/parser/PipeParser;->parse(Lca/uhn/hl7v2/model/Segment;Ljava/lang/String;Lca/uhn/hl7v2/parser/EncodingCharacters;I)V

    .line 344
    return-void
.end method

.method public parse(Lca/uhn/hl7v2/model/Segment;Ljava/lang/String;Lca/uhn/hl7v2/parser/EncodingCharacters;I)V
    .locals 11
    .param p1, "destination"    # Lca/uhn/hl7v2/model/Segment;
    .param p2, "segment"    # Ljava/lang/String;
    .param p3, "encodingChars"    # Lca/uhn/hl7v2/parser/EncodingCharacters;
    .param p4, "theRepetition"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 359
    const/4 v0, 0x0

    .line 360
    .local v0, "fieldOffset":I
    invoke-interface {p1}, Lca/uhn/hl7v2/model/Segment;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lca/uhn/hl7v2/parser/PipeParser;->isDelimDefSegment(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    const/4 v0, 0x1

    .line 363
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

    .line 366
    :cond_0
    invoke-virtual {p3}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getFieldSeparator()C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lca/uhn/hl7v2/parser/PipeParser;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, "fields":[Ljava/lang/String;
    const/4 v2, 0x1

    .line 368
    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-lt v2, v3, :cond_2

    .line 404
    .end local v2    # "i":I
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MFE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 405
    invoke-interface {p1}, Lca/uhn/hl7v2/model/Segment;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    invoke-interface {v2}, Lca/uhn/hl7v2/model/Message;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lca/uhn/hl7v2/Version;->versionOf(Ljava/lang/String;)Lca/uhn/hl7v2/Version;

    move-result-object v2

    sget-object v3, Lca/uhn/hl7v2/Version;->V23:Lca/uhn/hl7v2/Version;

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/Version;->isGreaterThan(Lca/uhn/hl7v2/Version;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 406
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/PipeParser;->getFactory()Lca/uhn/hl7v2/parser/ModelClassFactory;

    move-result-object v2

    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/PipeParser;->getHapiContext()Lca/uhn/hl7v2/HapiContext;

    move-result-object v3

    invoke-interface {v3}, Lca/uhn/hl7v2/HapiContext;->getParserConfiguration()Lca/uhn/hl7v2/parser/ParserConfiguration;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lca/uhn/hl7v2/parser/FixFieldDataType;->fixMFE3(Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/parser/ModelClassFactory;Lca/uhn/hl7v2/parser/ParserConfiguration;)V

    .line 409
    :cond_1
    return-void

    .line 369
    .restart local v2    # "i":I
    :cond_2
    aget-object v3, v1, v2

    invoke-virtual {p3}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getRepetitionSeparator()C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lca/uhn/hl7v2/parser/PipeParser;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 372
    .local v3, "reps":[Ljava/lang/String;
    invoke-interface {p1}, Lca/uhn/hl7v2/model/Segment;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lca/uhn/hl7v2/parser/PipeParser;->isDelimDefSegment(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    add-int v4, v2, v0

    const/4 v7, 0x2

    if-ne v4, v7, :cond_3

    move v4, v6

    goto :goto_1

    :cond_3
    move v4, v5

    .line 373
    .local v4, "isMSH2":Z
    :goto_1
    if-eqz v4, :cond_4

    .line 374
    new-array v3, v6, [Ljava/lang/String;

    .line 375
    aget-object v7, v1, v2

    aput-object v7, v3, v5

    .line 378
    :cond_4
    const/4 v5, 0x0

    .line 378
    .local v5, "j":I
    :goto_2
    array-length v7, v3

    if-lt v5, v7, :cond_5

    .line 368
    .end local v3    # "reps":[Ljava/lang/String;
    .end local v4    # "isMSH2":Z
    .end local v5    # "j":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 380
    .restart local v3    # "reps":[Ljava/lang/String;
    .restart local v4    # "isMSH2":Z
    .restart local v5    # "j":I
    :cond_5
    :try_start_0
    sget-object v7, Lca/uhn/hl7v2/parser/PipeParser;->log:Lorg/slf4j/Logger;

    const-string v8, "Parsing field {} repetition {}"

    add-int v9, v2, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v8, v9, v10}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 381
    add-int v7, v2, v0

    invoke-interface {p1, v7, v5}, Lca/uhn/hl7v2/model/Segment;->getField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v7

    .line 382
    .local v7, "field":Lca/uhn/hl7v2/model/Type;
    if-eqz v4, :cond_6

    .line 383
    invoke-static {v7, v6, v6}, Lca/uhn/hl7v2/util/Terser;->getPrimitive(Lca/uhn/hl7v2/model/Type;II)Lca/uhn/hl7v2/model/Primitive;

    move-result-object v8

    aget-object v9, v3, v5

    invoke-interface {v8, v9}, Lca/uhn/hl7v2/model/Primitive;->setValue(Ljava/lang/String;)V

    .line 384
    goto :goto_3

    .line 385
    :cond_6
    aget-object v8, v3, v5

    invoke-virtual {p0, v7, v8, p3}, Lca/uhn/hl7v2/parser/PipeParser;->parse(Lca/uhn/hl7v2/model/Type;Ljava/lang/String;Lca/uhn/hl7v2/parser/EncodingCharacters;)V
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    .end local v7    # "field":Lca/uhn/hl7v2/model/Type;
    nop

    .line 378
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 387
    :catch_0
    move-exception v7

    .line 389
    .local v7, "e":Lca/uhn/hl7v2/HL7Exception;
    invoke-virtual {v7, v2}, Lca/uhn/hl7v2/HL7Exception;->setFieldPosition(I)V

    .line 390
    if-le p4, v6, :cond_7

    .line 391
    invoke-virtual {v7, p4}, Lca/uhn/hl7v2/HL7Exception;->setSegmentRepetition(I)V

    .line 393
    :cond_7
    invoke-interface {p1}, Lca/uhn/hl7v2/model/Segment;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lca/uhn/hl7v2/HL7Exception;->setSegmentName(Ljava/lang/String;)V

    .line 394
    throw v7
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

    .line 438
    invoke-virtual {p3}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getComponentSeparator()C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lca/uhn/hl7v2/parser/PipeParser;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, "components":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 439
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 449
    .end local v1    # "i":I
    return-void

    .line 440
    .restart local v1    # "i":I
    :cond_0
    aget-object v2, v0, v1

    invoke-virtual {p3}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getSubcomponentSeparator()C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lca/uhn/hl7v2/parser/PipeParser;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 441
    .local v2, "subcomponents":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 441
    .local v3, "j":I
    :goto_1
    array-length v4, v2

    if-lt v3, v4, :cond_1

    .line 439
    .end local v2    # "subcomponents":[Ljava/lang/String;
    .end local v3    # "j":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 442
    .restart local v2    # "subcomponents":[Ljava/lang/String;
    .restart local v3    # "j":I
    :cond_1
    aget-object v4, v2, v3

    .line 443
    .local v4, "val":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 444
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/PipeParser;->getParserConfiguration()Lca/uhn/hl7v2/parser/ParserConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lca/uhn/hl7v2/parser/ParserConfiguration;->getEscaping()Lca/uhn/hl7v2/parser/Escaping;

    move-result-object v5

    invoke-interface {v5, v4, p3}, Lca/uhn/hl7v2/parser/Escaping;->unescape(Ljava/lang/String;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;

    move-result-object v4

    .line 446
    :cond_2
    add-int/lit8 v5, v1, 0x1

    add-int/lit8 v6, v3, 0x1

    invoke-static {p1, v5, v6}, Lca/uhn/hl7v2/util/Terser;->getPrimitive(Lca/uhn/hl7v2/model/Type;II)Lca/uhn/hl7v2/model/Primitive;

    move-result-object v5

    invoke-interface {v5, v4}, Lca/uhn/hl7v2/model/Primitive;->setValue(Ljava/lang/String;)V

    .line 441
    .end local v4    # "val":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public setLegacyMode(Z)V
    .locals 1
    .param p1, "legacyMode"    # Z

    .line 998
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/parser/PipeParser;->myLegacyMode:Ljava/lang/Boolean;

    .line 999
    return-void
.end method

.method public setValidationContext(Lca/uhn/hl7v2/validation/ValidationContext;)V
    .locals 0
    .param p1, "context"    # Lca/uhn/hl7v2/validation/ValidationContext;

    .line 115
    invoke-super {p0, p1}, Lca/uhn/hl7v2/parser/Parser;->setValidationContext(Lca/uhn/hl7v2/validation/ValidationContext;)V

    .line 116
    return-void
.end method
