.class Lcom/wen/fluorescence/download/UpdateManager$2$1;
.super Ljava/lang/Object;
.source "UpdateManager.java"

# interfaces
.implements Lcom/wen/fluorescence/util/MyDialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/download/UpdateManager$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wen/fluorescence/download/UpdateManager$2;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/download/UpdateManager$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/wen/fluorescence/download/UpdateManager$2;

    .line 66
    iput-object p1, p0, Lcom/wen/fluorescence/download/UpdateManager$2$1;->this$1:Lcom/wen/fluorescence/download/UpdateManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelListener()V
    .locals 0

    .line 75
    return-void
.end method

.method public okListener()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/wen/fluorescence/download/UpdateManager$2$1;->this$1:Lcom/wen/fluorescence/download/UpdateManager$2;

    iget-object v0, v0, Lcom/wen/fluorescence/download/UpdateManager$2;->this$0:Lcom/wen/fluorescence/download/UpdateManager;

    invoke-static {v0}, Lcom/wen/fluorescence/download/UpdateManager;->access$300(Lcom/wen/fluorescence/download/UpdateManager;)V

    .line 70
    return-void
.end method
