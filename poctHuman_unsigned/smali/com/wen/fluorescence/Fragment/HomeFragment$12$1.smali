.class Lcom/wen/fluorescence/Fragment/HomeFragment$12$1;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/HomeFragment$12;->timerPeriod()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wen/fluorescence/Fragment/HomeFragment$12;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/HomeFragment$12;)V
    .locals 0
    .param p1, "this$1"    # Lcom/wen/fluorescence/Fragment/HomeFragment$12;

    .line 736
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$12$1;->this$1:Lcom/wen/fluorescence/Fragment/HomeFragment$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 739
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$12$1;->this$1:Lcom/wen/fluorescence/Fragment/HomeFragment$12;

    iget-object v0, v0, Lcom/wen/fluorescence/Fragment/HomeFragment$12;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$2600(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 740
    .local v0, "iCount":I
    if-ltz v0, :cond_0

    .line 741
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$12$1;->this$1:Lcom/wen/fluorescence/Fragment/HomeFragment$12;

    iget-object v1, v1, Lcom/wen/fluorescence/Fragment/HomeFragment$12;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$2600(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 743
    :cond_0
    invoke-static {}, Lcom/wen/fluorescence/Thread/MyCircleTimer;->getInstance()Lcom/wen/fluorescence/Thread/MyCircleTimer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wen/fluorescence/Thread/MyCircleTimer;->setTimerCancel()V

    .line 744
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$12$1;->this$1:Lcom/wen/fluorescence/Fragment/HomeFragment$12;

    iget-object v2, v2, Lcom/wen/fluorescence/Fragment/HomeFragment$12;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$1000(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$12$1;->this$1:Lcom/wen/fluorescence/Fragment/HomeFragment$12;

    iget-object v3, v3, Lcom/wen/fluorescence/Fragment/HomeFragment$12;->val$sampleType:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 745
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$12$1;->this$1:Lcom/wen/fluorescence/Fragment/HomeFragment$12;

    iget-object v1, v1, Lcom/wen/fluorescence/Fragment/HomeFragment$12;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$2700(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->performClick()Z

    goto/16 :goto_0

    .line 746
    :cond_1
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$12$1;->this$1:Lcom/wen/fluorescence/Fragment/HomeFragment$12;

    iget-object v2, v2, Lcom/wen/fluorescence/Fragment/HomeFragment$12;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$1000(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$12$1;->this$1:Lcom/wen/fluorescence/Fragment/HomeFragment$12;

    iget-object v3, v3, Lcom/wen/fluorescence/Fragment/HomeFragment$12;->val$sampleType:[Ljava/lang/String;

    aget-object v1, v3, v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 747
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$12$1;->this$1:Lcom/wen/fluorescence/Fragment/HomeFragment$12;

    iget-object v1, v1, Lcom/wen/fluorescence/Fragment/HomeFragment$12;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$2800(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->performClick()Z

    goto/16 :goto_0

    .line 748
    :cond_2
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$12$1;->this$1:Lcom/wen/fluorescence/Fragment/HomeFragment$12;

    iget-object v1, v1, Lcom/wen/fluorescence/Fragment/HomeFragment$12;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$1000(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$12$1;->this$1:Lcom/wen/fluorescence/Fragment/HomeFragment$12;

    iget-object v2, v2, Lcom/wen/fluorescence/Fragment/HomeFragment$12;->val$sampleType:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 749
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$12$1;->this$1:Lcom/wen/fluorescence/Fragment/HomeFragment$12;

    iget-object v1, v1, Lcom/wen/fluorescence/Fragment/HomeFragment$12;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$2900(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->performClick()Z

    goto :goto_0

    .line 750
    :cond_3
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$12$1;->this$1:Lcom/wen/fluorescence/Fragment/HomeFragment$12;

    iget-object v1, v1, Lcom/wen/fluorescence/Fragment/HomeFragment$12;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$1000(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$12$1;->this$1:Lcom/wen/fluorescence/Fragment/HomeFragment$12;

    iget-object v2, v2, Lcom/wen/fluorescence/Fragment/HomeFragment$12;->val$sampleType:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 751
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$12$1;->this$1:Lcom/wen/fluorescence/Fragment/HomeFragment$12;

    iget-object v1, v1, Lcom/wen/fluorescence/Fragment/HomeFragment$12;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$3000(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->performClick()Z

    goto :goto_0

    .line 752
    :cond_4
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$12$1;->this$1:Lcom/wen/fluorescence/Fragment/HomeFragment$12;

    iget-object v1, v1, Lcom/wen/fluorescence/Fragment/HomeFragment$12;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$1000(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$12$1;->this$1:Lcom/wen/fluorescence/Fragment/HomeFragment$12;

    iget-object v2, v2, Lcom/wen/fluorescence/Fragment/HomeFragment$12;->val$sampleType:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 753
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$12$1;->this$1:Lcom/wen/fluorescence/Fragment/HomeFragment$12;

    iget-object v1, v1, Lcom/wen/fluorescence/Fragment/HomeFragment$12;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$3100(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->performClick()Z

    goto :goto_0

    .line 755
    :cond_5
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$12$1;->this$1:Lcom/wen/fluorescence/Fragment/HomeFragment$12;

    iget-object v1, v1, Lcom/wen/fluorescence/Fragment/HomeFragment$12;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$2700(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->performClick()Z

    .line 758
    :goto_0
    return-void
.end method
