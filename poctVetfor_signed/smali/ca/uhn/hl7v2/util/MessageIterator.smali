.class public Lca/uhn/hl7v2/util/MessageIterator;
.super Ljava/lang/Object;
.source "MessageIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lca/uhn/hl7v2/util/MessageIterator$Index;,
        Lca/uhn/hl7v2/util/MessageIterator$Position;
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
.field static final synthetic $assertionsDisabled:Z

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private currentStructure:Lca/uhn/hl7v2/model/Structure;

.field private direction:Ljava/lang/String;

.field private handleUnexpectedSegments:Z

.field private next:Lca/uhn/hl7v2/util/MessageIterator$Position;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    nop

    .line 36
    const-class v0, Lca/uhn/hl7v2/util/MessageIterator;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/util/MessageIterator;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/model/Structure;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "start"    # Lca/uhn/hl7v2/model/Structure;
    .param p2, "direction"    # Ljava/lang/String;
    .param p3, "handleUnexpectedSegments"    # Z

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lca/uhn/hl7v2/util/MessageIterator;->currentStructure:Lca/uhn/hl7v2/model/Structure;

    .line 50
    iput-object p2, p0, Lca/uhn/hl7v2/util/MessageIterator;->direction:Ljava/lang/String;

    .line 51
    iput-boolean p3, p0, Lca/uhn/hl7v2/util/MessageIterator;->handleUnexpectedSegments:Z

    .line 52
    return-void
.end method

.method private clearNext()V
    .locals 1

    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Lca/uhn/hl7v2/util/MessageIterator;->next:Lca/uhn/hl7v2/util/MessageIterator$Position;

    .line 335
    return-void
.end method

