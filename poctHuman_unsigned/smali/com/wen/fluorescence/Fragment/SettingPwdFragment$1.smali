.class Lcom/wen/fluorescence/Fragment/SettingPwdFragment$1;
.super Ljava/lang/Object;
.source "SettingPwdFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SettingPwdFragment;->setViewIncident()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SettingPwdFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SettingPwdFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SettingPwdFragment;

    .line 45
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SettingPwdFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingPwdFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingPwdFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingPwdFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SettingPwdFragment;->access$000(Lcom/wen/fluorescence/Fragment/SettingPwdFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingPwdFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingPwdFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SettingPwdFragment;->access$100(Lcom/wen/fluorescence/Fragment/SettingPwdFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingPwdFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingPwdFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SettingPwdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v0

    const-string v2, "admin"

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingPwdFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingPwdFragment;

    invoke-static {v3}, Lcom/wen/fluorescence/Fragment/SettingPwdFragment;->access$000(Lcom/wen/fluorescence/Fragment/SettingPwdFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/wen/fluorescence/database/DBManager;->loginCheck(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 53
    .local v0, "isLogin":Z
    if-nez v0, :cond_1

    .line 54
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingPwdFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingPwdFragment;

    invoke-virtual {v2}, Lcom/wen/fluorescence/Fragment/SettingPwdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingPwdFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingPwdFragment;

    const v4, 0x7f0c0173

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/Fragment/SettingPwdFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 55
    return-void

    .line 57
    :cond_1
    new-instance v1, Lcom/wen/fluorescence/bean/User;

    invoke-direct {v1}, Lcom/wen/fluorescence/bean/User;-><init>()V

    .line 58
    .local v1, "user":Lcom/wen/fluorescence/bean/User;
    const-string v2, "admin"

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/bean/User;->setName(Ljava/lang/String;)V

    .line 59
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingPwdFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingPwdFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/SettingPwdFragment;->access$100(Lcom/wen/fluorescence/Fragment/SettingPwdFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/bean/User;->setPasssword(Ljava/lang/String;)V

    .line 60
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingPwdFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingPwdFragment;

    invoke-virtual {v2}, Lcom/wen/fluorescence/Fragment/SettingPwdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/wen/fluorescence/database/DBManager;->modifyUserByName(Lcom/wen/fluorescence/bean/User;)V

    .line 61
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingPwdFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingPwdFragment;

    invoke-virtual {v2}, Lcom/wen/fluorescence/Fragment/SettingPwdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingPwdFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingPwdFragment;

    const v4, 0x7f0c00a2

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/Fragment/SettingPwdFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/wen/fluorescence/Fragment/SettingPwdFragment$1$1;

    invoke-direct {v4, p0}, Lcom/wen/fluorescence/Fragment/SettingPwdFragment$1$1;-><init>(Lcom/wen/fluorescence/Fragment/SettingPwdFragment$1;)V

    invoke-static {v2, v3, v4}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 76
    return-void

    .line 49
    .end local v0    # "isLogin":Z
    .end local v1    # "user":Lcom/wen/fluorescence/bean/User;
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingPwdFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingPwdFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SettingPwdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingPwdFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingPwdFragment;

    const v3, 0x7f0c0102

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/Fragment/SettingPwdFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 50
    return-void
.end method
