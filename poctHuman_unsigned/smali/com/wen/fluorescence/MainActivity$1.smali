.class Lcom/wen/fluorescence/MainActivity$1;
.super Landroid/os/Handler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/MainActivity;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/MainActivity;

    .line 88
    iput-object p1, p0, Lcom/wen/fluorescence/MainActivity$1;->this$0:Lcom/wen/fluorescence/MainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 91
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 92
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 115
    :sswitch_0
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity$1;->this$0:Lcom/wen/fluorescence/MainActivity;

    invoke-static {v0}, Lcom/wen/fluorescence/MainActivity;->access$200(Lcom/wen/fluorescence/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    goto :goto_0

    .line 112
    :sswitch_1
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity$1;->this$0:Lcom/wen/fluorescence/MainActivity;

    invoke-static {v0}, Lcom/wen/fluorescence/MainActivity;->access$200(Lcom/wen/fluorescence/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    goto :goto_0

    .line 123
    :sswitch_2
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/Global;->getTestStatus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity$1;->this$0:Lcom/wen/fluorescence/MainActivity;

    invoke-virtual {v0}, Lcom/wen/fluorescence/MainActivity;->uploadData()V

    goto :goto_0

    .line 118
    :sswitch_3
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity$1;->this$0:Lcom/wen/fluorescence/MainActivity;

    invoke-virtual {v0}, Lcom/wen/fluorescence/MainActivity;->isWifiConnect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity$1;->this$0:Lcom/wen/fluorescence/MainActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/wen/fluorescence/MainActivity;->setUpWifi(ZI)V

    goto :goto_0

    .line 95
    :sswitch_4
    goto :goto_0

    .line 109
    :sswitch_5
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->getSystemConfig()V

    .line 110
    goto :goto_0

    .line 101
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "strDateTime":Ljava/lang/String;
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "strDateTimeArrays":[Ljava/lang/String;
    array-length v4, v3

    if-le v4, v2, :cond_0

    .line 104
    iget-object v4, p0, Lcom/wen/fluorescence/MainActivity$1;->this$0:Lcom/wen/fluorescence/MainActivity;

    invoke-static {v4}, Lcom/wen/fluorescence/MainActivity;->access$000(Lcom/wen/fluorescence/MainActivity;)Landroid/widget/TextView;

    move-result-object v4

    aget-object v1, v3, v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v1, p0, Lcom/wen/fluorescence/MainActivity$1;->this$0:Lcom/wen/fluorescence/MainActivity;

    invoke-static {v1}, Lcom/wen/fluorescence/MainActivity;->access$100(Lcom/wen/fluorescence/MainActivity;)Landroid/widget/TextView;

    move-result-object v1

    aget-object v2, v3, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 99
    .end local v0    # "strDateTime":Ljava/lang/String;
    .end local v3    # "strDateTimeArrays":[Ljava/lang/String;
    :sswitch_7
    goto :goto_0

    .line 97
    :sswitch_8
    nop

    .line 128
    :cond_0
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_7
        0x3 -> :sswitch_6
        0x4 -> :sswitch_5
        0x107 -> :sswitch_4
        0x500 -> :sswitch_3
        0x501 -> :sswitch_2
        0x703 -> :sswitch_1
        0x704 -> :sswitch_0
    .end sparse-switch
.end method
