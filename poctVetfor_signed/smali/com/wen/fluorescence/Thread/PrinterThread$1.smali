.class Lcom/wen/fluorescence/Thread/PrinterThread$1;
.super Ljava/lang/Thread;
.source "PrinterThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Thread/PrinterThread;->setPrinterStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Thread/PrinterThread;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Thread/PrinterThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Thread/PrinterThread;

    .line 90
    iput-object p1, p0, Lcom/wen/fluorescence/Thread/PrinterThread$1;->this$0:Lcom/wen/fluorescence/Thread/PrinterThread;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 93
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 95
    :cond_0
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/Global;->getSoftType()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 103
    :pswitch_0
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/PrinterThread$1;->this$0:Lcom/wen/fluorescence/Thread/PrinterThread;

    invoke-static {v0}, Lcom/wen/fluorescence/Thread/PrinterThread;->access$200(Lcom/wen/fluorescence/Thread/PrinterThread;)Lcom/wen/fluorescence/printer/Printer;

    move-result-object v0

    iget-object v2, p0, Lcom/wen/fluorescence/Thread/PrinterThread$1;->this$0:Lcom/wen/fluorescence/Thread/PrinterThread;

    invoke-static {v2}, Lcom/wen/fluorescence/Thread/PrinterThread;->access$000(Lcom/wen/fluorescence/Thread/PrinterThread;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/wen/fluorescence/Thread/PrinterThread$1;->this$0:Lcom/wen/fluorescence/Thread/PrinterThread;

    invoke-static {v3}, Lcom/wen/fluorescence/Thread/PrinterThread;->access$000(Lcom/wen/fluorescence/Thread/PrinterThread;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v3

    iget-object v4, p0, Lcom/wen/fluorescence/Thread/PrinterThread$1;->this$0:Lcom/wen/fluorescence/Thread/PrinterThread;

    invoke-static {v4}, Lcom/wen/fluorescence/Thread/PrinterThread;->access$100(Lcom/wen/fluorescence/Thread/PrinterThread;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wen/fluorescence/database/TestResult;

    iget-object v5, p0, Lcom/wen/fluorescence/Thread/PrinterThread$1;->this$0:Lcom/wen/fluorescence/Thread/PrinterThread;

    invoke-static {v5}, Lcom/wen/fluorescence/Thread/PrinterThread;->access$100(Lcom/wen/fluorescence/Thread/PrinterThread;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/wen/fluorescence/printer/Printer;->printeCow(Landroid/content/Context;Lcom/wen/fluorescence/database/DBManager;Lcom/wen/fluorescence/database/TestResult;Ljava/util/List;)V

    goto :goto_0

    .line 100
    :pswitch_1
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/PrinterThread$1;->this$0:Lcom/wen/fluorescence/Thread/PrinterThread;

    invoke-static {v0}, Lcom/wen/fluorescence/Thread/PrinterThread;->access$200(Lcom/wen/fluorescence/Thread/PrinterThread;)Lcom/wen/fluorescence/printer/Printer;

    move-result-object v0

    iget-object v2, p0, Lcom/wen/fluorescence/Thread/PrinterThread$1;->this$0:Lcom/wen/fluorescence/Thread/PrinterThread;

    invoke-static {v2}, Lcom/wen/fluorescence/Thread/PrinterThread;->access$000(Lcom/wen/fluorescence/Thread/PrinterThread;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/wen/fluorescence/Thread/PrinterThread$1;->this$0:Lcom/wen/fluorescence/Thread/PrinterThread;

    invoke-static {v3}, Lcom/wen/fluorescence/Thread/PrinterThread;->access$100(Lcom/wen/fluorescence/Thread/PrinterThread;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wen/fluorescence/database/TestResult;

    iget-object v4, p0, Lcom/wen/fluorescence/Thread/PrinterThread$1;->this$0:Lcom/wen/fluorescence/Thread/PrinterThread;

    invoke-static {v4}, Lcom/wen/fluorescence/Thread/PrinterThread;->access$100(Lcom/wen/fluorescence/Thread/PrinterThread;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/wen/fluorescence/printer/Printer;->printReport(Landroid/content/Context;Lcom/wen/fluorescence/database/TestResult;Ljava/util/List;)V

    .line 101
    goto :goto_0

    .line 97
    :pswitch_2
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/PrinterThread$1;->this$0:Lcom/wen/fluorescence/Thread/PrinterThread;

    invoke-static {v0}, Lcom/wen/fluorescence/Thread/PrinterThread;->access$200(Lcom/wen/fluorescence/Thread/PrinterThread;)Lcom/wen/fluorescence/printer/Printer;

    move-result-object v0

    iget-object v2, p0, Lcom/wen/fluorescence/Thread/PrinterThread$1;->this$0:Lcom/wen/fluorescence/Thread/PrinterThread;

    invoke-static {v2}, Lcom/wen/fluorescence/Thread/PrinterThread;->access$000(Lcom/wen/fluorescence/Thread/PrinterThread;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/wen/fluorescence/Thread/PrinterThread$1;->this$0:Lcom/wen/fluorescence/Thread/PrinterThread;

    invoke-static {v3}, Lcom/wen/fluorescence/Thread/PrinterThread;->access$000(Lcom/wen/fluorescence/Thread/PrinterThread;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v3

    iget-object v4, p0, Lcom/wen/fluorescence/Thread/PrinterThread$1;->this$0:Lcom/wen/fluorescence/Thread/PrinterThread;

    invoke-static {v4}, Lcom/wen/fluorescence/Thread/PrinterThread;->access$100(Lcom/wen/fluorescence/Thread/PrinterThread;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wen/fluorescence/database/TestResult;

    iget-object v5, p0, Lcom/wen/fluorescence/Thread/PrinterThread$1;->this$0:Lcom/wen/fluorescence/Thread/PrinterThread;

    invoke-static {v5}, Lcom/wen/fluorescence/Thread/PrinterThread;->access$100(Lcom/wen/fluorescence/Thread/PrinterThread;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/wen/fluorescence/printer/Printer;->printe(Landroid/content/Context;Lcom/wen/fluorescence/database/DBManager;Lcom/wen/fluorescence/database/TestResult;Ljava/util/List;)V

    .line 98
    nop

    .line 106
    :goto_0
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/PrinterThread$1;->this$0:Lcom/wen/fluorescence/Thread/PrinterThread;

    invoke-static {v0}, Lcom/wen/fluorescence/Thread/PrinterThread;->access$100(Lcom/wen/fluorescence/Thread/PrinterThread;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 107
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/PrinterThread$1;->this$0:Lcom/wen/fluorescence/Thread/PrinterThread;

    invoke-static {v0}, Lcom/wen/fluorescence/Thread/PrinterThread;->access$100(Lcom/wen/fluorescence/Thread/PrinterThread;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v0}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "serialNumber":Ljava/lang/String;
    iget-object v2, p0, Lcom/wen/fluorescence/Thread/PrinterThread$1;->this$0:Lcom/wen/fluorescence/Thread/PrinterThread;

    invoke-static {v2}, Lcom/wen/fluorescence/Thread/PrinterThread;->access$100(Lcom/wen/fluorescence/Thread/PrinterThread;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 109
    const/4 v2, 0x1

    .line 110
    .local v2, "bSame":Z
    :goto_1
    iget-object v3, p0, Lcom/wen/fluorescence/Thread/PrinterThread$1;->this$0:Lcom/wen/fluorescence/Thread/PrinterThread;

    invoke-static {v3}, Lcom/wen/fluorescence/Thread/PrinterThread;->access$100(Lcom/wen/fluorescence/Thread/PrinterThread;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    if-eqz v2, :cond_4

    .line 111
    const/4 v2, 0x0

    .line 112
    const/4 v3, 0x0

    .line 113
    .local v3, "temp":I
    move v4, v1

    .line 113
    .local v4, "i":I
    :goto_2
    iget-object v5, p0, Lcom/wen/fluorescence/Thread/PrinterThread$1;->this$0:Lcom/wen/fluorescence/Thread/PrinterThread;

    invoke-static {v5}, Lcom/wen/fluorescence/Thread/PrinterThread;->access$100(Lcom/wen/fluorescence/Thread/PrinterThread;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 114
    iget-object v5, p0, Lcom/wen/fluorescence/Thread/PrinterThread$1;->this$0:Lcom/wen/fluorescence/Thread/PrinterThread;

    invoke-static {v5}, Lcom/wen/fluorescence/Thread/PrinterThread;->access$100(Lcom/wen/fluorescence/Thread/PrinterThread;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v5}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 115
    move v3, v4

    .line 116
    const/4 v2, 0x1

    .line 117
    goto :goto_3

    .line 113
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 120
    .end local v4    # "i":I
    :cond_2
    :goto_3
    if-eqz v2, :cond_3

    .line 121
    iget-object v4, p0, Lcom/wen/fluorescence/Thread/PrinterThread$1;->this$0:Lcom/wen/fluorescence/Thread/PrinterThread;

    invoke-static {v4}, Lcom/wen/fluorescence/Thread/PrinterThread;->access$100(Lcom/wen/fluorescence/Thread/PrinterThread;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 123
    .end local v3    # "temp":I
    :cond_3
    goto :goto_1

    .line 125
    .end local v0    # "serialNumber":Ljava/lang/String;
    .end local v2    # "bSame":Z
    :cond_4
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/PrinterThread$1;->this$0:Lcom/wen/fluorescence/Thread/PrinterThread;

    invoke-static {v0}, Lcom/wen/fluorescence/Thread/PrinterThread;->access$100(Lcom/wen/fluorescence/Thread/PrinterThread;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 127
    const-wide/16 v2, 0x1388

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    goto :goto_4

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 132
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/PrinterThread$1;->this$0:Lcom/wen/fluorescence/Thread/PrinterThread;

    invoke-static {v0}, Lcom/wen/fluorescence/Thread/PrinterThread;->access$100(Lcom/wen/fluorescence/Thread/PrinterThread;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/PrinterThread$1;->this$0:Lcom/wen/fluorescence/Thread/PrinterThread;

    invoke-static {v0, v1}, Lcom/wen/fluorescence/Thread/PrinterThread;->access$302(Lcom/wen/fluorescence/Thread/PrinterThread;Z)Z

    .line 134
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
