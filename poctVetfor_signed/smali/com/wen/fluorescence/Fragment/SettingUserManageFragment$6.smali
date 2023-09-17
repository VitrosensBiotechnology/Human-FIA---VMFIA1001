.class Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$6;
.super Ljava/lang/Object;
.source "SettingUserManageFragment.java"

# interfaces
.implements Lcom/wen/fluorescence/util/MyDialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->clearAllUser()V
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

    .line 293
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelListener()V
    .locals 0

    .line 303
    return-void
.end method

.method public okListener()V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/database/DBManager;->deleteAllNormalUser()V

    .line 297
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->access$000(Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;)V

    .line 298
    return-void
.end method
