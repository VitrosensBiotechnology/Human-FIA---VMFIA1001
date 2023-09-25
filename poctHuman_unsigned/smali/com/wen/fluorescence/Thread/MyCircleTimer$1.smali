.class Lcom/wen/fluorescence/Thread/MyCircleTimer$1;
.super Ljava/util/TimerTask;
.source "MyCircleTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Thread/MyCircleTimer;->setCircleTimerStart(Lcom/wen/fluorescence/Thread/MyCircleTimer$TimerOutCallBack;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Thread/MyCircleTimer;

.field final synthetic val$callBack:Lcom/wen/fluorescence/Thread/MyCircleTimer$TimerOutCallBack;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Thread/MyCircleTimer;Lcom/wen/fluorescence/Thread/MyCircleTimer$TimerOutCallBack;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Thread/MyCircleTimer;

    .line 26
    iput-object p1, p0, Lcom/wen/fluorescence/Thread/MyCircleTimer$1;->this$0:Lcom/wen/fluorescence/Thread/MyCircleTimer;

    iput-object p2, p0, Lcom/wen/fluorescence/Thread/MyCircleTimer$1;->val$callBack:Lcom/wen/fluorescence/Thread/MyCircleTimer$TimerOutCallBack;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/MyCircleTimer$1;->val$callBack:Lcom/wen/fluorescence/Thread/MyCircleTimer$TimerOutCallBack;

    invoke-interface {v0}, Lcom/wen/fluorescence/Thread/MyCircleTimer$TimerOutCallBack;->timerPeriod()V

    .line 30
    return-void
.end method
