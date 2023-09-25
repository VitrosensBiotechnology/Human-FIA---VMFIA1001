.class Lcom/wen/fluorescence/Thread/TotalTimer$1;
.super Ljava/util/TimerTask;
.source "TotalTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Thread/TotalTimer;->setTimerTotalStart(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Thread/TotalTimer;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Thread/TotalTimer;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Thread/TotalTimer;

    .line 39
    iput-object p1, p0, Lcom/wen/fluorescence/Thread/TotalTimer$1;->this$0:Lcom/wen/fluorescence/Thread/TotalTimer;

    iput-object p2, p0, Lcom/wen/fluorescence/Thread/TotalTimer$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/TotalTimer$1;->val$handler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 43
    return-void
.end method
