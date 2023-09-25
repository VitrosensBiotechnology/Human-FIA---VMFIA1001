.class final Lcom/wen/fluorescence/serialport/CommActivity$1;
.super Landroid/os/Handler;
.source "CommActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/serialport/CommActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 33
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "str":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 43
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-lez v1, :cond_0

    invoke-static {}, Lcom/wen/fluorescence/serialport/CommActivity;->access$100()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 44
    invoke-static {}, Lcom/wen/fluorescence/serialport/CommActivity;->access$100()Landroid/os/Handler;

    move-result-object v1

    const/16 v3, 0x106

    .line 45
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 44
    invoke-virtual {v1, v3, v4, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 46
    .local v1, "msg1":Landroid/os/Message;
    invoke-static {}, Lcom/wen/fluorescence/serialport/CommActivity;->access$100()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 49
    .end local v1    # "msg1":Landroid/os/Message;
    :cond_0
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-lez v1, :cond_1

    invoke-static {}, Lcom/wen/fluorescence/serialport/CommActivity;->access$200()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 50
    invoke-static {}, Lcom/wen/fluorescence/serialport/CommActivity;->access$200()Landroid/os/Handler;

    move-result-object v1

    const/16 v3, 0x107

    .line 51
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 50
    invoke-virtual {v1, v3, v4, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 52
    .restart local v1    # "msg1":Landroid/os/Message;
    invoke-static {}, Lcom/wen/fluorescence/serialport/CommActivity;->access$200()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 52
    .end local v1    # "msg1":Landroid/os/Message;
    goto :goto_0

    .line 36
    :pswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-lez v1, :cond_1

    invoke-static {}, Lcom/wen/fluorescence/serialport/CommActivity;->access$000()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 37
    invoke-static {}, Lcom/wen/fluorescence/serialport/CommActivity;->access$000()Landroid/os/Handler;

    move-result-object v1

    const/16 v3, 0x105

    .line 38
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 37
    invoke-virtual {v1, v3, v4, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 39
    .restart local v1    # "msg1":Landroid/os/Message;
    invoke-static {}, Lcom/wen/fluorescence/serialport/CommActivity;->access$000()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 40
    .end local v1    # "msg1":Landroid/os/Message;
    nop

    .line 57
    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x105
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
