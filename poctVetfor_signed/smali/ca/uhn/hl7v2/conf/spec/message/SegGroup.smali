.class public Lca/uhn/hl7v2/conf/spec/message/SegGroup;
.super Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;
.source "SegGroup.java"

# interfaces
.implements Lca/uhn/hl7v2/conf/spec/message/ProfileStructure;


# instance fields
.field private longName:Ljava/lang/String;

.field private max:S

.field private min:S

.field private name:Ljava/lang/String;

.field private predicate:Ljava/lang/String;

.field private propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

.field private usage:Ljava/lang/String;

.field private vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;-><init>()V

    .line 19
    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/SegGroup;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    .line 22
    new-instance v0, Ljava/beans/VetoableChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/VetoableChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/SegGroup;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    .line 26
    return-void
.end method


# virtual methods
.method public addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/PropertyChangeListener;

    .line 40
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/SegGroup;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 41
    return-void
.end method

.method public addVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/VetoableChangeListener;

    .line 54
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/SegGroup;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/VetoableChangeSupport;->addVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V

    .line 55
    return-void
.end method

.method public getLongName()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/SegGroup;->longName:Ljava/lang/String;

    return-object v0
.end method

.method public getMax()S
    .locals 1

    .line 183
    iget-short v0, p0, Lca/uhn/hl7v2/conf/spec/message/SegGroup;->max:S

    return v0
.end method

.method public getMin()S
    .locals 1

    .line 160
    iget-short v0, p0, Lca/uhn/hl7v2/conf/spec/message/SegGroup;->min:S

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/SegGroup;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPredicate()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/SegGroup;->predicate:Ljava/lang/String;

    return-object v0
.end method

.method public getUsage()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/SegGroup;->usage:Ljava/lang/String;

    return-object v0
.end method

.method public removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/PropertyChangeListener;

    .line 47
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/SegGroup;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 48
    return-void
.end method

.method public removeVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/VetoableChangeListener;

    .line 61
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/SegGroup;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/VetoableChangeSupport;->removeVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V

    .line 62
    return-void
.end method

.method public setLongName(Ljava/lang/String;)V
    .locals 4
    .param p1, "longName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/SegGroup;->longName:Ljava/lang/String;

    .line 125
    .local v0, "oldLongName":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/SegGroup;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "longName"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    nop

    .line 129
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/message/SegGroup;->longName:Ljava/lang/String;

    .line 130
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/SegGroup;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "longName"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 131
    return-void

    .line 126
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lca/uhn/hl7v2/conf/ProfileException;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setMax(S)V
    .locals 5
    .param p1, "max"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 192
    iget-short v0, p0, Lca/uhn/hl7v2/conf/spec/message/SegGroup;->max:S

    .line 194
    .local v0, "oldMax":S
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/SegGroup;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "max"

    new-instance v3, Ljava/lang/Short;

    invoke-direct {v3, v0}, Ljava/lang/Short;-><init>(S)V

    new-instance v4, Ljava/lang/Short;

    invoke-direct {v4, p1}, Ljava/lang/Short;-><init>(S)V

    invoke-virtual {v1, v2, v3, v4}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    nop

    .line 198
    iput-short p1, p0, Lca/uhn/hl7v2/conf/spec/message/SegGroup;->max:S

    .line 199
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/SegGroup;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "max"

    new-instance v3, Ljava/lang/Short;

    invoke-direct {v3, v0}, Ljava/lang/Short;-><init>(S)V

    new-instance v4, Ljava/lang/Short;

    invoke-direct {v4, p1}, Ljava/lang/Short;-><init>(S)V

    invoke-virtual {v1, v2, v3, v4}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 200
    return-void

    .line 195
    :catch_0
    move-exception v1

    .line 196
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lca/uhn/hl7v2/conf/ProfileException;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setMin(S)V
    .locals 4
    .param p1, "min"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 169
    iget-short v0, p0, Lca/uhn/hl7v2/conf/spec/message/SegGroup;->min:S

    .line 171
    .local v0, "oldMin":S
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/SegGroup;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "min"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    nop

    .line 175
    iput-short p1, p0, Lca/uhn/hl7v2/conf/spec/message/SegGroup;->min:S

    .line 176
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/SegGroup;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "min"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;II)V

    .line 177
    return-void

    .line 172
    :catch_0
    move-exception v1

    .line 173
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lca/uhn/hl7v2/conf/ProfileException;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setName(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/SegGroup;->name:Ljava/lang/String;

    .line 102
    .local v0, "oldName":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/SegGroup;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "name"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    nop

    .line 106
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/message/SegGroup;->name:Ljava/lang/String;

    .line 107
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/SegGroup;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "name"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 108
    return-void

    .line 103
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lca/uhn/hl7v2/conf/ProfileException;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setPredicate(Ljava/lang/String;)V
    .locals 4
    .param p1, "predicate"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/SegGroup;->predicate:Ljava/lang/String;

    .line 79
    .local v0, "oldPredicate":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/SegGroup;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "predicate"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    nop

    .line 83
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/message/SegGroup;->predicate:Ljava/lang/String;

    .line 84
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/SegGroup;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "predicate"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    return-void

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lca/uhn/hl7v2/conf/ProfileException;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setUsage(Ljava/lang/String;)V
    .locals 4
    .param p1, "usage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/SegGroup;->usage:Ljava/lang/String;

    .line 148
    .local v0, "oldUsage":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/SegGroup;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "usage"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    nop

    .line 152
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/message/SegGroup;->usage:Ljava/lang/String;

    .line 153
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/SegGroup;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "usage"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    return-void

    .line 149
    :catch_0
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lca/uhn/hl7v2/conf/ProfileException;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SegGroup["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lca/uhn/hl7v2/conf/spec/message/SegGroup;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
