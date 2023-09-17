.class Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;
.super Ljava/lang/Object;
.source "SettingLISFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SettingLISFragment;->setViewIncident()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    .line 264
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 268
    const/4 v0, 0x0

    const v1, 0x7f0c00c6

    :try_start_0
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->access$100(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_9

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->access$100(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xff

    if-le v2, v3, :cond_0

    goto/16 :goto_4

    .line 272
    :cond_0
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->access$200(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_8

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->access$200(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-le v2, v3, :cond_1

    goto/16 :goto_3

    .line 276
    :cond_1
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->access$300(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_7

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->access$300(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-le v2, v3, :cond_2

    goto/16 :goto_2

    .line 280
    :cond_2
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->access$400(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_6

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->access$400(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-le v2, v3, :cond_3

    goto/16 :goto_1

    .line 284
    :cond_3
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->access$500(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_5

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->access$500(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v3, 0xffff

    if-le v2, v3, :cond_4

    goto/16 :goto_0

    .line 292
    :cond_4
    nop

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->access$100(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->access$200(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    .line 294
    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->access$300(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->access$400(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "ip":Ljava/lang/String;
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->access$500(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 296
    .local v1, "port":Ljava/lang/String;
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->access$600(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    .line 297
    .local v2, "bHL7Mode":Z
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-virtual {v3}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v3

    const-string v4, "IP_LIS"

    invoke-virtual {v3, v4, v0}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->setStringData(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-virtual {v3}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v3

    const-string v4, "IP_port"

    invoke-virtual {v3, v4, v1}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->setStringData(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-virtual {v3}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v3

    const-string v4, "LIS_HL7_MODE"

    invoke-virtual {v3, v4, v2}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->setBooleanData(Ljava/lang/String;Z)V

    .line 301
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-static {v3}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->access$000(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)Landroid/widget/Button;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 302
    new-instance v3, Lcom/wen/fluorescence/Fragment/SettingLISFragment$6$1;

    invoke-direct {v3, p0}, Lcom/wen/fluorescence/Fragment/SettingLISFragment$6$1;-><init>(Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;)V

    .line 316
    invoke-virtual {v3}, Lcom/wen/fluorescence/Fragment/SettingLISFragment$6$1;->start()V

    .line 317
    return-void

    .line 285
    .end local v0    # "ip":Ljava/lang/String;
    .end local v1    # "port":Ljava/lang/String;
    .end local v2    # "bHL7Mode":Z
    :cond_5
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-virtual {v2}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-virtual {v3, v1}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 286
    return-void

    .line 281
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-virtual {v2}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-virtual {v3, v1}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 282
    return-void

    .line 277
    :cond_7
    :goto_2
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-virtual {v2}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-virtual {v3, v1}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 278
    return-void

    .line 273
    :cond_8
    :goto_3
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-virtual {v2}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-virtual {v3, v1}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 274
    return-void

    .line 269
    :cond_9
    :goto_4
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-virtual {v2}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-virtual {v3, v1}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 270
    return-void

    .line 288
    :catch_0
    move-exception v2

    .line 289
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 290
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-virtual {v3}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-virtual {v4, v1}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 291
    return-void
.end method
