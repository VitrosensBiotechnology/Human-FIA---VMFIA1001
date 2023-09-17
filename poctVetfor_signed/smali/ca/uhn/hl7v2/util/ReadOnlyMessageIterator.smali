.class public Lca/uhn/hl7v2/util/ReadOnlyMessageIterator;
.super Ljava/lang/Object;
.source "ReadOnlyMessageIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lca/uhn/hl7v2/model/Structure;",
        ">;"
    }
.end annotation


# instance fields
.field private myRemaining:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/model/Structure;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Group;)V
    .locals 2
    .param p1, "theRoot"    # Lca/uhn/hl7v2/model/Group;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lca/uhn/hl7v2/util/ReadOnlyMessageIterator;->myRemaining:Ljava/util/List;

    .line 61
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/util/ReadOnlyMessageIterator;->addChildren(Lca/uhn/hl7v2/model/Group;)V

    .line 62
    return-void
.end method

.method private addChildren(Lca/uhn/hl7v2/model/Group;)V
    .locals 6
    .param p1, "theParent"    # Lca/uhn/hl7v2/model/Group;

    .line 113
    invoke-interface {p1}, Lca/uhn/hl7v2/model/Group;->getNames()[Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "names":[Ljava/lang/String;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 114
    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_0

    .line 124
    .end local v1    # "i":I
    return-void

    .line 116
    .restart local v1    # "i":I
    :cond_0
    :try_start_0
    aget-object v2, v0, v1

    invoke-interface {p1, v2}, Lca/uhn/hl7v2/model/Group;->getAll(Ljava/lang/String;)[Lca/uhn/hl7v2/model/Structure;

    move-result-object v2

    .line 117
    .local v2, "reps":[Lca/uhn/hl7v2/model/Structure;
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    .line 117
    .local v3, "j":I
    :goto_1
    if-gez v3, :cond_1

    .line 120
    .end local v2    # "reps":[Lca/uhn/hl7v2/model/Structure;
    .end local v3    # "j":I
    nop

    .line 114
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 118
    .restart local v2    # "reps":[Lca/uhn/hl7v2/model/Structure;
    .restart local v3    # "j":I
    :cond_1
    iget-object v4, p0, Lca/uhn/hl7v2/util/ReadOnlyMessageIterator;->myRemaining:Ljava/util/List;

    aget-object v5, v2, v3

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 120
    .end local v2    # "reps":[Lca/uhn/hl7v2/model/Structure;
    .end local v3    # "j":I
    :catch_0
    move-exception v2

    .line 121
    .local v2, "e":Lca/uhn/hl7v2/HL7Exception;
    new-instance v3, Ljava/lang/Error;

    const-string v4, "Internal error: an invalid child name was obtained from its parent."

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static createPopulatedSegmentIterator(Lca/uhn/hl7v2/model/Group;)Ljava/util/Iterator;
    .locals 1
    .param p0, "theRoot"    # Lca/uhn/hl7v2/model/Group;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/model/Group;",
            ")",
            "Ljava/util/Iterator<",
            "Lca/uhn/hl7v2/model/Structure;",
            ">;"
        }
    .end annotation

    .line 70
    const-class v0, Lca/uhn/hl7v2/model/Segment;

    invoke-static {p0, v0}, Lca/uhn/hl7v2/util/ReadOnlyMessageIterator;->createPopulatedStructureIterator(Lca/uhn/hl7v2/model/Group;Ljava/lang/Class;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static createPopulatedStructureIterator(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/util/FilterIterator$Predicate;)Ljava/util/Iterator;
    .locals 4
    .param p0, "theRoot"    # Lca/uhn/hl7v2/model/Group;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/model/Group;",
            "Lca/uhn/hl7v2/util/FilterIterator$Predicate<",
            "Lca/uhn/hl7v2/model/Structure;",
            ">;)",
            "Ljava/util/Iterator<",
            "Lca/uhn/hl7v2/model/Structure;",
            ">;"
        }
    .end annotation

    .line 97
    .local p1, "structureFilter":Lca/uhn/hl7v2/util/FilterIterator$Predicate;, "Lca/uhn/hl7v2/util/FilterIterator$Predicate<Lca/uhn/hl7v2/model/Structure;>;"
    new-instance v0, Lca/uhn/hl7v2/util/ReadOnlyMessageIterator;

    invoke-direct {v0, p0}, Lca/uhn/hl7v2/util/ReadOnlyMessageIterator;-><init>(Lca/uhn/hl7v2/model/Group;)V

    .line 98
    .local v0, "allIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lca/uhn/hl7v2/model/Structure;>;"
    new-instance v1, Lca/uhn/hl7v2/util/FilterIterator;

    invoke-direct {v1, v0, p1}, Lca/uhn/hl7v2/util/FilterIterator;-><init>(Ljava/util/Iterator;Lca/uhn/hl7v2/util/FilterIterator$Predicate;)V

    .line 100
    .local v1, "structureIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lca/uhn/hl7v2/model/Structure;>;"
    new-instance v2, Lca/uhn/hl7v2/util/ReadOnlyMessageIterator$1;

    invoke-direct {v2}, Lca/uhn/hl7v2/util/ReadOnlyMessageIterator$1;-><init>()V

    .line 109
    .local v2, "populatedOnly":Lca/uhn/hl7v2/util/FilterIterator$Predicate;, "Lca/uhn/hl7v2/util/FilterIterator$Predicate<Lca/uhn/hl7v2/model/Structure;>;"
    new-instance v3, Lca/uhn/hl7v2/util/FilterIterator;

    invoke-direct {v3, v1, v2}, Lca/uhn/hl7v2/util/FilterIterator;-><init>(Ljava/util/Iterator;Lca/uhn/hl7v2/util/FilterIterator$Predicate;)V

    return-object v3
.end method

.method public static createPopulatedStructureIterator(Lca/uhn/hl7v2/model/Group;Ljava/lang/Class;)Ljava/util/Iterator;
    .locals 1
    .param p0, "theRoot"    # Lca/uhn/hl7v2/model/Group;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/model/Group;",
            "Ljava/lang/Class<",
            "+",
            "Lca/uhn/hl7v2/model/Structure;",
            ">;)",
            "Ljava/util/Iterator<",
            "Lca/uhn/hl7v2/model/Structure;",
            ">;"
        }
    .end annotation

    .line 79
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Structure;>;"
    new-instance v0, Lca/uhn/hl7v2/util/StructurePredicate;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/util/StructurePredicate;-><init>(Ljava/lang/Class;)V

    invoke-static {p0, v0}, Lca/uhn/hl7v2/util/ReadOnlyMessageIterator;->createPopulatedStructureIterator(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/util/FilterIterator$Predicate;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static createPopulatedStructureIterator(Lca/uhn/hl7v2/model/Group;Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1
    .param p0, "theRoot"    # Lca/uhn/hl7v2/model/Group;
    .param p1, "structureName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/model/Group;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "Lca/uhn/hl7v2/model/Structure;",
            ">;"
        }
    .end annotation

    .line 88
    new-instance v0, Lca/uhn/hl7v2/util/StructureNamePredicate;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/util/StructureNamePredicate;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lca/uhn/hl7v2/util/ReadOnlyMessageIterator;->createPopulatedStructureIterator(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/util/FilterIterator$Predicate;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 130
    iget-object v0, p0, Lca/uhn/hl7v2/util/ReadOnlyMessageIterator;->myRemaining:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public next()Lca/uhn/hl7v2/model/Structure;
    .locals 2

    .line 137
    invoke-virtual {p0}, Lca/uhn/hl7v2/util/ReadOnlyMessageIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more nodes in message"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/util/ReadOnlyMessageIterator;->myRemaining:Ljava/util/List;

    iget-object v1, p0, Lca/uhn/hl7v2/util/ReadOnlyMessageIterator;->myRemaining:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Structure;

    .line 143
    .local v0, "next":Lca/uhn/hl7v2/model/Structure;
    instance-of v1, v0, Lca/uhn/hl7v2/model/Group;

    if-eqz v1, :cond_1

    .line 144
    move-object v1, v0

    check-cast v1, Lca/uhn/hl7v2/model/Group;

    invoke-direct {p0, v1}, Lca/uhn/hl7v2/util/ReadOnlyMessageIterator;->addChildren(Lca/uhn/hl7v2/model/Group;)V

    .line 147
    :cond_1
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lca/uhn/hl7v2/util/ReadOnlyMessageIterator;->next()Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 154
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t remove a node from a message"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
