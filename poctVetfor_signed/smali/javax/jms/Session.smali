.class public interface abstract Ljavax/jms/Session;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final AUTO_ACKNOWLEDGE:I = 0x1

.field public static final CLIENT_ACKNOWLEDGE:I = 0x2

.field public static final DUPS_OK_ACKNOWLEDGE:I = 0x3

.field public static final SESSION_TRANSACTED:I


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract commit()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract createBrowser(Ljavax/jms/Queue;)Ljavax/jms/QueueBrowser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract createBrowser(Ljavax/jms/Queue;Ljava/lang/String;)Ljavax/jms/QueueBrowser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract createBytesMessage()Ljavax/jms/BytesMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract createConsumer(Ljavax/jms/Destination;)Ljavax/jms/MessageConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract createConsumer(Ljavax/jms/Destination;Ljava/lang/String;)Ljavax/jms/MessageConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract createConsumer(Ljavax/jms/Destination;Ljava/lang/String;Z)Ljavax/jms/MessageConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract createDurableSubscriber(Ljavax/jms/Topic;Ljava/lang/String;)Ljavax/jms/TopicSubscriber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract createDurableSubscriber(Ljavax/jms/Topic;Ljava/lang/String;Ljava/lang/String;Z)Ljavax/jms/TopicSubscriber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract createMapMessage()Ljavax/jms/MapMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract createMessage()Ljavax/jms/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract createObjectMessage()Ljavax/jms/ObjectMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract createObjectMessage(Ljava/io/Serializable;)Ljavax/jms/ObjectMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract createProducer(Ljavax/jms/Destination;)Ljavax/jms/MessageProducer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract createQueue(Ljava/lang/String;)Ljavax/jms/Queue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract createStreamMessage()Ljavax/jms/StreamMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract createTemporaryQueue()Ljavax/jms/TemporaryQueue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract createTemporaryTopic()Ljavax/jms/TemporaryTopic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract createTextMessage()Ljavax/jms/TextMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract createTextMessage(Ljava/lang/String;)Ljavax/jms/TextMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract createTopic(Ljava/lang/String;)Ljavax/jms/Topic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract getAcknowledgeMode()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract getMessageListener()Ljavax/jms/MessageListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract getTransacted()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract recover()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract rollback()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract run()V
.end method

.method public abstract setMessageListener(Ljavax/jms/MessageListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract unsubscribe(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method
