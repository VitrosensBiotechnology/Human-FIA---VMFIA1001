.class public interface abstract Ljavax/jms/Queue;
.super Ljava/lang/Object;
.source "Queue.java"

# interfaces
.implements Ljavax/jms/Destination;


# virtual methods
.method public abstract getQueueName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract toString()Ljava/lang/String;
.end method
