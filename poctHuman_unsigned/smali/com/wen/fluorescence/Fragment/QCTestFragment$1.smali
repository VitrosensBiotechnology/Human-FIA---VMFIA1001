.class Lcom/wen/fluorescence/Fragment/QCTestFragment$1;
.super Landroid/os/Handler;
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

    .line 66
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCTestFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 69
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 70
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_4

    .line 78
    :sswitch_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCTestFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/wen/fluorescence/MainActivity;

    invoke-virtual {v0, v4}, Lcom/wen/fluorescence/MainActivity;->setUpLisServer(Z)V

    .line 79
    goto/16 :goto_4

    .line 75
    :sswitch_1
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCTestFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/wen/fluorescence/MainActivity;

    invoke-virtual {v0, v5}, Lcom/wen/fluorescence/MainActivity;->setUpLisServer(Z)V

    .line 76
    goto/16 :goto_4

    .line 72
    :sswitch_2
    invoke-static {p0}, Lcom/wen/fluorescence/serialport/DoSerialData;->getInstance(Landroid/os/Handler;)Lcom/wen/fluorescence/serialport/DoSerialData;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/serialport/DoSerialData;->receiveData(Ljava/lang/String;)V

    .line 73
    goto/16 :goto_4

    .line 162
    :sswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 183
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eq v0, v3, :cond_0

    goto/16 :goto_4

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCTestFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->access$800(Lcom/wen/fluorescence/Fragment/QCTestFragment;)Lcom/wen/fluorescence/util/FragmentCallback;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-wide v3, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lcom/wen/fluorescence/util/FragmentCallback;->receiveTemperature(D)V

    goto/16 :goto_4

    .line 165
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 178
    :pswitch_2
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCTestFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/Thread/TestThread;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/Thread/TestThread;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [I

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/Thread/TestThread;->startCalculate([I)V

    goto :goto_0

    .line 175
    :pswitch_3
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCTestFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/Thread/TestThread;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/Thread/TestThread;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCTestFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->access$700(Lcom/wen/fluorescence/Fragment/QCTestFragment;)Lcom/wen/fluorescence/database/TestResult;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/Thread/TestThread;->startTest(Lcom/wen/fluorescence/database/TestResult;Ljava/lang/String;)V

    .line 176
    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-ne v0, v5, :cond_2

    .line 168
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->getReagentInfo()V

    goto :goto_0

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCTestFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCTestFragment;

    const v4, 0x7f0c013f

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 171
    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/Fragment/QCTestFragment$1;->sendEmptyMessage(I)Z

    .line 173
    nop

    .line 181
    :goto_0
    goto/16 :goto_4

    .line 109
    :sswitch_4
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCTestFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->access$400(Lcom/wen/fluorescence/Fragment/QCTestFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCTestFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/Thread/TestThread;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/Thread/TestThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/Thread/TestThread;->getIDChipVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 112
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCTestFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/Thread/TestThread;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/Thread/TestThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v0

    iget v0, v0, Lcom/wen/fluorescence/bean/IDChipInfo;->m_countdowntime:I

    mul-int/lit8 v0, v0, 0x3c

    .line 112
    .local v0, "countDownTime":I
    goto :goto_1

    .line 114
    .end local v0    # "countDownTime":I
    :cond_3
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCTestFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/Thread/TestThread;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/Thread/TestThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdChipInfoN()Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v0

    iget v0, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_countdowntime:I

    mul-int/lit8 v0, v0, 0x3c

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCTestFragment;

    .line 115
    invoke-virtual {v1}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/wen/fluorescence/Thread/TestThread;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/Thread/TestThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/Thread/TestThread;->getIdChipInfoN()Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v1

    iget v1, v1, Lcom/wen/fluorescence/bean/IDChipInfoN;->s_countdowntime:I

    add-int/2addr v0, v1

    .line 117
    .restart local v0    # "countDownTime":I
    :goto_1
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCTestFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->access$500(Lcom/wen/fluorescence/Fragment/QCTestFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1}, Lcom/wen/fluorescence/Thread/StandarTimer;->getInstance(Landroid/os/Handler;)Lcom/wen/fluorescence/Thread/StandarTimer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wen/fluorescence/Thread/StandarTimer;->setStandarTimerStart(I)V

    .line 119
    .end local v0    # "countDownTime":I
    goto/16 :goto_4

    .line 106
    :sswitch_5
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCTestFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->access$300(Lcom/wen/fluorescence/Fragment/QCTestFragment;)V

    .line 107
    goto/16 :goto_4

    .line 88
    :sswitch_6
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCTestFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->access$000(Lcom/wen/fluorescence/Fragment/QCTestFragment;)V

    .line 89
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 90
    .local v0, "type":I
    packed-switch v0, :pswitch_data_2

    .line 100
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCTestFragment;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCTestFragment;

    const v3, 0x7f0c019f

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCTestFragment;

    invoke-virtual {v4, v3}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->access$100(Lcom/wen/fluorescence/Fragment/QCTestFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .end local v0    # "type":I
    goto :goto_2

    .line 97
    .restart local v0    # "type":I
    :pswitch_4
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCTestFragment;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCTestFragment;

    const v3, 0x7f0c014c

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCTestFragment;

    invoke-virtual {v4, v3}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->access$100(Lcom/wen/fluorescence/Fragment/QCTestFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    goto :goto_2

    .line 94
    :pswitch_5
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCTestFragment;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCTestFragment;

    const v3, 0x7f0c0018

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCTestFragment;

    invoke-virtual {v4, v3}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->access$100(Lcom/wen/fluorescence/Fragment/QCTestFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    goto :goto_2

    .line 92
    :pswitch_6
    nop

    .line 104
    .end local v0    # "type":I
    :goto_2
    goto/16 :goto_4

    .line 85
    :sswitch_7
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCTestFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->access$200(Lcom/wen/fluorescence/Fragment/QCTestFragment;)V

    .line 86
    goto/16 :goto_4

    .line 133
    :sswitch_8
    invoke-static {}, Lcom/wen/fluorescence/Thread/TotalTimer;->getInstance()Lcom/wen/fluorescence/Thread/TotalTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/Thread/TotalTimer;->setTimerTotalCancel()V

    .line 134
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCTestFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCTestFragment;

    const v4, 0x7f0c00c1

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/wen/fluorescence/Fragment/QCTestFragment$1$1;

    invoke-direct {v4, p0}, Lcom/wen/fluorescence/Fragment/QCTestFragment$1$1;-><init>(Lcom/wen/fluorescence/Fragment/QCTestFragment$1;)V

    invoke-static {v0, v3, v4}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 147
    :sswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0x11

    if-eq v0, v3, :cond_4

    goto :goto_3

    .line 150
    :cond_4
    iget v0, p1, Landroid/os/Message;->arg2:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    goto :goto_3

    .line 152
    :cond_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-ne v0, v5, :cond_6

    .line 153
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCTestFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCTestFragment;

    const v4, 0x7f0c0158

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 154
    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/Fragment/QCTestFragment$1;->sendEmptyMessage(I)Z

    .line 160
    :cond_6
    :goto_3
    goto :goto_4

    .line 121
    :sswitch_a
    new-instance v0, Ljava/util/Date;

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 122
    .local v0, "curDate":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 123
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCTestFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->access$400(Lcom/wen/fluorescence/Fragment/QCTestFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-gtz v2, :cond_7

    .line 125
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCTestFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->access$500(Lcom/wen/fluorescence/Fragment/QCTestFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Lcom/wen/fluorescence/Thread/StandarTimer;->getInstance(Landroid/os/Handler;)Lcom/wen/fluorescence/Thread/StandarTimer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wen/fluorescence/Thread/StandarTimer;->setStandarTimerStop()V

    .line 126
    invoke-static {}, Lcom/wen/fluorescence/Thread/TotalTimer;->getInstance()Lcom/wen/fluorescence/Thread/TotalTimer;

    move-result-object v2

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCTestFragment;

    invoke-static {v4}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->access$500(Lcom/wen/fluorescence/Fragment/QCTestFragment;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/wen/fluorescence/Thread/TotalTimer;->setTimerTotalStart(Landroid/os/Handler;)V

    .line 127
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCTestFragment;

    invoke-static {v2}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->access$400(Lcom/wen/fluorescence/Fragment/QCTestFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->getLightData()V

    .line 131
    .end local v0    # "curDate":Ljava/util/Date;
    .end local v1    # "formatter":Ljava/text/SimpleDateFormat;
    :cond_7
    goto :goto_4

    .line 81
    :sswitch_b
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCTestFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->access$000(Lcom/wen/fluorescence/Fragment/QCTestFragment;)V

    .line 82
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCTestFragment;

    const-string v1, "\u6d4b\u8bd5\u8d85\u65f6"

    const-string v2, "Time out."

    invoke-static {v0, v1, v2}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->access$100(Lcom/wen/fluorescence/Fragment/QCTestFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    nop

    .line 194
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_b
        0x12 -> :sswitch_a
        0x15 -> :sswitch_8
        0x16 -> :sswitch_7
        0x17 -> :sswitch_6
        0x18 -> :sswitch_5
        0x19 -> :sswitch_4
        0xa0 -> :sswitch_9
        0xa1 -> :sswitch_3
        0x105 -> :sswitch_2
        0x703 -> :sswitch_1
        0x704 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
