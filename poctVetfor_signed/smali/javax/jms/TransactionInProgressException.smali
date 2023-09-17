.class public Ljavax/jms/TransactionInProgressException;
.super Ljavax/jms/JMSException;
.source "TransactionInProgressException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 47
    invoke-direct {p0, p1}, Ljavax/jms/JMSException;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0, p1, p2}, Ljavax/jms/JMSException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method
