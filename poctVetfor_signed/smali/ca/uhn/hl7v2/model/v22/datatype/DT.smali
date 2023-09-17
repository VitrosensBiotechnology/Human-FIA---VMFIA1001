.class public Lca/uhn/hl7v2/model/v22/datatype/DT;
.super Lca/uhn/hl7v2/model/primitive/DT;
.source "DT.java"


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Message;)V
    .locals 0
    .param p1, "theMessage"    # Lca/uhn/hl7v2/model/Message;

    .line 53
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/primitive/DT;-><init>(Lca/uhn/hl7v2/model/Message;)V

    .line 54
    return-void
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 60
    const-string v0, "2.2"

    return-object v0
.end method
