.class public Lcom/wen/fluorescence/Thread/TotalTimer;
.super Ljava/lang/Object;
.source "TotalTimer.java"


# static fields
.field private static totalTimer:Lcom/wen/fluorescence/Thread/TotalTimer;


# instance fields
.field private Total_TimeOut:I

.field public mTimerTotal:Ljava/util/Timer;

.field public mTimerTotalTask:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/16 v0, 0x61a8

    iput v0, p0, Lcom/wen/fluorescence/Thread/TotalTimer;->Total_TimeOut:I

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wen/fluorescence/Thread/TotalTimer;->mTimerTotal:Ljava/util/Timer;

    .line 19
    iput-object v0, p0, Lcom/wen/fluorescence/Thread/TotalTimer;->mTimerTotalTask:Ljava/util/TimerTask;

    return-void
.end method

.method public static getInstance()Lcom/wen/fluorescence/Thread/TotalTimer;
    .locals 1

    .line 24
    sget-object v0, Lcom/wen/fluorescence/Thread/TotalTimer;->totalTimer:Lcom/wen/fluorescence/Thread/TotalTimer;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/wen/fluorescence/Thread/TotalTimer;

    invoke-direct {v0}, Lcom/wen/fluorescence/Thread/TotalTimer;-><init>()V

    sput-object v0, Lcom/wen/fluorescence/Thread/TotalTimer;->totalTimer:Lcom/wen/fluorescence/Thread/TotalTimer;

    .line 28
    :cond_0
    sget-object v0, Lcom/wen/fluorescence/Thread/TotalTimer;->totalTimer:Lcom/wen/fluorescence/Thread/TotalTimer;

    return-object v0
.end method


# virtual methods
.method public setTimerTotalCancel()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/TotalTimer;->mTimerTotal:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/TotalTimer;->mTimerTotal:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 55
    iput-object v1, p0, Lcom/wen/fluorescence/Thread/TotalTimer;->mTimerTotal:Ljava/util/Timer;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/TotalTimer;->mTimerTotalTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/TotalTimer;->mTimerTotalTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 59
    iput-object v1, p0, Lcom/wen/fluorescence/Thread/TotalTimer;->mTimerTotalTask:Ljava/util/TimerTask;

    .line 61
    :cond_1
    return-void
.end method

.method public declared-synchronized setTimerTotalStart(Landroid/os/Handler;)V
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;

    monitor-enter p0

    .line 37
    :try_start_0
    invoke-virtual {p0}, Lcom/wen/fluorescence/Thread/TotalTimer;->setTimerTotalCancel()V

    .line 38
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/Thread/TotalTimer;->mTimerTotal:Ljava/util/Timer;

    .line 39
    new-instance v0, Lcom/wen/fluorescence/Thread/TotalTimer$1;

    invoke-direct {v0, p0, p1}, Lcom/wen/fluorescence/Thread/TotalTimer$1;-><init>(Lcom/wen/fluorescence/Thread/TotalTimer;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/wen/fluorescence/Thread/TotalTimer;->mTimerTotalTask:Ljava/util/TimerTask;

    .line 45
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/TotalTimer;->mTimerTotal:Ljava/util/Timer;

    iget-object v1, p0, Lcom/wen/fluorescence/Thread/TotalTimer;->mTimerTotalTask:Ljava/util/TimerTask;

    iget v2, p0, Lcom/wen/fluorescence/Thread/TotalTimer;->Total_TimeOut:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    return-void

    .line 36
    .end local p1    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
