.class Lcom/wen/fluorescence/Fragment/QCTestFragment$1$1;
.super Ljava/lang/Object;
.source "QCTestFragment.java"

# interfaces
.implements Lcom/wen/fluorescence/util/MyDialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/QCTestFragment$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wen/fluorescence/Fragment/QCTestFragment$1;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/QCTestFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/wen/fluorescence/Fragment/QCTestFragment$1;

    .line 134
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment$1$1;->this$1:Lcom/wen/fluorescence/Fragment/QCTestFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelListener()V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment$1$1;->this$1:Lcom/wen/fluorescence/Fragment/QCTestFragment$1;

    iget-object v0, v0, Lcom/wen/fluorescence/Fragment/QCTestFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCTestFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->access$000(Lcom/wen/fluorescence/Fragment/QCTestFragment;)V

    .line 143
    return-void
.end method

.method public okListener()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment$1$1;->this$1:Lcom/wen/fluorescence/Fragment/QCTestFragment$1;

    iget-object v0, v0, Lcom/wen/fluorescence/Fragment/QCTestFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCTestFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->access$600(Lcom/wen/fluorescence/Fragment/QCTestFragment;)V

    .line 138
    return-void
.end method
