.class public Lcom/wen/fluorescence/util/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static show(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 17
    return-void
.end method

.method public static show(Landroid/content/Context;II)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "duration"    # I

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 21
    return-void
.end method

.method public static varargs show(Landroid/content/Context;II[Ljava/lang/Object;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "duration"    # I
    .param p3, "args"    # [Ljava/lang/Object;

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 41
    return-void
.end method

.method public static varargs show(Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 33
    return-void
.end method

.method public static show(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;

    .line 49
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 50
    .local v0, "toast":Landroid/widget/Toast;
    const/4 v1, 0x0

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 51
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 52
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 53
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 24
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 25
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "duration"    # I

    .line 28
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 29
    return-void
.end method

.method public static varargs show(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "duration"    # I
    .param p3, "args"    # [Ljava/lang/Object;

    .line 44
    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 45
    return-void
.end method

.method public static varargs show(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 36
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 37
    return-void
.end method
