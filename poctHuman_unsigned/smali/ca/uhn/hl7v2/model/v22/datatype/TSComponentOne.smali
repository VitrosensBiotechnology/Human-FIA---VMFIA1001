.class public Lca/uhn/hl7v2/model/v22/datatype/TSComponentOne;
.super Lca/uhn/hl7v2/model/primitive/TSComponentOne;
.source "TSComponentOne.java"


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Message;)V
    .locals 0
    .param p1, "theMessage"    # Lca/uhn/hl7v2/model/Message;

    .line 89
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/primitive/TSComponentOne;-><init>(Lca/uhn/hl7v2/model/Message;)V

    .line 90
    return-void
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 96
    const-string v0, "2.2"

    return-object v0
.end method
