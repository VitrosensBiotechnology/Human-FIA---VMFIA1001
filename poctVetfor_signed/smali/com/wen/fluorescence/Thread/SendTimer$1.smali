.class Lcom/wen/fluorescence/Thread/SendTimer$1;
.super Ljava/util/TimerTask;
.source "SendTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Thread/SendTimer;->setSendTimeOutStart(Lcom/wen/fluorescence/util/MyCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Thread/SendTimer;

.field final synthetic val$callBack:Lcom/wen/fluorescence/util/MyCallBack;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Thread/SendTimer;Lcom/wen/fluorescence/util/MyCallBack;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Thread/SendTimer;

    .line 43
    iput-object p1, p0, Lcom/wen/fluorescence/Thread/SendTimer$1;->this$0:Lcom/wen/fluorescence/Thread/SendTimer;

    iput-object p2, p0, Lcom/wen/fluorescence/Thread/SendTimer$1;->val$callBack:Lcom/wen/fluorescence/util/MyCallBack;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 46
    const-string v0, "Time"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_______TimeCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wen/fluorescence/Thread/SendTimer$1;->this$0:Lcom/wen/fluorescence/Thread/SendTimer;

    invoke-static {v2}, Lcom/wen/fluorescence/Thread/SendTimer;->access$000(Lcom/wen/fluorescence/Thread/SendTimer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/SendTimer$1;->val$callBack:Lcom/wen/fluorescence/util/MyCallBack;

    invoke-interface {v0}, Lcom/wen/fluorescence/util/MyCallBack;->sendCallBack()V

    .line 48
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/SendTimer$1;->this$0:Lcom/wen/fluorescence/Thread/SendTimer;

    invoke-static {v0}, Lcom/wen/fluorescence/Thread/SendTimer;->access$008(Lcom/wen/fluorescence/Thread/SendTimer;)I

    .line 49
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/SendTimer$1;->this$0:Lcom/wen/fluorescence/Thread/SendTimer;

    invoke-static {v0}, Lcom/wen/fluorescence/Thread/SendTimer;->access$000(Lcom/wen/fluorescence/Thread/SendTimer;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 50
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/SendTimer$1;->this$0:Lcom/wen/fluorescence/Thread/SendTimer;

    invoke-static {v0}, Lcom/wen/fluorescence/Thread/SendTimer;->access$100(Lcom/wen/fluorescence/Thread/SendTimer;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/SendTimer$1;->this$0:Lcom/wen/fluorescence/Thread/SendTimer;

    invoke-static {v0}, Lcom/wen/fluorescence/Thread/SendTimer;->access$100(Lcom/wen/fluorescence/Thread/SendTimer;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/SendTimer$1;->this$0:Lcom/wen/fluorescence/Thread/SendTimer;

    invoke-static {v0}, Lcom/wen/fluorescence/Thread/SendTimer;->access$200(Lcom/wen/fluorescence/Thread/SendTimer;)Ljava/util/TimerTask;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/SendTimer$1;->this$0:Lcom/wen/fluorescence/Thread/SendTimer;

    invoke-static {v0}, Lcom/wen/fluorescence/Thread/SendTimer;->access$200(Lcom/wen/fluorescence/Thread/SendTimer;)Ljava/util/TimerTask;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 56
    :cond_1
    const-string v0, "as"

    const-string v1, "_____Cancel Timer."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_2
    return-void
.end method
