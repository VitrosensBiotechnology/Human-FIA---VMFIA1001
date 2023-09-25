.class public Lca/uhn/hl7v2/model/v24/datatype/NDL;
.super Lca/uhn/hl7v2/model/AbstractComposite;
.source "NDL.java"


# instance fields
.field private data:[Lca/uhn/hl7v2/model/Type;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Message;)V
    .locals 0
    .param p1, "message"    # Lca/uhn/hl7v2/model/Message;

    .line 15
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/AbstractComposite;-><init>(Lca/uhn/hl7v2/model/Message;)V

    .line 16
    invoke-direct {p0}, Lca/uhn/hl7v2/model/v24/datatype/NDL;->init()V

    .line 17
    return-void
.end method

.method private init()V
    .locals 4

    .line 21
    const/16 v0, 0xb

    new-array v0, v0, [Lca/uhn/hl7v2/model/Type;

    iput-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/NDL;->data:[Lca/uhn/hl7v2/model/Type;

    .line 22
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/NDL;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/CNN;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/NDL;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/CNN;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 23
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/NDL;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/TS;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/NDL;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    invoke-direct {v1, v3}, Lca/uhn/hl7v2/model/v24/datatype/TS;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 24
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/NDL;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/TS;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/NDL;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    invoke-direct {v1, v3}, Lca/uhn/hl7v2/model/v24/datatype/TS;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 25
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/NDL;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/IS;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/NDL;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lca/uhn/hl7v2/model/v24/datatype/IS;-><init>(Lca/uhn/hl7v2/model/Message;I)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 26
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/NDL;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/IS;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/NDL;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lca/uhn/hl7v2/model/v24/datatype/IS;-><init>(Lca/uhn/hl7v2/model/Message;I)V

    const/4 v3, 0x4

    aput-object v1, v0, v3

    .line 27
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/NDL;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/IS;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/NDL;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lca/uhn/hl7v2/model/v24/datatype/IS;-><init>(Lca/uhn/hl7v2/model/Message;I)V

    const/4 v3, 0x5

    aput-object v1, v0, v3

    .line 28
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/NDL;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/HD;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/NDL;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    invoke-direct {v1, v3}, Lca/uhn/hl7v2/model/v24/datatype/HD;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/4 v3, 0x6

    aput-object v1, v0, v3

    .line 29
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/NDL;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/IS;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/NDL;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lca/uhn/hl7v2/model/v24/datatype/IS;-><init>(Lca/uhn/hl7v2/model/Message;I)V

    const/4 v3, 0x7

    aput-object v1, v0, v3

    .line 30
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/NDL;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/IS;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/NDL;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lca/uhn/hl7v2/model/v24/datatype/IS;-><init>(Lca/uhn/hl7v2/model/Message;I)V

    const/16 v3, 0x8

    aput-object v1, v0, v3

    .line 31
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/NDL;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/IS;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/NDL;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lca/uhn/hl7v2/model/v24/datatype/IS;-><init>(Lca/uhn/hl7v2/model/Message;I)V

    const/16 v3, 0x9

    aput-object v1, v0, v3

    .line 32
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/NDL;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/IS;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/NDL;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lca/uhn/hl7v2/model/v24/datatype/IS;-><init>(Lca/uhn/hl7v2/model/Message;I)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 33
    return-void
.end method


# virtual methods
.method public getBed()Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 2

    .line 105
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/NDL;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    return-object v0
.end method

.method public getBuilding()Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 2

    .line 145
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/NDL;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

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

    .line 45
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/NDL;->data:[Lca/uhn/hl7v2/model/Type;

    aget-object v0, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 47
    :catch_0
    move-exception v0

    .line 49
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

    iget-object v3, p0, Lca/uhn/hl7v2/model/v24/datatype/NDL;->data:[Lca/uhn/hl7v2/model/Type;

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

    .line 37
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/NDL;->data:[Lca/uhn/hl7v2/model/Type;

    return-object v0
.end method

.method public getEndDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 75
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/NDL;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    return-object v0
.end method

.method public getFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;
    .locals 2

    .line 115
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/HD;

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/NDL;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/HD;

    return-object v0
.end method

.method public getFloor()Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 2

    .line 155
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/NDL;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    return-object v0
.end method

.method public getLocationStatus()Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 2

    .line 125
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/NDL;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    return-object v0
.end method

.method public getNdl10_Building()Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 2

    .line 150
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/NDL;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    return-object v0
.end method

.method public getNdl11_Floor()Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 2

    .line 160
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/NDL;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    return-object v0
.end method

.method public getNdl1_OPName()Lca/uhn/hl7v2/model/v24/datatype/CNN;
    .locals 2

    .line 60
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/CNN;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/NDL;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CNN;

    return-object v0
.end method

.method public getNdl2_StartDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 70
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/NDL;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    return-object v0
.end method

.method public getNdl3_EndDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 80
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/NDL;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    return-object v0
.end method

.method public getNdl4_PointOfCare()Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 2

    .line 90
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/NDL;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    return-object v0
.end method

.method public getNdl5_Room()Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 2

    .line 100
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/NDL;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    return-object v0
.end method

.method public getNdl6_Bed()Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 2

    .line 110
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/NDL;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    return-object v0
.end method

.method public getNdl7_Facility()Lca/uhn/hl7v2/model/v24/datatype/HD;
    .locals 2

    .line 120
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/HD;

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/NDL;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/HD;

    return-object v0
.end method

.method public getNdl8_LocationStatus()Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 2

    .line 130
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/NDL;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    return-object v0
.end method

.method public getNdl9_PersonLocationType()Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 2

    .line 140
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/NDL;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    return-object v0
.end method

.method public getOPName()Lca/uhn/hl7v2/model/v24/datatype/CNN;
    .locals 2

    .line 55
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/CNN;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/NDL;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CNN;

    return-object v0
.end method

.method public getPersonLocationType()Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 2

    .line 135
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/NDL;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    return-object v0
.end method

.method public getPointOfCare()Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 2

    .line 85
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/NDL;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    return-object v0
.end method

.method public getRoom()Lca/uhn/hl7v2/model/v24/datatype/IS;
    .locals 2

    .line 95
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/NDL;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/IS;

    return-object v0
.end method

.method public getStartDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 65
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/NDL;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    return-object v0
.end method
