.class Lcom/wen/fluorescence/Fragment/HomeFragment$23;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 1571
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$23;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .line 1574
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$23;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$3600(Lcom/wen/fluorescence/Fragment/HomeFragment;)V

    .line 1575
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$23;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$3700(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1576
    return-void
.end method
