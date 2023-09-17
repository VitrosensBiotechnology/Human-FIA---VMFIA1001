.class Lcom/wen/fluorescence/Fragment/SystemRDFragment$5;
.super Ljava/lang/Object;
.source "SystemRDFragment.java"

# interfaces
.implements Lcom/wen/fluorescence/util/MyDialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SystemRDFragment;->exitSystem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    .line 221
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$5;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelListener()V
    .locals 0

    .line 230
    return-void
.end method

.method public okListener()V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$5;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 225
    return-void
.end method
