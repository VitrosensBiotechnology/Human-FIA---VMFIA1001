.class public Lca/uhn/hl7v2/model/GenericGroup;
.super Lca/uhn/hl7v2/model/AbstractGroup;
.source "GenericGroup.java"


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Group;Ljava/lang/String;Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 0
    .param p1, "parent"    # Lca/uhn/hl7v2/model/Group;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 25
    invoke-direct {p0, p1, p3}, Lca/uhn/hl7v2/model/AbstractGroup;-><init>(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 26
    iput-object p2, p0, Lca/uhn/hl7v2/model/GenericGroup;->name:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lca/uhn/hl7v2/model/GenericGroup;->name:Ljava/lang/String;

    return-object v0
.end method
