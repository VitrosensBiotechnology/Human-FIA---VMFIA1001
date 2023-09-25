.class public abstract Lca/uhn/hl7v2/protocol/impl/AbstractJMSTransport;
.super Lca/uhn/hl7v2/protocol/impl/AbstractTransport;
.source "AbstractJMSTransport.java"

# interfaces
.implements Lca/uhn/hl7v2/protocol/TransportLayer;


# static fields
.field public static final CLIENT_ID_KEY:Ljava/lang/String; = "CLIENT_ID"

.field public static final CONNECTION_METADATA_KEY:Ljava/lang/String; = "CONNECTION_METADATA"

.field public static final DESTINATION_NAME_KEY:Ljava/lang/String; = "DESTINATION_NAME"

.field private static final log:Lorg/slf4j/Logger;


# instance fields
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lca/uhn/hl7v2/protocol/impl/URLTransport;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/protocol/impl/AbstractJMSTransport;->log:Lorg/slf4j/Logger;

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lca/uhn/hl7v2/protocol/impl/AbstractTransport;-><init>()V

    .line 67
    invoke-direct {p0}, Lca/uhn/hl7v2/protocol/impl/AbstractJMSTransport;->makeMetadata()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/protocol/impl/AbstractJMSTransport;->myMetadata:Ljava/util/Map;

    .line 68
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

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 76
    .local v0, "md":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    const-string v1, "CLIENT_ID"

    invoke-virtual {p0}, Lca/uhn/hl7v2/protocol/impl/AbstractJMSTransport;->getConnection()Ljavax/jms/Connection;

    move-result-object v2

    invoke-interface {v2}, Ljavax/jms/Connection;->getClientID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljavax/jms/JMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    goto :goto_0

    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Ljavax/jms/JMSException;
    sget-object v2, Lca/uhn/hl7v2/protocol/impl/AbstractJMSTransport;->log:Lorg/slf4j/Logger;

    const-string v3, "Error setting JMSTransport metadata"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    .end local v1    # "e":Ljavax/jms/JMSException;
    :goto_0
    :try_start_1
    const-string v1, "CONNECTION_METADATA"

    invoke-virtual {p0}, Lca/uhn/hl7v2/protocol/impl/AbstractJMSTransport;->getConnection()Ljavax/jms/Connection;

    move-result-object v2

    invoke-interface {v2}, Ljavax/jms/Connection;->getMetaData()Ljavax/jms/ConnectionMetaData;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljavax/jms/JMSException; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    goto :goto_1

    :catch_1
    move-exception v1

    .line 84
    .restart local v1    # "e":Ljavax/jms/JMSException;
    sget-object v2, Lca/uhn/hl7v2/protocol/impl/AbstractJMSTransport;->log:Lorg/slf4j/Logger;

    const-string v3, "Error setting JMSTransport metadata"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    .end local v1    # "e":Ljavax/jms/JMSException;
    :goto_1
    :try_start_2
    const-string v1, "DESTINATION_NAME"

    invoke-virtual {p0}, Lca/uhn/hl7v2/protocol/impl/AbstractJMSTransport;->getDestinationName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljavax/jms/JMSException; {:try_start_2 .. :try_end_2} :catch_2

    .line 89
    goto :goto_2

    :catch_2
    move-exception v1

    .line 90
    .restart local v1    # "e":Ljavax/jms/JMSException;
    sget-object v2, Lca/uhn/hl7v2/protocol/impl/AbstractJMSTransport;->log:Lorg/slf4j/Logger;

    const-string v3, "Error setting JMSTransport metadata"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    .end local v1    # "e":Ljavax/jms/JMSException;
    :goto_2
    return-object v0
.end method


