.class Lcom/wen/fluorescence/Fragment/HomeFragment$1$4;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/wen/fluorescence/util/MyPassDialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/HomeFragment$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wen/fluorescence/Fragment/HomeFragment$1;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/HomeFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/wen/fluorescence/Fragment/HomeFragment$1;

    .line 289
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1$4;->this$1:Lcom/wen/fluorescence/Fragment/HomeFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelListener()V
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1$4;->this$1:Lcom/wen/fluorescence/Fragment/HomeFragment$1;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->sendEmptyMessage(I)Z

    .line 299
    return-void
.end method

.method public okListener(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 292
    invoke-static {}, Lcom/wen/fluorescence/Thread/TotalTimer;->getInstance()Lcom/wen/fluorescence/Thread/TotalTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1$4;->this$1:Lcom/wen/fluorescence/Fragment/HomeFragment$1;

    iget-object v1, v1, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$1300(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/Thread/TotalTimer;->setTimerTotalStart(Landroid/os/Handler;)V

    .line 293
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1$4;->this$1:Lcom/wen/fluorescence/Fragment/HomeFragment$1;

    iget-object v0, v0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/Thread/TestThread;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/Thread/TestThread;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1$4;->this$1:Lcom/wen/fluorescence/Fragment/HomeFragment$1;

    iget-object v1, v1, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$1600(Lcom/wen/fluorescence/Fragment/HomeFragment;)Lcom/wen/fluorescence/database/TestResult;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/wen/fluorescence/Thread/TestThread;->startTestBybatNumber(Lcom/wen/fluorescence/database/TestResult;Ljava/lang/String;)V

    .line 294
    return-void
.end method
