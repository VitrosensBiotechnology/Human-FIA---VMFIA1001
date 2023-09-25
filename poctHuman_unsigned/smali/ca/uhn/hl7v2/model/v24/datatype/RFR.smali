.class public Lca/uhn/hl7v2/model/v24/datatype/RFR;
.super Lca/uhn/hl7v2/model/AbstractComposite;
.source "RFR.java"


# instance fields
.field private data:[Lca/uhn/hl7v2/model/Type;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Message;)V
    .locals 0
    .param p1, "message"    # Lca/uhn/hl7v2/model/Message;

    .line 15
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/AbstractComposite;-><init>(Lca/uhn/hl7v2/model/Message;)V

    .line 16
    invoke-direct {p0}, Lca/uhn/hl7v2/model/v24/datatype/RFR;->init()V

    .line 17
    return-void
.end method

.method private init()V
    .locals 4

    .line 21
    const/4 v0, 0x7

    new-array v0, v0, [Lca/uhn/hl7v2/model/Type;

    iput-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/RFR;->data:[Lca/uhn/hl7v2/model/Type;

    .line 22
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/RFR;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/NR;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/RFR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/NR;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 23
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/RFR;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/IS;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/RFR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lca/uhn/hl7v2/model/v24/datatype/IS;-><init>(Lca/uhn/hl7v2/model/Message;I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 24
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/RFR;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/NR;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/RFR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/NR;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 25
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/RFR;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/NR;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/RFR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/NR;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 26
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/RFR;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/TX;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/RFR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/TX;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 27
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/RFR;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/ST;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/RFR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/ST;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 28
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/RFR;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/TX;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/RFR;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/TX;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 29
    return-void
.end method


# virtual methods
.method public getAdministrativeSex()Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 2

    .line 61
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/RFR;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    return-object v0
.end method

.method public getAgeRange()Lca/uhn/hl7v2/model/v24/datatype/NR;
    .locals 2

    .line 71
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/NR;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/RFR;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/NR;

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

    .line 41
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/RFR;->data:[Lca/uhn/hl7v2/model/Type;

    aget-object v0, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 43
    :catch_0
    move-exception v0

    .line 45
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

    iget-object v3, p0, Lca/uhn/hl7v2/model/v24/datatype/RFR;->data:[Lca/uhn/hl7v2/model/Type;

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

    .line 33
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/RFR;->data:[Lca/uhn/hl7v2/model/Type;

    return-object v0
.end method

.method public getConditions()Lca/uhn/hl7v2/model/v24/datatype/TX;
    .locals 2

    .line 111
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/TX;

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/RFR;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TX;

    return-object v0
.end method

.method public getGestationalRange()Lca/uhn/hl7v2/model/v24/datatype/NR;
    .locals 2

    .line 81
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/NR;

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/RFR;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/NR;

    return-object v0
.end method

.method public getNumericRange()Lca/uhn/hl7v2/model/v24/datatype/NR;
    .locals 2

    .line 51
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/NR;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/RFR;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/NR;

    return-object v0
.end method

.method public getRaceSubspecies()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 101
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/RFR;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    return-object v0
.end method

.method public getRfr1_NumericRange()Lca/uhn/hl7v2/model/v24/datatype/NR;
    .locals 2

    .line 56
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/NR;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/RFR;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/NR;

    return-object v0
.end method

.method public getRfr2_AdministrativeSex()Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 2

    .line 66
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/RFR;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    return-object v0
.end method

.method public getRfr3_AgeRange()Lca/uhn/hl7v2/model/v24/datatype/NR;
    .locals 2

    .line 76
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/NR;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/RFR;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/NR;

    return-object v0
.end method

.method public getRfr4_GestationalRange()Lca/uhn/hl7v2/model/v24/datatype/NR;
    .locals 2

    .line 86
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/NR;

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/RFR;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/NR;

    return-object v0
.end method

.method public getRfr5_Species()Lca/uhn/hl7v2/model/v24/datatype/TX;
    .locals 2

    .line 96
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/TX;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/RFR;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TX;

    return-object v0
.end method

.method public getRfr6_RaceSubspecies()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 106
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/RFR;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    return-object v0
.end method

.method public getRfr7_Conditions()Lca/uhn/hl7v2/model/v24/datatype/TX;
    .locals 2

    .line 116
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/TX;

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/RFR;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TX;

    return-object v0
.end method

.method public getSpecies()Lca/uhn/hl7v2/model/v24/datatype/TX;
    .locals 2

    .line 91
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/TX;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/RFR;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TX;

    return-object v0
.end method
