.class public Lca/uhn/hl7v2/conf/spec/ImpNote;
.super Ljava/lang/Object;
.source "ImpNote.java"


# instance fields
.field private propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

.field private text:Ljava/lang/String;

.field private vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lca/uhn/hl7v2/conf/spec/ImpNote;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    .line 16
    new-instance v0, Ljava/beans/VetoableChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/VetoableChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lca/uhn/hl7v2/conf/spec/ImpNote;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    .line 20
    return-void
.end method


# virtual methods
.method public addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/PropertyChangeListener;

    .line 26
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/ImpNote;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 27
    return-void
.end method

.method public addVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/VetoableChangeListener;

    .line 40
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/ImpNote;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/VetoableChangeSupport;->addVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V

    .line 41
    return-void
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/ImpNote;->text:Ljava/lang/String;

    return-object v0
.end method

.method public removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/PropertyChangeListener;

    .line 33
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/ImpNote;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 34
    return-void
.end method

.method public removeVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/VetoableChangeListener;

    .line 47
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/ImpNote;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/VetoableChangeSupport;->removeVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V

    .line 48
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/PropertyVetoException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lca/uhn/hl7v2/conf/spec/ImpNote;->text:Ljava/lang/String;

    .line 64
    .local v0, "oldText":Ljava/lang/String;
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/ImpNote;->vetoableChangeSupport:Ljava/beans/VetoableChangeSupport;

    const-string v2, "text"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    iput-object p1, p0, Lca/uhn/hl7v2/conf/spec/ImpNote;->text:Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lca/uhn/hl7v2/conf/spec/ImpNote;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "text"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    return-void
.end method
