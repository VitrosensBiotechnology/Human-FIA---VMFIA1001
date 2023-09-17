.class public Lca/uhn/hl7v2/protocol/impl/TransportableImpl;
.super Ljava/lang/Object;
.source "TransportableImpl.java"

# interfaces
.implements Lca/uhn/hl7v2/protocol/Transportable;


# instance fields
.field private final myMessageText:Ljava/lang/String;

.field private final myMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "theMessageText"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lca/uhn/hl7v2/protocol/impl/TransportableImpl;->myMessageText:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/protocol/impl/TransportableImpl;->myMetadata:Ljava/util/Map;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "theMessageText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 41
    .local p2, "theMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lca/uhn/hl7v2/protocol/impl/TransportableImpl;->myMessageText:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lca/uhn/hl7v2/protocol/impl/TransportableImpl;->myMetadata:Ljava/util/Map;

    .line 44
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/TransportableImpl;->myMessageText:Ljava/lang/String;

    return-object v0
.end method

.method public getMetadata()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/TransportableImpl;->myMetadata:Ljava/util/Map;

    return-object v0
.end method
