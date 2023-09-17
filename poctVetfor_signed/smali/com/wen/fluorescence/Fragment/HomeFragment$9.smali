.class Lcom/wen/fluorescence/Fragment/HomeFragment$9;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/HomeFragment;->showSampleSelectDialog([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$sampleType:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/HomeFragment;Landroid/app/AlertDialog;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;

    .line 700
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$9;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    iput-object p2, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$9;->val$dialog:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$9;->val$sampleType:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 703
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$9;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$1000(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/widget/Spinner;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 704
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$9;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 705
    invoke-static {}, Lcom/wen/fluorescence/Thread/MyCircleTimer;->getInstance()Lcom/wen/fluorescence/Thread/MyCircleTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/Thread/MyCircleTimer;->setTimerCancel()V

    .line 706
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$9;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/Thread/TestThread;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/Thread/TestThread;

    move-result-object v0

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$9;->val$sampleType:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/Thread/TestThread;->setSampleType(Ljava/lang/String;)V

    .line 707
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$9;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/Thread/TestThread;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/Thread/TestThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/Thread/TestThread;->continuteToCollection()V

    .line 708
    return-void
.end method
