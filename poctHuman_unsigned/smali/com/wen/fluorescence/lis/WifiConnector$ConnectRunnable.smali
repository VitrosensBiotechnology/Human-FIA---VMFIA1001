.class Lcom/wen/fluorescence/lis/WifiConnector$ConnectRunnable;
.super Ljava/lang/Object;
.source "WifiConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/lis/WifiConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectRunnable"
.end annotation


# instance fields
.field private password:Ljava/lang/String;

.field private ssid:Ljava/lang/String;

.field final synthetic this$0:Lcom/wen/fluorescence/lis/WifiConnector;

.field private type:Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;


# direct methods
.method private constructor <init>(Lcom/wen/fluorescence/lis/WifiConnector;Ljava/lang/String;Ljava/lang/String;Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/lis/WifiConnector;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "type"    # Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;

    .line 186
    iput-object p1, p0, Lcom/wen/fluorescence/lis/WifiConnector$ConnectRunnable;->this$0:Lcom/wen/fluorescence/lis/WifiConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p2, p0, Lcom/wen/fluorescence/lis/WifiConnector$ConnectRunnable;->ssid:Ljava/lang/String;

    .line 188
    iput-object p3, p0, Lcom/wen/fluorescence/lis/WifiConnector$ConnectRunnable;->password:Ljava/lang/String;

    .line 189
    iput-object p4, p0, Lcom/wen/fluorescence/lis/WifiConnector$ConnectRunnable;->type:Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;

    .line 190
    return-void
.end method

.method synthetic constructor <init>(Lcom/wen/fluorescence/lis/WifiConnector;Ljava/lang/String;Ljava/lang/String;Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;Lcom/wen/fluorescence/lis/WifiConnector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/wen/fluorescence/lis/WifiConnector;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;
    .param p5, "x4"    # Lcom/wen/fluorescence/lis/WifiConnector$1;

    .line 181
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/wen/fluorescence/lis/WifiConnector$ConnectRunnable;-><init>(Lcom/wen/fluorescence/lis/WifiConnector;Ljava/lang/String;Ljava/lang/String;Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 197
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/wen/fluorescence/lis/WifiConnector$ConnectRunnable;->this$0:Lcom/wen/fluorescence/lis/WifiConnector;

    iget-object v0, v0, Lcom/wen/fluorescence/lis/WifiConnector;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 199
    const-wide/16 v0, 0x64

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 201
    :goto_1
    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    goto :goto_1

    .line 203
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/wen/fluorescence/lis/WifiConnector$ConnectRunnable;->this$0:Lcom/wen/fluorescence/lis/WifiConnector;

    iget-object v1, p0, Lcom/wen/fluorescence/lis/WifiConnector$ConnectRunnable;->ssid:Ljava/lang/String;

    iget-object v2, p0, Lcom/wen/fluorescence/lis/WifiConnector$ConnectRunnable;->password:Ljava/lang/String;

    iget-object v3, p0, Lcom/wen/fluorescence/lis/WifiConnector$ConnectRunnable;->type:Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;

    invoke-static {v0, v1, v2, v3}, Lcom/wen/fluorescence/lis/WifiConnector;->access$100(Lcom/wen/fluorescence/lis/WifiConnector;Ljava/lang/String;Ljava/lang/String;Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 204
    .local v0, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_1

    .line 205
    return-void

    .line 207
    :cond_1
    iget-object v1, p0, Lcom/wen/fluorescence/lis/WifiConnector$ConnectRunnable;->this$0:Lcom/wen/fluorescence/lis/WifiConnector;

    iget-object v2, p0, Lcom/wen/fluorescence/lis/WifiConnector$ConnectRunnable;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/lis/WifiConnector;->isExsits(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 208
    .local v1, "tempConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_2

    .line 209
    iget-object v2, p0, Lcom/wen/fluorescence/lis/WifiConnector$ConnectRunnable;->this$0:Lcom/wen/fluorescence/lis/WifiConnector;

    iget-object v2, v2, Lcom/wen/fluorescence/lis/WifiConnector;->wifiManager:Landroid/net/wifi/WifiManager;

    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 211
    :cond_2
    iget-object v2, p0, Lcom/wen/fluorescence/lis/WifiConnector$ConnectRunnable;->this$0:Lcom/wen/fluorescence/lis/WifiConnector;

    iget-object v2, v2, Lcom/wen/fluorescence/lis/WifiConnector;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    .line 212
    .local v2, "netID":I
    iget-object v3, p0, Lcom/wen/fluorescence/lis/WifiConnector$ConnectRunnable;->this$0:Lcom/wen/fluorescence/lis/WifiConnector;

    iget-object v3, v3, Lcom/wen/fluorescence/lis/WifiConnector;->wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v3

    .line 213
    .local v3, "enabled":Z
    iget-object v4, p0, Lcom/wen/fluorescence/lis/WifiConnector$ConnectRunnable;->this$0:Lcom/wen/fluorescence/lis/WifiConnector;

    iget-object v4, v4, Lcom/wen/fluorescence/lis/WifiConnector;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 214
    const-string v4, "ads"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wifi ======"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 216
    if-eqz v3, :cond_3

    .line 217
    iget-object v4, p0, Lcom/wen/fluorescence/lis/WifiConnector$ConnectRunnable;->this$0:Lcom/wen/fluorescence/lis/WifiConnector;

    const-string v5, "0"

    invoke-static {v4, v5}, Lcom/wen/fluorescence/lis/WifiConnector;->access$200(Lcom/wen/fluorescence/lis/WifiConnector;Ljava/lang/String;)V

    goto :goto_2

    .line 219
    :cond_3
    iget-object v4, p0, Lcom/wen/fluorescence/lis/WifiConnector$ConnectRunnable;->this$0:Lcom/wen/fluorescence/lis/WifiConnector;

    const-string v5, "1"

    invoke-static {v4, v5}, Lcom/wen/fluorescence/lis/WifiConnector;->access$200(Lcom/wen/fluorescence/lis/WifiConnector;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 224
    .end local v0    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "tempConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "netID":I
    .end local v3    # "enabled":Z
    :goto_2
    goto :goto_3

    .line 221
    :catch_1
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 225
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method
