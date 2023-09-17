.class Lcom/wen/fluorescence/Fragment/AccountFragment$2;
.super Lcom/wen/fluorescence/util/MyOnClickListener;
.source "AccountFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/Fragment/AccountFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/AccountFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/AccountFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/AccountFragment;

    .line 158
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/AccountFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/AccountFragment;

    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 161
    invoke-super {p0, p1}, Lcom/wen/fluorescence/util/MyOnClickListener;->onClick(Landroid/view/View;)V

    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 167
    :sswitch_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/AccountFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/AccountFragment;->access$300(Lcom/wen/fluorescence/Fragment/AccountFragment;)V

    .line 168
    goto :goto_0

    .line 191
    :sswitch_1
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/AccountFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/AccountFragment;->access$1100(Lcom/wen/fluorescence/Fragment/AccountFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    goto :goto_0

    .line 185
    :sswitch_2
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/AccountFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/AccountFragment;->access$900(Lcom/wen/fluorescence/Fragment/AccountFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    .line 186
    goto :goto_0

    .line 164
    :sswitch_3
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/AccountFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/wen/fluorescence/Fragment/AccountFragment;->access$200(Lcom/wen/fluorescence/Fragment/AccountFragment;I)V

    .line 165
    goto :goto_0

    .line 176
    :sswitch_4
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/AccountFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/AccountFragment;->access$600(Lcom/wen/fluorescence/Fragment/AccountFragment;)V

    .line 177
    goto :goto_0

    .line 170
    :sswitch_5
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/AccountFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/AccountFragment;->access$400(Lcom/wen/fluorescence/Fragment/AccountFragment;)V

    .line 171
    goto :goto_0

    .line 179
    :sswitch_6
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/AccountFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/AccountFragment;->access$700(Lcom/wen/fluorescence/Fragment/AccountFragment;)V

    .line 180
    goto :goto_0

    .line 173
    :sswitch_7
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/AccountFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/AccountFragment;->access$500(Lcom/wen/fluorescence/Fragment/AccountFragment;)V

    .line 174
    goto :goto_0

    .line 188
    :sswitch_8
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/AccountFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/AccountFragment;->access$1000(Lcom/wen/fluorescence/Fragment/AccountFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    .line 189
    goto :goto_0

    .line 182
    :sswitch_9
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/AccountFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/AccountFragment;->access$800(Lcom/wen/fluorescence/Fragment/AccountFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    .line 183
    nop

    .line 194
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080052 -> :sswitch_9
        0x7f080053 -> :sswitch_8
        0x7f080063 -> :sswitch_7
        0x7f080064 -> :sswitch_6
        0x7f080067 -> :sswitch_5
        0x7f080068 -> :sswitch_4
        0x7f08008d -> :sswitch_3
        0x7f08008f -> :sswitch_2
        0x7f080090 -> :sswitch_1
        0x7f080092 -> :sswitch_0
    .end sparse-switch
.end method
