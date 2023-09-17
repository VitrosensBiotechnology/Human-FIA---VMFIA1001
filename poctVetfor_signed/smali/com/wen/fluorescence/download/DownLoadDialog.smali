.class public Lcom/wen/fluorescence/download/DownLoadDialog;
.super Ljava/lang/Object;
.source "DownLoadDialog.java"


# static fields
.field private static dialogInstance:Lcom/wen/fluorescence/download/DownLoadDialog;


# instance fields
.field private dialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private progressBar:Landroid/widget/ProgressBar;

.field private tvMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/wen/fluorescence/download/DownLoadDialog;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/download/DownLoadDialog;

    .line 16
    iget-object v0, p0, Lcom/wen/fluorescence/download/DownLoadDialog;->dialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/download/DownLoadDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 25
    sget-object v0, Lcom/wen/fluorescence/download/DownLoadDialog;->dialogInstance:Lcom/wen/fluorescence/download/DownLoadDialog;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/wen/fluorescence/download/DownLoadDialog;

    invoke-direct {v0}, Lcom/wen/fluorescence/download/DownLoadDialog;-><init>()V

    sput-object v0, Lcom/wen/fluorescence/download/DownLoadDialog;->dialogInstance:Lcom/wen/fluorescence/download/DownLoadDialog;

    .line 28
    :cond_0
    sget-object v0, Lcom/wen/fluorescence/download/DownLoadDialog;->dialogInstance:Lcom/wen/fluorescence/download/DownLoadDialog;

    iput-object p0, v0, Lcom/wen/fluorescence/download/DownLoadDialog;->mContext:Landroid/content/Context;

    .line 29
    sget-object v0, Lcom/wen/fluorescence/download/DownLoadDialog;->dialogInstance:Lcom/wen/fluorescence/download/DownLoadDialog;

    return-object v0
.end method


# virtual methods
.method public setButtonEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 86
    iget-object v0, p0, Lcom/wen/fluorescence/download/DownLoadDialog;->dialog:Landroid/app/AlertDialog;

    const v1, 0x7f080089

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 87
    return-void
.end method

.method public setDismiss()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/wen/fluorescence/download/DownLoadDialog;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/wen/fluorescence/download/DownLoadDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 94
    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .line 65
    iget-object v0, p0, Lcom/wen/fluorescence/download/DownLoadDialog;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/wen/fluorescence/download/DownLoadDialog;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 68
    :cond_0
    return-void
.end method

.method public setProgressComplete()V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/wen/fluorescence/download/DownLoadDialog;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/wen/fluorescence/download/DownLoadDialog;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/download/DownLoadDialog;->tvMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/wen/fluorescence/download/DownLoadDialog;->tvMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wen/fluorescence/download/DownLoadDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0009

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/wen/fluorescence/download/DownLoadDialog;->dialog:Landroid/app/AlertDialog;

    const v1, 0x7f080089

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 78
    return-void
.end method

.method public setShow()V
    .locals 7

    .line 34
    iget-object v0, p0, Lcom/wen/fluorescence/download/DownLoadDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0028

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 36
    .local v0, "view":Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/wen/fluorescence/download/DownLoadDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/wen/fluorescence/download/DownLoadDialog;->dialog:Landroid/app/AlertDialog;

    .line 37
    iget-object v1, p0, Lcom/wen/fluorescence/download/DownLoadDialog;->dialog:Landroid/app/AlertDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 38
    iget-object v1, p0, Lcom/wen/fluorescence/download/DownLoadDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 39
    iget-object v1, p0, Lcom/wen/fluorescence/download/DownLoadDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 41
    iget-object v1, p0, Lcom/wen/fluorescence/download/DownLoadDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 42
    .local v1, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 43
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Landroid/view/Window;->setGravity(I)V

    .line 44
    const/4 v4, 0x6

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 45
    const/16 v4, 0x221

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 46
    const/16 v4, 0x12c

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 47
    invoke-virtual {v1, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 49
    const v4, 0x7f080089

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 50
    .local v4, "btnSure":Landroid/widget/Button;
    const v5, 0x7f08021a

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/wen/fluorescence/download/DownLoadDialog;->tvMessage:Landroid/widget/TextView;

    .line 52
    const v5, 0x7f08014f

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lcom/wen/fluorescence/download/DownLoadDialog;->progressBar:Landroid/widget/ProgressBar;

    .line 53
    iget-object v5, p0, Lcom/wen/fluorescence/download/DownLoadDialog;->progressBar:Landroid/widget/ProgressBar;

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 54
    iget-object v5, p0, Lcom/wen/fluorescence/download/DownLoadDialog;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 55
    new-instance v5, Lcom/wen/fluorescence/download/DownLoadDialog$1;

    invoke-direct {v5, p0}, Lcom/wen/fluorescence/download/DownLoadDialog$1;-><init>(Lcom/wen/fluorescence/download/DownLoadDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 62
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/wen/fluorescence/download/DownLoadDialog;->dialog:Landroid/app/AlertDialog;

    const v1, 0x7f08021a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    return-void
.end method
