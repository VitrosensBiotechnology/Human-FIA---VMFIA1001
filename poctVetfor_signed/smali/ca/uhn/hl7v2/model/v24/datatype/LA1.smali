.class public Lca/uhn/hl7v2/model/v24/datatype/LA1;
.super Lca/uhn/hl7v2/model/AbstractComposite;
.source "LA1.java"


# instance fields
.field private data:[Lca/uhn/hl7v2/model/Type;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Message;)V
    .locals 0
    .param p1, "message"    # Lca/uhn/hl7v2/model/Message;

    .line 15
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/AbstractComposite;-><init>(Lca/uhn/hl7v2/model/Message;)V

    .line 16
    invoke-direct {p0}, Lca/uhn/hl7v2/model/v24/datatype/LA1;->init()V

    .line 17
    return-void
.end method

.method private init()V
    .locals 4

    .line 21
    const/16 v0, 0x9

    new-array v0, v0, [Lca/uhn/hl7v2/model/Type;

    iput-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/LA1;->data:[Lca/uhn/hl7v2/model/Type;

    .line 22
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/LA1;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/IS;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/LA1;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/IS;-><init>(Lca/uhn/hl7v2/model/Message;I)V

    aput-object v1, v0, v3

    .line 23
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/LA1;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/IS;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/LA1;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/IS;-><init>(Lca/uhn/hl7v2/model/Message;I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 24
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/LA1;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/IS;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/LA1;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/IS;-><init>(Lca/uhn/hl7v2/model/Message;I)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 25
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/LA1;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/HD;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/LA1;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 26
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/LA1;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/IS;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/LA1;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/IS;-><init>(Lca/uhn/hl7v2/model/Message;I)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 27
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/LA1;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/IS;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/LA1;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/IS;-><init>(Lca/uhn/hl7v2/model/Message;I)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 28
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/LA1;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/IS;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/LA1;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/IS;-><init>(Lca/uhn/hl7v2/model/Message;I)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 29
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/LA1;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/IS;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/LA1;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/IS;-><init>(Lca/uhn/hl7v2/model/Message;I)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 30
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/LA1;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/AD;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/LA1;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/AD;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 31
    return-void
.end method


# virtual methods
.method public getAddress()Lca/uhn/hl7v2/model/v24/datatype/AD;
    .locals 2

    .line 133
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/AD;

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/LA1;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/AD;

    return-object v0
.end method

.method public getBed()Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 2

    .line 73
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/LA1;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    return-object v0
.end method

.method public getBuilding()Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 2

    .line 113
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/LA1;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

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

    .line 43
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/LA1;->data:[Lca/uhn/hl7v2/model/Type;

    aget-object v0, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 45
    :catch_0
    move-exception v0

    .line 47
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

    iget-object v3, p0, Lca/uhn/hl7v2/model/v24/datatype/LA1;->data:[Lca/uhn/hl7v2/model/Type;

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

    .line 35
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/LA1;->data:[Lca/uhn/hl7v2/model/Type;

    return-object v0
.end method

.method public getFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;
    .locals 2

    .line 83
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/HD;

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/LA1;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/HD;

    return-object v0
.end method

.method public getFloor()Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 2

    .line 123
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/LA1;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    return-object v0
.end method

.method public getLa11_PointOfCare()Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 2

    .line 58
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/LA1;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    return-object v0
.end method

.method public getLa12_Room()Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 2

    .line 68
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/LA1;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    return-object v0
.end method

.method public getLa13_Bed()Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 2

    .line 78
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/LA1;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    return-object v0
.end method

.method public getLa14_Facility()Lca/uhn/hl7v2/model/v24/datatype/HD;
    .locals 2

    .line 88
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/HD;

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/LA1;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/HD;

    return-object v0
.end method

.method public getLa15_LocationStatus()Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 2

    .line 98
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/LA1;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    return-object v0
.end method

.method public getLa16_PersonLocationType()Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 2

    .line 108
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/LA1;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    return-object v0
.end method

.method public getLa17_Building()Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 2

    .line 118
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/LA1;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    return-object v0
.end method

.method public getLa18_Floor()Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 2

    .line 128
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/LA1;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    return-object v0
.end method

.method public getLa19_Address()Lca/uhn/hl7v2/model/v24/datatype/AD;
    .locals 2

    .line 138
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/AD;

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/LA1;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/AD;

    return-object v0
.end method

.method public getLocationStatus()Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 2

    .line 93
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/LA1;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    return-object v0
.end method

.method public getPersonLocationType()Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 2

    .line 103
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/LA1;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    return-object v0
.end method

.method public getPointOfCare()Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 2

    .line 53
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/LA1;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    return-object v0
.end method

.method public getRoom()Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 2

    .line 63
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/LA1;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    return-object v0
.end method
