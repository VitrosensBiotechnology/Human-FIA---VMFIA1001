.class public Lca/uhn/hl7v2/conf/spec/message/Field;
.super Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;
.source "Field.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lca/uhn/hl7v2/conf/spec/message/AbstractComponent<",
        "Lca/uhn/hl7v2/conf/spec/message/Field;",
        ">;"
    }
.end annotation


# instance fields
.field private final components:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/conf/spec/message/Component;",
            ">;"
        }
    .end annotation
.end field

.field private itemNo:S

.field private max:S

.field private min:S

.field private propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

.field private vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;-><init>()V

    .line 15
    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/Field;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    .line 18
    new-instance v0, Ljava/beans/VetoableChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/VetoableChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/Field;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/Field;->components:Ljava/util/List;

    .line 28
    return-void
.end method


# virtual methods
.method public addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/PropertyChangeListener;

    .line 34
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/Field;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 35
    return-void
.end method

.method public addVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/VetoableChangeListener;

    .line 48
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/Field;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/VetoableChangeSupport;->addVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V

    .line 49
    return-void
.end method

.method public getChildrenAsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/conf/spec/message/Component;",
            ">;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/Field;->components:Ljava/util/List;

    return-object v0
.end method

.method public getComponent(I)Lca/uhn/hl7v2/conf/spec/message/Component;
    .locals 2
    .param p1, "index"    # I

    .line 132
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/Field;->components:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/conf/spec/message/Component;

    return-object v0
.end method

.method public getComponents()I
    .locals 1

    .line 161
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/Field;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemNo()S
    .locals 1

    .line 108
    iget-short v0, p0, Lca/uhn/hl7v2/conf/spec/message/Field;->itemNo:S

    return v0
.end method

.method public getMax()S
    .locals 1

    .line 85
    iget-short v0, p0, Lca/uhn/hl7v2/conf/spec/message/Field;->max:S

    return v0
.end method

.method public getMin()S
    .locals 1

    .line 62
    iget-short v0, p0, Lca/uhn/hl7v2/conf/spec/message/Field;->min:S

    return v0
.end method

.method public removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/PropertyChangeListener;

    .line 41
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/Field;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 42
    return-void
.end method

.method public removeVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/VetoableChangeListener;

    .line 55
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/Field;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/VetoableChangeSupport;->removeVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V

    .line 56
    return-void
.end method

.method public setComponent(ILca/uhn/hl7v2/conf/spec/message/Component;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "component"    # Lca/uhn/hl7v2/conf/spec/message/Component;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 142
    add-int/lit8 p1, p1, -0x1

    .line 143
    :goto_0
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/Field;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-le v0, p1, :cond_0

    .line 146
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/Field;->components:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/conf/spec/message/Component;

    .line 147
    .local v0, "oldComponent":Lca/uhn/hl7v2/conf/spec/message/Component;
    iget-object v2, p0, Lca/uhn/hl7v2/conf/spec/message/Field;->components:Ljava/util/List;

    invoke-interface {v2, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 149
    :try_start_0
    iget-object v2, p0, Lca/uhn/hl7v2/conf/spec/message/Field;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v3, "components"

    invoke-virtual {v2, v3, v1, v1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/beans/PropertyVetoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    nop

    .line 155
    iget-object v2, p0, Lca/uhn/hl7v2/conf/spec/message/Field;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v3, "components"

    invoke-virtual {v2, v3, v1, v1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    return-void

    .line 151
    :catch_0
    move-exception v2

    .line 152
    .local v2, "vetoException":Ljava/beans/PropertyVetoException;
    iget-object v3, p0, Lca/uhn/hl7v2/conf/spec/message/Field;->components:Ljava/util/List;

    invoke-interface {v3, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 153
    new-instance v3, Lca/uhn/hl7v2/conf/ProfileException;

    invoke-direct {v3, v1, v2}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 144
    .end local v0    # "oldComponent":Lca/uhn/hl7v2/conf/spec/message/Component;
    .end local v2    # "vetoException":Ljava/beans/PropertyVetoException;
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/Field;->components:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setItemNo(S)V
    .locals 5
    .param p1, "itemNo"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 117
    iget-short v0, p0, Lca/uhn/hl7v2/conf/spec/message/Field;->itemNo:S

    .line 119
    .local v0, "oldItemNo":S
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/Field;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "itemNo"

    new-instance v3, Ljava/lang/Short;

    invoke-direct {v3, v0}, Ljava/lang/Short;-><init>(S)V

    new-instance v4, Ljava/lang/Short;

    invoke-direct {v4, p1}, Ljava/lang/Short;-><init>(S)V

    invoke-virtual {v1, v2, v3, v4}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    nop

    .line 123
    iput-short p1, p0, Lca/uhn/hl7v2/conf/spec/message/Field;->itemNo:S

    .line 124
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/Field;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "itemNo"

    new-instance v3, Ljava/lang/Short;

    invoke-direct {v3, v0}, Ljava/lang/Short;-><init>(S)V

    new-instance v4, Ljava/lang/Short;

    invoke-direct {v4, p1}, Ljava/lang/Short;-><init>(S)V

    invoke-virtual {v1, v2, v3, v4}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    return-void

    .line 120
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lca/uhn/hl7v2/conf/ProfileException;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setMax(S)V
    .locals 4
    .param p1, "max"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 94
    iget-short v0, p0, Lca/uhn/hl7v2/conf/spec/message/Field;->max:S

    .line 96
    .local v0, "oldMax":S
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/Field;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "max"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    nop

    .line 100
    iput-short p1, p0, Lca/uhn/hl7v2/conf/spec/message/Field;->max:S

    .line 101
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/Field;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "max"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;II)V

    .line 102
    return-void

    .line 97
    :catch_0
    move-exception v1

    .line 98
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

    .line 71
    iget-short v0, p0, Lca/uhn/hl7v2/conf/spec/message/Field;->min:S

    .line 73
    .local v0, "oldMin":S
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/Field;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "min"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    nop

    .line 77
    iput-short p1, p0, Lca/uhn/hl7v2/conf/spec/message/Field;->min:S

    .line 78
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/Field;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "min"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;II)V

    .line 79
    return-void

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lca/uhn/hl7v2/conf/ProfileException;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
