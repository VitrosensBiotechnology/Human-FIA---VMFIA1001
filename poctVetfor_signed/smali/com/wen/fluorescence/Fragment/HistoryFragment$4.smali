.class Lcom/wen/fluorescence/Fragment/HistoryFragment$4;
.super Ljava/lang/Object;
.source "HistoryFragment.java"

# interfaces
.implements Lcom/wen/fluorescence/net/CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/HistoryFragment;->sendLis()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

.field final synthetic val$finalI:I


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/HistoryFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/HistoryFragment;

    .line 291
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    iput p2, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$4;->val$finalI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 297
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Object;

    .line 294
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->access$1000(Lcom/wen/fluorescence/Fragment/HistoryFragment;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$4;->val$finalI:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v1}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/DBManager;->updateTestResultBySerial(Ljava/lang/String;)V

    .line 295
    return-void
.end method
