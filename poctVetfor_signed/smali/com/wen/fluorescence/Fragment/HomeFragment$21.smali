.class Lcom/wen/fluorescence/Fragment/HomeFragment$21;
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

    .line 1547
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$21;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 1550
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$21;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    iget-object v0, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->etScan:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1551
    return-void
.end method
