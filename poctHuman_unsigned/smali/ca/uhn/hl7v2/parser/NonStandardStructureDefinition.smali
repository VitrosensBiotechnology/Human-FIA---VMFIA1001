.class public Lca/uhn/hl7v2/parser/NonStandardStructureDefinition;
.super Ljava/lang/Object;
.source "NonStandardStructureDefinition.java"

# interfaces
.implements Lca/uhn/hl7v2/parser/IStructureDefinition;


# instance fields
.field private myName:Ljava/lang/String;

.field private myParent:Lca/uhn/hl7v2/parser/IStructureDefinition;

.field private myPosition:I

.field private myPreviousSibling:Lca/uhn/hl7v2/parser/IStructureDefinition;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/parser/IStructureDefinition;Lca/uhn/hl7v2/parser/IStructureDefinition;Ljava/lang/String;I)V
    .locals 2
    .param p1, "theParent"    # Lca/uhn/hl7v2/parser/IStructureDefinition;
    .param p2, "thePreviousSibling"    # Lca/uhn/hl7v2/parser/IStructureDefinition;
    .param p3, "theName"    # Ljava/lang/String;
    .param p4, "thePosition"    # I

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    iput-object p1, p0, Lca/uhn/hl7v2/parser/NonStandardStructureDefinition;->myParent:Lca/uhn/hl7v2/parser/IStructureDefinition;

    .line 56
    iput-object p3, p0, Lca/uhn/hl7v2/parser/NonStandardStructureDefinition;->myName:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lca/uhn/hl7v2/parser/NonStandardStructureDefinition;->myPreviousSibling:Lca/uhn/hl7v2/parser/IStructureDefinition;

    .line 58
    iput p4, p0, Lca/uhn/hl7v2/parser/NonStandardStructureDefinition;->myPosition:I

    .line 59
    return-void

    .line 52
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "theName is missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAllChildNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getAllPossibleFirstChildren()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/parser/StructureDefinition;",
            ">;"
        }
    .end annotation

    .line 79
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFirstChild()Lca/uhn/hl7v2/parser/IStructureDefinition;
    .locals 1

    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFirstSibling()Lca/uhn/hl7v2/parser/IStructureDefinition;
    .locals 1

    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lca/uhn/hl7v2/parser/NonStandardStructureDefinition;->myName:Ljava/lang/String;

    return-object v0
.end method

.method public getNameAsItAppearsInParent()Ljava/lang/String;
    .locals 1

    .line 107
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/NonStandardStructureDefinition;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamesOfAllPossibleFollowingLeaves()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lca/uhn/hl7v2/parser/NonStandardStructureDefinition;->myPreviousSibling:Lca/uhn/hl7v2/parser/IStructureDefinition;

    invoke-interface {v0}, Lca/uhn/hl7v2/parser/IStructureDefinition;->getNamesOfAllPossibleFollowingLeaves()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getNextLeaf()Lca/uhn/hl7v2/parser/IStructureDefinition;
    .locals 1

    .line 121
    iget-object v0, p0, Lca/uhn/hl7v2/parser/NonStandardStructureDefinition;->myPreviousSibling:Lca/uhn/hl7v2/parser/IStructureDefinition;

    invoke-interface {v0}, Lca/uhn/hl7v2/parser/IStructureDefinition;->getNextLeaf()Lca/uhn/hl7v2/parser/IStructureDefinition;

    move-result-object v0

    return-object v0
.end method

.method public getNextSibling()Lca/uhn/hl7v2/parser/IStructureDefinition;
    .locals 1

    .line 128
    iget-object v0, p0, Lca/uhn/hl7v2/parser/NonStandardStructureDefinition;->myPreviousSibling:Lca/uhn/hl7v2/parser/IStructureDefinition;

    invoke-interface {v0}, Lca/uhn/hl7v2/parser/IStructureDefinition;->getNextSibling()Lca/uhn/hl7v2/parser/IStructureDefinition;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lca/uhn/hl7v2/parser/IStructureDefinition;
    .locals 1

    .line 135
    iget-object v0, p0, Lca/uhn/hl7v2/parser/NonStandardStructureDefinition;->myParent:Lca/uhn/hl7v2/parser/IStructureDefinition;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 142
    iget v0, p0, Lca/uhn/hl7v2/parser/NonStandardStructureDefinition;->myPosition:I

    return v0
.end method

.method public hasChildren()Z
    .locals 1

    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public isChoiceElement()Z
    .locals 1

    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public isFinalChildOfParent()Z
    .locals 1

    .line 156
    iget-object v0, p0, Lca/uhn/hl7v2/parser/NonStandardStructureDefinition;->myPreviousSibling:Lca/uhn/hl7v2/parser/IStructureDefinition;

    invoke-interface {v0}, Lca/uhn/hl7v2/parser/IStructureDefinition;->isFinalChildOfParent()Z

    move-result v0

    return v0
.end method

.method public isRepeating()Z
    .locals 1

    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public isRequired()Z
    .locals 1

    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public isSegment()Z
    .locals 1

    .line 177
    const/4 v0, 0x1

    return v0
.end method
