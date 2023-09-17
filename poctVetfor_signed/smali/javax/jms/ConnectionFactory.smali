.class public interface abstract Ljavax/jms/ConnectionFactory;
.super Ljava/lang/Object;
.source "ConnectionFactory.java"


# virtual methods
.method public abstract createConnection()Ljavax/jms/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method

.method public abstract createConnection(Ljava/lang/String;Ljava/lang/String;)Ljavax/jms/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation
.end method
