.class public Lca/uhn/hl7v2/model/v24/datatype/CD;
.super Lca/uhn/hl7v2/model/AbstractComposite;
.source "CD.java"


# instance fields
.field private data:[Lca/uhn/hl7v2/model/Type;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Message;)V
    .locals 0
    .param p1, "message"    # Lca/uhn/hl7v2/model/Message;

    .line 15
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/AbstractComposite;-><init>(Lca/uhn/hl7v2/model/Message;)V

    .line 16
    invoke-direct {p0}, Lca/uhn/hl7v2/model/v24/datatype/CD;->init()V

    .line 17
    return-void
.end method

.method private init()V
    .locals 3

    .line 21
    const/4 v0, 0x6

    new-array v0, v0, [Lca/uhn/hl7v2/model/Type;

    iput-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/CD;->data:[Lca/uhn/hl7v2/model/Type;

    .line 22
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/CD;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/WVI;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/CD;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/WVI;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 23
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/CD;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/WVS;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/CD;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/WVS;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 24
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/CD;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/CSU;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/CD;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/CSU;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 25
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/CD;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/CCP;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/CD;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/CCP;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 26
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/CD;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/NM;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/CD;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/NM;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 27
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/CD;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/NR;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/CD;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/NR;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 28
    return-void
.end method


# virtual methods
.method public getCd1_ChannelIdentifier()Lca/uhn/hl7v2/model/v24/datatype/WVI;
    .locals 2

    .line 55
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/WVI;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/CD;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/WVI;

    return-object v0
.end method

.method public getCd2_WaveformSource()Lca/uhn/hl7v2/model/v24/datatype/WVS;
    .locals 2

    .line 65
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/WVS;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/CD;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/WVS;

    return-object v0
.end method

.method public getCd3_ChannelSensitivityUnits()Lca/uhn/hl7v2/model/v24/datatype/CSU;
    .locals 2

    .line 75
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/CSU;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/CD;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CSU;

    return-object v0
.end method

.method public getCd4_ChannelCalibrationParameters()Lca/uhn/hl7v2/model/v24/datatype/CCP;
    .locals 2

    .line 85
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/CCP;

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/CD;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CCP;

    return-object v0
.end method

.method public getCd5_ChannelSamplingFrequency()Lca/uhn/hl7v2/model/v24/datatype/NM;
    .locals 2

    .line 95
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/NM;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/CD;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/NM;

    return-object v0
.end method

.method public getCd6_MinimumMaximumDataValues()Lca/uhn/hl7v2/model/v24/datatype/NR;
    .locals 2

    .line 105
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/NR;

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/CD;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/NR;

    return-object v0
.end method

.method public getChannelCalibrationParameters()Lca/uhn/hl7v2/model/v24/datatype/CCP;
    .locals 2

    .line 80
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/CCP;

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/CD;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CCP;

    return-object v0
.end method

.method public getChannelIdentifier()Lca/uhn/hl7v2/model/v24/datatype/WVI;
    .locals 2

    .line 50
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/WVI;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/CD;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/WVI;

    return-object v0
.end method

.method public getChannelSamplingFrequency()Lca/uhn/hl7v2/model/v24/datatype/NM;
    .locals 2

    .line 90
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/NM;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/CD;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/NM;

    return-object v0
.end method

.method public getChannelSensitivityUnits()Lca/uhn/hl7v2/model/v24/datatype/CSU;
    .locals 2

    .line 70
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/CSU;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/CD;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CSU;

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

    .line 40
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/CD;->data:[Lca/uhn/hl7v2/model/Type;

    aget-object v0, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 42
    :catch_0
    move-exception v0

    .line 44
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

    iget-object v3, p0, Lca/uhn/hl7v2/model/v24/datatype/CD;->data:[Lca/uhn/hl7v2/model/Type;

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

    .line 32
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/CD;->data:[Lca/uhn/hl7v2/model/Type;

    return-object v0
.end method

.method public getMinimumMaximumDataValues()Lca/uhn/hl7v2/model/v24/datatype/NR;
    .locals 2

    .line 100
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/NR;

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/CD;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/NR;

    return-object v0
.end method

.method public getWaveformSource()Lca/uhn/hl7v2/model/v24/datatype/WVS;
    .locals 2

    .line 60
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/WVS;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/CD;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/WVS;

    return-object v0
.end method
