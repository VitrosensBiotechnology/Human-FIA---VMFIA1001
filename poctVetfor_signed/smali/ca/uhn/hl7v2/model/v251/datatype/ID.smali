.class public Lca/uhn/hl7v2/model/v251/datatype/ID;
.super Lca/uhn/hl7v2/model/primitive/ID;
.source "ID.java"


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Message;)V
    .locals 0
    .param p1, "theMessage"    # Lca/uhn/hl7v2/model/Message;

    .line 58
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/primitive/ID;-><init>(Lca/uhn/hl7v2/model/Message;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/model/Message;I)V
    .locals 0
    .param p1, "theMessage"    # Lca/uhn/hl7v2/model/Message;
    .param p2, "theTable"    # I

    .line 66
    invoke-direct {p0, p1, p2}, Lca/uhn/hl7v2/model/primitive/ID;-><init>(Lca/uhn/hl7v2/model/Message;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/model/Message;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "theMessage"    # Lca/uhn/hl7v2/model/Message;
    .param p2, "theTable"    # Ljava/lang/Integer;

    .line 74
    invoke-direct {p0, p1, p2}, Lca/uhn/hl7v2/model/primitive/ID;-><init>(Lca/uhn/hl7v2/model/Message;Ljava/lang/Integer;)V

    .line 75
    return-void
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 81
    const-string v0, "2.5.1"

    return-object v0
.end method
