.class Lcom/wen/fluorescence/Fragment/SettingItemFragment$1;
.super Ljava/lang/Object;
.source "SettingItemFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SettingItemFragment;->setViewIncident()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

.field final synthetic val$index:I

.field final synthetic val$tableRow:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SettingItemFragment;Landroid/view/View;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    .line 91
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    iput-object p2, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$1;->val$tableRow:Landroid/view/View;

    iput p3, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .line 94
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->access$000(Lcom/wen/fluorescence/Fragment/SettingItemFragment;)V

    .line 96
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$1;->val$tableRow:Landroid/view/View;

    const v1, 0x7f080209

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 97
    .local v0, "tvItem":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$1;->val$tableRow:Landroid/view/View;

    const v2, 0x7f08020e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 98
    .local v1, "tvItemCode":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$1;->val$tableRow:Landroid/view/View;

    const v3, 0x7f0800e1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 99
    .local v2, "etRange":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$1;->val$tableRow:Landroid/view/View;

    const v4, 0x7f0800f1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 100
    .local v3, "etUnit":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-virtual {v4}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f050058

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 101
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-virtual {v4}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 102
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-virtual {v4}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 103
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-virtual {v4}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 104
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    iget v6, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$1;->val$index:I

    invoke-static {v5, v6}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->access$200(Lcom/wen/fluorescence/Fragment/SettingItemFragment;I)Lcom/wen/fluorescence/database/ItemPara;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->access$102(Lcom/wen/fluorescence/Fragment/SettingItemFragment;Lcom/wen/fluorescence/database/ItemPara;)Lcom/wen/fluorescence/database/ItemPara;

    .line 105
    return-void
.end method
