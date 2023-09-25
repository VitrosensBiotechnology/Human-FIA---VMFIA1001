.class public Lcom/wen/fluorescence/Thread/TempTimer;
.super Ljava/lang/Object;
.source "TempTimer.java"


# static fields
.field private static mTempTimer:Lcom/wen/fluorescence/Thread/TempTimer;


# instance fields
.field private mTimerT:Ljava/util/Timer;

.field private final period:J

.field private task:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wen/fluorescence/Thread/TempTimer;->task:Ljava/util/TimerTask;

    .line 20
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/wen/fluorescence/Thread/TempTimer;->period:J

    return-void
.end method

.method public static getInstance()Lcom/wen/fluorescence/Thread/TempTimer;
    .locals 1

    .line 23
    sget-object v0, Lcom/wen/fluorescence/Thread/TempTimer;->mTempTimer:Lcom/wen/fluorescence/Thread/TempTimer;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/wen/fluorescence/Thread/TempTimer;

    invoke-direct {v0}, Lcom/wen/fluorescence/Thread/TempTimer;-><init>()V

    sput-object v0, Lcom/wen/fluorescence/Thread/TempTimer;->mTempTimer:Lcom/wen/fluorescence/Thread/TempTimer;

    .line 26
    :cond_0
    sget-object v0, Lcom/wen/fluorescence/Thread/TempTimer;->mTempTimer:Lcom/wen/fluorescence/Thread/TempTimer;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized startTempTimer()V
    .locals 7

    monitor-enter p0

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/TempTimer;->mTimerT:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wen/fluorescence/Thread/TempTimer;->task:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 31
    const-string v0, "as"

    const-string v1, "TempTimer has start......return"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit p0

    return-void

    .line 35
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/TempTimer;->mTimerT:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/TempTimer;->mTimerT:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 37
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wen/fluorescence/Thread/TempTimer;->mTimerT:Ljava/util/Timer;

    .line 38
    iget-object v1, p0, Lcom/wen/fluorescence/Thread/TempTimer;->task:Ljava/util/TimerTask;

    if-eqz v1, :cond_2

    .line 39
    iget-object v1, p0, Lcom/wen/fluorescence/Thread/TempTimer;->task:Ljava/util/TimerTask;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 41
    :cond_2
    iput-object v0, p0, Lcom/wen/fluorescence/Thread/TempTimer;->task:Ljava/util/TimerTask;

    .line 43
    const-string v0, "as"

    const-string v1, "startTempTimer_____"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/Thread/TempTimer;->mTimerT:Ljava/util/Timer;

    .line 45
    new-instance v0, Lcom/wen/fluorescence/Thread/TempTimer$1;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/Thread/TempTimer$1;-><init>(Lcom/wen/fluorescence/Thread/TempTimer;)V

    iput-object v0, p0, Lcom/wen/fluorescence/Thread/TempTimer;->task:Ljava/util/TimerTask;

    .line 53
    iget-object v1, p0, Lcom/wen/fluorescence/Thread/TempTimer;->mTimerT:Ljava/util/Timer;

    iget-object v2, p0, Lcom/wen/fluorescence/Thread/TempTimer;->task:Ljava/util/TimerTask;

    const-wide/16 v3, 0xc8

    const-wide/16 v5, 0x1388

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopTempTimer()V
    .locals 2

    .line 57
    const-string v0, "as"

    const-string v1, "stopTempTimer_____"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/TempTimer;->mTimerT:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/TempTimer;->mTimerT:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 60
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wen/fluorescence/Thread/TempTimer;->mTimerT:Ljava/util/Timer;

    .line 61
    iget-object v1, p0, Lcom/wen/fluorescence/Thread/TempTimer;->task:Ljava/util/TimerTask;

    if-eqz v1, :cond_1

    .line 62
    iget-object v1, p0, Lcom/wen/fluorescence/Thread/TempTimer;->task:Ljava/util/TimerTask;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 64
    :cond_1
    iput-object v0, p0, Lcom/wen/fluorescence/Thread/TempTimer;->task:Ljava/util/TimerTask;

    .line 65
    return-void
.end method
