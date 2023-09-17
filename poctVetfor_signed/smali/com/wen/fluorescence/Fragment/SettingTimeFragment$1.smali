.class Lcom/wen/fluorescence/Fragment/SettingTimeFragment$1;
.super Landroid/os/Handler;
.source "SettingTimeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/Fragment/SettingTimeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SettingTimeFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SettingTimeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SettingTimeFragment;

    .line 48
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingTimeFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 51
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 52
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 81
    :pswitch_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingTimeFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->access$900(Lcom/wen/fluorescence/Fragment/SettingTimeFragment;)V

    goto :goto_0

    .line 78
    :pswitch_1
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingTimeFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->access$800(Lcom/wen/fluorescence/Fragment/SettingTimeFragment;)V

    .line 79
    goto :goto_0

    .line 75
    :pswitch_2
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingTimeFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->access$700(Lcom/wen/fluorescence/Fragment/SettingTimeFragment;)V

    .line 76
    goto :goto_0

    .line 72
    :pswitch_3
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingTimeFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->access$600(Lcom/wen/fluorescence/Fragment/SettingTimeFragment;)V

    .line 73
    goto :goto_0

    .line 69
    :pswitch_4
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingTimeFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->access$500(Lcom/wen/fluorescence/Fragment/SettingTimeFragment;)V

    .line 70
    goto :goto_0

    .line 66
    :pswitch_5
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingTimeFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->access$400(Lcom/wen/fluorescence/Fragment/SettingTimeFragment;)V

    .line 67
    goto :goto_0

    .line 63
    :pswitch_6
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingTimeFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->access$300(Lcom/wen/fluorescence/Fragment/SettingTimeFragment;)V

    .line 64
    goto :goto_0

    .line 60
    :pswitch_7
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingTimeFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->access$200(Lcom/wen/fluorescence/Fragment/SettingTimeFragment;)V

    .line 61
    goto :goto_0

    .line 57
    :pswitch_8
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingTimeFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->access$100(Lcom/wen/fluorescence/Fragment/SettingTimeFragment;)V

    .line 58
    goto :goto_0

    .line 54
    :pswitch_9
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingTimeFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->access$000(Lcom/wen/fluorescence/Fragment/SettingTimeFragment;)V

    .line 55
    nop

    .line 84
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
