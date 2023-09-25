.class Lcom/wen/fluorescence/Fragment/SettingFragment$1;
.super Landroid/os/Handler;
.source "SettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/Fragment/SettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SettingFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SettingFragment;

    .line 49
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SettingFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 52
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 53
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x105

    if-eq v0, v1, :cond_5

    const/16 v1, 0x12

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 89
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 91
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg2:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    goto/16 :goto_2

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SettingFragment;->access$000(Lcom/wen/fluorescence/Fragment/SettingFragment;)Lcom/wen/fluorescence/util/FragmentCallback;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-wide v3, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lcom/wen/fluorescence/util/FragmentCallback;->receiveTemperature(D)V

    goto :goto_2

    .line 58
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v1, :cond_2

    goto :goto_1

    .line 60
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg2:I

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 63
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 64
    .local v0, "result":B
    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 65
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingFragment;

    invoke-virtual {v2}, Lcom/wen/fluorescence/Fragment/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingFragment;

    const v4, 0x7f0c00a2

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/Fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 66
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->getSystemConfig()V

    goto :goto_0

    .line 68
    :cond_3
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingFragment;

    invoke-virtual {v2}, Lcom/wen/fluorescence/Fragment/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingFragment;

    const v4, 0x7f0c00a1

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/Fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 71
    .end local v0    # "result":B
    :goto_0
    goto :goto_1

    .line 74
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 75
    .restart local v0    # "result":B
    if-nez v0, :cond_4

    .line 78
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->getSystemConfig()V

    .line 87
    .end local v0    # "result":B
    :cond_4
    :goto_1
    goto :goto_2

    .line 55
    :cond_5
    invoke-static {p0}, Lcom/wen/fluorescence/serialport/DoSerialData;->getInstance(Landroid/os/Handler;)Lcom/wen/fluorescence/serialport/DoSerialData;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/serialport/DoSerialData;->receiveData(Ljava/lang/String;)V

    .line 56
    nop

    .line 101
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0xa0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
