.class public Lcom/wen/fluorescence/Thread/UploadDataForCloudsTimer;
.super Ljava/lang/Object;
.source "UploadDataForCloudsTimer.java"


# static fields
.field private static totalTimer:Lcom/wen/fluorescence/Thread/UploadDataForCloudsTimer;


# instance fields
.field private Total_TimeOut:I

.field public mTimerTotal:Ljava/util/Timer;

.field public mTimerTotalTask:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/16 v0, 0x2af8

    iput v0, p0, Lcom/wen/fluorescence/Thread/UploadDataForCloudsTimer;->Total_TimeOut:I

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wen/fluorescence/Thread/UploadDataForCloudsTimer;->mTimerTotal:Ljava/util/Timer;

    .line 20
    iput-object v0, p0, Lcom/wen/fluorescence/Thread/UploadDataForCloudsTimer;->mTimerTotalTask:Ljava/util/TimerTask;

    return-void
.end method

.method public static getInstance()Lcom/wen/fluorescence/Thread/UploadDataForCloudsTimer;
    .locals 1

    .line 25
    sget-object v0, Lcom/wen/fluorescence/Thread/UploadDataForCloudsTimer;->totalTimer:Lcom/wen/fluorescence/Thread/UploadDataForCloudsTimer;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/wen/fluorescence/Thread/UploadDataForCloudsTimer;

    invoke-direct {v0}, Lcom/wen/fluorescence/Thread/UploadDataForCloudsTimer;-><init>()V

    sput-object v0, Lcom/wen/fluorescence/Thread/UploadDataForCloudsTimer;->totalTimer:Lcom/wen/fluorescence/Thread/UploadDataForCloudsTimer;

    .line 29
    :cond_0
    sget-object v0, Lcom/wen/fluorescence/Thread/UploadDataForCloudsTimer;->totalTimer:Lcom/wen/fluorescence/Thread/UploadDataForCloudsTimer;

    return-object v0
.end method


# virtual methods
.method public setTimerTotalCancel()V
    .locals 2

    .line 55
    const-string v0, "\u5475\u5475"

    const-string v1, "==\u5173\u95ed\u4e0a\u4f20\u4e91\u5e73\u53f0\u8ba1\u65f6\u5668==="

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/UploadDataForCloudsTimer;->mTimerTotal:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/UploadDataForCloudsTimer;->mTimerTotal:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 58
    iput-object v1, p0, Lcom/wen/fluorescence/Thread/UploadDataForCloudsTimer;->mTimerTotal:Ljava/util/Timer;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/UploadDataForCloudsTimer;->mTimerTotalTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/UploadDataForCloudsTimer;->mTimerTotalTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 62
    iput-object v1, p0, Lcom/wen/fluorescence/Thread/UploadDataForCloudsTimer;->mTimerTotalTask:Ljava/util/TimerTask;

    .line 64
    :cond_1
    return-void
.end method

.method public declared-synchronized setTimerTotalStart(Landroid/os/Handler;)V
    .locals 7
    .param p1, "handler"    # Landroid/os/Handler;

    monitor-enter p0

    .line 38
    :try_start_0
    const-string v0, "\u5475\u5475"

    const-string v1, "==\u5f00\u542f \u4e0a\u4f20\u4e91\u5e73\u53f0\u8ba1\u65f6\u5668==="

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-virtual {p0}, Lcom/wen/fluorescence/Thread/UploadDataForCloudsTimer;->setTimerTotalCancel()V

    .line 40
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/Thread/UploadDataForCloudsTimer;->mTimerTotal:Ljava/util/Timer;

    .line 41
    new-instance v0, Lcom/wen/fluorescence/Thread/UploadDataForCloudsTimer$1;

    invoke-direct {v0, p0, p1}, Lcom/wen/fluorescence/Thread/UploadDataForCloudsTimer$1;-><init>(Lcom/wen/fluorescence/Thread/UploadDataForCloudsTimer;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/wen/fluorescence/Thread/UploadDataForCloudsTimer;->mTimerTotalTask:Ljava/util/TimerTask;

    .line 47
    iget-object v1, p0, Lcom/wen/fluorescence/Thread/UploadDataForCloudsTimer;->mTimerTotal:Ljava/util/Timer;

    iget-object v2, p0, Lcom/wen/fluorescence/Thread/UploadDataForCloudsTimer;->mTimerTotalTask:Ljava/util/TimerTask;

    const-wide/16 v3, 0xc8

    iget v0, p0, Lcom/wen/fluorescence/Thread/UploadDataForCloudsTimer;->Total_TimeOut:I

    int-to-long v5, v0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p0

    return-void

    .line 37
    .end local p1    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
