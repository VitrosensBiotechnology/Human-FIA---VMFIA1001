.class Lcom/wen/fluorescence/Fragment/HomeFragment$15;
.super Lcom/wen/fluorescence/util/MyOnClickListener;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/HomeFragment;->startReadIDChip()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$etBarCode:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/HomeFragment;Landroid/widget/EditText;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;

    .line 854
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$15;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    iput-object p2, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$15;->val$etBarCode:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$15;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .line 857
    invoke-super {p0, p1}, Lcom/wen/fluorescence/util/MyOnClickListener;->onClick(Landroid/view/View;)V

    .line 858
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$15;->val$etBarCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 859
    invoke-static {}, Lcom/wen/fluorescence/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8bf7\u8f93\u5165\u6761\u7801\u53f7"

    invoke-static {v0, v1}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 860
    return-void

    .line 862
    :cond_0
    const-string v0, "bin"

    invoke-static {}, Lcom/wen/fluorescence/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$15;->val$etBarCode:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/wen/fluorescence/Fragment/HomeFragment$15$1;

    invoke-direct {v3, p0}, Lcom/wen/fluorescence/Fragment/HomeFragment$15$1;-><init>(Lcom/wen/fluorescence/Fragment/HomeFragment$15;)V

    invoke-static {v0, v1, v2, v3}, Lcom/wen/fluorescence/net/CHRequestManager;->getBinFile(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/net/CallBack;)V

    .line 917
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$15;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 918
    return-void
.end method
