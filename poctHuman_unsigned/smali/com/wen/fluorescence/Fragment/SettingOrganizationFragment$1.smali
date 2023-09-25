.class Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment$1;
.super Ljava/lang/Object;
.source "SettingOrganizationFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment;->setViewIncident()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment;

    .line 48
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .line 51
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v0

    const-string v1, "SP_DEFAULT_SAMPLE_MODE"

    invoke-virtual {v0, v1, p2}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->setIntData(Ljava/lang/String;I)V

    .line 52
    return-void
.end method
