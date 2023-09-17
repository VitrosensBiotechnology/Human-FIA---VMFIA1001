.class public interface abstract Ljavax/jms/QueueSender;
.super Ljava/lang/Object;
.source "QueueSender.java"

# interfaces
.implements Ljavax/jms/MessageProducer;


# virtual methods
.method public abstract getQueue()Ljavax/jms/Queue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract send(Ljavax/jms/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract send(Ljavax/jms/Message;IIJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract send(Ljavax/jms/Queue;Ljavax/jms/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract send(Ljavax/jms/Queue;Ljavax/jms/Message;IIJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method
