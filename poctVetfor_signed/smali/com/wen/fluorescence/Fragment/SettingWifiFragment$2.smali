.class Lcom/wen/fluorescence/Fragment/SettingWifiFragment$2;
.super Lcom/wen/fluorescence/util/MyOnClickListener;
.source "SettingWifiFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->setViewIncident()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

.field final synthetic val$tableRow:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SettingWifiFragment;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    .line 156
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    iput-object p2, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$2;->val$tableRow:Landroid/view/View;

    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "arg0"    # Landroid/view/View;

    .line 159
    invoke-super {p0, p1}, Lcom/wen/fluorescence/util/MyOnClickListener;->onClick(Landroid/view/View;)V

    .line 160
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$2;->val$tableRow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 161
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->access$100(Lcom/wen/fluorescence/Fragment/SettingWifiFragment;)V

    .line 166
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$2;->val$tableRow:Landroid/view/View;

    const v1, 0x7f080218

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 167
    .local v0, "tvMac":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$2;->val$tableRow:Landroid/view/View;

    const v2, 0x7f08021e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 168
    .local v1, "tvNetWorkName":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$2;->val$tableRow:Landroid/view/View;

    const v3, 0x7f080246

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 169
    .local v2, "tvStatus":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    invoke-virtual {v3}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f050058

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 170
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    invoke-virtual {v3}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 171
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    invoke-virtual {v3}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 172
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    const v5, 0x7f0c0082

    invoke-virtual {v4, v5}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 173
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    invoke-virtual {v3}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    const v6, 0x7f0c0185

    invoke-virtual {v5, v6}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$2$1;

    invoke-direct {v5, p0}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$2$1;-><init>(Lcom/wen/fluorescence/Fragment/SettingWifiFragment$2;)V

    invoke-static {v3, v4, v5}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    goto :goto_0

    .line 185
    :cond_1
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 186
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->access$200(Lcom/wen/fluorescence/Fragment/SettingWifiFragment;Ljava/lang/String;)V

    .line 190
    :cond_2
    :goto_0
    return-void
.end method
