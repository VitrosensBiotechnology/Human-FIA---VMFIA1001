.class public Lca/uhn/hl7v2/conf/spec/usecase/UseCase;
.super Ljava/lang/Object;
.source "UseCase.java"


# instance fields
.field private actor:Lca/uhn/hl7v2/conf/spec/usecase/Actor;

.field private derivativeEvent:Lca/uhn/hl7v2/conf/spec/usecase/DerivativeEvent;

.field private eventFlow:Lca/uhn/hl7v2/conf/spec/usecase/EventFlow;

.field private postCondition:Lca/uhn/hl7v2/conf/spec/usecase/PostCondition;

.field private preCondition:Lca/uhn/hl7v2/conf/spec/usecase/PreCondition;

.field private propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

.field private vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lca/uhn/hl7v2/conf/spec/usecase/UseCase;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    .line 16
    new-instance v0, Ljava/beans/VetoableChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/VetoableChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lca/uhn/hl7v2/conf/spec/usecase/UseCase;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    .line 32
    return-void
.end method


# virtual methods
.method public addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/PropertyChangeListener;

    .line 38
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/usecase/UseCase;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 39
    return-void
.end method

.method public addVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/VetoableChangeListener;

    .line 52
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/usecase/UseCase;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/VetoableChangeSupport;->addVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V

    .line 53
    return-void
.end method

.method public getActor()Lca/uhn/hl7v2/conf/spec/usecase/Actor;
    .locals 1

    .line 66
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/usecase/UseCase;->actor:Lca/uhn/hl7v2/conf/spec/usecase/Actor;

    return-object v0
.end method

.method public getDerivativeEvent()Lca/uhn/hl7v2/conf/spec/usecase/DerivativeEvent;
    .locals 1

    .line 142
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/usecase/UseCase;->derivativeEvent:Lca/uhn/hl7v2/conf/spec/usecase/DerivativeEvent;

    return-object v0
.end method

.method public getEventFlow()Lca/uhn/hl7v2/conf/spec/usecase/EventFlow;
    .locals 1

    .line 123
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/usecase/UseCase;->eventFlow:Lca/uhn/hl7v2/conf/spec/usecase/EventFlow;

    return-object v0
.end method

.method public getPostCondition()Lca/uhn/hl7v2/conf/spec/usecase/PostCondition;
    .locals 1

    .line 104
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/usecase/UseCase;->postCondition:Lca/uhn/hl7v2/conf/spec/usecase/PostCondition;

    return-object v0
.end method

.method public getPreCondition()Lca/uhn/hl7v2/conf/spec/usecase/PreCondition;
    .locals 1

    .line 85
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/usecase/UseCase;->preCondition:Lca/uhn/hl7v2/conf/spec/usecase/PreCondition;

    return-object v0
.end method

.method public removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/PropertyChangeListener;

    .line 45
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/usecase/UseCase;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 46
    return-void
.end method

.method public removeVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/VetoableChangeListener;

    .line 59
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/usecase/UseCase;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/VetoableChangeSupport;->removeVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V

    .line 60
    return-void
.end method

.method public setActor(Lca/uhn/hl7v2/conf/spec/usecase/Actor;)V
    .locals 3
    .param p1, "actor"    # Lca/uhn/hl7v2/conf/spec/usecase/Actor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/PropertyVetoException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/usecase/UseCase;->actor:Lca/uhn/hl7v2/conf/spec/usecase/Actor;

    .line 76
    .local v0, "oldActor":Lca/uhn/hl7v2/conf/spec/usecase/Actor;
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/usecase/UseCase;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "actor"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/usecase/UseCase;->actor:Lca/uhn/hl7v2/conf/spec/usecase/Actor;

    .line 78
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/usecase/UseCase;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "actor"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method public setDerivativeEvent(Lca/uhn/hl7v2/conf/spec/usecase/DerivativeEvent;)V
    .locals 3
    .param p1, "derivativeEvent"    # Lca/uhn/hl7v2/conf/spec/usecase/DerivativeEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/PropertyVetoException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/usecase/UseCase;->derivativeEvent:Lca/uhn/hl7v2/conf/spec/usecase/DerivativeEvent;

    .line 152
    .local v0, "oldDerivativeEvent":Lca/uhn/hl7v2/conf/spec/usecase/DerivativeEvent;
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/usecase/UseCase;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "derivativeEvent"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 153
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/usecase/UseCase;->derivativeEvent:Lca/uhn/hl7v2/conf/spec/usecase/DerivativeEvent;

    .line 154
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/usecase/UseCase;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "derivativeEvent"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 155
    return-void
.end method

.method public setEventFlow(Lca/uhn/hl7v2/conf/spec/usecase/EventFlow;)V
    .locals 3
    .param p1, "eventFlow"    # Lca/uhn/hl7v2/conf/spec/usecase/EventFlow;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/PropertyVetoException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/usecase/UseCase;->eventFlow:Lca/uhn/hl7v2/conf/spec/usecase/EventFlow;

    .line 133
    .local v0, "oldEventFlow":Lca/uhn/hl7v2/conf/spec/usecase/EventFlow;
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/usecase/UseCase;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "eventFlow"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 134
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/usecase/UseCase;->eventFlow:Lca/uhn/hl7v2/conf/spec/usecase/EventFlow;

    .line 135
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/usecase/UseCase;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "eventFlow"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    return-void
.end method

.method public setPostCondition(Lca/uhn/hl7v2/conf/spec/usecase/PostCondition;)V
    .locals 3
    .param p1, "postCondition"    # Lca/uhn/hl7v2/conf/spec/usecase/PostCondition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/PropertyVetoException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/usecase/UseCase;->postCondition:Lca/uhn/hl7v2/conf/spec/usecase/PostCondition;

    .line 114
    .local v0, "oldPostCondition":Lca/uhn/hl7v2/conf/spec/usecase/PostCondition;
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/usecase/UseCase;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "postCondition"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/usecase/UseCase;->postCondition:Lca/uhn/hl7v2/conf/spec/usecase/PostCondition;

    .line 116
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/usecase/UseCase;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "postCondition"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    return-void
.end method

.method public setPreCondition(Lca/uhn/hl7v2/conf/spec/usecase/PreCondition;)V
    .locals 3
    .param p1, "preCondition"    # Lca/uhn/hl7v2/conf/spec/usecase/PreCondition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/PropertyVetoException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/usecase/UseCase;->preCondition:Lca/uhn/hl7v2/conf/spec/usecase/PreCondition;

    .line 95
    .local v0, "oldPreCondition":Lca/uhn/hl7v2/conf/spec/usecase/PreCondition;
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/usecase/UseCase;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "preCondition"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/usecase/UseCase;->preCondition:Lca/uhn/hl7v2/conf/spec/usecase/PreCondition;

    .line 97
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/usecase/UseCase;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "preCondition"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 98
    return-void
.end method
