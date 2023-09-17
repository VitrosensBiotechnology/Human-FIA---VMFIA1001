.class public Lca/uhn/hl7v2/conf/spec/MetaData;
.super Ljava/lang/Object;
.source "MetaData.java"


# instance fields
.field private name:Ljava/lang/String;

.field private orgName:Ljava/lang/String;

.field private propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

.field private status:Ljava/lang/String;

.field private topics:Ljava/lang/String;

.field private version:Ljava/lang/String;

.field private vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lca/uhn/hl7v2/conf/spec/MetaData;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    .line 18
    new-instance v0, Ljava/beans/VetoableChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/VetoableChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lca/uhn/hl7v2/conf/spec/MetaData;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    .line 34
    return-void
.end method


# virtual methods
.method public addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/PropertyChangeListener;

    .line 40
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/MetaData;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 41
    return-void
.end method

.method public addVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/VetoableChangeListener;

    .line 54
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/MetaData;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/VetoableChangeSupport;->addVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V

    .line 55
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/MetaData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrgName()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/MetaData;->orgName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/MetaData;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTopics()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/MetaData;->topics:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/MetaData;->version:Ljava/lang/String;

    return-object v0
.end method

.method public removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/PropertyChangeListener;

    .line 47
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/MetaData;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 48
    return-void
.end method

.method public removeVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/VetoableChangeListener;

    .line 61
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/MetaData;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/VetoableChangeSupport;->removeVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V

    .line 62
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/MetaData;->name:Ljava/lang/String;

    .line 79
    .local v0, "oldName":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/MetaData;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "name"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    nop

    .line 83
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/MetaData;->name:Ljava/lang/String;

    .line 84
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/MetaData;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "name"

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

.method public setOrgName(Ljava/lang/String;)V
    .locals 4
    .param p1, "orgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/MetaData;->orgName:Ljava/lang/String;

    .line 102
    .local v0, "oldOrgName":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/MetaData;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "orgName"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    nop

    .line 106
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/MetaData;->orgName:Ljava/lang/String;

    .line 107
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/MetaData;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "orgName"

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

.method public setStatus(Ljava/lang/String;)V
    .locals 4
    .param p1, "status"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/MetaData;->status:Ljava/lang/String;

    .line 148
    .local v0, "oldStatus":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/MetaData;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "status"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    nop

    .line 152
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/MetaData;->status:Ljava/lang/String;

    .line 153
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/MetaData;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "status"

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

.method public setTopics(Ljava/lang/String;)V
    .locals 4
    .param p1, "topics"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/MetaData;->topics:Ljava/lang/String;

    .line 171
    .local v0, "oldTopics":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/MetaData;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "topics"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    nop

    .line 175
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/MetaData;->topics:Ljava/lang/String;

    .line 176
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/MetaData;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "topics"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

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

.method public setVersion(Ljava/lang/String;)V
    .locals 4
    .param p1, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/MetaData;->version:Ljava/lang/String;

    .line 125
    .local v0, "oldVersion":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/MetaData;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "version"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    nop

    .line 129
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/MetaData;->version:Ljava/lang/String;

    .line 130
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/MetaData;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "version"

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
