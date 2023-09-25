.class Lcom/wen/fluorescence/Fragment/QCDataFragment$1;
.super Landroid/os/Handler;
.source "QCDataFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/Fragment/QCDataFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/QCDataFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/QCDataFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/QCDataFragment;

    .line 67
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCDataFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 70
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 75
    :pswitch_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCDataFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/wen/fluorescence/MainActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/MainActivity;->setUpLisServer(Z)V

    goto :goto_0

    .line 72
    :pswitch_1
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCDataFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/wen/fluorescence/MainActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/MainActivity;->setUpLisServer(Z)V

    .line 73
    nop

    .line 78
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 79
    return-void

    :pswitch_data_0
    .packed-switch 0x703
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
