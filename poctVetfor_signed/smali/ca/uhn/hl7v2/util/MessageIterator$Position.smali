.class public Lca/uhn/hl7v2/util/MessageIterator$Position;
.super Ljava/lang/Object;
.source "MessageIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/util/MessageIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Position"
.end annotation


# instance fields
.field public index:Lca/uhn/hl7v2/util/MessageIterator$Index;

.field public parent:Lca/uhn/hl7v2/model/Group;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/util/MessageIterator$Index;)V
    .locals 0
    .param p1, "parent"    # Lca/uhn/hl7v2/model/Group;
    .param p2, "i"    # Lca/uhn/hl7v2/util/MessageIterator$Index;

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    iput-object p1, p0, Lca/uhn/hl7v2/util/MessageIterator$Position;->parent:Lca/uhn/hl7v2/model/Group;

    .line 408
    iput-object p2, p0, Lca/uhn/hl7v2/util/MessageIterator$Position;->index:Lca/uhn/hl7v2/util/MessageIterator$Index;

    .line 409
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/model/Group;Ljava/lang/String;I)V
    .locals 1
    .param p1, "parent"    # Lca/uhn/hl7v2/model/Group;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "rep"    # I

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    iput-object p1, p0, Lca/uhn/hl7v2/util/MessageIterator$Position;->parent:Lca/uhn/hl7v2/model/Group;

    .line 404
    new-instance v0, Lca/uhn/hl7v2/util/MessageIterator$Index;

    invoke-direct {v0, p2, p3}, Lca/uhn/hl7v2/util/MessageIterator$Index;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lca/uhn/hl7v2/util/MessageIterator$Position;->index:Lca/uhn/hl7v2/util/MessageIterator$Index;

    .line 405
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 413
    const/4 v0, 0x0

    .line 414
    .local v0, "equals":Z
    if-eqz p1, :cond_0

    instance-of v1, p1, Lca/uhn/hl7v2/util/MessageIterator$Position;

    if-eqz v1, :cond_0

    .line 415
    move-object v1, p1

    check-cast v1, Lca/uhn/hl7v2/util/MessageIterator$Position;

    .line 416
    .local v1, "p":Lca/uhn/hl7v2/util/MessageIterator$Position;
    iget-object v2, v1, Lca/uhn/hl7v2/util/MessageIterator$Position;->parent:Lca/uhn/hl7v2/model/Group;

    iget-object v3, p0, Lca/uhn/hl7v2/util/MessageIterator$Position;->parent:Lca/uhn/hl7v2/model/Group;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lca/uhn/hl7v2/util/MessageIterator$Position;->index:Lca/uhn/hl7v2/util/MessageIterator$Index;

    iget-object v3, p0, Lca/uhn/hl7v2/util/MessageIterator$Position;->index:Lca/uhn/hl7v2/util/MessageIterator$Index;

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/util/MessageIterator$Index;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 418
    .end local v1    # "p":Lca/uhn/hl7v2/util/MessageIterator$Position;
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 423
    iget-object v0, p0, Lca/uhn/hl7v2/util/MessageIterator$Position;->parent:Lca/uhn/hl7v2/model/Group;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lca/uhn/hl7v2/util/MessageIterator$Position;->index:Lca/uhn/hl7v2/util/MessageIterator$Index;

    invoke-virtual {v1}, Lca/uhn/hl7v2/util/MessageIterator$Index;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 427
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lca/uhn/hl7v2/util/MessageIterator$Position;->parent:Lca/uhn/hl7v2/model/Group;

    invoke-interface {v1}, Lca/uhn/hl7v2/model/Group;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 428
    .local v0, "ret":Ljava/lang/StringBuffer;
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 429
    iget-object v1, p0, Lca/uhn/hl7v2/util/MessageIterator$Position;->index:Lca/uhn/hl7v2/util/MessageIterator$Index;

    iget-object v1, v1, Lca/uhn/hl7v2/util/MessageIterator$Index;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 430
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 431
    iget-object v1, p0, Lca/uhn/hl7v2/util/MessageIterator$Position;->index:Lca/uhn/hl7v2/util/MessageIterator$Index;

    iget v1, v1, Lca/uhn/hl7v2/util/MessageIterator$Index;->rep:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 432
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 433
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
