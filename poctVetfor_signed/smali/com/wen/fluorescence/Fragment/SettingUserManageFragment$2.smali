.class Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$2;
.super Ljava/lang/Object;
.source "SettingUserManageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->addUser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$etPassword:Landroid/widget/EditText;

.field final synthetic val$etUserName:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;

    .line 176
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;

    iput-object p2, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$2;->val$etUserName:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$2;->val$etPassword:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$2;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 179
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$2;->val$etUserName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "userName":Ljava/lang/String;
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$2;->val$etPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "passWord":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 182
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 186
    :cond_0
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;

    invoke-virtual {v2}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v1, v3}, Lcom/wen/fluorescence/database/DBManager;->addUser(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    .line 187
    .local v2, "bAdd":Z
    if-eqz v2, :cond_1

    .line 188
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;

    invoke-virtual {v3}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;

    const v5, 0x7f0c01bc

    invoke-virtual {v4, v5}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 189
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;

    invoke-static {v3}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->access$000(Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;)V

    goto :goto_0

    .line 191
    :cond_1
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;

    invoke-virtual {v3}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;

    const v5, 0x7f0c01bb

    invoke-virtual {v4, v5}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 193
    :goto_0
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$2;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 194
    return-void

    .line 183
    .end local v2    # "bAdd":Z
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;

    invoke-virtual {v2}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;

    const v4, 0x7f0c0066

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 184
    return-void
.end method
