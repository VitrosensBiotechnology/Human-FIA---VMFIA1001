.class Lcom/wen/fluorescence/Fragment/QCTestFragment$4;
.super Lcom/wen/fluorescence/util/MyOnClickListener;
.source "QCTestFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/Fragment/QCTestFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/QCTestFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/QCTestFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/QCTestFragment;

    .line 273
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/QCTestFragment;

    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .line 276
    invoke-super {p0, p1}, Lcom/wen/fluorescence/util/MyOnClickListener;->onClick(Landroid/view/View;)V

    .line 278
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/Global;->getTestStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/QCTestFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/QCTestFragment;

    const v2, 0x7f0c0120

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 280
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/QCTestFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->access$900(Lcom/wen/fluorescence/Fragment/QCTestFragment;)V

    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080081

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 288
    :pswitch_0
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->setCardOut()V

    .line 289
    goto :goto_0

    .line 285
    :pswitch_1
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->setCardIn()V

    .line 286
    goto :goto_0

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/QCTestFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->access$600(Lcom/wen/fluorescence/Fragment/QCTestFragment;)V

    .line 294
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f08003c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
