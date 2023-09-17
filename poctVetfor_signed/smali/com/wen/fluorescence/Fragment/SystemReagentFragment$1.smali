.class Lcom/wen/fluorescence/Fragment/SystemReagentFragment$1;
.super Lcom/wen/fluorescence/util/MyOnClickListener;
.source "SystemReagentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->setViewIncident()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SystemReagentFragment;

.field final synthetic val$tableRow:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SystemReagentFragment;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SystemReagentFragment;

    .line 108
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemReagentFragment;

    iput-object p2, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment$1;->val$tableRow:Landroid/view/View;

    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .line 111
    invoke-super {p0, p1}, Lcom/wen/fluorescence/util/MyOnClickListener;->onClick(Landroid/view/View;)V

    .line 113
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemReagentFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->access$000(Lcom/wen/fluorescence/Fragment/SystemReagentFragment;)V

    .line 115
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment$1;->val$tableRow:Landroid/view/View;

    const v1, 0x7f080209

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 116
    .local v0, "tvItemSelect":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment$1;->val$tableRow:Landroid/view/View;

    const v2, 0x7f0801ee

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 117
    .local v1, "tvBatchNumSelect":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment$1;->val$tableRow:Landroid/view/View;

    const v3, 0x7f080261

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 118
    .local v2, "tvValidity":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemReagentFragment;

    invoke-virtual {v3}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f050058

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 119
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemReagentFragment;

    invoke-virtual {v3}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 120
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemReagentFragment;

    invoke-virtual {v3}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 121
    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 122
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemReagentFragment;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->access$102(Lcom/wen/fluorescence/Fragment/SystemReagentFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    :cond_0
    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 125
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemReagentFragment;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->access$202(Lcom/wen/fluorescence/Fragment/SystemReagentFragment;I)I

    .line 127
    :cond_1
    return-void
.end method
