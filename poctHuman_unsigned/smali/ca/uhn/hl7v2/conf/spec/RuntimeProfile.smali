.class public Lca/uhn/hl7v2/conf/spec/RuntimeProfile;
.super Ljava/lang/Object;
.source "RuntimeProfile.java"


# instance fields
.field private HL7OID:Ljava/lang/String;

.field private HL7Version:Ljava/lang/String;

.field private conformance:Lca/uhn/hl7v2/conf/spec/Conformance;

.field private conformanceType:Ljava/lang/String;

.field private encodings:[Lca/uhn/hl7v2/conf/spec/Encoding;

.field private impNote:Ljava/lang/String;

.field private message:Lca/uhn/hl7v2/conf/spec/message/StaticDef;

.field private name:Ljava/lang/String;

.field private orgName:Ljava/lang/String;

.field private propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

.field private role:Ljava/lang/String;

.field private specName:Ljava/lang/String;

.field private specVersion:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private useCase:Lca/uhn/hl7v2/conf/spec/usecase/UseCase;

.field private vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    .line 48
    new-instance v0, Ljava/beans/VetoableChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/VetoableChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    .line 53
    return-void
.end method


# virtual methods
.method public addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/PropertyChangeListener;

    .line 59
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 60
    return-void
.end method

.method public addVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/VetoableChangeListener;

    .line 66
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/VetoableChangeSupport;->addVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V

    .line 67
    return-void
.end method

.method public getConformance()Lca/uhn/hl7v2/conf/spec/Conformance;
    .locals 1

    .line 73
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->conformance:Lca/uhn/hl7v2/conf/spec/Conformance;

    return-object v0
.end method

.method public getConformanceType()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->conformanceType:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodings(I)Lca/uhn/hl7v2/conf/spec/Encoding;
    .locals 1
    .param p1, "index"    # I

    .line 88
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->encodings:[Lca/uhn/hl7v2/conf/spec/Encoding;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getHL7OID()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->HL7OID:Ljava/lang/String;

    return-object v0
.end method

.method public getHL7Version()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->HL7Version:Ljava/lang/String;

    return-object v0
.end method

.method public getImpNote()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->impNote:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Lca/uhn/hl7v2/conf/spec/message/StaticDef;
    .locals 1

    .line 116
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->message:Lca/uhn/hl7v2/conf/spec/message/StaticDef;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 305
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrgName()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->orgName:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->role:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecName()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->specName:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecVersion()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->specVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getUseCase()Lca/uhn/hl7v2/conf/spec/usecase/UseCase;
    .locals 1

    .line 158
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->useCase:Lca/uhn/hl7v2/conf/spec/usecase/UseCase;

    return-object v0
.end method

.method public removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/PropertyChangeListener;

    .line 165
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 166
    return-void
.end method

.method public removeVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/VetoableChangeListener;

    .line 172
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/VetoableChangeSupport;->removeVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V

    .line 173
    return-void
.end method

.method public setConformance(Lca/uhn/hl7v2/conf/spec/Conformance;)V
    .locals 4
    .param p1, "conformance"    # Lca/uhn/hl7v2/conf/spec/Conformance;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->conformance:Lca/uhn/hl7v2/conf/spec/Conformance;

    .line 183
    .local v0, "oldConformance":Lca/uhn/hl7v2/conf/spec/Conformance;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "conformance"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    nop

    .line 187
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->conformance:Lca/uhn/hl7v2/conf/spec/Conformance;

    .line 188
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "conformance"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 189
    return-void

    .line 184
    :catch_0
    move-exception v1

    .line 185
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lca/uhn/hl7v2/conf/ProfileException;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setConformanceType(Ljava/lang/String;)V
    .locals 4
    .param p1, "conformanceType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->conformanceType:Ljava/lang/String;

    .line 199
    .local v0, "oldConformanceType":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "conformanceType"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    nop

    .line 203
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->conformanceType:Ljava/lang/String;

    .line 204
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "conformanceType"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 205
    return-void

    .line 200
    :catch_0
    move-exception v1

    .line 201
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lca/uhn/hl7v2/conf/ProfileException;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setEncodings(ILca/uhn/hl7v2/conf/spec/Encoding;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "encodings"    # Lca/uhn/hl7v2/conf/spec/Encoding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->encodings:[Lca/uhn/hl7v2/conf/spec/Encoding;

    aget-object v0, v0, p1

    .line 215
    .local v0, "oldEncodings":Lca/uhn/hl7v2/conf/spec/Encoding;
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->encodings:[Lca/uhn/hl7v2/conf/spec/Encoding;

    aput-object p2, v1, p1

    .line 217
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v3, "encodings"

    invoke-virtual {v2, v3, v1, v1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/beans/PropertyVetoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    nop

    .line 223
    iget-object v2, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v3, "encodings"

    invoke-virtual {v2, v3, v1, v1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 224
    return-void

    .line 219
    :catch_0
    move-exception v2

    .line 220
    .local v2, "vetoException":Ljava/beans/PropertyVetoException;
    iget-object v3, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->encodings:[Lca/uhn/hl7v2/conf/spec/Encoding;

    aput-object v0, v3, p1

    .line 221
    new-instance v3, Lca/uhn/hl7v2/conf/ProfileException;

    invoke-direct {v3, v1, v2}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setHL7OID(Ljava/lang/String;)V
    .locals 4
    .param p1, "HL7OID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->HL7OID:Ljava/lang/String;

    .line 234
    .local v0, "oldHL7OID":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "HL7OID"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    nop

    .line 238
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->HL7OID:Ljava/lang/String;

    .line 239
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "HL7OID"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 240
    return-void

    .line 235
    :catch_0
    move-exception v1

    .line 236
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lca/uhn/hl7v2/conf/ProfileException;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setHL7Version(Ljava/lang/String;)V
    .locals 4
    .param p1, "HL7Version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->HL7Version:Ljava/lang/String;

    .line 250
    .local v0, "oldHL7Version":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "HL7Version"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    nop

    .line 254
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->HL7Version:Ljava/lang/String;

    .line 255
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "HL7Version"

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

.method public setImpNote(Ljava/lang/String;)V
    .locals 4
    .param p1, "impNote"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->impNote:Ljava/lang/String;

    .line 266
    .local v0, "oldImpNote":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "impNote"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    nop

    .line 270
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->impNote:Ljava/lang/String;

    .line 271
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "impNote"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 272
    return-void

    .line 267
    :catch_0
    move-exception v1

    .line 268
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lca/uhn/hl7v2/conf/ProfileException;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setMessage(Lca/uhn/hl7v2/conf/spec/message/StaticDef;)V
    .locals 4
    .param p1, "message"    # Lca/uhn/hl7v2/conf/spec/message/StaticDef;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->message:Lca/uhn/hl7v2/conf/spec/message/StaticDef;

    .line 282
    .local v0, "oldMessage":Lca/uhn/hl7v2/conf/spec/message/StaticDef;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "message"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    nop

    .line 286
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->message:Lca/uhn/hl7v2/conf/spec/message/StaticDef;

    .line 287
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "message"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 288
    return-void

    .line 283
    :catch_0
    move-exception v1

    .line 284
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lca/uhn/hl7v2/conf/ProfileException;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setName(Ljava/lang/String;)V
    .locals 4
    .param p1, "theName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->name:Ljava/lang/String;

    .line 293
    .local v0, "oldOrgName":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "name"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    nop

    .line 297
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->name:Ljava/lang/String;

    .line 298
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "name"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 299
    return-void

    .line 294
    :catch_0
    move-exception v1

    .line 295
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

    .line 314
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->orgName:Ljava/lang/String;

    .line 316
    .local v0, "oldOrgName":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "orgName"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    nop

    .line 320
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->orgName:Ljava/lang/String;

    .line 321
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "orgName"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 322
    return-void

    .line 317
    :catch_0
    move-exception v1

    .line 318
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

    .line 330
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->role:Ljava/lang/String;

    .line 332
    .local v0, "oldRole":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "role"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    nop

    .line 336
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->role:Ljava/lang/String;

    .line 337
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "role"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 338
    return-void

    .line 333
    :catch_0
    move-exception v1

    .line 334
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lca/uhn/hl7v2/conf/ProfileException;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setSpecName(Ljava/lang/String;)V
    .locals 4
    .param p1, "specName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 346
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->specName:Ljava/lang/String;

    .line 348
    .local v0, "oldSpecName":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "specName"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    nop

    .line 352
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->specName:Ljava/lang/String;

    .line 353
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "specName"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 354
    return-void

    .line 349
    :catch_0
    move-exception v1

    .line 350
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lca/uhn/hl7v2/conf/ProfileException;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setSpecVersion(Ljava/lang/String;)V
    .locals 4
    .param p1, "specVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->specVersion:Ljava/lang/String;

    .line 364
    .local v0, "oldSpecVersion":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "specVersion"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    nop

    .line 368
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->specVersion:Ljava/lang/String;

    .line 369
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "specVersion"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 370
    return-void

    .line 365
    :catch_0
    move-exception v1

    .line 366
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

    .line 378
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->status:Ljava/lang/String;

    .line 380
    .local v0, "oldStatus":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "status"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    nop

    .line 384
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->status:Ljava/lang/String;

    .line 385
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "status"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 386
    return-void

    .line 381
    :catch_0
    move-exception v1

    .line 382
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lca/uhn/hl7v2/conf/ProfileException;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setUseCase(Lca/uhn/hl7v2/conf/spec/usecase/UseCase;)V
    .locals 4
    .param p1, "useCase"    # Lca/uhn/hl7v2/conf/spec/usecase/UseCase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 394
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->useCase:Lca/uhn/hl7v2/conf/spec/usecase/UseCase;

    .line 396
    .local v0, "oldUseCase":Lca/uhn/hl7v2/conf/spec/usecase/UseCase;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "useCase"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    nop

    .line 400
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->useCase:Lca/uhn/hl7v2/conf/spec/usecase/UseCase;

    .line 401
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "useCase"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 402
    return-void

    .line 397
    :catch_0
    move-exception v1

    .line 398
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lca/uhn/hl7v2/conf/ProfileException;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
