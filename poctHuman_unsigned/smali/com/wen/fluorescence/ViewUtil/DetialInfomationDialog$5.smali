.class Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$5;
.super Landroid/os/Handler;
.source "DetialInfomationDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;
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

    .line 352
    iput-object p1, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$5;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 355
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 356
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 359
    :pswitch_1
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$5;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    invoke-static {v0}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->access$000(Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$5;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    invoke-static {v1}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->access$000(Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0107

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 360
    goto :goto_0

    .line 364
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/wen/fluorescence/database/TestResult;

    .line 365
    .local v0, "result":Lcom/wen/fluorescence/database/TestResult;
    iget-object v1, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$5;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    invoke-static {v1, v0}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->access$300(Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;Lcom/wen/fluorescence/database/TestResult;)V

    .line 367
    :try_start_0
    const-string v1, "ACK"

    const-string v2, "Q03"

    const-string v3, "ACK"

    const-string v4, "1"

    invoke-static {v1, v2, v3, v4}, Lcom/wen/fluorescence/lis/HL7;->OkACK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, "ack":Ljava/lang/String;
    iget-object v2, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$5;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    invoke-static {v2}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->access$000(Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$5;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    invoke-static {v3}, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->access$200(Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wen/fluorescence/Thread/LISThread;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/wen/fluorescence/Thread/LISThread;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/wen/fluorescence/Thread/LISThread;->addSendData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    .end local v1    # "ack":Ljava/lang/String;
    goto :goto_0

    .line 370
    :catch_0
    move-exception v1

    .line 371
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 373
    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 362
    .end local v0    # "result":Lcom/wen/fluorescence/database/TestResult;
    :pswitch_3
    nop

    .line 377
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x103
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
