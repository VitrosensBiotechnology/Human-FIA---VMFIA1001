.class Lcom/wen/fluorescence/Fragment/HomeFragment$20;
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

.field final synthetic val$serialNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/HomeFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;

    .line 1311
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$20;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    iput-object p2, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$20;->val$serialNumber:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 1330
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$20;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    iget-object v0, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvPreTip:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1331
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$20;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    iget-object v0, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvPreTip:Landroid/widget/TextView;

    const v1, 0x7f0c0117

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1333
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$20;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/wen/fluorescence/MainActivity;

    .line 1334
    .local v0, "mainActivity":Lcom/wen/fluorescence/MainActivity;
    if-eqz v0, :cond_1

    .line 1335
    invoke-virtual {v0}, Lcom/wen/fluorescence/MainActivity;->startUploadDataTimer()V

    .line 1337
    :cond_1
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Object;

    .line 1317
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$20;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$20;->val$serialNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/database/DBManager;->updateTestResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$20;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    iget-object v0, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvPreTip:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1319
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$20;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    iget-object v0, v0, Lcom/wen/fluorescence/Fragment/HomeFragment;->tvPreTip:Landroid/widget/TextView;

    const v1, 0x7f0c0118

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1321
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$20;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/wen/fluorescence/MainActivity;

    .line 1322
    .local v0, "mainActivity":Lcom/wen/fluorescence/MainActivity;
    if-eqz v0, :cond_1

    .line 1323
    invoke-virtual {v0}, Lcom/wen/fluorescence/MainActivity;->startUploadDataTimer()V

    .line 1325
    :cond_1
    return-void
.end method
