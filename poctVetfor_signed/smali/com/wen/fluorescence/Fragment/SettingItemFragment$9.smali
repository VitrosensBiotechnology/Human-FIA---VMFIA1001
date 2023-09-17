.class Lcom/wen/fluorescence/Fragment/SettingItemFragment$9;
.super Lcom/wen/fluorescence/util/MyOnClickListener;
.source "SettingItemFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SettingItemFragment;->changeUnit(Lcom/wen/fluorescence/database/ItemPara;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

.field final synthetic val$cbSelectUnit1:Landroid/widget/CheckBox;

.field final synthetic val$cbSelectUnit2:Landroid/widget/CheckBox;

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$etB1:Landroid/widget/EditText;

.field final synthetic val$etB2:Landroid/widget/EditText;

.field final synthetic val$etK1:Landroid/widget/EditText;

.field final synthetic val$etK2:Landroid/widget/EditText;

.field final synthetic val$etTarTemp1:Landroid/widget/EditText;

.field final synthetic val$etTarTemp2:Landroid/widget/EditText;

.field final synthetic val$etTarUnit1:Landroid/widget/EditText;

.field final synthetic val$etTarUnit2:Landroid/widget/EditText;

.field final synthetic val$selectItemPara:Lcom/wen/fluorescence/database/ItemPara;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SettingItemFragment;Landroid/widget/CheckBox;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/wen/fluorescence/database/ItemPara;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    .line 536
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$9;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    iput-object p2, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$9;->val$cbSelectUnit1:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$9;->val$etTarUnit1:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$9;->val$etTarTemp1:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$9;->val$cbSelectUnit2:Landroid/widget/CheckBox;

    iput-object p6, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$9;->val$etTarUnit2:Landroid/widget/EditText;

    iput-object p7, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$9;->val$etTarTemp2:Landroid/widget/EditText;

    iput-object p8, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$9;->val$selectItemPara:Lcom/wen/fluorescence/database/ItemPara;

    iput-object p9, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$9;->val$etK1:Landroid/widget/EditText;

    iput-object p10, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$9;->val$etB1:Landroid/widget/EditText;

    iput-object p11, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$9;->val$etK2:Landroid/widget/EditText;

    iput-object p12, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$9;->val$etB2:Landroid/widget/EditText;

    iput-object p13, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$9;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .line 539
    invoke-super {p0, p1}, Lcom/wen/fluorescence/util/MyOnClickListener;->onClick(Landroid/view/View;)V

    .line 540
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$9;->val$cbSelectUnit1:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const v1, 0x7f0c0066

    if-eqz v0, :cond_1

    .line 541
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$9;->val$etTarUnit1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$9;->val$etTarTemp1:Landroid/widget/EditText;

    .line 542
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$9;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$9;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-virtual {v2, v1}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 544
    return-void

    .line 547
    :cond_1
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$9;->val$cbSelectUnit2:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 548
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$9;->val$etTarUnit2:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$9;->val$etTarTemp2:Landroid/widget/EditText;

    .line 549
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 550
    :cond_2
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$9;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$9;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-virtual {v2, v1}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 551
    return-void

    .line 554
    :cond_3
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$9;->val$selectItemPara:Lcom/wen/fluorescence/database/ItemPara;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$9;->val$etTarUnit1:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/ItemPara;->setTarUnit1(Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$9;->val$selectItemPara:Lcom/wen/fluorescence/database/ItemPara;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$9;->val$etK1:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/ItemPara;->setTarK1(Ljava/lang/String;)V

    .line 556
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$9;->val$selectItemPara:Lcom/wen/fluorescence/database/ItemPara;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$9;->val$etB1:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/ItemPara;->setTarB1(Ljava/lang/String;)V

    .line 557
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$9;->val$selectItemPara:Lcom/wen/fluorescence/database/ItemPara;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$9;->val$etTarTemp1:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/ItemPara;->setTarTemplate1(Ljava/lang/String;)V

    .line 558
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$9;->val$selectItemPara:Lcom/wen/fluorescence/database/ItemPara;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$9;->val$cbSelectUnit1:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/ItemPara;->setTarPrintMode1(I)V

    .line 559
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$9;->val$selectItemPara:Lcom/wen/fluorescence/database/ItemPara;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$9;->val$etTarUnit2:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/ItemPara;->setTarUnit2(Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$9;->val$selectItemPara:Lcom/wen/fluorescence/database/ItemPara;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$9;->val$etK2:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/ItemPara;->setTarK2(Ljava/lang/String;)V

    .line 561
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$9;->val$selectItemPara:Lcom/wen/fluorescence/database/ItemPara;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$9;->val$etB2:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/ItemPara;->setTarB2(Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$9;->val$selectItemPara:Lcom/wen/fluorescence/database/ItemPara;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$9;->val$etTarTemp2:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/ItemPara;->setTarTemplate2(Ljava/lang/String;)V

    .line 563
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$9;->val$selectItemPara:Lcom/wen/fluorescence/database/ItemPara;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$9;->val$cbSelectUnit2:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/ItemPara;->setTarPrintMode2(I)V

    .line 564
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$9;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 565
    return-void
.end method
