.class Lcom/wen/fluorescence/Fragment/HistoryFragment$3;
.super Lcom/wen/fluorescence/util/MyOnClickListener;
.source "HistoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/Fragment/HistoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/HistoryFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/HistoryFragment;

    .line 199
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .line 202
    invoke-super {p0, p1}, Lcom/wen/fluorescence/util/MyOnClickListener;->onClick(Landroid/view/View;)V

    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 214
    :sswitch_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->access$400(Lcom/wen/fluorescence/Fragment/HistoryFragment;)V

    .line 215
    goto :goto_0

    .line 220
    :sswitch_1
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->access$600(Lcom/wen/fluorescence/Fragment/HistoryFragment;)V

    .line 221
    goto :goto_0

    .line 205
    :sswitch_2
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->access$100(Lcom/wen/fluorescence/Fragment/HistoryFragment;)V

    .line 206
    goto :goto_0

    .line 208
    :sswitch_3
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->access$200(Lcom/wen/fluorescence/Fragment/HistoryFragment;)V

    .line 209
    goto :goto_0

    .line 223
    :sswitch_4
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->access$700(Lcom/wen/fluorescence/Fragment/HistoryFragment;)V

    .line 224
    goto :goto_0

    .line 226
    :sswitch_5
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->access$800(Lcom/wen/fluorescence/Fragment/HistoryFragment;)V

    .line 227
    goto :goto_0

    .line 211
    :sswitch_6
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->access$300(Lcom/wen/fluorescence/Fragment/HistoryFragment;)V

    .line 212
    goto :goto_0

    .line 229
    :sswitch_7
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->access$900(Lcom/wen/fluorescence/Fragment/HistoryFragment;)V

    goto :goto_0

    .line 217
    :sswitch_8
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->access$500(Lcom/wen/fluorescence/Fragment/HistoryFragment;)V

    .line 218
    nop

    .line 232
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f080046 -> :sswitch_8
        0x7f08004d -> :sswitch_7
        0x7f080055 -> :sswitch_6
        0x7f08005a -> :sswitch_5
        0x7f08005b -> :sswitch_4
        0x7f080063 -> :sswitch_3
        0x7f080067 -> :sswitch_2
        0x7f080069 -> :sswitch_1
        0x7f08006c -> :sswitch_0
    .end sparse-switch
.end method
