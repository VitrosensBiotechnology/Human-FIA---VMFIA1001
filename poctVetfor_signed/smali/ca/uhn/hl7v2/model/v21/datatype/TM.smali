.class public Lca/uhn/hl7v2/model/v21/datatype/TM;
.super Lca/uhn/hl7v2/model/primitive/TM;
.source "TM.java"


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Message;)V
    .locals 0
    .param p1, "theMessage"    # Lca/uhn/hl7v2/model/Message;

    .line 72
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/primitive/TM;-><init>(Lca/uhn/hl7v2/model/Message;)V

    .line 73
    return-void
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 79
    const-string v0, "2.1"

    return-object v0
.end method
