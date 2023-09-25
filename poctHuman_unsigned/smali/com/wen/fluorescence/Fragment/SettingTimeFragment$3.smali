.class Lcom/wen/fluorescence/Fragment/SettingTimeFragment$3;
.super Ljava/lang/Object;
.source "SettingTimeFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 191
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SettingTimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08003a

    if-eq v0, v1, :cond_1

    const v1, 0x7f080088

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 214
    :pswitch_0
    invoke-static {}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->getInstance()Lcom/wen/fluorescence/Thread/SetTimeLongTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SettingTimeFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->access$1000(Lcom/wen/fluorescence/Fragment/SettingTimeFragment;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->setTimerStart(Landroid/os/Handler;I)V

    .line 215
    goto/16 :goto_0

    .line 223
    :pswitch_1
    invoke-static {}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->getInstance()Lcom/wen/fluorescence/Thread/SetTimeLongTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SettingTimeFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->access$1000(Lcom/wen/fluorescence/Fragment/SettingTimeFragment;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->setTimerStart(Landroid/os/Handler;I)V

    goto/16 :goto_0

    .line 220
    :pswitch_2
    invoke-static {}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->getInstance()Lcom/wen/fluorescence/Thread/SetTimeLongTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SettingTimeFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->access$1000(Lcom/wen/fluorescence/Fragment/SettingTimeFragment;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->setTimerStart(Landroid/os/Handler;I)V

    .line 221
    goto :goto_0

    .line 217
    :pswitch_3
    invoke-static {}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->getInstance()Lcom/wen/fluorescence/Thread/SetTimeLongTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SettingTimeFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->access$1000(Lcom/wen/fluorescence/Fragment/SettingTimeFragment;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->setTimerStart(Landroid/os/Handler;I)V

    .line 218
    goto :goto_0

    .line 199
    :pswitch_4
    invoke-static {}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->getInstance()Lcom/wen/fluorescence/Thread/SetTimeLongTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SettingTimeFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->access$1000(Lcom/wen/fluorescence/Fragment/SettingTimeFragment;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->setTimerStart(Landroid/os/Handler;I)V

    .line 200
    goto :goto_0

    .line 208
    :pswitch_5
    invoke-static {}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->getInstance()Lcom/wen/fluorescence/Thread/SetTimeLongTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SettingTimeFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->access$1000(Lcom/wen/fluorescence/Fragment/SettingTimeFragment;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->setTimerStart(Landroid/os/Handler;I)V

    .line 209
    goto :goto_0

    .line 205
    :pswitch_6
    invoke-static {}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->getInstance()Lcom/wen/fluorescence/Thread/SetTimeLongTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SettingTimeFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->access$1000(Lcom/wen/fluorescence/Fragment/SettingTimeFragment;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->setTimerStart(Landroid/os/Handler;I)V

    .line 206
    goto :goto_0

    .line 202
    :pswitch_7
    invoke-static {}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->getInstance()Lcom/wen/fluorescence/Thread/SetTimeLongTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SettingTimeFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->access$1000(Lcom/wen/fluorescence/Fragment/SettingTimeFragment;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->setTimerStart(Landroid/os/Handler;I)V

    .line 203
    goto :goto_0

    .line 211
    :cond_0
    invoke-static {}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->getInstance()Lcom/wen/fluorescence/Thread/SetTimeLongTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SettingTimeFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->access$1000(Lcom/wen/fluorescence/Fragment/SettingTimeFragment;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->setTimerStart(Landroid/os/Handler;I)V

    .line 212
    goto :goto_0

    .line 196
    :cond_1
    invoke-static {}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->getInstance()Lcom/wen/fluorescence/Thread/SetTimeLongTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SettingTimeFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->access$1000(Lcom/wen/fluorescence/Fragment/SettingTimeFragment;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->setTimerStart(Landroid/os/Handler;I)V

    .line 197
    nop

    .line 226
    :goto_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x7f080034
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f080083
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
