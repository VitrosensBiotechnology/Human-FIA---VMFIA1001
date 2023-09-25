.class Lcom/wen/fluorescence/Fragment/SettingItemFragment$4;
.super Lcom/wen/fluorescence/util/MyOnClickListener;
.source "SettingItemFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SettingItemFragment;->addItemParameters()V
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


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SettingItemFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    .line 349
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    iput-object p2, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$4;->val$etItems:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$4;->val$etCodes:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$4;->val$etMins:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$4;->val$etMaxs:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$4;->val$etUnit:Landroid/widget/EditText;

    iput-object p7, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$4;->val$etK:Landroid/widget/EditText;

    iput-object p8, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$4;->val$etB:Landroid/widget/EditText;

    iput-object p9, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$4;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "arg0"    # Landroid/view/View;

    .line 352
    invoke-super {p0, p1}, Lcom/wen/fluorescence/util/MyOnClickListener;->onClick(Landroid/view/View;)V

    .line 353
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$4;->val$etItems:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$4;->val$etCodes:Landroid/widget/EditText;

    .line 354
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$4;->val$etMins:Landroid/widget/EditText;

    .line 355
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$4;->val$etMaxs:Landroid/widget/EditText;

    .line 356
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$4;->val$etUnit:Landroid/widget/EditText;

    .line 357
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$4;->val$etMins:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$4;->val$etMaxs:Landroid/widget/EditText;

    .line 362
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_1

    .line 363
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    const v2, 0x7f0c01d3

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 364
    return-void

    .line 366
    :cond_1
    invoke-static {}, Lcom/wen/fluorescence/util/PublicFuction;->getItemType()Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "typeS":Ljava/lang/String;
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-virtual {v1}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v3

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$4;->val$etItems:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 368
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$4;->val$etCodes:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$4;->val$etMins:Landroid/widget/EditText;

    .line 369
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$4;->val$etMaxs:Landroid/widget/EditText;

    .line 370
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$4;->val$etUnit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$4;->val$etK:Landroid/widget/EditText;

    .line 371
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$4;->val$etB:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 367
    move-object v6, v0

    invoke-virtual/range {v3 .. v11}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-virtual {v2}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/wen/fluorescence/database/DBManager;->queryItemPara(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->access$1202(Lcom/wen/fluorescence/Fragment/SettingItemFragment;Ljava/util/List;)Ljava/util/List;

    .line 373
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->access$1000(Lcom/wen/fluorescence/Fragment/SettingItemFragment;)Lcom/wen/fluorescence/util/PageUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->access$1200(Lcom/wen/fluorescence/Fragment/SettingItemFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/util/PageUtils;->setTotalSize(I)V

    .line 374
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->access$1000(Lcom/wen/fluorescence/Fragment/SettingItemFragment;)Lcom/wen/fluorescence/util/PageUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->access$1000(Lcom/wen/fluorescence/Fragment/SettingItemFragment;)Lcom/wen/fluorescence/util/PageUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wen/fluorescence/util/PageUtils;->getPageTotal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/util/PageUtils;->setPageNow(I)V

    .line 375
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->access$1000(Lcom/wen/fluorescence/Fragment/SettingItemFragment;)Lcom/wen/fluorescence/util/PageUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wen/fluorescence/util/PageUtils;->getPageNow()I

    move-result v2

    invoke-static {v1, v2}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->access$1300(Lcom/wen/fluorescence/Fragment/SettingItemFragment;I)V

    .line 376
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-virtual {v1}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    const v3, 0x7f0c0060

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 377
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$4;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 378
    return-void

    .line 358
    .end local v0    # "typeS":Ljava/lang/String;
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingItemFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    const v2, 0x7f0c00dc

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 359
    return-void
.end method
