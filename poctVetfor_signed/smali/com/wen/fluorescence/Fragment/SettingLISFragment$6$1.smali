.class Lcom/wen/fluorescence/Fragment/SettingLISFragment$6$1;
.super Ljava/lang/Thread;
.source "SettingLISFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;

    .line 302
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$6$1;->this$1:Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 305
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 306
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$6$1;->this$1:Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;

    iget-object v0, v0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/util/NetUtil;->isNetworkConnect(Landroid/content/Context;)Z

    move-result v0

    .line 307
    .local v0, "isOK":Z
    if-eqz v0, :cond_0

    .line 308
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$6$1;->this$1:Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;

    iget-object v1, v1, Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-virtual {v1}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$6$1;->this$1:Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;

    iget-object v2, v2, Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->access$800(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wen/fluorescence/Thread/LISThread;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/wen/fluorescence/Thread/LISThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/Thread/LISThread;->testConnection()Z

    move-result v0

    .line 310
    :cond_0
    if-eqz v0, :cond_1

    .line 311
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$6$1;->this$1:Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;

    iget-object v1, v1, Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->access$800(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x221

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 313
    :cond_1
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$6$1;->this$1:Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;

    iget-object v1, v1, Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->access$800(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x222

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 315
    :goto_0
    return-void
.end method
