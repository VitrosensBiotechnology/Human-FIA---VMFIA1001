.class public Ljavax/jms/ResourceAllocationException;
.super Ljavax/jms/JMSException;
.source "ResourceAllocationException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Ljavax/jms/JMSException;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1, p2}, Ljavax/jms/JMSException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method
