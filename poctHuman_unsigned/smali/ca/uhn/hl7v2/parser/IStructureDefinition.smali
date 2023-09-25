.class public interface abstract Lca/uhn/hl7v2/parser/IStructureDefinition;
.super Ljava/lang/Object;
.source "IStructureDefinition.java"


# virtual methods
.method public abstract getAllChildNames()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllPossibleFirstChildren()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getChildren()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/parser/StructureDefinition;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFirstChild()Lca/uhn/hl7v2/parser/IStructureDefinition;
.end method

.method public abstract getFirstSibling()Lca/uhn/hl7v2/parser/IStructureDefinition;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNameAsItAppearsInParent()Ljava/lang/String;
.end method

.method public abstract getNamesOfAllPossibleFollowingLeaves()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNextLeaf()Lca/uhn/hl7v2/parser/IStructureDefinition;
.end method

.method public abstract getNextSibling()Lca/uhn/hl7v2/parser/IStructureDefinition;
.end method

.method public abstract getParent()Lca/uhn/hl7v2/parser/IStructureDefinition;
.end method

.method public abstract getPosition()I
.end method

.method public abstract hasChildren()Z
.end method

.method public abstract isChoiceElement()Z
.end method

.method public abstract isFinalChildOfParent()Z
.end method

.method public abstract isRepeating()Z
.end method

.method public abstract isRequired()Z
.end method

.method public abstract isSegment()Z
.end method
