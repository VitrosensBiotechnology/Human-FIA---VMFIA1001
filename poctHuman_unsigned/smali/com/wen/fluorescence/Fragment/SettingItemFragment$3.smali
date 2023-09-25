.class Lcom/wen/fluorescence/Fragment/SettingItemFragment$3;
.super Ljava/lang/Object;
.source "SettingItemFragment.java"

# interfaces
.implements Lcom/wen/fluorescence/util/MyDialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SettingItemFragment;->resetItemParameters()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SettingItemFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    .line 296
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelListener()V
    .locals 0

    .line 308
    return-void
.end method

.method public okListener()V
    .locals 3

    .line 299
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/database/DBManager;->reSetItemParas()V

    .line 300
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->access$1000(Lcom/wen/fluorescence/Fragment/SettingItemFragment;)Lcom/wen/fluorescence/util/PageUtils;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/util/PageUtils;->setPageNow(I)V

    .line 301
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->access$1000(Lcom/wen/fluorescence/Fragment/SettingItemFragment;)Lcom/wen/fluorescence/util/PageUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/PageUtils;->getPageNow()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->access$1100(Lcom/wen/fluorescence/Fragment/SettingItemFragment;IZ)V

    .line 302
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    const v2, 0x7f0c0146

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 303
    return-void
.end method
