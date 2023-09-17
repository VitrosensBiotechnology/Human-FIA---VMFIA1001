.class Lcom/wen/fluorescence/download/UpdateManager$3;
.super Ljava/lang/Object;
.source "UpdateManager.java"

# interfaces
.implements Lcom/wen/fluorescence/download/DownloadTool$DownLoadCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/download/UpdateManager;->startUpdateApk()V
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

    .line 127
    iput-object p1, p0, Lcom/wen/fluorescence/download/UpdateManager$3;->this$0:Lcom/wen/fluorescence/download/UpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downLoadFaile()V
    .locals 2

    .line 136
    const-string v0, "asd"

    const-string v1, "=======APK downLoad Faile"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/wen/fluorescence/download/UpdateManager$3;->this$0:Lcom/wen/fluorescence/download/UpdateManager;

    invoke-static {v0}, Lcom/wen/fluorescence/download/UpdateManager;->access$000(Lcom/wen/fluorescence/download/UpdateManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 138
    return-void
.end method

.method public downLoadSuccess()V
    .locals 2

    .line 130
    const-string v0, "asd"

    const-string v1, "=======APK downLoad Success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/wen/fluorescence/download/UpdateManager$3;->this$0:Lcom/wen/fluorescence/download/UpdateManager;

    invoke-static {v0}, Lcom/wen/fluorescence/download/UpdateManager;->access$000(Lcom/wen/fluorescence/download/UpdateManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 132
    return-void
.end method
