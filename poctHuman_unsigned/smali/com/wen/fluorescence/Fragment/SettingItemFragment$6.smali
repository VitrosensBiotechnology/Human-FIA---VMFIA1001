.class Lcom/wen/fluorescence/Fragment/SettingItemFragment$6;
.super Ljava/lang/Object;
.source "SettingItemFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$selectItemPara:Lcom/wen/fluorescence/database/ItemPara;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SettingItemFragment;Lcom/wen/fluorescence/database/ItemPara;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    .line 435
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    iput-object p2, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$6;->val$selectItemPara:Lcom/wen/fluorescence/database/ItemPara;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 438
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$6;->val$selectItemPara:Lcom/wen/fluorescence/database/ItemPara;

    invoke-static {v0, v1}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->access$1400(Lcom/wen/fluorescence/Fragment/SettingItemFragment;Lcom/wen/fluorescence/database/ItemPara;)V

    .line 439
    return-void
.end method
