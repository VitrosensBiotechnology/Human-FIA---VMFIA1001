.class public Lcom/wen/fluorescence/Thread/MyCircleTimer;
.super Ljava/lang/Object;
.source "MyCircleTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wen/fluorescence/Thread/MyCircleTimer$TimerOutCallBack;
    }
.end annotation


# static fields
.field private static myTimer:Lcom/wen/fluorescence/Thread/MyCircleTimer;


# instance fields
.field public mTimer:Ljava/util/Timer;

.field public mTimerTask:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wen/fluorescence/Thread/MyCircleTimer;->mTimer:Ljava/util/Timer;

    .line 11
    iput-object v0, p0, Lcom/wen/fluorescence/Thread/MyCircleTimer;->mTimerTask:Ljava/util/TimerTask;

    return-void
.end method

.method public static getInstance()Lcom/wen/fluorescence/Thread/MyCircleTimer;
    .locals 1

    .line 14
    sget-object v0, Lcom/wen/fluorescence/Thread/MyCircleTimer;->myTimer:Lcom/wen/fluorescence/Thread/MyCircleTimer;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/wen/fluorescence/Thread/MyCircleTimer;

    invoke-direct {v0}, Lcom/wen/fluorescence/Thread/MyCircleTimer;-><init>()V

    sput-object v0, Lcom/wen/fluorescence/Thread/MyCircleTimer;->myTimer:Lcom/wen/fluorescence/Thread/MyCircleTimer;

    .line 17
    :cond_0
    sget-object v0, Lcom/wen/fluorescence/Thread/MyCircleTimer;->myTimer:Lcom/wen/fluorescence/Thread/MyCircleTimer;

    return-object v0
.end method


# virtual methods
.method public setCircleTimerStart(Lcom/wen/fluorescence/Thread/MyCircleTimer$TimerOutCallBack;I)V
    .locals 7
    .param p1, "callBack"    # Lcom/wen/fluorescence/Thread/MyCircleTimer$TimerOutCallBack;
    .param p2, "timeCycle"    # I

    .line 24
    invoke-virtual {p0}, Lcom/wen/fluorescence/Thread/MyCircleTimer;->setTimerCancel()V

    .line 25
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/Thread/MyCircleTimer;->mTimer:Ljava/util/Timer;

    .line 26
    new-instance v0, Lcom/wen/fluorescence/Thread/MyCircleTimer$1;

    invoke-direct {v0, p0, p1}, Lcom/wen/fluorescence/Thread/MyCircleTimer$1;-><init>(Lcom/wen/fluorescence/Thread/MyCircleTimer;Lcom/wen/fluorescence/Thread/MyCircleTimer$TimerOutCallBack;)V

    iput-object v0, p0, Lcom/wen/fluorescence/Thread/MyCircleTimer;->mTimerTask:Ljava/util/TimerTask;

    .line 32
    iget-object v1, p0, Lcom/wen/fluorescence/Thread/MyCircleTimer;->mTimer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/wen/fluorescence/Thread/MyCircleTimer;->mTimerTask:Ljava/util/TimerTask;

    int-to-long v5, p2

    const-wide/16 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 33
    return-void
.end method

.method public setTimerCancel()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/MyCircleTimer;->mTimer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/MyCircleTimer;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 41
    iput-object v1, p0, Lcom/wen/fluorescence/Thread/MyCircleTimer;->mTimer:Ljava/util/Timer;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/MyCircleTimer;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/MyCircleTimer;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 45
    iput-object v1, p0, Lcom/wen/fluorescence/Thread/MyCircleTimer;->mTimerTask:Ljava/util/TimerTask;

    .line 47
    :cond_1
    return-void
.end method
