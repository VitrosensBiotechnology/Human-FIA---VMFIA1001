.class Lcom/wen/fluorescence/Fragment/QCDataFragment$3;
.super Lcom/wen/fluorescence/util/MyOnClickListener;
.source "QCDataFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/Fragment/QCDataFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/QCDataFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/QCDataFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/QCDataFragment;

    .line 155
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/QCDataFragment;

    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .line 158
    invoke-super {p0, p1}, Lcom/wen/fluorescence/util/MyOnClickListener;->onClick(Landroid/view/View;)V

    .line 159
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 170
    :sswitch_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/QCDataFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->access$400(Lcom/wen/fluorescence/Fragment/QCDataFragment;)V

    .line 171
    goto :goto_0

    .line 176
    :sswitch_1
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/QCDataFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->access$600(Lcom/wen/fluorescence/Fragment/QCDataFragment;)V

    .line 177
    goto :goto_0

    .line 161
    :sswitch_2
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/QCDataFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->access$100(Lcom/wen/fluorescence/Fragment/QCDataFragment;)V

    .line 162
    goto :goto_0

    .line 164
    :sswitch_3
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/QCDataFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->access$200(Lcom/wen/fluorescence/Fragment/QCDataFragment;)V

    .line 165
    goto :goto_0

    .line 179
    :sswitch_4
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/QCDataFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->access$700(Lcom/wen/fluorescence/Fragment/QCDataFragment;)V

    .line 180
    goto :goto_0

    .line 182
    :sswitch_5
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/QCDataFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->access$800(Lcom/wen/fluorescence/Fragment/QCDataFragment;)V

    goto :goto_0

    .line 167
    :sswitch_6
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/QCDataFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->access$300(Lcom/wen/fluorescence/Fragment/QCDataFragment;)V

    .line 168
    goto :goto_0

    .line 173
    :sswitch_7
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/QCDataFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->access$500(Lcom/wen/fluorescence/Fragment/QCDataFragment;)V

    .line 174
    nop

    .line 185
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f080046 -> :sswitch_7
        0x7f080055 -> :sswitch_6
        0x7f08005a -> :sswitch_5
        0x7f08005b -> :sswitch_4
        0x7f080063 -> :sswitch_3
        0x7f080067 -> :sswitch_2
        0x7f080069 -> :sswitch_1
        0x7f08006c -> :sswitch_0
    .end sparse-switch
.end method
