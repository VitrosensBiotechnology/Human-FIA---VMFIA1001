.class public interface abstract Ljavax/jms/TopicSubscriber;
.super Ljava/lang/Object;
.source "TopicSubscriber.java"

# interfaces
.implements Ljavax/jms/MessageConsumer;


# virtual methods
.method public abstract getNoLocal()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract getTopic()Ljavax/jms/Topic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method
