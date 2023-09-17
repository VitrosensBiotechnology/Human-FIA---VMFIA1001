.class public Lcom/wen/fluorescence/Thread/WifiResetTimer;
.super Ljava/lang/Object;
.source "WifiResetTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wen/fluorescence/Thread/WifiResetTimer$TimerOutCallBack;
    }
.end annotation


# static fields
.field private static myTimer:Lcom/wen/fluorescence/Thread/WifiResetTimer;


# instance fields
.field public mTimer:Ljava/util/Timer;

.field public mTimerTask:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wen/fluorescence/Thread/WifiResetTimer;->mTimer:Ljava/util/Timer;

    .line 14
    iput-object v0, p0, Lcom/wen/fluorescence/Thread/WifiResetTimer;->mTimerTask:Ljava/util/TimerTask;

    return-void
.end method

.method public static getInstance()Lcom/wen/fluorescence/Thread/WifiResetTimer;
    .locals 1

    .line 17
    sget-object v0, Lcom/wen/fluorescence/Thread/WifiResetTimer;->myTimer:Lcom/wen/fluorescence/Thread/WifiResetTimer;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/wen/fluorescence/Thread/WifiResetTimer;

    invoke-direct {v0}, Lcom/wen/fluorescence/Thread/WifiResetTimer;-><init>()V

    sput-object v0, Lcom/wen/fluorescence/Thread/WifiResetTimer;->myTimer:Lcom/wen/fluorescence/Thread/WifiResetTimer;

    .line 20
    :cond_0
    sget-object v0, Lcom/wen/fluorescence/Thread/WifiResetTimer;->myTimer:Lcom/wen/fluorescence/Thread/WifiResetTimer;

    return-object v0
.end method


# virtual methods
.method public setTimerCancel()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/WifiResetTimer;->mTimer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/WifiResetTimer;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 44
    iput-object v1, p0, Lcom/wen/fluorescence/Thread/WifiResetTimer;->mTimer:Ljava/util/Timer;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/WifiResetTimer;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/WifiResetTimer;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 48
    iput-object v1, p0, Lcom/wen/fluorescence/Thread/WifiResetTimer;->mTimerTask:Ljava/util/TimerTask;

    .line 50
    :cond_1
    return-void
.end method

.method public setTimerStart(Lcom/wen/fluorescence/Thread/WifiResetTimer$TimerOutCallBack;I)V
    .locals 4
    .param p1, "callBack"    # Lcom/wen/fluorescence/Thread/WifiResetTimer$TimerOutCallBack;
    .param p2, "timeOut"    # I

    .line 27
    invoke-virtual {p0}, Lcom/wen/fluorescence/Thread/WifiResetTimer;->setTimerCancel()V

    .line 28
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/Thread/WifiResetTimer;->mTimer:Ljava/util/Timer;

    .line 29
    new-instance v0, Lcom/wen/fluorescence/Thread/WifiResetTimer$1;

    invoke-direct {v0, p0, p1}, Lcom/wen/fluorescence/Thread/WifiResetTimer$1;-><init>(Lcom/wen/fluorescence/Thread/WifiResetTimer;Lcom/wen/fluorescence/Thread/WifiResetTimer$TimerOutCallBack;)V

    iput-object v0, p0, Lcom/wen/fluorescence/Thread/WifiResetTimer;->mTimerTask:Ljava/util/TimerTask;

    .line 35
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/WifiResetTimer;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/wen/fluorescence/Thread/WifiResetTimer;->mTimerTask:Ljava/util/TimerTask;

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 36
    return-void
.end method
