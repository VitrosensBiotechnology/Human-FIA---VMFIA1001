.class Lcom/wen/fluorescence/util/MyProgressDialog$4;
.super Landroid/os/Handler;
.source "MyProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/util/MyProgressDialog;
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

    .line 81
    iput-object p1, p0, Lcom/wen/fluorescence/util/MyProgressDialog$4;->this$0:Lcom/wen/fluorescence/util/MyProgressDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 84
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x100

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyProgressDialog$4;->this$0:Lcom/wen/fluorescence/util/MyProgressDialog;

    iget v1, v0, Lcom/wen/fluorescence/util/MyProgressDialog;->Progress:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/wen/fluorescence/util/MyProgressDialog;->Progress:I

    const/16 v0, 0x63

    if-le v1, v0, :cond_1

    .line 90
    iget-object v1, p0, Lcom/wen/fluorescence/util/MyProgressDialog$4;->this$0:Lcom/wen/fluorescence/util/MyProgressDialog;

    iput v0, v1, Lcom/wen/fluorescence/util/MyProgressDialog;->Progress:I

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyProgressDialog$4;->this$0:Lcom/wen/fluorescence/util/MyProgressDialog;

    invoke-static {v0}, Lcom/wen/fluorescence/util/MyProgressDialog;->access$100(Lcom/wen/fluorescence/util/MyProgressDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyProgressDialog$4;->this$0:Lcom/wen/fluorescence/util/MyProgressDialog;

    iget v1, v1, Lcom/wen/fluorescence/util/MyProgressDialog;->Progress:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 95
    :goto_0
    return-void
.end method
