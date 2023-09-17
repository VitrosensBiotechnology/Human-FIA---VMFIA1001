.class Lcom/wen/fluorescence/Fragment/HomeFragment$12;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/wen/fluorescence/Thread/MyCircleTimer$TimerOutCallBack;


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

.field final synthetic val$sampleType:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/HomeFragment;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;

    .line 732
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$12;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    iput-object p2, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$12;->val$sampleType:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public timerPeriod()V
    .locals 2

    .line 736
    :try_start_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$12;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/wen/fluorescence/Fragment/HomeFragment$12$1;

    invoke-direct {v1, p0}, Lcom/wen/fluorescence/Fragment/HomeFragment$12$1;-><init>(Lcom/wen/fluorescence/Fragment/HomeFragment$12;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    goto :goto_0

    .line 760
    :catch_0
    move-exception v0

    .line 761
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 763
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
