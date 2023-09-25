.class public interface abstract Ljavax/jms/XAConnection;
.super Ljava/lang/Object;
.source "XAConnection.java"

# interfaces
.implements Ljavax/jms/Connection;


# virtual methods
.method public abstract createSession(ZI)Ljavax/jms/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract createXASession()Ljavax/jms/XASession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method
