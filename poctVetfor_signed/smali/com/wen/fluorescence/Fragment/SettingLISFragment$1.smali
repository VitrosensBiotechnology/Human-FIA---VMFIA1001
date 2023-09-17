.class Lcom/wen/fluorescence/Fragment/SettingLISFragment$1;
.super Landroid/os/Handler;
.source "SettingLISFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/Fragment/SettingLISFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    .line 48
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 51
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 56
    :sswitch_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/wen/fluorescence/MainActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/MainActivity;->setUpLisServer(Z)V

    .line 57
    goto :goto_0

    .line 53
    :sswitch_1
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/wen/fluorescence/MainActivity;

    invoke-virtual {v0, v2}, Lcom/wen/fluorescence/MainActivity;->setUpLisServer(Z)V

    .line 54
    goto :goto_0

    .line 63
    :sswitch_2
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    const v4, 0x7f0c0028

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 64
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->access$000(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 59
    :sswitch_3
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    const v4, 0x7f0c0029

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 60
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->access$000(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 61
    nop

    .line 67
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 68
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x221 -> :sswitch_3
        0x222 -> :sswitch_2
        0x703 -> :sswitch_1
        0x704 -> :sswitch_0
    .end sparse-switch
.end method
