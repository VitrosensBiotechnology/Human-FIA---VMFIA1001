.class public Lca/uhn/hl7v2/protocol/impl/JMSTransport;
.super Lca/uhn/hl7v2/protocol/impl/AbstractTransport;
.source "JMSTransport.java"

# interfaces
.implements Lca/uhn/hl7v2/protocol/TransportLayer;


# static fields
.field public static final INBOUND_CLIENT_ID_KEY:Ljava/lang/String; = "INBOUND_CLIENT_ID"

.field public static final INBOUND_CONNECTION_METADATA_KEY:Ljava/lang/String; = "INBOUND_CONNECTION_METADATA"

.field public static final INBOUND_DESTINATION_NAME_KEY:Ljava/lang/String; = "INBOUND_DESTINATION_NAME"

.field public static final OUTBOUND_CLIENT_ID_KEY:Ljava/lang/String; = "OUTBOUND_CLIENT_ID"

.field public static final OUTBOUND_CONNECTION_METADATA_KEY:Ljava/lang/String; = "OUTBOUND_CONNECTION_METADATA"

.field public static final OUTBOUND_DESTINATION_NAME_KEY:Ljava/lang/String; = "OUTBOUND_DESTINATION_NAME"

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private myInbound:Lca/uhn/hl7v2/protocol/JMSDestination;

.field private myMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private myOutbound:Lca/uhn/hl7v2/protocol/JMSDestination;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lca/uhn/hl7v2/protocol/impl/URLTransport;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/protocol/impl/JMSTransport;->log:Lorg/slf4j/Logger;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Lca/uhn/hl7v2/protocol/impl/AbstractTransport;-><init>()V

    .line 83
    invoke-direct {p0}, Lca/uhn/hl7v2/protocol/impl/JMSTransport;->makeMetadata()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/protocol/impl/JMSTransport;->myMetadata:Ljava/util/Map;

    .line 84
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/protocol/JMSDestination;Lca/uhn/hl7v2/protocol/JMSDestination;)V
    .locals 0
    .param p1, "theInboundDestination"    # Lca/uhn/hl7v2/protocol/JMSDestination;
    .param p2, "theOutboundDestination"    # Lca/uhn/hl7v2/protocol/JMSDestination;

    .line 72
    invoke-direct {p0}, Lca/uhn/hl7v2/protocol/impl/AbstractTransport;-><init>()V

    .line 73
    iput-object p1, p0, Lca/uhn/hl7v2/protocol/impl/JMSTransport;->myInbound:Lca/uhn/hl7v2/protocol/JMSDestination;

    .line 74
    iput-object p2, p0, Lca/uhn/hl7v2/protocol/impl/JMSTransport;->myOutbound:Lca/uhn/hl7v2/protocol/JMSDestination;

    .line 75
    return-void
.end method

.method private makeMetadata()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 92
    .local v0, "md":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    const-string v1, "INBOUND_CLIENT_ID"

    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/JMSTransport;->myInbound:Lca/uhn/hl7v2/protocol/JMSDestination;

    invoke-interface {v2}, Lca/uhn/hl7v2/protocol/JMSDestination;->getConnection()Ljavax/jms/Connection;

    move-result-object v2

    invoke-interface {v2}, Ljavax/jms/Connection;->getClientID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v1, "INBOUND_CONNECTION_METADATA"

    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/JMSTransport;->myInbound:Lca/uhn/hl7v2/protocol/JMSDestination;

    invoke-interface {v2}, Lca/uhn/hl7v2/protocol/JMSDestination;->getConnection()Ljavax/jms/Connection;

    move-result-object v2

    invoke-interface {v2}, Ljavax/jms/Connection;->getMetaData()Ljavax/jms/ConnectionMetaData;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v1, "INBOUND_DESTINATION_NAME"

    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/JMSTransport;->myInbound:Lca/uhn/hl7v2/protocol/JMSDestination;

    invoke-interface {v2}, Lca/uhn/hl7v2/protocol/JMSDestination;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v1, "OUTBOUND_CLIENT_ID"

    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/JMSTransport;->myOutbound:Lca/uhn/hl7v2/protocol/JMSDestination;

    invoke-interface {v2}, Lca/uhn/hl7v2/protocol/JMSDestination;->getConnection()Ljavax/jms/Connection;

    move-result-object v2

    invoke-interface {v2}, Ljavax/jms/Connection;->getClientID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v1, "OUTBOUND_CONNECTION_METADATA"

    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/JMSTransport;->myOutbound:Lca/uhn/hl7v2/protocol/JMSDestination;

    invoke-interface {v2}, Lca/uhn/hl7v2/protocol/JMSDestination;->getConnection()Ljavax/jms/Connection;

    move-result-object v2

    invoke-interface {v2}, Ljavax/jms/Connection;->getMetaData()Ljavax/jms/ConnectionMetaData;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v1, "OUTBOUND_DESTINATION_NAME"

    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/JMSTransport;->myOutbound:Lca/uhn/hl7v2/protocol/JMSDestination;

    invoke-interface {v2}, Lca/uhn/hl7v2/protocol/JMSDestination;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljavax/jms/JMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    goto :goto_0

    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Ljavax/jms/JMSException;
    sget-object v2, Lca/uhn/hl7v2/protocol/impl/JMSTransport;->log:Lorg/slf4j/Logger;

    const-string v3, "Error setting JMSTransport metadata"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    .end local v1    # "e":Ljavax/jms/JMSException;
    :goto_0
    return-object v0
