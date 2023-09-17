.class Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$4;
.super Ljava/lang/Object;
.source "DetialInfomationDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->setDialogShow(Lcom/wen/fluorescence/database/TestResult;Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$DetialCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    .line 312
    iput-object p1, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$4;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 315
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$4;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    iget-object v0, v0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->etSampleNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "sampleNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$4;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    invoke-static {v1}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->access$000(Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$4;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    invoke-static {v2}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->access$000(Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c014f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 318
    return-void

    .line 321
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$4;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    invoke-static {v1}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->access$000(Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$4;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    invoke-static {v2}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->access$200(Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wen/fluorescence/Thread/LISThread;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/wen/fluorescence/Thread/LISThread;

    move-result-object v1

    iget-object v2, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$4;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    invoke-static {v2}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->access$108(Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/wen/fluorescence/lis/HL7;->QRY_Q02(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/Thread/LISThread;->addSendData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    goto :goto_0

    .line 322
    :catch_0
    move-exception v1

    .line 323
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 325
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
