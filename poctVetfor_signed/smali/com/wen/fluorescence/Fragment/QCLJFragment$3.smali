.class Lcom/wen/fluorescence/Fragment/QCLJFragment$3;
.super Ljava/lang/Object;
.source "QCLJFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/Fragment/QCLJFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/QCLJFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/QCLJFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/QCLJFragment;

    .line 397
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/QCLJFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 400
    const/4 v0, 0x1

    if-eqz p2, :cond_2

    .line 401
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/QCLJFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->access$500(Lcom/wen/fluorescence/Fragment/QCLJFragment;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getId()I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 402
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/QCLJFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->access$500(Lcom/wen/fluorescence/Fragment/QCLJFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 404
    :cond_0
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/QCLJFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->access$500(Lcom/wen/fluorescence/Fragment/QCLJFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 406
    :goto_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/QCLJFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->access$600(Lcom/wen/fluorescence/Fragment/QCLJFragment;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 407
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/QCLJFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->access$600(Lcom/wen/fluorescence/Fragment/QCLJFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/QCLJFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->access$600(Lcom/wen/fluorescence/Fragment/QCLJFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 412
    :cond_2
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/QCLJFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->access$500(Lcom/wen/fluorescence/Fragment/QCLJFragment;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getId()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 413
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/QCLJFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->access$600(Lcom/wen/fluorescence/Fragment/QCLJFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 415
    :cond_3
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCLJFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/QCLJFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/QCLJFragment;->access$500(Lcom/wen/fluorescence/Fragment/QCLJFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 418
    :goto_1
    return-void
.end method
