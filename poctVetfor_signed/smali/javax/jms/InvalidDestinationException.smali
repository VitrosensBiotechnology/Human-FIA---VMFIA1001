.class public Ljavax/jms/InvalidDestinationException;
.super Ljavax/jms/JMSException;
.source "InvalidDestinationException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0, p1}, Ljavax/jms/JMSException;-><init>(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0, p1, p2}, Ljavax/jms/JMSException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method
