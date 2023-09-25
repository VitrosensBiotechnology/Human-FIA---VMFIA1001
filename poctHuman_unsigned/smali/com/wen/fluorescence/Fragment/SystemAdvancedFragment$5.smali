.class Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$5;
.super Ljava/lang/Object;
.source "SystemAdvancedFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->showPasswordDialog(Lcom/wen/fluorescence/util/MyDialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

.field final synthetic val$budiler:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    .line 347
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$5;->this$0:Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    iput-object p2, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$5;->val$budiler:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .line 350
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$5;->val$budiler:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 351
    return-void
.end method
