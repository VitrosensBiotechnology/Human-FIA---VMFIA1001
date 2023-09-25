.class public interface abstract Ljavax/jms/XASession;
.super Ljava/lang/Object;
.source "XASession.java"

# interfaces
.implements Ljavax/jms/Session;


# virtual methods
.method public abstract commit()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract getSession()Ljavax/jms/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract getTransacted()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract getXAResource()Ljavax/transaction/xa/XAResource;
.end method

.method public abstract rollback()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method
