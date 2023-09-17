.class Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$5;
.super Ljava/lang/Object;
.source "SystemMaintainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->showYRGoodsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

.field final synthetic val$budiler:Landroid/app/AlertDialog;

.field final synthetic val$etCode:Landroid/widget/EditText;

.field final synthetic val$rbOn:Landroid/widget/RadioButton;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;Landroid/widget/EditText;Landroid/widget/RadioButton;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

    .line 262
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$5;->this$0:Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

    iput-object p2, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$5;->val$etCode:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$5;->val$rbOn:Landroid/widget/RadioButton;

    iput-object p4, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$5;->val$budiler:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .line 265
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$5;->val$etCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "tem":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$5;->this$0:Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

    invoke-virtual {v1}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$5;->this$0:Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

    const v3, 0x7f0c0084

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 268
    return-void

    .line 270
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 271
    .local v1, "num":I
    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    const/16 v2, 0x100

    if-ge v1, v2, :cond_1

    .line 272
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$5;->val$rbOn:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    .line 273
    .local v2, "isOn":Z
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$5;->this$0:Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

    invoke-virtual {v3}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v3

    const-string v4, "SP_YR_PREVENT_GOODS"

    invoke-virtual {v3, v4, v2}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->setBooleanData(Ljava/lang/String;Z)V

    .line 274
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$5;->this$0:Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

    invoke-virtual {v3}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v3

    const-string v4, "SP_YR_PREVENT_GOODS_VALUE"

    invoke-virtual {v3, v4, v1}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->setIntData(Ljava/lang/String;I)V

    .line 275
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$5;->val$budiler:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 276
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$5;->this$0:Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

    invoke-virtual {v3}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$5;->this$0:Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

    const v5, 0x7f0c0060

    invoke-virtual {v4, v5}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 277
    .end local v2    # "isOn":Z
    goto :goto_0

    .line 278
    :cond_1
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$5;->this$0:Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

    invoke-virtual {v2}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$5;->this$0:Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

    const v4, 0x7f0c00ba

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 280
    :goto_0
    return-void
.end method