.method public static contains(Lca/uhn/hl7v2/model/Structure;Ljava/lang/String;ZZ)Z
    .locals 8
    .param p0, "s"    # Lca/uhn/hl7v2/model/Structure;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "firstDescendentsOnly"    # Z
    .param p3, "upToFirstRequired"    # Z

    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, "contains":Z
    const-class v1, Lca/uhn/hl7v2/model/Segment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    invoke-interface {p0}, Lca/uhn/hl7v2/model/Structure;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    .line 244
    goto :goto_1

    .line 245
    :cond_0
    move-object v1, p0

    check-cast v1, Lca/uhn/hl7v2/model/Group;

    .line 246
    .local v1, "g":Lca/uhn/hl7v2/model/Group;
    invoke-interface {v1}, Lca/uhn/hl7v2/model/Group;->getNames()[Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "names":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 247
    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_4

    if-eqz v0, :cond_1

    .line 247
    .end local v1    # "g":Lca/uhn/hl7v2/model/Group;
    .end local v2    # "names":[Ljava/lang/String;
    .end local v3    # "i":I
    goto :goto_1

    .line 249
    .restart local v1    # "g":Lca/uhn/hl7v2/model/Group;
    .restart local v2    # "names":[Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_1
    :try_start_0
    aget-object v4, v2, v3

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Lca/uhn/hl7v2/model/Group;->get(Ljava/lang/String;I)Lca/uhn/hl7v2/model/Structure;

    move-result-object v4

    invoke-static {v4, p1, p2, p3}, Lca/uhn/hl7v2/util/MessageIterator;->contains(Lca/uhn/hl7v2/model/Structure;Ljava/lang/String;ZZ)Z

    move-result v4

    move v0, v4

    .line 250
    if-eqz p2, :cond_2

    goto :goto_1

    .line 251
    :cond_2
    if-eqz p3, :cond_3

    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Lca/uhn/hl7v2/model/Group;->isRequired(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_3

    goto :goto_1

    .line 247
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 252
    :catch_0
    move-exception v4

    .line 253
    .local v4, "e":Lca/uhn/hl7v2/HL7Exception;
    new-instance v5, Ljava/lang/Error;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "HL7Exception due to bad index: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lca/uhn/hl7v2/HL7Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v5

    .line 257
    .end local v1    # "g":Lca/uhn/hl7v2/model/Group;
    .end local v2    # "names":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "e":Lca/uhn/hl7v2/HL7Exception;
    :cond_4
    :goto_1
    return v0
.end method

.method public static getIndex(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/model/Structure;)Lca/uhn/hl7v2/util/MessageIterator$Index;
    .locals 7
    .param p0, "parent"    # Lca/uhn/hl7v2/model/Group;
    .param p1, "child"    # Lca/uhn/hl7v2/model/Structure;

    .line 342
    const/4 v0, 0x0

    .line 343
    .local v0, "index":Lca/uhn/hl7v2/util/MessageIterator$Index;
    invoke-interface {p0}, Lca/uhn/hl7v2/model/Group;->getNames()[Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, "names":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 344
    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-lt v2, v3, :cond_0

    .line 344
    .end local v2    # "i":I
    goto :goto_2

    .line 345
    .restart local v2    # "i":I
    :cond_0
    aget-object v3, v1, v2

    invoke-interface {p1}, Lca/uhn/hl7v2/model/Structure;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 347
    :try_start_0
    aget-object v3, v1, v2

    invoke-interface {p0, v3}, Lca/uhn/hl7v2/model/Group;->getAll(Ljava/lang/String;)[Lca/uhn/hl7v2/model/Structure;

    move-result-object v3

    .line 348
    .local v3, "reps":[Lca/uhn/hl7v2/model/Structure;
    const/4 v4, 0x0

    .line 348
    .local v4, "j":I
    :goto_1
    array-length v5, v3

    if-lt v4, v5, :cond_1

    .line 354
    .end local v3    # "reps":[Lca/uhn/hl7v2/model/Structure;
    .end local v4    # "j":I
    goto :goto_3

    .line 349
    .restart local v3    # "reps":[Lca/uhn/hl7v2/model/Structure;
    .restart local v4    # "j":I
    :cond_1
    aget-object v5, v3, v4

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 350
    new-instance v5, Lca/uhn/hl7v2/util/MessageIterator$Index;

    aget-object v6, v1, v2

    invoke-direct {v5, v6, v4}, Lca/uhn/hl7v2/util/MessageIterator$Index;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    .line 351
    nop

    .line 360
    .end local v2    # "i":I
    .end local v3    # "reps":[Lca/uhn/hl7v2/model/Structure;
    .end local v4    # "j":I
    :goto_2
    return-object v0

    .line 348
    .restart local v2    # "i":I
    .restart local v3    # "reps":[Lca/uhn/hl7v2/model/Structure;
    .restart local v4    # "j":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 354
    .end local v3    # "reps":[Lca/uhn/hl7v2/model/Structure;
    .end local v4    # "j":I
    :catch_0
    move-exception v3

    .line 355
    .local v3, "e":Lca/uhn/hl7v2/HL7Exception;
    sget-object v4, Lca/uhn/hl7v2/util/MessageIterator;->log:Lorg/slf4j/Logger;

    invoke-virtual {v3}, Lca/uhn/hl7v2/HL7Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 356
    new-instance v4, Ljava/lang/Error;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Internal HL7Exception finding structure index: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lca/uhn/hl7v2/HL7Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 344
    .end local v3    # "e":Lca/uhn/hl7v2/HL7Exception;
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private groupNext(Lca/uhn/hl7v2/model/Group;)V
    .locals 3
    .param p1, "current"    # Lca/uhn/hl7v2/model/Group;

    .line 115
    new-instance v0, Lca/uhn/hl7v2/util/MessageIterator$Position;

    invoke-interface {p1}, Lca/uhn/hl7v2/model/Group;->getNames()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {v0, p1, v1, v2}, Lca/uhn/hl7v2/util/MessageIterator$Position;-><init>(Lca/uhn/hl7v2/model/Group;Ljava/lang/String;I)V

    iput-object v0, p0, Lca/uhn/hl7v2/util/MessageIterator;->next:Lca/uhn/hl7v2/util/MessageIterator$Position;

    .line 116
    return-void
.end method

.method public static isLast(Lca/uhn/hl7v2/util/MessageIterator$Position;)Z
    .locals 3
    .param p0, "p"    # Lca/uhn/hl7v2/util/MessageIterator$Position;

    .line 265
    iget-object v0, p0, Lca/uhn/hl7v2/util/MessageIterator$Position;->parent:Lca/uhn/hl7v2/model/Group;

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Group;->getNames()[Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "names":[Ljava/lang/String;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    iget-object v2, p0, Lca/uhn/hl7v2/util/MessageIterator$Position;->index:Lca/uhn/hl7v2/util/MessageIterator$Index;

    iget-object v2, v2, Lca/uhn/hl7v2/util/MessageIterator$Index;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static matchExistsAfterPosition(Lca/uhn/hl7v2/util/MessageIterator$Position;Ljava/lang/String;ZZ)Z
    .locals 6
    .param p0, "pos"    # Lca/uhn/hl7v2/util/MessageIterator$Position;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "firstDescendentsOnly"    # Z
    .param p3, "upToFirstRequired"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 185
    const/4 v0, 0x0

    .line 188
    .local v0, "matchExists":Z
    iget-object v1, p0, Lca/uhn/hl7v2/util/MessageIterator$Position;->parent:Lca/uhn/hl7v2/model/Group;

    iget-object v2, p0, Lca/uhn/hl7v2/util/MessageIterator$Position;->index:Lca/uhn/hl7v2/util/MessageIterator$Index;

    iget-object v2, v2, Lca/uhn/hl7v2/util/MessageIterator$Index;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Lca/uhn/hl7v2/model/Group;->isRepeating(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lca/uhn/hl7v2/util/MessageIterator$Position;->parent:Lca/uhn/hl7v2/model/Group;

    iget-object v2, p0, Lca/uhn/hl7v2/util/MessageIterator$Position;->index:Lca/uhn/hl7v2/util/MessageIterator$Index;

    iget-object v2, v2, Lca/uhn/hl7v2/util/MessageIterator$Index;->name:Ljava/lang/String;

    iget-object v3, p0, Lca/uhn/hl7v2/util/MessageIterator$Position;->index:Lca/uhn/hl7v2/util/MessageIterator$Index;

    iget v3, v3, Lca/uhn/hl7v2/util/MessageIterator$Index;->rep:I

    invoke-interface {v1, v2, v3}, Lca/uhn/hl7v2/model/Group;->get(Ljava/lang/String;I)Lca/uhn/hl7v2/model/Structure;

    move-result-object v1

    .line 190
    .local v1, "s":Lca/uhn/hl7v2/model/Structure;
    invoke-static {v1, p1, p2, p3}, Lca/uhn/hl7v2/util/MessageIterator;->contains(Lca/uhn/hl7v2/model/Structure;Ljava/lang/String;ZZ)Z

    move-result v0

    .line 194
    .end local v1    # "s":Lca/uhn/hl7v2/model/Structure;
    :cond_0
    if-nez v0, :cond_4

    .line 195
    iget-object v1, p0, Lca/uhn/hl7v2/util/MessageIterator$Position;->parent:Lca/uhn/hl7v2/model/Group;

    invoke-interface {v1}, Lca/uhn/hl7v2/model/Group;->getNames()[Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "siblings":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 197
    .local v2, "after":Z
    const/4 v3, 0x0

    .line 197
    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_4

    if-eqz v0, :cond_1

    .line 197
    .end local v1    # "siblings":[Ljava/lang/String;
    .end local v2    # "after":Z
    .end local v3    # "i":I
    goto :goto_1

    .line 198
    .restart local v1    # "siblings":[Ljava/lang/String;
    .restart local v2    # "after":Z
    .restart local v3    # "i":I
    :cond_1
    if-eqz v2, :cond_2

    .line 199
    iget-object v4, p0, Lca/uhn/hl7v2/util/MessageIterator$Position;->parent:Lca/uhn/hl7v2/model/Group;

    aget-object v5, v1, v3

    invoke-interface {v4, v5}, Lca/uhn/hl7v2/model/Group;->get(Ljava/lang/String;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v4

    invoke-static {v4, p1, p2, p3}, Lca/uhn/hl7v2/util/MessageIterator;->contains(Lca/uhn/hl7v2/model/Structure;Ljava/lang/String;ZZ)Z

    move-result v0

    .line 200
    if-eqz p3, :cond_2

    iget-object v4, p0, Lca/uhn/hl7v2/util/MessageIterator$Position;->parent:Lca/uhn/hl7v2/model/Group;

    aget-object v5, v1, v3

    invoke-interface {v4, v5}, Lca/uhn/hl7v2/model/Group;->isRequired(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 200
    .end local v1    # "siblings":[Ljava/lang/String;
    .end local v2    # "after":Z
    .end local v3    # "i":I
    goto :goto_1

    .line 202
    .restart local v1    # "siblings":[Ljava/lang/String;
    .restart local v2    # "after":Z
    .restart local v3    # "i":I
    :cond_2
    iget-object v4, p0, Lca/uhn/hl7v2/util/MessageIterator$Position;->index:Lca/uhn/hl7v2/util/MessageIterator$Index;

    iget-object v4, v4, Lca/uhn/hl7v2/util/MessageIterator$Index;->name:Ljava/lang/String;

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    .line 197
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 207
    .end local v1    # "siblings":[Ljava/lang/String;
    .end local v2    # "after":Z
    .end local v3    # "i":I
    :cond_4
    :goto_1
    if-nez v0, :cond_5

    const-class v1, Lca/uhn/hl7v2/model/Message;

    iget-object v2, p0, Lca/uhn/hl7v2/util/MessageIterator$Position;->parent:Lca/uhn/hl7v2/model/Group;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 208
    iget-object v1, p0, Lca/uhn/hl7v2/util/MessageIterator$Position;->parent:Lca/uhn/hl7v2/model/Group;

    invoke-interface {v1}, Lca/uhn/hl7v2/model/Group;->getParent()Lca/uhn/hl7v2/model/Group;

    move-result-object v1

    .line 209
    .local v1, "grandparent":Lca/uhn/hl7v2/model/Group;
    new-instance v2, Lca/uhn/hl7v2/util/MessageIterator$Position;

    iget-object v3, p0, Lca/uhn/hl7v2/util/MessageIterator$Position;->parent:Lca/uhn/hl7v2/model/Group;

    invoke-static {v1, v3}, Lca/uhn/hl7v2/util/MessageIterator;->getIndex(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/model/Structure;)Lca/uhn/hl7v2/util/MessageIterator$Index;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lca/uhn/hl7v2/util/MessageIterator$Position;-><init>(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/util/MessageIterator$Index;)V

    .line 210
    .local v2, "parentPos":Lca/uhn/hl7v2/util/MessageIterator$Position;
    invoke-static {v2, p1, p2, p3}, Lca/uhn/hl7v2/util/MessageIterator;->matchExistsAfterPosition(Lca/uhn/hl7v2/util/MessageIterator$Position;Ljava/lang/String;ZZ)Z

    move-result v0

    .line 212
    .end local v1    # "grandparent":Lca/uhn/hl7v2/model/Group;
    .end local v2    # "parentPos":Lca/uhn/hl7v2/util/MessageIterator$Position;
    :cond_5
    sget-object v1, Lca/uhn/hl7v2/util/MessageIterator;->log:Lorg/slf4j/Logger;

    const-string v2, "Match exists after position {} for {}? {}"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    return v0
.end method

.method private newSegment(Lca/uhn/hl7v2/model/Group;Ljava/lang/String;)V
    .locals 4
    .param p1, "parent"    # Lca/uhn/hl7v2/model/Group;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 221
    sget-object v0, Lca/uhn/hl7v2/util/MessageIterator;->log:Lorg/slf4j/Logger;

    const-string v1, "MessageIterator creating new segment: {}"

    invoke-interface {v0, v1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 222
    invoke-interface {p1, p2}, Lca/uhn/hl7v2/model/Group;->addNonstandardSegment(Ljava/lang/String;)Ljava/lang/String;

    .line 223
    new-instance v0, Lca/uhn/hl7v2/util/MessageIterator$Position;

    invoke-interface {p1}, Lca/uhn/hl7v2/model/Group;->getNames()[Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lca/uhn/hl7v2/model/Group;->getNames()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-direct {v0, p1, v1, v3}, Lca/uhn/hl7v2/util/MessageIterator$Position;-><init>(Lca/uhn/hl7v2/model/Group;Ljava/lang/String;I)V

    iput-object v0, p0, Lca/uhn/hl7v2/util/MessageIterator;->next:Lca/uhn/hl7v2/util/MessageIterator$Position;

    .line 224
    return-void
.end method

.method private nextFromGroupEnd(Lca/uhn/hl7v2/util/MessageIterator$Position;Ljava/lang/String;Z)Z
    .locals 9
    .param p1, "currPos"    # Lca/uhn/hl7v2/util/MessageIterator$Position;
    .param p2, "direction"    # Ljava/lang/String;
    .param p3, "makeNewSegmentIfNeeded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 142
    nop

    .line 143
    const/4 v0, 0x1

    .line 148
    .local v0, "nextExists":Z
    if-nez p3, :cond_0

    const-class v1, Lca/uhn/hl7v2/model/Message;

    iget-object v2, p1, Lca/uhn/hl7v2/util/MessageIterator$Position;->parent:Lca/uhn/hl7v2/model/Group;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    const/4 v0, 0x0

    .line 150
    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    invoke-static {p1, p2, v2, v1}, Lca/uhn/hl7v2/util/MessageIterator;->matchExistsAfterPosition(Lca/uhn/hl7v2/util/MessageIterator$Position;Ljava/lang/String;ZZ)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 166
    :cond_1
    iget-object v1, p1, Lca/uhn/hl7v2/util/MessageIterator$Position;->parent:Lca/uhn/hl7v2/model/Group;

    invoke-direct {p0, v1, p2}, Lca/uhn/hl7v2/util/MessageIterator;->newSegment(Lca/uhn/hl7v2/model/Group;Ljava/lang/String;)V

    goto :goto_1

    .line 151
    :cond_2
    :goto_0
    iget-object v3, p1, Lca/uhn/hl7v2/util/MessageIterator$Position;->parent:Lca/uhn/hl7v2/model/Group;

    invoke-interface {v3}, Lca/uhn/hl7v2/model/Group;->getParent()Lca/uhn/hl7v2/model/Group;

    move-result-object v3

    .line 152
    .local v3, "grandparent":Lca/uhn/hl7v2/model/Group;
    iget-object v4, p1, Lca/uhn/hl7v2/util/MessageIterator$Position;->parent:Lca/uhn/hl7v2/model/Group;

    invoke-static {v3, v4}, Lca/uhn/hl7v2/util/MessageIterator;->getIndex(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/model/Structure;)Lca/uhn/hl7v2/util/MessageIterator$Index;

    move-result-object v4

    .line 153
    .local v4, "parentIndex":Lca/uhn/hl7v2/util/MessageIterator$Index;
    new-instance v5, Lca/uhn/hl7v2/util/MessageIterator$Position;

    invoke-direct {v5, v3, v4}, Lca/uhn/hl7v2/util/MessageIterator$Position;-><init>(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/util/MessageIterator$Index;)V

    .line 156
    .local v5, "parentPos":Lca/uhn/hl7v2/util/MessageIterator$Position;
    :try_start_0
    iget-object v6, v5, Lca/uhn/hl7v2/util/MessageIterator$Position;->parent:Lca/uhn/hl7v2/model/Group;

    iget-object v7, v5, Lca/uhn/hl7v2/util/MessageIterator$Position;->index:Lca/uhn/hl7v2/util/MessageIterator$Index;

    iget-object v7, v7, Lca/uhn/hl7v2/util/MessageIterator$Index;->name:Ljava/lang/String;

    invoke-interface {v6, v7}, Lca/uhn/hl7v2/model/Group;->isRepeating(Ljava/lang/String;)Z

    move-result v6

    .line 157
    .local v6, "parentRepeats":Z
    if-eqz v6, :cond_3

    iget-object v7, v5, Lca/uhn/hl7v2/util/MessageIterator$Position;->parent:Lca/uhn/hl7v2/model/Group;

    iget-object v8, v5, Lca/uhn/hl7v2/util/MessageIterator$Position;->index:Lca/uhn/hl7v2/util/MessageIterator$Index;

    iget-object v8, v8, Lca/uhn/hl7v2/util/MessageIterator$Index;->name:Ljava/lang/String;

    invoke-interface {v7, v8, v2}, Lca/uhn/hl7v2/model/Group;->get(Ljava/lang/String;I)Lca/uhn/hl7v2/model/Structure;

    move-result-object v7

    invoke-static {v7, p2, v2, v1}, Lca/uhn/hl7v2/util/MessageIterator;->contains(Lca/uhn/hl7v2/model/Structure;Ljava/lang/String;ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 158
    invoke-direct {p0, v5}, Lca/uhn/hl7v2/util/MessageIterator;->nextRep(Lca/uhn/hl7v2/util/MessageIterator$Position;)V

    .line 159
    goto :goto_1

    .line 160
    :cond_3
    invoke-direct {p0, v5, p2, p3}, Lca/uhn/hl7v2/util/MessageIterator;->nextPosition(Lca/uhn/hl7v2/util/MessageIterator$Position;Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 162
    .end local v6    # "parentRepeats":Z
    nop

    .line 168
    .end local v3    # "grandparent":Lca/uhn/hl7v2/model/Group;
    .end local v4    # "parentIndex":Lca/uhn/hl7v2/util/MessageIterator$Index;
    .end local v5    # "parentPos":Lca/uhn/hl7v2/util/MessageIterator$Position;
    :goto_1
    return v0

    .line 162
    .restart local v3    # "grandparent":Lca/uhn/hl7v2/model/Group;
    .restart local v4    # "parentIndex":Lca/uhn/hl7v2/util/MessageIterator$Index;
    .restart local v5    # "parentPos":Lca/uhn/hl7v2/util/MessageIterator$Position;
    :catch_0
    move-exception v1

    .line 163
    .local v1, "e":Lca/uhn/hl7v2/HL7Exception;
    new-instance v2, Ljava/lang/Error;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "HL7Exception arising from bad index: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lca/uhn/hl7v2/HL7Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private nextPosition(Lca/uhn/hl7v2/util/MessageIterator$Position;Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "currPos"    # Lca/uhn/hl7v2/util/MessageIterator$Position;
    .param p2, "direction"    # Ljava/lang/String;
    .param p3, "makeNewSegmentIfNeeded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 131
    const/4 v0, 0x1

    .line 132
    .local v0, "nextExists":Z
    invoke-static {p1}, Lca/uhn/hl7v2/util/MessageIterator;->isLast(Lca/uhn/hl7v2/util/MessageIterator$Position;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    invoke-direct {p0, p1, p2, p3}, Lca/uhn/hl7v2/util/MessageIterator;->nextFromGroupEnd(Lca/uhn/hl7v2/util/MessageIterator$Position;Ljava/lang/String;Z)Z

    move-result v0

    .line 134
    goto :goto_0

    .line 135
    :cond_0
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/util/MessageIterator;->nextSibling(Lca/uhn/hl7v2/util/MessageIterator$Position;)V

    .line 137
    :goto_0
    return v0
.end method

.method private nextRep(Lca/uhn/hl7v2/util/MessageIterator$Position;)V
    .locals 4
    .param p1, "current"    # Lca/uhn/hl7v2/util/MessageIterator$Position;

    .line 122
    new-instance v0, Lca/uhn/hl7v2/util/MessageIterator$Position;

    iget-object v1, p1, Lca/uhn/hl7v2/util/MessageIterator$Position;->parent:Lca/uhn/hl7v2/model/Group;

    iget-object v2, p1, Lca/uhn/hl7v2/util/MessageIterator$Position;->index:Lca/uhn/hl7v2/util/MessageIterator$Index;

    iget-object v2, v2, Lca/uhn/hl7v2/util/MessageIterator$Index;->name:Ljava/lang/String;

    iget-object v3, p1, Lca/uhn/hl7v2/util/MessageIterator$Position;->index:Lca/uhn/hl7v2/util/MessageIterator$Index;

    iget v3, v3, Lca/uhn/hl7v2/util/MessageIterator$Index;->rep:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lca/uhn/hl7v2/util/MessageIterator$Position;-><init>(Lca/uhn/hl7v2/model/Group;Ljava/lang/String;I)V

    iput-object v0, p0, Lca/uhn/hl7v2/util/MessageIterator;->next:Lca/uhn/hl7v2/util/MessageIterator$Position;

    .line 123
    return-void
.end method

.method private nextSibling(Lca/uhn/hl7v2/util/MessageIterator$Position;)V
    .locals 6
    .param p1, "pos"    # Lca/uhn/hl7v2/util/MessageIterator$Position;

    .line 274
    iget-object v0, p1, Lca/uhn/hl7v2/util/MessageIterator$Position;->parent:Lca/uhn/hl7v2/model/Group;

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Group;->getNames()[Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 276
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    iget-object v3, p1, Lca/uhn/hl7v2/util/MessageIterator$Position;->index:Lca/uhn/hl7v2/util/MessageIterator$Index;

    iget-object v3, v3, Lca/uhn/hl7v2/util/MessageIterator$Index;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 277
    :cond_1
    :goto_1
    add-int/lit8 v2, v1, 0x1

    aget-object v2, v0, v2

    .line 279
    .local v2, "nextName":Ljava/lang/String;
    new-instance v3, Lca/uhn/hl7v2/util/MessageIterator$Position;

    iget-object v4, p1, Lca/uhn/hl7v2/util/MessageIterator$Position;->parent:Lca/uhn/hl7v2/model/Group;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v2, v5}, Lca/uhn/hl7v2/util/MessageIterator$Position;-><init>(Lca/uhn/hl7v2/model/Group;Ljava/lang/String;I)V

    iput-object v3, p0, Lca/uhn/hl7v2/util/MessageIterator;->next:Lca/uhn/hl7v2/util/MessageIterator$Position;

    .line 280
    return-void
.end method


# virtual methods
.method public getDirection()Ljava/lang/String;
    .locals 1

    .line 325
    iget-object v0, p0, Lca/uhn/hl7v2/util/MessageIterator;->direction:Ljava/lang/String;

    return-object v0
.end method

.method public hasNext()Z
    .locals 8

    .line 86
    const/4 v0, 0x1

    .line 87
    .local v0, "has":Z
    iget-object v1, p0, Lca/uhn/hl7v2/util/MessageIterator;->next:Lca/uhn/hl7v2/util/MessageIterator$Position;

    if-nez v1, :cond_2

    .line 88
    const-class v1, Lca/uhn/hl7v2/model/Group;

    iget-object v2, p0, Lca/uhn/hl7v2/util/MessageIterator;->currentStructure:Lca/uhn/hl7v2/model/Structure;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lca/uhn/hl7v2/util/MessageIterator;->currentStructure:Lca/uhn/hl7v2/model/Structure;

    check-cast v1, Lca/uhn/hl7v2/model/Group;

    invoke-direct {p0, v1}, Lca/uhn/hl7v2/util/MessageIterator;->groupNext(Lca/uhn/hl7v2/model/Group;)V

    .line 90
    goto :goto_0

    .line 91
    :cond_0
    iget-object v1, p0, Lca/uhn/hl7v2/util/MessageIterator;->currentStructure:Lca/uhn/hl7v2/model/Structure;

    invoke-interface {v1}, Lca/uhn/hl7v2/model/Structure;->getParent()Lca/uhn/hl7v2/model/Group;

    move-result-object v1

    .line 92
    .local v1, "parent":Lca/uhn/hl7v2/model/Group;
    iget-object v2, p0, Lca/uhn/hl7v2/util/MessageIterator;->currentStructure:Lca/uhn/hl7v2/model/Structure;

    invoke-static {v1, v2}, Lca/uhn/hl7v2/util/MessageIterator;->getIndex(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/model/Structure;)Lca/uhn/hl7v2/util/MessageIterator$Index;

    move-result-object v2

    .line 93
    .local v2, "i":Lca/uhn/hl7v2/util/MessageIterator$Index;
    new-instance v3, Lca/uhn/hl7v2/util/MessageIterator$Position;

    invoke-direct {v3, v1, v2}, Lca/uhn/hl7v2/util/MessageIterator$Position;-><init>(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/util/MessageIterator$Index;)V

    .line 96
    .local v3, "currentPosition":Lca/uhn/hl7v2/util/MessageIterator$Position;
    :try_start_0
    iget-object v4, v2, Lca/uhn/hl7v2/util/MessageIterator$Index;->name:Ljava/lang/String;

    invoke-interface {v1, v4}, Lca/uhn/hl7v2/model/Group;->isRepeating(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lca/uhn/hl7v2/util/MessageIterator;->currentStructure:Lca/uhn/hl7v2/model/Structure;

    invoke-interface {v4}, Lca/uhn/hl7v2/model/Structure;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lca/uhn/hl7v2/util/MessageIterator;->direction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 97
    invoke-direct {p0, v3}, Lca/uhn/hl7v2/util/MessageIterator;->nextRep(Lca/uhn/hl7v2/util/MessageIterator$Position;)V

    .line 98
    goto :goto_0

    .line 99
    :cond_1
    iget-object v4, p0, Lca/uhn/hl7v2/util/MessageIterator;->direction:Ljava/lang/String;

    iget-boolean v5, p0, Lca/uhn/hl7v2/util/MessageIterator;->handleUnexpectedSegments:Z

    invoke-direct {p0, v3, v4, v5}, Lca/uhn/hl7v2/util/MessageIterator;->nextPosition(Lca/uhn/hl7v2/util/MessageIterator$Position;Ljava/lang/String;Z)Z

    move-result v4
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v4

    .line 101
    goto :goto_0

    :catch_0
    move-exception v4

    .line 102
    .local v4, "e":Lca/uhn/hl7v2/HL7Exception;
    new-instance v5, Ljava/lang/Error;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "HL7Exception arising from bad index: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lca/uhn/hl7v2/HL7Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v5

    .line 106
    .end local v1    # "parent":Lca/uhn/hl7v2/model/Group;
    .end local v2    # "i":Lca/uhn/hl7v2/util/MessageIterator$Index;
    .end local v3    # "currentPosition":Lca/uhn/hl7v2/util/MessageIterator$Position;
    .end local v4    # "e":Lca/uhn/hl7v2/HL7Exception;
    :cond_2
    :goto_0
    sget-object v1, Lca/uhn/hl7v2/util/MessageIterator;->log:Lorg/slf4j/Logger;

    const-string v2, "MessageIterator.hasNext() in direction {}? {}"

    iget-object v3, p0, Lca/uhn/hl7v2/util/MessageIterator;->direction:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    return v0
.end method

.method public next()Lca/uhn/hl7v2/model/Structure;
    .locals 4

    .line 307
    invoke-virtual {p0}, Lca/uhn/hl7v2/util/MessageIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more nodes in message"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_0
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/util/MessageIterator;->next:Lca/uhn/hl7v2/util/MessageIterator$Position;

    iget-object v0, v0, Lca/uhn/hl7v2/util/MessageIterator$Position;->parent:Lca/uhn/hl7v2/model/Group;

    iget-object v1, p0, Lca/uhn/hl7v2/util/MessageIterator;->next:Lca/uhn/hl7v2/util/MessageIterator$Position;

    iget-object v1, v1, Lca/uhn/hl7v2/util/MessageIterator$Position;->index:Lca/uhn/hl7v2/util/MessageIterator$Index;

    iget-object v1, v1, Lca/uhn/hl7v2/util/MessageIterator$Index;->name:Ljava/lang/String;

    iget-object v2, p0, Lca/uhn/hl7v2/util/MessageIterator;->next:Lca/uhn/hl7v2/util/MessageIterator$Position;

    iget-object v2, v2, Lca/uhn/hl7v2/util/MessageIterator$Position;->index:Lca/uhn/hl7v2/util/MessageIterator$Index;

    iget v2, v2, Lca/uhn/hl7v2/util/MessageIterator$Index;->rep:I

    invoke-interface {v0, v1, v2}, Lca/uhn/hl7v2/model/Group;->get(Ljava/lang/String;I)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/util/MessageIterator;->currentStructure:Lca/uhn/hl7v2/model/Structure;
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    nop

    .line 315
    invoke-direct {p0}, Lca/uhn/hl7v2/util/MessageIterator;->clearNext()V

    .line 316
    iget-object v0, p0, Lca/uhn/hl7v2/util/MessageIterator;->currentStructure:Lca/uhn/hl7v2/model/Structure;

    return-object v0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Lca/uhn/hl7v2/HL7Exception;
    new-instance v1, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HL7Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lca/uhn/hl7v2/HL7Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lca/uhn/hl7v2/util/MessageIterator;->next()Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 321
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t remove a node from a message"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDirection(Ljava/lang/String;)V
    .locals 0
    .param p1, "direction"    # Ljava/lang/String;

    .line 329
    invoke-direct {p0}, Lca/uhn/hl7v2/util/MessageIterator;->clearNext()V

    .line 330
    iput-object p1, p0, Lca/uhn/hl7v2/util/MessageIterator;->direction:Ljava/lang/String;

    .line 331
    return-void
.end method
