.class public Lcom/wen/fluorescence/Thread/StandarTimer;
.super Ljava/lang/Object;
.source "StandarTimer.java"


# static fields
.field private static standarTimer:Lcom/wen/fluorescence/Thread/StandarTimer;


# instance fields
.field private count:I

.field private mHandler:Landroid/os/Handler;

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;

.field private startTime:J


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wen/fluorescence/Thread/StandarTimer;->mTimer:Ljava/util/Timer;

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/wen/fluorescence/Thread/StandarTimer;->startTime:J

    .line 29
    iput-object p1, p0, Lcom/wen/fluorescence/Thread/StandarTimer;->mHandler:Landroid/os/Handler;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/wen/fluorescence/Thread/StandarTimer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Thread/StandarTimer;

    .line 12
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/StandarTimer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wen/fluorescence/Thread/StandarTimer;)I
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Thread/StandarTimer;

    .line 12
    iget v0, p0, Lcom/wen/fluorescence/Thread/StandarTimer;->count:I

    return v0
.end method

.method static synthetic access$110(Lcom/wen/fluorescence/Thread/StandarTimer;)I
    .locals 2
    .param p0, "x0"    # Lcom/wen/fluorescence/Thread/StandarTimer;

    .line 12
    iget v0, p0, Lcom/wen/fluorescence/Thread/StandarTimer;->count:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/wen/fluorescence/Thread/StandarTimer;->count:I

    return v0
.end method

.method public static getInstance(Landroid/os/Handler;)Lcom/wen/fluorescence/Thread/StandarTimer;
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;

    .line 34
    sget-object v0, Lcom/wen/fluorescence/Thread/StandarTimer;->standarTimer:Lcom/wen/fluorescence/Thread/StandarTimer;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/wen/fluorescence/Thread/StandarTimer;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/Thread/StandarTimer;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/wen/fluorescence/Thread/StandarTimer;->standarTimer:Lcom/wen/fluorescence/Thread/StandarTimer;

    goto :goto_0

    .line 38
    :cond_0
    sget-object v0, Lcom/wen/fluorescence/Thread/StandarTimer;->standarTimer:Lcom/wen/fluorescence/Thread/StandarTimer;

    iput-object p0, v0, Lcom/wen/fluorescence/Thread/StandarTimer;->mHandler:Landroid/os/Handler;

    .line 40
    :goto_0
    sget-object v0, Lcom/wen/fluorescence/Thread/StandarTimer;->standarTimer:Lcom/wen/fluorescence/Thread/StandarTimer;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized setStandarTimerStart(I)V
    .locals 12
    .param p1, "countdowntime"    # I

    monitor-enter p0

    .line 46
    :try_start_0
    invoke-virtual {p0}, Lcom/wen/fluorescence/Thread/StandarTimer;->setStandarTimerStop()V

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/wen/fluorescence/Thread/StandarTimer;->startTime:J

    sub-long v4, v0, v2

    .line 48
    .local v4, "longTime":J
    const-wide/16 v0, 0x3e8

    div-long v0, v4, v0

    long-to-int v0, v0

    .line 49
    .local v0, "intTime":I
    sub-int v1, p1, v0

    iput v1, p0, Lcom/wen/fluorescence/Thread/StandarTimer;->count:I

    .line 50
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/wen/fluorescence/Thread/StandarTimer;->mTimer:Ljava/util/Timer;

    .line 51
    new-instance v1, Lcom/wen/fluorescence/Thread/StandarTimer$1;

    invoke-direct {v1, p0}, Lcom/wen/fluorescence/Thread/StandarTimer$1;-><init>(Lcom/wen/fluorescence/Thread/StandarTimer;)V

    iput-object v1, p0, Lcom/wen/fluorescence/Thread/StandarTimer;->mTimerTask:Ljava/util/TimerTask;

    .line 60
    iget-object v6, p0, Lcom/wen/fluorescence/Thread/StandarTimer;->mTimer:Ljava/util/Timer;

    iget-object v7, p0, Lcom/wen/fluorescence/Thread/StandarTimer;->mTimerTask:Ljava/util/TimerTask;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x3e8

    invoke-virtual/range {v6 .. v11}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    .line 45
    .end local v0    # "intTime":I
    .end local v4    # "longTime":J
    .end local p1    # "countdowntime":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setStandarTimerStop()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/StandarTimer;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/StandarTimer;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 68
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wen/fluorescence/Thread/StandarTimer;->mTimer:Ljava/util/Timer;

    .line 69
    iget-object v1, p0, Lcom/wen/fluorescence/Thread/StandarTimer;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/wen/fluorescence/Thread/StandarTimer;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 72
    :cond_1
    iput-object v0, p0, Lcom/wen/fluorescence/Thread/StandarTimer;->mTimerTask:Ljava/util/TimerTask;

    .line 73
    return-void
.end method

.method public setStartTime(J)V
    .locals 0
    .param p1, "startTime"    # J

    .line 22
    iput-wide p1, p0, Lcom/wen/fluorescence/Thread/StandarTimer;->startTime:J

    .line 23
    return-void
.end method
