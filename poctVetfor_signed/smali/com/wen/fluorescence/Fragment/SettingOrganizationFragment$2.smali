.class Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment$2;
.super Lcom/wen/fluorescence/util/MyOnClickListener;
.source "SettingOrganizationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment;
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

    .line 58
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment;

    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .line 61
    invoke-super {p0, p1}, Lcom/wen/fluorescence/util/MyOnClickListener;->onClick(Landroid/view/View;)V

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08003b

    if-eq v0, v1, :cond_1

    const v1, 0x7f080089

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v0

    const-string v1, "OrganizationFragment"

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment;

    .line 65
    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment;->access$000(Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->setStringData(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment;

    const v2, 0x7f0c01d2

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 67
    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v0

    const-string v1, "OrganizationFragment"

    const-string v2, ""

    .line 70
    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "organization":Ljava/lang/String;
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment;->access$000(Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .end local v0    # "organization":Ljava/lang/String;
    :goto_0
    return-void
.end method
