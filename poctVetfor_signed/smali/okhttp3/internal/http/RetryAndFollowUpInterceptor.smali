.class public final Lokhttp3/internal/http/RetryAndFollowUpInterceptor;
.super Ljava/lang/Object;
.source "RetryAndFollowUpInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field private static final MAX_FOLLOW_UPS:I = 0x14


# instance fields
.field private final client:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 0
    .param p1, "client"    # Lokhttp3/OkHttpClient;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    .line 69
    return-void
.end method

.method private followUpRequest(Lokhttp3/Response;Lokhttp3/Route;)Lokhttp3/Request;
    .locals 9
    .param p1, "userResponse"    # Lokhttp3/Response;
    .param p2, "route"    # Lokhttp3/Route;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 216
    :cond_0
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v0

    .line 218
    .local v0, "responseCode":I
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, "method":Ljava/lang/String;
    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 325
    return-object v2

    .line 311
    :sswitch_0
    invoke-virtual {p1}, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 312
    invoke-virtual {p1}, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Response;->code()I

    move-result v3

    const/16 v4, 0x1f7

    if-ne v3, v4, :cond_1

    .line 314
    return-object v2

    .line 317
    :cond_1
    const v3, 0x7fffffff

    invoke-direct {p0, p1, v3}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->retryAfter(Lokhttp3/Response;I)I

    move-result v3

    if-nez v3, :cond_2

    .line 319
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v2

    return-object v2

    .line 322
    :cond_2
    return-object v2

    .line 288
    :sswitch_1
    iget-object v3, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v3}, Lokhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v3

    if-nez v3, :cond_3

    .line 290
    return-object v2

    .line 293
    :cond_3
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v3

    .line 294
    .local v3, "requestBody":Lokhttp3/RequestBody;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lokhttp3/RequestBody;->isOneShot()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 295
    return-object v2

    .line 298
    :cond_4
    invoke-virtual {p1}, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 299
    invoke-virtual {p1}, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Response;->code()I

    move-result v4

    const/16 v5, 0x198

    if-ne v4, v5, :cond_5

    .line 301
    return-object v2

    .line 304
    :cond_5
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->retryAfter(Lokhttp3/Response;I)I

    move-result v4

    if-lez v4, :cond_6

    .line 305
    return-object v2

    .line 308
    :cond_6
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v2

    return-object v2

    .line 221
    .end local v3    # "requestBody":Lokhttp3/RequestBody;
    :sswitch_2
    if-eqz p2, :cond_7

    .line 222
    invoke-virtual {p2}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v2

    goto :goto_0

    .line 223
    :cond_7
    iget-object v2, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v2

    .line 224
    .local v2, "selectedProxy":Ljava/net/Proxy;
    :goto_0
    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v3, v4, :cond_8

    .line 225
    new-instance v3, Ljava/net/ProtocolException;

    const-string v4, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 227
    :cond_8
    iget-object v3, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v3}, Lokhttp3/OkHttpClient;->proxyAuthenticator()Lokhttp3/Authenticator;

    move-result-object v3

    invoke-interface {v3, p2, p1}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object v3

    return-object v3

    .line 230
    .end local v2    # "selectedProxy":Ljava/net/Proxy;
    :sswitch_3
    iget-object v2, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->authenticator()Lokhttp3/Authenticator;

    move-result-object v2

    invoke-interface {v2, p2, p1}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object v2

    return-object v2

    .line 236
    :sswitch_4
    const-string v3, "GET"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "HEAD"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 237
    return-object v2

    .line 245
    :cond_9
    :sswitch_5
    iget-object v3, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v3}, Lokhttp3/OkHttpClient;->followRedirects()Z

    move-result v3

    if-nez v3, :cond_a

    return-object v2

    .line 247
    :cond_a
    const-string v3, "Location"

    invoke-virtual {p1, v3}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 248
    .local v3, "location":Ljava/lang/String;
    if-nez v3, :cond_b

    return-object v2

    .line 249
    :cond_b
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4, v3}, Lokhttp3/HttpUrl;->resolve(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v4

    .line 252
    .local v4, "url":Lokhttp3/HttpUrl;
    if-nez v4, :cond_c

    return-object v2

    .line 255
    :cond_c
    invoke-virtual {v4}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 256
    .local v5, "sameScheme":Z
    if-nez v5, :cond_d

    iget-object v6, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v6}, Lokhttp3/OkHttpClient;->followSslRedirects()Z

    move-result v6

    if-nez v6, :cond_d

    return-object v2

    .line 259
    :cond_d
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v6

    .line 260
    .local v6, "requestBuilder":Lokhttp3/Request$Builder;
    invoke-static {v1}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 261
    invoke-static {v1}, Lokhttp3/internal/http/HttpMethod;->redirectsWithBody(Ljava/lang/String;)Z

    move-result v7

    .line 262
    .local v7, "maintainBody":Z
    invoke-static {v1}, Lokhttp3/internal/http/HttpMethod;->redirectsToGet(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 263
    const-string v8, "GET"

    invoke-virtual {v6, v8, v2}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_1

    .line 265
    :cond_e
    if-eqz v7, :cond_f

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v2

    nop

    .line 266
    .local v2, "requestBody":Lokhttp3/RequestBody;
    :cond_f
    invoke-virtual {v6, v1, v2}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 268
    .end local v2    # "requestBody":Lokhttp3/RequestBody;
    :goto_1
    if-nez v7, :cond_10

    .line 269
    const-string v2, "Transfer-Encoding"

    invoke-virtual {v6, v2}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 270
    const-string v2, "Content-Length"

    invoke-virtual {v6, v2}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 271
    const-string v2, "Content-Type"

    invoke-virtual {v6, v2}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 278
    .end local v7    # "maintainBody":Z
    :cond_10
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-static {v2, v4}, Lokhttp3/internal/Util;->sameConnection(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 279
    const-string v2, "Authorization"

    invoke-virtual {v6, v2}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 282
    :cond_11
    invoke-virtual {v6, v4}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    return-object v2

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_5
        0x12d -> :sswitch_5
        0x12e -> :sswitch_5
        0x12f -> :sswitch_5
        0x133 -> :sswitch_4
        0x134 -> :sswitch_4
        0x191 -> :sswitch_3
        0x197 -> :sswitch_2
        0x198 -> :sswitch_1
        0x1f7 -> :sswitch_0
    .end sparse-switch
.end method

.method private isRecoverable(Ljava/io/IOException;Z)Z
    .locals 3
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "requestSendStarted"    # Z

    .line 179
    instance-of v0, p1, Ljava/net/ProtocolException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 180
    return v1

    .line 185
    :cond_0
    instance-of v0, p1, Ljava/io/InterruptedIOException;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 186
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1

    .line 191
    :cond_2
    instance-of v0, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_3

    .line 194
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/security/cert/CertificateException;

    if-eqz v0, :cond_3

    .line 195
    return v1

    .line 198
    :cond_3
    instance-of v0, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v0, :cond_4

    .line 200
    return v1

    .line 206
    :cond_4
    return v2
.end method

.method private recover(Ljava/io/IOException;Lokhttp3/internal/connection/Transmitter;ZLokhttp3/Request;)Z
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "transmitter"    # Lokhttp3/internal/connection/Transmitter;
    .param p3, "requestSendStarted"    # Z
    .param p4, "userRequest"    # Lokhttp3/Request;

    .line 156
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 159
    :cond_0
    if-eqz p3, :cond_1

    invoke-direct {p0, p1, p4}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->requestIsOneShot(Ljava/io/IOException;Lokhttp3/Request;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 162
    :cond_1
    invoke-direct {p0, p1, p3}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->isRecoverable(Ljava/io/IOException;Z)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 165
    :cond_2
    invoke-virtual {p2}, Lokhttp3/internal/connection/Transmitter;->canRetry()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 168
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private requestIsOneShot(Ljava/io/IOException;Lokhttp3/Request;)Z
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "userRequest"    # Lokhttp3/Request;

    .line 172
    invoke-virtual {p2}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v0

    .line 173
    .local v0, "requestBody":Lokhttp3/RequestBody;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/RequestBody;->isOneShot()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    instance-of v1, p1, Ljava/io/FileNotFoundException;

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private retryAfter(Lokhttp3/Response;I)I
    .locals 2
    .param p1, "userResponse"    # Lokhttp3/Response;
    .param p2, "defaultDelay"    # I

    .line 330
    const-string v0, "Retry-After"

    invoke-virtual {p1, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "header":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 333
    return p2

    .line 338
    :cond_0
    const-string v1, "\\d+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 339
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 342
    :cond_1
    const v1, 0x7fffffff

    return v1
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 14
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 73
    .local v0, "request":Lokhttp3/Request;
    move-object v1, p1

    check-cast v1, Lokhttp3/internal/http/RealInterceptorChain;

    .line 74
    .local v1, "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    invoke-virtual {v1}, Lokhttp3/internal/http/RealInterceptorChain;->transmitter()Lokhttp3/internal/connection/Transmitter;

    move-result-object v2

    .line 76
    .local v2, "transmitter":Lokhttp3/internal/connection/Transmitter;
    const/4 v3, 0x0

    .line 77
    .local v3, "followUpCount":I
    const/4 v4, 0x0

    move v5, v3

    move-object v3, v0

    move-object v0, v4

    .line 79
    .local v0, "priorResponse":Lokhttp3/Response;
    .local v3, "request":Lokhttp3/Request;
    .local v5, "followUpCount":I
    :cond_0
    :goto_0
    invoke-virtual {v2, v3}, Lokhttp3/internal/connection/Transmitter;->prepareToConnect(Lokhttp3/Request;)V

    .line 81
    invoke-virtual {v2}, Lokhttp3/internal/connection/Transmitter;->isCanceled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 82
    new-instance v4, Ljava/io/IOException;

    const-string v6, "Canceled"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 86
    :cond_1
    const/4 v6, 0x0

    move v7, v6

    .line 88
    .local v7, "success":Z
    :try_start_0
    invoke-virtual {v1, v3, v2, v4}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;Lokhttp3/internal/connection/Transmitter;Lokhttp3/internal/connection/Exchange;)Lokhttp3/Response;

    move-result-object v8
    :try_end_0
    .catch Lokhttp3/internal/connection/RouteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v8

    .line 89
    .local v6, "response":Lokhttp3/Response;
    const/4 v7, 0x1

    .line 103
    if-nez v7, :cond_2

    .line 104
    invoke-virtual {v2}, Lokhttp3/internal/connection/Transmitter;->exchangeDoneDueToException()V

    .line 109
    :cond_2
    if-eqz v0, :cond_3

    .line 110
    invoke-virtual {v6}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v8

    .line 111
    invoke-virtual {v0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v9

    .line 112
    invoke-virtual {v9, v4}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v9

    .line 113
    invoke-virtual {v9}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v9

    .line 111
    invoke-virtual {v8, v9}, Lokhttp3/Response$Builder;->priorResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v8

    .line 114
    invoke-virtual {v8}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v6

    .line 117
    :cond_3
    sget-object v8, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    invoke-virtual {v8, v6}, Lokhttp3/internal/Internal;->exchange(Lokhttp3/Response;)Lokhttp3/internal/connection/Exchange;

    move-result-object v8

    .line 118
    .local v8, "exchange":Lokhttp3/internal/connection/Exchange;
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lokhttp3/internal/connection/Exchange;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v9

    goto :goto_1

    :cond_4
    move-object v9, v4

    .line 119
    .local v9, "route":Lokhttp3/Route;
    :goto_1
    invoke-direct {p0, v6, v9}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->followUpRequest(Lokhttp3/Response;Lokhttp3/Route;)Lokhttp3/Request;

    move-result-object v10

    .line 121
    .local v10, "followUp":Lokhttp3/Request;
    if-nez v10, :cond_6

    .line 122
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lokhttp3/internal/connection/Exchange;->isDuplex()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 123
    invoke-virtual {v2}, Lokhttp3/internal/connection/Transmitter;->timeoutEarlyExit()V

    .line 125
    :cond_5
    return-object v6

    .line 128
    :cond_6
    invoke-virtual {v10}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v11

    .line 129
    .local v11, "followUpBody":Lokhttp3/RequestBody;
    if-eqz v11, :cond_7

    invoke-virtual {v11}, Lokhttp3/RequestBody;->isOneShot()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 130
    return-object v6

    .line 133
    :cond_7
    invoke-virtual {v6}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v12

    invoke-static {v12}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 134
    invoke-virtual {v2}, Lokhttp3/internal/connection/Transmitter;->hasExchange()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 135
    invoke-virtual {v8}, Lokhttp3/internal/connection/Exchange;->detachWithViolence()V

    .line 138
    :cond_8
    add-int/lit8 v5, v5, 0x1

    const/16 v12, 0x14

    if-le v5, v12, :cond_9

    .line 139
    new-instance v4, Ljava/net/ProtocolException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Too many follow-up requests: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v12}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 142
    :cond_9
    move-object v3, v10

    .line 143
    move-object v0, v6

    .line 144
    .end local v6    # "response":Lokhttp3/Response;
    .end local v7    # "success":Z
    .end local v8    # "exchange":Lokhttp3/internal/connection/Exchange;
    .end local v9    # "route":Lokhttp3/Route;
    .end local v10    # "followUp":Lokhttp3/Request;
    .end local v11    # "followUpBody":Lokhttp3/RequestBody;
    goto/16 :goto_0

    .line 103
    .restart local v7    # "success":Z
    :catchall_0
    move-exception v4

    goto :goto_3

    .line 96
    :catch_0
    move-exception v8

    .line 98
    .local v8, "e":Ljava/io/IOException;
    :try_start_1
    instance-of v9, v8, Lokhttp3/internal/http2/ConnectionShutdownException;

    if-nez v9, :cond_a

    const/4 v6, 0x1

    nop

    .line 99
    .local v6, "requestSendStarted":Z
    :cond_a
    invoke-direct {p0, v8, v2, v6, v3}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;Lokhttp3/internal/connection/Transmitter;ZLokhttp3/Request;)Z

    move-result v9

    if-nez v9, :cond_b

    throw v8

    .line 103
    :cond_b
    if-nez v7, :cond_0

    goto :goto_2

    .line 90
    .end local v6    # "requestSendStarted":Z
    .end local v8    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v8

    .line 92
    .local v8, "e":Lokhttp3/internal/connection/RouteException;
    invoke-virtual {v8}, Lokhttp3/internal/connection/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v9

    invoke-direct {p0, v9, v2, v6, v3}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;Lokhttp3/internal/connection/Transmitter;ZLokhttp3/Request;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 93
    invoke-virtual {v8}, Lokhttp3/internal/connection/RouteException;->getFirstConnectException()Ljava/io/IOException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    :cond_c
    if-nez v7, :cond_0

    .line 104
    :goto_2
    invoke-virtual {v2}, Lokhttp3/internal/connection/Transmitter;->exchangeDoneDueToException()V

    goto/16 :goto_0

    .line 103
    .end local v8    # "e":Lokhttp3/internal/connection/RouteException;
    :goto_3
    if-nez v7, :cond_d

    .line 104
    invoke-virtual {v2}, Lokhttp3/internal/connection/Transmitter;->exchangeDoneDueToException()V

    :cond_d
    throw v4
.end method
