.class Lcom/wen/fluorescence/Fragment/SettingWifiFragment$3;
.super Ljava/lang/Object;
.source "SettingWifiFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->setViewIncident()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SettingWifiFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    .line 200
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .line 203
    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 205
    :pswitch_0
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    invoke-virtual {v1}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    const v3, 0x7f0c015c

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 207
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->access$000(Lcom/wen/fluorescence/Fragment/SettingWifiFragment;)Lcom/wen/fluorescence/lis/WifiConnector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/lis/WifiConnector;->openWifi()Z

    .line 208
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->access$000(Lcom/wen/fluorescence/Fragment/SettingWifiFragment;)Lcom/wen/fluorescence/lis/WifiConnector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/lis/WifiConnector;->scanWifi()V

    .line 209
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    invoke-virtual {v1}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v1

    const-string v2, "WIFI_KEY"

    invoke-virtual {v1, v2, v0}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->setBooleanData(Ljava/lang/String;Z)V

    .line 210
    goto :goto_0

    .line 212
    :pswitch_1
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->access$000(Lcom/wen/fluorescence/Fragment/SettingWifiFragment;)Lcom/wen/fluorescence/lis/WifiConnector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/lis/WifiConnector;->disconnectWifi()Z

    .line 213
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->access$000(Lcom/wen/fluorescence/Fragment/SettingWifiFragment;)Lcom/wen/fluorescence/lis/WifiConnector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/lis/WifiConnector;->closeWifi()V

    .line 214
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->access$300(Lcom/wen/fluorescence/Fragment/SettingWifiFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 215
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->access$400(Lcom/wen/fluorescence/Fragment/SettingWifiFragment;)Lcom/wen/fluorescence/util/PageUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->access$300(Lcom/wen/fluorescence/Fragment/SettingWifiFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/util/PageUtils;->setTotalSize(I)V

    .line 216
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->access$400(Lcom/wen/fluorescence/Fragment/SettingWifiFragment;)Lcom/wen/fluorescence/util/PageUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wen/fluorescence/util/PageUtils;->setPageNow(I)V

    .line 217
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    invoke-static {v1, v0}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->access$500(Lcom/wen/fluorescence/Fragment/SettingWifiFragment;Z)V

    .line 218
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v0

    const-string v1, "WIFI_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->setBooleanData(Ljava/lang/String;Z)V

    .line 219
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/wen/fluorescence/MainActivity;

    invoke-virtual {v0}, Lcom/wen/fluorescence/MainActivity;->closeWifi()V

    .line 222
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f080185
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
