.class Lcom/wen/fluorescence/Fragment/SettingWifiFragment$1;
.super Landroid/os/Handler;
.source "SettingWifiFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/Fragment/SettingWifiFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SettingWifiFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    .line 74
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 77
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 90
    :pswitch_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->access$000(Lcom/wen/fluorescence/Fragment/SettingWifiFragment;)Lcom/wen/fluorescence/lis/WifiConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/lis/WifiConnector;->openWifi()Z

    .line 91
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->access$000(Lcom/wen/fluorescence/Fragment/SettingWifiFragment;)Lcom/wen/fluorescence/lis/WifiConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/lis/WifiConnector;->scanWifi()V

    goto :goto_0

    .line 87
    :pswitch_1
    const-string v0, "ads"

    const-string v1, "Wifi \u8fde\u63a5\u8fd4\u56de\u5931\u8d25\u3002\u3002."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    goto :goto_0

    .line 79
    :pswitch_2
    const-string v0, "ads"

    const-string v1, "Wifi \u8fde\u63a5\u8fd4\u56de\u6210\u529f.\u3002\u3002"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v1, "icoolv3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 82
    .local v0, "msg2":Landroid/os/Message;
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 83
    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 84
    .end local v0    # "msg2":Landroid/os/Message;
    nop

    .line 94
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 95
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
