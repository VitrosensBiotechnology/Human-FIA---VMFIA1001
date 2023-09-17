.class Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment$1;
.super Landroid/os/Handler;
.source "SettingTemperatureFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;

    .line 32
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 35
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 36
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;->init()V

    .line 39
    :cond_0
    return-void
.end method
