.class public Lcom/wen/fluorescence/lis/UDPClient;
.super Ljava/lang/Object;
.source "UDPClient.java"


# instance fields
.field private IP:Ljava/net/InetAddress;

.field private dSocket:Ljava/net/DatagramSocket;

.field private li_Port:I

.field private ls_IP:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/16 v0, 0x1f41

    iput v0, p0, Lcom/wen/fluorescence/lis/UDPClient;->li_Port:I

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wen/fluorescence/lis/UDPClient;->dSocket:Ljava/net/DatagramSocket;

    .line 18
    const-string v1, "192.168.0.88"

    iput-object v1, p0, Lcom/wen/fluorescence/lis/UDPClient;->ls_IP:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/wen/fluorescence/lis/UDPClient;->IP:Ljava/net/InetAddress;

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/16 v0, 0x1f41

    iput v0, p0, Lcom/wen/fluorescence/lis/UDPClient;->li_Port:I

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wen/fluorescence/lis/UDPClient;->dSocket:Ljava/net/DatagramSocket;

    .line 18
    const-string v1, "192.168.0.88"

    iput-object v1, p0, Lcom/wen/fluorescence/lis/UDPClient;->ls_IP:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/wen/fluorescence/lis/UDPClient;->IP:Ljava/net/InetAddress;

    .line 25
    iput-object p1, p0, Lcom/wen/fluorescence/lis/UDPClient;->ls_IP:Ljava/lang/String;

    .line 26
    iput p2, p0, Lcom/wen/fluorescence/lis/UDPClient;->li_Port:I

    .line 27
    return-void
.end method


# virtual methods
.method public CloseSocket()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/wen/fluorescence/lis/UDPClient;->dSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/wen/fluorescence/lis/UDPClient;->dSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 82
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wen/fluorescence/lis/UDPClient;->dSocket:Ljava/net/DatagramSocket;

    .line 83
    return-void
.end method

.method public getLi_Port()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/wen/fluorescence/lis/UDPClient;->li_Port:I

    return v0
.end method

.method public getLs_IP()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/wen/fluorescence/lis/UDPClient;->ls_IP:Ljava/lang/String;

    return-object v0
.end method

.method public openUDP()V
    .locals 1

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/wen/fluorescence/lis/UDPClient;->ls_IP:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/wen/fluorescence/lis/UDPClient;->IP:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/net/UnknownHostException;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 52
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :goto_0
    :try_start_1
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/lis/UDPClient;->dSocket:Ljava/net/DatagramSocket;
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    .line 55
    goto :goto_1

    .line 53
    :catch_1
    move-exception v0

    .line 54
    .local v0, "e":Ljava/net/SocketException;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 56
    .end local v0    # "e":Ljava/net/SocketException;
    :goto_1
    return-void
.end method

.method public sendData(Ljava/lang/String;)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;

    .line 60
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 61
    .local v0, "data":[B
    const/4 v1, 0x0

    .line 62
    .local v1, "dPacket":Ljava/net/DatagramPacket;
    new-instance v2, Ljava/net/DatagramPacket;

    array-length v3, v0

    iget-object v4, p0, Lcom/wen/fluorescence/lis/UDPClient;->IP:Ljava/net/InetAddress;

    iget v5, p0, Lcom/wen/fluorescence/lis/UDPClient;->li_Port:I

    invoke-direct {v2, v0, v3, v4, v5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    move-object v1, v2

    .line 63
    iget-object v2, p0, Lcom/wen/fluorescence/lis/UDPClient;->dSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v2, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v0    # "data":[B
    .end local v1    # "dPacket":Ljava/net/DatagramPacket;
    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public sendData([B)V
    .locals 5
    .param p1, "data"    # [B

    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "dPacket":Ljava/net/DatagramPacket;
    :try_start_0
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v2, p1

    iget-object v3, p0, Lcom/wen/fluorescence/lis/UDPClient;->IP:Ljava/net/InetAddress;

    iget v4, p0, Lcom/wen/fluorescence/lis/UDPClient;->li_Port:I

    invoke-direct {v1, p1, v2, v3, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    move-object v0, v1

    .line 73
    iget-object v1, p0, Lcom/wen/fluorescence/lis/UDPClient;->dSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v0    # "dPacket":Ljava/net/DatagramPacket;
    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 77
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setLi_Port(I)V
    .locals 0
    .param p1, "li_Port"    # I

    .line 34
    iput p1, p0, Lcom/wen/fluorescence/lis/UDPClient;->li_Port:I

    .line 35
    return-void
.end method

.method public setLs_IP(Ljava/lang/String;)V
    .locals 0
    .param p1, "ls_IP"    # Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/wen/fluorescence/lis/UDPClient;->ls_IP:Ljava/lang/String;

    .line 43
    return-void
.end method
