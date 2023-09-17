.class public Lca/uhn/hl7v2/parser/ParserConfiguration;
.super Ljava/lang/Object;
.source "ParserConfiguration.java"


# static fields
.field public static final DEFAULT_UNEXPECTED_SEGMENT_BEHAVIOUR:Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;


# instance fields
.field private allowUnknownVersions:Z

.field private escapeSubcomponentDelimiterInPrimitive:Z

.field private escaping:Lca/uhn/hl7v2/parser/Escaping;

.field private idGenerator:Lca/uhn/hl7v2/util/idgenerator/IDGenerator;

.field private myDefaultObx2Type:Ljava/lang/String;

.field private myEncodeEmptyMandatorySegments:Z

.field private myForcedEncode:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private myInvalidObx2Type:Ljava/lang/String;

.field private myUnexpectedSegmentBehaviour:Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;

.field private nonGreedyMode:Z

.field private prettyPrintWhenEncodingXml:Z

.field private validating:Z

.field private xmlDisableWhitespaceTrimmingOnAllNodes:Z

.field private xmlDisableWhitespaceTrimmingOnNodeNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    sget-object v0, Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;->ADD_INLINE:Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;

    sput-object v0, Lca/uhn/hl7v2/parser/ParserConfiguration;->DEFAULT_UNEXPECTED_SEGMENT_BEHAVIOUR:Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lca/uhn/hl7v2/parser/ParserConfiguration;->escapeSubcomponentDelimiterInPrimitive:Z

    .line 32
    new-instance v1, Lca/uhn/hl7v2/util/idgenerator/FileBasedHiLoGenerator;

    invoke-direct {v1}, Lca/uhn/hl7v2/util/idgenerator/FileBasedHiLoGenerator;-><init>()V

    iput-object v1, p0, Lca/uhn/hl7v2/parser/ParserConfiguration;->idGenerator:Lca/uhn/hl7v2/util/idgenerator/IDGenerator;

    .line 34
    const/4 v1, 0x1

    iput-boolean v1, p0, Lca/uhn/hl7v2/parser/ParserConfiguration;->myEncodeEmptyMandatorySegments:Z

    .line 35
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lca/uhn/hl7v2/parser/ParserConfiguration;->myForcedEncode:Ljava/util/Set;

    .line 38
    iput-boolean v0, p0, Lca/uhn/hl7v2/parser/ParserConfiguration;->nonGreedyMode:Z

    .line 39
    iput-boolean v1, p0, Lca/uhn/hl7v2/parser/ParserConfiguration;->prettyPrintWhenEncodingXml:Z

    .line 40
    iput-boolean v1, p0, Lca/uhn/hl7v2/parser/ParserConfiguration;->validating:Z

    .line 41
    new-instance v1, Lca/uhn/hl7v2/parser/DefaultEscaping;

    invoke-direct {v1}, Lca/uhn/hl7v2/parser/DefaultEscaping;-><init>()V

    iput-object v1, p0, Lca/uhn/hl7v2/parser/ParserConfiguration;->escaping:Lca/uhn/hl7v2/parser/Escaping;

    .line 42
    iput-boolean v0, p0, Lca/uhn/hl7v2/parser/ParserConfiguration;->xmlDisableWhitespaceTrimmingOnAllNodes:Z

    .line 43
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/parser/ParserConfiguration;->xmlDisableWhitespaceTrimmingOnNodeNames:Ljava/util/Set;

    .line 22
    return-void
.end method


