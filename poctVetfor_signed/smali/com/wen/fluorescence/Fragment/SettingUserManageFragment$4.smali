.class Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$4;
.super Ljava/lang/Object;
.source "SettingUserManageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->modifyUser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$etNewPwd:Landroid/widget/EditText;

.field final synthetic val$user:Lcom/wen/fluorescence/bean/User;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;Landroid/widget/EditText;Lcom/wen/fluorescence/bean/User;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;

    .line 260
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;

    iput-object p2, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$4;->val$etNewPwd:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$4;->val$user:Lcom/wen/fluorescence/bean/User;

    iput-object p4, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$4;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 263
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$4;->val$etNewPwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "newPWD":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;

    invoke-virtual {v1}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;

    const v3, 0x7f0c00c5

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 266
    return-void

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$4;->val$user:Lcom/wen/fluorescence/bean/User;

    invoke-virtual {v1}, Lcom/wen/fluorescence/bean/User;->getPasssword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;

    invoke-virtual {v1}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;

    const v3, 0x7f0c0122

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 270
    return-void

    .line 272
    :cond_1
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$4;->val$user:Lcom/wen/fluorescence/bean/User;

    invoke-virtual {v1, v0}, Lcom/wen/fluorescence/bean/User;->setPasssword(Ljava/lang/String;)V

    .line 273
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;

    invoke-virtual {v1}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v1

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$4;->val$user:Lcom/wen/fluorescence/bean/User;

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/database/DBManager;->modifyUserByName(Lcom/wen/fluorescence/bean/User;)V

    .line 274
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$4;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 275
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;

    invoke-virtual {v1}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;

    const v3, 0x7f0c00a2

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 276
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->access$000(Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;)V

    .line 277
    return-void
.end method
