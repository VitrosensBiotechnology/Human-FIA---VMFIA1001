.class Lcom/wen/fluorescence/Fragment/HomeFragment$4;
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

.field final synthetic val$passDialogInterface:Lcom/wen/fluorescence/util/MyPassDialogInterface;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/HomeFragment;Lcom/wen/fluorescence/util/MyPassDialogInterface;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;

    .line 564
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    iput-object p2, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$4;->val$passDialogInterface:Lcom/wen/fluorescence/util/MyPassDialogInterface;

    iput-object p3, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$4;->val$budiler:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .line 567
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$4;->val$passDialogInterface:Lcom/wen/fluorescence/util/MyPassDialogInterface;

    invoke-interface {v0}, Lcom/wen/fluorescence/util/MyPassDialogInterface;->cancelListener()V

    .line 568
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$4;->val$budiler:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 569
    return-void
.end method
