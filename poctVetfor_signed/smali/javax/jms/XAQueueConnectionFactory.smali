.class public interface abstract Ljavax/jms/XAQueueConnectionFactory;
.super Ljava/lang/Object;
.source "XAQueueConnectionFactory.java"

# interfaces
.implements Ljavax/jms/XAConnectionFactory;
.implements Ljavax/jms/QueueConnectionFactory;


# virtual methods
.method public abstract createXAQueueConnection()Ljavax/jms/XAQueueConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract createXAQueueConnection(Ljava/lang/String;Ljava/lang/String;)Ljavax/jms/XAQueueConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method
