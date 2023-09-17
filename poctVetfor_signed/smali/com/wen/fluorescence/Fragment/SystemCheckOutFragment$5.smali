.class Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment$5;
.super Ljava/lang/Object;
.source "SystemCheckOutFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;
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

    .line 207
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment$5;->this$0:Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 215
    :sswitch_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment$5;->this$0:Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->access$500(Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;)V

    .line 216
    goto :goto_0

    .line 212
    :sswitch_1
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment$5;->this$0:Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->access$400(Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;)V

    .line 213
    goto :goto_0

    .line 218
    :sswitch_2
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment$5;->this$0:Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->access$600(Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;)V

    .line 219
    goto :goto_0

    .line 233
    :sswitch_3
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment$5;->this$0:Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->access$900(Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;)V

    .line 234
    goto :goto_0

    .line 236
    :sswitch_4
    new-instance v0, Lcom/wen/fluorescence/printer/Printer;

    invoke-direct {v0}, Lcom/wen/fluorescence/printer/Printer;-><init>()V

    .line 237
    .local v0, "printer":Lcom/wen/fluorescence/printer/Printer;
    invoke-virtual {v0}, Lcom/wen/fluorescence/printer/Printer;->openMutilLanguage()V

    .line 237
    .end local v0    # "printer":Lcom/wen/fluorescence/printer/Printer;
    goto :goto_0

    .line 224
    :sswitch_5
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment$5;->this$0:Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->access$800(Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;Ljava/lang/Object;)V

    .line 225
    goto :goto_0

    .line 230
    :sswitch_6
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->setCardOut()V

    .line 231
    goto :goto_0

    .line 227
    :sswitch_7
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->setCardIn()V

    .line 228
    goto :goto_0

    .line 221
    :sswitch_8
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment$5;->this$0:Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->access$700(Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;)V

    .line 222
    nop

    .line 240
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f08003b -> :sswitch_8
        0x7f08003c -> :sswitch_7
        0x7f08003d -> :sswitch_6
        0x7f08003f -> :sswitch_5
        0x7f08004a -> :sswitch_4
        0x7f08004c -> :sswitch_3
        0x7f080063 -> :sswitch_2
        0x7f080080 -> :sswitch_1
        0x7f080082 -> :sswitch_0
    .end sparse-switch
.end method
