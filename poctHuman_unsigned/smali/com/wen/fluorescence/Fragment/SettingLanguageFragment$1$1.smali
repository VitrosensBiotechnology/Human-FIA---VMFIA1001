.class Lcom/wen/fluorescence/Fragment/SettingLanguageFragment$1$1;
.super Ljava/lang/Object;
.source "SettingLanguageFragment.java"

# interfaces
.implements Lcom/wen/fluorescence/util/MyDialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SettingLanguageFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wen/fluorescence/Fragment/SettingLanguageFragment$1;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SettingLanguageFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/wen/fluorescence/Fragment/SettingLanguageFragment$1;

    .line 126
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment$1$1;->this$1:Lcom/wen/fluorescence/Fragment/SettingLanguageFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelListener()V
    .locals 0

    .line 135
    return-void
.end method

.method public okListener()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment$1$1;->this$1:Lcom/wen/fluorescence/Fragment/SettingLanguageFragment$1;

    iget-object v0, v0, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment$1$1;->this$1:Lcom/wen/fluorescence/Fragment/SettingLanguageFragment$1;

    iget-object v1, v1, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;->access$000(Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;)Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;->access$100(Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;I)V

    .line 130
    return-void
.end method
