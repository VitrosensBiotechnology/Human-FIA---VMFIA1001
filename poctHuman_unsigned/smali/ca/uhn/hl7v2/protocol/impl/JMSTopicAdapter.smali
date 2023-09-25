.class public Lca/uhn/hl7v2/protocol/impl/JMSTopicAdapter;
.super Ljava/lang/Object;
.source "JMSTopicAdapter.java"

# interfaces
.implements Lca/uhn/hl7v2/protocol/JMSDestination;


# instance fields
.field private myConnection:Ljavax/jms/TopicConnection;

.field private myIsConnected:Z

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicAdapter;->myConnection:Ljavax/jms/TopicConnection;

    .line 65
    iput-object p2, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicAdapter;->myTopic:Ljavax/jms/Topic;

    .line 66
    return-void
.end method

.method public constructor <init>(Ljavax/jms/TopicConnection;Ljavax/jms/Topic;Ljava/lang/String;)V
    .locals 0
    .param p1, "theConnection"    # Ljavax/jms/TopicConnection;
    .param p2, "theDestination"    # Ljavax/jms/Topic;
    .param p3, "theMessageSelector"    # Ljava/lang/String;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicAdapter;->myConnection:Ljavax/jms/TopicConnection;

    .line 76
    iput-object p2, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicAdapter;->myTopic:Ljavax/jms/Topic;

    .line 77
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

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "transacted":Z
    const/4 v1, 0x1

    .line 100
    .local v1, "ackMode":I
    invoke-virtual {p0}, Lca/uhn/hl7v2/protocol/impl/JMSTopicAdapter;->disconnect()V

    .line 102
    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicAdapter;->myConnection:Ljavax/jms/TopicConnection;

    invoke-interface {v2, v0, v1}, Ljavax/jms/TopicConnection;->createTopicSession(ZI)Ljavax/jms/TopicSession;

    move-result-object v2

    iput-object v2, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicAdapter;->mySendingSession:Ljavax/jms/TopicSession;

    .line 103
    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicAdapter;->mySendingSession:Ljavax/jms/TopicSession;

    iget-object v3, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicAdapter;->myTopic:Ljavax/jms/Topic;

    invoke-interface {v2, v3}, Ljavax/jms/TopicSession;->createPublisher(Ljavax/jms/Topic;)Ljavax/jms/TopicPublisher;

    move-result-object v2

    iput-object v2, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicAdapter;->myPublisher:Ljavax/jms/TopicPublisher;

    .line 105
    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicAdapter;->myConnection:Ljavax/jms/TopicConnection;

    invoke-interface {v2, v0, v1}, Ljavax/jms/TopicConnection;->createTopicSession(ZI)Ljavax/jms/TopicSession;

    move-result-object v2

    iput-object v2, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicAdapter;->myReceivingSession:Ljavax/jms/TopicSession;

    .line 106
    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicAdapter;->myReceivingSession:Ljavax/jms/TopicSession;

    iget-object v3, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicAdapter;->myTopic:Ljavax/jms/Topic;

    invoke-interface {v2, v3}, Ljavax/jms/TopicSession;->createSubscriber(Ljavax/jms/Topic;)Ljavax/jms/TopicSubscriber;

    move-result-object v2

    iput-object v2, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicAdapter;->mySubscriber:Ljavax/jms/TopicSubscriber;

    .line 108
    const/4 v2, 0x1

    iput-boolean v2, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicAdapter;->myIsConnected:Z

    .line 109
    return-void
.end method

.method public createMessage()Ljavax/jms/TextMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicAdapter;->mySendingSession:Ljavax/jms/TopicSession;

    invoke-interface {v0}, Ljavax/jms/TopicSession;->createTextMessage()Ljavax/jms/TextMessage;

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

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicAdapter;->myIsConnected:Z

    .line 117
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicAdapter;->mySendingSession:Ljavax/jms/TopicSession;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicAdapter;->mySendingSession:Ljavax/jms/TopicSession;

    invoke-interface {v0}, Ljavax/jms/TopicSession;->close()V

    .line 120
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicAdapter;->myReceivingSession:Ljavax/jms/TopicSession;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicAdapter;->myReceivingSession:Ljavax/jms/TopicSession;

    invoke-interface {v0}, Ljavax/jms/TopicSession;->close()V

    .line 123
    :cond_1
    return-void
.end method

.method public getConnection()Ljavax/jms/Connection;
    .locals 1

    .line 150
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicAdapter;->myConnection:Ljavax/jms/TopicConnection;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicAdapter;->myTopic:Ljavax/jms/Topic;

    invoke-interface {v0}, Ljavax/jms/Topic;->getTopicName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicAdapter;->myIsConnected:Z

    return v0
.end method

.method public receive()Ljavax/jms/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicAdapter;->mySubscriber:Ljavax/jms/TopicSubscriber;

    invoke-interface {v0}, Ljavax/jms/TopicSubscriber;->receive()Ljavax/jms/Message;

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

    .line 136
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/JMSTopicAdapter;->myPublisher:Ljavax/jms/TopicPublisher;

    invoke-interface {v0, p1}, Ljavax/jms/TopicPublisher;->publish(Ljavax/jms/Message;)V

    .line 137
    return-void
.end method
