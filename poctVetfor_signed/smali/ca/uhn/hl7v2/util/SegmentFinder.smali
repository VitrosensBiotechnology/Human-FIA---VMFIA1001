.class public Lca/uhn/hl7v2/util/SegmentFinder;
.super Lca/uhn/hl7v2/util/MessageNavigator;
.source "SegmentFinder.java"


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Group;)V
    .locals 0
    .param p1, "root"    # Lca/uhn/hl7v2/model/Group;

    .line 45
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/util/MessageNavigator;-><init>(Lca/uhn/hl7v2/model/Group;)V

    .line 46
    return-void
.end method

.method private findStructure(Ljava/lang/String;I)Lca/uhn/hl7v2/model/Structure;
    .locals 4
    .param p1, "namePattern"    # Ljava/lang/String;
    .param p2, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 80
    const/4 v0, 0x0

    .line 82
    .local v0, "s":Lca/uhn/hl7v2/model/Structure;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 89
    return-object v0

    .line 83
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Lca/uhn/hl7v2/util/SegmentFinder;->iterate(ZZ)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "currentNameInParent":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lca/uhn/hl7v2/util/SegmentFinder;->getCurrentStructure(I)Lca/uhn/hl7v2/model/Structure;

    move-result-object v1

    invoke-interface {v1}, Lca/uhn/hl7v2/model/Structure;->getName()Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "currentName":Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lca/uhn/hl7v2/util/SegmentFinder;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, p1, v2}, Lca/uhn/hl7v2/util/SegmentFinder;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    :cond_2
    invoke-virtual {p0, p2}, Lca/uhn/hl7v2/util/SegmentFinder;->getCurrentStructure(I)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    .line 86
    .end local v1    # "currentName":Ljava/lang/String;
    .end local v2    # "currentNameInParent":Ljava/lang/String;
    goto :goto_0
.end method

.method private getStructure(Ljava/lang/String;I)Lca/uhn/hl7v2/model/Structure;
    .locals 5
    .param p1, "namePattern"    # Ljava/lang/String;
    .param p2, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 123
    const/4 v0, 0x0

    .line 125
    .local v0, "s":Lca/uhn/hl7v2/model/Structure;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lca/uhn/hl7v2/util/SegmentFinder;->getCurrentStructure(I)Lca/uhn/hl7v2/model/Structure;

    move-result-object v2

    invoke-virtual {p0}, Lca/uhn/hl7v2/util/SegmentFinder;->getRoot()Lca/uhn/hl7v2/model/Group;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    invoke-virtual {p0, v1}, Lca/uhn/hl7v2/util/SegmentFinder;->drillDown(I)V

    .line 128
    :cond_0
    invoke-virtual {p0, v1}, Lca/uhn/hl7v2/util/SegmentFinder;->getCurrentStructure(I)Lca/uhn/hl7v2/model/Structure;

    move-result-object v1

    invoke-interface {v1}, Lca/uhn/hl7v2/model/Structure;->getParent()Lca/uhn/hl7v2/model/Group;

    move-result-object v1

    invoke-interface {v1}, Lca/uhn/hl7v2/model/Group;->getNames()[Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "names":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 129
    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_3

    if-eqz v0, :cond_1

    .line 129
    .end local v2    # "i":I
    goto :goto_1

    .line 130
    .restart local v2    # "i":I
    :cond_1
    aget-object v3, v1, v2

    invoke-direct {p0, p1, v3}, Lca/uhn/hl7v2/util/SegmentFinder;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 131
    invoke-virtual {p0, v2}, Lca/uhn/hl7v2/util/SegmentFinder;->toChild(I)Ljava/lang/String;

    .line 132
    invoke-virtual {p0, p2}, Lca/uhn/hl7v2/util/SegmentFinder;->getCurrentStructure(I)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    .line 129
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    .end local v2    # "i":I
    :cond_3
    :goto_1
    if-nez v0, :cond_4

    .line 137
    new-instance v2, Lca/uhn/hl7v2/HL7Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t find "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " as a direct child"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 139
    :cond_4
    return-object v0
.end method

.method private matches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "candidate"    # Ljava/lang/String;

    .line 166
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const/4 v0, 0x1

    return v0

    .line 170
    :cond_0
    const-string v0, "[\\w\\*\\?]*"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The pattern "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not valid.  Only [\\w\\*\\?]* allowed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_1
    const-string v0, "\\*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ".*"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 174
    const-string v0, "\\?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 176
    invoke-static {p1, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public findGroup(Ljava/lang/String;I)Lca/uhn/hl7v2/model/Group;
    .locals 3
    .param p1, "namePattern"    # Ljava/lang/String;
    .param p2, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 71
    :cond_0
    invoke-direct {p0, p1, p2}, Lca/uhn/hl7v2/util/SegmentFinder;->findStructure(Ljava/lang/String;I)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    .line 72
    .local v0, "s":Lca/uhn/hl7v2/model/Structure;
    const-class v1, Lca/uhn/hl7v2/model/Group;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    move-object v1, v0

    check-cast v1, Lca/uhn/hl7v2/model/Group;

    return-object v1
.end method

.method public findSegment(Ljava/lang/String;I)Lca/uhn/hl7v2/model/Segment;
    .locals 3
    .param p1, "namePattern"    # Ljava/lang/String;
    .param p2, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 58
    const/4 v0, 0x0

    .line 60
    .local v0, "s":Lca/uhn/hl7v2/model/Structure;
    :cond_0
    invoke-direct {p0, p1, p2}, Lca/uhn/hl7v2/util/SegmentFinder;->findStructure(Ljava/lang/String;I)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    .line 61
    const-class v1, Lca/uhn/hl7v2/model/Segment;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    move-object v1, v0

    check-cast v1, Lca/uhn/hl7v2/model/Segment;

    return-object v1
.end method

.method public getGroup(Ljava/lang/String;I)Lca/uhn/hl7v2/model/Group;
    .locals 4
    .param p1, "namePattern"    # Ljava/lang/String;
    .param p2, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 115
    invoke-direct {p0, p1, p2}, Lca/uhn/hl7v2/util/SegmentFinder;->getStructure(Ljava/lang/String;I)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    .line 116
    .local v0, "s":Lca/uhn/hl7v2/model/Structure;
    const-class v1, Lca/uhn/hl7v2/model/Group;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    new-instance v1, Lca/uhn/hl7v2/HL7Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Structure;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " is not a group"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    :cond_0
    move-object v1, v0

    check-cast v1, Lca/uhn/hl7v2/model/Group;

    return-object v1
.end method

.method public getSegment(Ljava/lang/String;I)Lca/uhn/hl7v2/model/Segment;
    .locals 4
    .param p1, "namePattern"    # Ljava/lang/String;
    .param p2, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 104
    invoke-direct {p0, p1, p2}, Lca/uhn/hl7v2/util/SegmentFinder;->getStructure(Ljava/lang/String;I)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    .line 105
    .local v0, "s":Lca/uhn/hl7v2/model/Structure;
    const-class v1, Lca/uhn/hl7v2/model/Segment;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    new-instance v1, Lca/uhn/hl7v2/HL7Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Structure;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " is not a segment"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    :cond_0
    move-object v1, v0

    check-cast v1, Lca/uhn/hl7v2/model/Segment;

    return-object v1
.end method
