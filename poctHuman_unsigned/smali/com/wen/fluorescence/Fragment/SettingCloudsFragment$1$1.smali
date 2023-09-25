.class Lcom/wen/fluorescence/Fragment/SettingCloudsFragment$1$1;
.super Ljava/lang/Object;
.source "SettingCloudsFragment.java"

# interfaces
.implements Lcom/wen/fluorescence/net/CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SettingCloudsFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wen/fluorescence/Fragment/SettingCloudsFragment$1;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SettingCloudsFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/wen/fluorescence/Fragment/SettingCloudsFragment$1;

    .line 68
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment$1$1;->this$1:Lcom/wen/fluorescence/Fragment/SettingCloudsFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment$1$1;->this$1:Lcom/wen/fluorescence/Fragment/SettingCloudsFragment$1;

    iget-object v0, v0, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 77
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment$1$1;->this$1:Lcom/wen/fluorescence/Fragment/SettingCloudsFragment$1;

    iget-object v0, v0, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment$1$1;->this$1:Lcom/wen/fluorescence/Fragment/SettingCloudsFragment$1;

    iget-object v1, v1, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;

    const v2, 0x7f0c0029

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 72
    return-void
.end method
