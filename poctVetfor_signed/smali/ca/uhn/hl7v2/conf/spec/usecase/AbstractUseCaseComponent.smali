.class public Lca/uhn/hl7v2/conf/spec/usecase/AbstractUseCaseComponent;
.super Ljava/lang/Object;
.source "AbstractUseCaseComponent.java"


# instance fields
.field private body:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

.field private vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lca/uhn/hl7v2/conf/spec/usecase/AbstractUseCaseComponent;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    .line 16
    new-instance v0, Ljava/beans/VetoableChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/VetoableChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lca/uhn/hl7v2/conf/spec/usecase/AbstractUseCaseComponent;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    .line 23
    return-void
.end method


# virtual methods
.method public addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/PropertyChangeListener;

    .line 29
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/usecase/AbstractUseCaseComponent;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 30
    return-void
.end method

.method public addVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/VetoableChangeListener;

    .line 43
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/usecase/AbstractUseCaseComponent;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/VetoableChangeSupport;->addVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V

    .line 44
    return-void
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/usecase/AbstractUseCaseComponent;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/usecase/AbstractUseCaseComponent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/PropertyChangeListener;

    .line 36
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/usecase/AbstractUseCaseComponent;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 37
    return-void
.end method

.method public removeVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/VetoableChangeListener;

    .line 50
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/usecase/AbstractUseCaseComponent;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/VetoableChangeSupport;->removeVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V

    .line 51
    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 3
    .param p1, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/PropertyVetoException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/usecase/AbstractUseCaseComponent;->body:Ljava/lang/String;

    .line 86
    .local v0, "oldBody":Ljava/lang/String;
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/usecase/AbstractUseCaseComponent;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "body"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/usecase/AbstractUseCaseComponent;->body:Ljava/lang/String;

    .line 88
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/usecase/AbstractUseCaseComponent;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "body"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/PropertyVetoException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/usecase/AbstractUseCaseComponent;->name:Ljava/lang/String;

    .line 67
    .local v0, "oldName":Ljava/lang/String;
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/usecase/AbstractUseCaseComponent;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "name"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/usecase/AbstractUseCaseComponent;->name:Ljava/lang/String;

    .line 69
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/usecase/AbstractUseCaseComponent;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "name"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    return-void
.end method
