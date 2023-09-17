.class Lcom/wen/fluorescence/Fragment/SettingWifiFragment$2$1;
.super Ljava/lang/Object;
.source "SettingWifiFragment.java"

# interfaces
.implements Lcom/wen/fluorescence/util/MyDialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SettingWifiFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wen/fluorescence/Fragment/SettingWifiFragment$2;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SettingWifiFragment$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/wen/fluorescence/Fragment/SettingWifiFragment$2;

    .line 173
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$2$1;->this$1:Lcom/wen/fluorescence/Fragment/SettingWifiFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelListener()V
    .locals 0

    .line 182
    return-void
.end method

.method public okListener()V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$2$1;->this$1:Lcom/wen/fluorescence/Fragment/SettingWifiFragment$2;

    iget-object v0, v0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->access$000(Lcom/wen/fluorescence/Fragment/SettingWifiFragment;)Lcom/wen/fluorescence/lis/WifiConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/lis/WifiConnector;->disconnectWifi()Z

    .line 177
    return-void
.end method
