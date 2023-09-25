.class public interface abstract Ljavax/jms/TopicConnection;
.super Ljava/lang/Object;
.source "TopicConnection.java"

# interfaces
.implements Ljavax/jms/Connection;


# virtual methods
.method public abstract createConnectionConsumer(Ljavax/jms/Topic;Ljava/lang/String;Ljavax/jms/ServerSessionPool;I)Ljavax/jms/ConnectionConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract createDurableConnectionConsumer(Ljavax/jms/Topic;Ljava/lang/String;Ljava/lang/String;Ljavax/jms/ServerSessionPool;I)Ljavax/jms/ConnectionConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract createTopicSession(ZI)Ljavax/jms/TopicSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method
