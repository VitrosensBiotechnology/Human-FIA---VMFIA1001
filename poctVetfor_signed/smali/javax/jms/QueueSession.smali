.class public interface abstract Ljavax/jms/QueueSession;
.super Ljava/lang/Object;
.source "QueueSession.java"

# interfaces
.implements Ljavax/jms/Session;


# virtual methods
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

.method public abstract createQueue(Ljava/lang/String;)Ljavax/jms/Queue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract createReceiver(Ljavax/jms/Queue;)Ljavax/jms/QueueReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract createReceiver(Ljavax/jms/Queue;Ljava/lang/String;)Ljavax/jms/QueueReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract createSender(Ljavax/jms/Queue;)Ljavax/jms/QueueSender;
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
