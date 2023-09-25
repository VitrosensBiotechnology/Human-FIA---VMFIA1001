.class public Lca/uhn/hl7v2/model/primitive/ISWithNamespace;
.super Lca/uhn/hl7v2/model/primitive/IS;
.source "ISWithNamespace.java"


# instance fields
.field private myHl7Version:Ljava/lang/String;

.field private myNamespace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Message;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "theMessage"    # Lca/uhn/hl7v2/model/Message;
    .param p2, "theHl7Version"    # Ljava/lang/String;
    .param p3, "theNamespace"    # Ljava/lang/String;
    .param p4, "theTable"    # I

    .line 18
    invoke-direct {p0, p1, p4}, Lca/uhn/hl7v2/model/primitive/IS;-><init>(Lca/uhn/hl7v2/model/Message;I)V

    .line 19
    iput-object p2, p0, Lca/uhn/hl7v2/model/primitive/ISWithNamespace;->myHl7Version:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lca/uhn/hl7v2/model/primitive/ISWithNamespace;->myNamespace:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/model/Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "theMessage"    # Lca/uhn/hl7v2/model/Message;
    .param p2, "theHl7Version"    # Ljava/lang/String;
    .param p3, "theNamespace"    # Ljava/lang/String;
    .param p4, "theTable"    # Ljava/lang/Integer;

    .line 28
    invoke-direct {p0, p1, p4}, Lca/uhn/hl7v2/model/primitive/IS;-><init>(Lca/uhn/hl7v2/model/Message;Ljava/lang/Integer;)V

    .line 29
    iput-object p2, p0, Lca/uhn/hl7v2/model/primitive/ISWithNamespace;->myHl7Version:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lca/uhn/hl7v2/model/primitive/ISWithNamespace;->myNamespace:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 39
    const-string v0, "IS"

    return-object v0
.end method

.method public getTableNamespace()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lca/uhn/hl7v2/model/primitive/ISWithNamespace;->myNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lca/uhn/hl7v2/model/primitive/ISWithNamespace;->myHl7Version:Ljava/lang/String;

    return-object v0
.end method
