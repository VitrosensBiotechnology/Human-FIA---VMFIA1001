.class Lcom/wen/fluorescence/Fragment/SettingLISFragment$2;
.super Lcom/wen/fluorescence/util/MyOnClickListener;
.source "SettingLISFragment.java"


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

    .line 189
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "arg0"    # Landroid/view/View;

    .line 192
    invoke-super {p0, p1}, Lcom/wen/fluorescence/util/MyOnClickListener;->onClick(Landroid/view/View;)V

    .line 194
    const v0, 0x7f0c00c6

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->access$100(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_9

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

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

    .line 198
    :cond_0
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->access$200(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_8

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

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

    .line 202
    :cond_1
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->access$300(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_7

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

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

    .line 206
    :cond_2
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->access$400(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_6

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

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

    .line 210
    :cond_3
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->access$500(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_5

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

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

    .line 218
    :cond_4
    nop

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->access$100(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->access$200(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    .line 220
    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->access$300(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->access$400(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "ip":Ljava/lang/String;
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->access$500(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, "port":Ljava/lang/String;
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-static {v3}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->access$600(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)Landroid/widget/RadioButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    .line 223
    .local v3, "bHL7Mode":Z
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-virtual {v4}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v4

    const-string v5, "IP_LIS"

    invoke-virtual {v4, v5, v0}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->setStringData(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-virtual {v4}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v4

    const-string v5, "IP_port"

    invoke-virtual {v4, v5, v2}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->setStringData(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-virtual {v4}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v4

    const-string v5, "LIS_HL7_MODE"

    invoke-virtual {v4, v5, v3}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->setBooleanData(Ljava/lang/String;Z)V

    .line 226
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-static {v4}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->access$700(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)V

    .line 227
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-virtual {v4}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-static {v5}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->access$800(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)Landroid/os/Handler;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/wen/fluorescence/Thread/LISThread;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/wen/fluorescence/Thread/LISThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wen/fluorescence/Thread/LISThread;->setThreadStop()V

    .line 228
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-virtual {v4}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    const v6, 0x7f0c00a2

    invoke-virtual {v5, v6}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 229
    return-void

    .line 211
    .end local v0    # "ip":Ljava/lang/String;
    .end local v2    # "port":Ljava/lang/String;
    .end local v3    # "bHL7Mode":Z
    :cond_5
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-virtual {v2}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-virtual {v3, v0}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 212
    return-void

    .line 207
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-virtual {v2}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-virtual {v3, v0}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 208
    return-void

    .line 203
    :cond_7
    :goto_2
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-virtual {v2}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-virtual {v3, v0}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 204
    return-void

    .line 199
    :cond_8
    :goto_3
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-virtual {v2}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-virtual {v3, v0}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 200
    return-void

    .line 195
    :cond_9
    :goto_4
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-virtual {v2}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-virtual {v3, v0}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 196
    return-void

    .line 214
    :catch_0
    move-exception v2

    .line 215
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 216
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-virtual {v3}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-virtual {v4, v0}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 217
    return-void
.end method
