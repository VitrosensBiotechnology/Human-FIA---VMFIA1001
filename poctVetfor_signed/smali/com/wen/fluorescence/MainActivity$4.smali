.class Lcom/wen/fluorescence/MainActivity$4;
.super Lcom/wen/fluorescence/util/MyOnClickListener;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/MainActivity;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/MainActivity;

    .line 323
    iput-object p1, p0, Lcom/wen/fluorescence/MainActivity$4;->this$0:Lcom/wen/fluorescence/MainActivity;

    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .line 326
    invoke-super {p0, p1}, Lcom/wen/fluorescence/util/MyOnClickListener;->onClick(Landroid/view/View;)V

    .line 327
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/Global;->getTestStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity$4;->this$0:Lcom/wen/fluorescence/MainActivity;

    iget-object v1, p0, Lcom/wen/fluorescence/MainActivity$4;->this$0:Lcom/wen/fluorescence/MainActivity;

    const v2, 0x7f0c0120

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 329
    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity$4;->this$0:Lcom/wen/fluorescence/MainActivity;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/wen/fluorescence/MainActivity;->access$500(Lcom/wen/fluorescence/MainActivity;I)V

    .line 332
    return-void
.end method
