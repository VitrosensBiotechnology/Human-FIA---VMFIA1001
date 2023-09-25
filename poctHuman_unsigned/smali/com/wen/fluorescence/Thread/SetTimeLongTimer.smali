.class public Lcom/wen/fluorescence/Thread/SetTimeLongTimer;
.super Ljava/lang/Object;
.source "SetTimeLongTimer.java"


# static fields
.field private static sendTimer:Lcom/wen/fluorescence/Thread/SetTimeLongTimer;


# instance fields
.field private mTimerSend:Ljava/util/Timer;

.field private taskSend:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/wen/fluorescence/Thread/SetTimeLongTimer;
    .locals 1

    .line 24
    sget-object v0, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->sendTimer:Lcom/wen/fluorescence/Thread/SetTimeLongTimer;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;

    invoke-direct {v0}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;-><init>()V

    sput-object v0, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->sendTimer:Lcom/wen/fluorescence/Thread/SetTimeLongTimer;

    .line 28
    :cond_0
    sget-object v0, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->sendTimer:Lcom/wen/fluorescence/Thread/SetTimeLongTimer;

    return-object v0
.end method


# virtual methods
.method public setTimerCancel()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->mTimerSend:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->mTimerSend:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 48
    iput-object v1, p0, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->mTimerSend:Ljava/util/Timer;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->taskSend:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->taskSend:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 52
    iput-object v1, p0, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->taskSend:Ljava/util/TimerTask;

    .line 54
    :cond_1
    return-void
.end method

.method public declared-synchronized setTimerStart(Landroid/os/Handler;I)V
    .locals 7
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "what"    # I

    monitor-enter p0

    .line 33
    :try_start_0
    invoke-virtual {p0}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->setTimerCancel()V

    .line 34
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->mTimerSend:Ljava/util/Timer;

    .line 35
    new-instance v0, Lcom/wen/fluorescence/Thread/SetTimeLongTimer$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer$1;-><init>(Lcom/wen/fluorescence/Thread/SetTimeLongTimer;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->taskSend:Ljava/util/TimerTask;

    .line 42
    iget-object v1, p0, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->mTimerSend:Ljava/util/Timer;

    iget-object v2, p0, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->taskSend:Ljava/util/TimerTask;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x64

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    .line 32
    .end local p1    # "handler":Landroid/os/Handler;
    .end local p2    # "what":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
