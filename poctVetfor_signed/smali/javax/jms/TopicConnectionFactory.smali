.class public interface abstract Ljavax/jms/TopicConnectionFactory;
.super Ljava/lang/Object;
.source "TopicConnectionFactory.java"

# interfaces
.implements Ljavax/jms/ConnectionFactory;


# virtual methods
.method public abstract createTopicConnection()Ljavax/jms/TopicConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract createTopicConnection(Ljava/lang/String;Ljava/lang/String;)Ljavax/jms/TopicConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method
