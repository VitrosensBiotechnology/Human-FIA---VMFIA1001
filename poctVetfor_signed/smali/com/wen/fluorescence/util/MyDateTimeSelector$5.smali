.class Lcom/wen/fluorescence/util/MyDateTimeSelector$5;
.super Ljava/lang/Object;
.source "MyDateTimeSelector.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/util/MyDateTimeSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/util/MyDateTimeSelector;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/util/MyDateTimeSelector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/util/MyDateTimeSelector;

    .line 221
    iput-object p1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector$5;->this$0:Lcom/wen/fluorescence/util/MyDateTimeSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 224
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08003a

    if-eq v0, v1, :cond_1

    const v1, 0x7f080088

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 244
    :pswitch_0
    invoke-static {}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->getInstance()Lcom/wen/fluorescence/Thread/SetTimeLongTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector$5;->this$0:Lcom/wen/fluorescence/util/MyDateTimeSelector;

    invoke-static {v1}, Lcom/wen/fluorescence/util/MyDateTimeSelector;->access$1100(Lcom/wen/fluorescence/util/MyDateTimeSelector;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->setTimerStart(Landroid/os/Handler;I)V

    .line 245
    goto/16 :goto_0

    .line 253
    :pswitch_1
    invoke-static {}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->getInstance()Lcom/wen/fluorescence/Thread/SetTimeLongTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector$5;->this$0:Lcom/wen/fluorescence/util/MyDateTimeSelector;

    invoke-static {v1}, Lcom/wen/fluorescence/util/MyDateTimeSelector;->access$1100(Lcom/wen/fluorescence/util/MyDateTimeSelector;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->setTimerStart(Landroid/os/Handler;I)V

    goto/16 :goto_0

    .line 250
    :pswitch_2
    invoke-static {}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->getInstance()Lcom/wen/fluorescence/Thread/SetTimeLongTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector$5;->this$0:Lcom/wen/fluorescence/util/MyDateTimeSelector;

    invoke-static {v1}, Lcom/wen/fluorescence/util/MyDateTimeSelector;->access$1100(Lcom/wen/fluorescence/util/MyDateTimeSelector;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->setTimerStart(Landroid/os/Handler;I)V

    .line 251
    goto :goto_0

    .line 247
    :pswitch_3
    invoke-static {}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->getInstance()Lcom/wen/fluorescence/Thread/SetTimeLongTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector$5;->this$0:Lcom/wen/fluorescence/util/MyDateTimeSelector;

    invoke-static {v1}, Lcom/wen/fluorescence/util/MyDateTimeSelector;->access$1100(Lcom/wen/fluorescence/util/MyDateTimeSelector;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->setTimerStart(Landroid/os/Handler;I)V

    .line 248
    goto :goto_0

    .line 229
    :pswitch_4
    invoke-static {}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->getInstance()Lcom/wen/fluorescence/Thread/SetTimeLongTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector$5;->this$0:Lcom/wen/fluorescence/util/MyDateTimeSelector;

    invoke-static {v1}, Lcom/wen/fluorescence/util/MyDateTimeSelector;->access$1100(Lcom/wen/fluorescence/util/MyDateTimeSelector;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->setTimerStart(Landroid/os/Handler;I)V

    .line 230
    goto :goto_0

    .line 238
    :pswitch_5
    invoke-static {}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->getInstance()Lcom/wen/fluorescence/Thread/SetTimeLongTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector$5;->this$0:Lcom/wen/fluorescence/util/MyDateTimeSelector;

    invoke-static {v1}, Lcom/wen/fluorescence/util/MyDateTimeSelector;->access$1100(Lcom/wen/fluorescence/util/MyDateTimeSelector;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->setTimerStart(Landroid/os/Handler;I)V

    .line 239
    goto :goto_0

    .line 235
    :pswitch_6
    invoke-static {}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->getInstance()Lcom/wen/fluorescence/Thread/SetTimeLongTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector$5;->this$0:Lcom/wen/fluorescence/util/MyDateTimeSelector;

    invoke-static {v1}, Lcom/wen/fluorescence/util/MyDateTimeSelector;->access$1100(Lcom/wen/fluorescence/util/MyDateTimeSelector;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->setTimerStart(Landroid/os/Handler;I)V

    .line 236
    goto :goto_0

    .line 232
    :pswitch_7
    invoke-static {}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->getInstance()Lcom/wen/fluorescence/Thread/SetTimeLongTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector$5;->this$0:Lcom/wen/fluorescence/util/MyDateTimeSelector;

    invoke-static {v1}, Lcom/wen/fluorescence/util/MyDateTimeSelector;->access$1100(Lcom/wen/fluorescence/util/MyDateTimeSelector;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->setTimerStart(Landroid/os/Handler;I)V

    .line 233
    goto :goto_0

    .line 241
    :cond_0
    invoke-static {}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->getInstance()Lcom/wen/fluorescence/Thread/SetTimeLongTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector$5;->this$0:Lcom/wen/fluorescence/util/MyDateTimeSelector;

    invoke-static {v1}, Lcom/wen/fluorescence/util/MyDateTimeSelector;->access$1100(Lcom/wen/fluorescence/util/MyDateTimeSelector;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->setTimerStart(Landroid/os/Handler;I)V

    .line 242
    goto :goto_0

    .line 226
    :cond_1
    invoke-static {}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->getInstance()Lcom/wen/fluorescence/Thread/SetTimeLongTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector$5;->this$0:Lcom/wen/fluorescence/util/MyDateTimeSelector;

    invoke-static {v1}, Lcom/wen/fluorescence/util/MyDateTimeSelector;->access$1100(Lcom/wen/fluorescence/util/MyDateTimeSelector;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->setTimerStart(Landroid/os/Handler;I)V

    .line 227
    nop

    .line 256
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
