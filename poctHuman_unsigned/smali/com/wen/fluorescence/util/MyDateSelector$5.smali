.class Lcom/wen/fluorescence/util/MyDateSelector$5;
.super Ljava/lang/Object;
.source "MyDateSelector.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/util/MyDateSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/util/MyDateSelector;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/util/MyDateSelector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/util/MyDateSelector;

    .line 183
    iput-object p1, p0, Lcom/wen/fluorescence/util/MyDateSelector$5;->this$0:Lcom/wen/fluorescence/util/MyDateSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 186
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 197
    :sswitch_0
    invoke-static {}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->getInstance()Lcom/wen/fluorescence/Thread/SetTimeLongTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateSelector$5;->this$0:Lcom/wen/fluorescence/util/MyDateSelector;

    invoke-static {v1}, Lcom/wen/fluorescence/util/MyDateSelector;->access$700(Lcom/wen/fluorescence/util/MyDateSelector;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->setTimerStart(Landroid/os/Handler;I)V

    .line 198
    goto :goto_0

    .line 200
    :sswitch_1
    invoke-static {}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->getInstance()Lcom/wen/fluorescence/Thread/SetTimeLongTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateSelector$5;->this$0:Lcom/wen/fluorescence/util/MyDateSelector;

    invoke-static {v1}, Lcom/wen/fluorescence/util/MyDateSelector;->access$700(Lcom/wen/fluorescence/util/MyDateSelector;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->setTimerStart(Landroid/os/Handler;I)V

    .line 201
    goto :goto_0

    .line 203
    :sswitch_2
    invoke-static {}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->getInstance()Lcom/wen/fluorescence/Thread/SetTimeLongTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateSelector$5;->this$0:Lcom/wen/fluorescence/util/MyDateSelector;

    invoke-static {v1}, Lcom/wen/fluorescence/util/MyDateSelector;->access$700(Lcom/wen/fluorescence/util/MyDateSelector;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->setTimerStart(Landroid/os/Handler;I)V

    goto :goto_0

    .line 188
    :sswitch_3
    invoke-static {}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->getInstance()Lcom/wen/fluorescence/Thread/SetTimeLongTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateSelector$5;->this$0:Lcom/wen/fluorescence/util/MyDateSelector;

    invoke-static {v1}, Lcom/wen/fluorescence/util/MyDateSelector;->access$700(Lcom/wen/fluorescence/util/MyDateSelector;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->setTimerStart(Landroid/os/Handler;I)V

    .line 189
    goto :goto_0

    .line 191
    :sswitch_4
    invoke-static {}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->getInstance()Lcom/wen/fluorescence/Thread/SetTimeLongTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateSelector$5;->this$0:Lcom/wen/fluorescence/util/MyDateSelector;

    invoke-static {v1}, Lcom/wen/fluorescence/util/MyDateSelector;->access$700(Lcom/wen/fluorescence/util/MyDateSelector;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->setTimerStart(Landroid/os/Handler;I)V

    .line 192
    goto :goto_0

    .line 194
    :sswitch_5
    invoke-static {}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->getInstance()Lcom/wen/fluorescence/Thread/SetTimeLongTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateSelector$5;->this$0:Lcom/wen/fluorescence/util/MyDateSelector;

    invoke-static {v1}, Lcom/wen/fluorescence/util/MyDateSelector;->access$700(Lcom/wen/fluorescence/util/MyDateSelector;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->setTimerStart(Landroid/os/Handler;I)V

    .line 195
    nop

    .line 206
    :goto_0
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080034 -> :sswitch_5
        0x7f080037 -> :sswitch_4
        0x7f08003a -> :sswitch_3
        0x7f080083 -> :sswitch_2
        0x7f080086 -> :sswitch_1
        0x7f080088 -> :sswitch_0
    .end sparse-switch
.end method
