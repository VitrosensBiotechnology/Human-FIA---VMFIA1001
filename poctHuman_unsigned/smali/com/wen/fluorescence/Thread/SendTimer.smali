.class public Lcom/wen/fluorescence/Thread/SendTimer;
.super Ljava/lang/Object;
.source "SendTimer.java"


# static fields
.field private static sendTimer:Lcom/wen/fluorescence/Thread/SendTimer;


# instance fields
.field private TimeCount:I

.field private Time_Send:I

.field private mTimerSend:Ljava/util/Timer;

.field private taskSend:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/wen/fluorescence/Thread/SendTimer;->TimeCount:I

    .line 21
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/wen/fluorescence/Thread/SendTimer;->Time_Send:I

    return-void
.end method

.method static synthetic access$000(Lcom/wen/fluorescence/Thread/SendTimer;)I
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Thread/SendTimer;

    .line 13
    iget v0, p0, Lcom/wen/fluorescence/Thread/SendTimer;->TimeCount:I

    return v0
.end method

.method static synthetic access$008(Lcom/wen/fluorescence/Thread/SendTimer;)I
    .locals 2
    .param p0, "x0"    # Lcom/wen/fluorescence/Thread/SendTimer;

    .line 13
    iget v0, p0, Lcom/wen/fluorescence/Thread/SendTimer;->TimeCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/wen/fluorescence/Thread/SendTimer;->TimeCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/wen/fluorescence/Thread/SendTimer;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Thread/SendTimer;

    .line 13
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/SendTimer;->mTimerSend:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/wen/fluorescence/Thread/SendTimer;)Ljava/util/TimerTask;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Thread/SendTimer;

    .line 13
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/SendTimer;->taskSend:Ljava/util/TimerTask;

    return-object v0
.end method

.method public static getInstance()Lcom/wen/fluorescence/Thread/SendTimer;
    .locals 1

    .line 31
    sget-object v0, Lcom/wen/fluorescence/Thread/SendTimer;->sendTimer:Lcom/wen/fluorescence/Thread/SendTimer;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/wen/fluorescence/Thread/SendTimer;

    invoke-direct {v0}, Lcom/wen/fluorescence/Thread/SendTimer;-><init>()V

    sput-object v0, Lcom/wen/fluorescence/Thread/SendTimer;->sendTimer:Lcom/wen/fluorescence/Thread/SendTimer;

    .line 35
    :cond_0
    sget-object v0, Lcom/wen/fluorescence/Thread/SendTimer;->sendTimer:Lcom/wen/fluorescence/Thread/SendTimer;

    return-object v0
.end method


# virtual methods
.method public setSendTimeOutCancel()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/SendTimer;->mTimerSend:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/SendTimer;->mTimerSend:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 65
    iput-object v1, p0, Lcom/wen/fluorescence/Thread/SendTimer;->mTimerSend:Ljava/util/Timer;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/SendTimer;->taskSend:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/SendTimer;->taskSend:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 69
    iput-object v1, p0, Lcom/wen/fluorescence/Thread/SendTimer;->taskSend:Ljava/util/TimerTask;

    .line 71
    :cond_1
    return-void
.end method

.method public declared-synchronized setSendTimeOutStart(Lcom/wen/fluorescence/util/MyCallBack;)V
    .locals 7
    .param p1, "callBack"    # Lcom/wen/fluorescence/util/MyCallBack;

    monitor-enter p0

    .line 40
    :try_start_0
    invoke-virtual {p0}, Lcom/wen/fluorescence/Thread/SendTimer;->setSendTimeOutCancel()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/wen/fluorescence/Thread/SendTimer;->TimeCount:I

    .line 42
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/Thread/SendTimer;->mTimerSend:Ljava/util/Timer;

    .line 43
    new-instance v0, Lcom/wen/fluorescence/Thread/SendTimer$1;

    invoke-direct {v0, p0, p1}, Lcom/wen/fluorescence/Thread/SendTimer$1;-><init>(Lcom/wen/fluorescence/Thread/SendTimer;Lcom/wen/fluorescence/util/MyCallBack;)V

    iput-object v0, p0, Lcom/wen/fluorescence/Thread/SendTimer;->taskSend:Ljava/util/TimerTask;

    .line 60
    iget-object v1, p0, Lcom/wen/fluorescence/Thread/SendTimer;->mTimerSend:Ljava/util/Timer;

    iget-object v2, p0, Lcom/wen/fluorescence/Thread/SendTimer;->taskSend:Ljava/util/TimerTask;

    const-wide/16 v3, 0x0

    iget v0, p0, Lcom/wen/fluorescence/Thread/SendTimer;->Time_Send:I

    int-to-long v5, v0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    .line 39
    .end local p1    # "callBack":Lcom/wen/fluorescence/util/MyCallBack;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setTime_Send(I)V
    .locals 0
    .param p1, "time_Send"    # I

    .line 26
    iput p1, p0, Lcom/wen/fluorescence/Thread/SendTimer;->Time_Send:I

    .line 27
    return-void
.end method
