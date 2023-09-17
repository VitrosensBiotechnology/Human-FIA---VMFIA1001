.class Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment$1;
.super Ljava/lang/Object;
.source "SystemSelfTestFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;

    .line 82
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_2

    .line 123
    :sswitch_0
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->getReagentInfo()V

    goto/16 :goto_2

    .line 93
    :sswitch_1
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->access$000(Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/Global;->getLanguage()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 115
    new-instance v0, Lcom/wen/fluorescence/printer/Printer;

    invoke-direct {v0}, Lcom/wen/fluorescence/printer/Printer;-><init>()V

    .line 115
    .local v1, "printer":Lcom/wen/fluorescence/printer/Printer;
    :goto_0
    move-object v1, v0

    goto :goto_1

    .line 109
    .end local v1    # "printer":Lcom/wen/fluorescence/printer/Printer;
    :pswitch_0
    new-instance v0, Lcom/wen/fluorescence/printer/PrinterRussian;

    invoke-direct {v0}, Lcom/wen/fluorescence/printer/PrinterRussian;-><init>()V

    .line 110
    .local v0, "printer":Lcom/wen/fluorescence/printer/Printer;
    goto :goto_0

    .line 106
    .end local v0    # "printer":Lcom/wen/fluorescence/printer/Printer;
    :pswitch_1
    new-instance v0, Lcom/wen/fluorescence/printer/PrinterItaly;

    invoke-direct {v0}, Lcom/wen/fluorescence/printer/PrinterItaly;-><init>()V

    .line 107
    .restart local v0    # "printer":Lcom/wen/fluorescence/printer/Printer;
    goto :goto_0

    .line 100
    .end local v0    # "printer":Lcom/wen/fluorescence/printer/Printer;
    :pswitch_2
    new-instance v0, Lcom/wen/fluorescence/printer/PrinterPortugal;

    invoke-direct {v0}, Lcom/wen/fluorescence/printer/PrinterPortugal;-><init>()V

    .line 101
    .restart local v0    # "printer":Lcom/wen/fluorescence/printer/Printer;
    goto :goto_0

    .line 97
    .end local v0    # "printer":Lcom/wen/fluorescence/printer/Printer;
    :pswitch_3
    new-instance v0, Lcom/wen/fluorescence/printer/PrinterSpanish;

    invoke-direct {v0}, Lcom/wen/fluorescence/printer/PrinterSpanish;-><init>()V

    .line 98
    .restart local v0    # "printer":Lcom/wen/fluorescence/printer/Printer;
    goto :goto_0

    .line 112
    .end local v0    # "printer":Lcom/wen/fluorescence/printer/Printer;
    :pswitch_4
    new-instance v0, Lcom/wen/fluorescence/printer/PrinterFrench;

    invoke-direct {v0}, Lcom/wen/fluorescence/printer/PrinterFrench;-><init>()V

    .line 113
    .restart local v0    # "printer":Lcom/wen/fluorescence/printer/Printer;
    goto :goto_0

    .line 103
    .end local v0    # "printer":Lcom/wen/fluorescence/printer/Printer;
    :pswitch_5
    new-instance v0, Lcom/wen/fluorescence/printer/PrinterGerman;

    invoke-direct {v0}, Lcom/wen/fluorescence/printer/PrinterGerman;-><init>()V

    .line 104
    .restart local v0    # "printer":Lcom/wen/fluorescence/printer/Printer;
    goto :goto_0

    .line 115
    .end local v0    # "printer":Lcom/wen/fluorescence/printer/Printer;
    .restart local v1    # "printer":Lcom/wen/fluorescence/printer/Printer;
    :goto_1
    nop

    .line 118
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->access$100(Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;)Z

    move-result v3

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->access$200(Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;)Z

    move-result v4

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->access$300(Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;)Z

    move-result v5

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->access$400(Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;)Z

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lcom/wen/fluorescence/printer/Printer;->printerQC(Landroid/content/Context;ZZZZ)V

    .line 119
    .end local v1    # "printer":Lcom/wen/fluorescence/printer/Printer;
    goto :goto_2

    .line 90
    :sswitch_2
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->setCardOut()V

    .line 91
    goto :goto_2

    .line 87
    :sswitch_3
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->setCardIn()V

    .line 88
    nop

    .line 126
    :cond_0
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f08003c -> :sswitch_3
        0x7f08003d -> :sswitch_2
        0x7f080069 -> :sswitch_1
        0x7f08008c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1a00003
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
