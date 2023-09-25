.class final Lcom/wen/fluorescence/net/RequestManager$3;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/net/RequestManager;->downLoadBinFromCloudPlatFormDXia(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wen/fluorescence/net/CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callBack:Lcom/wen/fluorescence/net/CallBack;

.field final synthetic val$fileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/net/CallBack;Ljava/lang/String;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/wen/fluorescence/net/RequestManager$3;->val$callBack:Lcom/wen/fluorescence/net/CallBack;

    iput-object p2, p0, Lcom/wen/fluorescence/net/RequestManager$3;->val$fileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .line 189
    invoke-static {}, Lcom/wen/fluorescence/net/RequestManager;->access$000()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/wen/fluorescence/net/RequestManager$3$1;

    invoke-direct {v1, p0, p2}, Lcom/wen/fluorescence/net/RequestManager$3$1;-><init>(Lcom/wen/fluorescence/net/RequestManager$3;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 196
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 7
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;

    .line 200
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/wen/fluorescence/util/IDCardUtil;->localPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wen/fluorescence/net/RequestManager$3;->val$fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    .local v0, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v1

    .line 205
    .local v1, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 206
    .local v2, "len":I
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 209
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 210
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 211
    .local v3, "fos":Ljava/io/FileOutputStream;
    const v4, 0xc800

    new-array v4, v4, [B

    .line 212
    .local v4, "buf":[B
    :goto_0
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v2, v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 213
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 215
    :cond_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 217
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 218
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "len":I
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "buf":[B
    goto :goto_1

    .line 222
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 219
    :catch_0
    move-exception v1

    .line 220
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v1, p0, Lcom/wen/fluorescence/net/RequestManager$3;->val$callBack:Lcom/wen/fluorescence/net/CallBack;

    invoke-interface {v1, v0}, Lcom/wen/fluorescence/net/CallBack;->onSuccess(Ljava/lang/Object;)V

    .line 223
    nop

    .line 224
    return-void

    .line 222
    :goto_2
    iget-object v2, p0, Lcom/wen/fluorescence/net/RequestManager$3;->val$callBack:Lcom/wen/fluorescence/net/CallBack;

    invoke-interface {v2, v0}, Lcom/wen/fluorescence/net/CallBack;->onSuccess(Ljava/lang/Object;)V

    throw v1
.end method
