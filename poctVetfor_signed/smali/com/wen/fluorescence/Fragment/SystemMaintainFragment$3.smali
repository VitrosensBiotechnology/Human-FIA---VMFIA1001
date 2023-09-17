.class Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$3;
.super Ljava/lang/Object;
.source "SystemMaintainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->showPasswordDialog(Lcom/wen/fluorescence/util/MyDialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

.field final synthetic val$budiler:Landroid/app/AlertDialog;

.field final synthetic val$dialogInterface:Lcom/wen/fluorescence/util/MyDialogInterface;

.field final synthetic val$etPassword:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;Landroid/widget/EditText;Lcom/wen/fluorescence/util/MyDialogInterface;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

    .line 217
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

    iput-object p2, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$3;->val$etPassword:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$3;->val$dialogInterface:Lcom/wen/fluorescence/util/MyDialogInterface;

    iput-object p4, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$3;->val$budiler:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .line 220
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$3;->val$etPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "pwd":Ljava/lang/String;
    const-string v1, "china"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$3;->val$dialogInterface:Lcom/wen/fluorescence/util/MyDialogInterface;

    invoke-interface {v1}, Lcom/wen/fluorescence/util/MyDialogInterface;->okListener()V

    .line 223
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$3;->val$budiler:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

    invoke-virtual {v1}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

    const v3, 0x7f0c01d5

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 227
    :goto_0
    return-void
.end method
