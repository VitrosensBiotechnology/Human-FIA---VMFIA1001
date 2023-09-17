.class public Lca/uhn/hl7v2/parser/MessageIterator$Position;
.super Ljava/lang/Object;
.source "MessageIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/parser/MessageIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Position"
.end annotation


# instance fields
.field private myRepNumber:I

.field private myStructureDefinition:Lca/uhn/hl7v2/parser/IStructureDefinition;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/parser/IStructureDefinition;I)V
    .locals 1
    .param p1, "theStructureDefinition"    # Lca/uhn/hl7v2/parser/IStructureDefinition;
    .param p2, "theRepNumber"    # I

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    const/4 v0, -0x1

    iput v0, p0, Lca/uhn/hl7v2/parser/MessageIterator$Position;->myRepNumber:I

    .line 330
    iput-object p1, p0, Lca/uhn/hl7v2/parser/MessageIterator$Position;->myStructureDefinition:Lca/uhn/hl7v2/parser/IStructureDefinition;

    .line 331
    iput p2, p0, Lca/uhn/hl7v2/parser/MessageIterator$Position;->myRepNumber:I

    .line 332
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 340
    const/4 v0, 0x0

    .line 341
    .local v0, "equals":Z
    if-eqz p1, :cond_0

    instance-of v1, p1, Lca/uhn/hl7v2/parser/MessageIterator$Position;

    if-eqz v1, :cond_0

    .line 342
    move-object v1, p1

    check-cast v1, Lca/uhn/hl7v2/parser/MessageIterator$Position;

    .line 343
    .local v1, "p":Lca/uhn/hl7v2/parser/MessageIterator$Position;
    iget-object v2, v1, Lca/uhn/hl7v2/parser/MessageIterator$Position;->myStructureDefinition:Lca/uhn/hl7v2/parser/IStructureDefinition;

    iget-object v3, p0, Lca/uhn/hl7v2/parser/MessageIterator$Position;->myStructureDefinition:Lca/uhn/hl7v2/parser/IStructureDefinition;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Lca/uhn/hl7v2/parser/MessageIterator$Position;->myRepNumber:I

    iget v3, p0, Lca/uhn/hl7v2/parser/MessageIterator$Position;->myRepNumber:I

    if-ne v2, v3, :cond_0

    .line 344
    const/4 v0, 0x1

    .line 346
    .end local v1    # "p":Lca/uhn/hl7v2/parser/MessageIterator$Position;
    :cond_0
    return v0
.end method

.method public getRepNumber()I
    .locals 1

    .line 326
    iget v0, p0, Lca/uhn/hl7v2/parser/MessageIterator$Position;->myRepNumber:I

    return v0
.end method

.method public getStructureDefinition()Lca/uhn/hl7v2/parser/IStructureDefinition;
    .locals 1

    .line 314
    iget-object v0, p0, Lca/uhn/hl7v2/parser/MessageIterator$Position;->myStructureDefinition:Lca/uhn/hl7v2/parser/IStructureDefinition;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 351
    iget-object v0, p0, Lca/uhn/hl7v2/parser/MessageIterator$Position;->myStructureDefinition:Lca/uhn/hl7v2/parser/IStructureDefinition;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lca/uhn/hl7v2/parser/MessageIterator$Position;->myRepNumber:I

    add-int/2addr v0, v1

    return v0
.end method

.method public incrementRep()V
    .locals 1

    .line 335
    iget v0, p0, Lca/uhn/hl7v2/parser/MessageIterator$Position;->myRepNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lca/uhn/hl7v2/parser/MessageIterator$Position;->myRepNumber:I

    .line 336
    return-void
.end method

.method public resetRepNumber()V
    .locals 1

    .line 318
    const/4 v0, -0x1

    iput v0, p0, Lca/uhn/hl7v2/parser/MessageIterator$Position;->myRepNumber:I

    .line 319
    return-void
.end method

.method public setStructureDefinition(Lca/uhn/hl7v2/parser/IStructureDefinition;)V
    .locals 0
    .param p1, "theStructureDefinition"    # Lca/uhn/hl7v2/parser/IStructureDefinition;

    .line 322
    iput-object p1, p0, Lca/uhn/hl7v2/parser/MessageIterator$Position;->myStructureDefinition:Lca/uhn/hl7v2/parser/IStructureDefinition;

    .line 323
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 357
    .local v0, "ret":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lca/uhn/hl7v2/parser/MessageIterator$Position;->myStructureDefinition:Lca/uhn/hl7v2/parser/IStructureDefinition;

    invoke-interface {v1}, Lca/uhn/hl7v2/parser/IStructureDefinition;->getParent()Lca/uhn/hl7v2/parser/IStructureDefinition;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 358
    iget-object v1, p0, Lca/uhn/hl7v2/parser/MessageIterator$Position;->myStructureDefinition:Lca/uhn/hl7v2/parser/IStructureDefinition;

    invoke-interface {v1}, Lca/uhn/hl7v2/parser/IStructureDefinition;->getParent()Lca/uhn/hl7v2/parser/IStructureDefinition;

    move-result-object v1

    invoke-interface {v1}, Lca/uhn/hl7v2/parser/IStructureDefinition;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    goto :goto_0

    .line 360
    :cond_0
    const-string v1, "Root"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    :goto_0
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    iget-object v1, p0, Lca/uhn/hl7v2/parser/MessageIterator$Position;->myStructureDefinition:Lca/uhn/hl7v2/parser/IStructureDefinition;

    invoke-interface {v1}, Lca/uhn/hl7v2/parser/IStructureDefinition;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    iget v1, p0, Lca/uhn/hl7v2/parser/MessageIterator$Position;->myRepNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 367
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
