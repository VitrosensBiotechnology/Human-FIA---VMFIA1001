.class public Lcom/wen/fluorescence/util/MyProgressDialog;
.super Ljava/lang/Object;
.source "MyProgressDialog.java"


# static fields
.field private static instance:Lcom/wen/fluorescence/util/MyProgressDialog;


# instance fields
.field Progress:I

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private pdialog:Landroid/app/ProgressDialog;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/wen/fluorescence/util/MyProgressDialog;->Progress:I

    .line 79
    new-instance v1, Lcom/wen/fluorescence/util/MyProgressDialog$4;

    invoke-direct {v1, p0}, Lcom/wen/fluorescence/util/MyProgressDialog$4;-><init>(Lcom/wen/fluorescence/util/MyProgressDialog;)V

    iput-object v1, p0, Lcom/wen/fluorescence/util/MyProgressDialog;->mHandler:Landroid/os/Handler;

    .line 32
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/wen/fluorescence/util/MyProgressDialog;->pdialog:Landroid/app/ProgressDialog;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/wen/fluorescence/util/MyProgressDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/util/MyProgressDialog;

    .line 13
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyProgressDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wen/fluorescence/util/MyProgressDialog;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/util/MyProgressDialog;

    .line 13
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyProgressDialog;->pdialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/MyProgressDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 23
    sget-object v0, Lcom/wen/fluorescence/util/MyProgressDialog;->instance:Lcom/wen/fluorescence/util/MyProgressDialog;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/wen/fluorescence/util/MyProgressDialog;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/util/MyProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/wen/fluorescence/util/MyProgressDialog;->instance:Lcom/wen/fluorescence/util/MyProgressDialog;

    .line 27
    :cond_0
    sget-object v0, Lcom/wen/fluorescence/util/MyProgressDialog;->instance:Lcom/wen/fluorescence/util/MyProgressDialog;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyProgressDialog;->pdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 74
    invoke-static {}, Lcom/wen/fluorescence/Thread/MyCircleTimer;->getInstance()Lcom/wen/fluorescence/Thread/MyCircleTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/Thread/MyCircleTimer;->setTimerCancel()V

    .line 75
    const/4 v0, 0x0

    sput-object v0, Lcom/wen/fluorescence/util/MyProgressDialog;->instance:Lcom/wen/fluorescence/util/MyProgressDialog;

    .line 76
    return-void
.end method

.method public setMaxProgress()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyProgressDialog;->pdialog:Landroid/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 70
    return-void
.end method

.method public show()V
    .locals 4

    .line 38
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyProgressDialog;->pdialog:Landroid/app/ProgressDialog;

    const-string v1, "cancel"

    new-instance v2, Lcom/wen/fluorescence/util/MyProgressDialog$1;

    invoke-direct {v2, p0}, Lcom/wen/fluorescence/util/MyProgressDialog$1;-><init>(Lcom/wen/fluorescence/util/MyProgressDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 44
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyProgressDialog;->pdialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/wen/fluorescence/util/MyProgressDialog$2;

    invoke-direct {v1, p0}, Lcom/wen/fluorescence/util/MyProgressDialog$2;-><init>(Lcom/wen/fluorescence/util/MyProgressDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 50
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyProgressDialog;->pdialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 51
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyProgressDialog;->pdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 53
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyProgressDialog;->pdialog:Landroid/app/ProgressDialog;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 54
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyProgressDialog;->pdialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/wen/fluorescence/util/MyProgressDialog;->pdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c01b4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyProgressDialog;->pdialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 56
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyProgressDialog;->pdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 57
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyProgressDialog;->pdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 58
    invoke-static {}, Lcom/wen/fluorescence/Thread/MyCircleTimer;->getInstance()Lcom/wen/fluorescence/Thread/MyCircleTimer;

    move-result-object v0

    new-instance v1, Lcom/wen/fluorescence/util/MyProgressDialog$3;

    invoke-direct {v1, p0}, Lcom/wen/fluorescence/util/MyProgressDialog$3;-><init>(Lcom/wen/fluorescence/util/MyProgressDialog;)V

    const/16 v2, 0x6e

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/Thread/MyCircleTimer;->setCircleTimerStart(Lcom/wen/fluorescence/Thread/MyCircleTimer$TimerOutCallBack;I)V

    .line 64
    return-void
.end method
