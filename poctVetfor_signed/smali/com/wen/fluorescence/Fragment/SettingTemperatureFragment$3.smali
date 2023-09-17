.class Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment$3;
.super Lcom/wen/fluorescence/util/MyOnClickListener;
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

    .line 98
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;

    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .line 101
    invoke-super {p0, p1}, Lcom/wen/fluorescence/util/MyOnClickListener;->onClick(Landroid/view/View;)V

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08003b

    if-eq v0, v1, :cond_5

    const v1, 0x7f080089

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 106
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;->access$000(Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .local v0, "d_temp":D
    const-wide/high16 v2, 0x4039000000000000L    # 25.0

    cmpg-double v4, v0, v2

    const v2, 0x7f0c01d6

    if-ltz v4, :cond_4

    const-wide/high16 v3, 0x4044000000000000L    # 40.0

    cmpl-double v5, v0, v3

    if-lez v5, :cond_1

    goto :goto_1

    .line 112
    :cond_1
    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    mul-double/2addr v3, v0

    double-to-int v0, v3

    .line 117
    .local v0, "temp":I
    nop

    .line 116
    nop

    .line 118
    const/16 v1, 0xfa

    if-lt v0, v1, :cond_3

    const/16 v1, 0x190

    if-le v0, v1, :cond_2

    goto :goto_0

    .line 122
    :cond_2
    invoke-static {v0}, Lcom/wen/fluorescence/serialport/Protocol;->setHead(I)V

    .line 123
    goto :goto_2

    .line 119
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;

    invoke-virtual {v1}, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;

    invoke-virtual {v3, v2}, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 120
    return-void

    .line 109
    .local v0, "d_temp":D
    :cond_4
    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;

    invoke-virtual {v3}, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;

    invoke-virtual {v4, v2}, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 110
    return-void

    .line 113
    .end local v0    # "d_temp":D
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 115
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;

    invoke-virtual {v1}, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;

    const v3, 0x7f0c00c6

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 116
    return-void

    .line 125
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;->init()V

    .line 128
    :goto_2
    return-void
.end method
