.class public Lca/uhn/hl7v2/model/v24/datatype/PIP;
.super Lca/uhn/hl7v2/model/AbstractComposite;
.source "PIP.java"


# instance fields
.field private data:[Lca/uhn/hl7v2/model/Type;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Message;)V
    .locals 0
    .param p1, "message"    # Lca/uhn/hl7v2/model/Message;

    .line 15
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/AbstractComposite;-><init>(Lca/uhn/hl7v2/model/Message;)V

    .line 16
    invoke-direct {p0}, Lca/uhn/hl7v2/model/v24/datatype/PIP;->init()V

    .line 17
    return-void
.end method

.method private init()V
    .locals 3

    .line 21
    const/4 v0, 0x5

    new-array v0, v0, [Lca/uhn/hl7v2/model/Type;

    iput-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/PIP;->data:[Lca/uhn/hl7v2/model/Type;

    .line 22
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/PIP;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/CE;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/PIP;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/CE;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 23
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/PIP;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/CE;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/PIP;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/CE;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 24
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/PIP;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/DT;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/PIP;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/DT;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 25
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/PIP;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/DT;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/PIP;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/DT;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 26
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/PIP;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/EI;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/PIP;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/model/v24/datatype/EI;-><init>(Lca/uhn/hl7v2/model/Message;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 27
    return-void
.end method


# virtual methods
.method public getActivationDate()Lca/uhn/hl7v2/model/v24/datatype/DT;
    .locals 2

    .line 79
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/DT;

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/PIP;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/DT;

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

    .line 39
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/PIP;->data:[Lca/uhn/hl7v2/model/Type;

    aget-object v0, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 41
    :catch_0
    move-exception v0

    .line 43
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

    iget-object v3, p0, Lca/uhn/hl7v2/model/v24/datatype/PIP;->data:[Lca/uhn/hl7v2/model/Type;

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

    .line 31
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/PIP;->data:[Lca/uhn/hl7v2/model/Type;

    return-object v0
.end method

.method public getExpirationDate()Lca/uhn/hl7v2/model/v24/datatype/DT;
    .locals 2

    .line 69
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/DT;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/PIP;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/DT;

    return-object v0
.end method

.method public getFacility()Lca/uhn/hl7v2/model/v24/datatype/EI;
    .locals 2

    .line 89
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/EI;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/PIP;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/EI;

    return-object v0
.end method

.method public getPip1_Privilege()Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 54
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/PIP;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method

.method public getPip2_PrivilegeClass()Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 64
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/PIP;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method

.method public getPip3_ExpirationDate()Lca/uhn/hl7v2/model/v24/datatype/DT;
    .locals 2

    .line 74
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/DT;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/PIP;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/DT;

    return-object v0
.end method

.method public getPip4_ActivationDate()Lca/uhn/hl7v2/model/v24/datatype/DT;
    .locals 2

    .line 84
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/DT;

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/PIP;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/DT;

    return-object v0
.end method

.method public getPip5_Facility()Lca/uhn/hl7v2/model/v24/datatype/EI;
    .locals 2

    .line 94
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/EI;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/PIP;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/EI;

    return-object v0
.end method

.method public getPrivilege()Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 49
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/PIP;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method

.method public getPrivilegeClass()Lca/uhn/hl7v2/model/v24/datatype/CE;
    .locals 2

    .line 59
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/PIP;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/CE;

    return-object v0
.end method
