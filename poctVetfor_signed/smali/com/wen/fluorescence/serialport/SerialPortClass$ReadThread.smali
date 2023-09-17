.class Lcom/wen/fluorescence/serialport/SerialPortClass$ReadThread;
.super Ljava/lang/Thread;
.source "SerialPortClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/serialport/SerialPortClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/serialport/SerialPortClass;


# direct methods
.method private constructor <init>(Lcom/wen/fluorescence/serialport/SerialPortClass;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/wen/fluorescence/serialport/SerialPortClass$ReadThread;->this$0:Lcom/wen/fluorescence/serialport/SerialPortClass;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wen/fluorescence/serialport/SerialPortClass;Lcom/wen/fluorescence/serialport/SerialPortClass$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/wen/fluorescence/serialport/SerialPortClass;
    .param p2, "x1"    # Lcom/wen/fluorescence/serialport/SerialPortClass$1;

    .line 57
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/serialport/SerialPortClass$ReadThread;-><init>(Lcom/wen/fluorescence/serialport/SerialPortClass;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 60
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 61
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/wen/fluorescence/serialport/SerialPortClass$ReadThread;->this$0:Lcom/wen/fluorescence/serialport/SerialPortClass;

    invoke-static {v0}, Lcom/wen/fluorescence/serialport/SerialPortClass;->access$100(Lcom/wen/fluorescence/serialport/SerialPortClass;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 62
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/wen/fluorescence/serialport/SerialPortClass$ReadThread;->this$0:Lcom/wen/fluorescence/serialport/SerialPortClass;

    invoke-static {v0}, Lcom/wen/fluorescence/serialport/SerialPortClass;->access$200(Lcom/wen/fluorescence/serialport/SerialPortClass;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_1

    .line 66
    return-void

    .line 67
    :cond_1
    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 68
    .local v0, "buffer":[B
    iget-object v1, p0, Lcom/wen/fluorescence/serialport/SerialPortClass$ReadThread;->this$0:Lcom/wen/fluorescence/serialport/SerialPortClass;

    invoke-static {v1}, Lcom/wen/fluorescence/serialport/SerialPortClass;->access$200(Lcom/wen/fluorescence/serialport/SerialPortClass;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 69
    .local v1, "size":I
    if-lez v1, :cond_5

    .line 70
    invoke-static {v0, v1}, Lcom/wen/fluorescence/util/PublicFuction;->byteToHexString([BI)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "readMessage":Ljava/lang/String;
    iget-object v3, p0, Lcom/wen/fluorescence/serialport/SerialPortClass$ReadThread;->this$0:Lcom/wen/fluorescence/serialport/SerialPortClass;

    invoke-static {v3}, Lcom/wen/fluorescence/serialport/SerialPortClass;->access$500(Lcom/wen/fluorescence/serialport/SerialPortClass;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {}, Lcom/wen/fluorescence/serialport/SerialPortClass;->access$300()[I

    move-result-object v4

    iget-object v5, p0, Lcom/wen/fluorescence/serialport/SerialPortClass$ReadThread;->this$0:Lcom/wen/fluorescence/serialport/SerialPortClass;

    invoke-static {v5}, Lcom/wen/fluorescence/serialport/SerialPortClass;->access$400(Lcom/wen/fluorescence/serialport/SerialPortClass;)I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v1, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 72
    .local v3, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/wen/fluorescence/serialport/SerialPortClass$ReadThread;->this$0:Lcom/wen/fluorescence/serialport/SerialPortClass;

    invoke-static {v4}, Lcom/wen/fluorescence/serialport/SerialPortClass;->access$100(Lcom/wen/fluorescence/serialport/SerialPortClass;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 73
    iget-object v4, p0, Lcom/wen/fluorescence/serialport/SerialPortClass$ReadThread;->this$0:Lcom/wen/fluorescence/serialport/SerialPortClass;

    invoke-static {v4}, Lcom/wen/fluorescence/serialport/SerialPortClass;->access$500(Lcom/wen/fluorescence/serialport/SerialPortClass;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 76
    :cond_2
    invoke-static {}, Lcom/wen/fluorescence/serialport/SerialPortClass;->access$300()[I

    move-result-object v4

    iget-object v5, p0, Lcom/wen/fluorescence/serialport/SerialPortClass$ReadThread;->this$0:Lcom/wen/fluorescence/serialport/SerialPortClass;

    invoke-static {v5}, Lcom/wen/fluorescence/serialport/SerialPortClass;->access$400(Lcom/wen/fluorescence/serialport/SerialPortClass;)I

    move-result v5

    aget v4, v4, v5

    const/16 v5, 0x105

    if-ne v4, v5, :cond_3

    .line 77
    const-string v4, "SerialPortClass"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SerialPortGet:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 78
    :cond_3
    invoke-static {}, Lcom/wen/fluorescence/serialport/SerialPortClass;->access$300()[I

    move-result-object v4

    iget-object v5, p0, Lcom/wen/fluorescence/serialport/SerialPortClass$ReadThread;->this$0:Lcom/wen/fluorescence/serialport/SerialPortClass;

    invoke-static {v5}, Lcom/wen/fluorescence/serialport/SerialPortClass;->access$400(Lcom/wen/fluorescence/serialport/SerialPortClass;)I

    move-result v5

    aget v4, v4, v5

    const/16 v5, 0x106

    if-ne v4, v5, :cond_4

    .line 79
    const-string v4, "SerialPortClass"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PrintPortGet:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 80
    :cond_4
    invoke-static {}, Lcom/wen/fluorescence/serialport/SerialPortClass;->access$300()[I

    move-result-object v4

    iget-object v5, p0, Lcom/wen/fluorescence/serialport/SerialPortClass$ReadThread;->this$0:Lcom/wen/fluorescence/serialport/SerialPortClass;

    invoke-static {v5}, Lcom/wen/fluorescence/serialport/SerialPortClass;->access$400(Lcom/wen/fluorescence/serialport/SerialPortClass;)I

    move-result v5

    aget v4, v4, v5

    const/16 v5, 0x107

    if-ne v4, v5, :cond_5

    .line 81
    const-string v4, "SerialPortClass"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WifiPortGet:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/String;

    const-string v7, "GBK"

    invoke-direct {v6, v0, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 85
    .end local v2    # "readMessage":Ljava/lang/String;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_5
    :goto_1
    const-wide/16 v2, 0x5

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 88
    goto :goto_2

    .line 86
    :catch_0
    move-exception v2

    .line 87
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 92
    .end local v0    # "buffer":[B
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    goto/16 :goto_0

    .line 89
    .end local v1    # "size":I
    :catch_1
    move-exception v0

    .line 90
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 91
    return-void

    .line 95
    .end local v0    # "e":Ljava/io/IOException;
    :cond_6
    return-void
.end method
