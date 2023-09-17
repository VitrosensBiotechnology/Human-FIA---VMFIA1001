.class Lcom/wen/fluorescence/Thread/SetTimeLongTimer$1;
.super Ljava/util/TimerTask;
.source "SetTimeLongTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->setTimerStart(Landroid/os/Handler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Thread/SetTimeLongTimer;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$what:I


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Thread/SetTimeLongTimer;Landroid/os/Handler;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Thread/SetTimeLongTimer;

    .line 35
    iput-object p1, p0, Lcom/wen/fluorescence/Thread/SetTimeLongTimer$1;->this$0:Lcom/wen/fluorescence/Thread/SetTimeLongTimer;

    iput-object p2, p0, Lcom/wen/fluorescence/Thread/SetTimeLongTimer$1;->val$handler:Landroid/os/Handler;

    iput p3, p0, Lcom/wen/fluorescence/Thread/SetTimeLongTimer$1;->val$what:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/SetTimeLongTimer$1;->val$handler:Landroid/os/Handler;

    iget v1, p0, Lcom/wen/fluorescence/Thread/SetTimeLongTimer$1;->val$what:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 39
    const-string v0, "as"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handler:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/wen/fluorescence/Thread/SetTimeLongTimer$1;->val$what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method
