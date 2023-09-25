.class public Lcom/wen/fluorescence/lis/TCPTronHoClient;
.super Ljava/lang/Object;
.source "TCPTronHoClient.java"


# instance fields
.field private ConnectTimeOut:I

.field private handler:Landroid/os/Handler;

.field private in:Ljava/io/InputStream;

.field private isRun:Ljava/lang/Boolean;

.field private li_Port:I

.field private ls_IP:Ljava/lang/String;

.field private mThread:Ljava/lang/Thread;

.field private out:Ljava/io/OutputStream;

.field private socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;I)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "IP"    # Ljava/lang/String;
    .param p3, "Port"    # I

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/wen/fluorescence/lis/TCPTronHoClient;->ConnectTimeOut:I

    .line 24
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/wen/fluorescence/lis/TCPTronHoClient;->isRun:Ljava/lang/Boolean;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wen/fluorescence/lis/TCPTronHoClient;->mThread:Ljava/lang/Thread;

    .line 32
    iput-object p2, p0, Lcom/wen/fluorescence/lis/TCPTronHoClient;->ls_IP:Ljava/lang/String;

    .line 33
    iput p3, p0, Lcom/wen/fluorescence/lis/TCPTronHoClient;->li_Port:I

    .line 34
    if-eqz p1, :cond_0

    .line 35
    iput-object p1, p0, Lcom/wen/fluorescence/lis/TCPTronHoClient;->handler:Landroid/os/Handler;

    .line 36
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/wen/fluorescence/lis/TCPTronHoClient;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/lis/TCPTronHoClient;

    .line 15
    iget-object v0, p0, Lcom/wen/fluorescence/lis/TCPTronHoClient;->isRun:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$002(Lcom/wen/fluorescence/lis/TCPTronHoClient;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/lis/TCPTronHoClient;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 15
    iput-object p1, p0, Lcom/wen/fluorescence/lis/TCPTronHoClient;->isRun:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$100(Lcom/wen/fluorescence/lis/TCPTronHoClient;)Z
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/lis/TCPTronHoClient;

    .line 15
    invoke-direct {p0}, Lcom/wen/fluorescence/lis/TCPTronHoClient;->isServerStart()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/wen/fluorescence/lis/TCPTronHoClient;)Ljava/io/InputStream;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/lis/TCPTronHoClient;

    .line 15
    iget-object v0, p0, Lcom/wen/fluorescence/lis/TCPTronHoClient;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$300(Lcom/wen/fluorescence/lis/TCPTronHoClient;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/lis/TCPTronHoClient;

    .line 15
    iget-object v0, p0, Lcom/wen/fluorescence/lis/TCPTronHoClient;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private isServerStart()Z
    .locals 2

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/wen/fluorescence/lis/TCPTronHoClient;->socket:Ljava/net/Socket;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/net/Socket;->sendUrgentData(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    const/4 v0, 0x1

    return v0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 139
    invoke-virtual {p0}, Lcom/wen/fluorescence/lis/TCPTronHoClient;->close()V

    .line 140
    const/4 v1, 0x0

    return v1
.end method

.method private startReadDataThread()V
    .locals 1

    .line 67
    new-instance v0, Lcom/wen/fluorescence/lis/TCPTronHoClient$1;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/lis/TCPTronHoClient$1;-><init>(Lcom/wen/fluorescence/lis/TCPTronHoClient;)V

    iput-object v0, p0, Lcom/wen/fluorescence/lis/TCPTronHoClient;->mThread:Ljava/lang/Thread;

    .line 106
    iget-object v0, p0, Lcom/wen/fluorescence/lis/TCPTronHoClient;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 107
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 145
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/wen/fluorescence/lis/TCPTronHoClient;->isRun:Ljava/lang/Boolean;

    .line 147
    const/16 v0, 0x704

    :try_start_0
    iget-object v1, p0, Lcom/wen/fluorescence/lis/TCPTronHoClient;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wen/fluorescence/lis/TCPTronHoClient;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/wen/fluorescence/lis/TCPTronHoClient;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/wen/fluorescence/lis/TCPTronHoClient;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 154
    :goto_0
    iget-object v1, p0, Lcom/wen/fluorescence/lis/TCPTronHoClient;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 153
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 150
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    .end local v1    # "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/wen/fluorescence/lis/TCPTronHoClient;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 157
    :cond_1
    :goto_1
    return-void

    .line 153
    :goto_2
    iget-object v2, p0, Lcom/wen/fluorescence/lis/TCPTronHoClient;->handler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 154
    iget-object v2, p0, Lcom/wen/fluorescence/lis/TCPTronHoClient;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    throw v1
.end method

.method public connect()V
    .locals 3

    .line 44
    :try_start_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/lis/TCPTronHoClient;->socket:Ljava/net/Socket;

    .line 45
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lcom/wen/fluorescence/lis/TCPTronHoClient;->ls_IP:Ljava/lang/String;

    iget v2, p0, Lcom/wen/fluorescence/lis/TCPTronHoClient;->li_Port:I

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 46
    .local v0, "socketAddress":Ljava/net/SocketAddress;
    iget-object v1, p0, Lcom/wen/fluorescence/lis/TCPTronHoClient;->socket:Ljava/net/Socket;

    iget v2, p0, Lcom/wen/fluorescence/lis/TCPTronHoClient;->ConnectTimeOut:I

    invoke-virtual {v1, v0, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 47
    iget-object v1, p0, Lcom/wen/fluorescence/lis/TCPTronHoClient;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/wen/fluorescence/lis/TCPTronHoClient;->in:Ljava/io/InputStream;

    .line 48
    iget-object v1, p0, Lcom/wen/fluorescence/lis/TCPTronHoClient;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/wen/fluorescence/lis/TCPTronHoClient;->out:Ljava/io/OutputStream;

    .line 49
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/wen/fluorescence/lis/TCPTronHoClient;->isRun:Ljava/lang/Boolean;

    .line 50
    invoke-direct {p0}, Lcom/wen/fluorescence/lis/TCPTronHoClient;->startReadDataThread()V

    .line 51
    const-string v1, "Lis"

    const-string v2, "LIS Server connect success !"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v1, p0, Lcom/wen/fluorescence/lis/TCPTronHoClient;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/wen/fluorescence/lis/TCPTronHoClient;->handler:Landroid/os/Handler;

    const/16 v2, 0x703

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v0    # "socketAddress":Ljava/net/SocketAddress;
    :cond_0
    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 57
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/wen/fluorescence/lis/TCPTronHoClient;->isRun:Ljava/lang/Boolean;

    .line 58
    iget-object v1, p0, Lcom/wen/fluorescence/lis/TCPTronHoClient;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 59
    iget-object v1, p0, Lcom/wen/fluorescence/lis/TCPTronHoClient;->handler:Landroid/os/Handler;

    const/16 v2, 0x704

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 61
    :cond_1
    const-string v1, "Lis"

    const-string v2, "LIS Server connect failed !"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public getRun()Ljava/lang/Boolean;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/wen/fluorescence/lis/TCPTronHoClient;->isRun:Ljava/lang/Boolean;

    return-object v0
.end method

.method public sendBeep()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/wen/fluorescence/lis/TCPTronHoClient;->isRun:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    return-void

    .line 129
    :cond_0
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .line 39
    iput-object p1, p0, Lcom/wen/fluorescence/lis/TCPTronHoClient;->handler:Landroid/os/Handler;

    .line 40
    return-void
.end method

.method public writeData([B)V
    .locals 1
    .param p1, "data"    # [B

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/wen/fluorescence/lis/TCPTronHoClient;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 116
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
