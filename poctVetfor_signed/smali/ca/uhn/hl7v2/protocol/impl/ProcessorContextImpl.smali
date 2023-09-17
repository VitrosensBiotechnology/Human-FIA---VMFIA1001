.class public Lca/uhn/hl7v2/protocol/impl/ProcessorContextImpl;
.super Ljava/lang/Object;
.source "ProcessorContextImpl.java"

# interfaces
.implements Lca/uhn/hl7v2/protocol/ProcessorContext;


# instance fields
.field private final myLocallyDrivenTransport:Lca/uhn/hl7v2/protocol/TransportLayer;

.field private final myMetadataFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final myRemotelyDrivenTransport:Lca/uhn/hl7v2/protocol/TransportLayer;

.field private final myRouter:Lca/uhn/hl7v2/protocol/ApplicationRouter;

.field private final mySafeStorage:Lca/uhn/hl7v2/protocol/SafeStorage;

.field private final myValidators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/protocol/AcceptValidator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/protocol/ApplicationRouter;Lca/uhn/hl7v2/protocol/TransportLayer;Lca/uhn/hl7v2/protocol/SafeStorage;)V
    .locals 2
    .param p1, "theRouter"    # Lca/uhn/hl7v2/protocol/ApplicationRouter;
    .param p2, "theTransport"    # Lca/uhn/hl7v2/protocol/TransportLayer;
    .param p3, "theStorage"    # Lca/uhn/hl7v2/protocol/SafeStorage;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorContextImpl;->myRouter:Lca/uhn/hl7v2/protocol/ApplicationRouter;

    .line 44
    iput-object p2, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorContextImpl;->myRemotelyDrivenTransport:Lca/uhn/hl7v2/protocol/TransportLayer;

    .line 45
    iput-object p2, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorContextImpl;->myLocallyDrivenTransport:Lca/uhn/hl7v2/protocol/TransportLayer;

    .line 46
    iput-object p3, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorContextImpl;->mySafeStorage:Lca/uhn/hl7v2/protocol/SafeStorage;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorContextImpl;->myValidators:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorContextImpl;->myMetadataFields:Ljava/util/List;

    .line 50
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/protocol/ApplicationRouter;Lca/uhn/hl7v2/protocol/TransportLayer;Lca/uhn/hl7v2/protocol/TransportLayer;Lca/uhn/hl7v2/protocol/SafeStorage;)V
    .locals 2
    .param p1, "theRouter"    # Lca/uhn/hl7v2/protocol/ApplicationRouter;
    .param p2, "theLocallyDrivenTransport"    # Lca/uhn/hl7v2/protocol/TransportLayer;
    .param p3, "theRemotelyDrivenTransport"    # Lca/uhn/hl7v2/protocol/TransportLayer;
    .param p4, "theStorage"    # Lca/uhn/hl7v2/protocol/SafeStorage;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorContextImpl;->myRouter:Lca/uhn/hl7v2/protocol/ApplicationRouter;

    .line 69
    iput-object p3, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorContextImpl;->myRemotelyDrivenTransport:Lca/uhn/hl7v2/protocol/TransportLayer;

    .line 70
    iput-object p2, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorContextImpl;->myLocallyDrivenTransport:Lca/uhn/hl7v2/protocol/TransportLayer;

    .line 71
    iput-object p4, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorContextImpl;->mySafeStorage:Lca/uhn/hl7v2/protocol/SafeStorage;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorContextImpl;->myValidators:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorContextImpl;->myMetadataFields:Ljava/util/List;

    .line 75
    return-void
.end method


# virtual methods
.method public addValidator(Lca/uhn/hl7v2/protocol/AcceptValidator;)V
    .locals 1
    .param p1, "theValidator"    # Lca/uhn/hl7v2/protocol/AcceptValidator;

    .line 112
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorContextImpl;->myValidators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method public getLocallyDrivenTransportLayer()Lca/uhn/hl7v2/protocol/TransportLayer;
    .locals 1

    .line 95
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorContextImpl;->myLocallyDrivenTransport:Lca/uhn/hl7v2/protocol/TransportLayer;

    return-object v0
.end method

.method public getMetadataFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorContextImpl;->myMetadataFields:Ljava/util/List;

    return-object v0
.end method

.method public getRemotelyDrivenTransportLayer()Lca/uhn/hl7v2/protocol/TransportLayer;
    .locals 1

    .line 88
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorContextImpl;->myRemotelyDrivenTransport:Lca/uhn/hl7v2/protocol/TransportLayer;

    return-object v0
.end method

.method public getRouter()Lca/uhn/hl7v2/protocol/ApplicationRouter;
    .locals 1

    .line 81
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorContextImpl;->myRouter:Lca/uhn/hl7v2/protocol/ApplicationRouter;

    return-object v0
.end method

.method public getSafeStorage()Lca/uhn/hl7v2/protocol/SafeStorage;
    .locals 1

    .line 119
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorContextImpl;->mySafeStorage:Lca/uhn/hl7v2/protocol/SafeStorage;

    return-object v0
.end method

.method public getValidators()[Lca/uhn/hl7v2/protocol/AcceptValidator;
    .locals 2

    .line 102
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorContextImpl;->myValidators:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Lca/uhn/hl7v2/protocol/AcceptValidator;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lca/uhn/hl7v2/protocol/AcceptValidator;

    return-object v0
.end method
