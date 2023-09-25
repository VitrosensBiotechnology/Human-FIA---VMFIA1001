.class Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$3;
.super Ljava/lang/Object;
.source "SystemAdvancedFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    .line 288
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .line 291
    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 305
    :sswitch_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v0

    const-string v2, "SP_TEST_MODE"

    invoke-virtual {v0, v2, v1}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->setBooleanData(Ljava/lang/String;Z)V

    .line 306
    goto :goto_0

    .line 308
    :sswitch_1
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    invoke-virtual {v1}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v1

    const-string v2, "SP_TEST_MODE"

    invoke-virtual {v1, v2, v0}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->setBooleanData(Ljava/lang/String;Z)V

    goto :goto_0

    .line 293
    :sswitch_2
    invoke-static {v1}, Lcom/wen/fluorescence/serialport/Protocol;->setLightSwitch(Z)V

    .line 294
    goto :goto_0

    .line 296
    :sswitch_3
    invoke-static {v0}, Lcom/wen/fluorescence/serialport/Protocol;->setLightSwitch(Z)V

    .line 297
    goto :goto_0

    .line 299
    :sswitch_4
    invoke-static {v1}, Lcom/wen/fluorescence/serialport/Protocol;->setFanSwitch(Z)V

    .line 300
    goto :goto_0

    .line 302
    :sswitch_5
    invoke-static {v0}, Lcom/wen/fluorescence/serialport/Protocol;->setFanSwitch(Z)V

    .line 303
    nop

    .line 311
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f08015f -> :sswitch_5
        0x7f080160 -> :sswitch_4
        0x7f08016b -> :sswitch_3
        0x7f08016c -> :sswitch_2
        0x7f08016e -> :sswitch_1
        0x7f08016f -> :sswitch_0
    .end sparse-switch
.end method
