.class Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment$2;
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

    .line 116
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 119
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/wen/fluorescence/serialport/Protocol;->setFanSwitch(Z)V

    .line 120
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;

    const-string v1, "\u98ce\u6247\u529f\u80fd"

    invoke-static {v0, v1}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->access$000(Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->access$100(Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u98ce\u6247\u5173\u95ed..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    return-void
.end method
