.class public Lca/uhn/hl7v2/parser/MessageIterator;
.super Ljava/lang/Object;
.source "MessageIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lca/uhn/hl7v2/parser/MessageIterator$Position;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lca/uhn/hl7v2/model/Structure;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$ca$uhn$hl7v2$parser$UnexpectedSegmentBehaviourEnum:[I

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private myCurrentDefinitionPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/parser/MessageIterator$Position;",
            ">;"
        }
    .end annotation
.end field

.field private myDirection:Ljava/lang/String;

.field private myHandleUnexpectedSegments:Z

.field private myMessage:Lca/uhn/hl7v2/model/Message;

.field private myNextIsSet:Z


# direct methods
.method static synthetic $SWITCH_TABLE$ca$uhn$hl7v2$parser$UnexpectedSegmentBehaviourEnum()[I
    .locals 3

    .line 31
    sget-object v0, Lca/uhn/hl7v2/parser/MessageIterator;->$SWITCH_TABLE$ca$uhn$hl7v2$parser$UnexpectedSegmentBehaviourEnum:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;->values()[Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;->ADD_INLINE:Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;

    invoke-virtual {v1}, Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    :try_start_1
    sget-object v1, Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;->DROP_TO_ROOT:Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;

    invoke-virtual {v1}, Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_1
    :try_start_2
    sget-object v1, Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;->THROW_HL7_EXCEPTION:Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;

    invoke-virtual {v1}, Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    :goto_2
    sput-object v0, Lca/uhn/hl7v2/parser/MessageIterator;->$SWITCH_TABLE$ca$uhn$hl7v2$parser$UnexpectedSegmentBehaviourEnum:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lca/uhn/hl7v2/parser/MessageIterator;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/parser/MessageIterator;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/model/Message;Lca/uhn/hl7v2/parser/IStructureDefinition;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "start"    # Lca/uhn/hl7v2/model/Message;
    .param p2, "startDefinition"    # Lca/uhn/hl7v2/parser/IStructureDefinition;
    .param p3, "direction"    # Ljava/lang/String;
    .param p4, "handleUnexpectedSegments"    # Z

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/parser/MessageIterator;->myCurrentDefinitionPath:Ljava/util/List;

    .line 51
    iput-object p1, p0, Lca/uhn/hl7v2/parser/MessageIterator;->myMessage:Lca/uhn/hl7v2/model/Message;

    .line 52
    iput-object p3, p0, Lca/uhn/hl7v2/parser/MessageIterator;->myDirection:Ljava/lang/String;

    .line 53
    iput-boolean p4, p0, Lca/uhn/hl7v2/parser/MessageIterator;->myHandleUnexpectedSegments:Z

    .line 54
    iget-object v0, p0, Lca/uhn/hl7v2/parser/MessageIterator;->myCurrentDefinitionPath:Ljava/util/List;

    new-instance v1, Lca/uhn/hl7v2/parser/MessageIterator$Position;

    const/4 v2, -0x1

    invoke-direct {v1, p2, v2}, Lca/uhn/hl7v2/parser/MessageIterator$Position;-><init>(Lca/uhn/hl7v2/parser/IStructureDefinition;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method private addNonStandardSegmentAtCurrentPosition()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Error;
        }
    .end annotation

    .line 178
    sget-object v0, Lca/uhn/hl7v2/parser/MessageIterator;->log:Lorg/slf4j/Logger;

    const-string v1, "Creating non standard segment {} on group: {}"

    .line 179
    iget-object v2, p0, Lca/uhn/hl7v2/parser/MessageIterator;->myDirection:Ljava/lang/String;

    invoke-direct {p0}, Lca/uhn/hl7v2/parser/MessageIterator;->getCurrentPosition()Lca/uhn/hl7v2/parser/MessageIterator$Position;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/parser/MessageIterator$Position;->getStructureDefinition()Lca/uhn/hl7v2/parser/IStructureDefinition;

    move-result-object v3

    invoke-interface {v3}, Lca/uhn/hl7v2/parser/IStructureDefinition;->getParent()Lca/uhn/hl7v2/parser/IStructureDefinition;

    move-result-object v3

    invoke-interface {v3}, Lca/uhn/hl7v2/parser/IStructureDefinition;->getName()Ljava/lang/String;

    move-result-object v3

    .line 178
    invoke-interface {v0, v1, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 184
    invoke-static {}, Lca/uhn/hl7v2/parser/MessageIterator;->$SWITCH_TABLE$ca$uhn$hl7v2$parser$UnexpectedSegmentBehaviourEnum()[I

    move-result-object v0

    iget-object v1, p0, Lca/uhn/hl7v2/parser/MessageIterator;->myMessage:Lca/uhn/hl7v2/model/Message;

    invoke-interface {v1}, Lca/uhn/hl7v2/model/Message;->getParser()Lca/uhn/hl7v2/parser/Parser;

    move-result-object v1

    invoke-virtual {v1}, Lca/uhn/hl7v2/parser/Parser;->getParserConfiguration()Lca/uhn/hl7v2/parser/ParserConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lca/uhn/hl7v2/parser/ParserConfiguration;->getUnexpectedSegmentBehaviour()Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;

    move-result-object v1

    invoke-virtual {v1}, Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lca/uhn/hl7v2/parser/MessageIterator;->myCurrentDefinitionPath:Ljava/util/List;

    iget-object v4, p0, Lca/uhn/hl7v2/parser/MessageIterator;->myCurrentDefinitionPath:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v3, v1, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 188
    .local v0, "parentDefinitionPath":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/parser/MessageIterator$Position;>;"
    invoke-direct {p0, v0}, Lca/uhn/hl7v2/parser/MessageIterator;->navigateToStructure(Ljava/util/List;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v3

    check-cast v3, Lca/uhn/hl7v2/model/Group;

    .line 189
    .local v3, "parentStructure":Lca/uhn/hl7v2/model/Group;
    goto :goto_0

    .line 196
    .end local v0    # "parentDefinitionPath":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/parser/MessageIterator$Position;>;"
    .end local v3    # "parentStructure":Lca/uhn/hl7v2/model/Group;
    :pswitch_0
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Lca/uhn/hl7v2/HL7Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Found unknown segment: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lca/uhn/hl7v2/parser/MessageIterator;->myDirection:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 191
    :pswitch_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lca/uhn/hl7v2/parser/MessageIterator;->myCurrentDefinitionPath:Ljava/util/List;

    invoke-interface {v3, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 192
    .restart local v0    # "parentDefinitionPath":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/parser/MessageIterator$Position;>;"
    iget-object v3, p0, Lca/uhn/hl7v2/parser/MessageIterator;->myMessage:Lca/uhn/hl7v2/model/Message;

    .line 193
    .restart local v3    # "parentStructure":Lca/uhn/hl7v2/model/Group;
    iget-object v4, p0, Lca/uhn/hl7v2/parser/MessageIterator;->myCurrentDefinitionPath:Ljava/util/List;

    const/4 v5, 0x2

    invoke-interface {v4, v1, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lca/uhn/hl7v2/parser/MessageIterator;->myCurrentDefinitionPath:Ljava/util/List;

    .line 194
    nop

    .line 196
    :goto_0
    nop

    .line 201
    invoke-direct {p0}, Lca/uhn/hl7v2/parser/MessageIterator;->getCurrentPosition()Lca/uhn/hl7v2/parser/MessageIterator$Position;

    move-result-object v4

    .line 202
    .local v4, "currentPosition":Lca/uhn/hl7v2/parser/MessageIterator$Position;
    invoke-virtual {v4}, Lca/uhn/hl7v2/parser/MessageIterator$Position;->getStructureDefinition()Lca/uhn/hl7v2/parser/IStructureDefinition;

    move-result-object v5

    invoke-interface {v5}, Lca/uhn/hl7v2/parser/IStructureDefinition;->getNameAsItAppearsInParent()Ljava/lang/String;

    move-result-object v5

    .line 204
    .local v5, "nameAsItAppearsInParent":Ljava/lang/String;
    invoke-interface {v3}, Lca/uhn/hl7v2/model/Group;->getNames()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    add-int/2addr v6, v2

    .line 210
    .local v6, "index":I
    invoke-interface {v3}, Lca/uhn/hl7v2/model/Group;->getNames()[Ljava/lang/String;

    move-result-object v7

    .line 211
    .local v7, "currentNames":[Ljava/lang/String;
    array-length v8, v7

    if-ge v6, v8, :cond_0

    aget-object v8, v7, v6

    iget-object v9, p0, Lca/uhn/hl7v2/parser/MessageIterator;->myDirection:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 212
    aget-object v8, v7, v6

    .line 213
    .local v8, "newSegmentName":Ljava/lang/String;
    goto :goto_1

    .line 215
    .end local v8    # "newSegmentName":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v8, p0, Lca/uhn/hl7v2/parser/MessageIterator;->myDirection:Ljava/lang/String;

    invoke-interface {v3, v8, v6}, Lca/uhn/hl7v2/model/Group;->addNonstandardSegment(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .restart local v8    # "newSegmentName":Ljava/lang/String;
    nop

    .line 217
    :goto_1
    nop

    .line 221
    invoke-direct {p0}, Lca/uhn/hl7v2/parser/MessageIterator;->getCurrentPosition()Lca/uhn/hl7v2/parser/MessageIterator$Position;

    move-result-object v9

    invoke-virtual {v9}, Lca/uhn/hl7v2/parser/MessageIterator$Position;->getStructureDefinition()Lca/uhn/hl7v2/parser/IStructureDefinition;

    move-result-object v9

    .line 222
    .local v9, "previousSibling":Lca/uhn/hl7v2/parser/IStructureDefinition;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v2

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lca/uhn/hl7v2/parser/MessageIterator$Position;

    invoke-virtual {v10}, Lca/uhn/hl7v2/parser/MessageIterator$Position;->getStructureDefinition()Lca/uhn/hl7v2/parser/IStructureDefinition;

    move-result-object v10

    .line 223
    .local v10, "parentStructureDefinition":Lca/uhn/hl7v2/parser/IStructureDefinition;
    new-instance v11, Lca/uhn/hl7v2/parser/NonStandardStructureDefinition;

    invoke-direct {v11, v10, v9, v8, v6}, Lca/uhn/hl7v2/parser/NonStandardStructureDefinition;-><init>(Lca/uhn/hl7v2/parser/IStructureDefinition;Lca/uhn/hl7v2/parser/IStructureDefinition;Ljava/lang/String;I)V

    .line 224
    .local v11, "nextDefinition":Lca/uhn/hl7v2/parser/NonStandardStructureDefinition;
    iput-object v0, p0, Lca/uhn/hl7v2/parser/MessageIterator;->myCurrentDefinitionPath:Ljava/util/List;

    .line 225
    iget-object v12, p0, Lca/uhn/hl7v2/parser/MessageIterator;->myCurrentDefinitionPath:Ljava/util/List;

    new-instance v13, Lca/uhn/hl7v2/parser/MessageIterator$Position;

    invoke-direct {v13, v11, v1}, Lca/uhn/hl7v2/parser/MessageIterator$Position;-><init>(Lca/uhn/hl7v2/parser/IStructureDefinition;I)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    iput-boolean v2, p0, Lca/uhn/hl7v2/parser/MessageIterator;->myNextIsSet:Z

    .line 228
    return-void

    .line 216
    .end local v8    # "newSegmentName":Ljava/lang/String;
    .end local v9    # "previousSibling":Lca/uhn/hl7v2/parser/IStructureDefinition;
    .end local v10    # "parentStructureDefinition":Lca/uhn/hl7v2/parser/IStructureDefinition;
    .end local v11    # "nextDefinition":Lca/uhn/hl7v2/parser/NonStandardStructureDefinition;
    :catch_0
    move-exception v1

    .line 217
    .local v1, "e":Lca/uhn/hl7v2/HL7Exception;
    new-instance v2, Ljava/lang/Error;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Unable to add nonstandard segment "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lca/uhn/hl7v2/parser/MessageIterator;->myDirection:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private clearNext()V
    .locals 1

    .line 303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lca/uhn/hl7v2/parser/MessageIterator;->myNextIsSet:Z

    .line 304
    return-void
.end method

.method private couldBeNotGreedy()Lca/uhn/hl7v2/parser/IStructureDefinition;
    .locals 7

    .line 162
    iget-object v0, p0, Lca/uhn/hl7v2/parser/MessageIterator;->myCurrentDefinitionPath:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 162
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 174
    .end local v0    # "i":I
    const/4 v0, 0x0

    return-object v0

    .line 163
    .restart local v0    # "i":I
    :cond_0
    iget-object v2, p0, Lca/uhn/hl7v2/parser/MessageIterator;->myCurrentDefinitionPath:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lca/uhn/hl7v2/parser/MessageIterator$Position;

    .line 164
    .local v2, "position":Lca/uhn/hl7v2/parser/MessageIterator$Position;
    invoke-virtual {v2}, Lca/uhn/hl7v2/parser/MessageIterator$Position;->getStructureDefinition()Lca/uhn/hl7v2/parser/IStructureDefinition;

    move-result-object v3

    .line 165
    .local v3, "curPos":Lca/uhn/hl7v2/parser/IStructureDefinition;
    invoke-interface {v3}, Lca/uhn/hl7v2/parser/IStructureDefinition;->getPosition()I

    move-result v4

    if-lez v4, :cond_1

    .line 166
    invoke-interface {v3}, Lca/uhn/hl7v2/parser/IStructureDefinition;->getParent()Lca/uhn/hl7v2/parser/IStructureDefinition;

    move-result-object v4

    .line 167
    .local v4, "parent":Lca/uhn/hl7v2/parser/IStructureDefinition;
    invoke-interface {v4}, Lca/uhn/hl7v2/parser/IStructureDefinition;->isRepeating()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Lca/uhn/hl7v2/parser/IStructureDefinition;->getAllPossibleFirstChildren()Ljava/util/Set;

    move-result-object v5

    iget-object v6, p0, Lca/uhn/hl7v2/parser/MessageIterator;->myDirection:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 168
    return-object v4

    .line 162
    .end local v2    # "position":Lca/uhn/hl7v2/parser/MessageIterator$Position;
    .end local v3    # "curPos":Lca/uhn/hl7v2/parser/IStructureDefinition;
    .end local v4    # "parent":Lca/uhn/hl7v2/parser/IStructureDefinition;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private getCurrentPosition()Lca/uhn/hl7v2/parser/MessageIterator$Position;
    .locals 1

    .line 58
    iget-object v0, p0, Lca/uhn/hl7v2/parser/MessageIterator;->myCurrentDefinitionPath:Ljava/util/List;

    invoke-direct {p0, v0}, Lca/uhn/hl7v2/parser/MessageIterator;->getTail(Ljava/util/List;)Lca/uhn/hl7v2/parser/MessageIterator$Position;

    move-result-object v0

    return-object v0
.end method

.method private getTail(Ljava/util/List;)Lca/uhn/hl7v2/parser/MessageIterator$Position;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/parser/MessageIterator$Position;",
            ">;)",
            "Lca/uhn/hl7v2/parser/MessageIterator$Position;"
        }
    .end annotation

    .line 62
    .local p1, "theDefinitionPath":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/parser/MessageIterator$Position;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/parser/MessageIterator$Position;

    return-object v0
.end method

.method private navigateToStructure(Ljava/util/List;)Lca/uhn/hl7v2/model/Structure;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/parser/MessageIterator$Position;",
            ">;)",
            "Lca/uhn/hl7v2/model/Structure;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Error;
        }
    .end annotation

    .line 270
    .local p1, "theDefinitionPath":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/parser/MessageIterator$Position;>;"
    const/4 v0, 0x0

    .line 271
    .local v0, "currentStructure":Lca/uhn/hl7v2/model/Structure;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 285
    return-object v0

    .line 271
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lca/uhn/hl7v2/parser/MessageIterator$Position;

    .line 272
    .local v2, "next":Lca/uhn/hl7v2/parser/MessageIterator$Position;
    if-nez v0, :cond_1

    .line 273
    iget-object v0, p0, Lca/uhn/hl7v2/parser/MessageIterator;->myMessage:Lca/uhn/hl7v2/model/Message;

    .line 274
    goto :goto_0

    .line 276
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Lca/uhn/hl7v2/parser/MessageIterator$Position;->getStructureDefinition()Lca/uhn/hl7v2/parser/IStructureDefinition;

    move-result-object v3

    .line 277
    .local v3, "structureDefinition":Lca/uhn/hl7v2/parser/IStructureDefinition;
    move-object v4, v0

    check-cast v4, Lca/uhn/hl7v2/model/Group;

    .line 278
    .local v4, "currentStructureGroup":Lca/uhn/hl7v2/model/Group;
    invoke-interface {v3}, Lca/uhn/hl7v2/parser/IStructureDefinition;->getNameAsItAppearsInParent()Ljava/lang/String;

    move-result-object v5

    .line 279
    .local v5, "nextStructureName":Ljava/lang/String;
    invoke-virtual {v2}, Lca/uhn/hl7v2/parser/MessageIterator$Position;->getRepNumber()I

    move-result v6

    invoke-interface {v4, v5, v6}, Lca/uhn/hl7v2/model/Group;->get(Ljava/lang/String;I)Lca/uhn/hl7v2/model/Structure;

    move-result-object v6
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    .line 280
    .end local v3    # "structureDefinition":Lca/uhn/hl7v2/parser/IStructureDefinition;
    .end local v4    # "currentStructureGroup":Lca/uhn/hl7v2/model/Group;
    .end local v5    # "nextStructureName":Ljava/lang/String;
    goto :goto_0

    :catch_0
    move-exception v1

    .line 281
    .local v1, "e":Lca/uhn/hl7v2/HL7Exception;
    new-instance v3, Ljava/lang/Error;

    const-string v4, "Failed to retrieve structure: "

    invoke-direct {v3, v4, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private popUntilMatchFound(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/parser/MessageIterator$Position;",
            ">;)",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/parser/MessageIterator$Position;",
            ">;"
        }
    .end annotation

    .line 66
    .local p1, "theDefinitionPath":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/parser/MessageIterator$Position;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-interface {p1, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    .line 68
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/parser/MessageIterator;->getTail(Ljava/util/List;)Lca/uhn/hl7v2/parser/MessageIterator$Position;

    move-result-object v0

    .line 69
    .local v0, "newCurrentPosition":Lca/uhn/hl7v2/parser/MessageIterator$Position;
    invoke-virtual {v0}, Lca/uhn/hl7v2/parser/MessageIterator$Position;->getStructureDefinition()Lca/uhn/hl7v2/parser/IStructureDefinition;

    move-result-object v1

    .line 71
    .local v1, "newCurrentStructureDefinition":Lca/uhn/hl7v2/parser/IStructureDefinition;
    invoke-interface {v1}, Lca/uhn/hl7v2/parser/IStructureDefinition;->getAllPossibleFirstChildren()Ljava/util/Set;

    move-result-object v3

    iget-object v4, p0, Lca/uhn/hl7v2/parser/MessageIterator;->myDirection:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 72
    return-object p1

    .line 75
    :cond_0
    invoke-interface {v1}, Lca/uhn/hl7v2/parser/IStructureDefinition;->isFinalChildOfParent()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 76
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_1

    .line 77
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/parser/MessageIterator;->popUntilMatchFound(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 79
    :cond_1
    sget-object v2, Lca/uhn/hl7v2/parser/MessageIterator;->log:Lorg/slf4j/Logger;

    const-string v3, "Popped to root of message and did not find a match for {}"

    iget-object v4, p0, Lca/uhn/hl7v2/parser/MessageIterator;->myDirection:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    const/4 v2, 0x0

    return-object v2

    .line 84
    :cond_2
    return-object p1
.end method


# virtual methods
.method public getDirection()Ljava/lang/String;
    .locals 1

    .line 294
    iget-object v0, p0, Lca/uhn/hl7v2/parser/MessageIterator;->myDirection:Ljava/lang/String;

    return-object v0
.end method

.method public getNextIndexWithinParent()I
    .locals 1

    .line 376
    invoke-direct {p0}, Lca/uhn/hl7v2/parser/MessageIterator;->getCurrentPosition()Lca/uhn/hl7v2/parser/MessageIterator$Position;

    move-result-object v0

    invoke-virtual {v0}, Lca/uhn/hl7v2/parser/MessageIterator$Position;->getStructureDefinition()Lca/uhn/hl7v2/parser/IStructureDefinition;

    move-result-object v0

    invoke-interface {v0}, Lca/uhn/hl7v2/parser/IStructureDefinition;->getPosition()I

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 7

    .line 92
    sget-object v0, Lca/uhn/hl7v2/parser/MessageIterator;->log:Lorg/slf4j/Logger;

    const-string v1, "hasNext() for direction {}"

    iget-object v2, p0, Lca/uhn/hl7v2/parser/MessageIterator;->myDirection:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lca/uhn/hl7v2/parser/MessageIterator;->myDirection:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Direction not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lca/uhn/hl7v2/parser/MessageIterator;->myNextIsSet:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 155
    return v1

    .line 99
    :cond_1
    invoke-direct {p0}, Lca/uhn/hl7v2/parser/MessageIterator;->getCurrentPosition()Lca/uhn/hl7v2/parser/MessageIterator$Position;

    move-result-object v0

    .line 101
    .local v0, "currentPosition":Lca/uhn/hl7v2/parser/MessageIterator$Position;
    sget-object v2, Lca/uhn/hl7v2/parser/MessageIterator;->log:Lorg/slf4j/Logger;

    const-string v3, "hasNext() current position: {}"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    invoke-virtual {v0}, Lca/uhn/hl7v2/parser/MessageIterator$Position;->getStructureDefinition()Lca/uhn/hl7v2/parser/IStructureDefinition;

    move-result-object v2

    .line 105
    .local v2, "structureDefinition":Lca/uhn/hl7v2/parser/IStructureDefinition;
    iget-object v3, p0, Lca/uhn/hl7v2/parser/MessageIterator;->myMessage:Lca/uhn/hl7v2/model/Message;

    invoke-interface {v3}, Lca/uhn/hl7v2/model/Message;->getParser()Lca/uhn/hl7v2/parser/Parser;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/parser/Parser;->getParserConfiguration()Lca/uhn/hl7v2/parser/ParserConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/parser/ParserConfiguration;->isNonGreedyMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 106
    invoke-direct {p0}, Lca/uhn/hl7v2/parser/MessageIterator;->couldBeNotGreedy()Lca/uhn/hl7v2/parser/IStructureDefinition;

    move-result-object v3

    .line 107
    .local v3, "nonGreedyPosition":Lca/uhn/hl7v2/parser/IStructureDefinition;
    if-eqz v3, :cond_3

    .line 108
    sget-object v4, Lca/uhn/hl7v2/parser/MessageIterator;->log:Lorg/slf4j/Logger;

    const-string v5, "Found non greedy parsing choice, moving to {}"

    invoke-interface {v3}, Lca/uhn/hl7v2/parser/IStructureDefinition;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    :goto_1
    invoke-direct {p0}, Lca/uhn/hl7v2/parser/MessageIterator;->getCurrentPosition()Lca/uhn/hl7v2/parser/MessageIterator$Position;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/parser/MessageIterator$Position;->getStructureDefinition()Lca/uhn/hl7v2/parser/IStructureDefinition;

    move-result-object v4

    if-ne v4, v3, :cond_2

    .line 109
    .end local v3    # "nonGreedyPosition":Lca/uhn/hl7v2/parser/IStructureDefinition;
    goto :goto_2

    .line 110
    .restart local v3    # "nonGreedyPosition":Lca/uhn/hl7v2/parser/IStructureDefinition;
    :cond_2
    iget-object v4, p0, Lca/uhn/hl7v2/parser/MessageIterator;->myCurrentDefinitionPath:Ljava/util/List;

    iget-object v5, p0, Lca/uhn/hl7v2/parser/MessageIterator;->myCurrentDefinitionPath:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 115
    .end local v3    # "nonGreedyPosition":Lca/uhn/hl7v2/parser/IStructureDefinition;
    :cond_3
    :goto_2
    invoke-interface {v2}, Lca/uhn/hl7v2/parser/IStructureDefinition;->isSegment()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_5

    invoke-interface {v2}, Lca/uhn/hl7v2/parser/IStructureDefinition;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lca/uhn/hl7v2/parser/MessageIterator;->myDirection:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Lca/uhn/hl7v2/parser/IStructureDefinition;->isRepeating()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Lca/uhn/hl7v2/parser/MessageIterator$Position;->getRepNumber()I

    move-result v3

    if-ne v3, v4, :cond_5

    .line 116
    :cond_4
    iput-boolean v1, p0, Lca/uhn/hl7v2/parser/MessageIterator;->myNextIsSet:Z

    .line 117
    invoke-virtual {v0}, Lca/uhn/hl7v2/parser/MessageIterator$Position;->incrementRep()V

    .line 118
    goto :goto_0

    :cond_5
    invoke-interface {v2}, Lca/uhn/hl7v2/parser/IStructureDefinition;->isSegment()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    invoke-interface {v2}, Lca/uhn/hl7v2/parser/IStructureDefinition;->getNextLeaf()Lca/uhn/hl7v2/parser/IStructureDefinition;

    move-result-object v1

    if-nez v1, :cond_7

    .line 119
    invoke-interface {v2}, Lca/uhn/hl7v2/parser/IStructureDefinition;->getNamesOfAllPossibleFollowingLeaves()Ljava/util/Set;

    move-result-object v1

    iget-object v5, p0, Lca/uhn/hl7v2/parser/MessageIterator;->myDirection:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 120
    iget-boolean v1, p0, Lca/uhn/hl7v2/parser/MessageIterator;->myHandleUnexpectedSegments:Z

    if-nez v1, :cond_6

    .line 121
    return v3

    .line 123
    :cond_6
    invoke-direct {p0}, Lca/uhn/hl7v2/parser/MessageIterator;->addNonStandardSegmentAtCurrentPosition()V

    .line 124
    goto/16 :goto_0

    :cond_7
    invoke-interface {v2}, Lca/uhn/hl7v2/parser/IStructureDefinition;->hasChildren()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v2}, Lca/uhn/hl7v2/parser/IStructureDefinition;->getAllPossibleFirstChildren()Ljava/util/Set;

    move-result-object v1

    iget-object v5, p0, Lca/uhn/hl7v2/parser/MessageIterator;->myDirection:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v2}, Lca/uhn/hl7v2/parser/IStructureDefinition;->isRepeating()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lca/uhn/hl7v2/parser/MessageIterator$Position;->getRepNumber()I

    move-result v1

    if-ne v1, v4, :cond_9

    .line 125
    :cond_8
    invoke-virtual {v0}, Lca/uhn/hl7v2/parser/MessageIterator$Position;->incrementRep()V

    .line 126
    iget-object v1, p0, Lca/uhn/hl7v2/parser/MessageIterator;->myCurrentDefinitionPath:Ljava/util/List;

    new-instance v3, Lca/uhn/hl7v2/parser/MessageIterator$Position;

    invoke-interface {v2}, Lca/uhn/hl7v2/parser/IStructureDefinition;->getFirstChild()Lca/uhn/hl7v2/parser/IStructureDefinition;

    move-result-object v5

    invoke-direct {v3, v5, v4}, Lca/uhn/hl7v2/parser/MessageIterator$Position;-><init>(Lca/uhn/hl7v2/parser/IStructureDefinition;I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    goto/16 :goto_0

    :cond_9
    invoke-interface {v2}, Lca/uhn/hl7v2/parser/IStructureDefinition;->hasChildren()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-interface {v2}, Lca/uhn/hl7v2/parser/IStructureDefinition;->getNamesOfAllPossibleFollowingLeaves()Ljava/util/Set;

    move-result-object v1

    iget-object v4, p0, Lca/uhn/hl7v2/parser/MessageIterator;->myDirection:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 128
    iget-boolean v1, p0, Lca/uhn/hl7v2/parser/MessageIterator;->myHandleUnexpectedSegments:Z

    if-nez v1, :cond_a

    .line 129
    return v3

    .line 131
    :cond_a
    invoke-direct {p0}, Lca/uhn/hl7v2/parser/MessageIterator;->addNonStandardSegmentAtCurrentPosition()V

    .line 137
    goto/16 :goto_0

    :cond_b
    invoke-interface {v2}, Lca/uhn/hl7v2/parser/IStructureDefinition;->isFinalChildOfParent()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 138
    iget-object v1, p0, Lca/uhn/hl7v2/parser/MessageIterator;->myCurrentDefinitionPath:Ljava/util/List;

    invoke-direct {p0, v1}, Lca/uhn/hl7v2/parser/MessageIterator;->popUntilMatchFound(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 139
    .local v1, "newDefinitionPath":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/parser/MessageIterator$Position;>;"
    if-eqz v1, :cond_c

    .line 141
    iput-object v1, p0, Lca/uhn/hl7v2/parser/MessageIterator;->myCurrentDefinitionPath:Ljava/util/List;

    .line 142
    goto/16 :goto_0

    .line 143
    :cond_c
    iget-boolean v4, p0, Lca/uhn/hl7v2/parser/MessageIterator;->myHandleUnexpectedSegments:Z

    if-nez v4, :cond_d

    .line 144
    return v3

    .line 146
    :cond_d
    invoke-direct {p0}, Lca/uhn/hl7v2/parser/MessageIterator;->addNonStandardSegmentAtCurrentPosition()V

    .line 148
    .end local v1    # "newDefinitionPath":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/parser/MessageIterator$Position;>;"
    goto/16 :goto_0

    .line 149
    :cond_e
    invoke-interface {v2}, Lca/uhn/hl7v2/parser/IStructureDefinition;->getNextSibling()Lca/uhn/hl7v2/parser/IStructureDefinition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/parser/MessageIterator$Position;->setStructureDefinition(Lca/uhn/hl7v2/parser/IStructureDefinition;)V

    .line 150
    invoke-virtual {v0}, Lca/uhn/hl7v2/parser/MessageIterator$Position;->resetRepNumber()V

    .line 150
    .end local v0    # "currentPosition":Lca/uhn/hl7v2/parser/MessageIterator$Position;
    .end local v2    # "structureDefinition":Lca/uhn/hl7v2/parser/IStructureDefinition;
    goto/16 :goto_0
.end method

.method public next()Lca/uhn/hl7v2/model/Structure;
    .locals 2

    .line 259
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/MessageIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more nodes in message"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/parser/MessageIterator;->myCurrentDefinitionPath:Ljava/util/List;

    invoke-direct {p0, v0}, Lca/uhn/hl7v2/parser/MessageIterator;->navigateToStructure(Ljava/util/List;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    .line 265
    .local v0, "currentStructure":Lca/uhn/hl7v2/model/Structure;
    invoke-direct {p0}, Lca/uhn/hl7v2/parser/MessageIterator;->clearNext()V

    .line 266
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/MessageIterator;->next()Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 290
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t remove a node from a message"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDirection(Ljava/lang/String;)V
    .locals 0
    .param p1, "direction"    # Ljava/lang/String;

    .line 298
    invoke-direct {p0}, Lca/uhn/hl7v2/parser/MessageIterator;->clearNext()V

    .line 299
    iput-object p1, p0, Lca/uhn/hl7v2/parser/MessageIterator;->myDirection:Ljava/lang/String;

    .line 300
    return-void
.end method
