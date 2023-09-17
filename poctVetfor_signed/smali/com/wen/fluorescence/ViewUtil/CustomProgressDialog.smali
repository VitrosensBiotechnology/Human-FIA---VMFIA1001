.class public Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;
.super Landroid/app/Dialog;
.source "CustomProgressDialog.java"


# static fields
.field public static customProgressDialog:Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;->customProgressDialog:Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 18
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;->context:Landroid/content/Context;

    .line 19
    iput-object p1, p0, Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;->context:Landroid/content/Context;

    .line 20
    invoke-static {p1}, Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;->createDialog(Landroid/content/Context;)Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;

    move-result-object v0

    sput-object v0, Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;->customProgressDialog:Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;->context:Landroid/content/Context;

    .line 25
    return-void
.end method

.method public static createDialog(Landroid/content/Context;)Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 28
    new-instance v0, Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;

    const v1, 0x7f0d00a2

    invoke-direct {v0, p0, v1}, Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;->customProgressDialog:Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;

    .line 30
    sget-object v0, Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;->customProgressDialog:Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;

    const v1, 0x7f0a0024

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;->setContentView(I)V

    .line 31
    sget-object v0, Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;->customProgressDialog:Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;

    invoke-virtual {v0}, Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 33
    sget-object v0, Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;->customProgressDialog:Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;

    return-object v0
.end method

.method public static showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "onWindowFocusChanged"    # Z
    .param p4, "onTouchOutside"    # Z

    .line 84
    sget-object v0, Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;->customProgressDialog:Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;->customProgressDialog:Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;

    invoke-virtual {v0}, Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    :cond_0
    new-instance v0, Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;-><init>(Landroid/content/Context;)V

    .line 86
    sget-object v0, Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;->customProgressDialog:Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;

    invoke-virtual {v0, p1}, Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;->setTitile(Ljava/lang/String;)Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;

    .line 87
    sget-object v0, Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;->customProgressDialog:Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;

    invoke-virtual {v0, p2}, Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;->setMessage(Ljava/lang/String;)Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;

    .line 88
    sget-object v0, Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;->customProgressDialog:Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;

    invoke-virtual {v0, p3}, Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;->onWindowFocusChanged(Z)V

    .line 89
    sget-object v0, Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;->customProgressDialog:Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;

    invoke-virtual {v0, p4}, Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 90
    sget-object v0, Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;->customProgressDialog:Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;

    invoke-virtual {v0, p4}, Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;->setCancelable(Z)V

    .line 91
    sget-object v0, Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;->customProgressDialog:Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;

    invoke-virtual {v0}, Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;->show()V

    .line 93
    :cond_1
    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .line 39
    sget-object v0, Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;->customProgressDialog:Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;

    if-nez v0, :cond_0

    .line 40
    return-void

    .line 43
    :cond_0
    sget-object v0, Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;->customProgressDialog:Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;

    const v1, 0x7f08013a

    .line 44
    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 45
    .local v0, "imageView":Landroid/widget/ImageView;
    nop

    .line 46
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 47
    .local v1, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 48
    return-void
.end method

.method public setMessage(Ljava/lang/String;)Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;
    .locals 2
    .param p1, "strMessage"    # Ljava/lang/String;

    .line 71
    sget-object v0, Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;->customProgressDialog:Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;

    .line 72
    const v1, 0x7f080106

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 74
    .local v0, "tvMsg":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :cond_0
    sget-object v1, Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;->customProgressDialog:Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;

    return-object v1
.end method

.method public setTitile(Ljava/lang/String;)Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;
    .locals 1
    .param p1, "strTitle"    # Ljava/lang/String;

    .line 59
    sget-object v0, Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;->customProgressDialog:Lcom/wen/fluorescence/ViewUtil/CustomProgressDialog;

    return-object v0
.end method
