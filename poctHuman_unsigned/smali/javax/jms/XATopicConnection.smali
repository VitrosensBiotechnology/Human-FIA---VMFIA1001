.class public interface abstract Ljavax/jms/XATopicConnection;
.super Ljava/lang/Object;
.source "XATopicConnection.java"

# interfaces
.implements Ljavax/jms/XAConnection;
.implements Ljavax/jms/TopicConnection;


# virtual methods
.method public abstract createTopicSession(ZI)Ljavax/jms/TopicSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract createXATopicSession()Ljavax/jms/XATopicSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method
