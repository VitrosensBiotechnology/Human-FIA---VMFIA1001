.class Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$10;
.super Ljava/util/TimerTask;
.source "SystemAdvancedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->receiveCurrentData([I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    .line 542
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$10;->this$0:Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 544
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$10;->this$0:Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->access$700(Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 545
    return-void
.end method
