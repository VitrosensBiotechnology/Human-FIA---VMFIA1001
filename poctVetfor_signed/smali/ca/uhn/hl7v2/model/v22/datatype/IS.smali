.class public Lca/uhn/hl7v2/model/v22/datatype/IS;
.super Lca/uhn/hl7v2/model/primitive/IS;
.source "IS.java"


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Message;)V
    .locals 0
    .param p1, "theMessage"    # Lca/uhn/hl7v2/model/Message;

    .line 53
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/primitive/IS;-><init>(Lca/uhn/hl7v2/model/Message;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/model/Message;I)V
    .locals 0
    .param p1, "theMessage"    # Lca/uhn/hl7v2/model/Message;
    .param p2, "theTable"    # I

    .line 61
    invoke-direct {p0, p1, p2}, Lca/uhn/hl7v2/model/primitive/IS;-><init>(Lca/uhn/hl7v2/model/Message;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/model/Message;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "theMessage"    # Lca/uhn/hl7v2/model/Message;
    .param p2, "theTable"    # Ljava/lang/Integer;

    .line 69
    invoke-direct {p0, p1, p2}, Lca/uhn/hl7v2/model/primitive/IS;-><init>(Lca/uhn/hl7v2/model/Message;Ljava/lang/Integer;)V

    .line 70
    return-void
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 76
    const-string v0, "2.2"

    return-object v0
.end method
