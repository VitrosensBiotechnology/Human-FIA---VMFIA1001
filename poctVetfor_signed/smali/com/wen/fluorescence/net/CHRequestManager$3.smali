.class final Lcom/wen/fluorescence/net/CHRequestManager$3;
.super Ljava/lang/Object;
.source "CHRequestManager.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/net/CHRequestManager;->getBinFile(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/net/CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$barCode:Ljava/lang/String;

.field final synthetic val$callBack:Lcom/wen/fluorescence/net/CallBack;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/net/CallBack;Ljava/lang/String;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/wen/fluorescence/net/CHRequestManager$3;->val$callBack:Lcom/wen/fluorescence/net/CallBack;

    iput-object p2, p0, Lcom/wen/fluorescence/net/CHRequestManager$3;->val$barCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .line 322
    invoke-static {}, Lcom/wen/fluorescence/net/CHRequestManager;->access$000()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/wen/fluorescence/net/CHRequestManager$3$1;

    invoke-direct {v1, p0, p2}, Lcom/wen/fluorescence/net/CHRequestManager$3$1;-><init>(Lcom/wen/fluorescence/net/CHRequestManager$3;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 329
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 7
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    .line 335
    .local v0, "len":J
    const-wide/16 v2, 0x7d0

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 336
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    .line 337
    .local v2, "json":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 339
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "code"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 340
    invoke-static {}, Lcom/wen/fluorescence/net/CHRequestManager;->access$000()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/wen/fluorescence/net/CHRequestManager$3$2;

    invoke-direct {v5, p0, v2}, Lcom/wen/fluorescence/net/CHRequestManager$3$2;-><init>(Lcom/wen/fluorescence/net/CHRequestManager$3;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 347
    .end local v2    # "json":Ljava/lang/String;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    goto :goto_2

    .line 348
    :cond_1
    const/4 v2, 0x0

    .line 349
    .local v2, "sink":Lokio/Sink;
    const/4 v3, 0x0

    .line 351
    .local v3, "bufferedSink":Lokio/BufferedSink;
    :try_start_1
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/sdcard/IDChips/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/wen/fluorescence/net/CHRequestManager$3;->val$barCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".bin"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 352
    .local v4, "file":Ljava/io/File;
    invoke-static {v4}, Lokio/Okio;->sink(Ljava/io/File;)Lokio/Sink;

    move-result-object v5

    move-object v2, v5

    .line 353
    invoke-static {v2}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v5

    move-object v3, v5

    .line 354
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v5

    invoke-interface {v3, v5}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J

    .line 356
    invoke-interface {v3}, Lokio/BufferedSink;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    .end local v4    # "file":Ljava/io/File;
    if-eqz v3, :cond_2

    .line 361
    :goto_0
    :try_start_2
    invoke-interface {v3}, Lokio/BufferedSink;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 360
    :catchall_0
    move-exception v4

    goto :goto_3

    .line 357
    :catch_0
    move-exception v4

    .line 358
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v4}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 360
    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_2

    goto :goto_0

    .line 366
    :cond_2
    :goto_1
    :try_start_4
    invoke-static {}, Lcom/wen/fluorescence/net/CHRequestManager;->access$000()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/wen/fluorescence/net/CHRequestManager$3$3;

    invoke-direct {v5, p0}, Lcom/wen/fluorescence/net/CHRequestManager$3$3;-><init>(Lcom/wen/fluorescence/net/CHRequestManager$3;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 374
    .end local v0    # "len":J
    .end local v2    # "sink":Lokio/Sink;
    .end local v3    # "bufferedSink":Lokio/BufferedSink;
    :goto_2
    goto :goto_4

    .line 360
    .restart local v0    # "len":J
    .restart local v2    # "sink":Lokio/Sink;
    .restart local v3    # "bufferedSink":Lokio/BufferedSink;
    :goto_3
    if-eqz v3, :cond_3

    .line 361
    invoke-interface {v3}, Lokio/BufferedSink;->close()V

    :cond_3
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 373
    .end local v0    # "len":J
    .end local v2    # "sink":Lokio/Sink;
    .end local v3    # "bufferedSink":Lokio/BufferedSink;
    :catch_1
    move-exception v0

    .line 375
    :goto_4
    return-void
.end method
