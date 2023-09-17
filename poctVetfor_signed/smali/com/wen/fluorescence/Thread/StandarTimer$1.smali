.class Lcom/wen/fluorescence/Thread/StandarTimer$1;
.super Ljava/util/TimerTask;
.source "StandarTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Thread/StandarTimer;->setStandarTimerStart(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Thread/StandarTimer;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Thread/StandarTimer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Thread/StandarTimer;

    .line 51
    iput-object p1, p0, Lcom/wen/fluorescence/Thread/StandarTimer$1;->this$0:Lcom/wen/fluorescence/Thread/StandarTimer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/StandarTimer$1;->this$0:Lcom/wen/fluorescence/Thread/StandarTimer;

    invoke-static {v0}, Lcom/wen/fluorescence/Thread/StandarTimer;->access$000(Lcom/wen/fluorescence/Thread/StandarTimer;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 55
    .local v0, "obj":Landroid/os/Message;
    iget-object v1, p0, Lcom/wen/fluorescence/Thread/StandarTimer$1;->this$0:Lcom/wen/fluorescence/Thread/StandarTimer;

    invoke-static {v1}, Lcom/wen/fluorescence/Thread/StandarTimer;->access$100(Lcom/wen/fluorescence/Thread/StandarTimer;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 56
    iget-object v1, p0, Lcom/wen/fluorescence/Thread/StandarTimer$1;->this$0:Lcom/wen/fluorescence/Thread/StandarTimer;

    invoke-static {v1}, Lcom/wen/fluorescence/Thread/StandarTimer;->access$000(Lcom/wen/fluorescence/Thread/StandarTimer;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 57
    iget-object v1, p0, Lcom/wen/fluorescence/Thread/StandarTimer$1;->this$0:Lcom/wen/fluorescence/Thread/StandarTimer;

    invoke-static {v1}, Lcom/wen/fluorescence/Thread/StandarTimer;->access$110(Lcom/wen/fluorescence/Thread/StandarTimer;)I

    .line 58
    return-void
.end method
