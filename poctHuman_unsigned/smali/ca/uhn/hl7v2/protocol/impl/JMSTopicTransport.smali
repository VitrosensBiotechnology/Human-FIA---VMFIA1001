.class public Lca/uhn/hl7v2/protocol/impl/JMSTopicTransport;
.super Lca/uhn/hl7v2/protocol/impl/AbstractJMSTransport;
.source "JMSTopicTransport.java"


# instance fields
.field private myConnection:Ljavax/jms/TopicConnection;

.field private myMessageSelector:Ljava/lang/String;

.field private myPublisher:Ljavax/jms/TopicPublisher;

.field private myReceivingSession:Ljavax/jms/TopicSession;

.field private mySendingSession:Ljavax/jms/TopicSession;

.field private mySubscriber:Ljavax/jms/TopicSubscriber;

.field private myTopic:Ljavax/jms/Topic;


# direct methods
.method public constructor <init>(Ljavax/jms/TopicConnection;Ljavax/jms/Topic;)V
    .locals 0
    .param p1, "theConnection"    # Ljavax/jms/TopicConnection;
    .param p2, "theDestination"    # Ljavax/jms/Topic;

    .line 63
    invoke-direct {p0}, Lca/uhn/hl7v2/protocol/impl/AbstractJMSTransport;-><init>()V

    .line 64
    iput-object p1, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicTransport;->myConnection:Ljavax/jms/TopicConnection;

    .line 65
    iput-object p2, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicTransport;->myTopic:Ljavax/jms/Topic;

    .line 66
    return-void
.end method

.method public constructor <init>(Ljavax/jms/TopicConnection;Ljavax/jms/Topic;Ljava/lang/String;)V
    .locals 0
    .param p1, "theConnection"    # Ljavax/jms/TopicConnection;
    .param p2, "theDestination"    # Ljavax/jms/Topic;
    .param p3, "theMessageSelector"    # Ljava/lang/String;

    .line 74
    invoke-direct {p0}, Lca/uhn/hl7v2/protocol/impl/AbstractJMSTransport;-><init>()V

    .line 75
    iput-object p1, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicTransport;->myConnection:Ljavax/jms/TopicConnection;

    .line 76
    iput-object p2, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicTransport;->myTopic:Ljavax/jms/Topic;

    .line 77
    iput-object p3, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicTransport;->myMessageSelector:Ljava/lang/String;

    .line 78
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

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "transacted":Z
    const/4 v1, 0x1

    .line 122
    .local v1, "ackMode":I
    invoke-virtual {p0}, Lca/uhn/hl7v2/protocol/impl/JMSTopicTransport;->doDisconnect()V

    .line 124
    :try_start_0
    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicTransport;->myConnection:Ljavax/jms/TopicConnection;

    invoke-interface {v2, v0, v1}, Ljavax/jms/TopicConnection;->createTopicSession(ZI)Ljavax/jms/TopicSession;

    move-result-object v2

    iput-object v2, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicTransport;->mySendingSession:Ljavax/jms/TopicSession;

    .line 125
    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicTransport;->mySendingSession:Ljavax/jms/TopicSession;

    iget-object v3, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicTransport;->myTopic:Ljavax/jms/Topic;

    invoke-interface {v2, v3}, Ljavax/jms/TopicSession;->createPublisher(Ljavax/jms/Topic;)Ljavax/jms/TopicPublisher;

    move-result-object v2

    iput-object v2, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicTransport;->myPublisher:Ljavax/jms/TopicPublisher;

    .line 127
    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicTransport;->myConnection:Ljavax/jms/TopicConnection;

    invoke-interface {v2, v0, v1}, Ljavax/jms/TopicConnection;->createTopicSession(ZI)Ljavax/jms/TopicSession;

    move-result-object v2

    iput-object v2, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicTransport;->myReceivingSession:Ljavax/jms/TopicSession;

    .line 128
    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicTransport;->myReceivingSession:Ljavax/jms/TopicSession;

    iget-object v3, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicTransport;->myTopic:Ljavax/jms/Topic;

    invoke-interface {v2, v3}, Ljavax/jms/TopicSession;->createSubscriber(Ljavax/jms/Topic;)Ljavax/jms/TopicSubscriber;

    move-result-object v2

    iput-object v2, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicTransport;->mySubscriber:Ljavax/jms/TopicSubscriber;
    :try_end_0
    .catch Ljavax/jms/JMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    nop

    .line 132
    return-void

    .line 129
    :catch_0
    move-exception v2

    .line 130
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

    .line 139
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicTransport;->mySendingSession:Ljavax/jms/TopicSession;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicTransport;->mySendingSession:Ljavax/jms/TopicSession;

    invoke-interface {v0}, Ljavax/jms/TopicSession;->close()V

    .line 142
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicTransport;->myReceivingSession:Ljavax/jms/TopicSession;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicTransport;->myReceivingSession:Ljavax/jms/TopicSession;

    invoke-interface {v0}, Ljavax/jms/TopicSession;->close()V
    :try_end_0
    .catch Ljavax/jms/JMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    nop

    .line 148
    :cond_1
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljavax/jms/JMSException;
    new-instance v1, Lca/uhn/hl7v2/protocol/TransportException;

    invoke-direct {v1, v0}, Lca/uhn/hl7v2/protocol/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getConnection()Ljavax/jms/Connection;
    .locals 1

    .line 91
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicTransport;->myConnection:Ljavax/jms/TopicConnection;

    return-object v0
.end method

.method protected getDestinationName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicTransport;->myTopic:Ljavax/jms/Topic;

    invoke-interface {v0}, Ljavax/jms/Topic;->getTopicName()Ljava/lang/String;

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

    .line 98
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicTransport;->mySendingSession:Ljavax/jms/TopicSession;

    invoke-interface {v0}, Ljavax/jms/TopicSession;->createTextMessage()Ljavax/jms/TextMessage;

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

    .line 112
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicTransport;->mySubscriber:Ljavax/jms/TopicSubscriber;

    invoke-interface {v0}, Ljavax/jms/TopicSubscriber;->receive()Ljavax/jms/Message;

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

    .line 105
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicTransport;->myPublisher:Ljavax/jms/TopicPublisher;

    invoke-interface {v0, p1}, Ljavax/jms/TopicPublisher;->publish(Ljavax/jms/Message;)V

    .line 106
    return-void
.end method
