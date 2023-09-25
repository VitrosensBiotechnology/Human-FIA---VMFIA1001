.class public Lca/uhn/hl7v2/util/MessageIterator$Index;
.super Ljava/lang/Object;
.source "MessageIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/util/MessageIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Index"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public rep:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "rep"    # I

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    iput-object p1, p0, Lca/uhn/hl7v2/util/MessageIterator$Index;->name:Ljava/lang/String;

    .line 372
    iput p2, p0, Lca/uhn/hl7v2/util/MessageIterator$Index;->rep:I

    .line 373
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 377
    const/4 v0, 0x0

    .line 378
    .local v0, "equals":Z
    if-eqz p1, :cond_0

    instance-of v1, p1, Lca/uhn/hl7v2/util/MessageIterator$Index;

    if-eqz v1, :cond_0

    .line 379
    move-object v1, p1

    check-cast v1, Lca/uhn/hl7v2/util/MessageIterator$Index;

    .line 380
    .local v1, "i":Lca/uhn/hl7v2/util/MessageIterator$Index;
    iget v2, v1, Lca/uhn/hl7v2/util/MessageIterator$Index;->rep:I

    iget v3, p0, Lca/uhn/hl7v2/util/MessageIterator$Index;->rep:I

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Lca/uhn/hl7v2/util/MessageIterator$Index;->name:Ljava/lang/String;

    iget-object v3, p0, Lca/uhn/hl7v2/util/MessageIterator$Index;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 382
    .end local v1    # "i":Lca/uhn/hl7v2/util/MessageIterator$Index;
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 387
    iget-object v0, p0, Lca/uhn/hl7v2/util/MessageIterator$Index;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lca/uhn/hl7v2/util/MessageIterator$Index;->rep:I

    const/16 v2, 0x2bc

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lca/uhn/hl7v2/util/MessageIterator$Index;->name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lca/uhn/hl7v2/util/MessageIterator$Index;->rep:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
