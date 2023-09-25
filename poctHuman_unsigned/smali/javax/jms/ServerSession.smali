.class public interface abstract Ljavax/jms/ServerSession;
.super Ljava/lang/Object;
.source "ServerSession.java"


# virtual methods
.method public abstract getSession()Ljavax/jms/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method
