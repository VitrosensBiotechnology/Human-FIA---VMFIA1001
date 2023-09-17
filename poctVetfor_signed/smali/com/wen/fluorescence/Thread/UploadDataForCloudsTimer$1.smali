.class Lcom/wen/fluorescence/Thread/UploadDataForCloudsTimer$1;
.super Ljava/util/TimerTask;
.source "UploadDataForCloudsTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Thread/UploadDataForCloudsTimer;->setTimerTotalStart(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Thread/UploadDataForCloudsTimer;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Thread/UploadDataForCloudsTimer;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Thread/UploadDataForCloudsTimer;

    .line 41
    iput-object p1, p0, Lcom/wen/fluorescence/Thread/UploadDataForCloudsTimer$1;->this$0:Lcom/wen/fluorescence/Thread/UploadDataForCloudsTimer;

    iput-object p2, p0, Lcom/wen/fluorescence/Thread/UploadDataForCloudsTimer$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/UploadDataForCloudsTimer$1;->val$handler:Landroid/os/Handler;

    const/16 v1, 0x501

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 45
    return-void
.end method
