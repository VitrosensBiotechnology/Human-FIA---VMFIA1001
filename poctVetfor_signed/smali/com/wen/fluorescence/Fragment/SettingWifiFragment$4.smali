.class Lcom/wen/fluorescence/Fragment/SettingWifiFragment$4;
.super Ljava/lang/Object;
.source "SettingWifiFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/Fragment/SettingWifiFragment;
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

    .line 249
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 252
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080042

    if-eq v0, v1, :cond_2

    const v1, 0x7f080063

    if-eq v0, v1, :cond_1

    const v1, 0x7f080067

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->access$600(Lcom/wen/fluorescence/Fragment/SettingWifiFragment;)V

    .line 261
    goto :goto_0

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->access$700(Lcom/wen/fluorescence/Fragment/SettingWifiFragment;)V

    goto :goto_0

    .line 257
    :cond_2
    const-string v0, "W"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=======WifiConnector:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    invoke-virtual {v2}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/wen/fluorescence/lis/WifiConnector;->getWIFIName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    nop

    .line 266
    :goto_0
    return-void
.end method
