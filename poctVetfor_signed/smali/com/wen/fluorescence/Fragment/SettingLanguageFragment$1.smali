.class Lcom/wen/fluorescence/Fragment/SettingLanguageFragment$1;
.super Ljava/lang/Object;
.source "SettingLanguageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;->setViewIncident()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;

    .line 123
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 126
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;

    const v2, 0x7f0c0023

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment$1$1;

    invoke-direct {v2, p0}, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment$1$1;-><init>(Lcom/wen/fluorescence/Fragment/SettingLanguageFragment$1;)V

    invoke-static {v0, v1, v2}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 137
    return-void
.end method
