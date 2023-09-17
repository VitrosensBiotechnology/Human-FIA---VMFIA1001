.class Lcom/wen/fluorescence/lis/TCPTronHoClient$1;
.super Ljava/lang/Thread;
.source "TCPTronHoClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/lis/TCPTronHoClient;->startReadDataThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/lis/TCPTronHoClient;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/lis/TCPTronHoClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/lis/TCPTronHoClient;

    .line 67
    iput-object p1, p0, Lcom/wen/fluorescence/lis/TCPTronHoClient$1;->this$0:Lcom/wen/fluorescence/lis/TCPTronHoClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 70
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 71
    :goto_0
    iget-object v0, p0, Lcom/wen/fluorescence/lis/TCPTronHoClient$1;->this$0:Lcom/wen/fluorescence/lis/TCPTronHoClient;

    invoke-static {v0}, Lcom/wen/fluorescence/lis/TCPTronHoClient;->access$000(Lcom/wen/fluorescence/lis/TCPTronHoClient;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 73
    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [B

    .line 74
    .local v0, "buf":[B
    const-string v1, "as"

    const-string v2, "___________startReadDataThread"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v1, p0, Lcom/wen/fluorescence/lis/TCPTronHoClient$1;->this$0:Lcom/wen/fluorescence/lis/TCPTronHoClient;

    invoke-static {v1}, Lcom/wen/fluorescence/lis/TCPTronHoClient;->access$100(Lcom/wen/fluorescence/lis/TCPTronHoClient;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/wen/fluorescence/lis/TCPTronHoClient$1;->this$0:Lcom/wen/fluorescence/lis/TCPTronHoClient;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wen/fluorescence/lis/TCPTronHoClient;->access$002(Lcom/wen/fluorescence/lis/TCPTronHoClient;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 77
    return-void

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/wen/fluorescence/lis/TCPTronHoClient$1;->this$0:Lcom/wen/fluorescence/lis/TCPTronHoClient;

    invoke-static {v1}, Lcom/wen/fluorescence/lis/TCPTronHoClient;->access$200(Lcom/wen/fluorescence/lis/TCPTronHoClient;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 80
    .local v1, "n":I
    if-lez v1, :cond_4

    .line 81
    const/4 v3, 0x0

    .line 81
    .local v3, "indexStart":I
    move v4, v1

    .line 82
    .local v4, "indexEnd":I
    nop

    .line 82
    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 83
    aget-byte v5, v0, v2

    const/16 v6, 0xb

    if-ne v5, v6, :cond_1

    .line 84
    add-int/lit8 v3, v2, 0x1

    .line 86
    :cond_1
    aget-byte v5, v0, v2

    const/16 v6, 0x1c

    if-ne v5, v6, :cond_2

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, v0, v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_2

    .line 87
    add-int/lit8 v4, v2, -0x1

    .line 82
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 90
    .end local v2    # "i":I
    :cond_3
    new-instance v2, Ljava/lang/String;

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-direct {v2, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 92
    .local v2, "result":Ljava/lang/String;
    const-string v5, "Lis"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Lis Get:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v5, p0, Lcom/wen/fluorescence/lis/TCPTronHoClient$1;->this$0:Lcom/wen/fluorescence/lis/TCPTronHoClient;

    invoke-static {v5}, Lcom/wen/fluorescence/lis/TCPTronHoClient;->access$300(Lcom/wen/fluorescence/lis/TCPTronHoClient;)Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 94
    iget-object v5, p0, Lcom/wen/fluorescence/lis/TCPTronHoClient$1;->this$0:Lcom/wen/fluorescence/lis/TCPTronHoClient;

    invoke-static {v5}, Lcom/wen/fluorescence/lis/TCPTronHoClient;->access$300(Lcom/wen/fluorescence/lis/TCPTronHoClient;)Landroid/os/Handler;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/wen/fluorescence/lis/HL7;->handleMsg(Ljava/lang/String;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v0    # "buf":[B
    .end local v1    # "n":I
    .end local v2    # "result":Ljava/lang/String;
    .end local v3    # "indexStart":I
    .end local v4    # "indexEnd":I
    :cond_4
    goto/16 :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 99
    iget-object v1, p0, Lcom/wen/fluorescence/lis/TCPTronHoClient$1;->this$0:Lcom/wen/fluorescence/lis/TCPTronHoClient;

    invoke-virtual {v1}, Lcom/wen/fluorescence/lis/TCPTronHoClient;->close()V

    .line 100
    nop

    .line 103
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    const-string v0, "as"

    const-string v1, "____________startReadDataThread Faile:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method
