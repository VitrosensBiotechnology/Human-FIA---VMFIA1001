.class public interface abstract Ljavax/jms/XATopicConnectionFactory;
.super Ljava/lang/Object;
.source "XATopicConnectionFactory.java"

# interfaces
.implements Ljavax/jms/XAConnectionFactory;
.implements Ljavax/jms/TopicConnectionFactory;


# virtual methods
.method public abstract createXATopicConnection()Ljavax/jms/XATopicConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract createXATopicConnection(Ljava/lang/String;Ljava/lang/String;)Ljavax/jms/XATopicConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method
