.class public Lcom/wen/fluorescence/Thread/ReceiveTimer;
.super Ljava/lang/Object;
.source "ReceiveTimer.java"


# static fields
.field private static receiveTimer:Lcom/wen/fluorescence/Thread/ReceiveTimer;


# instance fields
.field private Time_Get:I

.field private mTimerGet:Ljava/util/Timer;

.field private taskGet:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/16 v0, 0x12c

    iput v0, p0, Lcom/wen/fluorescence/Thread/ReceiveTimer;->Time_Get:I

    return-void
.end method

.method public static getInstance()Lcom/wen/fluorescence/Thread/ReceiveTimer;
    .locals 1

    .line 24
    sget-object v0, Lcom/wen/fluorescence/Thread/ReceiveTimer;->receiveTimer:Lcom/wen/fluorescence/Thread/ReceiveTimer;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/wen/fluorescence/Thread/ReceiveTimer;

    invoke-direct {v0}, Lcom/wen/fluorescence/Thread/ReceiveTimer;-><init>()V

    sput-object v0, Lcom/wen/fluorescence/Thread/ReceiveTimer;->receiveTimer:Lcom/wen/fluorescence/Thread/ReceiveTimer;

    .line 28
    :cond_0
    sget-object v0, Lcom/wen/fluorescence/Thread/ReceiveTimer;->receiveTimer:Lcom/wen/fluorescence/Thread/ReceiveTimer;

    return-object v0
.end method


# virtual methods
.method public setGetTimeOutCancel()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/ReceiveTimer;->mTimerGet:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/ReceiveTimer;->mTimerGet:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 48
    iput-object v1, p0, Lcom/wen/fluorescence/Thread/ReceiveTimer;->mTimerGet:Ljava/util/Timer;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/ReceiveTimer;->taskGet:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/ReceiveTimer;->taskGet:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 52
    iput-object v1, p0, Lcom/wen/fluorescence/Thread/ReceiveTimer;->taskGet:Ljava/util/TimerTask;

    .line 54
    :cond_1
    return-void
.end method

.method public setGetTimeOutStart(Lcom/wen/fluorescence/util/MyCallBack;)V
    .locals 4
    .param p1, "callBack"    # Lcom/wen/fluorescence/util/MyCallBack;

    .line 34
    invoke-virtual {p0}, Lcom/wen/fluorescence/Thread/ReceiveTimer;->setGetTimeOutCancel()V

    .line 35
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/Thread/ReceiveTimer;->mTimerGet:Ljava/util/Timer;

    .line 36
    new-instance v0, Lcom/wen/fluorescence/Thread/ReceiveTimer$1;

    invoke-direct {v0, p0, p1}, Lcom/wen/fluorescence/Thread/ReceiveTimer$1;-><init>(Lcom/wen/fluorescence/Thread/ReceiveTimer;Lcom/wen/fluorescence/util/MyCallBack;)V

    iput-object v0, p0, Lcom/wen/fluorescence/Thread/ReceiveTimer;->taskGet:Ljava/util/TimerTask;

    .line 42
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/ReceiveTimer;->mTimerGet:Ljava/util/Timer;

    iget-object v1, p0, Lcom/wen/fluorescence/Thread/ReceiveTimer;->taskGet:Ljava/util/TimerTask;

    iget v2, p0, Lcom/wen/fluorescence/Thread/ReceiveTimer;->Time_Get:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 43
    return-void
.end method
