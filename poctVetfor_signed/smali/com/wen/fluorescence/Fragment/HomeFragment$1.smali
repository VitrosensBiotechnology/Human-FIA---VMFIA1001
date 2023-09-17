.class Lcom/wen/fluorescence/Fragment/HomeFragment$1;
.super Landroid/os/Handler;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/Fragment/HomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/HomeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;

    .line 118
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 121
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 122
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_7

    .line 128
    :sswitch_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$100(Lcom/wen/fluorescence/Fragment/HomeFragment;)V

    .line 129
    goto/16 :goto_7

    .line 147
    :sswitch_1
    invoke-static {p0}, Lcom/wen/fluorescence/serialport/DoSerialData;->getInstance(Landroid/os/Handler;)Lcom/wen/fluorescence/serialport/DoSerialData;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/serialport/DoSerialData;->receiveData(Ljava/lang/String;)V

    .line 148
    goto/16 :goto_7

    .line 141
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/huashi/otg/sdk/HSIDCardInfo;

    .line 142
    .local v0, "ic":Lcom/huashi/otg/sdk/HSIDCardInfo;
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$200(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Lcom/huashi/otg/sdk/HSIDCardInfo;->getPeopleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$300(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Lcom/huashi/otg/sdk/HSIDCardInfo;->getIDCard()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 144
    const-string v1, "idcard-->"

    const-string v2, "\u8bfb\u5361\u6210\u529f"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    goto/16 :goto_7

    .line 131
    .end local v0    # "ic":Lcom/huashi/otg/sdk/HSIDCardInfo;
    :sswitch_3
    const-string v0, "idcard-->"

    const-string v2, "\u8fde\u63a5\u6210\u529f"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v0, v1}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$002(Lcom/wen/fluorescence/Fragment/HomeFragment;Z)Z

    .line 133
    goto/16 :goto_7

    .line 138
    :sswitch_4
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    const v2, 0x7f0c0028

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 139
    goto/16 :goto_7

    .line 135
    :sswitch_5
    const-string v0, "idcard-->"

    const-string v1, "\u8fde\u63a5\u5931\u8d25"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    goto/16 :goto_7

    .line 157
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/wen/fluorescence/MainActivity;

    invoke-virtual {v0, v4}, Lcom/wen/fluorescence/MainActivity;->setUpLisServer(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    goto/16 :goto_7

    .line 158
    :catch_0
    move-exception v0

    .line 160
    goto/16 :goto_7

    .line 151
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/wen/fluorescence/MainActivity;

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/MainActivity;->setUpLisServer(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 153
    goto/16 :goto_7

    .line 152
    :catch_1
    move-exception v0

    .line 154
    goto/16 :goto_7

    .line 313
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0x50

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 316
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_1

    goto :goto_0

    .line 318
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-ne v0, v1, :cond_2

    .line 319
    const-string v0, "Tag"

    const-string v1, "\u8bd5\u5242\u5361\u63d2\u5165..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 324
    :cond_2
    const-string v0, "Tag"

    const-string v1, "\u8bd5\u5242\u5361\u62d4\u51fa..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :goto_0
    goto/16 :goto_7

    .line 332
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_5

    goto/16 :goto_7

    .line 357
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eq v0, v2, :cond_3

    goto/16 :goto_7

    .line 360
    :cond_3
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$1800(Lcom/wen/fluorescence/Fragment/HomeFragment;)Lcom/wen/fluorescence/util/FragmentCallback;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-wide v3, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lcom/wen/fluorescence/util/FragmentCallback;->receiveTemperature(D)V

    goto/16 :goto_7

    .line 335
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_4

    packed-switch v0, :pswitch_data_6

    goto :goto_1

    .line 350
    :pswitch_6
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/Global;->getTestStatus()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 351
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/Thread/TestThread;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/Thread/TestThread;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [I

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/Thread/TestThread;->startCalculate([I)V

    goto :goto_1

    .line 345
    :pswitch_7
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/Global;->getTestStatus()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 346
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/Thread/TestThread;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/Thread/TestThread;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$1600(Lcom/wen/fluorescence/Fragment/HomeFragment;)Lcom/wen/fluorescence/database/TestResult;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/Thread/TestThread;->startTest(Lcom/wen/fluorescence/database/TestResult;Ljava/lang/String;)V

    goto :goto_1

    .line 337
    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-ne v0, v1, :cond_5

    .line 338
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->getReagentInfo()V

    goto :goto_1

    .line 340
    :cond_5
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    const v2, 0x7f0c013f

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 341
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->sendEmptyMessage(I)Z

    .line 343
    nop

    .line 355
    :cond_6
    :goto_1
    goto/16 :goto_7

    .line 278
    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0x11

    if-eq v0, v2, :cond_7

    goto :goto_2

    .line 281
    :cond_7
    iget v0, p1, Landroid/os/Message;->arg2:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_8

    goto :goto_2

    .line 283
    :cond_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-ne v0, v1, :cond_a

    .line 286
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$1508(Lcom/wen/fluorescence/Fragment/HomeFragment;)I

    .line 287
    invoke-static {}, Lcom/wen/fluorescence/Thread/TotalTimer;->getInstance()Lcom/wen/fluorescence/Thread/TotalTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/Thread/TotalTimer;->setTimerTotalCancel()V

    .line 288
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$1500(Lcom/wen/fluorescence/Fragment/HomeFragment;)I

    move-result v0

    if-le v0, v2, :cond_9

    .line 289
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    new-instance v1, Lcom/wen/fluorescence/Fragment/HomeFragment$1$4;

    invoke-direct {v1, p0}, Lcom/wen/fluorescence/Fragment/HomeFragment$1$4;-><init>(Lcom/wen/fluorescence/Fragment/HomeFragment$1;)V

    invoke-static {v0, v1}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$1700(Lcom/wen/fluorescence/Fragment/HomeFragment;Lcom/wen/fluorescence/util/MyPassDialogInterface;)V

    goto :goto_2

    .line 303
    :cond_9
    invoke-static {}, Lcom/wen/fluorescence/Thread/TotalTimer;->getInstance()Lcom/wen/fluorescence/Thread/TotalTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$1300(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/Thread/TotalTimer;->setTimerTotalStart(Landroid/os/Handler;)V

    .line 304
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->getReagentInfo()V

    .line 311
    :cond_a
    :goto_2
    goto/16 :goto_7

    .line 125
    :pswitch_9
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v0, v4}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$002(Lcom/wen/fluorescence/Fragment/HomeFragment;Z)Z

    .line 126
    goto/16 :goto_7

    .line 220
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    .line 221
    .local v0, "newArray":[Ljava/lang/String;
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$1000(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "selectSample":Ljava/lang/String;
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-static {}, Lcom/wen/fluorescence/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0a0057

    const v6, 0x7f0801a3

    invoke-direct {v2, v3, v5, v6, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 224
    .local v2, "newAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v3}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$1000(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 225
    nop

    .line 225
    .local v4, "i":I
    :goto_3
    move v3, v4

    .line 225
    .end local v4    # "i":I
    .local v3, "i":I
    array-length v4, v0

    if-ge v3, v4, :cond_c

    .line 226
    aget-object v4, v0, v3

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 227
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v4}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$1000(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/widget/Spinner;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 228
    goto :goto_4

    .line 225
    :cond_b
    add-int/lit8 v4, v3, 0x1

    .line 225
    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_3

    .line 231
    .end local v4    # "i":I
    :cond_c
    :goto_4
    goto/16 :goto_7

    .line 191
    .end local v0    # "newArray":[Ljava/lang/String;
    .end local v1    # "selectSample":Ljava/lang/String;
    .end local v2    # "newAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :pswitch_b
    invoke-static {}, Lcom/wen/fluorescence/Thread/TotalTimer;->getInstance()Lcom/wen/fluorescence/Thread/TotalTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/Thread/TotalTimer;->setTimerTotalCancel()V

    .line 192
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    const v2, 0x7f0c0011

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/wen/fluorescence/Fragment/HomeFragment$1$2;

    invoke-direct {v2, p0}, Lcom/wen/fluorescence/Fragment/HomeFragment$1$2;-><init>(Lcom/wen/fluorescence/Fragment/HomeFragment$1;)V

    invoke-static {v0, v1, v2}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 203
    goto/16 :goto_7

    .line 216
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    .line 217
    .local v0, "array":[Ljava/lang/String;
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v1, v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$900(Lcom/wen/fluorescence/Fragment/HomeFragment;[Ljava/lang/String;)V

    .line 218
    goto/16 :goto_7

    .line 236
    .end local v0    # "array":[Ljava/lang/String;
    :pswitch_d
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$1200(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/Thread/TestThread;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/Thread/TestThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/Thread/TestThread;->getIDChipVersion()I

    move-result v0

    if-ne v0, v1, :cond_d

    .line 239
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/Thread/TestThread;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/Thread/TestThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v0

    iget v0, v0, Lcom/wen/fluorescence/bean/IDChipInfo;->m_countdowntime:I

    mul-int/lit8 v0, v0, 0x3c

    .line 239
    .local v0, "countDownTime":I
    goto :goto_5

    .line 241
    .end local v0    # "countDownTime":I
    :cond_d
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/Thread/TestThread;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/Thread/TestThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdChipInfoN()Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v0

    iget v0, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_countdowntime:I

    mul-int/lit8 v0, v0, 0x3c

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    .line 242
    invoke-virtual {v1}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/wen/fluorescence/Thread/TestThread;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/Thread/TestThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/Thread/TestThread;->getIdChipInfoN()Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v1

    iget v1, v1, Lcom/wen/fluorescence/bean/IDChipInfoN;->s_countdowntime:I

    add-int/2addr v0, v1

    .line 244
    .restart local v0    # "countDownTime":I
    :goto_5
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$1300(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1}, Lcom/wen/fluorescence/Thread/StandarTimer;->getInstance(Landroid/os/Handler;)Lcom/wen/fluorescence/Thread/StandarTimer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wen/fluorescence/Thread/StandarTimer;->setStandarTimerStart(I)V

    .line 246
    .end local v0    # "countDownTime":I
    goto/16 :goto_7

    .line 233
    :pswitch_e
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$1100(Lcom/wen/fluorescence/Fragment/HomeFragment;)V

    .line 234
    goto/16 :goto_7

    .line 170
    :pswitch_f
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$400(Lcom/wen/fluorescence/Fragment/HomeFragment;)V

    .line 171
    goto/16 :goto_7

    .line 260
    :pswitch_10
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$1400(Lcom/wen/fluorescence/Fragment/HomeFragment;)V

    .line 261
    goto/16 :goto_7

    .line 263
    :pswitch_11
    invoke-static {}, Lcom/wen/fluorescence/Thread/TotalTimer;->getInstance()Lcom/wen/fluorescence/Thread/TotalTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/Thread/TotalTimer;->setTimerTotalCancel()V

    .line 264
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    const v2, 0x7f0c00c1

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/wen/fluorescence/Fragment/HomeFragment$1$3;

    invoke-direct {v2, p0}, Lcom/wen/fluorescence/Fragment/HomeFragment$1$3;-><init>(Lcom/wen/fluorescence/Fragment/HomeFragment$1;)V

    invoke-static {v0, v1, v2}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 276
    goto/16 :goto_7

    .line 206
    :pswitch_12
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/Thread/TestThread;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/Thread/TestThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/Thread/TestThread;->getIDChipVersion()I

    move-result v0

    if-ne v0, v1, :cond_e

    .line 207
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/Thread/TestThread;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/Thread/TestThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v0

    .line 208
    .local v0, "idChipInfo":Lcom/wen/fluorescence/bean/IDChipInfo;
    iget-object v0, v0, Lcom/wen/fluorescence/bean/IDChipInfo;->m_title:Ljava/lang/String;

    .line 209
    .local v0, "strInfo":Ljava/lang/String;
    goto :goto_6

    .line 210
    .end local v0    # "strInfo":Ljava/lang/String;
    :cond_e
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/Thread/TestThread;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/Thread/TestThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdChipInfoN()Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v0

    .line 211
    .local v0, "idChipInfoN":Lcom/wen/fluorescence/bean/IDChipInfoN;
    iget-object v0, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_title:Ljava/lang/String;

    .line 213
    .local v0, "strInfo":Ljava/lang/String;
    :goto_6
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-virtual {v1}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    const v5, 0x7f0c013d

    invoke-virtual {v4, v5}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 214
    goto/16 :goto_7

    .line 173
    .end local v0    # "strInfo":Ljava/lang/String;
    :pswitch_13
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/Global;->getTestStatus()Z

    move-result v0

    const v1, 0x7f0c0010

    if-nez v0, :cond_f

    .line 174
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-virtual {v2, v1}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    goto/16 :goto_7

    .line 176
    :cond_f
    invoke-static {}, Lcom/wen/fluorescence/Thread/TotalTimer;->getInstance()Lcom/wen/fluorescence/Thread/TotalTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/Thread/TotalTimer;->setTimerTotalCancel()V

    .line 177
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-virtual {v2, v1}, Lcom/wen/fluorescence/Fragment/HomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/wen/fluorescence/Fragment/HomeFragment$1$1;

    invoke-direct {v2, p0}, Lcom/wen/fluorescence/Fragment/HomeFragment$1$1;-><init>(Lcom/wen/fluorescence/Fragment/HomeFragment$1;)V

    invoke-static {v0, v1, v2}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 189
    goto :goto_7

    .line 248
    :pswitch_14
    new-instance v0, Ljava/util/Date;

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-long v3, v1

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 249
    .local v0, "curDate":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "mm:ss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 250
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v3}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$1200(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-gtz v3, :cond_10

    .line 252
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v3}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$1300(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3}, Lcom/wen/fluorescence/Thread/StandarTimer;->getInstance(Landroid/os/Handler;)Lcom/wen/fluorescence/Thread/StandarTimer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wen/fluorescence/Thread/StandarTimer;->setStandarTimerStop()V

    .line 253
    invoke-static {}, Lcom/wen/fluorescence/Thread/TotalTimer;->getInstance()Lcom/wen/fluorescence/Thread/TotalTimer;

    move-result-object v3

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v4}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$1300(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/Thread/TotalTimer;->setTimerTotalStart(Landroid/os/Handler;)V

    .line 254
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v3}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$1200(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->getLightData()V

    .line 258
    .end local v0    # "curDate":Ljava/util/Date;
    .end local v1    # "formatter":Ljava/text/SimpleDateFormat;
    :cond_10
    goto :goto_7

    .line 162
    :pswitch_15
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$400(Lcom/wen/fluorescence/Fragment/HomeFragment;)V

    .line 163
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$500(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$600(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$700(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    const-string v1, "\u6d4b\u8bd5\u8d85\u65f6"

    const-string v2, "Time out."

    invoke-static {v0, v1, v2}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$800(Lcom/wen/fluorescence/Fragment/HomeFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    nop

    .line 368
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x63
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xa0
        :pswitch_8
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x703
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x63 -> :sswitch_5
        -0xa -> :sswitch_4
        0x1 -> :sswitch_3
        0xa -> :sswitch_2
        0x105 -> :sswitch_1
        0x222 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0x11
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method
