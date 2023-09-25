.class public interface abstract Ljavax/jms/ObjectMessage;
.super Ljava/lang/Object;
.source "ObjectMessage.java"

# interfaces
.implements Ljavax/jms/Message;


# virtual methods
.method public abstract getObject()Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract setObject(Ljava/io/Serializable;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method
