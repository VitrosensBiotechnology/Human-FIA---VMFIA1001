.class public Ljavax/jms/TopicRequestor;
.super Ljava/lang/Object;
.source "TopicRequestor.java"


# instance fields
.field publisher:Ljavax/jms/TopicPublisher;

.field session:Ljavax/jms/TopicSession;

.field subscriber:Ljavax/jms/TopicSubscriber;

.field tempTopic:Ljavax/jms/TemporaryTopic;

.field topic:Ljavax/jms/Topic;


# direct methods
.method public constructor <init>(Ljavax/jms/TopicSession;Ljavax/jms/Topic;)V
    .locals 1
    .param p1, "session"    # Ljavax/jms/TopicSession;
    .param p2, "topic"    # Ljavax/jms/Topic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Ljavax/jms/TopicRequestor;->session:Ljavax/jms/TopicSession;

    .line 61
    iput-object p2, p0, Ljavax/jms/TopicRequestor;->topic:Ljavax/jms/Topic;

    .line 62
    invoke-interface {p1}, Ljavax/jms/TopicSession;->createTemporaryTopic()Ljavax/jms/TemporaryTopic;

    move-result-object v0

    iput-object v0, p0, Ljavax/jms/TopicRequestor;->tempTopic:Ljavax/jms/TemporaryTopic;

    .line 63
    invoke-interface {p1, p2}, Ljavax/jms/TopicSession;->createPublisher(Ljavax/jms/Topic;)Ljavax/jms/TopicPublisher;

    move-result-object v0

    iput-object v0, p0, Ljavax/jms/TopicRequestor;->publisher:Ljavax/jms/TopicPublisher;

    .line 64
    iget-object v0, p0, Ljavax/jms/TopicRequestor;->tempTopic:Ljavax/jms/TemporaryTopic;

    invoke-interface {p1, v0}, Ljavax/jms/TopicSession;->createSubscriber(Ljavax/jms/Topic;)Ljavax/jms/TopicSubscriber;

    move-result-object v0

    iput-object v0, p0, Ljavax/jms/TopicRequestor;->subscriber:Ljavax/jms/TopicSubscriber;

    .line 65
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Ljavax/jms/TopicRequestor;->session:Ljavax/jms/TopicSession;

    invoke-interface {v0}, Ljavax/jms/Session;->close()V

    .line 109
    iget-object v0, p0, Ljavax/jms/TopicRequestor;->tempTopic:Ljavax/jms/TemporaryTopic;

    invoke-interface {v0}, Ljavax/jms/TemporaryTopic;->delete()V

    .line 110
    return-void
.end method

.method public request(Ljavax/jms/Message;)Ljavax/jms/Message;
    .locals 1
    .param p1, "message"    # Ljavax/jms/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Ljavax/jms/TopicRequestor;->tempTopic:Ljavax/jms/TemporaryTopic;

    invoke-interface {p1, v0}, Ljavax/jms/Message;->setJMSReplyTo(Ljavax/jms/Destination;)V

    .line 83
    iget-object v0, p0, Ljavax/jms/TopicRequestor;->publisher:Ljavax/jms/TopicPublisher;

    invoke-interface {v0, p1}, Ljavax/jms/TopicPublisher;->publish(Ljavax/jms/Message;)V

    .line 84
    iget-object v0, p0, Ljavax/jms/TopicRequestor;->subscriber:Ljavax/jms/TopicSubscriber;

    invoke-interface {v0}, Ljavax/jms/MessageConsumer;->receive()Ljavax/jms/Message;

    move-result-object v0

    return-object v0
.end method
