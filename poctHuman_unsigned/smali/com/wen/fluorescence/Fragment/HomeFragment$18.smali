.class Lcom/wen/fluorescence/Fragment/HomeFragment$18;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/wen/fluorescence/net/CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/HomeFragment;->testComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

.field final synthetic val$finalI:I

.field final synthetic val$uploadTestResult:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/HomeFragment;Ljava/util/List;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;

    .line 1288
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$18;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    iput-object p2, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$18;->val$uploadTestResult:Ljava/util/List;

    iput p3, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$18;->val$finalI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 1294
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Object;

    .line 1291
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$18;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$18;->val$uploadTestResult:Ljava/util/List;

    iget v2, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$18;->val$finalI:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v1}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/DBManager;->updateTestResultBySerial(Ljava/lang/String;)V

    .line 1292
    return-void
.end method
