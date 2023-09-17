.class public interface abstract Ljavax/jms/XAQueueConnection;
.super Ljava/lang/Object;
.source "XAQueueConnection.java"

# interfaces
.implements Ljavax/jms/XAConnection;
.implements Ljavax/jms/QueueConnection;


# virtual methods
.method public abstract createQueueSession(ZI)Ljavax/jms/QueueSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract createXAQueueSession()Ljavax/jms/XAQueueSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method
