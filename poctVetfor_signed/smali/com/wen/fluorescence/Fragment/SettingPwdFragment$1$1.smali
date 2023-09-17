.class Lcom/wen/fluorescence/Fragment/SettingPwdFragment$1$1;
.super Ljava/lang/Object;
.source "SettingPwdFragment.java"

# interfaces
.implements Lcom/wen/fluorescence/util/MyDialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SettingPwdFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wen/fluorescence/Fragment/SettingPwdFragment$1;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SettingPwdFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/wen/fluorescence/Fragment/SettingPwdFragment$1;

    .line 61
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SettingPwdFragment$1$1;->this$1:Lcom/wen/fluorescence/Fragment/SettingPwdFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelListener()V
    .locals 3

    .line 71
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingPwdFragment$1$1;->this$1:Lcom/wen/fluorescence/Fragment/SettingPwdFragment$1;

    iget-object v1, v1, Lcom/wen/fluorescence/Fragment/SettingPwdFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingPwdFragment;

    invoke-virtual {v1}, Lcom/wen/fluorescence/Fragment/SettingPwdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/wen/fluorescence/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 73
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingPwdFragment$1$1;->this$1:Lcom/wen/fluorescence/Fragment/SettingPwdFragment$1;

    iget-object v1, v1, Lcom/wen/fluorescence/Fragment/SettingPwdFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingPwdFragment;

    invoke-virtual {v1}, Lcom/wen/fluorescence/Fragment/SettingPwdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 74
    return-void
.end method

.method public okListener()V
    .locals 3

    .line 64
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingPwdFragment$1$1;->this$1:Lcom/wen/fluorescence/Fragment/SettingPwdFragment$1;

    iget-object v1, v1, Lcom/wen/fluorescence/Fragment/SettingPwdFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingPwdFragment;

    invoke-virtual {v1}, Lcom/wen/fluorescence/Fragment/SettingPwdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/wen/fluorescence/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 66
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingPwdFragment$1$1;->this$1:Lcom/wen/fluorescence/Fragment/SettingPwdFragment$1;

    iget-object v1, v1, Lcom/wen/fluorescence/Fragment/SettingPwdFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingPwdFragment;

    invoke-virtual {v1}, Lcom/wen/fluorescence/Fragment/SettingPwdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 67
    return-void
.end method
