.class public abstract Lca/uhn/hl7v2/model/AbstractGroup;
.super Lca/uhn/hl7v2/model/AbstractStructure;
.source "AbstractGroup.java"

# interfaces
.implements Lca/uhn/hl7v2/model/Group;


# static fields
.field private static final PS_INDENT:I = 0x3

.field private static final serialVersionUID:J = 0x1899f7abffb0786bL


# instance fields
.field private choiceElements:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private classes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lca/uhn/hl7v2/model/Structure;",
            ">;>;"
        }
    .end annotation
.end field

.field private final myFactory:Lca/uhn/hl7v2/parser/ModelClassFactory;

.field private names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nonStandardNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private repeating:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private required:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private structures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/model/Structure;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 71
    invoke-static {}, Lca/uhn/hl7v2/VersionLogger;->init()V

    .line 72
    return-void
.end method

.method protected constructor <init>(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 0
    .param p1, "parent"    # Lca/uhn/hl7v2/model/Group;
    .param p2, "factory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 81
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/AbstractStructure;-><init>(Lca/uhn/hl7v2/model/Group;)V

    .line 82
    iput-object p2, p0, Lca/uhn/hl7v2/model/AbstractGroup;->myFactory:Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 83
    invoke-direct {p0}, Lca/uhn/hl7v2/model/AbstractGroup;->init()V

    .line 84
    return-void
.end method

.method private getGroupName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 597
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractGroup;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 598
    .local v0, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const-class v1, Lca/uhn/hl7v2/model/Message;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 608
    return-object p1

    .line 602
    :cond_0
    invoke-direct {p0, v0}, Lca/uhn/hl7v2/model/AbstractGroup;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 603
    .local v1, "messageName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 604
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 606
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 606
    .end local v1    # "messageName":Ljava/lang/String;
    goto :goto_0
.end method

.method private getName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lca/uhn/hl7v2/model/Structure;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 581
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Structure;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, "name":Ljava/lang/String;
    const-class v1, Lca/uhn/hl7v2/model/Group;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Lca/uhn/hl7v2/model/Message;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 583
    invoke-direct {p0, v0}, Lca/uhn/hl7v2/model/AbstractGroup;->getGroupName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 585
    :cond_0
    return-object v0
.end method

.method private indent(Ljava/lang/StringBuilder;I)V
    .locals 2
    .param p1, "theStringBuilder"    # Ljava/lang/StringBuilder;
    .param p2, "theIndent"    # I

    .line 872
    const/4 v0, 0x0

    .line 872
    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 875
    .end local v0    # "i":I
    return-void

    .line 873
    .restart local v0    # "i":I
    :cond_0
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 872
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private init()V
    .locals 1

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/model/AbstractGroup;->names:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/model/AbstractGroup;->structures:Ljava/util/Map;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/model/AbstractGroup;->required:Ljava/util/Map;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/model/AbstractGroup;->repeating:Ljava/util/Map;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/model/AbstractGroup;->classes:Ljava/util/Map;

    .line 92
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/model/AbstractGroup;->choiceElements:Ljava/util/Set;

    .line 93
    return-void
.end method

.method private nameExists(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 340
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractGroup;->classes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
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

    .line 686
    invoke-interface {p1, p0, p2}, Lca/uhn/hl7v2/model/MessageVisitor;->start(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    invoke-virtual {p0, p1, p2}, Lca/uhn/hl7v2/model/AbstractGroup;->visitNestedStructures(Lca/uhn/hl7v2/model/MessageVisitor;Lca/uhn/hl7v2/Location;)V

    .line 689
    :cond_0
    invoke-interface {p1, p0, p2}, Lca/uhn/hl7v2/model/MessageVisitor;->end(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/Location;)Z

    move-result v0

    return v0
.end method

.method protected add(Ljava/lang/Class;ZZ)Ljava/lang/String;
    .locals 1
    .param p2, "required"    # Z
    .param p3, "repeating"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lca/uhn/hl7v2/model/Structure;",
            ">;ZZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 298
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Structure;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lca/uhn/hl7v2/model/AbstractGroup;->add(Ljava/lang/Class;ZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected add(Ljava/lang/Class;ZZI)Ljava/lang/String;
    .locals 7
    .param p2, "required"    # Z
    .param p3, "repeating"    # Z
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lca/uhn/hl7v2/model/Structure;",
            ">;ZZI)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 332
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Structure;>;"
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/AbstractGroup;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    .line 333
    .local v6, "name":Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lca/uhn/hl7v2/model/AbstractGroup;->insert(Ljava/lang/Class;ZZILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected add(Ljava/lang/Class;ZZZ)Ljava/lang/String;
    .locals 8
    .param p2, "required"    # Z
    .param p3, "repeating"    # Z
    .param p4, "choiceElement"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lca/uhn/hl7v2/model/Structure;",
            ">;ZZZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 314
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Structure;>;"
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/AbstractGroup;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    .line 315
    .local v7, "name":Ljava/lang/String;
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractGroup;->names:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Lca/uhn/hl7v2/model/AbstractGroup;->insert(Ljava/lang/Class;ZZZILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public addNonstandardSegment(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 215
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractGroup;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Message;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "version":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 217
    new-instance v1, Lca/uhn/hl7v2/HL7Exception;

    const-string v2, "Need message version to add segment by name; message.getVersion() returns null"

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 218
    :cond_0
    iget-object v1, p0, Lca/uhn/hl7v2/model/AbstractGroup;->myFactory:Lca/uhn/hl7v2/parser/ModelClassFactory;

    invoke-interface {v1, p1, v0}, Lca/uhn/hl7v2/parser/ModelClassFactory;->getSegmentClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 219
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Segment;>;"
    if-nez v1, :cond_1

    .line 220
    const-class v1, Lca/uhn/hl7v2/model/GenericSegment;

    .line 222
    :cond_1
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractGroup;->getNames()[Ljava/lang/String;

    move-result-object v2

    array-length v8, v2

    .line 224
    .local v8, "index":I
    invoke-virtual {p0, v1, p1}, Lca/uhn/hl7v2/model/AbstractGroup;->tryToInstantiateStructure(Ljava/lang/Class;Ljava/lang/String;)Lca/uhn/hl7v2/model/Structure;

    .line 226
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, p0

    move-object v3, v1

    move v6, v8

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Lca/uhn/hl7v2/model/AbstractGroup;->insert(Ljava/lang/Class;ZZILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, "newName":Ljava/lang/String;
    iget-object v3, p0, Lca/uhn/hl7v2/model/AbstractGroup;->nonStandardNames:Ljava/util/Set;

    if-nez v3, :cond_2

    .line 228
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lca/uhn/hl7v2/model/AbstractGroup;->nonStandardNames:Ljava/util/Set;

    .line 230
    :cond_2
    iget-object v3, p0, Lca/uhn/hl7v2/model/AbstractGroup;->nonStandardNames:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 232
    return-object v2
.end method

.method public addNonstandardSegment(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .param p1, "theName"    # Ljava/lang/String;
    .param p2, "theIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 236
    instance-of v0, p0, Lca/uhn/hl7v2/model/Message;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 237
    new-instance v0, Lca/uhn/hl7v2/HL7Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not add nonstandard segment \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" to start of message."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_0
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractGroup;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Message;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "version":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 242
    new-instance v1, Lca/uhn/hl7v2/HL7Exception;

    const-string v2, "Need message version to add segment by name; message.getVersion() returns null"

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 243
    :cond_1
    iget-object v1, p0, Lca/uhn/hl7v2/model/AbstractGroup;->myFactory:Lca/uhn/hl7v2/parser/ModelClassFactory;

    invoke-interface {v1, p1, v0}, Lca/uhn/hl7v2/parser/ModelClassFactory;->getSegmentClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 245
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Segment;>;"
    if-nez v1, :cond_2

    .line 246
    const-class v1, Lca/uhn/hl7v2/model/GenericSegment;

    .line 249
    :cond_2
    invoke-virtual {p0, v1, p1}, Lca/uhn/hl7v2/model/AbstractGroup;->tryToInstantiateStructure(Ljava/lang/Class;Ljava/lang/String;)Lca/uhn/hl7v2/model/Structure;

    .line 251
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, p0

    move-object v3, v1

    move v6, p2

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Lca/uhn/hl7v2/model/AbstractGroup;->insert(Ljava/lang/Class;ZZILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, "newName":Ljava/lang/String;
    iget-object v3, p0, Lca/uhn/hl7v2/model/AbstractGroup;->nonStandardNames:Ljava/util/Set;

    if-nez v3, :cond_3

    .line 253
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lca/uhn/hl7v2/model/AbstractGroup;->nonStandardNames:Ljava/util/Set;

    .line 255
    :cond_3
    iget-object v3, p0, Lca/uhn/hl7v2/model/AbstractGroup;->nonStandardNames:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 257
    return-object v2
.end method

.method appendStructureDescription(Ljava/lang/StringBuilder;IZZZZZ)V
    .locals 25
    .param p1, "theStringBuilder"    # Ljava/lang/StringBuilder;
    .param p2, "theIndent"    # I
    .param p3, "theOptional"    # Z
    .param p4, "theRepeating"    # Z
    .param p5, "theAddStartName"    # Z
    .param p6, "theAddEndName"    # Z
    .param p7, "thePrintEmpty"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    .line 720
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 722
    .local v11, "lineSeparator":Ljava/lang/String;
    if-eqz p5, :cond_0

    .line 723
    invoke-direct/range {p0 .. p2}, Lca/uhn/hl7v2/model/AbstractGroup;->indent(Ljava/lang/StringBuilder;I)V

    .line 724
    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/AbstractGroup;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (start)"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    :cond_0
    if-nez p3, :cond_1

    if-eqz p4, :cond_4

    .line 728
    :cond_1
    invoke-direct/range {p0 .. p2}, Lca/uhn/hl7v2/model/AbstractGroup;->indent(Ljava/lang/StringBuilder;I)V

    .line 729
    if-eqz p3, :cond_2

    .line 730
    const-string v1, "["

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    :cond_2
    if-eqz p4, :cond_3

    .line 733
    const-string v1, "{"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    :cond_3
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    :cond_4
    const/4 v1, 0x0

    .line 740
    .local v1, "inChoice":Z
    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/AbstractGroup;->getNames()[Ljava/lang/String;

    move-result-object v12

    array-length v8, v12

    move/from16 v2, p2

    const/4 v7, 0x0

    .line 740
    .end local p2    # "theIndent":I
    .local v2, "theIndent":I
    :goto_0
    if-lt v7, v8, :cond_b

    .line 847
    if-eqz v1, :cond_5

    .line 848
    invoke-direct {v0, v9, v2}, Lca/uhn/hl7v2/model/AbstractGroup;->indent(Ljava/lang/StringBuilder;I)V

    .line 849
    const-string v3, ">"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    add-int/lit8 v2, v2, -0x3

    .line 854
    :cond_5
    if-nez p3, :cond_6

    if-eqz p4, :cond_9

    .line 855
    :cond_6
    invoke-direct {v0, v9, v2}, Lca/uhn/hl7v2/model/AbstractGroup;->indent(Ljava/lang/StringBuilder;I)V

    .line 856
    if-eqz p4, :cond_7

    .line 857
    const-string v3, "}"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    :cond_7
    if-eqz p3, :cond_8

    .line 860
    const-string v3, "]"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    :cond_8
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    :cond_9
    if-eqz p6, :cond_a

    .line 866
    invoke-direct {v0, v9, v2}, Lca/uhn/hl7v2/model/AbstractGroup;->indent(Ljava/lang/StringBuilder;I)V

    .line 867
    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/AbstractGroup;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (end)"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    :cond_a
    return-void

    .line 740
    :cond_b
    aget-object v6, v12, v7

    .line 742
    .local v6, "nextName":Ljava/lang/String;
    if-nez p7, :cond_e

    .line 743
    const/4 v3, 0x0

    .line 744
    .local v3, "hasContent":Z
    invoke-virtual {v0, v6}, Lca/uhn/hl7v2/model/AbstractGroup;->getAll(Ljava/lang/String;)[Lca/uhn/hl7v2/model/Structure;

    move-result-object v4

    .line 745
    .local v4, "allReps":[Lca/uhn/hl7v2/model/Structure;
    array-length v5, v4

    const/4 v13, 0x0

    :goto_1
    if-lt v13, v5, :cond_c

    goto :goto_2

    :cond_c
    move v14, v3

    aget-object v3, v4, v13

    .line 746
    .local v3, "structure":Lca/uhn/hl7v2/model/Structure;
    .local v14, "hasContent":Z
    invoke-interface {v3}, Lca/uhn/hl7v2/model/Structure;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_d

    .line 747
    const/4 v5, 0x1

    .line 748
    .end local v14    # "hasContent":Z
    .local v5, "hasContent":Z
    nop

    .line 752
    move v3, v5

    .line 752
    .end local v5    # "hasContent":Z
    .local v3, "hasContent":Z
    :goto_2
    if-nez v3, :cond_e

    .line 753
    nop

    .line 740
    move/from16 v20, v7

    move/from16 v21, v8

    goto/16 :goto_b

    .line 745
    .end local v3    # "hasContent":Z
    .restart local v14    # "hasContent":Z
    :cond_d
    add-int/lit8 v13, v13, 0x1

    move v3, v14

    goto :goto_1

    .line 757
    .end local v4    # "allReps":[Lca/uhn/hl7v2/model/Structure;
    .end local v14    # "hasContent":Z
    :cond_e
    iget-object v3, v0, Lca/uhn/hl7v2/model/AbstractGroup;->classes:Ljava/util/Map;

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Ljava/lang/Class;

    .line 759
    .local v13, "nextClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Structure;>;"
    invoke-virtual {v0, v6}, Lca/uhn/hl7v2/model/AbstractGroup;->isRequired(Ljava/lang/String;)Z

    move-result v3

    const/4 v14, 0x1

    xor-int/2addr v3, v14

    move v15, v3

    .line 760
    .local v15, "nextOptional":Z
    invoke-virtual {v0, v6}, Lca/uhn/hl7v2/model/AbstractGroup;->isRepeating(Ljava/lang/String;)Z

    move-result v16

    .line 761
    .local v16, "nextRepeating":Z
    invoke-virtual {v0, v6}, Lca/uhn/hl7v2/model/AbstractGroup;->isChoiceElement(Ljava/lang/String;)Z

    move-result v17

    .line 763
    .local v17, "nextChoice":Z
    if-eqz v17, :cond_10

    if-nez v1, :cond_10

    .line 764
    add-int/lit8 v2, v2, 0x3

    .line 765
    invoke-direct {v0, v9, v2}, Lca/uhn/hl7v2/model/AbstractGroup;->indent(Ljava/lang/StringBuilder;I)V

    .line 766
    const-string v3, "<"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    const/4 v1, 0x1

    .line 769
    nop

    .line 781
    .end local v1    # "inChoice":Z
    .end local v2    # "theIndent":I
    .local v18, "theIndent":I
    .local v19, "inChoice":Z
    :cond_f
    :goto_3
    move/from16 v19, v1

    move/from16 v18, v2

    goto :goto_4

    .line 769
    .end local v18    # "theIndent":I
    .end local v19    # "inChoice":Z
    .restart local v1    # "inChoice":Z
    .restart local v2    # "theIndent":I
    :cond_10
    if-nez v17, :cond_11

    if-eqz v1, :cond_11

    .line 770
    invoke-direct {v0, v9, v2}, Lca/uhn/hl7v2/model/AbstractGroup;->indent(Ljava/lang/StringBuilder;I)V

    .line 771
    const-string v3, ">"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    const/4 v1, 0x0

    .line 774
    add-int/lit8 v2, v2, -0x3

    .line 775
    goto :goto_3

    :cond_11
    if-eqz v17, :cond_f

    if-eqz v1, :cond_f

    .line 776
    invoke-direct {v0, v9, v2}, Lca/uhn/hl7v2/model/AbstractGroup;->indent(Ljava/lang/StringBuilder;I)V

    .line 777
    const-string v3, "|"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 781
    .end local v1    # "inChoice":Z
    .end local v2    # "theIndent":I
    .restart local v18    # "theIndent":I
    .restart local v19    # "inChoice":Z
    :goto_4
    const-class v1, Lca/uhn/hl7v2/model/AbstractGroup;

    invoke-virtual {v1, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 783
    invoke-virtual {v0, v6}, Lca/uhn/hl7v2/model/AbstractGroup;->getAll(Ljava/lang/String;)[Lca/uhn/hl7v2/model/Structure;

    move-result-object v5

    .line 784
    .local v5, "nextChildren":[Lca/uhn/hl7v2/model/Structure;
    const/4 v1, 0x0

    .line 784
    .local v1, "i":I
    move v4, v1

    .line 784
    .end local v1    # "i":I
    .local v4, "i":I
    :goto_5
    array-length v1, v5

    if-lt v4, v1, :cond_13

    .line 794
    .end local v4    # "i":I
    array-length v1, v5

    if-nez v1, :cond_12

    .line 795
    invoke-virtual {v0, v13, v6}, Lca/uhn/hl7v2/model/AbstractGroup;->tryToInstantiateStructure(Ljava/lang/Class;Ljava/lang/String;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v14

    .line 796
    .local v14, "structure":Lca/uhn/hl7v2/model/Structure;
    move-object v1, v14

    check-cast v1, Lca/uhn/hl7v2/model/AbstractGroup;

    add-int/lit8 v3, v18, 0x3

    .line 797
    const/16 v20, 0x1

    const/16 v21, 0x1

    .line 796
    move-object v2, v9

    move v4, v15

    move-object/from16 v22, v5

    move/from16 v5, v16

    .line 796
    .end local v5    # "nextChildren":[Lca/uhn/hl7v2/model/Structure;
    .local v22, "nextChildren":[Lca/uhn/hl7v2/model/Structure;
    move-object v10, v6

    move/from16 v6, v20

    .line 796
    .end local v6    # "nextName":Ljava/lang/String;
    .local v10, "nextName":Ljava/lang/String;
    move/from16 v20, v7

    move/from16 v7, v21

    move/from16 v21, v8

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lca/uhn/hl7v2/model/AbstractGroup;->appendStructureDescription(Ljava/lang/StringBuilder;IZZZZZ)V

    .line 800
    .end local v14    # "structure":Lca/uhn/hl7v2/model/Structure;
    .end local v22    # "nextChildren":[Lca/uhn/hl7v2/model/Structure;
    goto/16 :goto_a

    .line 740
    .end local v10    # "nextName":Ljava/lang/String;
    .end local v13    # "nextClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Structure;>;"
    .end local v15    # "nextOptional":Z
    .end local v16    # "nextRepeating":Z
    .end local v17    # "nextChoice":Z
    :cond_12
    move/from16 v20, v7

    move/from16 v21, v8

    goto/16 :goto_a

    .line 786
    .restart local v4    # "i":I
    .restart local v5    # "nextChildren":[Lca/uhn/hl7v2/model/Structure;
    .restart local v6    # "nextName":Ljava/lang/String;
    .restart local v13    # "nextClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Structure;>;"
    .restart local v15    # "nextOptional":Z
    .restart local v16    # "nextRepeating":Z
    .restart local v17    # "nextChoice":Z
    :cond_13
    move-object/from16 v22, v5

    move-object v10, v6

    move/from16 v20, v7

    move/from16 v21, v8

    .line 786
    .end local v5    # "nextChildren":[Lca/uhn/hl7v2/model/Structure;
    .end local v6    # "nextName":Ljava/lang/String;
    .restart local v10    # "nextName":Ljava/lang/String;
    .restart local v22    # "nextChildren":[Lca/uhn/hl7v2/model/Structure;
    move-object/from16 v8, v22

    aget-object v22, v8, v4

    .line 787
    .local v8, "nextChildren":[Lca/uhn/hl7v2/model/Structure;
    .local v22, "structure":Lca/uhn/hl7v2/model/Structure;
    if-nez v4, :cond_14

    move v6, v14

    goto :goto_6

    :cond_14
    const/4 v6, 0x0

    .line 788
    .local v6, "addStartName":Z
    :goto_6
    array-length v1, v8

    sub-int/2addr v1, v14

    if-ne v4, v1, :cond_15

    move v7, v14

    goto :goto_7

    :cond_15
    const/4 v7, 0x0

    .line 789
    .local v7, "addEndName":Z
    :goto_7
    move-object/from16 v1, v22

    check-cast v1, Lca/uhn/hl7v2/model/AbstractGroup;

    add-int/lit8 v3, v18, 0x3

    .line 790
    nop

    .line 789
    move-object v2, v9

    move/from16 v23, v4

    move v4, v15

    .line 789
    .end local v4    # "i":I
    .local v23, "i":I
    move/from16 v5, v16

    move-object/from16 v24, v8

    move/from16 v8, p7

    .line 789
    .end local v8    # "nextChildren":[Lca/uhn/hl7v2/model/Structure;
    .local v24, "nextChildren":[Lca/uhn/hl7v2/model/Structure;
    invoke-virtual/range {v1 .. v8}, Lca/uhn/hl7v2/model/AbstractGroup;->appendStructureDescription(Ljava/lang/StringBuilder;IZZZZZ)V

    .line 784
    .end local v6    # "addStartName":Z
    .end local v7    # "addEndName":Z
    .end local v22    # "structure":Lca/uhn/hl7v2/model/Structure;
    add-int/lit8 v4, v23, 0x1

    .line 784
    .end local v23    # "i":I
    .restart local v4    # "i":I
    move-object v6, v10

    move/from16 v7, v20

    move/from16 v8, v21

    move-object/from16 v5, v24

    goto :goto_5

    .line 800
    .end local v4    # "i":I
    .end local v10    # "nextName":Ljava/lang/String;
    .end local v24    # "nextChildren":[Lca/uhn/hl7v2/model/Structure;
    .local v6, "nextName":Ljava/lang/String;
    :cond_16
    move-object v10, v6

    move/from16 v20, v7

    move/from16 v21, v8

    .line 800
    .end local v6    # "nextName":Ljava/lang/String;
    .restart local v10    # "nextName":Ljava/lang/String;
    const-class v1, Lca/uhn/hl7v2/model/Segment;

    invoke-virtual {v1, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 802
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 804
    .local v1, "currentIndent":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 805
    .local v2, "structurePrefix":Ljava/lang/StringBuilder;
    add-int/lit8 v3, v18, 0x3

    invoke-direct {v0, v2, v3}, Lca/uhn/hl7v2/model/AbstractGroup;->indent(Ljava/lang/StringBuilder;I)V

    .line 806
    if-eqz v15, :cond_17

    .line 807
    const-string v3, "[ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    :cond_17
    if-eqz v16, :cond_18

    .line 810
    const-string v3, "{ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    :cond_18
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    if-eqz v16, :cond_19

    .line 814
    const-string v3, " }"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    :cond_19
    if-eqz v15, :cond_1a

    .line 817
    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    :cond_1a
    iget-object v3, v0, Lca/uhn/hl7v2/model/AbstractGroup;->nonStandardNames:Ljava/util/Set;

    if-eqz v3, :cond_1b

    iget-object v3, v0, Lca/uhn/hl7v2/model/AbstractGroup;->nonStandardNames:Ljava/util/Set;

    invoke-interface {v3, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 821
    const-string v3, " (non-standard)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    :cond_1b
    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v1

    .line 826
    .end local v1    # "currentIndent":I
    .local v3, "currentIndent":I
    iget-object v1, v0, Lca/uhn/hl7v2/model/AbstractGroup;->structures:Ljava/util/Map;

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 827
    .local v1, "nextStructureList":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/model/Structure;>;"
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 828
    if-eqz v1, :cond_1f

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_9

    .line 832
    :cond_1c
    const/4 v4, 0x0

    .line 832
    .restart local v4    # "i":I
    :goto_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_1d

    .line 832
    .end local v1    # "nextStructureList":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/model/Structure;>;"
    .end local v2    # "structurePrefix":Ljava/lang/StringBuilder;
    .end local v3    # "currentIndent":I
    .end local v4    # "i":I
    .end local v10    # "nextName":Ljava/lang/String;
    .end local v13    # "nextClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Structure;>;"
    .end local v15    # "nextOptional":Z
    .end local v16    # "nextRepeating":Z
    .end local v17    # "nextChoice":Z
    goto :goto_a

    .line 833
    .restart local v1    # "nextStructureList":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/model/Structure;>;"
    .restart local v2    # "structurePrefix":Ljava/lang/StringBuilder;
    .restart local v3    # "currentIndent":I
    .restart local v4    # "i":I
    .restart local v10    # "nextName":Ljava/lang/String;
    .restart local v13    # "nextClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Structure;>;"
    .restart local v15    # "nextOptional":Z
    .restart local v16    # "nextRepeating":Z
    .restart local v17    # "nextChoice":Z
    :cond_1d
    if-lez v4, :cond_1e

    .line 834
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/2addr v5, v3

    invoke-direct {v0, v9, v5}, Lca/uhn/hl7v2/model/AbstractGroup;->indent(Ljava/lang/StringBuilder;I)V

    .line 836
    :cond_1e
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lca/uhn/hl7v2/model/Segment;

    .line 837
    .local v5, "nextSegment":Lca/uhn/hl7v2/model/Segment;
    new-instance v6, Lca/uhn/hl7v2/parser/PipeParser;

    invoke-direct {v6}, Lca/uhn/hl7v2/parser/PipeParser;-><init>()V

    .line 838
    invoke-virtual/range {p0 .. p0}, Lca/uhn/hl7v2/model/AbstractGroup;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v7

    invoke-static {v7}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getInstance(Lca/uhn/hl7v2/model/Message;)Lca/uhn/hl7v2/parser/EncodingCharacters;

    move-result-object v7

    .line 837
    invoke-virtual {v6, v5, v7}, Lca/uhn/hl7v2/parser/PipeParser;->doEncode(Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    .end local v5    # "nextSegment":Lca/uhn/hl7v2/model/Segment;
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 829
    .end local v4    # "i":I
    :cond_1f
    :goto_9
    const-string v4, "Not populated"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    nop

    .line 740
    .end local v1    # "nextStructureList":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/model/Structure;>;"
    .end local v2    # "structurePrefix":Ljava/lang/StringBuilder;
    .end local v3    # "currentIndent":I
    .end local v10    # "nextName":Ljava/lang/String;
    .end local v13    # "nextClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Structure;>;"
    .end local v15    # "nextOptional":Z
    .end local v16    # "nextRepeating":Z
    .end local v17    # "nextChoice":Z
    :cond_20
    :goto_a
    move/from16 v2, v18

    move/from16 v1, v19

    .line 740
    .end local v18    # "theIndent":I
    .end local v19    # "inChoice":Z
    .local v1, "inChoice":Z
    .local v2, "theIndent":I
    :goto_b
    add-int/lit8 v7, v20, 0x1

    move/from16 v8, v21

    goto/16 :goto_0
.end method

.method public clear()V
    .locals 2

    .line 660
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractGroup;->structures:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 665
    return-void

    .line 660
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 661
    .local v1, "next":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/model/Structure;>;"
    if-eqz v1, :cond_0

    .line 662
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 662
    .end local v1    # "next":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/model/Structure;>;"
    goto :goto_0
.end method

.method public currentReps(Ljava/lang/String;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractGroup;->structures:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 417
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/model/Structure;>;"
    if-nez v0, :cond_0

    .line 418
    new-instance v1, Lca/uhn/hl7v2/HL7Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The structure "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not exist in the group "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 418
    invoke-direct {v1, v2}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 420
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    return v1
.end method

.method public get(Ljava/lang/String;)Lca/uhn/hl7v2/model/Structure;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lca/uhn/hl7v2/model/AbstractGroup;->get(Ljava/lang/String;I)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;I)Lca/uhn/hl7v2/model/Structure;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractGroup;->structures:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 126
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/model/Structure;>;"
    if-nez v0, :cond_0

    .line 127
    new-instance v1, Lca/uhn/hl7v2/HL7Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " does not exist in the group "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 130
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 132
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lca/uhn/hl7v2/model/Structure;

    .line 133
    .local v1, "ret":Lca/uhn/hl7v2/model/Structure;
    goto :goto_0

    .line 133
    .end local v1    # "ret":Lca/uhn/hl7v2/model/Structure;
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne p2, v1, :cond_3

    .line 135
    iget-object v1, p0, Lca/uhn/hl7v2/model/AbstractGroup;->repeating:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 136
    .local v1, "repeats":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 137
    new-instance v2, Lca/uhn/hl7v2/HL7Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t create repetition #"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " of Structure "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v4, " - this Structure is non-repeating so only rep 0 may be retrieved"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 137
    invoke-direct {v2, v3}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 141
    :cond_2
    iget-object v2, p0, Lca/uhn/hl7v2/model/AbstractGroup;->classes:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 142
    .local v2, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Structure;>;"
    invoke-virtual {p0, v2, p1}, Lca/uhn/hl7v2/model/AbstractGroup;->tryToInstantiateStructure(Ljava/lang/Class;Ljava/lang/String;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v3

    .line 143
    .local v3, "ret":Lca/uhn/hl7v2/model/Structure;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    .end local v1    # "repeats":Ljava/lang/Boolean;
    .end local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Structure;>;"
    nop

    .line 165
    move-object v1, v3

    .line 167
    .end local v3    # "ret":Lca/uhn/hl7v2/model/Structure;
    .local v1, "ret":Lca/uhn/hl7v2/model/Structure;
    :goto_0
    return-object v1

    .line 145
    .end local v1    # "ret":Lca/uhn/hl7v2/model/Structure;
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .local v1, "b":Ljava/lang/StringBuilder;
    const-string v2, "Can\'t return repetition #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string v2, " - there are currently "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 152
    const-string v2, "no"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    goto :goto_1

    .line 154
    :cond_4
    const-string v2, "only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    :goto_1
    const-string v2, " repetitions "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string v2, "so rep# must be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 160
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    goto :goto_2

    .line 162
    :cond_5
    const-string v2, "between 0 and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    :goto_2
    new-instance v2, Lca/uhn/hl7v2/HL7Exception;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getAll(Ljava/lang/String;)[Lca/uhn/hl7v2/model/Structure;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 432
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractGroup;->structures:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 433
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/model/Structure;>;"
    if-nez v0, :cond_0

    .line 434
    new-instance v1, Lca/uhn/hl7v2/HL7Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The structure "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not exist in the group "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 434
    invoke-direct {v1, v2}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 437
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lca/uhn/hl7v2/model/Structure;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lca/uhn/hl7v2/model/Structure;

    return-object v1
.end method

.method protected getAllAsList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lca/uhn/hl7v2/model/Structure;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 447
    .local p2, "theType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractGroup;->classes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 449
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Structure;>;"
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 450
    new-instance v1, Lca/uhn/hl7v2/HL7Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Structure with name \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" has type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    const-string v3, " but should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 450
    invoke-direct {v1, v2}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 453
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 454
    .local v1, "retVal":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v2, p0, Lca/uhn/hl7v2/model/AbstractGroup;->structures:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 457
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 454
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lca/uhn/hl7v2/model/Structure;

    .line 455
    .local v3, "next":Lca/uhn/hl7v2/model/Structure;
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    .end local v3    # "next":Lca/uhn/hl7v2/model/Structure;
    goto :goto_0
.end method

.method public getClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lca/uhn/hl7v2/model/Structure;",
            ">;"
        }
    .end annotation

    .line 567
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractGroup;->classes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public getFieldNumForName(Ljava/lang/String;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 556
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractGroup;->names:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 557
    .local v0, "retVal":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 558
    new-instance v1, Lca/uhn/hl7v2/HL7Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 560
    :cond_0
    add-int/lit8 v1, v0, 0x1

    return v1
.end method

.method public final getModelClassFactory()Lca/uhn/hl7v2/parser/ModelClassFactory;
    .locals 1

    .line 673
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractGroup;->myFactory:Lca/uhn/hl7v2/parser/ModelClassFactory;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 576
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lca/uhn/hl7v2/model/AbstractGroup;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNames()[Ljava/lang/String;
    .locals 3

    .line 278
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractGroup;->names:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 279
    .local v0, "retVal":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 279
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lca/uhn/hl7v2/model/AbstractGroup;->names:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 282
    .end local v1    # "i":I
    return-object v0

    .line 280
    .restart local v1    # "i":I
    :cond_0
    iget-object v2, p0, Lca/uhn/hl7v2/model/AbstractGroup;->names:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 279
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getNonStandardNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractGroup;->nonStandardNames:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 268
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 270
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractGroup;->nonStandardNames:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected getReps(Ljava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 199
    :try_start_0
    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/model/AbstractGroup;->getAll(Ljava/lang/String;)[Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Lca/uhn/hl7v2/HL7Exception;
    const-string v1, "Unexpected error accessing data - this is probably a bug in the source code generator."

    .line 202
    .local v1, "message":Ljava/lang/String;
    sget-object v2, Lca/uhn/hl7v2/model/AbstractGroup;->log:Lorg/slf4j/Logger;

    invoke-interface {v2, v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 203
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected getTyped(Ljava/lang/String;ILjava/lang/Class;)Lca/uhn/hl7v2/model/Structure;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "rep"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lca/uhn/hl7v2/model/Structure;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 184
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lca/uhn/hl7v2/model/AbstractGroup;->get(Ljava/lang/String;I)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .local v0, "ret":Lca/uhn/hl7v2/model/Structure;, "TT;"
    return-object v0

    .line 186
    .end local v0    # "ret":Lca/uhn/hl7v2/model/Structure;, "TT;"
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Lca/uhn/hl7v2/HL7Exception;
    iget-object v1, p0, Lca/uhn/hl7v2/model/AbstractGroup;->structures:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 188
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/model/Structure;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, p2, :cond_1

    .line 191
    :cond_0
    sget-object v2, Lca/uhn/hl7v2/model/AbstractGroup;->log:Lorg/slf4j/Logger;

    const-string v3, "Unexpected error accessing data - this is probably a bug in the source code generator."

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected getTyped(Ljava/lang/String;Ljava/lang/Class;)Lca/uhn/hl7v2/model/Structure;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lca/uhn/hl7v2/model/Structure;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 108
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/model/AbstractGroup;->get(Ljava/lang/String;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .local v0, "ret":Lca/uhn/hl7v2/model/Structure;, "TT;"
    return-object v0

    .line 110
    .end local v0    # "ret":Lca/uhn/hl7v2/model/Structure;, "TT;"
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Lca/uhn/hl7v2/HL7Exception;
    sget-object v1, Lca/uhn/hl7v2/model/AbstractGroup;->log:Lorg/slf4j/Logger;

    const-string v2, "Unexpected error accessing data - this is probably a bug in the source code generator."

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected insert(Ljava/lang/Class;ZZILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p2, "required"    # Z
    .param p3, "repeating"    # Z
    .param p4, "index"    # I
    .param p5, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lca/uhn/hl7v2/model/Structure;",
            ">;ZZI",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 621
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Structure;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lca/uhn/hl7v2/model/AbstractGroup;->insert(Ljava/lang/Class;ZZZILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected insert(Ljava/lang/Class;ZZZILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p2, "required"    # Z
    .param p3, "repeating"    # Z
    .param p4, "choiceElement"    # Z
    .param p5, "index"    # I
    .param p6, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lca/uhn/hl7v2/model/Structure;",
            ">;ZZZI",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 630
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Structure;>;"
    invoke-direct {p0, p6}, Lca/uhn/hl7v2/model/AbstractGroup;->nameExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 631
    const/4 v0, 0x2

    .line 632
    .local v0, "version":I
    move-object v1, p6

    .line 633
    .local v1, "newName":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v1}, Lca/uhn/hl7v2/model/AbstractGroup;->nameExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 636
    move-object p6, v1

    .line 636
    .end local v0    # "version":I
    .end local v1    # "newName":Ljava/lang/String;
    goto :goto_1

    .line 634
    .restart local v0    # "version":I
    .restart local v1    # "newName":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v0, 0x1

    .line 634
    .local v3, "version":I
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 634
    .end local v0    # "version":I
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 633
    move v0, v3

    goto :goto_0

    .line 639
    .end local v1    # "newName":Ljava/lang/String;
    .end local v3    # "version":I
    :cond_1
    :goto_1
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractGroup;->names:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p5, v0, :cond_2

    .line 640
    new-instance v0, Lca/uhn/hl7v2/HL7Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " - Should be <= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lca/uhn/hl7v2/model/AbstractGroup;->names:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 643
    :cond_2
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractGroup;->names:Ljava/util/List;

    invoke-interface {v0, p5, p6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 644
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractGroup;->required:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractGroup;->repeating:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractGroup;->classes:Ljava/util/Map;

    invoke-interface {v0, p6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractGroup;->structures:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    if-eqz p4, :cond_3

    .line 650
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractGroup;->choiceElements:Ljava/util/Set;

    invoke-interface {v0, p6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 653
    :cond_3
    return-object p6
.end method

.method public insertRepetition(Ljava/lang/String;I)Lca/uhn/hl7v2/model/Structure;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 531
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 535
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractGroup;->classes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 536
    .local v0, "structureClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Structure;>;"
    if-nez v0, :cond_1

    .line 537
    new-instance v1, Lca/uhn/hl7v2/HL7Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Group "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has no structure named "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    const-string v3, ": Valid names: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lca/uhn/hl7v2/model/AbstractGroup;->classes:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 537
    invoke-direct {v1, v2}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 541
    :cond_1
    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/model/AbstractGroup;->tryToInstantiateStructure(Ljava/lang/Class;Ljava/lang/String;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v1

    .line 542
    .local v1, "rep":Lca/uhn/hl7v2/model/Structure;
    invoke-virtual {p0, p1, v1, p2}, Lca/uhn/hl7v2/model/AbstractGroup;->insertRepetition(Ljava/lang/String;Lca/uhn/hl7v2/model/Structure;I)V

    .line 544
    return-object v1

    .line 532
    .end local v0    # "structureClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Structure;>;"
    .end local v1    # "rep":Lca/uhn/hl7v2/model/Structure;
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Name may not be null/empty"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected insertRepetition(Ljava/lang/String;Lca/uhn/hl7v2/model/Structure;I)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "structure"    # Lca/uhn/hl7v2/model/Structure;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 497
    if-nez p2, :cond_0

    .line 498
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Structure may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 501
    :cond_0
    invoke-interface {p2}, Lca/uhn/hl7v2/model/Structure;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractGroup;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 502
    new-instance v0, Lca/uhn/hl7v2/HL7Exception;

    const-string v1, "Structure does not belong to this message"

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 505
    :cond_1
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractGroup;->structures:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 507
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/model/Structure;>;"
    if-nez v0, :cond_2

    .line 508
    new-instance v1, Lca/uhn/hl7v2/HL7Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The structure "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not exist in the group "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 508
    invoke-direct {v1, v2}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 511
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, p3, :cond_3

    .line 512
    new-instance v1, Lca/uhn/hl7v2/HL7Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid index: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", structure "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " must be between 0 and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 512
    invoke-direct {v1, v2}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 516
    :cond_3
    invoke-interface {v0, p3, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 517
    return-void
.end method

.method public isChoiceElement(Ljava/lang/String;)Z
    .locals 1
    .param p1, "theName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractGroup;->choiceElements:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 174
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractGroup;->getNames()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-lt v3, v2, :cond_0

    .line 178
    const/4 v0, 0x1

    return v0

    .line 174
    :cond_0
    aget-object v4, v0, v3

    .line 175
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lca/uhn/hl7v2/model/AbstractGroup;->get(Ljava/lang/String;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v5

    invoke-interface {v5}, Lca/uhn/hl7v2/model/Structure;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 176
    return v1

    .line 174
    .end local v4    # "name":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public isGroup(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractGroup;->classes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 380
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Structure;>;"
    if-nez v0, :cond_0

    .line 381
    new-instance v1, Lca/uhn/hl7v2/HL7Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The structure "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not exist in the group "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 381
    invoke-direct {v1, v2}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 383
    :cond_0
    const-class v1, Lca/uhn/hl7v2/model/Group;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    return v1
.end method

.method public isRepeating(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 401
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractGroup;->repeating:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 402
    .local v0, "rep":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 403
    new-instance v1, Lca/uhn/hl7v2/HL7Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The structure "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not exist in the group "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 403
    invoke-direct {v1, v2}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 405
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public isRequired(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 390
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractGroup;->required:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 391
    .local v0, "req":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 392
    new-instance v1, Lca/uhn/hl7v2/HL7Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The structure "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not exist in the group "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 392
    invoke-direct {v1, v2}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 394
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public provideLocation(Lca/uhn/hl7v2/Location;II)Lca/uhn/hl7v2/Location;
    .locals 2
    .param p1, "location"    # Lca/uhn/hl7v2/Location;
    .param p2, "index"    # I
    .param p3, "repetition"    # I

    .line 693
    new-instance v0, Lca/uhn/hl7v2/Location;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/Location;-><init>(Lca/uhn/hl7v2/Location;)V

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractGroup;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lca/uhn/hl7v2/Location;->pushGroup(Ljava/lang/String;I)Lca/uhn/hl7v2/Location;

    move-result-object v0

    return-object v0
.end method

.method public removeRepetition(Ljava/lang/String;I)Lca/uhn/hl7v2/model/Structure;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 472
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractGroup;->structures:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 473
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/model/Structure;>;"
    if-nez v0, :cond_0

    .line 474
    new-instance v1, Lca/uhn/hl7v2/HL7Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The structure "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not exist in the group "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 474
    invoke-direct {v1, v2}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 477
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 478
    new-instance v1, Lca/uhn/hl7v2/HL7Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid index: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", structure "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has no repetitions"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 480
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, p2, :cond_2

    .line 481
    new-instance v1, Lca/uhn/hl7v2/HL7Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid index: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", structure "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " must be between 0 and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 481
    invoke-direct {v1, v2}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 485
    :cond_2
    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lca/uhn/hl7v2/model/Structure;

    return-object v1
.end method

.method protected tryToInstantiateStructure(Ljava/lang/Class;Ljava/lang/String;)Lca/uhn/hl7v2/model/Structure;
    .locals 3
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lca/uhn/hl7v2/model/Structure;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lca/uhn/hl7v2/model/Structure;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 350
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Structure;>;"
    const-class v0, Lca/uhn/hl7v2/model/GenericSegment;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    move-object v0, p2

    .line 352
    .local v0, "genericName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 353
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 355
    :cond_0
    new-instance v1, Lca/uhn/hl7v2/model/GenericSegment;

    invoke-direct {v1, p0, v0}, Lca/uhn/hl7v2/model/GenericSegment;-><init>(Lca/uhn/hl7v2/model/Group;Ljava/lang/String;)V

    return-object v1

    .line 357
    .end local v0    # "genericName":Ljava/lang/String;
    :cond_1
    const-class v0, Lca/uhn/hl7v2/model/GenericGroup;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 358
    new-instance v0, Lca/uhn/hl7v2/model/GenericGroup;

    iget-object v1, p0, Lca/uhn/hl7v2/model/AbstractGroup;->myFactory:Lca/uhn/hl7v2/parser/ModelClassFactory;

    invoke-direct {v0, p0, p2, v1}, Lca/uhn/hl7v2/model/GenericGroup;-><init>(Lca/uhn/hl7v2/model/Group;Ljava/lang/String;Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    return-object v0

    .line 361
    :cond_2
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractGroup;->myFactory:Lca/uhn/hl7v2/parser/ModelClassFactory;

    invoke-static {p1, p0, v0}, Lca/uhn/hl7v2/util/ReflectionUtil;->instantiateStructure(Ljava/lang/Class;Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/parser/ModelClassFactory;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 362
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p1}, Lca/uhn/hl7v2/util/ReflectionUtil;->instantiate(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lca/uhn/hl7v2/model/Structure;

    return-object v1
.end method

.method protected visitNestedStructures(Lca/uhn/hl7v2/model/MessageVisitor;Lca/uhn/hl7v2/Location;)V
    .locals 9
    .param p1, "visitor"    # Lca/uhn/hl7v2/model/MessageVisitor;
    .param p2, "location"    # Lca/uhn/hl7v2/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 697
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractGroup;->getNames()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 705
    return-void

    .line 697
    :cond_0
    aget-object v3, v0, v1

    .line 698
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lca/uhn/hl7v2/model/AbstractGroup;->getAll(Ljava/lang/String;)[Lca/uhn/hl7v2/model/Structure;

    move-result-object v4

    .line 699
    .local v4, "structures":[Lca/uhn/hl7v2/model/Structure;
    const/4 v5, 0x0

    .line 699
    .local v5, "j":I
    :goto_1
    array-length v6, v4

    if-lt v5, v6, :cond_1

    .line 699
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "structures":[Lca/uhn/hl7v2/model/Structure;
    .end local v5    # "j":I
    goto :goto_3

    .line 700
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "structures":[Lca/uhn/hl7v2/model/Structure;
    .restart local v5    # "j":I
    :cond_1
    invoke-virtual {p0, v3}, Lca/uhn/hl7v2/model/AbstractGroup;->isRepeating(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, -0x1

    if-eqz v6, :cond_2

    move v6, v5

    goto :goto_2

    :cond_2
    move v6, v7

    .line 701
    .local v6, "rep":I
    :goto_2
    aget-object v8, v4, v5

    invoke-interface {v8, p2, v7, v6}, Lca/uhn/hl7v2/model/Structure;->provideLocation(Lca/uhn/hl7v2/Location;II)Lca/uhn/hl7v2/Location;

    move-result-object v7

    .line 702
    .local v7, "nextLocation":Lca/uhn/hl7v2/Location;
    aget-object v8, v4, v5

    invoke-interface {v8, p1, v7}, Lca/uhn/hl7v2/model/Structure;->accept(Lca/uhn/hl7v2/model/MessageVisitor;Lca/uhn/hl7v2/Location;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 697
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "structures":[Lca/uhn/hl7v2/model/Structure;
    .end local v5    # "j":I
    .end local v6    # "rep":I
    .end local v7    # "nextLocation":Lca/uhn/hl7v2/Location;
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 699
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "structures":[Lca/uhn/hl7v2/model/Structure;
    .restart local v5    # "j":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method
