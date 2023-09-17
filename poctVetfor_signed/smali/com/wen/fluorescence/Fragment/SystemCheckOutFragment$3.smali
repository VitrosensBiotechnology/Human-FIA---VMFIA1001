.class Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment$3;
.super Ljava/lang/Object;
.source "SystemCheckOutFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->setViewIncident()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;

    .line 148
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 151
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->access$202(Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;Z)Z

    .line 152
    const/16 v0, 0xfa

    invoke-static {v0}, Lcom/wen/fluorescence/serialport/Protocol;->setHead(I)V

    .line 153
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;

    const-string v1, "\u6e29\u63a7\u529f\u80fd"

    invoke-static {v0, v1}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->access$000(Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->access$100(Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u6e29\u63a7\u505c\u6b62\u52a0\u70ed..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    return-void
.end method
