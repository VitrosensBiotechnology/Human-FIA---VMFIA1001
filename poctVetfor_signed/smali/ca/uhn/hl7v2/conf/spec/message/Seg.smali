.class public Lca/uhn/hl7v2/conf/spec/message/Seg;
.super Ljava/lang/Object;
.source "Seg.java"

# interfaces
.implements Lca/uhn/hl7v2/conf/spec/message/ProfileStructure;


# instance fields
.field private description:Ljava/lang/String;

.field private final fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/conf/spec/message/Field;",
            ">;"
        }
    .end annotation
.end field

.field private impNote:Ljava/lang/String;

.field private longName:Ljava/lang/String;

.field private max:S

.field private min:S

.field private name:Ljava/lang/String;

.field private predicate:Ljava/lang/String;

.field private propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

.field private reference:Ljava/lang/String;

.field private usage:Ljava/lang/String;

.field private vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    .line 19
    new-instance v0, Ljava/beans/VetoableChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/VetoableChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->fields:Ljava/util/List;

    .line 34
    return-void
.end method


# virtual methods
.method public addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/PropertyChangeListener;

    .line 40
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 41
    return-void
.end method

.method public addVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/VetoableChangeListener;

    .line 54
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/VetoableChangeSupport;->addVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V

    .line 55
    return-void
.end method

.method public getChildrenAsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/conf/spec/message/Field;",
            ">;"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->fields:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getField(I)Lca/uhn/hl7v2/conf/spec/message/Field;
    .locals 2
    .param p1, "index"    # I

    .line 161
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->fields:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/conf/spec/message/Field;

    return-object v0
.end method

.method public getFields()I
    .locals 1

    .line 305
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFieldsAsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/conf/spec/message/Field;",
            ">;"
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->fields:Ljava/util/List;

    return-object v0
.end method

.method public getImpNote()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->impNote:Ljava/lang/String;

    return-object v0
.end method

.method public getLongName()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->longName:Ljava/lang/String;

    return-object v0
.end method

.method public getMax()S
    .locals 1

    .line 283
    iget-short v0, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->max:S

    return v0
.end method

.method public getMin()S
    .locals 1

    .line 260
    iget-short v0, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->min:S

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPredicate()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->predicate:Ljava/lang/String;

    return-object v0
.end method

.method public getReference()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->reference:Ljava/lang/String;

    return-object v0
.end method

.method public getUsage()Ljava/lang/String;
    .locals 1

    .line 237
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->usage:Ljava/lang/String;

    return-object v0
.end method

.method public removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/PropertyChangeListener;

    .line 47
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 48
    return-void
.end method

.method public removeVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/VetoableChangeListener;

    .line 61
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/VetoableChangeSupport;->removeVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V

    .line 62
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 4
    .param p1, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->description:Ljava/lang/String;

    .line 102
    .local v0, "oldDescription":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "description"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    nop

    .line 106
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->description:Ljava/lang/String;

    .line 107
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "description"

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

.method public setField(ILca/uhn/hl7v2/conf/spec/message/Field;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "field"    # Lca/uhn/hl7v2/conf/spec/message/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 171
    add-int/lit8 p1, p1, -0x1

    .line 172
    :goto_0
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-le v0, p1, :cond_0

    .line 175
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->fields:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/conf/spec/message/Field;

    .line 176
    .local v0, "oldField":Lca/uhn/hl7v2/conf/spec/message/Field;
    iget-object v2, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->fields:Ljava/util/List;

    invoke-interface {v2, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 178
    :try_start_0
    iget-object v2, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v3, "fields"

    invoke-virtual {v2, v3, v1, v1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/beans/PropertyVetoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    nop

    .line 184
    iget-object v2, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v3, "fields"

    invoke-virtual {v2, v3, v1, v1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 185
    return-void

    .line 180
    :catch_0
    move-exception v2

    .line 181
    .local v2, "vetoException":Ljava/beans/PropertyVetoException;
    iget-object v3, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->fields:Ljava/util/List;

    invoke-interface {v3, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 182
    new-instance v3, Lca/uhn/hl7v2/conf/ProfileException;

    invoke-direct {v3, v1, v2}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 173
    .end local v0    # "oldField":Lca/uhn/hl7v2/conf/spec/message/Field;
    .end local v2    # "vetoException":Ljava/beans/PropertyVetoException;
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->fields:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setImpNote(Ljava/lang/String;)V
    .locals 4
    .param p1, "impNote"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->impNote:Ljava/lang/String;

    .line 79
    .local v0, "oldImpNote":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "impNote"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    nop

    .line 83
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->impNote:Ljava/lang/String;

    .line 84
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "impNote"

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

.method public setLongName(Ljava/lang/String;)V
    .locals 4
    .param p1, "longName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->longName:Ljava/lang/String;

    .line 225
    .local v0, "oldLongName":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "longName"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    nop

    .line 229
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->longName:Ljava/lang/String;

    .line 230
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "longName"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 231
    return-void

    .line 226
    :catch_0
    move-exception v1

    .line 227
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

    .line 292
    iget-short v0, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->max:S

    .line 294
    .local v0, "oldMax":S
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "max"

    new-instance v3, Ljava/lang/Short;

    invoke-direct {v3, v0}, Ljava/lang/Short;-><init>(S)V

    new-instance v4, Ljava/lang/Short;

    invoke-direct {v4, p1}, Ljava/lang/Short;-><init>(S)V

    invoke-virtual {v1, v2, v3, v4}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    nop

    .line 298
    iput-short p1, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->max:S

    .line 299
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "max"

    new-instance v3, Ljava/lang/Short;

    invoke-direct {v3, v0}, Ljava/lang/Short;-><init>(S)V

    new-instance v4, Ljava/lang/Short;

    invoke-direct {v4, p1}, Ljava/lang/Short;-><init>(S)V

    invoke-virtual {v1, v2, v3, v4}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 300
    return-void

    .line 295
    :catch_0
    move-exception v1

    .line 296
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

    .line 269
    iget-short v0, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->min:S

    .line 271
    .local v0, "oldMin":S
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "min"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    nop

    .line 275
    iput-short p1, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->min:S

    .line 276
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "min"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;II)V

    .line 277
    return-void

    .line 272
    :catch_0
    move-exception v1

    .line 273
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

    .line 200
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->name:Ljava/lang/String;

    .line 202
    .local v0, "oldName":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "name"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    nop

    .line 206
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->name:Ljava/lang/String;

    .line 207
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "name"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 208
    return-void

    .line 203
    :catch_0
    move-exception v1

    .line 204
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

    .line 146
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->predicate:Ljava/lang/String;

    .line 148
    .local v0, "oldPredicate":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "predicate"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    nop

    .line 152
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->predicate:Ljava/lang/String;

    .line 153
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "predicate"

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

.method public setReference(Ljava/lang/String;)V
    .locals 4
    .param p1, "reference"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->reference:Ljava/lang/String;

    .line 125
    .local v0, "oldReference":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "reference"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    nop

    .line 129
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->reference:Ljava/lang/String;

    .line 130
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "reference"

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

.method public setUsage(Ljava/lang/String;)V
    .locals 4
    .param p1, "usage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->usage:Ljava/lang/String;

    .line 248
    .local v0, "oldUsage":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "usage"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    nop

    .line 252
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->usage:Ljava/lang/String;

    .line 253
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/Seg;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "usage"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 254
    return-void

    .line 249
    :catch_0
    move-exception v1

    .line 250
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lca/uhn/hl7v2/conf/ProfileException;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
