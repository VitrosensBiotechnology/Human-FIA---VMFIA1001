.class Lcom/wen/fluorescence/Fragment/SettingLISFragment$4;
.super Ljava/lang/Object;
.source "SettingLISFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SettingLISFragment;->setViewIncident()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    .line 238
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .param p1, "radioGroup"    # Landroid/widget/RadioGroup;
    .param p2, "i"    # I

    .line 241
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 243
    :pswitch_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v0

    const-string v1, "LIS_SWITCH"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->setBooleanData(Ljava/lang/String;Z)V

    .line 244
    goto :goto_0

    .line 246
    :pswitch_1
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v0

    const-string v1, "LIS_SWITCH"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->setBooleanData(Ljava/lang/String;Z)V

    .line 249
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f080170
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
