.class public Ljavax/jms/JMSException;
.super Ljava/lang/Exception;
.source "JMSException.java"


# instance fields
.field private errorCode:Ljava/lang/String;

.field private linkedException:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 65
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/jms/JMSException;->errorCode:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Ljavax/jms/JMSException;->linkedException:Ljava/lang/Exception;

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 54
    iput-object p2, p0, Ljavax/jms/JMSException;->errorCode:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/jms/JMSException;->linkedException:Ljava/lang/Exception;

    .line 56
    return-void
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Ljavax/jms/JMSException;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkedException()Ljava/lang/Exception;
    .locals 1

    .line 86
    iget-object v0, p0, Ljavax/jms/JMSException;->linkedException:Ljava/lang/Exception;

    return-object v0
.end method

.method public declared-synchronized setLinkedException(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "ex"    # Ljava/lang/Exception;

    monitor-enter p0

    .line 96
    :try_start_0
    iput-object p1, p0, Ljavax/jms/JMSException;->linkedException:Ljava/lang/Exception;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p0

    return-void

    .line 95
    .end local p1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
