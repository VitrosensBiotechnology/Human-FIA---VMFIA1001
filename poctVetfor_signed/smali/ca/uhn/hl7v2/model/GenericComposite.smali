.class public Lca/uhn/hl7v2/model/GenericComposite;
.super Lca/uhn/hl7v2/model/AbstractComposite;
.source "GenericComposite.java"


# instance fields
.field private components:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/model/Type;",
            ">;"
        }
    .end annotation
.end field

.field private message:Lca/uhn/hl7v2/model/Message;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Message;)V
    .locals 2
    .param p1, "message"    # Lca/uhn/hl7v2/model/Message;

    .line 25
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/AbstractComposite;-><init>(Lca/uhn/hl7v2/model/Message;)V

    .line 26
    iput-object p1, p0, Lca/uhn/hl7v2/model/GenericComposite;->message:Lca/uhn/hl7v2/model/Message;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lca/uhn/hl7v2/model/GenericComposite;->components:Ljava/util/List;

    .line 28
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

    .line 35
    iget-object v0, p0, Lca/uhn/hl7v2/model/GenericComposite;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 35
    .local v0, "i":I
    :goto_0
    if-le v0, p1, :cond_0

    .line 38
    .end local v0    # "i":I
    iget-object v0, p0, Lca/uhn/hl7v2/model/GenericComposite;->components:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Type;

    return-object v0

    .line 36
    .restart local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lca/uhn/hl7v2/model/GenericComposite;->components:Ljava/util/List;

    new-instance v2, Lca/uhn/hl7v2/model/Varies;

    iget-object v3, p0, Lca/uhn/hl7v2/model/GenericComposite;->message:Lca/uhn/hl7v2/model/Message;

    invoke-direct {v2, v3}, Lca/uhn/hl7v2/model/Varies;-><init>(Lca/uhn/hl7v2/model/Message;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getComponents()[Lca/uhn/hl7v2/model/Type;
    .locals 2

    .line 45
    iget-object v0, p0, Lca/uhn/hl7v2/model/GenericComposite;->components:Ljava/util/List;

    iget-object v1, p0, Lca/uhn/hl7v2/model/GenericComposite;->components:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lca/uhn/hl7v2/model/Type;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/model/Type;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 50
    const-string v0, "UNKNOWN"

    return-object v0
.end method