.end method


# virtual methods
.method public doConnect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/TransportException;
        }
    .end annotation

    .line 222
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/JMSTransport;->myInbound:Lca/uhn/hl7v2/protocol/JMSDestination;

    invoke-interface {v0}, Lca/uhn/hl7v2/protocol/JMSDestination;->connect()V

    .line 223
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/JMSTransport;->myInbound:Lca/uhn/hl7v2/protocol/JMSDestination;

    iget-object v1, p0, Lca/uhn/hl7v2/protocol/impl/JMSTransport;->myOutbound:Lca/uhn/hl7v2/protocol/JMSDestination;

    if-eq v0, v1, :cond_0

    .line 224
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/JMSTransport;->myOutbound:Lca/uhn/hl7v2/protocol/JMSDestination;

    invoke-interface {v0}, Lca/uhn/hl7v2/protocol/JMSDestination;->connect()V
    :try_end_0
    .catch Ljavax/jms/JMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    nop

    .line 229
    :cond_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljavax/jms/JMSException;
    new-instance v1, Lca/uhn/hl7v2/protocol/TransportException;

    invoke-direct {v1, v0}, Lca/uhn/hl7v2/protocol/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public doDisconnect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/TransportException;
        }
    .end annotation

    .line 236
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/JMSTransport;->myInbound:Lca/uhn/hl7v2/protocol/JMSDestination;

    invoke-interface {v0}, Lca/uhn/hl7v2/protocol/JMSDestination;->disconnect()V

    .line 237
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/JMSTransport;->myInbound:Lca/uhn/hl7v2/protocol/JMSDestination;

    iget-object v1, p0, Lca/uhn/hl7v2/protocol/impl/JMSTransport;->myOutbound:Lca/uhn/hl7v2/protocol/JMSDestination;

    if-eq v0, v1, :cond_0

    .line 238
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/JMSTransport;->myOutbound:Lca/uhn/hl7v2/protocol/JMSDestination;

    invoke-interface {v0}, Lca/uhn/hl7v2/protocol/JMSDestination;->disconnect()V
    :try_end_0
    .catch Ljavax/jms/JMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    nop

    .line 243
    :cond_0
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljavax/jms/JMSException;
    new-instance v1, Lca/uhn/hl7v2/protocol/TransportException;

    invoke-direct {v1, v0}, Lca/uhn/hl7v2/protocol/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public doReceive()Lca/uhn/hl7v2/protocol/Transportable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/TransportException;
        }
    .end annotation

    .line 198
    const/4 v0, 0x0

    .line 200
    .local v0, "result":Lca/uhn/hl7v2/protocol/Transportable;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/protocol/impl/JMSTransport;->myInbound:Lca/uhn/hl7v2/protocol/JMSDestination;

    invoke-interface {v1}, Lca/uhn/hl7v2/protocol/JMSDestination;->receive()Ljavax/jms/Message;

    move-result-object v1

    .line 201
    .local v1, "message":Ljavax/jms/Message;
    invoke-virtual {p0, v1}, Lca/uhn/hl7v2/protocol/impl/JMSTransport;->toTransportable(Ljavax/jms/Message;)Lca/uhn/hl7v2/protocol/Transportable;

    move-result-object v2
    :try_end_0
    .catch Ljavax/jms/JMSException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 202
    .end local v1    # "message":Ljavax/jms/Message;
    nop

    .line 205
    return-object v0

    .line 202
    :catch_0
    move-exception v1

    .line 203
    .local v1, "e":Ljavax/jms/JMSException;
    new-instance v2, Lca/uhn/hl7v2/protocol/TransportException;

    invoke-direct {v2, v1}, Lca/uhn/hl7v2/protocol/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public doSend(Lca/uhn/hl7v2/protocol/Transportable;)V
    .locals 2
    .param p1, "theMessage"    # Lca/uhn/hl7v2/protocol/Transportable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/TransportException;
        }
    .end annotation

    .line 127
    :try_start_0
    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/protocol/impl/JMSTransport;->toMessage(Lca/uhn/hl7v2/protocol/Transportable;)Ljavax/jms/Message;

    move-result-object v0

    .line 128
    .local v0, "message":Ljavax/jms/Message;
    iget-object v1, p0, Lca/uhn/hl7v2/protocol/impl/JMSTransport;->myOutbound:Lca/uhn/hl7v2/protocol/JMSDestination;

    invoke-interface {v1, v0}, Lca/uhn/hl7v2/protocol/JMSDestination;->send(Ljavax/jms/Message;)V
    :try_end_0
    .catch Ljavax/jms/JMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v0    # "message":Ljavax/jms/Message;
    nop

    .line 132
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljavax/jms/JMSException;
    new-instance v1, Lca/uhn/hl7v2/protocol/TransportException;

    invoke-direct {v1, v0}, Lca/uhn/hl7v2/protocol/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw v1
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

    .line 214
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/JMSTransport;->myMetadata:Ljava/util/Map;

    return-object v0
