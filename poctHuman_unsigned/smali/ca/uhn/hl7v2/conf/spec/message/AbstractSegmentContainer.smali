.class public Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;
.super Ljava/lang/Object;
.source "AbstractSegmentContainer.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lca/uhn/hl7v2/conf/spec/message/ProfileStructure;",
        ">;"
    }
.end annotation


# instance fields
.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/conf/spec/message/ProfileStructure;",
            ">;"
        }
    .end annotation
.end field

.field private description:Ljava/lang/String;

.field private impNote:Ljava/lang/String;

.field private propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

.field private reference:Ljava/lang/String;

.field private vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;->children:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    .line 25
    new-instance v0, Ljava/beans/VetoableChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/VetoableChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    .line 29
    return-void
.end method


# virtual methods
.method public addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/PropertyChangeListener;

    .line 39
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 40
    return-void
.end method

.method public addVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/VetoableChangeListener;

    .line 53
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/VetoableChangeSupport;->addVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V

    .line 54
    return-void
.end method

.method public getChild(I)Lca/uhn/hl7v2/conf/spec/message/ProfileStructure;
    .locals 2
    .param p1, "index"    # I

    .line 138
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;->children:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/conf/spec/message/ProfileStructure;

    return-object v0
.end method

.method public getChildren()I
    .locals 1

    .line 166
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getChildrenAsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/conf/spec/message/ProfileStructure;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;->children:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getImpNote()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;->impNote:Ljava/lang/String;

    return-object v0
.end method

.method public getReference()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;->reference:Ljava/lang/String;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lca/uhn/hl7v2/conf/spec/message/ProfileStructure;",
            ">;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/PropertyChangeListener;

    .line 46
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 47
    return-void
.end method

.method public removeVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/VetoableChangeListener;

    .line 60
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/VetoableChangeSupport;->removeVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V

    .line 61
    return-void
.end method

.method public setChild(ILca/uhn/hl7v2/conf/spec/message/ProfileStructure;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "structure"    # Lca/uhn/hl7v2/conf/spec/message/ProfileStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 148
    add-int/lit8 p1, p1, -0x1

    .line 149
    :goto_0
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-le v0, p1, :cond_0

    .line 152
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/conf/spec/message/ProfileStructure;

    .line 153
    .local v0, "oldStructure":Lca/uhn/hl7v2/conf/spec/message/ProfileStructure;
    iget-object v2, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;->children:Ljava/util/List;

    invoke-interface {v2, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 155
    :try_start_0
    iget-object v2, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v3, "structure"

    invoke-virtual {v2, v3, v1, v1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/beans/PropertyVetoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    nop

    .line 161
    iget-object v2, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v3, "structure"

    invoke-virtual {v2, v3, v1, v1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 162
    return-void

    .line 157
    :catch_0
    move-exception v2

    .line 158
    .local v2, "vetoException":Ljava/beans/PropertyVetoException;
    iget-object v3, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;->children:Ljava/util/List;

    invoke-interface {v3, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 159
    new-instance v3, Lca/uhn/hl7v2/conf/ProfileException;

    invoke-direct {v3, v1, v2}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 150
    .end local v0    # "oldStructure":Lca/uhn/hl7v2/conf/spec/message/ProfileStructure;
    .end local v2    # "vetoException":Ljava/beans/PropertyVetoException;
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;->children:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 4
    .param p1, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;->description:Ljava/lang/String;

    .line 78
    .local v0, "oldDescription":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "description"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    nop

    .line 82
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;->description:Ljava/lang/String;

    .line 83
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "description"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    return-void

    .line 79
    :catch_0
    move-exception v1

    .line 80
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

    .line 122
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;->impNote:Ljava/lang/String;

    .line 124
    .local v0, "oldImpNote":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "impNote"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    nop

    .line 128
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;->impNote:Ljava/lang/String;

    .line 129
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "impNote"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 130
    return-void

    .line 125
    :catch_0
    move-exception v1

    .line 126
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

    .line 99
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;->reference:Ljava/lang/String;

    .line 101
    .local v0, "oldReference":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "reference"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    nop

    .line 105
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;->reference:Ljava/lang/String;

    .line 106
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "reference"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    return-void

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lca/uhn/hl7v2/conf/ProfileException;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
