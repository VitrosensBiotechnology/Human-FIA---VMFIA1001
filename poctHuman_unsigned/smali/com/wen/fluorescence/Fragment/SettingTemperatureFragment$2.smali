.class Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment$2;
.super Ljava/lang/Object;
.source "SettingTemperatureFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


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

    .line 86
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .line 89
    const v0, 0x7f080171

    if-ne p2, v0, :cond_0

    .line 90
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/wen/fluorescence/serialport/Protocol;->setHeadSwitch(Z)V

    goto :goto_0

    .line 92
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/wen/fluorescence/serialport/Protocol;->setHeadSwitch(Z)V

    .line 94
    :goto_0
    return-void
.end method
