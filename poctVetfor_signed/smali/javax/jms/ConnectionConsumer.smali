.class public interface abstract Ljavax/jms/ConnectionConsumer;
.super Ljava/lang/Object;
.source "ConnectionConsumer.java"


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract getServerSessionPool()Ljavax/jms/ServerSessionPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method
