.class public Lca/uhn/hl7v2/model/v21/datatype/CM;
.super Lca/uhn/hl7v2/model/GenericComposite;
.source "CM.java"


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Message;)V
    .locals 0
    .param p1, "message"    # Lca/uhn/hl7v2/model/Message;

    .line 23
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/GenericComposite;-><init>(Lca/uhn/hl7v2/model/Message;)V

    .line 24
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 28
    const-string v0, "CM"

    return-object v0
.end method
