.class Lcom/wen/fluorescence/Fragment/SettingItemFragment$8;
.super Lcom/wen/fluorescence/util/MyOnClickListener;
.source "SettingItemFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SettingItemFragment;->selectItemForEdit(Lcom/wen/fluorescence/database/ItemPara;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SettingItemFragment;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    .line 478
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$8;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    iput-object p2, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$8;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .line 481
    invoke-super {p0, p1}, Lcom/wen/fluorescence/util/MyOnClickListener;->onClick(Landroid/view/View;)V

    .line 482
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$8;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$8;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->access$1000(Lcom/wen/fluorescence/Fragment/SettingItemFragment;)Lcom/wen/fluorescence/util/PageUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/PageUtils;->getPageNow()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->access$1100(Lcom/wen/fluorescence/Fragment/SettingItemFragment;IZ)V

    .line 483
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$8;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 484
    return-void
.end method
