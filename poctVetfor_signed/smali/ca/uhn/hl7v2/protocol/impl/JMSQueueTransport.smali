.class public Lca/uhn/hl7v2/protocol/impl/JMSQueueTransport;
.super Lca/uhn/hl7v2/protocol/impl/AbstractJMSTransport;
.source "JMSQueueTransport.java"


# instance fields
.field private myConnection:Ljavax/jms/QueueConnection;

.field private myQueue:Ljavax/jms/Queue;

.field private myReceiver:Ljavax/jms/QueueReceiver;

.field private myReceivingSession:Ljavax/jms/QueueSession;

.field private mySender:Ljavax/jms/QueueSender;

.field private mySendingSession:Ljavax/jms/QueueSession;


# direct methods
.method public constructor <init>(Ljavax/jms/QueueConnection;Ljavax/jms/Queue;)V
    .locals 0
    .param p1, "theConnection"    # Ljavax/jms/QueueConnection;
    .param p2, "theDestination"    # Ljavax/jms/Queue;

    .line 60
    invoke-direct {p0}, Lca/uhn/hl7v2/protocol/impl/AbstractJMSTransport;-><init>()V

    .line 61
    iput-object p1, p0, Lca/uhn/hl7v2/protocol/impl/JMSQueueTransport;->myConnection:Ljavax/jms/QueueConnection;

    .line 62
    iput-object p2, p0, Lca/uhn/hl7v2/protocol/impl/JMSQueueTransport;->myQueue:Ljavax/jms/Queue;

    .line 63
    return-void
.end method


# virtual methods
.method public doConnect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/TransportException;
        }
    .end annotation

    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, "transacted":Z
    const/4 v1, 0x1

    .line 107
    .local v1, "ackMode":I
    invoke-virtual {p0}, Lca/uhn/hl7v2/protocol/impl/JMSQueueTransport;->doDisconnect()V

    .line 109
    :try_start_0
    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/JMSQueueTransport;->myConnection:Ljavax/jms/QueueConnection;

    invoke-interface {v2, v0, v1}, Ljavax/jms/QueueConnection;->createQueueSession(ZI)Ljavax/jms/QueueSession;

    move-result-object v2

    iput-object v2, p0, Lca/uhn/hl7v2/protocol/impl/JMSQueueTransport;->mySendingSession:Ljavax/jms/QueueSession;

    .line 110
    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/JMSQueueTransport;->mySendingSession:Ljavax/jms/QueueSession;

    iget-object v3, p0, Lca/uhn/hl7v2/protocol/impl/JMSQueueTransport;->myQueue:Ljavax/jms/Queue;

    invoke-interface {v2, v3}, Ljavax/jms/QueueSession;->createSender(Ljavax/jms/Queue;)Ljavax/jms/QueueSender;

    move-result-object v2

    iput-object v2, p0, Lca/uhn/hl7v2/protocol/impl/JMSQueueTransport;->mySender:Ljavax/jms/QueueSender;

    .line 112
    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/JMSQueueTransport;->myConnection:Ljavax/jms/QueueConnection;

    invoke-interface {v2, v0, v1}, Ljavax/jms/QueueConnection;->createQueueSession(ZI)Ljavax/jms/QueueSession;

    move-result-object v2

    iput-object v2, p0, Lca/uhn/hl7v2/protocol/impl/JMSQueueTransport;->myReceivingSession:Ljavax/jms/QueueSession;

    .line 113
    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/JMSQueueTransport;->myReceivingSession:Ljavax/jms/QueueSession;

    iget-object v3, p0, Lca/uhn/hl7v2/protocol/impl/JMSQueueTransport;->myQueue:Ljavax/jms/Queue;

    invoke-interface {v2, v3}, Ljavax/jms/QueueSession;->createReceiver(Ljavax/jms/Queue;)Ljavax/jms/QueueReceiver;

    move-result-object v2

    iput-object v2, p0, Lca/uhn/hl7v2/protocol/impl/JMSQueueTransport;->myReceiver:Ljavax/jms/QueueReceiver;
    :try_end_0
    .catch Ljavax/jms/JMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    nop

    .line 117
    return-void

    .line 114
    :catch_0
    move-exception v2

    .line 115
    .local v2, "e":Ljavax/jms/JMSException;
    new-instance v3, Lca/uhn/hl7v2/protocol/TransportException;

    invoke-direct {v3, v2}, Lca/uhn/hl7v2/protocol/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public doDisconnect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/TransportException;
        }
    .end annotation

    .line 124
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/JMSQueueTransport;->mySendingSession:Ljavax/jms/QueueSession;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/JMSQueueTransport;->mySendingSession:Ljavax/jms/QueueSession;

    invoke-interface {v0}, Ljavax/jms/QueueSession;->close()V

    .line 127
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/JMSQueueTransport;->myReceivingSession:Ljavax/jms/QueueSession;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/JMSQueueTransport;->myReceivingSession:Ljavax/jms/QueueSession;

    invoke-interface {v0}, Ljavax/jms/QueueSession;->close()V
    :try_end_0
    .catch Ljavax/jms/JMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    nop

    .line 133
    :cond_1
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljavax/jms/JMSException;
    new-instance v1, Lca/uhn/hl7v2/protocol/TransportException;

    invoke-direct {v1, v0}, Lca/uhn/hl7v2/protocol/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getConnection()Ljavax/jms/Connection;
    .locals 1

    .line 76
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/JMSQueueTransport;->myConnection:Ljavax/jms/QueueConnection;

    return-object v0
.end method

.method protected getDestinationName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/JMSQueueTransport;->myQueue:Ljavax/jms/Queue;

    invoke-interface {v0}, Ljavax/jms/Queue;->getQueueName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getMessage()Ljavax/jms/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/JMSQueueTransport;->mySendingSession:Ljavax/jms/QueueSession;

    invoke-interface {v0}, Ljavax/jms/QueueSession;->createTextMessage()Ljavax/jms/TextMessage;

    move-result-object v0

    return-object v0
.end method

.method protected receiveJMS()Ljavax/jms/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/JMSQueueTransport;->myReceiver:Ljavax/jms/QueueReceiver;

    invoke-interface {v0}, Ljavax/jms/QueueReceiver;->receive()Ljavax/jms/Message;

    move-result-object v0

    return-object v0
.end method

.method protected sendJMS(Ljavax/jms/Message;)V
    .locals 1
    .param p1, "theMessage"    # Ljavax/jms/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/JMSQueueTransport;->mySender:Ljavax/jms/QueueSender;

    invoke-interface {v0, p1}, Ljavax/jms/QueueSender;->send(Ljavax/jms/Message;)V

    .line 91
    return-void
.end method
