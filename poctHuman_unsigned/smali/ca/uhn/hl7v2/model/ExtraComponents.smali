.class public Lca/uhn/hl7v2/model/ExtraComponents;
.super Ljava/lang/Object;
.source "ExtraComponents.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x24493920a17715abL


# instance fields
.field private comps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/model/Variable;",
            ">;"
        }
    .end annotation
.end field

.field private message:Lca/uhn/hl7v2/model/Message;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Message;)V
    .locals 1
    .param p1, "message"    # Lca/uhn/hl7v2/model/Message;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/model/ExtraComponents;->comps:Ljava/util/List;

    .line 37
    iput-object p1, p0, Lca/uhn/hl7v2/model/ExtraComponents;->message:Lca/uhn/hl7v2/model/Message;

    .line 38
    return-void
.end method

.method private ensureComponentAndPredecessorsExist(I)V
    .locals 4
    .param p1, "comp"    # I

    .line 82
    iget-object v0, p0, Lca/uhn/hl7v2/model/ExtraComponents;->comps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 82
    .local v0, "i":I
    :goto_0
    if-le v0, p1, :cond_0

    .line 85
    .end local v0    # "i":I
    return-void

    .line 83
    .restart local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lca/uhn/hl7v2/model/ExtraComponents;->comps:Ljava/util/List;

    new-instance v2, Lca/uhn/hl7v2/model/Varies;

    iget-object v3, p0, Lca/uhn/hl7v2/model/ExtraComponents;->message:Lca/uhn/hl7v2/model/Message;

    invoke-direct {v2, v3}, Lca/uhn/hl7v2/model/Varies;-><init>(Lca/uhn/hl7v2/model/Message;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method clear()V
    .locals 1

    .line 92
    iget-object v0, p0, Lca/uhn/hl7v2/model/ExtraComponents;->comps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 93
    return-void
.end method

.method public getComponent(I)Lca/uhn/hl7v2/model/Variable;
    .locals 1
    .param p1, "comp"    # I

    .line 73
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/ExtraComponents;->ensureComponentAndPredecessorsExist(I)V

    .line 74
    iget-object v0, p0, Lca/uhn/hl7v2/model/ExtraComponents;->comps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Variable;

    return-object v0
.end method

.method public getMessage()Lca/uhn/hl7v2/model/Message;
    .locals 1

    .line 61
    iget-object v0, p0, Lca/uhn/hl7v2/model/ExtraComponents;->message:Lca/uhn/hl7v2/model/Message;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lca/uhn/hl7v2/model/ExtraComponents;->comps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 57
    const/4 v0, 0x1

    return v0

    .line 54
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lca/uhn/hl7v2/model/Variable;

    .line 55
    .local v1, "varies":Lca/uhn/hl7v2/model/Variable;
    invoke-interface {v1}, Lca/uhn/hl7v2/model/Variable;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0
.end method

.method public numComponents()I
    .locals 1

    .line 45
    iget-object v0, p0, Lca/uhn/hl7v2/model/ExtraComponents;->comps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExtraComponents"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lca/uhn/hl7v2/model/ExtraComponents;->comps:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
