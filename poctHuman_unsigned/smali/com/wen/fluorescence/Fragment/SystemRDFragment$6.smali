.class Lcom/wen/fluorescence/Fragment/SystemRDFragment$6;
.super Ljava/lang/Object;
.source "SystemRDFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/Fragment/SystemRDFragment;
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

    .line 234
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 237
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080078

    if-eq v0, v1, :cond_2

    const v1, 0x7f08007f

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->access$600(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    const v2, 0x7f0c017b

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->access$302(Lcom/wen/fluorescence/Fragment/SystemRDFragment;I)I

    .line 241
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->access$400(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->access$900(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "start collecting..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->getLightData()V

    .line 244
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->access$600(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    const v2, 0x7f0c017f

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->access$600(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 248
    goto :goto_0

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->access$1100(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "sEdit":Ljava/lang/String;
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    invoke-virtual {v1}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    const v3, 0x7f0c01d2

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 253
    invoke-static {v0}, Lcom/wen/fluorescence/util/PublicFuction;->writeSNSdcardFile(Ljava/lang/String;)V

    .line 256
    .end local v0    # "sEdit":Ljava/lang/String;
    nop

    .line 260
    :goto_0
    return-void
.end method