# virtual methods
.method public doReceive()Lca/uhn/hl7v2/protocol/Transportable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/TransportException;
        }
    .end annotation

    .line 221
    const/4 v0, 0x0

    .line 223
    .local v0, "result":Lca/uhn/hl7v2/protocol/Transportable;
    :try_start_0
    invoke-virtual {p0}, Lca/uhn/hl7v2/protocol/impl/AbstractJMSTransport;->receiveJMS()Ljavax/jms/Message;

    move-result-object v1

    .line 224
    .local v1, "message":Ljavax/jms/Message;
    invoke-virtual {p0, v1}, Lca/uhn/hl7v2/protocol/impl/AbstractJMSTransport;->toTransportable(Ljavax/jms/Message;)Lca/uhn/hl7v2/protocol/Transportable;

    move-result-object v2
    :try_end_0
    .catch Ljavax/jms/JMSException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 225
    .end local v1    # "message":Ljavax/jms/Message;
    nop

    .line 228
    return-object v0

    .line 225
    :catch_0
    move-exception v1

    .line 226
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

    .line 150
    :try_start_0
    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/protocol/impl/AbstractJMSTransport;->toMessage(Lca/uhn/hl7v2/protocol/Transportable;)Ljavax/jms/Message;

    move-result-object v0

    .line 151
    .local v0, "message":Ljavax/jms/Message;
    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/protocol/impl/AbstractJMSTransport;->sendJMS(Ljavax/jms/Message;)V
    :try_end_0
    .catch Ljavax/jms/JMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v0    # "message":Ljavax/jms/Message;
    nop

    .line 155
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
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

    .line 237
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/AbstractJMSTransport;->myMetadata:Ljava/util/Map;

    return-object v0
.end method

.method public abstract getConnection()Ljavax/jms/Connection;
.end method

.method protected abstract getDestinationName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method protected abstract getMessage()Ljavax/jms/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method protected abstract receiveJMS()Ljavax/jms/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method protected abstract sendJMS(Ljavax/jms/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method protected toMessage(Lca/uhn/hl7v2/protocol/Transportable;)Ljavax/jms/Message;
    .locals 4
    .param p1, "theSource"    # Lca/uhn/hl7v2/protocol/Transportable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/TransportException;
        }
    .end annotation

    .line 170
    :try_start_0
    invoke-virtual {p0}, Lca/uhn/hl7v2/protocol/impl/AbstractJMSTransport;->getMessage()Ljavax/jms/Message;

    move-result-object v0

    .line 172
    .local v0, "message":Ljavax/jms/Message;
    instance-of v1, v0, Ljavax/jms/TextMessage;

    if-nez v1, :cond_0

    .line 173
    new-instance v1, Lca/uhn/hl7v2/protocol/TransportException;

    const-string v2, "This implementation expects getMessage() to return  a TextMessage.  Override this method if another message type is to be used"

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/protocol/TransportException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    :cond_0
    move-object v1, v0

    check-cast v1, Ljavax/jms/TextMessage;

    invoke-interface {p1}, Lca/uhn/hl7v2/protocol/Transportable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavax/jms/TextMessage;->setText(Ljava/lang/String;)V

    .line 179
    invoke-interface {p1}, Lca/uhn/hl7v2/protocol/Transportable;->getMetadata()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 180
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 185
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    nop

    .line 186
    nop

    .line 189
    return-object v0

    .line 181
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 182
    .local v2, "key":Ljava/lang/String;
    invoke-interface {p1}, Lca/uhn/hl7v2/protocol/Transportable;->getMetadata()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 183
    .local v3, "val":Ljava/lang/Object;
    invoke-interface {v0, v2, v3}, Ljavax/jms/Message;->setObjectProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljavax/jms/JMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "val":Ljava/lang/Object;
    goto :goto_0

    .line 185
    .end local v0    # "message":Ljavax/jms/Message;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 186
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

    .line 200
    instance-of v0, p1, Ljavax/jms/TextMessage;

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Lca/uhn/hl7v2/protocol/TransportException;

    const-string v1, "This implementation expects getMessage() to return  a TextMessage.  Override this method if another message type is to be used"

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/protocol/TransportException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    const/4 v0, 0x0

    .line 207
    .local v0, "result":Lca/uhn/hl7v2/protocol/Transportable;
    :try_start_0
    move-object v1, p1

    check-cast v1, Ljavax/jms/TextMessage;

    invoke-interface {v1}, Ljavax/jms/TextMessage;->getText()Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "text":Ljava/lang/String;
    new-instance v2, Lca/uhn/hl7v2/protocol/impl/TransportableImpl;

    invoke-direct {v2, v1}, Lca/uhn/hl7v2/protocol/impl/TransportableImpl;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 209
    invoke-interface {v0}, Lca/uhn/hl7v2/protocol/Transportable;->getMetadata()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lca/uhn/hl7v2/protocol/impl/AbstractJMSTransport;->getCommonMetadata()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljavax/jms/JMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .end local v1    # "text":Ljava/lang/String;
    nop

    .line 214
    return-object v0

    .line 210
    :catch_0
    move-exception v1

    .line 211
    .local v1, "e":Ljavax/jms/JMSException;
    new-instance v2, Lca/uhn/hl7v2/protocol/TransportException;

    invoke-direct {v2, v1}, Lca/uhn/hl7v2/protocol/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
