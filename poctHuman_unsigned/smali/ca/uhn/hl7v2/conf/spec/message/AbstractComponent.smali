.class public Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;
.super Ljava/lang/Object;
.source "AbstractComponent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private constantValue:Ljava/lang/String;

.field private final dataValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/conf/spec/message/DataValue;",
            ">;"
        }
    .end annotation
.end field

.field private datatype:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private impNote:Ljava/lang/String;

.field private length:J

.field private name:Ljava/lang/String;

.field private predicate:Ljava/lang/String;

.field protected propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

.field private reference:Ljava/lang/String;

.field private table:Ljava/lang/String;

.field private usage:Ljava/lang/String;

.field protected vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    .local p0, "this":Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;, "Lca/uhn/hl7v2/conf/spec/message/AbstractComponent<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    .line 23
    new-instance v0, Ljava/beans/VetoableChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/VetoableChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->dataValues:Ljava/util/List;

    .line 16
    return-void
.end method


# virtual methods
.method public addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/PropertyChangeListener;

    .line 41
    .local p0, "this":Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;, "Lca/uhn/hl7v2/conf/spec/message/AbstractComponent<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 42
    return-void
.end method

.method public addVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/VetoableChangeListener;

    .line 55
    .local p0, "this":Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;, "Lca/uhn/hl7v2/conf/spec/message/AbstractComponent<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/VetoableChangeSupport;->addVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V

    .line 56
    return-void
.end method

.method public getConstantValue()Ljava/lang/String;
    .locals 1

    .line 286
    .local p0, "this":Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;, "Lca/uhn/hl7v2/conf/spec/message/AbstractComponent<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->constantValue:Ljava/lang/String;

    return-object v0
.end method

.method public getDataValues(I)Lca/uhn/hl7v2/conf/spec/message/DataValue;
    .locals 1
    .param p1, "index"    # I

    .line 162
    .local p0, "this":Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;, "Lca/uhn/hl7v2/conf/spec/message/AbstractComponent<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->dataValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/conf/spec/message/DataValue;

    return-object v0
.end method

.method public getDatatype()Ljava/lang/String;
    .locals 1

    .line 240
    .local p0, "this":Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;, "Lca/uhn/hl7v2/conf/spec/message/AbstractComponent<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->datatype:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 92
    .local p0, "this":Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;, "Lca/uhn/hl7v2/conf/spec/message/AbstractComponent<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getImpNote()Ljava/lang/String;
    .locals 1

    .line 69
    .local p0, "this":Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;, "Lca/uhn/hl7v2/conf/spec/message/AbstractComponent<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->impNote:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()J
    .locals 2

    .line 263
    .local p0, "this":Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;, "Lca/uhn/hl7v2/conf/spec/message/AbstractComponent<TT;>;"
    iget-wide v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->length:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 194
    .local p0, "this":Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;, "Lca/uhn/hl7v2/conf/spec/message/AbstractComponent<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPredicate()Ljava/lang/String;
    .locals 1

    .line 138
    .local p0, "this":Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;, "Lca/uhn/hl7v2/conf/spec/message/AbstractComponent<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->predicate:Ljava/lang/String;

    return-object v0
.end method

.method public getReference()Ljava/lang/String;
    .locals 1

    .line 115
    .local p0, "this":Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;, "Lca/uhn/hl7v2/conf/spec/message/AbstractComponent<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->reference:Ljava/lang/String;

    return-object v0
.end method

.method public getTable()Ljava/lang/String;
    .locals 1

    .line 309
    .local p0, "this":Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;, "Lca/uhn/hl7v2/conf/spec/message/AbstractComponent<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->table:Ljava/lang/String;

    return-object v0
.end method

.method public getUsage()Ljava/lang/String;
    .locals 1

    .line 217
    .local p0, "this":Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;, "Lca/uhn/hl7v2/conf/spec/message/AbstractComponent<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->usage:Ljava/lang/String;

    return-object v0
.end method

.method public removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/PropertyChangeListener;

    .line 48
    .local p0, "this":Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;, "Lca/uhn/hl7v2/conf/spec/message/AbstractComponent<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 49
    return-void
.end method

.method public removeVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/VetoableChangeListener;

    .line 62
    .local p0, "this":Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;, "Lca/uhn/hl7v2/conf/spec/message/AbstractComponent<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/VetoableChangeSupport;->removeVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V

    .line 63
    return-void
.end method

