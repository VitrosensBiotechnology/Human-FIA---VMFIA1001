.class public Lca/uhn/hl7v2/model/v24/datatype/CX;
.super Lca/uhn/hl7v2/model/AbstractComposite;
.source "CX.java"


# instance fields
.field private data:[Lca/uhn/hl7v2/model/Type;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Message;)V
    .locals 0
    .param p1, "message"    # Lca/uhn/hl7v2/model/Message;

    .line 15
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/AbstractComposite;-><init>(Lca/uhn/hl7v2/model/Message;)V

    .line 16
    invoke-direct {p0}, Lca/uhn/hl7v2/model/v24/datatype/CX;->init()V

    .line 17
    return-void
.end method

.method private init()V
    .locals 4

    .line 21
    const/16 v0, 0x8

    new-array v0, v0, [Lca/uhn/hl7v2/model/Type;

    iput-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/CX;->data:[Lca/uhn/hl7v2/model/Type;

    .line 22
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/CX;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/ST;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/CX;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/ST;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 23
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/CX;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/ST;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/CX;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    invoke-direct {v1, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 24
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/CX;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/ID;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/CX;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lca/uhn/hl7v2/model/v24/datatype/ID;-><init>(Lca/uhn/hl7v2/model/Message;I)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 25
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/CX;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/HD;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/CX;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 26
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/CX;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/ID;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/CX;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    const/16 v3, 0xcb

    invoke-direct {v1, v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ID;-><init>(Lca/uhn/hl7v2/model/Message;I)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 27
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/CX;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/HD;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/CX;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 28
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/CX;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/DT;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/CX;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/DT;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 29
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/CX;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/DT;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/CX;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/DT;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 30
    return-void
.end method


# virtual methods
.method public getAssigningAuthority()Lca/uhn/hl7v2/model/v24/datatype/HD;
    .locals 2

    .line 82
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/HD;

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/CX;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/HD;

    return-object v0
.end method

.method public getAssigningFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;
    .locals 2

    .line 102
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/HD;

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/CX;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/HD;

    return-object v0
.end method

.method public getCheckDigit()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 62
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/CX;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    return-object v0
.end method

.method public getCodeIdentifyingTheCheckDigitSchemeEmployed()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 72
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/CX;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

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

    .line 42
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/CX;->data:[Lca/uhn/hl7v2/model/Type;

    aget-object v0, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 44
    :catch_0
    move-exception v0

    .line 46
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

    iget-object v3, p0, Lca/uhn/hl7v2/model/v24/datatype/CX;->data:[Lca/uhn/hl7v2/model/Type;

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

    .line 34
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/CX;->data:[Lca/uhn/hl7v2/model/Type;

    return-object v0
.end method

.method public getCx1_ID()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 57
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/CX;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    return-object v0
.end method

.method public getCx2_CheckDigit()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 67
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/CX;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    return-object v0
.end method

.method public getCx3_CodeIdentifyingTheCheckDigitSchemeEmployed()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 77
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/CX;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    return-object v0
.end method

.method public getCx4_AssigningAuthority()Lca/uhn/hl7v2/model/v24/datatype/HD;
    .locals 2

    .line 87
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/HD;

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/CX;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/HD;

    return-object v0
.end method

.method public getCx5_IdentifierTypeCode()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 97
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/CX;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    return-object v0
.end method

.method public getCx6_AssigningFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;
    .locals 2

    .line 107
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/HD;

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/CX;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/HD;

    return-object v0
.end method

.method public getCx7_EffectiveDate()Lca/uhn/hl7v2/model/v24/datatype/DT;
    .locals 2

    .line 117
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/DT;

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/CX;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/DT;

    return-object v0
.end method

.method public getCx8_ExpirationDate()Lca/uhn/hl7v2/model/v24/datatype/DT;
    .locals 2

    .line 127
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/DT;

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/CX;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/DT;

    return-object v0
.end method

.method public getEffectiveDate()Lca/uhn/hl7v2/model/v24/datatype/DT;
    .locals 2

    .line 112
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/DT;

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/CX;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/DT;

    return-object v0
.end method

.method public getExpirationDate()Lca/uhn/hl7v2/model/v24/datatype/DT;
    .locals 2

    .line 122
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/DT;

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/CX;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/DT;

    return-object v0
.end method

.method public getID()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 52
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/CX;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    return-object v0
.end method

.method public getIdentifierTypeCode()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 92
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/CX;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    return-object v0
.end method
