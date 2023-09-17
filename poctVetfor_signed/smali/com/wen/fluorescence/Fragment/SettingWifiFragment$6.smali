.class Lcom/wen/fluorescence/Fragment/SettingWifiFragment$6;
.super Ljava/lang/Object;
.source "SettingWifiFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->showPasswordDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

.field final synthetic val$budiler:Landroid/app/AlertDialog;

.field final synthetic val$etPassword:Landroid/widget/EditText;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SettingWifiFragment;Landroid/widget/EditText;Ljava/lang/String;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    .line 294
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    iput-object p2, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$6;->val$etPassword:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$6;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$6;->val$budiler:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .line 297
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    const v2, 0x7f0c0083

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 298
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$6;->val$etPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "pwd":Ljava/lang/String;
    const-string v1, "ads"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connect Name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$6;->val$name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",Password:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->access$000(Lcom/wen/fluorescence/Fragment/SettingWifiFragment;)Lcom/wen/fluorescence/lis/WifiConnector;

    move-result-object v1

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$6;->val$name:Ljava/lang/String;

    sget-object v3, Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;->WIFICIPHER_WPA:Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;

    invoke-virtual {v1, v2, v0, v3}, Lcom/wen/fluorescence/lis/WifiConnector;->connect(Ljava/lang/String;Ljava/lang/String;Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;)V

    .line 301
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$6;->val$budiler:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 302
    return-void
.end method