# virtual methods
.method public addForcedEncode(Ljava/lang/String;)V
    .locals 3
    .param p1, "theForcedEncode"    # Ljava/lang/String;

    .line 105
    if-nez p1, :cond_0

    .line 106
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "forced encode may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 110
    .local v0, "lastSlashIndex":I
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 112
    if-nez v0, :cond_1

    .line 113
    const-string v1, "[A-Z0-9]{3}(-[0-9]+){0,2}$"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 114
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Definition must end with a segment name or field lookup, e.g. MSH or MSH-2"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_3

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[A-Z0-9]{3}(-[0-9]+){0,2}$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 121
    :cond_2
    iget-object v1, p0, Lca/uhn/hl7v2/parser/ParserConfiguration;->myForcedEncode:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    return-void

    .line 118
    :cond_3
    :goto_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Definition must end with a segment name or field lookup, e.g. MSH or MSH-2"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method determineForcedEncodeIncludesTerserPath(Ljava/lang/String;)Z
    .locals 3
    .param p1, "theTerserPath"    # Ljava/lang/String;

    .line 125
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/ParserConfiguration;->getForcedEncode()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 130
    const/4 v0, 0x0

    return v0

    .line 125
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 126
    .local v1, "next":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    const/4 v0, 0x1

    return v0
.end method

.method determineForcedFieldNumForTerserPath(Ljava/lang/String;)I
    .locals 6
    .param p1, "theCurrentTerserPath"    # Ljava/lang/String;

    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, "forceUpToFieldNum":I
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/ParserConfiguration;->getForcedEncode()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 145
    return v0

    .line 135
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 136
    .local v2, "nextPath":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 137
    const/16 v3, 0x2d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 138
    .local v3, "endOfFieldDef":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 139
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 141
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 142
    .local v4, "fieldNumString":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 142
    .end local v2    # "nextPath":Ljava/lang/String;
    .end local v3    # "endOfFieldDef":I
    .end local v4    # "fieldNumString":Ljava/lang/String;
    goto :goto_0
.end method

.method public getDefaultObx2Type()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lca/uhn/hl7v2/parser/ParserConfiguration;->myDefaultObx2Type:Ljava/lang/String;

    return-object v0
.end method

.method public getEscaping()Lca/uhn/hl7v2/parser/Escaping;
    .locals 1

    .line 541
    iget-object v0, p0, Lca/uhn/hl7v2/parser/ParserConfiguration;->escaping:Lca/uhn/hl7v2/parser/Escaping;

    return-object v0
.end method

.method public getForcedEncode()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lca/uhn/hl7v2/parser/ParserConfiguration;->myForcedEncode:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getIdGenerator()Lca/uhn/hl7v2/util/idgenerator/IDGenerator;
    .locals 1

    .line 175
    iget-object v0, p0, Lca/uhn/hl7v2/parser/ParserConfiguration;->idGenerator:Lca/uhn/hl7v2/util/idgenerator/IDGenerator;

    return-object v0
.end method

.method public getInvalidObx2Type()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lca/uhn/hl7v2/parser/ParserConfiguration;->myInvalidObx2Type:Ljava/lang/String;

    return-object v0
.end method

.method public getUnexpectedSegmentBehaviour()Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;
    .locals 1

    .line 198
    iget-object v0, p0, Lca/uhn/hl7v2/parser/ParserConfiguration;->myUnexpectedSegmentBehaviour:Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;

    if-nez v0, :cond_0

    .line 199
    sget-object v0, Lca/uhn/hl7v2/parser/ParserConfiguration;->DEFAULT_UNEXPECTED_SEGMENT_BEHAVIOUR:Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;

    iput-object v0, p0, Lca/uhn/hl7v2/parser/ParserConfiguration;->myUnexpectedSegmentBehaviour:Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;

    .line 201
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/parser/ParserConfiguration;->myUnexpectedSegmentBehaviour:Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;

    return-object v0
.end method

.method public getXmlDisableWhitespaceTrimmingOnNodeNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lca/uhn/hl7v2/parser/ParserConfiguration;->xmlDisableWhitespaceTrimmingOnNodeNames:Ljava/util/Set;

    return-object v0
.end method

.method public isAllowUnknownVersions()Z
    .locals 1

    .line 222
    iget-boolean v0, p0, Lca/uhn/hl7v2/parser/ParserConfiguration;->allowUnknownVersions:Z

    return v0
