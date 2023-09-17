.class final Lcom/wen/fluorescence/download/DownloadTool$1;
.super Ljava/lang/Object;
.source "DownloadTool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/download/DownloadTool;->DownloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/wen/fluorescence/download/DownloadTool$DownLoadCallBack;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callBack:Lcom/wen/fluorescence/download/DownloadTool$DownLoadCallBack;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lcom/wen/fluorescence/download/DownloadTool$DownLoadCallBack;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/wen/fluorescence/download/DownloadTool$1;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/wen/fluorescence/download/DownloadTool$1;->val$filePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/wen/fluorescence/download/DownloadTool$1;->val$handler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/wen/fluorescence/download/DownloadTool$1;->val$callBack:Lcom/wen/fluorescence/download/DownloadTool$DownLoadCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 57
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/wen/fluorescence/download/DownloadTool$1;->val$url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, "webUrl":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 59
    .local v1, "con":Ljava/net/URLConnection;
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v2

    .line 60
    .local v2, "length":I
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 61
    .local v3, "in":Ljava/io/InputStream;
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/wen/fluorescence/download/DownloadTool$1;->val$filePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .local v4, "f":Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 63
    .local v5, "fo":Ljava/io/FileOutputStream;
    const/high16 v6, 0x100000

    new-array v6, v6, [B

    .line 64
    .local v6, "buffer":[B
    const/4 v7, 0x0

    .line 66
    .local v7, "count":I
    const/4 v8, 0x0

    move v9, v7

    move v7, v8

    .line 67
    .local v7, "progress":I
    .local v9, "count":I
    :cond_0
    :goto_0
    invoke-virtual {v3, v6}, Ljava/io/InputStream;->read([B)I

    move-result v10

    move v11, v10

    .line 67
    .local v11, "len":I
    if-lez v10, :cond_1

    .line 69
    add-int/2addr v9, v11

    .line 70
    int-to-float v10, v9

    int-to-float v12, v2

    div-float/2addr v10, v12

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float/2addr v10, v12

    float-to-int v7, v10

    .line 71
    invoke-virtual {v5, v6, v8, v11}, Ljava/io/FileOutputStream;->write([BII)V

    .line 72
    iget-object v10, p0, Lcom/wen/fluorescence/download/DownloadTool$1;->val$handler:Landroid/os/Handler;

    if-eqz v10, :cond_0

    .line 73
    iget-object v10, p0, Lcom/wen/fluorescence/download/DownloadTool$1;->val$handler:Landroid/os/Handler;

    const/4 v12, 0x5

    invoke-virtual {v10, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 74
    .local v10, "msg":Landroid/os/Message;
    iput v7, v10, Landroid/os/Message;->arg1:I

    .line 75
    iget-object v12, p0, Lcom/wen/fluorescence/download/DownloadTool$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v12, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 76
    .end local v10    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 79
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 80
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 81
    iget-object v8, p0, Lcom/wen/fluorescence/download/DownloadTool$1;->val$callBack:Lcom/wen/fluorescence/download/DownloadTool$DownLoadCallBack;

    invoke-interface {v8}, Lcom/wen/fluorescence/download/DownloadTool$DownLoadCallBack;->downLoadSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v0    # "webUrl":Ljava/net/URL;
    .end local v1    # "con":Ljava/net/URLConnection;
    .end local v2    # "length":I
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "fo":Ljava/io/FileOutputStream;
    .end local v6    # "buffer":[B
    .end local v7    # "progress":I
    .end local v9    # "count":I
    .end local v11    # "len":I
    goto :goto_1

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 84
    iget-object v1, p0, Lcom/wen/fluorescence/download/DownloadTool$1;->val$callBack:Lcom/wen/fluorescence/download/DownloadTool$DownLoadCallBack;

    invoke-interface {v1}, Lcom/wen/fluorescence/download/DownloadTool$DownLoadCallBack;->downLoadFaile()V

    .line 86
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
