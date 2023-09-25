.class public Lca/uhn/hl7v2/parser/StructureDefinition;
.super Ljava/lang/Object;
.source "StructureDefinition.java"

# interfaces
.implements Lca/uhn/hl7v2/parser/IStructureDefinition;


# instance fields
.field private myAllChildrenNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private myAllFirstLeafNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private myChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lca/uhn/hl7v2/parser/StructureDefinition;",
            ">;"
        }
    .end annotation
.end field

.field private myChoiceElement:Z

.field private myFirstSibling:Lca/uhn/hl7v2/parser/IStructureDefinition;

.field private myFirstSiblingIsSet:Z

.field private myIsFinalChildOfParent:Ljava/lang/Boolean;

.field private myIsRepeating:Z

.field private myIsRequired:Z

.field private myIsSegment:Z

.field private myName:Ljava/lang/String;

.field private myNameAsItAppearsInParent:Ljava/lang/String;

.field private myNamesOfAllPossibleFollowingLeaves:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private myNextLeaf:Lca/uhn/hl7v2/parser/IStructureDefinition;

.field private myNextSibling:Lca/uhn/hl7v2/parser/IStructureDefinition;

.field private myParent:Lca/uhn/hl7v2/parser/IStructureDefinition;

.field private myPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myChildren:Ljava/util/ArrayList;

    .line 64
    return-void
.end method


# virtual methods
.method addChild(Lca/uhn/hl7v2/parser/StructureDefinition;)V
    .locals 1
    .param p1, "theChild"    # Lca/uhn/hl7v2/parser/StructureDefinition;

    .line 71
    iget-object v0, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "theObj"    # Ljava/lang/Object;

    .line 80
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, Lca/uhn/hl7v2/parser/StructureDefinition;

    if-nez v1, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    move-object v1, p1

    check-cast v1, Lca/uhn/hl7v2/parser/StructureDefinition;

    .line 84
    .local v1, "o":Lca/uhn/hl7v2/parser/StructureDefinition;
    iget-object v2, v1, Lca/uhn/hl7v2/parser/StructureDefinition;->myName:Ljava/lang/String;

    iget-object v3, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v1, Lca/uhn/hl7v2/parser/StructureDefinition;->myPosition:I

    iget v3, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myPosition:I

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 81
    .end local v1    # "o":Lca/uhn/hl7v2/parser/StructureDefinition;
    :cond_2
    :goto_0
    return v0
.end method

.method public getAllChildNames()Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myAllChildrenNames:Ljava/util/HashSet;

    if-nez v0, :cond_1

    .line 93
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myAllChildrenNames:Ljava/util/HashSet;

    .line 94
    iget-object v0, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lca/uhn/hl7v2/parser/IStructureDefinition;

    .line 95
    .local v1, "next":Lca/uhn/hl7v2/parser/IStructureDefinition;
    iget-object v2, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myAllChildrenNames:Ljava/util/HashSet;

    invoke-interface {v1}, Lca/uhn/hl7v2/parser/IStructureDefinition;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v2, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myAllChildrenNames:Ljava/util/HashSet;

    invoke-interface {v1}, Lca/uhn/hl7v2/parser/IStructureDefinition;->getAllChildNames()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 96
    .end local v1    # "next":Lca/uhn/hl7v2/parser/IStructureDefinition;
    goto :goto_0

    .line 100
    :cond_1
    :goto_1
    iget-object v0, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myAllChildrenNames:Ljava/util/HashSet;

    return-object v0
.end method

.method public bridge synthetic getAllChildNames()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/StructureDefinition;->getAllChildNames()Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public getAllPossibleFirstChildren()Ljava/util/HashSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myAllFirstLeafNames:Ljava/util/HashSet;

    if-nez v0, :cond_4

    .line 109
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myAllFirstLeafNames:Ljava/util/HashSet;

    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "hasChoice":Z
    iget-object v1, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lca/uhn/hl7v2/parser/IStructureDefinition;

    .line 113
    .local v2, "next":Lca/uhn/hl7v2/parser/IStructureDefinition;
    iget-object v3, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myAllFirstLeafNames:Ljava/util/HashSet;

    invoke-interface {v2}, Lca/uhn/hl7v2/parser/IStructureDefinition;->getAllPossibleFirstChildren()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 115
    invoke-interface {v2}, Lca/uhn/hl7v2/parser/IStructureDefinition;->isChoiceElement()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 116
    const/4 v0, 0x1

    .line 117
    goto :goto_0

    .line 118
    :cond_2
    if-eqz v0, :cond_3

    .line 119
    goto :goto_1

    .line 122
    :cond_3
    invoke-interface {v2}, Lca/uhn/hl7v2/parser/IStructureDefinition;->isRequired()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    nop

    .line 127
    .end local v2    # "next":Lca/uhn/hl7v2/parser/IStructureDefinition;
    :goto_1
    iget-object v1, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myAllFirstLeafNames:Ljava/util/HashSet;

    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/StructureDefinition;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 130
    .end local v0    # "hasChoice":Z
    :cond_4
    iget-object v0, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myAllFirstLeafNames:Ljava/util/HashSet;

    return-object v0
