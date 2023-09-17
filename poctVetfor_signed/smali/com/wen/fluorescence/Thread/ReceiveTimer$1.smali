.class Lcom/wen/fluorescence/Thread/ReceiveTimer$1;
.super Ljava/util/TimerTask;
.source "ReceiveTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Thread/ReceiveTimer;->setGetTimeOutStart(Lcom/wen/fluorescence/util/MyCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Thread/ReceiveTimer;

.field final synthetic val$callBack:Lcom/wen/fluorescence/util/MyCallBack;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Thread/ReceiveTimer;Lcom/wen/fluorescence/util/MyCallBack;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Thread/ReceiveTimer;

    .line 36
    iput-object p1, p0, Lcom/wen/fluorescence/Thread/ReceiveTimer$1;->this$0:Lcom/wen/fluorescence/Thread/ReceiveTimer;

    iput-object p2, p0, Lcom/wen/fluorescence/Thread/ReceiveTimer$1;->val$callBack:Lcom/wen/fluorescence/util/MyCallBack;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/ReceiveTimer$1;->val$callBack:Lcom/wen/fluorescence/util/MyCallBack;

    invoke-interface {v0}, Lcom/wen/fluorescence/util/MyCallBack;->sendCallBack()V

    .line 40
    return-void
.end method
