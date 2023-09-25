.class public interface abstract Ljavax/jms/TopicPublisher;
.super Ljava/lang/Object;
.source "TopicPublisher.java"

# interfaces
.implements Ljavax/jms/MessageProducer;


# virtual methods
.method public abstract getTopic()Ljavax/jms/Topic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract publish(Ljavax/jms/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract publish(Ljavax/jms/Message;IIJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract publish(Ljavax/jms/Topic;Ljavax/jms/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract publish(Ljavax/jms/Topic;Ljavax/jms/Message;IIJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method
