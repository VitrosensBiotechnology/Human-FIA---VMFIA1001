.class public Ljavax/jms/QueueRequestor;
.super Ljava/lang/Object;
.source "QueueRequestor.java"


# instance fields
.field queue:Ljavax/jms/Queue;

.field receiver:Ljavax/jms/QueueReceiver;

.field sender:Ljavax/jms/QueueSender;

.field session:Ljavax/jms/QueueSession;

.field tempQueue:Ljavax/jms/TemporaryQueue;


# direct methods
.method public constructor <init>(Ljavax/jms/QueueSession;Ljavax/jms/Queue;)V
    .locals 1
    .param p1, "session"    # Ljavax/jms/QueueSession;
    .param p2, "queue"    # Ljavax/jms/Queue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Ljavax/jms/QueueRequestor;->session:Ljavax/jms/QueueSession;

    .line 62
    iput-object p2, p0, Ljavax/jms/QueueRequestor;->queue:Ljavax/jms/Queue;

    .line 63
    invoke-interface {p1}, Ljavax/jms/QueueSession;->createTemporaryQueue()Ljavax/jms/TemporaryQueue;

    move-result-object v0

    iput-object v0, p0, Ljavax/jms/QueueRequestor;->tempQueue:Ljavax/jms/TemporaryQueue;

    .line 64
    invoke-interface {p1, p2}, Ljavax/jms/QueueSession;->createSender(Ljavax/jms/Queue;)Ljavax/jms/QueueSender;

    move-result-object v0

    iput-object v0, p0, Ljavax/jms/QueueRequestor;->sender:Ljavax/jms/QueueSender;

    .line 65
    iget-object v0, p0, Ljavax/jms/QueueRequestor;->tempQueue:Ljavax/jms/TemporaryQueue;

    invoke-interface {p1, v0}, Ljavax/jms/QueueSession;->createReceiver(Ljavax/jms/Queue;)Ljavax/jms/QueueReceiver;

    move-result-object v0

    iput-object v0, p0, Ljavax/jms/QueueRequestor;->receiver:Ljavax/jms/QueueReceiver;

    .line 66
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

    .line 109
    iget-object v0, p0, Ljavax/jms/QueueRequestor;->session:Ljavax/jms/QueueSession;

    invoke-interface {v0}, Ljavax/jms/Session;->close()V

    .line 110
    iget-object v0, p0, Ljavax/jms/QueueRequestor;->tempQueue:Ljavax/jms/TemporaryQueue;

    invoke-interface {v0}, Ljavax/jms/TemporaryQueue;->delete()V

    .line 111
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

    .line 83
    iget-object v0, p0, Ljavax/jms/QueueRequestor;->tempQueue:Ljavax/jms/TemporaryQueue;

    invoke-interface {p1, v0}, Ljavax/jms/Message;->setJMSReplyTo(Ljavax/jms/Destination;)V

    .line 84
    iget-object v0, p0, Ljavax/jms/QueueRequestor;->sender:Ljavax/jms/QueueSender;

    invoke-interface {v0, p1}, Ljavax/jms/QueueSender;->send(Ljavax/jms/Message;)V

    .line 85
    iget-object v0, p0, Ljavax/jms/QueueRequestor;->receiver:Ljavax/jms/QueueReceiver;

    invoke-interface {v0}, Ljavax/jms/MessageConsumer;->receive()Ljavax/jms/Message;

    move-result-object v0

    return-object v0
.end method
