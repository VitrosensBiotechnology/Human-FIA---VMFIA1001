.class public Lca/uhn/hl7v2/conf/spec/message/Component;
.super Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;
.source "Component.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lca/uhn/hl7v2/conf/spec/message/AbstractComponent<",
        "Lca/uhn/hl7v2/conf/spec/message/Component;",
        ">;"
    }
.end annotation


# instance fields
.field private final components:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/conf/spec/message/SubComponent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/Component;->components:Ljava/util/List;

    .line 19
    return-void
.end method


# virtual methods
.method public getChildrenAsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/conf/spec/message/SubComponent;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/Component;->components:Ljava/util/List;

    return-object v0
.end method

.method public getSubComponent(I)Lca/uhn/hl7v2/conf/spec/message/SubComponent;
    .locals 2
    .param p1, "index"    # I

    .line 30
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/Component;->components:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/conf/spec/message/SubComponent;

    return-object v0
.end method

.method public getSubComponents()I
    .locals 1

    .line 63
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/Component;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public setSubComponent(ILca/uhn/hl7v2/conf/spec/message/SubComponent;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "component"    # Lca/uhn/hl7v2/conf/spec/message/SubComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 45
    add-int/lit8 p1, p1, -0x1

    .line 46
    :goto_0
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/Component;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-le v0, p1, :cond_0

    .line 49
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/Component;->components:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/conf/spec/message/SubComponent;

    .line 50
    .local v0, "oldComponent":Lca/uhn/hl7v2/conf/spec/message/SubComponent;
    iget-object v2, p0, Lca/uhn/hl7v2/conf/spec/message/Component;->components:Ljava/util/List;

    invoke-interface {v2, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 52
    :try_start_0
    iget-object v2, p0, Lca/uhn/hl7v2/conf/spec/message/Component;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v3, "components"

    invoke-virtual {v2, v3, v1, v1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/beans/PropertyVetoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    nop

    .line 57
    iget-object v2, p0, Lca/uhn/hl7v2/conf/spec/message/Component;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v3, "components"

    invoke-virtual {v2, v3, v1, v1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    return-void

    .line 53
    :catch_0
    move-exception v2

    .line 54
    .local v2, "vetoException":Ljava/beans/PropertyVetoException;
    iget-object v3, p0, Lca/uhn/hl7v2/conf/spec/message/Component;->components:Ljava/util/List;

    invoke-interface {v3, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 55
    new-instance v3, Lca/uhn/hl7v2/conf/ProfileException;

    invoke-direct {v3, v1, v2}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 47
    .end local v0    # "oldComponent":Lca/uhn/hl7v2/conf/spec/message/SubComponent;
    .end local v2    # "vetoException":Ljava/beans/PropertyVetoException;
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/Component;->components:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Component["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lca/uhn/hl7v2/conf/spec/message/Component;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
