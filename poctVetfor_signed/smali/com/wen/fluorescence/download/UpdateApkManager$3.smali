.class Lcom/wen/fluorescence/download/UpdateApkManager$3;
.super Ljava/lang/Object;
.source "UpdateApkManager.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/download/UpdateApkManager;->downloadApk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/download/UpdateApkManager;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/download/UpdateApkManager;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/download/UpdateApkManager;

    .line 206
    iput-object p1, p0, Lcom/wen/fluorescence/download/UpdateApkManager$3;->this$0:Lcom/wen/fluorescence/download/UpdateApkManager;

    iput-object p2, p0, Lcom/wen/fluorescence/download/UpdateApkManager$3;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/wen/fluorescence/download/UpdateApkManager$3;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .line 209
    iget-object v0, p0, Lcom/wen/fluorescence/download/UpdateApkManager$3;->val$handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/wen/fluorescence/download/UpdateApkManager$3;->val$handler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 211
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/wen/fluorescence/download/UpdateApkManager$3;->val$handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 213
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 12
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/wen/fluorescence/download/UpdateApkManager$3;->val$filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    .local v0, "f":Ljava/io/File;
    const/4 v1, 0x0

    .line 219
    .local v1, "in":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 220
    .local v2, "fos":Ljava/io/FileOutputStream;
    const/high16 v3, 0x100000

    new-array v3, v3, [B

    .line 221
    .local v3, "buffer":[B
    const/4 v4, 0x0

    .line 223
    .local v4, "sum":I
    const/4 v5, 0x0

    move v6, v5

    .line 226
    .local v6, "progress":I
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v7

    move-object v1, v7

    .line 227
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v7

    .line 228
    .local v7, "length":J
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v9

    .line 229
    :cond_0
    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v9

    move v10, v9

    .line 229
    .local v10, "len":I
    const/4 v11, -0x1

    if-eq v9, v11, :cond_1

    .line 230
    invoke-virtual {v2, v3, v5, v10}, Ljava/io/FileOutputStream;->write([BII)V

    .line 231
    add-int/2addr v4, v10

    .line 232
    int-to-float v9, v4

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v9, v11

    long-to-float v11, v7

    div-float/2addr v9, v11

    const/high16 v11, 0x42c80000    # 100.0f

    mul-float/2addr v9, v11

    float-to-int v6, v9

    .line 233
    iget-object v9, p0, Lcom/wen/fluorescence/download/UpdateApkManager$3;->val$handler:Landroid/os/Handler;

    if-eqz v9, :cond_0

    .line 234
    iget-object v9, p0, Lcom/wen/fluorescence/download/UpdateApkManager$3;->val$handler:Landroid/os/Handler;

    const/4 v11, 0x5

    invoke-virtual {v9, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 235
    .local v9, "msg":Landroid/os/Message;
    iput v6, v9, Landroid/os/Message;->arg1:I

    .line 236
    iget-object v11, p0, Lcom/wen/fluorescence/download/UpdateApkManager$3;->val$handler:Landroid/os/Handler;

    invoke-virtual {v11, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 237
    .end local v9    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 240
    :cond_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 242
    iget-object v5, p0, Lcom/wen/fluorescence/download/UpdateApkManager$3;->val$handler:Landroid/os/Handler;

    if-eqz v5, :cond_2

    .line 243
    iget-object v5, p0, Lcom/wen/fluorescence/download/UpdateApkManager$3;->val$handler:Landroid/os/Handler;

    const/4 v9, 0x3

    invoke-virtual {v5, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 244
    .local v5, "msg":Landroid/os/Message;
    iget-object v9, p0, Lcom/wen/fluorescence/download/UpdateApkManager$3;->val$handler:Landroid/os/Handler;

    invoke-virtual {v9, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    .end local v5    # "msg":Landroid/os/Message;
    .end local v7    # "length":J
    :cond_2
    if-eqz v1, :cond_3

    .line 254
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 256
    :catch_0
    move-exception v5

    goto :goto_2

    .line 257
    :cond_3
    :goto_1
    nop

    .line 260
    :goto_2
    if-eqz v2, :cond_4

    .line 261
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 263
    :catch_1
    move-exception v5

    .line 265
    goto :goto_6

    .line 264
    :cond_4
    :goto_3
    goto :goto_6

    .line 252
    .end local v10    # "len":I
    :catchall_0
    move-exception v5

    goto :goto_7

    .line 246
    :catch_2
    move-exception v5

    .line 247
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v7, p0, Lcom/wen/fluorescence/download/UpdateApkManager$3;->val$handler:Landroid/os/Handler;

    if-eqz v7, :cond_5

    .line 248
    iget-object v7, p0, Lcom/wen/fluorescence/download/UpdateApkManager$3;->val$handler:Landroid/os/Handler;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 249
    .local v7, "msg":Landroid/os/Message;
    iget-object v8, p0, Lcom/wen/fluorescence/download/UpdateApkManager$3;->val$handler:Landroid/os/Handler;

    invoke-virtual {v8, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 253
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v7    # "msg":Landroid/os/Message;
    :cond_5
    if-eqz v1, :cond_6

    .line 254
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    .line 256
    :catch_3
    move-exception v5

    goto :goto_5

    .line 257
    :cond_6
    :goto_4
    nop

    .line 260
    :goto_5
    if-eqz v2, :cond_4

    .line 261
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 266
    :goto_6
    return-void

    .line 252
    :goto_7
    nop

    .line 253
    if-eqz v1, :cond_7

    .line 254
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_8

    .line 256
    :catch_4
    move-exception v7

    goto :goto_9

    .line 257
    :cond_7
    :goto_8
    nop

    .line 260
    :goto_9
    if-eqz v2, :cond_8

    .line 261
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_a

    .line 263
    :catch_5
    move-exception v7

    nop

    .line 264
    :cond_8
    :goto_a
    throw v5
.end method
