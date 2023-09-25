.class Lcom/wen/fluorescence/Thread/TempTimer$1;
.super Ljava/util/TimerTask;
.source "TempTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Thread/TempTimer;->startTempTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Thread/TempTimer;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Thread/TempTimer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Thread/TempTimer;

    .line 45
    iput-object p1, p0, Lcom/wen/fluorescence/Thread/TempTimer$1;->this$0:Lcom/wen/fluorescence/Thread/TempTimer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 48
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/Global;->getTestStatus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->getMachineTemp()V

    .line 51
    :cond_0
    return-void
.end method
