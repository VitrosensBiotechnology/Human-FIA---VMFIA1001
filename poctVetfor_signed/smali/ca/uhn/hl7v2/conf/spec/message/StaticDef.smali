.class public Lca/uhn/hl7v2/conf/spec/message/StaticDef;
.super Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;
.source "StaticDef.java"


# instance fields
.field private eventDesc:Ljava/lang/String;

.field private eventType:Ljava/lang/String;

.field private identifier:Ljava/lang/String;

.field private metaData:Lca/uhn/hl7v2/conf/spec/MetaData;

.field private msgStructID:Ljava/lang/String;

.field private msgType:Ljava/lang/String;

.field private orderControl:Ljava/lang/String;

.field private propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

.field private role:Ljava/lang/String;

.field private vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;-><init>()V

    .line 37
    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    .line 40
    new-instance v0, Ljava/beans/VetoableChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/VetoableChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    .line 44
    return-void
.end method


# virtual methods
.method public addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/PropertyChangeListener;

    .line 50
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 51
    return-void
.end method

.method public addVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/VetoableChangeListener;

    .line 64
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/VetoableChangeSupport;->addVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V

    .line 65
    return-void
.end method

.method public getEventDesc()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->eventDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getEventType()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->eventType:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getMetaData()Lca/uhn/hl7v2/conf/spec/MetaData;
    .locals 1

    .line 78
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->metaData:Lca/uhn/hl7v2/conf/spec/MetaData;

    return-object v0
.end method

.method public getMsgStructID()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->msgStructID:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgType()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->msgType:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderControl()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->orderControl:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->role:Ljava/lang/String;

    return-object v0
.end method

.method public removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/PropertyChangeListener;

    .line 57
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 58
    return-void
.end method

.method public removeVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/VetoableChangeListener;

    .line 71
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/VetoableChangeSupport;->removeVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V

    .line 72
    return-void
.end method

.method public setEventDesc(Ljava/lang/String;)V
    .locals 4
    .param p1, "eventDesc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->eventDesc:Ljava/lang/String;

    .line 204
    .local v0, "oldEventDesc":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "eventDesc"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    nop

    .line 208
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->eventDesc:Ljava/lang/String;

    .line 209
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "eventDesc"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 210
    return-void

    .line 205
    :catch_0
    move-exception v1

    .line 206
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lca/uhn/hl7v2/conf/ProfileException;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setEventType(Ljava/lang/String;)V
    .locals 4
    .param p1, "eventType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->eventType:Ljava/lang/String;

    .line 135
    .local v0, "oldEventType":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "eventType"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    nop

    .line 139
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->eventType:Ljava/lang/String;

    .line 140
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "eventType"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 141
    return-void

    .line 136
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lca/uhn/hl7v2/conf/ProfileException;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 4
    .param p1, "identifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->identifier:Ljava/lang/String;

    .line 227
    .local v0, "oldIdentifier":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "identifier"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    nop

    .line 231
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->identifier:Ljava/lang/String;

    .line 232
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "identifier"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 233
    return-void

    .line 228
    :catch_0
    move-exception v1

    .line 229
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lca/uhn/hl7v2/conf/ProfileException;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setMetaData(Lca/uhn/hl7v2/conf/spec/MetaData;)V
    .locals 4
    .param p1, "metaData"    # Lca/uhn/hl7v2/conf/spec/MetaData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->metaData:Lca/uhn/hl7v2/conf/spec/MetaData;

    .line 89
    .local v0, "oldMetaData":Lca/uhn/hl7v2/conf/spec/MetaData;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "metaData"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    nop

    .line 93
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->metaData:Lca/uhn/hl7v2/conf/spec/MetaData;

    .line 94
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "metaData"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    return-void

    .line 90
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lca/uhn/hl7v2/conf/ProfileException;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setMsgStructID(Ljava/lang/String;)V
    .locals 4
    .param p1, "msgStructID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->msgStructID:Ljava/lang/String;

    .line 158
    .local v0, "oldMsgStructID":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "msgStructID"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    nop

    .line 162
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->msgStructID:Ljava/lang/String;

    .line 163
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "msgStructID"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 164
    return-void

    .line 159
    :catch_0
    move-exception v1

    .line 160
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lca/uhn/hl7v2/conf/ProfileException;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setMsgType(Ljava/lang/String;)V
    .locals 4
    .param p1, "msgType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->msgType:Ljava/lang/String;

    .line 112
    .local v0, "oldMsgType":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "msgType"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    nop

    .line 116
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->msgType:Ljava/lang/String;

    .line 117
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "msgType"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    return-void

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lca/uhn/hl7v2/conf/ProfileException;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setOrderControl(Ljava/lang/String;)V
    .locals 4
    .param p1, "orderControl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->orderControl:Ljava/lang/String;

    .line 181
    .local v0, "oldOrderControl":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "orderControl"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    nop

    .line 185
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->orderControl:Ljava/lang/String;

    .line 186
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "orderControl"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 187
    return-void

    .line 182
    :catch_0
    move-exception v1

    .line 183
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lca/uhn/hl7v2/conf/ProfileException;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setRole(Ljava/lang/String;)V
    .locals 4
    .param p1, "role"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->role:Ljava/lang/String;

    .line 250
    .local v0, "oldRole":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "role"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    nop

    .line 254
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->role:Ljava/lang/String;

    .line 255
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "role"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 256
    return-void

    .line 251
    :catch_0
    move-exception v1

    .line 252
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lca/uhn/hl7v2/conf/ProfileException;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
