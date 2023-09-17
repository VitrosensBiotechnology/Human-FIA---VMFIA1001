.class public Ljavax/jms/MessageFormatException;
.super Ljavax/jms/JMSException;
.source "MessageFormatException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0, p1}, Ljavax/jms/JMSException;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1, p2}, Ljavax/jms/JMSException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method
