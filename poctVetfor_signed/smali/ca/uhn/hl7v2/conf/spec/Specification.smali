.class public Lca/uhn/hl7v2/conf/spec/Specification;
.super Ljava/lang/Object;
.source "Specification.java"


# instance fields
.field private HL7OID:Ljava/lang/String;

.field private HL7Version:Ljava/lang/String;

.field private conformance:Lca/uhn/hl7v2/conf/spec/Conformance;

.field private conformanceType:Ljava/lang/String;

.field private encodings:[Lca/uhn/hl7v2/conf/spec/Encoding;

.field private impNote:Lca/uhn/hl7v2/conf/spec/ImpNote;

.field private message:Lca/uhn/hl7v2/conf/spec/message/StaticDef;

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

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lca/uhn/hl7v2/conf/spec/Specification;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    .line 21
    new-instance v0, Ljava/beans/VetoableChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/VetoableChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lca/uhn/hl7v2/conf/spec/Specification;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    .line 52
    return-void
.end method


# virtual methods
.method public addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/PropertyChangeListener;

    .line 58
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/Specification;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 59
    return-void
.end method

.method public addVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/VetoableChangeListener;

    .line 72
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/Specification;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/VetoableChangeSupport;->addVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V

    .line 73
    return-void
.end method

.method public getConformance()Lca/uhn/hl7v2/conf/spec/Conformance;
    .locals 1

    .line 124
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/Specification;->conformance:Lca/uhn/hl7v2/conf/spec/Conformance;

    return-object v0
.end method

.method public getConformanceType()Ljava/lang/String;
    .locals 1

    .line 322
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/Specification;->conformanceType:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodings(I)Lca/uhn/hl7v2/conf/spec/Encoding;
    .locals 1
    .param p1, "index"    # I

    .line 144
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/Specification;->encodings:[Lca/uhn/hl7v2/conf/spec/Encoding;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getHL7OID()Ljava/lang/String;
    .locals 1

    .line 303
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/Specification;->HL7OID:Ljava/lang/String;

    return-object v0
.end method

.method public getHL7Version()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/Specification;->HL7Version:Ljava/lang/String;

    return-object v0
.end method

.method public getImpNote()Lca/uhn/hl7v2/conf/spec/ImpNote;
    .locals 1

    .line 86
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/Specification;->impNote:Lca/uhn/hl7v2/conf/spec/ImpNote;

    return-object v0
.end method

.method public getMessage()Lca/uhn/hl7v2/conf/spec/message/StaticDef;
    .locals 1

    .line 170
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/Specification;->message:Lca/uhn/hl7v2/conf/spec/message/StaticDef;

    return-object v0
.end method

.method public getOrgName()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/Specification;->orgName:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()Ljava/lang/String;
    .locals 1

    .line 284
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/Specification;->role:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecName()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/Specification;->specName:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecVersion()Ljava/lang/String;
    .locals 1

    .line 246
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/Specification;->specVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 265
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/Specification;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getUseCase()Lca/uhn/hl7v2/conf/spec/usecase/UseCase;
    .locals 1

    .line 105
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/Specification;->useCase:Lca/uhn/hl7v2/conf/spec/usecase/UseCase;

    return-object v0
.end method

.method public removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/PropertyChangeListener;

    .line 65
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/Specification;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 66
    return-void
.end method

.method public removeVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/VetoableChangeListener;

    .line 79
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/Specification;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/VetoableChangeSupport;->removeVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V

    .line 80
    return-void
.end method

.method public setConformance(Lca/uhn/hl7v2/conf/spec/Conformance;)V
    .locals 3
    .param p1, "conformance"    # Lca/uhn/hl7v2/conf/spec/Conformance;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/PropertyVetoException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/Specification;->conformance:Lca/uhn/hl7v2/conf/spec/Conformance;

    .line 134
    .local v0, "oldConformance":Lca/uhn/hl7v2/conf/spec/Conformance;
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/Specification;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "conformance"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 135
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/Specification;->conformance:Lca/uhn/hl7v2/conf/spec/Conformance;

    .line 136
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/Specification;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "conformance"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 137
    return-void
.end method

.method public setConformanceType(Ljava/lang/String;)V
    .locals 3
    .param p1, "conformanceType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/PropertyVetoException;
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/Specification;->conformanceType:Ljava/lang/String;

    .line 332
    .local v0, "oldConformanceType":Ljava/lang/String;
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/Specification;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "conformanceType"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 333
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/Specification;->conformanceType:Ljava/lang/String;

    .line 334
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/Specification;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "conformanceType"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 335
    return-void
.end method

.method public setEncodings(ILca/uhn/hl7v2/conf/spec/Encoding;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "encodings"    # Lca/uhn/hl7v2/conf/spec/Encoding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/PropertyVetoException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/Specification;->encodings:[Lca/uhn/hl7v2/conf/spec/Encoding;

    aget-object v0, v0, p1

    .line 155
    .local v0, "oldEncodings":Lca/uhn/hl7v2/conf/spec/Encoding;
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/Specification;->encodings:[Lca/uhn/hl7v2/conf/spec/Encoding;

    aput-object p2, v1, p1

    .line 157
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/Specification;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "encodings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/beans/PropertyVetoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    nop

    .line 163
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/Specification;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "encodings"

    invoke-virtual {v1, v2, v3, v3}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 164
    return-void

    .line 159
    :catch_0
    move-exception v1

    .line 160
    .local v1, "vetoException":Ljava/beans/PropertyVetoException;
    iget-object v2, p0, Lca/uhn/hl7v2/conf/spec/Specification;->encodings:[Lca/uhn/hl7v2/conf/spec/Encoding;

    aput-object v0, v2, p1

    .line 161
    throw v1
.end method

.method public setHL7OID(Ljava/lang/String;)V
    .locals 3
    .param p1, "HL7OID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/PropertyVetoException;
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/Specification;->HL7OID:Ljava/lang/String;

    .line 313
    .local v0, "oldHL7OID":Ljava/lang/String;
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/Specification;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "HL7OID"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 314
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/Specification;->HL7OID:Ljava/lang/String;

    .line 315
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/Specification;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "HL7OID"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 316
    return-void
.end method

.method public setHL7Version(Ljava/lang/String;)V
    .locals 3
    .param p1, "HL7Version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/PropertyVetoException;
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/Specification;->HL7Version:Ljava/lang/String;

    .line 237
    .local v0, "oldHL7Version":Ljava/lang/String;
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/Specification;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "HL7Version"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 238
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/Specification;->HL7Version:Ljava/lang/String;

    .line 239
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/Specification;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "HL7Version"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 240
    return-void
.end method

.method public setImpNote(Lca/uhn/hl7v2/conf/spec/ImpNote;)V
    .locals 3
    .param p1, "impNote"    # Lca/uhn/hl7v2/conf/spec/ImpNote;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/PropertyVetoException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/Specification;->impNote:Lca/uhn/hl7v2/conf/spec/ImpNote;

    .line 96
    .local v0, "oldImpNote":Lca/uhn/hl7v2/conf/spec/ImpNote;
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/Specification;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "impNote"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/Specification;->impNote:Lca/uhn/hl7v2/conf/spec/ImpNote;

    .line 98
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/Specification;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "impNote"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method public setMessage(Lca/uhn/hl7v2/conf/spec/message/StaticDef;)V
    .locals 3
    .param p1, "message"    # Lca/uhn/hl7v2/conf/spec/message/StaticDef;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/PropertyVetoException;
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/Specification;->message:Lca/uhn/hl7v2/conf/spec/message/StaticDef;

    .line 180
    .local v0, "oldMessage":Lca/uhn/hl7v2/conf/spec/message/StaticDef;
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/Specification;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "message"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 181
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/Specification;->message:Lca/uhn/hl7v2/conf/spec/message/StaticDef;

    .line 182
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/Specification;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "message"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 183
    return-void
.end method

.method public setOrgName(Ljava/lang/String;)V
    .locals 3
    .param p1, "orgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/PropertyVetoException;
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/Specification;->orgName:Ljava/lang/String;

    .line 218
    .local v0, "oldOrgName":Ljava/lang/String;
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/Specification;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "orgName"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 219
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/Specification;->orgName:Ljava/lang/String;

    .line 220
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/Specification;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "orgName"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 221
    return-void
.end method

.method public setRole(Ljava/lang/String;)V
    .locals 3
    .param p1, "role"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/PropertyVetoException;
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/Specification;->role:Ljava/lang/String;

    .line 294
    .local v0, "oldRole":Ljava/lang/String;
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/Specification;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "role"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 295
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/Specification;->role:Ljava/lang/String;

    .line 296
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/Specification;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "role"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 297
    return-void
.end method

.method public setSpecName(Ljava/lang/String;)V
    .locals 3
    .param p1, "specName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/PropertyVetoException;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/Specification;->specName:Ljava/lang/String;

    .line 199
    .local v0, "oldSpecName":Ljava/lang/String;
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/Specification;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "specName"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 200
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/Specification;->specName:Ljava/lang/String;

    .line 201
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/Specification;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "specName"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 202
    return-void
.end method

.method public setSpecVersion(Ljava/lang/String;)V
    .locals 3
    .param p1, "specVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/PropertyVetoException;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/Specification;->specVersion:Ljava/lang/String;

    .line 256
    .local v0, "oldSpecVersion":Ljava/lang/String;
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/Specification;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "specVersion"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 257
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/Specification;->specVersion:Ljava/lang/String;

    .line 258
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/Specification;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "specVersion"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 259
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 3
    .param p1, "status"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/PropertyVetoException;
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/Specification;->status:Ljava/lang/String;

    .line 275
    .local v0, "oldStatus":Ljava/lang/String;
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/Specification;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "status"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 276
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/Specification;->status:Ljava/lang/String;

    .line 277
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/Specification;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "status"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 278
    return-void
.end method

.method public setUseCase(Lca/uhn/hl7v2/conf/spec/usecase/UseCase;)V
    .locals 3
    .param p1, "useCase"    # Lca/uhn/hl7v2/conf/spec/usecase/UseCase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/PropertyVetoException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/Specification;->useCase:Lca/uhn/hl7v2/conf/spec/usecase/UseCase;

    .line 115
    .local v0, "oldUseCase":Lca/uhn/hl7v2/conf/spec/usecase/UseCase;
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/Specification;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "useCase"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 116
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/Specification;->useCase:Lca/uhn/hl7v2/conf/spec/usecase/UseCase;

    .line 117
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/Specification;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "useCase"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    return-void
.end method
