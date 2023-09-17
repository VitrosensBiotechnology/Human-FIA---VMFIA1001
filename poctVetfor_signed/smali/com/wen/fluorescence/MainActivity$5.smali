.class Lcom/wen/fluorescence/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/wen/fluorescence/net/CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/MainActivity;->uploadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/MainActivity;

.field final synthetic val$testResult:Lcom/wen/fluorescence/database/TestResult;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/MainActivity;Lcom/wen/fluorescence/database/TestResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/MainActivity;

    .line 508
    iput-object p1, p0, Lcom/wen/fluorescence/MainActivity$5;->this$0:Lcom/wen/fluorescence/MainActivity;

    iput-object p2, p0, Lcom/wen/fluorescence/MainActivity$5;->val$testResult:Lcom/wen/fluorescence/database/TestResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 518
    const-string v0, "MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9519\u8bef\u4fe1\u606f\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Object;

    .line 513
    invoke-static {}, Lcom/wen/fluorescence/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/wen/fluorescence/MainActivity$5;->val$testResult:Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v2}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/database/DBManager;->updateTestResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    return-void
.end method
