.class Lcom/wen/fluorescence/Thread/TestThread$1;
.super Ljava/lang/Object;
.source "TestThread.java"

# interfaces
.implements Lcom/wen/fluorescence/util/MyDialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Thread/TestThread;->showCancleDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Thread/TestThread;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Thread/TestThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Thread/TestThread;

    .line 166
    iput-object p1, p0, Lcom/wen/fluorescence/Thread/TestThread$1;->this$0:Lcom/wen/fluorescence/Thread/TestThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelListener()V
    .locals 0

    .line 175
    return-void
.end method

.method public okListener()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/TestThread$1;->this$0:Lcom/wen/fluorescence/Thread/TestThread;

    invoke-static {v0}, Lcom/wen/fluorescence/Thread/TestThread;->access$000(Lcom/wen/fluorescence/Thread/TestThread;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/Thread/StandarTimer;->getInstance(Landroid/os/Handler;)Lcom/wen/fluorescence/Thread/StandarTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/Thread/StandarTimer;->setStandarTimerStop()V

    .line 170
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/TestThread$1;->this$0:Lcom/wen/fluorescence/Thread/TestThread;

    invoke-static {v0}, Lcom/wen/fluorescence/Thread/TestThread;->access$000(Lcom/wen/fluorescence/Thread/TestThread;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 171
    return-void
.end method