.end method

.method public isEncodeEmptyMandatorySegments()Z
    .locals 1

    .line 233
    iget-boolean v0, p0, Lca/uhn/hl7v2/parser/ParserConfiguration;->myEncodeEmptyMandatorySegments:Z

    return v0
.end method

.method public isEscapeSubcomponentDelimiterInPrimitive()Z
    .locals 1

    .line 243
    iget-boolean v0, p0, Lca/uhn/hl7v2/parser/ParserConfiguration;->escapeSubcomponentDelimiterInPrimitive:Z

    return v0
.end method

.method public isNonGreedyMode()Z
    .locals 1

    .line 253
    iget-boolean v0, p0, Lca/uhn/hl7v2/parser/ParserConfiguration;->nonGreedyMode:Z

    return v0
.end method

.method public isPrettyPrintWhenEncodingXml()Z
    .locals 1

    .line 262
    iget-boolean v0, p0, Lca/uhn/hl7v2/parser/ParserConfiguration;->prettyPrintWhenEncodingXml:Z

    return v0
.end method

.method public isValidating()Z
    .locals 1

    .line 272
    iget-boolean v0, p0, Lca/uhn/hl7v2/parser/ParserConfiguration;->validating:Z

    return v0
.end method

.method public isXmlDisableWhitespaceTrimmingOnAllNodes()Z
    .locals 1

    .line 279
    iget-boolean v0, p0, Lca/uhn/hl7v2/parser/ParserConfiguration;->xmlDisableWhitespaceTrimmingOnAllNodes:Z

    return v0
.end method

.method public removeForcedEncode(Ljava/lang/String;)V
    .locals 2
    .param p1, "theForcedEncode"    # Ljava/lang/String;

    .line 290
    if-nez p1, :cond_0

    .line 291
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "forced encode may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/parser/ParserConfiguration;->myForcedEncode:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 295
    return-void
.end method

.method public setAllowUnknownVersions(Z)V
    .locals 0
    .param p1, "theAllowUnknownVersions"    # Z

    .line 308
    iput-boolean p1, p0, Lca/uhn/hl7v2/parser/ParserConfiguration;->allowUnknownVersions:Z

    .line 309
    return-void
.end method

.method public setDefaultObx2Type(Ljava/lang/String;)V
    .locals 0
    .param p1, "theDefaultObx2Type"    # Ljava/lang/String;

    .line 346
    iput-object p1, p0, Lca/uhn/hl7v2/parser/ParserConfiguration;->myDefaultObx2Type:Ljava/lang/String;

    .line 347
    return-void
.end method

.method public setEncodeEmptyMandatoryFirstSegments(Z)V
    .locals 0
    .param p1, "theEncodeEmptyMandatorySegments"    # Z

    .line 390
    iput-boolean p1, p0, Lca/uhn/hl7v2/parser/ParserConfiguration;->myEncodeEmptyMandatorySegments:Z

    .line 391
    return-void
.end method

.method public setEscapeSubcomponentDelimiterInPrimitive(Z)V
    .locals 0
    .param p1, "escapeSubcomponentDelimiterInPrimitive"    # Z

    .line 399
    iput-boolean p1, p0, Lca/uhn/hl7v2/parser/ParserConfiguration;->escapeSubcomponentDelimiterInPrimitive:Z

    .line 400
    return-void
.end method

.method public setEscaping(Lca/uhn/hl7v2/parser/Escaping;)V
    .locals 2
    .param p1, "escaping"    # Lca/uhn/hl7v2/parser/Escaping;

    .line 549
    if-nez p1, :cond_0

    .line 550
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Escaping can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :cond_0
    iput-object p1, p0, Lca/uhn/hl7v2/parser/ParserConfiguration;->escaping:Lca/uhn/hl7v2/parser/Escaping;

    .line 553
    return-void
.end method

