.class public interface abstract Ljavax/jms/QueueReceiver;
.super Ljava/lang/Object;
.source "QueueReceiver.java"

# interfaces
.implements Ljavax/jms/MessageConsumer;


# virtual methods
.method public abstract getQueue()Ljavax/jms/Queue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method
