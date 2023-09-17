.class public Lca/uhn/hl7v2/conf/spec/Conformance;
.super Ljava/lang/Object;
.source "Conformance.java"


# instance fields
.field private acceptAck:Ljava/lang/String;

.field private applicationAck:Ljava/lang/String;

.field private dnamicID:Ljava/lang/String;

.field private msgAckMode:Ljava/lang/String;

.field private propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

.field private staticID:Ljava/lang/String;

.field private vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lca/uhn/hl7v2/conf/spec/Conformance;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    .line 17
    new-instance v0, Ljava/beans/VetoableChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/VetoableChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lca/uhn/hl7v2/conf/spec/Conformance;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    .line 33
    return-void
.end method


# virtual methods
.method public addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/PropertyChangeListener;

    .line 39
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/Conformance;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 40
    return-void
.end method

.method public addVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/VetoableChangeListener;

    .line 53
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/Conformance;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/VetoableChangeSupport;->addVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V

    .line 54
    return-void
.end method

.method public getAcceptAck()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/Conformance;->acceptAck:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationAck()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/Conformance;->applicationAck:Ljava/lang/String;

    return-object v0
.end method

.method public getDnamicID()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/Conformance;->dnamicID:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgAckMode()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/Conformance;->msgAckMode:Ljava/lang/String;

    return-object v0
.end method

.method public getStaticID()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/Conformance;->staticID:Ljava/lang/String;

    return-object v0
.end method

.method public removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/PropertyChangeListener;

    .line 46
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/Conformance;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 47
    return-void
.end method

.method public removeVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/VetoableChangeListener;

    .line 60
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/Conformance;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/VetoableChangeSupport;->removeVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V

    .line 61
    return-void
.end method

.method public setAcceptAck(Ljava/lang/String;)V
    .locals 3
    .param p1, "acceptAck"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/PropertyVetoException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/Conformance;->acceptAck:Ljava/lang/String;

    .line 77
    .local v0, "oldAcceptAck":Ljava/lang/String;
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/Conformance;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "acceptAck"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/Conformance;->acceptAck:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/Conformance;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "acceptAck"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public setApplicationAck(Ljava/lang/String;)V
    .locals 3
    .param p1, "applicationAck"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/PropertyVetoException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/Conformance;->applicationAck:Ljava/lang/String;

    .line 96
    .local v0, "oldApplicationAck":Ljava/lang/String;
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/Conformance;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "applicationAck"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/Conformance;->applicationAck:Ljava/lang/String;

    .line 98
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/Conformance;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "applicationAck"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method public setDnamicID(Ljava/lang/String;)V
    .locals 3
    .param p1, "dnamicID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/PropertyVetoException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/Conformance;->dnamicID:Ljava/lang/String;

    .line 134
    .local v0, "oldDnamicID":Ljava/lang/String;
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/Conformance;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "dnamicID"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 135
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/Conformance;->dnamicID:Ljava/lang/String;

    .line 136
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/Conformance;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "dnamicID"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 137
    return-void
.end method

.method public setMsgAckMode(Ljava/lang/String;)V
    .locals 3
    .param p1, "msgAckMode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/PropertyVetoException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/Conformance;->msgAckMode:Ljava/lang/String;

    .line 153
    .local v0, "oldMsgAckMode":Ljava/lang/String;
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/Conformance;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "msgAckMode"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/Conformance;->msgAckMode:Ljava/lang/String;

    .line 155
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/Conformance;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "msgAckMode"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    return-void
.end method

.method public setStaticID(Ljava/lang/String;)V
    .locals 3
    .param p1, "staticID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/PropertyVetoException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/Conformance;->staticID:Ljava/lang/String;

    .line 115
    .local v0, "oldStaticID":Ljava/lang/String;
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/Conformance;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "staticID"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 116
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/Conformance;->staticID:Ljava/lang/String;

    .line 117
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/Conformance;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "staticID"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    return-void
.end method