.method public setConstantValue(Ljava/lang/String;)V
    .locals 4
    .param p1, "constantValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 295
    .local p0, "this":Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;, "Lca/uhn/hl7v2/conf/spec/message/AbstractComponent<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->constantValue:Ljava/lang/String;

    .line 297
    .local v0, "oldConstantValue":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "constantValue"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    nop

    .line 301
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->constantValue:Ljava/lang/String;

    .line 302
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "constantValue"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 303
    return-void

    .line 298
    :catch_0
    move-exception v1

    .line 299
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lca/uhn/hl7v2/conf/ProfileException;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setDataValues(ILca/uhn/hl7v2/conf/spec/message/DataValue;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "dataValue"    # Lca/uhn/hl7v2/conf/spec/message/DataValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 172
    .local p0, "this":Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;, "Lca/uhn/hl7v2/conf/spec/message/AbstractComponent<TT;>;"
    :goto_0
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->dataValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-le v0, p1, :cond_0

    .line 175
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->dataValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/conf/spec/message/DataValue;

    .line 176
    .local v0, "oldDataValues":Lca/uhn/hl7v2/conf/spec/message/DataValue;
    iget-object v2, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->dataValues:Ljava/util/List;

    invoke-interface {v2, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 178
    :try_start_0
    iget-object v2, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v3, "dataValues"

    invoke-virtual {v2, v3, v1, v1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/beans/PropertyVetoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    nop

    .line 184
    iget-object v2, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v3, "dataValues"

    invoke-virtual {v2, v3, v1, v1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 185
    return-void

    .line 180
    :catch_0
    move-exception v2

    .line 181
    .local v2, "vetoException":Ljava/beans/PropertyVetoException;
    iget-object v3, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->dataValues:Ljava/util/List;

    invoke-interface {v3, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 182
    new-instance v3, Lca/uhn/hl7v2/conf/ProfileException;

    invoke-direct {v3, v1, v2}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 173
    .end local v0    # "oldDataValues":Lca/uhn/hl7v2/conf/spec/message/DataValue;
    .end local v2    # "vetoException":Ljava/beans/PropertyVetoException;
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->dataValues:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setDatatype(Ljava/lang/String;)V
    .locals 4
    .param p1, "datatype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 249
    .local p0, "this":Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;, "Lca/uhn/hl7v2/conf/spec/message/AbstractComponent<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->datatype:Ljava/lang/String;

    .line 251
    .local v0, "oldDatatype":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "datatype"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    nop

    .line 255
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->datatype:Ljava/lang/String;

    .line 256
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "datatype"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 257
    return-void

    .line 252
    :catch_0
    move-exception v1

    .line 253
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lca/uhn/hl7v2/conf/ProfileException;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 4
    .param p1, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 101
    .local p0, "this":Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;, "Lca/uhn/hl7v2/conf/spec/message/AbstractComponent<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->description:Ljava/lang/String;

    .line 103
    .local v0, "oldDescription":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "description"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    nop

    .line 107
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->description:Ljava/lang/String;

    .line 108
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "description"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    return-void

    .line 104
    :catch_0
    move-exception v1

    .line 105
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

    .line 78
    .local p0, "this":Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;, "Lca/uhn/hl7v2/conf/spec/message/AbstractComponent<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->impNote:Ljava/lang/String;

    .line 80
    .local v0, "oldImpNote":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "impNote"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    nop

    .line 84
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->impNote:Ljava/lang/String;

    .line 85
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "impNote"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 86
    return-void

    .line 81
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lca/uhn/hl7v2/conf/ProfileException;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setLength(J)V
    .locals 6
    .param p1, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 272
    .local p0, "this":Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;, "Lca/uhn/hl7v2/conf/spec/message/AbstractComponent<TT;>;"
    iget-wide v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->length:J

    .line 274
    .local v0, "oldLength":J
    :try_start_0
    iget-object v2, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v3, "length"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    nop

    .line 278
    iput-wide p1, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->length:J

    .line 279
    iget-object v2, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v3, "length"

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, v0, v1}, Ljava/lang/Long;-><init>(J)V

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v2, v3, v4, v5}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 280
    return-void

    .line 275
    :catch_0
    move-exception v2

    .line 276
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lca/uhn/hl7v2/conf/ProfileException;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v2}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setName(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 203
    .local p0, "this":Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;, "Lca/uhn/hl7v2/conf/spec/message/AbstractComponent<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->name:Ljava/lang/String;

    .line 205
    .local v0, "oldName":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "name"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    nop

    .line 209
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->name:Ljava/lang/String;

    .line 210
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "name"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 211
    return-void

    .line 206
    :catch_0
    move-exception v1

    .line 207
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

    .line 147
    .local p0, "this":Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;, "Lca/uhn/hl7v2/conf/spec/message/AbstractComponent<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->predicate:Ljava/lang/String;

    .line 149
    .local v0, "oldPredicate":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "predicate"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    nop

    .line 153
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->predicate:Ljava/lang/String;

    .line 154
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "predicate"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 155
    return-void

    .line 150
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lca/uhn/hl7v2/conf/ProfileException;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setReference(Ljava/lang/String;)V
    .locals 4
    .param p1, "reference"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 124
    .local p0, "this":Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;, "Lca/uhn/hl7v2/conf/spec/message/AbstractComponent<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->reference:Ljava/lang/String;

    .line 126
    .local v0, "oldReference":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "reference"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    nop

    .line 130
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->reference:Ljava/lang/String;

    .line 131
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "reference"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    return-void

    .line 127
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lca/uhn/hl7v2/conf/ProfileException;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setTable(Ljava/lang/String;)V
    .locals 4
    .param p1, "table"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 318
    .local p0, "this":Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;, "Lca/uhn/hl7v2/conf/spec/message/AbstractComponent<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->table:Ljava/lang/String;

    .line 320
    .local v0, "oldTable":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "table"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    nop

    .line 324
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->table:Ljava/lang/String;

    .line 325
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "table"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 326
    return-void

    .line 321
    :catch_0
    move-exception v1

    .line 322
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

    .line 226
    .local p0, "this":Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;, "Lca/uhn/hl7v2/conf/spec/message/AbstractComponent<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->usage:Ljava/lang/String;

    .line 228
    .local v0, "oldUsage":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "usage"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    nop

    .line 232
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->usage:Ljava/lang/String;

    .line 233
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "usage"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 234
    return-void

    .line 229
    :catch_0
    move-exception v1

    .line 230
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lca/uhn/hl7v2/conf/ProfileException;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
