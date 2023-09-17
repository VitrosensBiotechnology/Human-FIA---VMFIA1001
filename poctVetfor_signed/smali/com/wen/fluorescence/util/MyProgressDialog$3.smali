.class Lcom/wen/fluorescence/util/MyProgressDialog$3;
.super Ljava/lang/Object;
.source "MyProgressDialog.java"

# interfaces
.implements Lcom/wen/fluorescence/Thread/MyCircleTimer$TimerOutCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/util/MyProgressDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/util/MyProgressDialog;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/util/MyProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/util/MyProgressDialog;

    .line 58
    iput-object p1, p0, Lcom/wen/fluorescence/util/MyProgressDialog$3;->this$0:Lcom/wen/fluorescence/util/MyProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public timerPeriod()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyProgressDialog$3;->this$0:Lcom/wen/fluorescence/util/MyProgressDialog;

    invoke-static {v0}, Lcom/wen/fluorescence/util/MyProgressDialog;->access$000(Lcom/wen/fluorescence/util/MyProgressDialog;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 62
    return-void
.end method
