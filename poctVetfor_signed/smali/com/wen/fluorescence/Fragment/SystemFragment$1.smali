.class Lcom/wen/fluorescence/Fragment/SystemFragment$1;
.super Landroid/os/Handler;
.source "SystemFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/Fragment/SystemFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SystemFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SystemFragment;

    .line 47
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 50
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 51
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa3

    const-wide v2, 0x3fb999999999999aL    # 0.1

    if-eq v0, v1, :cond_28

    const/16 v1, 0x105

    if-eq v0, v1, :cond_27

    const v1, 0x7f08017c

    const v4, 0x7f080156

    const v5, 0x7f080157

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_e

    .line 135
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_16

    if-eq v0, v6, :cond_14

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_9

    .line 242
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg2:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto/16 :goto_9

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$500(Lcom/wen/fluorescence/Fragment/SystemFragment;)Lcom/wen/fluorescence/util/FragmentCallback;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    mul-double/2addr v6, v2

    invoke-interface {v0, v6, v7}, Lcom/wen/fluorescence/util/FragmentCallback;->receiveTemperature(D)V

    .line 245
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$000(Lcom/wen/fluorescence/Fragment/SystemFragment;)I

    move-result v0

    if-ne v0, v5, :cond_19

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$200(Lcom/wen/fluorescence/Fragment/SystemFragment;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 246
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$200(Lcom/wen/fluorescence/Fragment/SystemFragment;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 247
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->receiveTempControl(D)V

    goto/16 :goto_9

    .line 157
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_11

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_6

    .line 176
    :pswitch_3
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$000(Lcom/wen/fluorescence/Fragment/SystemFragment;)I

    move-result v0

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$300(Lcom/wen/fluorescence/Fragment/SystemFragment;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$300(Lcom/wen/fluorescence/Fragment/SystemFragment;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [I

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->receiveCurrentData([I)V

    goto/16 :goto_6

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$000(Lcom/wen/fluorescence/Fragment/SystemFragment;)I

    move-result v0

    const v2, 0x7f080179

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$400(Lcom/wen/fluorescence/Fragment/SystemFragment;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$400(Lcom/wen/fluorescence/Fragment/SystemFragment;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [I

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->receiveCurrentData([I)V

    goto/16 :goto_6

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$000(Lcom/wen/fluorescence/Fragment/SystemFragment;)I

    move-result v0

    const v2, 0xffff

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$100(Lcom/wen/fluorescence/Fragment/SystemFragment;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 181
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [I

    .line 182
    .local v0, "data":[I
    const/4 v1, 0x0

    .line 183
    .local v1, "isMax":Z
    const/4 v3, 0x0

    .line 184
    .local v3, "isMin":Z
    move v4, v3

    move v3, v1

    move v1, v7

    .line 184
    .local v1, "i":I
    .local v3, "isMax":Z
    .local v4, "isMin":Z
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_6

    .line 185
    aget v5, v0, v1

    if-eq v5, v2, :cond_3

    .line 186
    const/4 v3, 0x1

    .line 188
    :cond_3
    aget v5, v0, v1

    if-eqz v5, :cond_4

    .line 189
    const/4 v4, 0x1

    .line 191
    :cond_4
    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    .line 192
    goto :goto_1

    .line 184
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    .end local v1    # "i":I
    :cond_6
    :goto_1
    if-eqz v4, :cond_7

    .line 197
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$100(Lcom/wen/fluorescence/Fragment/SystemFragment;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;

    invoke-virtual {v1, v6, v9}, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->setQCResult(IZ)V

    goto :goto_2

    .line 199
    :cond_7
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$100(Lcom/wen/fluorescence/Fragment/SystemFragment;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;

    invoke-virtual {v1, v6, v7}, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->setQCResult(IZ)V

    .line 202
    :goto_2
    const/4 v1, 0x3

    if-eqz v3, :cond_8

    .line 203
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$100(Lcom/wen/fluorescence/Fragment/SystemFragment;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;

    invoke-virtual {v2, v1, v9}, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->setQCResult(IZ)V

    goto :goto_3

    .line 205
    :cond_8
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$100(Lcom/wen/fluorescence/Fragment/SystemFragment;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;

    invoke-virtual {v2, v1, v7}, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->setQCResult(IZ)V

    .line 208
    :goto_3
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$100(Lcom/wen/fluorescence/Fragment/SystemFragment;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;

    invoke-virtual {v1, v9}, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->setViewEnable(Z)V

    .line 209
    .end local v0    # "data":[I
    .end local v3    # "isMax":Z
    .end local v4    # "isMin":Z
    goto/16 :goto_6

    :cond_9
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$000(Lcom/wen/fluorescence/Fragment/SystemFragment;)I

    move-result v0

    if-ne v0, v5, :cond_13

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$200(Lcom/wen/fluorescence/Fragment/SystemFragment;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 210
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [I

    .line 211
    .restart local v0    # "data":[I
    const/4 v1, 0x0

    .line 212
    .local v1, "isMax":Z
    const/4 v3, 0x0

    .line 213
    .local v3, "isMin":Z
    move v4, v3

    move v3, v1

    move v1, v7

    .line 213
    .local v1, "i":I
    .local v3, "isMax":Z
    .restart local v4    # "isMin":Z
    :goto_4
    array-length v5, v0

    if-ge v1, v5, :cond_d

    .line 214
    aget v5, v0, v1

    if-eq v5, v2, :cond_a

    .line 215
    const/4 v3, 0x1

    .line 217
    :cond_a
    aget v5, v0, v1

    if-eqz v5, :cond_b

    .line 218
    const/4 v4, 0x1

    .line 220
    :cond_b
    if-eqz v3, :cond_c

    if-eqz v4, :cond_c

    .line 221
    goto :goto_5

    .line 213
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 224
    .end local v1    # "i":I
    :cond_d
    :goto_5
    if-eqz v3, :cond_e

    if-eqz v4, :cond_e

    .line 225
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$200(Lcom/wen/fluorescence/Fragment/SystemFragment;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;

    invoke-virtual {v1, v9}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->receiveSelfTestResult(Z)V

    goto/16 :goto_6

    .line 227
    :cond_e
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$200(Lcom/wen/fluorescence/Fragment/SystemFragment;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;

    invoke-virtual {v1, v7}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->receiveSelfTestResult(Z)V

    .line 227
    .end local v0    # "data":[I
    .end local v3    # "isMax":Z
    .end local v4    # "isMin":Z
    goto/16 :goto_6

    .line 166
    :pswitch_4
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$000(Lcom/wen/fluorescence/Fragment/SystemFragment;)I

    move-result v0

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$100(Lcom/wen/fluorescence/Fragment/SystemFragment;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 167
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$100(Lcom/wen/fluorescence/Fragment/SystemFragment;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;

    invoke-virtual {v0, v9, v9}, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->setQCResult(IZ)V

    .line 168
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->getLightData()V

    goto/16 :goto_6

    .line 169
    :cond_f
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$000(Lcom/wen/fluorescence/Fragment/SystemFragment;)I

    move-result v0

    if-ne v0, v4, :cond_10

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$300(Lcom/wen/fluorescence/Fragment/SystemFragment;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 170
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$300(Lcom/wen/fluorescence/Fragment/SystemFragment;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->setBarCode(Ljava/lang/String;)V

    goto :goto_6

    .line 171
    :cond_10
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$000(Lcom/wen/fluorescence/Fragment/SystemFragment;)I

    move-result v0

    if-ne v0, v5, :cond_13

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$200(Lcom/wen/fluorescence/Fragment/SystemFragment;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 172
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$200(Lcom/wen/fluorescence/Fragment/SystemFragment;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->receiveBarCode(Ljava/lang/String;)V

    goto :goto_6

    .line 159
    :cond_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-ne v0, v9, :cond_12

    .line 160
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    const v2, 0x7f0c0140

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/Fragment/SystemFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    goto :goto_6

    .line 162
    :cond_12
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    const v2, 0x7f0c013f

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/Fragment/SystemFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 164
    nop

    .line 232
    :cond_13
    :goto_6
    goto/16 :goto_9

    .line 234
    :cond_14
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_15

    goto :goto_7

    .line 236
    :cond_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/wen/fluorescence/bean/Version;

    .line 237
    .local v0, "version":Lcom/wen/fluorescence/bean/Version;
    invoke-static {}, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->getInstance()Lcom/wen/fluorescence/util/MCUUpgradeUtil;

    move-result-object v1

    invoke-virtual {v0}, Lcom/wen/fluorescence/bean/Version;->getPackageLen()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->setPackageLen(I)V

    .line 240
    .end local v0    # "version":Lcom/wen/fluorescence/bean/Version;
    :goto_7
    goto :goto_9

    .line 137
    :cond_16
    iget v0, p1, Landroid/os/Message;->arg2:I

    packed-switch v0, :pswitch_data_3

    goto :goto_8

    .line 150
    :pswitch_5
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$300(Lcom/wen/fluorescence/Fragment/SystemFragment;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 151
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$300(Lcom/wen/fluorescence/Fragment/SystemFragment;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->frashSystemConfigData()V

    goto :goto_8

    .line 139
    :pswitch_6
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$000(Lcom/wen/fluorescence/Fragment/SystemFragment;)I

    move-result v0

    if-ne v0, v4, :cond_17

    .line 140
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$300(Lcom/wen/fluorescence/Fragment/SystemFragment;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 141
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$300(Lcom/wen/fluorescence/Fragment/SystemFragment;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/wen/fluorescence/bean/Version;

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->setVersion(Lcom/wen/fluorescence/bean/Version;)V

    goto :goto_8

    .line 143
    :cond_17
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$000(Lcom/wen/fluorescence/Fragment/SystemFragment;)I

    move-result v0

    if-ne v0, v5, :cond_18

    .line 144
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$200(Lcom/wen/fluorescence/Fragment/SystemFragment;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 145
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$200(Lcom/wen/fluorescence/Fragment/SystemFragment;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/wen/fluorescence/bean/Version;

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->receiveVersionMessage(Lcom/wen/fluorescence/bean/Version;)V

    .line 155
    :cond_18
    :goto_8
    nop

    .line 253
    :cond_19
    :goto_9
    goto/16 :goto_e

    .line 56
    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_d

    .line 79
    :sswitch_0
    iget v0, p1, Landroid/os/Message;->arg2:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1a

    goto :goto_a

    .line 81
    :cond_1a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-nez v0, :cond_1b

    .line 82
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    const v2, 0x7f0c0115

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/Fragment/SystemFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 86
    :cond_1b
    :goto_a
    goto/16 :goto_d

    .line 58
    :sswitch_1
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eq v0, v6, :cond_1c

    goto/16 :goto_b

    .line 60
    :cond_1c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-ne v0, v9, :cond_1f

    .line 61
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$000(Lcom/wen/fluorescence/Fragment/SystemFragment;)I

    move-result v0

    if-ne v0, v4, :cond_1d

    .line 62
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    const v2, 0x7f0c0158

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/Fragment/SystemFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    goto :goto_b

    .line 63
    :cond_1d
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$000(Lcom/wen/fluorescence/Fragment/SystemFragment;)I

    move-result v0

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$100(Lcom/wen/fluorescence/Fragment/SystemFragment;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 64
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$100(Lcom/wen/fluorescence/Fragment/SystemFragment;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;

    invoke-virtual {v0, v7, v9}, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->setQCResult(IZ)V

    .line 65
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$100(Lcom/wen/fluorescence/Fragment/SystemFragment;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;

    invoke-virtual {v0, v9, v7}, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->setQCResult(IZ)V

    .line 66
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->getLightData()V

    goto :goto_b

    .line 67
    :cond_1e
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$000(Lcom/wen/fluorescence/Fragment/SystemFragment;)I

    move-result v0

    if-ne v0, v5, :cond_20

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$200(Lcom/wen/fluorescence/Fragment/SystemFragment;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 68
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$200(Lcom/wen/fluorescence/Fragment/SystemFragment;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;

    invoke-virtual {v0, v8}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->receiveBarCode(Ljava/lang/String;)V

    goto :goto_b

    .line 71
    :cond_1f
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$000(Lcom/wen/fluorescence/Fragment/SystemFragment;)I

    move-result v0

    if-ne v0, v1, :cond_20

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$100(Lcom/wen/fluorescence/Fragment/SystemFragment;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 72
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$100(Lcom/wen/fluorescence/Fragment/SystemFragment;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;

    invoke-virtual {v0, v7, v9}, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;->setQCResult(IZ)V

    .line 77
    :cond_20
    :goto_b
    goto/16 :goto_d

    .line 104
    :sswitch_2
    iget v0, p1, Landroid/os/Message;->arg2:I

    const v1, 0x7f0c002c

    packed-switch v0, :pswitch_data_4

    goto/16 :goto_d

    .line 126
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-nez v0, :cond_26

    .line 127
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/util/UpgradeDialog;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/UpgradeDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/UpgradeDialog;->setProgressComplete()V

    goto/16 :goto_d

    .line 118
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-nez v0, :cond_21

    .line 119
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/util/UpgradeDialog;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/UpgradeDialog;

    move-result-object v0

    invoke-static {}, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->getInstance()Lcom/wen/fluorescence/util/MCUUpgradeUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/util/UpgradeDialog;->setProgress(I)V

    .line 120
    invoke-static {}, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->getInstance()Lcom/wen/fluorescence/util/MCUUpgradeUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->startUpgrade()V

    goto/16 :goto_d

    .line 122
    :cond_21
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-virtual {v3, v1}, Lcom/wen/fluorescence/Fragment/SystemFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " 2"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 124
    goto/16 :goto_d

    .line 110
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-nez v0, :cond_22

    .line 111
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/util/UpgradeDialog;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/UpgradeDialog;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/util/UpgradeDialog;->setProgress(I)V

    .line 112
    invoke-static {}, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->getInstance()Lcom/wen/fluorescence/util/MCUUpgradeUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->startUpgrade()V

    goto/16 :goto_d

    .line 114
    :cond_22
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-virtual {v3, v1}, Lcom/wen/fluorescence/Fragment/SystemFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " 1"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 116
    goto/16 :goto_d

    .line 106
    :pswitch_b
    invoke-static {}, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->getInstance()Lcom/wen/fluorescence/util/MCUUpgradeUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/MCUUpgradeUtil;->prepareUpgrade()V

    .line 107
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/util/UpgradeDialog;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/UpgradeDialog;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/util/UpgradeDialog;->setProgress(I)V

    .line 108
    goto :goto_d

    .line 88
    :sswitch_3
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_24

    if-eq v0, v6, :cond_23

    goto :goto_c

    .line 96
    :cond_23
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$300(Lcom/wen/fluorescence/Fragment/SystemFragment;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 97
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    const v2, 0x7f0c0146

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/Fragment/SystemFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 98
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$300(Lcom/wen/fluorescence/Fragment/SystemFragment;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->setOrResetSystemConfigSuccess()V

    goto :goto_c

    .line 90
    :cond_24
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$300(Lcom/wen/fluorescence/Fragment/SystemFragment;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 91
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    const v2, 0x7f0c01d2

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/Fragment/SystemFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 92
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$300(Lcom/wen/fluorescence/Fragment/SystemFragment;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->setOrResetSystemConfigSuccess()V

    .line 102
    :cond_25
    :goto_c
    nop

    .line 133
    :cond_26
    :goto_d
    goto :goto_e

    .line 53
    :cond_27
    invoke-static {p0}, Lcom/wen/fluorescence/serialport/DoSerialData;->getInstance(Landroid/os/Handler;)Lcom/wen/fluorescence/serialport/DoSerialData;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/serialport/DoSerialData;->receiveData(Ljava/lang/String;)V

    .line 54
    goto :goto_e

    .line 255
    :cond_28
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->access$500(Lcom/wen/fluorescence/Fragment/SystemFragment;)Lcom/wen/fluorescence/util/FragmentCallback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-double v4, v1

    mul-double/2addr v4, v2

    invoke-interface {v0, v4, v5}, Lcom/wen/fluorescence/util/FragmentCallback;->reveiveENVTemperature(D)V

    .line 258
    :goto_e
    return-void

    :pswitch_data_0
    .packed-switch 0xa0
        :pswitch_7
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x11 -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method
