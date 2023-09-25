.class Lcom/wen/fluorescence/Fragment/HomeFragment$22;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/HomeFragment;->showScanDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/HomeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;

    .line 1554
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$22;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 1557
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 1558
    const-string v0, "\u54c8\u54c8"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u626b\u7801\u7ed3\u675f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$22;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    iget-object v2, v2, Lcom/wen/fluorescence/Fragment/HomeFragment;->etScan:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$22;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    iget-object v0, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->etScan:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1560
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$22;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    iget-object v0, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvPreTip:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1561
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$22;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$22;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    iget-object v1, v1, Lcom/wen/fluorescence/Fragment/HomeFragment;->etScan:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$3502(Lcom/wen/fluorescence/Fragment/HomeFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1562
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$22;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$1300(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x222

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1565
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1567
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
