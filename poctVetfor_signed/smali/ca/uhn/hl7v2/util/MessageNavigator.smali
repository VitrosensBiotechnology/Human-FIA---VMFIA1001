.class public Lca/uhn/hl7v2/util/MessageNavigator;
.super Ljava/lang/Object;
.source "MessageNavigator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lca/uhn/hl7v2/util/MessageNavigator$GroupContext;
    }
.end annotation


# instance fields
.field private ancestors:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lca/uhn/hl7v2/util/MessageNavigator$GroupContext;",
            ">;"
        }
    .end annotation
.end field

.field private childNames:[Ljava/lang/String;

.field private currentChild:I

.field private currentGroup:Lca/uhn/hl7v2/model/Group;

.field private root:Lca/uhn/hl7v2/model/Group;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Group;)V
    .locals 0
    .param p1, "root"    # Lca/uhn/hl7v2/model/Group;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lca/uhn/hl7v2/util/MessageNavigator;->root:Lca/uhn/hl7v2/model/Group;

    .line 65
    invoke-virtual {p0}, Lca/uhn/hl7v2/util/MessageNavigator;->reset()V

    .line 66
    return-void
.end method

.method private drillHere(Lca/uhn/hl7v2/model/Structure;)Ljava/lang/String;
    .locals 8
    .param p1, "destination"    # Lca/uhn/hl7v2/model/Structure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 238
    move-object v0, p1

    .line 239
    .local v0, "pathElem":Lca/uhn/hl7v2/model/Structure;
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    .line 240
    .local v1, "pathStack":Ljava/util/Stack;, "Ljava/util/Stack<Lca/uhn/hl7v2/model/Structure;>;"
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    .line 242
    .local v2, "indexStack":Ljava/util/Stack;, "Ljava/util/Stack<Lca/uhn/hl7v2/util/MessageIterator$Index;>;"
    :cond_0
    invoke-interface {v0}, Lca/uhn/hl7v2/model/Structure;->getParent()Lca/uhn/hl7v2/model/Group;

    move-result-object v3

    invoke-static {v3, v0}, Lca/uhn/hl7v2/util/MessageIterator;->getIndex(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/model/Structure;)Lca/uhn/hl7v2/util/MessageIterator$Index;

    move-result-object v3

    .line 243
    .local v3, "index":Lca/uhn/hl7v2/util/MessageIterator$Index;
    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    invoke-interface {v0}, Lca/uhn/hl7v2/model/Structure;->getParent()Lca/uhn/hl7v2/model/Group;

    move-result-object v0

    .line 245
    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .end local v3    # "index":Lca/uhn/hl7v2/util/MessageIterator$Index;
    iget-object v3, p0, Lca/uhn/hl7v2/util/MessageNavigator;->root:Lca/uhn/hl7v2/model/Group;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-class v3, Lca/uhn/hl7v2/model/Message;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 248
    :cond_1
    iget-object v3, p0, Lca/uhn/hl7v2/util/MessageNavigator;->root:Lca/uhn/hl7v2/model/Group;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 249
    new-instance v3, Lca/uhn/hl7v2/HL7Exception;

    const-string v4, "The destination provided is not under the root of this navigator"

    invoke-direct {v3, v4}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 252
    :cond_2
    invoke-virtual {p0}, Lca/uhn/hl7v2/util/MessageNavigator;->reset()V

    .line 253
    const/4 v3, 0x0

    .line 254
    .local v3, "retVal":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 265
    return-object v3

    .line 255
    :cond_3
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lca/uhn/hl7v2/model/Group;

    .line 256
    .local v4, "parent":Lca/uhn/hl7v2/model/Group;
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lca/uhn/hl7v2/util/MessageIterator$Index;

    .line 257
    .local v5, "index":Lca/uhn/hl7v2/util/MessageIterator$Index;
    invoke-interface {v4}, Lca/uhn/hl7v2/model/Group;->getNames()[Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Lca/uhn/hl7v2/util/MessageIterator$Index;->name:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lca/uhn/hl7v2/util/MessageNavigator;->search([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    .line 258
    .local v6, "child":I
    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 259
    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lca/uhn/hl7v2/util/MessageNavigator;->drillDown(II)V

    .line 260
    goto :goto_0

    .line 261
    :cond_4
    invoke-virtual {p0, v6}, Lca/uhn/hl7v2/util/MessageNavigator;->toChild(I)Ljava/lang/String;

    move-result-object v3

    .line 261
    .end local v4    # "parent":Lca/uhn/hl7v2/model/Group;
    .end local v5    # "index":Lca/uhn/hl7v2/util/MessageIterator$Index;
    .end local v6    # "child":I
    goto :goto_0
.end method

.method private search([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .param p1, "list"    # [Ljava/lang/Object;
    .param p2, "item"    # Ljava/lang/Object;

    .line 271
    const/4 v0, -0x1

    .line 272
    .local v0, "found":I
    const/4 v1, 0x0

    .line 272
    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 272
    .end local v1    # "i":I
    goto :goto_1

    .line 273
    .restart local v1    # "i":I
    :cond_0
    aget-object v2, p1, v1

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 272
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 275
    .end local v1    # "i":I
    :cond_2
    :goto_1
    return v0
.end method


# virtual methods
.method public drillDown(I)V
    .locals 1
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 101
    iget v0, p0, Lca/uhn/hl7v2/util/MessageNavigator;->currentChild:I

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/util/MessageNavigator;->drillDown(II)V

    .line 102
    return-void
.end method

.method public drillDown(II)V
    .locals 5
    .param p1, "childNumber"    # I
    .param p2, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 79
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 80
    iget-object v0, p0, Lca/uhn/hl7v2/util/MessageNavigator;->currentGroup:Lca/uhn/hl7v2/model/Group;

    iget-object v1, p0, Lca/uhn/hl7v2/util/MessageNavigator;->childNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-interface {v0, v1, p2}, Lca/uhn/hl7v2/model/Group;->get(Ljava/lang/String;I)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    .line 81
    .local v0, "s":Lca/uhn/hl7v2/model/Structure;
    instance-of v1, v0, Lca/uhn/hl7v2/model/Group;

    if-nez v1, :cond_0

    .line 82
    new-instance v1, Lca/uhn/hl7v2/HL7Exception;

    const-string v2, "Can\'t drill into segment"

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    :cond_0
    move-object v1, v0

    check-cast v1, Lca/uhn/hl7v2/model/Group;

    .line 87
    .local v1, "group":Lca/uhn/hl7v2/model/Group;
    new-instance v2, Lca/uhn/hl7v2/util/MessageNavigator$GroupContext;

    iget-object v3, p0, Lca/uhn/hl7v2/util/MessageNavigator;->currentGroup:Lca/uhn/hl7v2/model/Group;

    iget v4, p0, Lca/uhn/hl7v2/util/MessageNavigator;->currentChild:I

    invoke-direct {v2, v3, v4}, Lca/uhn/hl7v2/util/MessageNavigator$GroupContext;-><init>(Lca/uhn/hl7v2/model/Group;I)V

    .line 88
    .local v2, "gc":Lca/uhn/hl7v2/util/MessageNavigator$GroupContext;
    iget-object v3, p0, Lca/uhn/hl7v2/util/MessageNavigator;->ancestors:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iput-object v1, p0, Lca/uhn/hl7v2/util/MessageNavigator;->currentGroup:Lca/uhn/hl7v2/model/Group;

    .line 93
    .end local v0    # "s":Lca/uhn/hl7v2/model/Structure;
    .end local v1    # "group":Lca/uhn/hl7v2/model/Group;
    .end local v2    # "gc":Lca/uhn/hl7v2/util/MessageNavigator$GroupContext;
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lca/uhn/hl7v2/util/MessageNavigator;->currentChild:I

    .line 94
    iget-object v0, p0, Lca/uhn/hl7v2/util/MessageNavigator;->currentGroup:Lca/uhn/hl7v2/model/Group;

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Group;->getNames()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/util/MessageNavigator;->childNames:[Ljava/lang/String;

    .line 95
    return-void
.end method

.method public drillUp()Z
    .locals 3

    .line 111
    iget-object v0, p0, Lca/uhn/hl7v2/util/MessageNavigator;->ancestors:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lca/uhn/hl7v2/util/MessageNavigator;->ancestors:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/util/MessageNavigator$GroupContext;

    .line 113
    .local v0, "gc":Lca/uhn/hl7v2/util/MessageNavigator$GroupContext;
    iget-object v2, v0, Lca/uhn/hl7v2/util/MessageNavigator$GroupContext;->group:Lca/uhn/hl7v2/model/Group;

    iput-object v2, p0, Lca/uhn/hl7v2/util/MessageNavigator;->currentGroup:Lca/uhn/hl7v2/model/Group;

    .line 114
    iget v2, v0, Lca/uhn/hl7v2/util/MessageNavigator$GroupContext;->child:I

    iput v2, p0, Lca/uhn/hl7v2/util/MessageNavigator;->currentChild:I

    .line 115
    iget-object v2, p0, Lca/uhn/hl7v2/util/MessageNavigator;->currentGroup:Lca/uhn/hl7v2/model/Group;

    invoke-interface {v2}, Lca/uhn/hl7v2/model/Group;->getNames()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lca/uhn/hl7v2/util/MessageNavigator;->childNames:[Ljava/lang/String;

    .line 116
    return v1

    .line 118
    .end local v0    # "gc":Lca/uhn/hl7v2/util/MessageNavigator$GroupContext;
    :cond_0
    iget v0, p0, Lca/uhn/hl7v2/util/MessageNavigator;->currentChild:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 119
    const/4 v0, 0x0

    return v0

    .line 121
    :cond_1
    iput v2, p0, Lca/uhn/hl7v2/util/MessageNavigator;->currentChild:I

    .line 122
    return v1
.end method

.method public getCurrentChildReps()[Lca/uhn/hl7v2/model/Structure;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lca/uhn/hl7v2/util/MessageNavigator;->currentGroup:Lca/uhn/hl7v2/model/Group;

    iget-object v1, p0, Lca/uhn/hl7v2/util/MessageNavigator;->root:Lca/uhn/hl7v2/model/Group;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lca/uhn/hl7v2/util/MessageNavigator;->currentChild:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 188
    new-instance v0, Lca/uhn/hl7v2/HL7Exception;

    const-string v1, "Pointer is at root of navigator: there is no current child"

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/util/MessageNavigator;->childNames:[Ljava/lang/String;

    iget v1, p0, Lca/uhn/hl7v2/util/MessageNavigator;->currentChild:I

    aget-object v0, v0, v1

    .line 191
    .local v0, "childName":Ljava/lang/String;
    iget-object v1, p0, Lca/uhn/hl7v2/util/MessageNavigator;->currentGroup:Lca/uhn/hl7v2/model/Group;

    invoke-interface {v1, v0}, Lca/uhn/hl7v2/model/Group;->getAll(Ljava/lang/String;)[Lca/uhn/hl7v2/model/Structure;

    move-result-object v1

    return-object v1
.end method

.method public getCurrentGroup()Lca/uhn/hl7v2/model/Group;
    .locals 1

    .line 179
    iget-object v0, p0, Lca/uhn/hl7v2/util/MessageNavigator;->currentGroup:Lca/uhn/hl7v2/model/Group;

    return-object v0
.end method

.method public getCurrentStructure(I)Lca/uhn/hl7v2/model/Structure;
    .locals 2
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 167
    iget v0, p0, Lca/uhn/hl7v2/util/MessageNavigator;->currentChild:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 168
    iget-object v0, p0, Lca/uhn/hl7v2/util/MessageNavigator;->childNames:[Ljava/lang/String;

    iget v1, p0, Lca/uhn/hl7v2/util/MessageNavigator;->currentChild:I

    aget-object v0, v0, v1

    .line 169
    .local v0, "childName":Ljava/lang/String;
    iget-object v1, p0, Lca/uhn/hl7v2/util/MessageNavigator;->currentGroup:Lca/uhn/hl7v2/model/Group;

    invoke-interface {v1, v0, p1}, Lca/uhn/hl7v2/model/Group;->get(Ljava/lang/String;I)Lca/uhn/hl7v2/model/Structure;

    move-result-object v1

    return-object v1

    .line 171
    .end local v0    # "childName":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/util/MessageNavigator;->currentGroup:Lca/uhn/hl7v2/model/Group;

    return-object v0
.end method

.method public getRoot()Lca/uhn/hl7v2/model/Group;
    .locals 1

    .line 69
    iget-object v0, p0, Lca/uhn/hl7v2/util/MessageNavigator;->root:Lca/uhn/hl7v2/model/Group;

    return-object v0
.end method

.method public hasNextChild()Z
    .locals 3

    .line 131
    iget-object v0, p0, Lca/uhn/hl7v2/util/MessageNavigator;->childNames:[Ljava/lang/String;

    const/4 v1, 0x1

    array-length v0, v0

    iget v2, p0, Lca/uhn/hl7v2/util/MessageNavigator;->currentChild:I

    add-int/2addr v2, v1

    if-le v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public iterate(ZZ)Ljava/lang/String;
    .locals 5
    .param p1, "segmentsOnly"    # Z
    .param p2, "loop"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 206
    const/4 v0, 0x0

    .line 208
    .local v0, "start":Lca/uhn/hl7v2/model/Structure;
    iget v1, p0, Lca/uhn/hl7v2/util/MessageNavigator;->currentChild:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 209
    iget-object v0, p0, Lca/uhn/hl7v2/util/MessageNavigator;->currentGroup:Lca/uhn/hl7v2/model/Group;

    .line 210
    goto :goto_0

    .line 211
    :cond_0
    iget-object v1, p0, Lca/uhn/hl7v2/util/MessageNavigator;->currentGroup:Lca/uhn/hl7v2/model/Group;

    iget-object v2, p0, Lca/uhn/hl7v2/util/MessageNavigator;->childNames:[Ljava/lang/String;

    iget v3, p0, Lca/uhn/hl7v2/util/MessageNavigator;->currentChild:I

    aget-object v2, v2, v3

    invoke-interface {v1, v2}, Lca/uhn/hl7v2/model/Group;->get(Ljava/lang/String;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    .line 216
    :goto_0
    new-instance v1, Lca/uhn/hl7v2/util/MessageIterator;

    const-string v2, "doesn\'t exist"

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lca/uhn/hl7v2/util/MessageIterator;-><init>(Lca/uhn/hl7v2/model/Structure;Ljava/lang/String;Z)V

    .line 217
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lca/uhn/hl7v2/model/Structure;>;"
    if-eqz p1, :cond_1

    .line 218
    new-instance v2, Lca/uhn/hl7v2/util/FilterIterator;

    new-instance v3, Lca/uhn/hl7v2/util/StructurePredicate;

    const-class v4, Lca/uhn/hl7v2/model/Segment;

    invoke-direct {v3, v4}, Lca/uhn/hl7v2/util/StructurePredicate;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v1, v3}, Lca/uhn/hl7v2/util/FilterIterator;-><init>(Ljava/util/Iterator;Lca/uhn/hl7v2/util/FilterIterator$Predicate;)V

    move-object v1, v2

    .line 221
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 222
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lca/uhn/hl7v2/model/Structure;

    .line 223
    .local v2, "next":Lca/uhn/hl7v2/model/Structure;
    invoke-direct {p0, v2}, Lca/uhn/hl7v2/util/MessageNavigator;->drillHere(Lca/uhn/hl7v2/model/Structure;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 224
    .end local v2    # "next":Lca/uhn/hl7v2/model/Structure;
    :cond_2
    if-eqz p2, :cond_3

    .line 225
    invoke-virtual {p0}, Lca/uhn/hl7v2/util/MessageNavigator;->reset()V

    .line 226
    const-string v2, ""

    return-object v2

    .line 228
    :cond_3
    new-instance v2, Lca/uhn/hl7v2/HL7Exception;

    const-string v3, "End of message reached while iterating without loop"

    invoke-direct {v2, v3}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public nextChild()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 138
    iget v0, p0, Lca/uhn/hl7v2/util/MessageNavigator;->currentChild:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/util/MessageNavigator;->toChild(I)Ljava/lang/String;

    .line 139
    return-void
.end method

.method public reset()V
    .locals 1

    .line 156
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/util/MessageNavigator;->ancestors:Ljava/util/Stack;

    .line 157
    iget-object v0, p0, Lca/uhn/hl7v2/util/MessageNavigator;->root:Lca/uhn/hl7v2/model/Group;

    iput-object v0, p0, Lca/uhn/hl7v2/util/MessageNavigator;->currentGroup:Lca/uhn/hl7v2/model/Group;

    .line 158
    const/4 v0, -0x1

    iput v0, p0, Lca/uhn/hl7v2/util/MessageNavigator;->currentChild:I

    .line 159
    iget-object v0, p0, Lca/uhn/hl7v2/util/MessageNavigator;->currentGroup:Lca/uhn/hl7v2/model/Group;

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Group;->getNames()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/util/MessageNavigator;->childNames:[Ljava/lang/String;

    .line 160
    return-void
.end method

.method public toChild(I)Ljava/lang/String;
    .locals 3
    .param p1, "child"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 146
    if-ltz p1, :cond_0

    iget-object v0, p0, Lca/uhn/hl7v2/util/MessageNavigator;->childNames:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 147
    iput p1, p0, Lca/uhn/hl7v2/util/MessageNavigator;->currentChild:I

    .line 148
    iget-object v0, p0, Lca/uhn/hl7v2/util/MessageNavigator;->childNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 150
    :cond_0
    new-instance v0, Lca/uhn/hl7v2/HL7Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t advance to child "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -- only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lca/uhn/hl7v2/util/MessageNavigator;->childNames:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " children"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method