.end method

.method public bridge synthetic getAllPossibleFirstChildren()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/StructureDefinition;->getAllPossibleFirstChildren()Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public getChildren()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lca/uhn/hl7v2/parser/StructureDefinition;",
            ">;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myChildren:Ljava/util/ArrayList;

    return-object v0
.end method

.method public bridge synthetic getChildren()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/StructureDefinition;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getFirstChild()Lca/uhn/hl7v2/parser/IStructureDefinition;
    .locals 2

    .line 146
    iget-object v0, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myChildren:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/parser/IStructureDefinition;

    return-object v0
.end method

.method public getFirstSibling()Lca/uhn/hl7v2/parser/IStructureDefinition;
    .locals 3

    .line 154
    iget-boolean v0, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myFirstSiblingIsSet:Z

    if-nez v0, :cond_2

    .line 155
    iget-object v0, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myParent:Lca/uhn/hl7v2/parser/IStructureDefinition;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 156
    iput-object v1, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myFirstSibling:Lca/uhn/hl7v2/parser/IStructureDefinition;

    .line 157
    goto :goto_0

    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myParent:Lca/uhn/hl7v2/parser/IStructureDefinition;

    invoke-interface {v0}, Lca/uhn/hl7v2/parser/IStructureDefinition;->getChildren()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 158
    iput-object v1, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myFirstSibling:Lca/uhn/hl7v2/parser/IStructureDefinition;

    .line 159
    goto :goto_0

    .line 160
    :cond_1
    iget-object v0, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myParent:Lca/uhn/hl7v2/parser/IStructureDefinition;

    invoke-interface {v0}, Lca/uhn/hl7v2/parser/IStructureDefinition;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/parser/IStructureDefinition;

    iput-object v0, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myFirstSibling:Lca/uhn/hl7v2/parser/IStructureDefinition;

    .line 162
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myFirstSiblingIsSet:Z

    .line 165
    :cond_2
    iget-object v0, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myFirstSibling:Lca/uhn/hl7v2/parser/IStructureDefinition;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myName:Ljava/lang/String;

    return-object v0
.end method

.method public getNameAsItAppearsInParent()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myNameAsItAppearsInParent:Ljava/lang/String;

    return-object v0
.end method

.method public getNamesOfAllPossibleFollowingLeaves()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myNamesOfAllPossibleFollowingLeaves:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myNamesOfAllPossibleFollowingLeaves:Ljava/util/Set;

    return-object v0

    .line 193
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myNamesOfAllPossibleFollowingLeaves:Ljava/util/Set;

    .line 195
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/StructureDefinition;->getNextLeaf()Lca/uhn/hl7v2/parser/IStructureDefinition;

    move-result-object v0

    .line 196
    .local v0, "nextLeaf":Lca/uhn/hl7v2/parser/IStructureDefinition;
    if-eqz v0, :cond_1

    .line 197
    iget-object v1, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myNamesOfAllPossibleFollowingLeaves:Ljava/util/Set;

    invoke-interface {v0}, Lca/uhn/hl7v2/parser/IStructureDefinition;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v1, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myNamesOfAllPossibleFollowingLeaves:Ljava/util/Set;

    invoke-interface {v0}, Lca/uhn/hl7v2/parser/IStructureDefinition;->getNamesOfAllPossibleFollowingLeaves()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 201
    :cond_1
    iget-object v1, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myParent:Lca/uhn/hl7v2/parser/IStructureDefinition;

    .line 202
    .local v1, "parent":Lca/uhn/hl7v2/parser/IStructureDefinition;
    :goto_0
    if-nez v1, :cond_2

    .line 209
    iget-object v2, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myNamesOfAllPossibleFollowingLeaves:Ljava/util/Set;

    return-object v2

    .line 203
    :cond_2
    invoke-interface {v1}, Lca/uhn/hl7v2/parser/IStructureDefinition;->isRepeating()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 204
    iget-object v2, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myNamesOfAllPossibleFollowingLeaves:Ljava/util/Set;

    invoke-interface {v1}, Lca/uhn/hl7v2/parser/IStructureDefinition;->getAllPossibleFirstChildren()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 206
    :cond_3
    invoke-interface {v1}, Lca/uhn/hl7v2/parser/IStructureDefinition;->getParent()Lca/uhn/hl7v2/parser/IStructureDefinition;

    move-result-object v1

    goto :goto_0
.end method

.method public getNextLeaf()Lca/uhn/hl7v2/parser/IStructureDefinition;
    .locals 1

    .line 218
    iget-object v0, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myNextLeaf:Lca/uhn/hl7v2/parser/IStructureDefinition;

    return-object v0
.end method

