.class public Lca/uhn/hl7v2/model/v251/datatype/DTM;
.super Lca/uhn/hl7v2/model/primitive/TSComponentOne;
.source "DTM.java"


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Message;)V
    .locals 0
    .param p1, "theMessage"    # Lca/uhn/hl7v2/model/Message;

    .line 86
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/primitive/TSComponentOne;-><init>(Lca/uhn/hl7v2/model/Message;)V

    .line 87
    return-void
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 93
    const-string v0, "2.5.1"

    return-object v0
.end method
