.class public Lokhttp3/internal/http2/Http2Connection$Builder;
.super Ljava/lang/Object;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field client:Z

.field connectionName:Ljava/lang/String;

.field listener:Lokhttp3/internal/http2/Http2Connection$Listener;

.field pingIntervalMillis:I

.field pushObserver:Lokhttp3/internal/http2/PushObserver;

.field sink:Lokio/BufferedSink;

.field socket:Ljava/net/Socket;

.field source:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "client"    # Z

    .line 540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    sget-object v0, Lokhttp3/internal/http2/Http2Connection$Listener;->REFUSE_INCOMING_STREAMS:Lokhttp3/internal/http2/Http2Connection$Listener;

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Connection$Builder;->listener:Lokhttp3/internal/http2/Http2Connection$Listener;

    .line 532
    sget-object v0, Lokhttp3/internal/http2/PushObserver;->CANCEL:Lokhttp3/internal/http2/PushObserver;

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Connection$Builder;->pushObserver:Lokhttp3/internal/http2/PushObserver;

    .line 541
    iput-boolean p1, p0, Lokhttp3/internal/http2/Http2Connection$Builder;->client:Z

    .line 542
    return-void
.end method


# virtual methods
.method public build()Lokhttp3/internal/http2/Http2Connection;
    .locals 1

    .line 578
    new-instance v0, Lokhttp3/internal/http2/Http2Connection;

    invoke-direct {v0, p0}, Lokhttp3/internal/http2/Http2Connection;-><init>(Lokhttp3/internal/http2/Http2Connection$Builder;)V

    return-object v0
.end method

.method public listener(Lokhttp3/internal/http2/Http2Connection$Listener;)Lokhttp3/internal/http2/Http2Connection$Builder;
    .locals 0
    .param p1, "listener"    # Lokhttp3/internal/http2/Http2Connection$Listener;

    .line 563
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$Builder;->listener:Lokhttp3/internal/http2/Http2Connection$Listener;

    .line 564
    return-object p0
.end method

.method public pingIntervalMillis(I)Lokhttp3/internal/http2/Http2Connection$Builder;
    .locals 0
    .param p1, "pingIntervalMillis"    # I

    .line 573
    iput p1, p0, Lokhttp3/internal/http2/Http2Connection$Builder;->pingIntervalMillis:I

    .line 574
    return-object p0
.end method

.method public pushObserver(Lokhttp3/internal/http2/PushObserver;)Lokhttp3/internal/http2/Http2Connection$Builder;
    .locals 0
    .param p1, "pushObserver"    # Lokhttp3/internal/http2/PushObserver;

    .line 568
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$Builder;->pushObserver:Lokhttp3/internal/http2/PushObserver;

    .line 569
    return-object p0
.end method

.method public socket(Ljava/net/Socket;)Lokhttp3/internal/http2/Http2Connection$Builder;
    .locals 4
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 545
    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    .line 546
    .local v0, "remoteSocketAddress":Ljava/net/SocketAddress;
    instance-of v1, v0, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_0

    .line 547
    move-object v1, v0

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 548
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 549
    .local v1, "connectionName":Ljava/lang/String;
    :goto_0
    nop

    .line 550
    invoke-static {p1}, Lokio/Okio;->source(Ljava/net/Socket;)Lokio/Source;

    move-result-object v2

    invoke-static {v2}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v2

    invoke-static {p1}, Lokio/Okio;->sink(Ljava/net/Socket;)Lokio/Sink;

    move-result-object v3

    invoke-static {v3}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v3

    .line 549
    invoke-virtual {p0, p1, v1, v2, v3}, Lokhttp3/internal/http2/Http2Connection$Builder;->socket(Ljava/net/Socket;Ljava/lang/String;Lokio/BufferedSource;Lokio/BufferedSink;)Lokhttp3/internal/http2/Http2Connection$Builder;

    move-result-object v2

    return-object v2
.end method

.method public socket(Ljava/net/Socket;Ljava/lang/String;Lokio/BufferedSource;Lokio/BufferedSink;)Lokhttp3/internal/http2/Http2Connection$Builder;
    .locals 0
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "connectionName"    # Ljava/lang/String;
    .param p3, "source"    # Lokio/BufferedSource;
    .param p4, "sink"    # Lokio/BufferedSink;

    .line 555
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$Builder;->socket:Ljava/net/Socket;

    .line 556
    iput-object p2, p0, Lokhttp3/internal/http2/Http2Connection$Builder;->connectionName:Ljava/lang/String;

    .line 557
    iput-object p3, p0, Lokhttp3/internal/http2/Http2Connection$Builder;->source:Lokio/BufferedSource;

    .line 558
    iput-object p4, p0, Lokhttp3/internal/http2/Http2Connection$Builder;->sink:Lokio/BufferedSink;

    .line 559
    return-object p0
.end method
