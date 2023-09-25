.class public Lca/uhn/hl7v2/model/GenericSegment;
.super Lca/uhn/hl7v2/model/AbstractSegment;
.source "GenericSegment.java"


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Group;Ljava/lang/String;)V
    .locals 1
    .param p1, "parent"    # Lca/uhn/hl7v2/model/Group;
    .param p2, "name"    # Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lca/uhn/hl7v2/model/AbstractSegment;-><init>(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 25
    iput-object p2, p0, Lca/uhn/hl7v2/model/GenericSegment;->name:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method protected createNewTypeWithoutReflection(I)Lca/uhn/hl7v2/model/Type;
    .locals 2
    .param p1, "field"    # I

    .line 41
    new-instance v0, Lca/uhn/hl7v2/model/Varies;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/GenericSegment;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/Varies;-><init>(Lca/uhn/hl7v2/model/Message;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lca/uhn/hl7v2/model/GenericSegment;->name:Ljava/lang/String;

    return-object v0
.end method