.end method

.method protected toMessage(Lca/uhn/hl7v2/protocol/Transportable;)Ljavax/jms/Message;
    .locals 5
    .param p1, "theSource"    # Lca/uhn/hl7v2/protocol/Transportable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/TransportException;
        }
    .end annotation

    .line 147
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/JMSTransport;->myOutbound:Lca/uhn/hl7v2/protocol/JMSDestination;

    invoke-interface {v0}, Lca/uhn/hl7v2/protocol/JMSDestination;->createMessage()Ljavax/jms/TextMessage;

    move-result-object v0

    .line 149
    .local v0, "message":Ljavax/jms/Message;
    instance-of v1, v0, Ljavax/jms/TextMessage;

    if-nez v1, :cond_0

    .line 150
    new-instance v1, Lca/uhn/hl7v2/protocol/TransportException;

    const-string v2, "This implementation expects getMessage() to return  a TextMessage.  Override this method if another message type is to be used"

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/protocol/TransportException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    :cond_0
    move-object v1, v0

    check-cast v1, Ljavax/jms/TextMessage;

    invoke-interface {p1}, Lca/uhn/hl7v2/protocol/Transportable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavax/jms/TextMessage;->setText(Ljava/lang/String;)V

    .line 156
    invoke-interface {p1}, Lca/uhn/hl7v2/protocol/Transportable;->getMetadata()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 157
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 162
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    nop

    .line 163
    nop

    .line 166
    return-object v0

    .line 158
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 159
    .local v2, "key":Ljava/lang/Object;
    invoke-interface {p1}, Lca/uhn/hl7v2/protocol/Transportable;->getMetadata()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 160
    .local v3, "val":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljavax/jms/Message;->setObjectProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljavax/jms/JMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "val":Ljava/lang/Object;
    goto :goto_0

    .line 162
    .end local v0    # "message":Ljavax/jms/Message;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljavax/jms/JMSException;
    new-instance v1, Lca/uhn/hl7v2/protocol/TransportException;

    invoke-direct {v1, v0}, Lca/uhn/hl7v2/protocol/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected toTransportable(Ljavax/jms/Message;)Lca/uhn/hl7v2/protocol/Transportable;
    .locals 4
    .param p1, "theMessage"    # Ljavax/jms/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/TransportException;
        }
    .end annotation

    .line 177
    instance-of v0, p1, Ljavax/jms/TextMessage;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Lca/uhn/hl7v2/protocol/TransportException;

    const-string v1, "This implementation expects getMessage() to return  a TextMessage.  Override this method if another message type is to be used"

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/protocol/TransportException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    const/4 v0, 0x0

    .line 184
    .local v0, "result":Lca/uhn/hl7v2/protocol/Transportable;
    :try_start_0
    move-object v1, p1

    check-cast v1, Ljavax/jms/TextMessage;

    invoke-interface {v1}, Ljavax/jms/TextMessage;->getText()Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "text":Ljava/lang/String;
    new-instance v2, Lca/uhn/hl7v2/protocol/impl/TransportableImpl;

    invoke-direct {v2, v1}, Lca/uhn/hl7v2/protocol/impl/TransportableImpl;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 186
    invoke-interface {v0}, Lca/uhn/hl7v2/protocol/Transportable;->getMetadata()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lca/uhn/hl7v2/protocol/impl/JMSTransport;->getCommonMetadata()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljavax/jms/JMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .end local v1    # "text":Ljava/lang/String;
    nop

    .line 191
    return-object v0

    .line 187
    :catch_0
    move-exception v1

    .line 188
    .local v1, "e":Ljavax/jms/JMSException;
    new-instance v2, Lca/uhn/hl7v2/protocol/TransportException;

    invoke-direct {v2, v1}, Lca/uhn/hl7v2/protocol/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
