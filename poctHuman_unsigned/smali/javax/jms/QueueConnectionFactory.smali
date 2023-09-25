.class public interface abstract Ljavax/jms/QueueConnectionFactory;
.super Ljava/lang/Object;
.source "QueueConnectionFactory.java"

# interfaces
.implements Ljavax/jms/ConnectionFactory;


# virtual methods
.method public abstract createQueueConnection()Ljavax/jms/QueueConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract createQueueConnection(Ljava/lang/String;Ljava/lang/String;)Ljavax/jms/QueueConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method
