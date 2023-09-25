.class Lcom/wen/fluorescence/Fragment/SettingWifiFragment$WifiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingWifiFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/Fragment/SettingWifiFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SettingWifiFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    .line 403
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$WifiReceiver;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 406
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 408
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$WifiReceiver;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->access$800(Lcom/wen/fluorescence/Fragment/SettingWifiFragment;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    return-void

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$WifiReceiver;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->access$000(Lcom/wen/fluorescence/Fragment/SettingWifiFragment;)Lcom/wen/fluorescence/lis/WifiConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/lis/WifiConnector;->scanWifi()V

    .line 412
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$WifiReceiver;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$WifiReceiver;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->access$000(Lcom/wen/fluorescence/Fragment/SettingWifiFragment;)Lcom/wen/fluorescence/lis/WifiConnector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/lis/WifiConnector;->scanResultsWifi()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->scanResultList:Ljava/util/List;

    .line 413
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$WifiReceiver;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->access$300(Lcom/wen/fluorescence/Fragment/SettingWifiFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 414
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$WifiReceiver;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    iget-object v0, v0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->scanResultList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 415
    const/4 v0, 0x0

    .line 416
    .local v0, "isWifiConnect":Z
    const/4 v2, 0x0

    .line 417
    .local v2, "signalLevel":I
    const-string v3, ""

    .line 418
    .local v3, "connectWifiName":Ljava/lang/String;
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$WifiReceiver;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    invoke-virtual {v4}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/wen/fluorescence/lis/WifiConnector;->isWifiConnect(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 419
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$WifiReceiver;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    invoke-virtual {v4}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/wen/fluorescence/lis/WifiConnector;->getWIFIName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 426
    :cond_1
    move v4, v2

    move v2, v0

    move v0, v1

    .line 426
    .local v0, "i":I
    .local v2, "isWifiConnect":Z
    .local v4, "signalLevel":I
    :goto_0
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$WifiReceiver;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    iget-object v5, v5, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->scanResultList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 427
    new-instance v5, Lcom/wen/fluorescence/bean/WifiInfo;

    invoke-direct {v5}, Lcom/wen/fluorescence/bean/WifiInfo;-><init>()V

    .line 428
    .local v5, "wifiInfo":Lcom/wen/fluorescence/bean/WifiInfo;
    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$WifiReceiver;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    iget-object v6, v6, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->scanResultList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    iget-object v6, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 429
    goto :goto_1

    .line 431
    :cond_2
    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$WifiReceiver;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    iget-object v6, v6, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->scanResultList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    iget-object v6, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/wen/fluorescence/bean/WifiInfo;->setName(Ljava/lang/String;)V

    .line 432
    invoke-virtual {v5, v1}, Lcom/wen/fluorescence/bean/WifiInfo;->setConnected(Z)V

    .line 433
    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$WifiReceiver;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    iget-object v6, v6, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->scanResultList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    iget-object v6, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/wen/fluorescence/bean/WifiInfo;->setMac(Ljava/lang/String;)V

    .line 434
    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$WifiReceiver;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    iget-object v6, v6, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->scanResultList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    iget-wide v6, v6, Landroid/net/wifi/ScanResult;->timestamp:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/wen/fluorescence/bean/WifiInfo;->setSerialNumber(Ljava/lang/String;)V

    .line 435
    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$WifiReceiver;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    iget-object v6, v6, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->scanResultList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    iget v6, v6, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/wen/fluorescence/bean/WifiInfo;->setSignalStrength(Ljava/lang/String;)V

    .line 437
    invoke-virtual {v5}, Lcom/wen/fluorescence/bean/WifiInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 438
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/wen/fluorescence/bean/WifiInfo;->setConnected(Z)V

    .line 439
    const/4 v2, 0x1

    .line 440
    invoke-virtual {v5}, Lcom/wen/fluorescence/bean/WifiInfo;->getSignalStrengthLevel()I

    move-result v4

    .line 442
    :cond_3
    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$WifiReceiver;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    invoke-static {v6}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->access$300(Lcom/wen/fluorescence/Fragment/SettingWifiFragment;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    .end local v5    # "wifiInfo":Lcom/wen/fluorescence/bean/WifiInfo;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 444
    .end local v0    # "i":I
    :cond_4
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$WifiReceiver;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/wen/fluorescence/MainActivity;

    invoke-virtual {v0, v2, v4}, Lcom/wen/fluorescence/MainActivity;->setUpWifi(ZI)V

    .line 446
    .end local v2    # "isWifiConnect":Z
    .end local v3    # "connectWifiName":Ljava/lang/String;
    .end local v4    # "signalLevel":I
    :cond_5
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$WifiReceiver;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->access$400(Lcom/wen/fluorescence/Fragment/SettingWifiFragment;)Lcom/wen/fluorescence/util/PageUtils;

    move-result-object v0

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$WifiReceiver;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->access$300(Lcom/wen/fluorescence/Fragment/SettingWifiFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/wen/fluorescence/util/PageUtils;->setTotalSize(I)V

    .line 447
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$WifiReceiver;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->access$300(Lcom/wen/fluorescence/Fragment/SettingWifiFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_6

    .line 448
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$WifiReceiver;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    invoke-static {v0, v1}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->access$500(Lcom/wen/fluorescence/Fragment/SettingWifiFragment;Z)V

    .line 450
    :cond_6
    return-void
.end method