.method public getNextSibling()Lca/uhn/hl7v2/parser/IStructureDefinition;
    .locals 2

    .line 226
    iget-object v0, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myNextSibling:Lca/uhn/hl7v2/parser/IStructureDefinition;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myNextSibling:Lca/uhn/hl7v2/parser/IStructureDefinition;

    return-object v0

    .line 230
    :cond_0
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/StructureDefinition;->isFinalChildOfParent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Final child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_1
    iget-object v0, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myParent:Lca/uhn/hl7v2/parser/IStructureDefinition;

    invoke-interface {v0}, Lca/uhn/hl7v2/parser/IStructureDefinition;->getChildren()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/parser/IStructureDefinition;

    iput-object v0, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myNextSibling:Lca/uhn/hl7v2/parser/IStructureDefinition;

    .line 235
    iget-object v0, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myNextSibling:Lca/uhn/hl7v2/parser/IStructureDefinition;

    return-object v0
.end method

.method public getParent()Lca/uhn/hl7v2/parser/IStructureDefinition;
    .locals 1

    .line 243
    iget-object v0, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myParent:Lca/uhn/hl7v2/parser/IStructureDefinition;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 251
    iget v0, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myPosition:I

    return v0
.end method

.method public hasChildren()Z
    .locals 1

    .line 259
    iget-object v0, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 268
    iget-object v0, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x11

    mul-int/2addr v1, v0

    iget v0, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myPosition:I

    mul-int/2addr v1, v0

    return v1
.end method

.method public isChoiceElement()Z
    .locals 1

    .line 394
    iget-boolean v0, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myChoiceElement:Z

    return v0
.end method

.method public isFinalChildOfParent()Z
    .locals 3

    .line 276
    iget-object v0, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myIsFinalChildOfParent:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myIsFinalChildOfParent:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 279
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myParent:Lca/uhn/hl7v2/parser/IStructureDefinition;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myPosition:I

    iget-object v2, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myParent:Lca/uhn/hl7v2/parser/IStructureDefinition;

    invoke-interface {v2}, Lca/uhn/hl7v2/parser/IStructureDefinition;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-eq v0, v2, :cond_1

    const/4 v1, 0x0

    nop

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myIsFinalChildOfParent:Ljava/lang/Boolean;

    .line 280
    iget-object v0, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myIsFinalChildOfParent:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isRepeating()Z
    .locals 1

    .line 288
    iget-boolean v0, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myIsRepeating:Z

    return v0
.end method

.method public isRequired()Z
    .locals 1

    .line 296
    iget-boolean v0, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myIsRequired:Z

    return v0
.end method

.method public isSegment()Z
    .locals 1

    .line 304
    iget-boolean v0, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myIsSegment:Z

    return v0
.end method

.method public setChoiceElement(Z)V
    .locals 0
    .param p1, "theChoiceElement"    # Z

    .line 386
    iput-boolean p1, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myChoiceElement:Z

    .line 387
    return-void
.end method

.method setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "theName"    # Ljava/lang/String;

    .line 312
    iput-object p1, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myName:Ljava/lang/String;

    .line 313
    return-void
.end method

.method setNameAsItAppearsInParent(Ljava/lang/String;)V
    .locals 0
    .param p1, "theName"    # Ljava/lang/String;

    .line 320
    iput-object p1, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myNameAsItAppearsInParent:Ljava/lang/String;

    .line 321
    return-void
.end method

.method setNextLeaf(Lca/uhn/hl7v2/parser/IStructureDefinition;)V
    .locals 0
    .param p1, "theNextLeaf"    # Lca/uhn/hl7v2/parser/IStructureDefinition;

    .line 328
    iput-object p1, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myNextLeaf:Lca/uhn/hl7v2/parser/IStructureDefinition;

    .line 329
    return-void
.end method

.method setParent(Lca/uhn/hl7v2/parser/IStructureDefinition;)V
    .locals 0
    .param p1, "theParent"    # Lca/uhn/hl7v2/parser/IStructureDefinition;

    .line 336
    iput-object p1, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myParent:Lca/uhn/hl7v2/parser/IStructureDefinition;

    .line 337
    return-void
.end method

.method setPosition(I)V
    .locals 0
    .param p1, "thePosition"    # I

    .line 344
    iput p1, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myPosition:I

    .line 345
    return-void
.end method

.method setRepeating(Z)V
    .locals 0
    .param p1, "theIsRepeating"    # Z

    .line 352
    iput-boolean p1, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myIsRepeating:Z

    .line 353
    return-void
.end method

.method setRequired(Z)V
    .locals 0
    .param p1, "theIsRequired"    # Z

    .line 360
    iput-boolean p1, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myIsRequired:Z

    .line 361
    return-void
.end method

.method setSegment(Z)V
    .locals 0
    .param p1, "theIsSegment"    # Z

    .line 368
    iput-boolean p1, p0, Lca/uhn/hl7v2/parser/StructureDefinition;->myIsSegment:Z

    .line 369
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StructureDefinition["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/StructureDefinition;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
