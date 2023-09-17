.class Lca/uhn/hl7v2/protocol/impl/DualTransportConnector$ConnectThread;
.super Ljava/lang/Thread;
.source "DualTransportConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/protocol/impl/DualTransportConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectThread"
.end annotation


# instance fields
.field private myException:Lca/uhn/hl7v2/protocol/TransportException;

.field private myTransport:Lca/uhn/hl7v2/protocol/TransportLayer;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/protocol/TransportLayer;)V
    .locals 0
    .param p1, "theTransport"    # Lca/uhn/hl7v2/protocol/TransportLayer;

    .line 104
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 105
    iput-object p1, p0, Lca/uhn/hl7v2/protocol/impl/DualTransportConnector$ConnectThread;->myTransport:Lca/uhn/hl7v2/protocol/TransportLayer;

    .line 106
    return-void
.end method


# virtual methods
.method public getException()Lca/uhn/hl7v2/protocol/TransportException;
    .locals 1

    .line 116
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/DualTransportConnector$ConnectThread;->myException:Lca/uhn/hl7v2/protocol/TransportException;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .line 109
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/DualTransportConnector$ConnectThread;->myTransport:Lca/uhn/hl7v2/protocol/TransportLayer;

    invoke-interface {v0}, Lca/uhn/hl7v2/protocol/TransportLayer;->isConnected()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 1

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lca/uhn/hl7v2/protocol/impl/DualTransportConnector$ConnectThread;->myException:Lca/uhn/hl7v2/protocol/TransportException;

    .line 122
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/DualTransportConnector$ConnectThread;->myTransport:Lca/uhn/hl7v2/protocol/TransportLayer;

    invoke-interface {v0}, Lca/uhn/hl7v2/protocol/TransportLayer;->connect()V
    :try_end_0
    .catch Lca/uhn/hl7v2/protocol/TransportException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    goto :goto_0

    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Lca/uhn/hl7v2/protocol/TransportException;
    iput-object v0, p0, Lca/uhn/hl7v2/protocol/impl/DualTransportConnector$ConnectThread;->myException:Lca/uhn/hl7v2/protocol/TransportException;

    .line 126
    .end local v0    # "e":Lca/uhn/hl7v2/protocol/TransportException;
    :goto_0
    return-void
.end method
