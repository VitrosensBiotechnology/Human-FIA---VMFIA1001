.class public Lca/uhn/hl7v2/model/v24/datatype/TQ;
.super Lca/uhn/hl7v2/model/AbstractComposite;
.source "TQ.java"


# instance fields
.field private data:[Lca/uhn/hl7v2/model/Type;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Message;)V
    .locals 0
    .param p1, "message"    # Lca/uhn/hl7v2/model/Message;

    .line 15
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/AbstractComposite;-><init>(Lca/uhn/hl7v2/model/Message;)V

    .line 16
    invoke-direct {p0}, Lca/uhn/hl7v2/model/v24/datatype/TQ;->init()V

    .line 17
    return-void
.end method

.method private init()V
    .locals 4

    .line 21
    const/16 v0, 0xc

    new-array v0, v0, [Lca/uhn/hl7v2/model/Type;

    iput-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/TQ;->data:[Lca/uhn/hl7v2/model/Type;

    .line 22
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/TQ;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/CQ;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/TQ;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/CQ;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 23
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/TQ;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/RI;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/TQ;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    invoke-direct {v1, v3}, Lca/uhn/hl7v2/model/v24/datatype/RI;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 24
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/TQ;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/ST;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/TQ;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    invoke-direct {v1, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 25
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/TQ;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/TS;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/TQ;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    invoke-direct {v1, v3}, Lca/uhn/hl7v2/model/v24/datatype/TS;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 26
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/TQ;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/TS;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/TQ;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    invoke-direct {v1, v3}, Lca/uhn/hl7v2/model/v24/datatype/TS;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/4 v3, 0x4

    aput-object v1, v0, v3

    .line 27
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/TQ;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/ST;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/TQ;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    invoke-direct {v1, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/4 v3, 0x5

    aput-object v1, v0, v3

    .line 28
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/TQ;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/ST;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/TQ;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    invoke-direct {v1, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/4 v3, 0x6

    aput-object v1, v0, v3

    .line 29
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/TQ;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/TX;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/TQ;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    invoke-direct {v1, v3}, Lca/uhn/hl7v2/model/v24/datatype/TX;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/4 v3, 0x7

    aput-object v1, v0, v3

    .line 30
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/TQ;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/ID;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/TQ;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lca/uhn/hl7v2/model/v24/datatype/ID;-><init>(Lca/uhn/hl7v2/model/Message;I)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 31
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/TQ;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/OSD;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/TQ;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/OSD;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 32
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/TQ;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/CE;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/TQ;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/CE;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 33
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/TQ;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/NM;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/TQ;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/NM;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 34
    return-void
.end method


# virtual methods
.method public getComponent(I)Lca/uhn/hl7v2/model/Type;
    .locals 4
    .param p1, "number"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 46
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/TQ;->data:[Lca/uhn/hl7v2/model/Type;

    aget-object v0, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 48
    :catch_0
    move-exception v0

    .line 50
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

    iget-object v3, p0, Lca/uhn/hl7v2/model/v24/datatype/TQ;->data:[Lca/uhn/hl7v2/model/Type;

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

    .line 38
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/TQ;->data:[Lca/uhn/hl7v2/model/Type;

    return-object v0
.end method

.method public getCondition()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 116
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/TQ;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    return-object v0
.end method

.method public getConjunctionComponent()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 136
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/TQ;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    return-object v0
.end method

.method public getDuration()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 76
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/TQ;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    return-object v0
.end method

.method public getEndDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 96
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/TQ;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    return-object v0
.end method

.method public getInterval()Lca/uhn/hl7v2/model/v24/datatype/RI;
    .locals 2

    .line 66
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/RI;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/TQ;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/RI;

    return-object v0
.end method

.method public getOccurrenceDuration()Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 156
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/TQ;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method

.method public getOrderSequencing()Lca/uhn/hl7v2/model/v24/datatype/OSD;
    .locals 2

    .line 146
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/OSD;

    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/TQ;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/OSD;

    return-object v0
.end method

.method public getPriority()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 106
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/TQ;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    return-object v0
.end method

.method public getQuantity()Lca/uhn/hl7v2/model/v24/datatype/CQ;
    .locals 2

    .line 56
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/CQ;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/TQ;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CQ;

    return-object v0
.end method

.method public getStartDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 86
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/TQ;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    return-object v0
.end method

.method public getText()Lca/uhn/hl7v2/model/v24/datatype/TX;
    .locals 2

    .line 126
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/TX;

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/TQ;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TX;

    return-object v0
.end method

.method public getTotalOccurences()Lca/uhn/hl7v2/model/v24/datatype/NM;
    .locals 2

    .line 166
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/NM;

    const/16 v1, 0xb

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/TQ;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/NM;

    return-object v0
.end method

.method public getTq10_OrderSequencing()Lca/uhn/hl7v2/model/v24/datatype/OSD;
    .locals 2

    .line 151
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/OSD;

    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/TQ;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/OSD;

    return-object v0
.end method

.method public getTq11_OccurrenceDuration()Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 161
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/TQ;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method

.method public getTq12_TotalOccurences()Lca/uhn/hl7v2/model/v24/datatype/NM;
    .locals 2

    .line 171
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/NM;

    const/16 v1, 0xb

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/TQ;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/NM;

    return-object v0
.end method

.method public getTq1_Quantity()Lca/uhn/hl7v2/model/v24/datatype/CQ;
    .locals 2

    .line 61
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/CQ;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/TQ;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CQ;

    return-object v0
.end method

.method public getTq2_Interval()Lca/uhn/hl7v2/model/v24/datatype/RI;
    .locals 2

    .line 71
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/RI;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/TQ;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/RI;

    return-object v0
.end method

.method public getTq3_Duration()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 81
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/TQ;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    return-object v0
.end method

.method public getTq4_StartDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 91
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/TQ;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    return-object v0
.end method

.method public getTq5_EndDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;
    .locals 2

    .line 101
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/TQ;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TS;

    return-object v0
.end method

.method public getTq6_Priority()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 111
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/TQ;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    return-object v0
.end method

.method public getTq7_Condition()Lca/uhn/hl7v2/model/v24/datatype/ST;
    .locals 2

    .line 121
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/TQ;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ST;

    return-object v0
.end method

.method public getTq8_Text()Lca/uhn/hl7v2/model/v24/datatype/TX;
    .locals 2

    .line 131
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/TX;

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/TQ;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/TX;

    return-object v0
.end method

.method public getTq9_ConjunctionComponent()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 141
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/TQ;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    return-object v0
.end method
