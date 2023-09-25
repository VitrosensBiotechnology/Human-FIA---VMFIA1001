.class public Lca/uhn/hl7v2/protocol/impl/DualTransportConnector;
.super Ljava/lang/Object;
.source "DualTransportConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lca/uhn/hl7v2/protocol/impl/DualTransportConnector$ConnectThread;
    }
.end annotation


# instance fields
.field private isConnecting:Z

.field private final myTransportA:Lca/uhn/hl7v2/protocol/TransportLayer;

.field private final myTransportB:Lca/uhn/hl7v2/protocol/TransportLayer;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/protocol/TransportLayer;Lca/uhn/hl7v2/protocol/TransportLayer;)V
    .locals 0
    .param p1, "theTransportA"    # Lca/uhn/hl7v2/protocol/TransportLayer;
    .param p2, "theTransportB"    # Lca/uhn/hl7v2/protocol/TransportLayer;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lca/uhn/hl7v2/protocol/impl/DualTransportConnector;->myTransportA:Lca/uhn/hl7v2/protocol/TransportLayer;

    .line 34
    iput-object p2, p0, Lca/uhn/hl7v2/protocol/impl/DualTransportConnector;->myTransportB:Lca/uhn/hl7v2/protocol/TransportLayer;

    .line 35
    return-void
.end method


# virtual methods
.method public cancelConnect()V
    .locals 1

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lca/uhn/hl7v2/protocol/impl/DualTransportConnector;->isConnecting:Z

    .line 88
    return-void
.end method

.method public connect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/TransportException;
        }
    .end annotation

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lca/uhn/hl7v2/protocol/impl/DualTransportConnector;->isConnecting:Z

    .line 58
    new-instance v0, Lca/uhn/hl7v2/protocol/impl/DualTransportConnector$ConnectThread;

    iget-object v1, p0, Lca/uhn/hl7v2/protocol/impl/DualTransportConnector;->myTransportA:Lca/uhn/hl7v2/protocol/TransportLayer;

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/protocol/impl/DualTransportConnector$ConnectThread;-><init>(Lca/uhn/hl7v2/protocol/TransportLayer;)V

    .line 59
    .local v0, "c1":Lca/uhn/hl7v2/protocol/impl/DualTransportConnector$ConnectThread;
    new-instance v1, Lca/uhn/hl7v2/protocol/impl/DualTransportConnector$ConnectThread;

    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/DualTransportConnector;->myTransportB:Lca/uhn/hl7v2/protocol/TransportLayer;

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/protocol/impl/DualTransportConnector$ConnectThread;-><init>(Lca/uhn/hl7v2/protocol/TransportLayer;)V

    .line 60
    .local v1, "c2":Lca/uhn/hl7v2/protocol/impl/DualTransportConnector$ConnectThread;
    invoke-virtual {v0}, Lca/uhn/hl7v2/protocol/impl/DualTransportConnector$ConnectThread;->start()V

    .line 61
    invoke-virtual {v1}, Lca/uhn/hl7v2/protocol/impl/DualTransportConnector$ConnectThread;->start()V

    .line 63
    :goto_0
    iget-boolean v2, p0, Lca/uhn/hl7v2/protocol/impl/DualTransportConnector;->isConnecting:Z

    if-eqz v2, :cond_2

    .line 64
    invoke-virtual {v0}, Lca/uhn/hl7v2/protocol/impl/DualTransportConnector$ConnectThread;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lca/uhn/hl7v2/protocol/impl/DualTransportConnector$ConnectThread;->isConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 65
    :cond_0
    invoke-virtual {v0}, Lca/uhn/hl7v2/protocol/impl/DualTransportConnector$ConnectThread;->getException()Lca/uhn/hl7v2/protocol/TransportException;

    move-result-object v2

    if-nez v2, :cond_2

    .line 66
    invoke-virtual {v1}, Lca/uhn/hl7v2/protocol/impl/DualTransportConnector$ConnectThread;->getException()Lca/uhn/hl7v2/protocol/TransportException;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 69
    :cond_1
    const-wide/16 v2, 0x1

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    .line 73
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lca/uhn/hl7v2/protocol/impl/DualTransportConnector$ConnectThread;->getException()Lca/uhn/hl7v2/protocol/TransportException;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lca/uhn/hl7v2/protocol/impl/DualTransportConnector$ConnectThread;->getException()Lca/uhn/hl7v2/protocol/TransportException;

    move-result-object v2

    throw v2

    .line 74
    :cond_3
    invoke-virtual {v1}, Lca/uhn/hl7v2/protocol/impl/DualTransportConnector$ConnectThread;->getException()Lca/uhn/hl7v2/protocol/TransportException;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lca/uhn/hl7v2/protocol/impl/DualTransportConnector$ConnectThread;->getException()Lca/uhn/hl7v2/protocol/TransportException;

    move-result-object v2

    throw v2

    .line 75
    :cond_4
    return-void
.end method

.method public disconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/TransportException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/DualTransportConnector;->myTransportA:Lca/uhn/hl7v2/protocol/TransportLayer;

    invoke-interface {v0}, Lca/uhn/hl7v2/protocol/TransportLayer;->disconnect()V

    .line 79
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/DualTransportConnector;->myTransportB:Lca/uhn/hl7v2/protocol/TransportLayer;

    invoke-interface {v0}, Lca/uhn/hl7v2/protocol/TransportLayer;->disconnect()V

    .line 80
    return-void
.end method

.method public getTransportA()Lca/uhn/hl7v2/protocol/TransportLayer;
    .locals 1

    .line 41
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/DualTransportConnector;->myTransportA:Lca/uhn/hl7v2/protocol/TransportLayer;

    return-object v0
.end method

.method public getTransportB()Lca/uhn/hl7v2/protocol/TransportLayer;
    .locals 1

    .line 48
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/DualTransportConnector;->myTransportB:Lca/uhn/hl7v2/protocol/TransportLayer;

    return-object v0
.end method
