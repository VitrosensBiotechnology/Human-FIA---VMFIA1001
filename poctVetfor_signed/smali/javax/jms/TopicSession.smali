.class public interface abstract Ljavax/jms/TopicSession;
.super Ljava/lang/Object;
.source "TopicSession.java"

# interfaces
.implements Ljavax/jms/Session;


# virtual methods
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

.method public abstract createPublisher(Ljavax/jms/Topic;)Ljavax/jms/TopicPublisher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract createSubscriber(Ljavax/jms/Topic;)Ljavax/jms/TopicSubscriber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract createSubscriber(Ljavax/jms/Topic;Ljava/lang/String;Z)Ljavax/jms/TopicSubscriber;
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

.method public abstract createTopic(Ljava/lang/String;)Ljavax/jms/Topic;
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
