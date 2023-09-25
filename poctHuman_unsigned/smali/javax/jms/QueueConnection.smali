.class public interface abstract Ljavax/jms/QueueConnection;
.super Ljava/lang/Object;
.source "QueueConnection.java"

# interfaces
.implements Ljavax/jms/Connection;


# virtual methods
.method public abstract createConnectionConsumer(Ljavax/jms/Queue;Ljava/lang/String;Ljavax/jms/ServerSessionPool;I)Ljavax/jms/ConnectionConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract createQueueSession(ZI)Ljavax/jms/QueueSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method
