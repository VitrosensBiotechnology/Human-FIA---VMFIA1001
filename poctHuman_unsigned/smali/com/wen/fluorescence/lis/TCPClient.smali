.class public Lcom/wen/fluorescence/lis/TCPClient;
.super Ljava/lang/Object;
.source "TCPClient.java"


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

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/wen/fluorescence/lis/TCPClient;->ConnectTimeOut:I

    .line 21
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/wen/fluorescence/lis/TCPClient;->isRun:Ljava/lang/Boolean;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wen/fluorescence/lis/TCPClient;->mThread:Ljava/lang/Thread;

    .line 29
    iput-object p2, p0, Lcom/wen/fluorescence/lis/TCPClient;->ls_IP:Ljava/lang/String;

    .line 30
    iput p3, p0, Lcom/wen/fluorescence/lis/TCPClient;->li_Port:I

    .line 31
    if-eqz p1, :cond_0

    .line 32
    iput-object p1, p0, Lcom/wen/fluorescence/lis/TCPClient;->handler:Landroid/os/Handler;

    .line 33
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/wen/fluorescence/lis/TCPClient;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/lis/TCPClient;

    .line 13
    iget-object v0, p0, Lcom/wen/fluorescence/lis/TCPClient;->isRun:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$002(Lcom/wen/fluorescence/lis/TCPClient;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/lis/TCPClient;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 13
    iput-object p1, p0, Lcom/wen/fluorescence/lis/TCPClient;->isRun:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$100(Lcom/wen/fluorescence/lis/TCPClient;)Z
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/lis/TCPClient;

    .line 13
    invoke-direct {p0}, Lcom/wen/fluorescence/lis/TCPClient;->isServerStart()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/wen/fluorescence/lis/TCPClient;)Ljava/io/InputStream;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/lis/TCPClient;

    .line 13
    iget-object v0, p0, Lcom/wen/fluorescence/lis/TCPClient;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$300(Lcom/wen/fluorescence/lis/TCPClient;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/lis/TCPClient;

    .line 13
    iget-object v0, p0, Lcom/wen/fluorescence/lis/TCPClient;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private isServerStart()Z
    .locals 1

    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method private startReadDataThread()V
    .locals 1

    .line 59
    new-instance v0, Lcom/wen/fluorescence/lis/TCPClient$1;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/lis/TCPClient$1;-><init>(Lcom/wen/fluorescence/lis/TCPClient;)V

    iput-object v0, p0, Lcom/wen/fluorescence/lis/TCPClient;->mThread:Ljava/lang/Thread;

    .line 96
    iget-object v0, p0, Lcom/wen/fluorescence/lis/TCPClient;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 97
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 121
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/wen/fluorescence/lis/TCPClient;->isRun:Ljava/lang/Boolean;

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/wen/fluorescence/lis/TCPClient;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wen/fluorescence/lis/TCPClient;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/wen/fluorescence/lis/TCPClient;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_0
    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 129
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public connect()V
    .locals 3

    .line 42
    :try_start_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/lis/TCPClient;->socket:Ljava/net/Socket;

    .line 43
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lcom/wen/fluorescence/lis/TCPClient;->ls_IP:Ljava/lang/String;

    iget v2, p0, Lcom/wen/fluorescence/lis/TCPClient;->li_Port:I

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 44
    .local v0, "socketAddress":Ljava/net/SocketAddress;
    iget-object v1, p0, Lcom/wen/fluorescence/lis/TCPClient;->socket:Ljava/net/Socket;

    iget v2, p0, Lcom/wen/fluorescence/lis/TCPClient;->ConnectTimeOut:I

    invoke-virtual {v1, v0, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 45
    iget-object v1, p0, Lcom/wen/fluorescence/lis/TCPClient;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/wen/fluorescence/lis/TCPClient;->in:Ljava/io/InputStream;

    .line 46
    iget-object v1, p0, Lcom/wen/fluorescence/lis/TCPClient;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/wen/fluorescence/lis/TCPClient;->out:Ljava/io/OutputStream;

    .line 47
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/wen/fluorescence/lis/TCPClient;->isRun:Ljava/lang/Boolean;

    .line 48
    invoke-direct {p0}, Lcom/wen/fluorescence/lis/TCPClient;->startReadDataThread()V

    .line 49
    const-string v1, "Lis"

    const-string v2, "LIS Server connect success !"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v0    # "socketAddress":Ljava/net/SocketAddress;
    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 52
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/wen/fluorescence/lis/TCPClient;->isRun:Ljava/lang/Boolean;

    .line 53
    const-string v1, "Lis"

    const-string v2, "LIS Server connect failed !"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public getRun()Ljava/lang/Boolean;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/wen/fluorescence/lis/TCPClient;->isRun:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .line 37
    iput-object p1, p0, Lcom/wen/fluorescence/lis/TCPClient;->handler:Landroid/os/Handler;

    .line 38
    return-void
.end method

.method public writeData([B)V
    .locals 1
    .param p1, "data"    # [B

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/wen/fluorescence/lis/TCPClient;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 105
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
