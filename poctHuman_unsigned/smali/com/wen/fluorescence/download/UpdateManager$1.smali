.class Lcom/wen/fluorescence/download/UpdateManager$1;
.super Ljava/lang/Object;
.source "UpdateManager.java"

# interfaces
.implements Lcom/wen/fluorescence/download/DownloadTool$DownLoadCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/download/UpdateManager;->startUpdateConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/download/UpdateManager;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/download/UpdateManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/download/UpdateManager;

    .line 37
    iput-object p1, p0, Lcom/wen/fluorescence/download/UpdateManager$1;->this$0:Lcom/wen/fluorescence/download/UpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downLoadFaile()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/wen/fluorescence/download/UpdateManager$1;->this$0:Lcom/wen/fluorescence/download/UpdateManager;

    invoke-static {v0}, Lcom/wen/fluorescence/download/UpdateManager;->access$000(Lcom/wen/fluorescence/download/UpdateManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 46
    return-void
.end method

.method public downLoadSuccess()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/wen/fluorescence/download/UpdateManager$1;->this$0:Lcom/wen/fluorescence/download/UpdateManager;

    invoke-static {v0}, Lcom/wen/fluorescence/download/UpdateManager;->access$000(Lcom/wen/fluorescence/download/UpdateManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 41
    return-void
.end method
