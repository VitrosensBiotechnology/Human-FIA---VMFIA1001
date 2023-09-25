.class Lcom/wen/fluorescence/Fragment/SettingItemFragment$2;
.super Lcom/wen/fluorescence/util/MyOnClickListener;
.source "SettingItemFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/Fragment/SettingItemFragment;
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

    .line 217
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .line 220
    invoke-super {p0, p1}, Lcom/wen/fluorescence/util/MyOnClickListener;->onClick(Landroid/view/View;)V

    .line 221
    invoke-static {}, Lcom/wen/fluorescence/util/DoubleClick;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    return-void

    .line 224
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c00b0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 240
    :sswitch_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->access$300(Lcom/wen/fluorescence/Fragment/SettingItemFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-virtual {v2, v1}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 242
    goto/16 :goto_0

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->access$600(Lcom/wen/fluorescence/Fragment/SettingItemFragment;)V

    .line 245
    goto/16 :goto_0

    .line 226
    :sswitch_1
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->access$300(Lcom/wen/fluorescence/Fragment/SettingItemFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-virtual {v2, v1}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 228
    goto/16 :goto_0

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->access$400(Lcom/wen/fluorescence/Fragment/SettingItemFragment;)V

    .line 231
    goto/16 :goto_0

    .line 233
    :sswitch_2
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->access$300(Lcom/wen/fluorescence/Fragment/SettingItemFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 234
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-virtual {v2, v1}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 235
    goto/16 :goto_0

    .line 237
    :cond_3
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->access$500(Lcom/wen/fluorescence/Fragment/SettingItemFragment;)V

    .line 238
    goto :goto_0

    .line 255
    :sswitch_3
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->access$100(Lcom/wen/fluorescence/Fragment/SettingItemFragment;)Lcom/wen/fluorescence/database/ItemPara;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 256
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->access$100(Lcom/wen/fluorescence/Fragment/SettingItemFragment;)Lcom/wen/fluorescence/database/ItemPara;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/database/ItemPara;->getMin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    .line 257
    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->access$100(Lcom/wen/fluorescence/Fragment/SettingItemFragment;)Lcom/wen/fluorescence/database/ItemPara;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/database/ItemPara;->getMax()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    .line 258
    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->access$100(Lcom/wen/fluorescence/Fragment/SettingItemFragment;)Lcom/wen/fluorescence/database/ItemPara;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/database/ItemPara;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 259
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->access$100(Lcom/wen/fluorescence/Fragment/SettingItemFragment;)Lcom/wen/fluorescence/database/ItemPara;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->access$800(Lcom/wen/fluorescence/Fragment/SettingItemFragment;Lcom/wen/fluorescence/database/ItemPara;)V

    goto :goto_0

    .line 264
    :sswitch_4
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->access$900(Lcom/wen/fluorescence/Fragment/SettingItemFragment;)V

    goto :goto_0

    .line 247
    :sswitch_5
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->access$300(Lcom/wen/fluorescence/Fragment/SettingItemFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 248
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-virtual {v2, v1}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 249
    goto :goto_0

    .line 251
    :cond_4
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->access$700(Lcom/wen/fluorescence/Fragment/SettingItemFragment;)V

    .line 252
    nop

    .line 267
    :cond_5
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f080033 -> :sswitch_5
        0x7f08003b -> :sswitch_4
        0x7f080049 -> :sswitch_3
        0x7f080063 -> :sswitch_2
        0x7f080067 -> :sswitch_1
        0x7f080071 -> :sswitch_0
    .end sparse-switch
.end method
