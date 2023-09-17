.class Lcom/wen/fluorescence/Fragment/SystemRDFragment$1;
.super Ljava/util/TimerTask;
.source "SystemRDFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SystemRDFragment;->receiveCurrentData([I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    .line 62
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->access$000(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 65
    return-void
.end method
