.class public Ljavax/jms/IllegalStateException;
.super Ljavax/jms/JMSException;
.source "IllegalStateException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0, p1}, Ljavax/jms/JMSException;-><init>(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0, p1, p2}, Ljavax/jms/JMSException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method
