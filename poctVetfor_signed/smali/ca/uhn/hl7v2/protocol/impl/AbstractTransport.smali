.class public abstract Lca/uhn/hl7v2/protocol/impl/AbstractTransport;
.super Ljava/lang/Object;
.source "AbstractTransport.java"

# interfaces
.implements Lca/uhn/hl7v2/protocol/TransportLayer;


# static fields
.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private myCommonMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private myIsConnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lca/uhn/hl7v2/protocol/impl/AbstractTransport;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/protocol/impl/AbstractTransport;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lca/uhn/hl7v2/protocol/impl/AbstractTransport;->myIsConnected:Z

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/protocol/impl/AbstractTransport;->myCommonMetadata:Ljava/util/Map;

    .line 55
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/TransportException;
        }
    .end annotation

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lca/uhn/hl7v2/protocol/impl/AbstractTransport;->myIsConnected:Z

    .line 121
    invoke-virtual {p0}, Lca/uhn/hl7v2/protocol/impl/AbstractTransport;->doConnect()V

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lca/uhn/hl7v2/protocol/impl/AbstractTransport;->myIsConnected:Z

    .line 123
    return-void
.end method

.method public disconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/TransportException;
        }
    .end annotation

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lca/uhn/hl7v2/protocol/impl/AbstractTransport;->myIsConnected:Z

    .line 146
    invoke-virtual {p0}, Lca/uhn/hl7v2/protocol/impl/AbstractTransport;->doDisconnect()V

    .line 147
    return-void
.end method

.method public abstract doConnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/TransportException;
        }
    .end annotation
.end method

.method public abstract doDisconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/TransportException;
        }
    .end annotation
.end method

.method public abstract doReceive()Lca/uhn/hl7v2/protocol/Transportable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/TransportException;
        }
    .end annotation
.end method

.method public abstract doSend(Lca/uhn/hl7v2/protocol/Transportable;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/TransportException;
        }
    .end annotation
.end method

.method public getCommonMetadata()Ljava/util/Map;
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

    .line 61
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/AbstractTransport;->myCommonMetadata:Ljava/util/Map;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lca/uhn/hl7v2/protocol/impl/AbstractTransport;->myIsConnected:Z

    return v0
.end method

.method public receive()Lca/uhn/hl7v2/protocol/Transportable;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/TransportException;
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Lca/uhn/hl7v2/protocol/impl/AbstractTransport;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lca/uhn/hl7v2/protocol/TransportException;

    const-string v1, "Can\'t receive because TransportLayer is not connected"

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/protocol/TransportException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    invoke-virtual {p0}, Lca/uhn/hl7v2/protocol/impl/AbstractTransport;->doReceive()Lca/uhn/hl7v2/protocol/Transportable;

    move-result-object v0

    .line 74
    .local v0, "message":Lca/uhn/hl7v2/protocol/Transportable;
    if-eqz v0, :cond_1

    .line 75
    invoke-interface {v0}, Lca/uhn/hl7v2/protocol/Transportable;->getMetadata()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/AbstractTransport;->myCommonMetadata:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 78
    :cond_1
    sget-object v1, Lca/uhn/hl7v2/protocol/impl/AbstractTransport;->log:Lorg/slf4j/Logger;

    const-string v2, "Received: {} "

    if-nez v0, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lca/uhn/hl7v2/protocol/Transportable;->getMessage()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    return-object v0
.end method

.method public send(Lca/uhn/hl7v2/protocol/Transportable;)V
    .locals 3
    .param p1, "theMessage"    # Lca/uhn/hl7v2/protocol/Transportable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/TransportException;
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Lca/uhn/hl7v2/protocol/impl/AbstractTransport;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lca/uhn/hl7v2/protocol/TransportException;

    const-string v1, "Can\'t send because TransportLayer is not connected"

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/protocol/TransportException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/protocol/impl/AbstractTransport;->doSend(Lca/uhn/hl7v2/protocol/Transportable;)V

    .line 103
    sget-object v0, Lca/uhn/hl7v2/protocol/impl/AbstractTransport;->log:Lorg/slf4j/Logger;

    const-string v1, "Sent: {}"

    if-nez p1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lca/uhn/hl7v2/protocol/Transportable;->getMessage()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    return-void
.end method
