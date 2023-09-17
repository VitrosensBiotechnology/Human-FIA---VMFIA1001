.class public abstract Lca/uhn/hl7v2/model/AbstractStructure;
.super Ljava/lang/Object;
.source "AbstractStructure.java"

# interfaces
.implements Lca/uhn/hl7v2/model/Structure;


# static fields
.field protected static final log:Lorg/slf4j/Logger;

.field private static final serialVersionUID:J = -0x3aafd5c888940b50L


# instance fields
.field private parent:Lca/uhn/hl7v2/model/Group;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lca/uhn/hl7v2/model/AbstractStructure;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/model/AbstractStructure;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/model/Group;)V
    .locals 0
    .param p1, "parent"    # Lca/uhn/hl7v2/model/Group;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lca/uhn/hl7v2/model/AbstractStructure;->parent:Lca/uhn/hl7v2/model/Group;

    .line 44
    return-void
.end method


# virtual methods
.method public getMessage()Lca/uhn/hl7v2/model/Message;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractStructure;->getParent()Lca/uhn/hl7v2/model/Group;

    move-result-object v0

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Group;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lca/uhn/hl7v2/model/Group;
    .locals 1

    .line 55
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractStructure;->parent:Lca/uhn/hl7v2/model/Group;

    return-object v0
.end method
