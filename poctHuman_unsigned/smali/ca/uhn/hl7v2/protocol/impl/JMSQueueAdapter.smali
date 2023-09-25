.class public Lca/uhn/hl7v2/protocol/impl/JMSQueueAdapter;
.super Ljava/lang/Object;
.source "JMSQueueAdapter.java"

# interfaces
.implements Lca/uhn/hl7v2/protocol/JMSDestination;


# instance fields
.field private myConnection:Ljavax/jms/QueueConnection;

.field private myIsConnected:Z

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

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lca/uhn/hl7v2/protocol/impl/JMSQueueAdapter;->myConnection:Ljavax/jms/QueueConnection;

    .line 65
    iput-object p2, p0, Lca/uhn/hl7v2/protocol/impl/JMSQueueAdapter;->myQueue:Ljavax/jms/Queue;

    .line 66
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "transacted":Z
    const/4 v1, 0x1

    .line 89
    .local v1, "ackMode":I
    invoke-virtual {p0}, Lca/uhn/hl7v2/protocol/impl/JMSQueueAdapter;->disconnect()V

    .line 91
    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/JMSQueueAdapter;->myConnection:Ljavax/jms/QueueConnection;

    invoke-interface {v2, v0, v1}, Ljavax/jms/QueueConnection;->createQueueSession(ZI)Ljavax/jms/QueueSession;

    move-result-object v2

    iput-object v2, p0, Lca/uhn/hl7v2/protocol/impl/JMSQueueAdapter;->mySendingSession:Ljavax/jms/QueueSession;

    .line 92
    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/JMSQueueAdapter;->mySendingSession:Ljavax/jms/QueueSession;

    iget-object v3, p0, Lca/uhn/hl7v2/protocol/impl/JMSQueueAdapter;->myQueue:Ljavax/jms/Queue;

    invoke-interface {v2, v3}, Ljavax/jms/QueueSession;->createSender(Ljavax/jms/Queue;)Ljavax/jms/QueueSender;

    move-result-object v2

    iput-object v2, p0, Lca/uhn/hl7v2/protocol/impl/JMSQueueAdapter;->mySender:Ljavax/jms/QueueSender;

    .line 94
    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/JMSQueueAdapter;->myConnection:Ljavax/jms/QueueConnection;

    invoke-interface {v2, v0, v1}, Ljavax/jms/QueueConnection;->createQueueSession(ZI)Ljavax/jms/QueueSession;

    move-result-object v2

    iput-object v2, p0, Lca/uhn/hl7v2/protocol/impl/JMSQueueAdapter;->myReceivingSession:Ljavax/jms/QueueSession;

    .line 95
    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/JMSQueueAdapter;->myReceivingSession:Ljavax/jms/QueueSession;

    iget-object v3, p0, Lca/uhn/hl7v2/protocol/impl/JMSQueueAdapter;->myQueue:Ljavax/jms/Queue;

    invoke-interface {v2, v3}, Ljavax/jms/QueueSession;->createReceiver(Ljavax/jms/Queue;)Ljavax/jms/QueueReceiver;

    move-result-object v2

    iput-object v2, p0, Lca/uhn/hl7v2/protocol/impl/JMSQueueAdapter;->myReceiver:Ljavax/jms/QueueReceiver;

    .line 97
    const/4 v2, 0x1

    iput-boolean v2, p0, Lca/uhn/hl7v2/protocol/impl/JMSQueueAdapter;->myIsConnected:Z

    .line 98
    return-void
.end method

.method public createMessage()Ljavax/jms/TextMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/JMSQueueAdapter;->mySendingSession:Ljavax/jms/QueueSession;

    invoke-interface {v0}, Ljavax/jms/QueueSession;->createTextMessage()Ljavax/jms/TextMessage;

    move-result-object v0

    return-object v0
.end method

.method public disconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lca/uhn/hl7v2/protocol/impl/JMSQueueAdapter;->myIsConnected:Z

    .line 105
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/JMSQueueAdapter;->mySendingSession:Ljavax/jms/QueueSession;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/JMSQueueAdapter;->mySendingSession:Ljavax/jms/QueueSession;

    invoke-interface {v0}, Ljavax/jms/QueueSession;->close()V

    .line 108
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/JMSQueueAdapter;->myReceivingSession:Ljavax/jms/QueueSession;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/JMSQueueAdapter;->myReceivingSession:Ljavax/jms/QueueSession;

    invoke-interface {v0}, Ljavax/jms/QueueSession;->close()V

    .line 111
    :cond_1
    return-void
.end method

.method public getConnection()Ljavax/jms/Connection;
    .locals 1

    .line 138
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/JMSQueueAdapter;->myConnection:Ljavax/jms/QueueConnection;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/JMSQueueAdapter;->myQueue:Ljavax/jms/Queue;

    invoke-interface {v0}, Ljavax/jms/Queue;->getQueueName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lca/uhn/hl7v2/protocol/impl/JMSQueueAdapter;->myIsConnected:Z

    return v0
.end method

.method public receive()Ljavax/jms/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/JMSQueueAdapter;->myReceiver:Ljavax/jms/QueueReceiver;

    invoke-interface {v0}, Ljavax/jms/QueueReceiver;->receive()Ljavax/jms/Message;

    move-result-object v0

    return-object v0
.end method

.method public send(Ljavax/jms/Message;)V
    .locals 1
    .param p1, "theMessage"    # Ljavax/jms/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/JMSQueueAdapter;->mySender:Ljavax/jms/QueueSender;

    invoke-interface {v0, p1}, Ljavax/jms/QueueSender;->send(Ljavax/jms/Message;)V

    .line 118
    return-void
.end method
