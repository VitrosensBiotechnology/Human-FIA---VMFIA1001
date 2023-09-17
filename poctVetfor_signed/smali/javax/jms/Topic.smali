.class public interface abstract Ljavax/jms/Topic;
.super Ljava/lang/Object;
.source "Topic.java"

# interfaces
.implements Ljavax/jms/Destination;


# virtual methods
.method public abstract getTopicName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract toString()Ljava/lang/String;
.end method
