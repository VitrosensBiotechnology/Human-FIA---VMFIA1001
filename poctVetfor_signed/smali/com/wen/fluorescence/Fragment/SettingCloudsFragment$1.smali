.class Lcom/wen/fluorescence/Fragment/SettingCloudsFragment$1;
.super Lcom/wen/fluorescence/util/MyOnClickListener;
.source "SettingCloudsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;

    .line 54
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;

    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "arg0"    # Landroid/view/View;

    .line 57
    invoke-super {p0, p1}, Lcom/wen/fluorescence/util/MyOnClickListener;->onClick(Landroid/view/View;)V

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080089

    if-eq v0, v1, :cond_3

    const v1, 0x7f08008e

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;->access$000(Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;->access$100(Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 62
    .local v8, "appId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;

    invoke-virtual {v1}, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v1

    const-string v2, "EASY11_URL"

    invoke-virtual {v1, v2, v0}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->setStringData(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v1, "SettingCloudsFragment"

    const/4 v3, 0x0

    const-string v5, ""

    const-string v6, ""

    new-instance v7, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment$1$1;

    invoke-direct {v7, p0}, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment$1$1;-><init>(Lcom/wen/fluorescence/Fragment/SettingCloudsFragment$1;)V

    move-object v2, v0

    move-object v4, v8

    invoke-static/range {v1 .. v7}, Lcom/wen/fluorescence/net/RequestManager;->SendToCloudPlatFormEasy11(Ljava/lang/Object;Ljava/lang/String;Lcom/wen/fluorescence/database/TestResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wen/fluorescence/net/CallBack;)V

    .line 79
    goto :goto_1

    .line 63
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;

    invoke-virtual {v1}, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;

    const v3, 0x7f0c0084

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 64
    return-void

    .line 81
    .end local v0    # "url":Ljava/lang/String;
    .end local v8    # "appId":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v0

    const-string v1, "EASY11_URL"

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;->access$000(Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->setStringData(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;

    const v2, 0x7f0c0060

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 83
    nop

    .line 87
    :goto_1
    return-void
.end method
