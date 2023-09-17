.class Lcom/wen/fluorescence/Fragment/SystemRDFragment$4;
.super Ljava/lang/Object;
.source "SystemRDFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SystemRDFragment;->setViewIncident()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    .line 195
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    .line 208
    const-string v0, "\u8f93\u5165\u7ed3\u675f\u6267\u884c\u8be5\u65b9\u6cd5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8f93\u5165\u7ed3\u675f:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "sEdit":Ljava/lang/String;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    invoke-virtual {v1}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    const v3, 0x7f0c01d2

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 212
    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "sDev":Ljava/lang/String;
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->access$1100(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 214
    invoke-static {v1}, Lcom/wen/fluorescence/util/PublicFuction;->writeSNSdcardFile(Ljava/lang/String;)V

    .line 216
    .end local v1    # "sDev":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 199
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 204
    return-void
.end method
