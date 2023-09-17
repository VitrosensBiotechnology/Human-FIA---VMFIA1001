.class Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$7;
.super Ljava/lang/Object;
.source "SettingUserManageFragment.java"

# interfaces
.implements Lcom/wen/fluorescence/util/MyDialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->deleteUser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;

    .line 330
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$7;->this$0:Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelListener()V
    .locals 0

    .line 347
    return-void
.end method

.method public okListener()V
    .locals 6

    .line 333
    const/4 v0, 0x0

    .line 333
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$7;->this$0:Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->access$100(Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;)Landroid/widget/TableLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 334
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$7;->this$0:Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->access$100(Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;)Landroid/widget/TableLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 335
    .local v1, "children":Landroid/view/View;
    const v2, 0x7f0800a1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 336
    .local v2, "checkBox":Landroid/widget/CheckBox;
    const v3, 0x7f08025f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 337
    .local v3, "tvUserName":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 338
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$7;->this$0:Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;

    invoke-virtual {v4}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v4

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wen/fluorescence/database/DBManager;->deleteSelectedUser(Ljava/lang/String;)V

    .line 333
    .end local v1    # "children":Landroid/view/View;
    .end local v2    # "checkBox":Landroid/widget/CheckBox;
    .end local v3    # "tvUserName":Landroid/widget/TextView;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 341
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$7;->this$0:Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->access$000(Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;)V

    .line 342
    return-void
.end method
