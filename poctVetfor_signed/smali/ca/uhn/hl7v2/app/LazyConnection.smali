.class public Lca/uhn/hl7v2/app/LazyConnection;
.super Ljava/lang/Object;
.source "LazyConnection.java"

# interfaces
.implements Lca/uhn/hl7v2/app/Connection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lca/uhn/hl7v2/app/LazyConnection$LazyInitiator;
    }
.end annotation


# instance fields
.field private activeConnection:Lca/uhn/hl7v2/app/Connection;

.field private data:Lca/uhn/hl7v2/app/ConnectionData;

.field private executor:Ljava/util/concurrent/ExecutorService;

.field private initiator:Lca/uhn/hl7v2/app/LazyConnection$LazyInitiator;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/app/ConnectionData;Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .param p1, "data"    # Lca/uhn/hl7v2/app/ConnectionData;
    .param p2, "executor"    # Ljava/util/concurrent/ExecutorService;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lca/uhn/hl7v2/app/LazyConnection;->data:Lca/uhn/hl7v2/app/ConnectionData;

    .line 53
    iput-object p2, p0, Lca/uhn/hl7v2/app/LazyConnection;->executor:Ljava/util/concurrent/ExecutorService;

    .line 54
    new-instance v0, Lca/uhn/hl7v2/app/LazyConnection$LazyInitiator;

    invoke-direct {v0, p0}, Lca/uhn/hl7v2/app/LazyConnection$LazyInitiator;-><init>(Lca/uhn/hl7v2/app/LazyConnection;)V

    iput-object v0, p0, Lca/uhn/hl7v2/app/LazyConnection;->initiator:Lca/uhn/hl7v2/app/LazyConnection$LazyInitiator;

    .line 55
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 1

    .line 58
    invoke-virtual {p0}, Lca/uhn/hl7v2/app/LazyConnection;->isEstablished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lca/uhn/hl7v2/app/LazyConnection;->activeConnection:Lca/uhn/hl7v2/app/Connection;

    invoke-interface {v0}, Lca/uhn/hl7v2/app/Connection;->activate()V

    .line 59
    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    .line 67
    invoke-virtual {p0}, Lca/uhn/hl7v2/app/LazyConnection;->isEstablished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lca/uhn/hl7v2/app/LazyConnection;->activeConnection:Lca/uhn/hl7v2/app/Connection;

    invoke-interface {v0}, Lca/uhn/hl7v2/app/Connection;->close()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lca/uhn/hl7v2/app/LazyConnection;->activeConnection:Lca/uhn/hl7v2/app/Connection;

    .line 71
    :cond_0
    return-void
.end method

.method establishConnection()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 101
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/app/LazyConnection;->data:Lca/uhn/hl7v2/app/ConnectionData;

    iget-object v1, p0, Lca/uhn/hl7v2/app/LazyConnection;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1}, Lca/uhn/hl7v2/app/ConnectionFactory;->openEagerly(Lca/uhn/hl7v2/app/ConnectionData;Ljava/util/concurrent/ExecutorService;)Lca/uhn/hl7v2/app/Connection;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/app/LazyConnection;->activeConnection:Lca/uhn/hl7v2/app/Connection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    nop

    .line 105
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lca/uhn/hl7v2/HL7Exception;

    invoke-direct {v1, v0}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 78
    invoke-virtual {p0}, Lca/uhn/hl7v2/app/LazyConnection;->isEstablished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lca/uhn/hl7v2/app/LazyConnection;->activeConnection:Lca/uhn/hl7v2/app/Connection;

    invoke-interface {v0}, Lca/uhn/hl7v2/app/Connection;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0

    .line 79
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/app/LazyConnection;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getInitiator()Lca/uhn/hl7v2/app/Initiator;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lca/uhn/hl7v2/app/LazyConnection;->isEstablished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lca/uhn/hl7v2/app/LazyConnection;->activeConnection:Lca/uhn/hl7v2/app/Connection;

    invoke-interface {v0}, Lca/uhn/hl7v2/app/Connection;->getInitiator()Lca/uhn/hl7v2/app/Initiator;

    move-result-object v0

    return-object v0

    .line 63
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/app/LazyConnection;->initiator:Lca/uhn/hl7v2/app/LazyConnection$LazyInitiator;

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lca/uhn/hl7v2/app/LazyConnection;->isEstablished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lca/uhn/hl7v2/app/LazyConnection;->activeConnection:Lca/uhn/hl7v2/app/Connection;

    invoke-interface {v0}, Lca/uhn/hl7v2/app/Connection;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    .line 85
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemotePort()Ljava/lang/Integer;
    .locals 1

    .line 89
    invoke-virtual {p0}, Lca/uhn/hl7v2/app/LazyConnection;->isEstablished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lca/uhn/hl7v2/app/LazyConnection;->activeConnection:Lca/uhn/hl7v2/app/Connection;

    invoke-interface {v0}, Lca/uhn/hl7v2/app/Connection;->getRemotePort()Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 92
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method isEstablished()Z
    .locals 1

    .line 96
    iget-object v0, p0, Lca/uhn/hl7v2/app/LazyConnection;->activeConnection:Lca/uhn/hl7v2/app/Connection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lca/uhn/hl7v2/app/LazyConnection;->activeConnection:Lca/uhn/hl7v2/app/Connection;

    invoke-interface {v0}, Lca/uhn/hl7v2/app/Connection;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 74
    invoke-virtual {p0}, Lca/uhn/hl7v2/app/LazyConnection;->isEstablished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lca/uhn/hl7v2/app/LazyConnection;->activeConnection:Lca/uhn/hl7v2/app/Connection;

    invoke-interface {v0}, Lca/uhn/hl7v2/app/Connection;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
