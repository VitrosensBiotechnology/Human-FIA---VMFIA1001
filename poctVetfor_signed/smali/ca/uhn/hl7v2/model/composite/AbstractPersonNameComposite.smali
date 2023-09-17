.class public abstract Lca/uhn/hl7v2/model/composite/AbstractPersonNameComposite;
.super Lca/uhn/hl7v2/model/AbstractType;
.source "AbstractPersonNameComposite.java"

# interfaces
.implements Lca/uhn/hl7v2/model/Composite;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Message;)V
    .locals 0
    .param p1, "theMessage"    # Lca/uhn/hl7v2/model/Message;

    .line 16
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/AbstractType;-><init>(Lca/uhn/hl7v2/model/Message;)V

    .line 17
    return-void
.end method
