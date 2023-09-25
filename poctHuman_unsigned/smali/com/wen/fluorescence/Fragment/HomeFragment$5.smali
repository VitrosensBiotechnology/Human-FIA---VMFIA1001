.class Lcom/wen/fluorescence/Fragment/HomeFragment$5;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/HomeFragment;->showEnterBarcodeDialog(Lcom/wen/fluorescence/util/MyPassDialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

.field final synthetic val$budiler:Landroid/app/AlertDialog;

.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$passDialogInterface:Lcom/wen/fluorescence/util/MyPassDialogInterface;

.field final synthetic val$spinnerLot:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/HomeFragment;Ljava/util/List;Landroid/widget/Spinner;Lcom/wen/fluorescence/util/MyPassDialogInterface;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;

    .line 571
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$5;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    iput-object p2, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$5;->val$list:Ljava/util/List;

    iput-object p3, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$5;->val$spinnerLot:Landroid/widget/Spinner;

    iput-object p4, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$5;->val$passDialogInterface:Lcom/wen/fluorescence/util/MyPassDialogInterface;

    iput-object p5, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$5;->val$budiler:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .line 578
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$5;->val$list:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$5;->val$list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$5;->val$spinnerLot:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 582
    .local v0, "position":I
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$5;->val$passDialogInterface:Lcom/wen/fluorescence/util/MyPassDialogInterface;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$5;->val$list:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget-object v2, v2, Lcom/wen/fluorescence/bean/IDChipInfoN;->new_barCode:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/wen/fluorescence/util/MyPassDialogInterface;->okListener(Ljava/lang/String;)V

    .line 583
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$5;->val$budiler:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 584
    return-void

    .line 579
    .end local v0    # "position":I
    :cond_1
    :goto_0
    return-void
.end method
