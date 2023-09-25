.class public interface abstract Ljavax/jms/TextMessage;
.super Ljava/lang/Object;
.source "TextMessage.java"

# interfaces
.implements Ljavax/jms/Message;


# virtual methods
.method public abstract getText()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract setText(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method
