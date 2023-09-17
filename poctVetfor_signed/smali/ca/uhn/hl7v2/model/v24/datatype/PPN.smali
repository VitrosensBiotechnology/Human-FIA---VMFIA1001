.class public Lca/uhn/hl7v2/model/v24/datatype/PPN;
.super Lca/uhn/hl7v2/model/AbstractComposite;
.source "PPN.java"


# instance fields
.field private data:[Lca/uhn/hl7v2/model/Type;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Message;)V
    .locals 0
    .param p1, "message"    # Lca/uhn/hl7v2/model/Message;

    .line 15
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/AbstractComposite;-><init>(Lca/uhn/hl7v2/model/Message;)V

    .line 16
    invoke-direct {p0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->init()V

    .line 17
    return-void
.end method

.method private init()V
    .locals 4

    .line 21
    const/16 v0, 0x13

    new-array v0, v0, [Lca/uhn/hl7v2/model/Type;

    iput-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/PPN;->data:[Lca/uhn/hl7v2/model/Type;

    .line 22
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/PPN;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/ST;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/ST;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 23
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/PPN;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/FN;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    invoke-direct {v1, v3}, Lca/uhn/hl7v2/model/v24/datatype/FN;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 24
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/PPN;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/ST;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    invoke-direct {v1, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 25
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/PPN;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/ST;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    invoke-direct {v1, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 26
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/PPN;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/ST;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    invoke-direct {v1, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/4 v3, 0x4

    aput-object v1, v0, v3

    .line 27
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/PPN;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/ST;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    invoke-direct {v1, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/4 v3, 0x5

    aput-object v1, v0, v3

    .line 28
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/PPN;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/IS;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lca/uhn/hl7v2/model/v24/datatype/IS;-><init>(Lca/uhn/hl7v2/model/Message;I)V

    const/4 v3, 0x6

    aput-object v1, v0, v3

    .line 29
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/PPN;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/IS;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lca/uhn/hl7v2/model/v24/datatype/IS;-><init>(Lca/uhn/hl7v2/model/Message;I)V

    const/4 v3, 0x7

    aput-object v1, v0, v3

    .line 30
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/PPN;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/HD;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    invoke-direct {v1, v3}, Lca/uhn/hl7v2/model/v24/datatype/HD;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/16 v3, 0x8

    aput-object v1, v0, v3

    .line 31
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/PPN;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/ID;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lca/uhn/hl7v2/model/v24/datatype/ID;-><init>(Lca/uhn/hl7v2/model/Message;I)V

    const/16 v3, 0x9

    aput-object v1, v0, v3

    .line 32
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/PPN;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/ST;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    invoke-direct {v1, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/16 v3, 0xa

    aput-object v1, v0, v3

    .line 33
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/PPN;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/ID;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lca/uhn/hl7v2/model/v24/datatype/ID;-><init>(Lca/uhn/hl7v2/model/Message;I)V

    const/16 v3, 0xb

    aput-object v1, v0, v3

    .line 34
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/PPN;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/IS;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lca/uhn/hl7v2/model/v24/datatype/IS;-><init>(Lca/uhn/hl7v2/model/Message;I)V

    const/16 v3, 0xc

    aput-object v1, v0, v3

    .line 35
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/PPN;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/HD;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    invoke-direct {v1, v3}, Lca/uhn/hl7v2/model/v24/datatype/HD;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/16 v3, 0xd

    aput-object v1, v0, v3

    .line 36
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/PPN;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/TS;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    invoke-direct {v1, v3}, Lca/uhn/hl7v2/model/v24/datatype/TS;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/16 v3, 0xe

    aput-object v1, v0, v3

    .line 37
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/PPN;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/ID;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lca/uhn/hl7v2/model/v24/datatype/ID;-><init>(Lca/uhn/hl7v2/model/Message;I)V

    const/16 v3, 0xf

    aput-object v1, v0, v3

    .line 38
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/PPN;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/CE;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    invoke-direct {v1, v3}, Lca/uhn/hl7v2/model/v24/datatype/CE;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/16 v3, 0x10

    aput-object v1, v0, v3

    .line 39
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/PPN;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/DR;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    invoke-direct {v1, v3}, Lca/uhn/hl7v2/model/v24/datatype/DR;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/16 v3, 0x11

    aput-object v1, v0, v3

    .line 40
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/PPN;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/ID;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lca/uhn/hl7v2/model/v24/datatype/ID;-><init>(Lca/uhn/hl7v2/model/Message;I)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 41
    return-void
.end method


# virtual methods
.method public getAssigningAuthority()Lca/uhn/hl7v2/model/v24/datatype/HD;
    .locals 2

    .line 143
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/HD;

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/HD;

    return-object v0
.end method

.method public getAssigningFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;
    .locals 2

    .line 193
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/HD;

    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/HD;

    return-object v0
.end method

.method public getCodeIdentifyingTheCheckDigitSchemeEmployed()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 173
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    const/16 v1, 0xb

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    return-object v0
.end method

.method public getComponent(I)Lca/uhn/hl7v2/model/Type;
    .locals 4
    .param p1, "number"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 53
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/PPN;->data:[Lca/uhn/hl7v2/model/Type;

    aget-object v0, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 55
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Lca/uhn/hl7v2/model/DataTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Element "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " doesn\'t exist (Type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has only "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lca/uhn/hl7v2/model/v24/datatype/PPN;->data:[Lca/uhn/hl7v2/model/Type;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " components)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/model/DataTypeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getComponents()[Lca/uhn/hl7v2/model/Type;
    .locals 1

    .line 45
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/PPN;->data:[Lca/uhn/hl7v2/model/Type;

    return-object v0
.end method

.method public getDateTimeActionPerformed()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 203
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    const/16 v1, 0xe

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    return-object v0
.end method

.method public getDegreeEgMD()Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 2

    .line 123
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    return-object v0
.end method

.method public getFamilyName()Lca/uhn/hl7v2/model/v24/datatype/FN;
    .locals 2

    .line 73
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/FN;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/FN;

    return-object v0
.end method

.method public getGivenName()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 83
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    return-object v0
.end method

.method public getIDNumber()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 63
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    return-object v0
.end method

.method public getIdentifierCheckDigit()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 163
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    return-object v0
.end method

.method public getIdentifierTypeCode()Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 2

    .line 183
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    const/16 v1, 0xc

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    return-object v0
.end method

.method public getNameAssemblyOrder()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 243
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    const/16 v1, 0x12

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    return-object v0
.end method

.method public getNameContext()Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 223
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/16 v1, 0x10

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method

.method public getNameRepresentationCode()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 213
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    const/16 v1, 0xf

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    return-object v0
.end method

.method public getNameTypeCode()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 153
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    return-object v0
.end method

.method public getNameValidityRange()Lca/uhn/hl7v2/model/v24/datatype/DR;
    .locals 2

    .line 233
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/DR;

    const/16 v1, 0x11

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/DR;

    return-object v0
.end method

.method public getPpn10_NameTypeCode()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 158
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    return-object v0
.end method

.method public getPpn11_IdentifierCheckDigit()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 168
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    return-object v0
.end method

.method public getPpn12_CodeIdentifyingTheCheckDigitSchemeEmployed()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 178
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    const/16 v1, 0xb

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    return-object v0
.end method

.method public getPpn13_IdentifierTypeCode()Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 2

    .line 188
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    const/16 v1, 0xc

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    return-object v0
.end method

.method public getPpn14_AssigningFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;
    .locals 2

    .line 198
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/HD;

    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/HD;

    return-object v0
.end method

.method public getPpn15_DateTimeActionPerformed()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 208
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    const/16 v1, 0xe

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    return-object v0
.end method

.method public getPpn16_NameRepresentationCode()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 218
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    const/16 v1, 0xf

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    return-object v0
.end method

.method public getPpn17_NameContext()Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 228
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/16 v1, 0x10

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method

.method public getPpn18_NameValidityRange()Lca/uhn/hl7v2/model/v24/datatype/DR;
    .locals 2

    .line 238
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/DR;

    const/16 v1, 0x11

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/DR;

    return-object v0
.end method

.method public getPpn19_NameAssemblyOrder()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 248
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    const/16 v1, 0x12

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    return-object v0
.end method

.method public getPpn1_IDNumber()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 68
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    return-object v0
.end method

.method public getPpn2_FamilyName()Lca/uhn/hl7v2/model/v24/datatype/FN;
    .locals 2

    .line 78
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/FN;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/FN;

    return-object v0
.end method

.method public getPpn3_GivenName()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 88
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    return-object v0
.end method

.method public getPpn4_SecondAndFurtherGivenNamesOrInitialsThereof()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 98
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    return-object v0
.end method

.method public getPpn5_SuffixEgJRorIII()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 108
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    return-object v0
.end method

.method public getPpn6_PrefixEgDR()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 118
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    return-object v0
.end method

.method public getPpn7_DegreeEgMD()Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 2

    .line 128
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    return-object v0
.end method

.method public getPpn8_SourceTable()Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 2

    .line 138
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    return-object v0
.end method

.method public getPpn9_AssigningAuthority()Lca/uhn/hl7v2/model/v24/datatype/HD;
    .locals 2

    .line 148
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/HD;

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/HD;

    return-object v0
.end method

.method public getPrefixEgDR()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 113
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    return-object v0
.end method

.method public getSecondAndFurtherGivenNamesOrInitialsThereof()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 93
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    return-object v0
.end method

.method public getSourceTable()Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 2

    .line 133
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    return-object v0
.end method

.method public getSuffixEgJRorIII()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 103
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/PPN;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    return-object v0
.end method
