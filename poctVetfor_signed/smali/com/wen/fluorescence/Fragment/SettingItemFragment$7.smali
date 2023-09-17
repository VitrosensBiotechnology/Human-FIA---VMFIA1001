.class Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;
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

.field final synthetic val$etB:Landroid/widget/EditText;

.field final synthetic val$etCodes:Landroid/widget/EditText;

.field final synthetic val$etItems:Landroid/widget/EditText;

.field final synthetic val$etK:Landroid/widget/EditText;

.field final synthetic val$etMaxs:Landroid/widget/EditText;

.field final synthetic val$etMins:Landroid/widget/EditText;

.field final synthetic val$etUnit:Landroid/widget/EditText;

.field final synthetic val$selectItemPara:Lcom/wen/fluorescence/database/ItemPara;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SettingItemFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/wen/fluorescence/database/ItemPara;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    .line 441
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    iput-object p2, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;->val$etItems:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;->val$etCodes:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;->val$etMins:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;->val$etMaxs:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;->val$etUnit:Landroid/widget/EditText;

    iput-object p7, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;->val$selectItemPara:Lcom/wen/fluorescence/database/ItemPara;

    iput-object p8, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;->val$etK:Landroid/widget/EditText;

    iput-object p9, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;->val$etB:Landroid/widget/EditText;

    iput-object p10, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .line 444
    invoke-super {p0, p1}, Lcom/wen/fluorescence/util/MyOnClickListener;->onClick(Landroid/view/View;)V

    .line 445
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;->val$etItems:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;->val$etCodes:Landroid/widget/EditText;

    .line 446
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;->val$etMins:Landroid/widget/EditText;

    .line 447
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;->val$etMaxs:Landroid/widget/EditText;

    .line 448
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;->val$etUnit:Landroid/widget/EditText;

    .line 449
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;->val$etMins:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;->val$etMaxs:Landroid/widget/EditText;

    .line 454
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_1

    .line 455
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    const v2, 0x7f0c01d3

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 456
    return-void

    .line 459
    :cond_1
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;->val$selectItemPara:Lcom/wen/fluorescence/database/ItemPara;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;->val$etK:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/ItemPara;->setK(Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;->val$selectItemPara:Lcom/wen/fluorescence/database/ItemPara;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;->val$etB:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/ItemPara;->setB(Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;->val$selectItemPara:Lcom/wen/fluorescence/database/ItemPara;

    invoke-virtual {v0}, Lcom/wen/fluorescence/database/ItemPara;->getTarUnit1()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;->val$selectItemPara:Lcom/wen/fluorescence/database/ItemPara;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/ItemPara;->setTarUnit1(Ljava/lang/String;)V

    .line 462
    :cond_2
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;->val$selectItemPara:Lcom/wen/fluorescence/database/ItemPara;

    invoke-virtual {v0}, Lcom/wen/fluorescence/database/ItemPara;->getTarK1()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;->val$selectItemPara:Lcom/wen/fluorescence/database/ItemPara;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/ItemPara;->setTarK1(Ljava/lang/String;)V

    .line 463
    :cond_3
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;->val$selectItemPara:Lcom/wen/fluorescence/database/ItemPara;

    invoke-virtual {v0}, Lcom/wen/fluorescence/database/ItemPara;->getTarB1()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;->val$selectItemPara:Lcom/wen/fluorescence/database/ItemPara;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/ItemPara;->setTarB1(Ljava/lang/String;)V

    .line 464
    :cond_4
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;->val$selectItemPara:Lcom/wen/fluorescence/database/ItemPara;

    invoke-virtual {v0}, Lcom/wen/fluorescence/database/ItemPara;->getTarTemplate1()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;->val$selectItemPara:Lcom/wen/fluorescence/database/ItemPara;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/ItemPara;->setTarTemplate1(Ljava/lang/String;)V

    .line 465
    :cond_5
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;->val$selectItemPara:Lcom/wen/fluorescence/database/ItemPara;

    invoke-virtual {v0}, Lcom/wen/fluorescence/database/ItemPara;->getTarUnit2()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;->val$selectItemPara:Lcom/wen/fluorescence/database/ItemPara;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/ItemPara;->setTarUnit2(Ljava/lang/String;)V

    .line 466
    :cond_6
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;->val$selectItemPara:Lcom/wen/fluorescence/database/ItemPara;

    invoke-virtual {v0}, Lcom/wen/fluorescence/database/ItemPara;->getTarK2()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;->val$selectItemPara:Lcom/wen/fluorescence/database/ItemPara;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/ItemPara;->setTarK2(Ljava/lang/String;)V

    .line 467
    :cond_7
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;->val$selectItemPara:Lcom/wen/fluorescence/database/ItemPara;

    invoke-virtual {v0}, Lcom/wen/fluorescence/database/ItemPara;->getTarB2()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;->val$selectItemPara:Lcom/wen/fluorescence/database/ItemPara;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/ItemPara;->setTarB2(Ljava/lang/String;)V

    .line 468
    :cond_8
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;->val$selectItemPara:Lcom/wen/fluorescence/database/ItemPara;

    invoke-virtual {v0}, Lcom/wen/fluorescence/database/ItemPara;->getTarTemplate2()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;->val$selectItemPara:Lcom/wen/fluorescence/database/ItemPara;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/ItemPara;->setTarTemplate2(Ljava/lang/String;)V

    .line 470
    :cond_9
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;->val$selectItemPara:Lcom/wen/fluorescence/database/ItemPara;

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/DBManager;->updateItemParas(Lcom/wen/fluorescence/database/ItemPara;)Z

    .line 472
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->access$1000(Lcom/wen/fluorescence/Fragment/SettingItemFragment;)Lcom/wen/fluorescence/util/PageUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/PageUtils;->getPageNow()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->access$1100(Lcom/wen/fluorescence/Fragment/SettingItemFragment;IZ)V

    .line 473
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    const v2, 0x7f0c00a2

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 474
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 475
    return-void

    .line 450
    :cond_a
    :goto_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$7;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    const v2, 0x7f0c00dc

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 451
    return-void
.end method