.method public setIdGenerator(Lca/uhn/hl7v2/util/idgenerator/IDGenerator;)V
    .locals 0
    .param p1, "idGenerator"    # Lca/uhn/hl7v2/util/idgenerator/IDGenerator;

    .line 411
    iput-object p1, p0, Lca/uhn/hl7v2/parser/ParserConfiguration;->idGenerator:Lca/uhn/hl7v2/util/idgenerator/IDGenerator;

    .line 412
    return-void
.end method

.method public setInvalidObx2Type(Ljava/lang/String;)V
    .locals 0
    .param p1, "theInvalidObx2Type"    # Ljava/lang/String;

    .line 450
    iput-object p1, p0, Lca/uhn/hl7v2/parser/ParserConfiguration;->myInvalidObx2Type:Ljava/lang/String;

    .line 451
    return-void
.end method

.method public setNonGreedyMode(Z)V
    .locals 0
    .param p1, "theNonGreedyMode"    # Z

    .line 502
    iput-boolean p1, p0, Lca/uhn/hl7v2/parser/ParserConfiguration;->nonGreedyMode:Z

    .line 503
    return-void
.end method

.method public setPrettyPrintWhenEncodingXml(Z)V
    .locals 0
    .param p1, "thePrettyPrintWhenEncodingXml"    # Z

    .line 511
    iput-boolean p1, p0, Lca/uhn/hl7v2/parser/ParserConfiguration;->prettyPrintWhenEncodingXml:Z

    .line 512
    return-void
.end method

.method public setUnexpectedSegmentBehaviour(Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;)V
    .locals 2
    .param p1, "theUnexpectedSegmentBehaviour"    # Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;

    .line 521
    if-nez p1, :cond_0

    .line 522
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "UnexpectedSegmentBehaviour can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 524
    :cond_0
    iput-object p1, p0, Lca/uhn/hl7v2/parser/ParserConfiguration;->myUnexpectedSegmentBehaviour:Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;

    .line 525
    return-void
.end method

.method public setValidating(Z)V
    .locals 0
    .param p1, "validating"    # Z

    .line 537
    iput-boolean p1, p0, Lca/uhn/hl7v2/parser/ParserConfiguration;->validating:Z

    .line 538
    return-void
.end method

.method public setXmlDisableWhitespaceTrimmingOnAllNodes(Z)V
    .locals 0
    .param p1, "theXmlDisableWhitespaceTrimmingOnAllNodes"    # Z

    .line 564
    iput-boolean p1, p0, Lca/uhn/hl7v2/parser/ParserConfiguration;->xmlDisableWhitespaceTrimmingOnAllNodes:Z

    .line 565
    return-void
.end method

.method public setXmlDisableWhitespaceTrimmingOnNodeNames(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 576
    .local p1, "theXmlDisableWhitespaceTrimmingOnNodeNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 577
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/parser/ParserConfiguration;->xmlDisableWhitespaceTrimmingOnNodeNames:Ljava/util/Set;

    .line 578
    goto :goto_0

    .line 579
    :cond_0
    iput-object p1, p0, Lca/uhn/hl7v2/parser/ParserConfiguration;->xmlDisableWhitespaceTrimmingOnNodeNames:Ljava/util/Set;

    .line 581
    :goto_0
    return-void
.end method

.method public varargs setXmlDisableWhitespaceTrimmingOnNodeNames([Ljava/lang/String;)V
    .locals 2
    .param p1, "theKeepAsOriginalNodes"    # [Ljava/lang/String;

    .line 592
    if-nez p1, :cond_0

    .line 593
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/parser/ParserConfiguration;->setXmlDisableWhitespaceTrimmingOnNodeNames(Ljava/util/Set;)V

    .line 594
    goto :goto_0

    .line 595
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/parser/ParserConfiguration;->setXmlDisableWhitespaceTrimmingOnNodeNames(Ljava/util/Set;)V

    .line 597
    :goto_0
    return-void
.end method
