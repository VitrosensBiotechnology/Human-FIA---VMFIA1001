.class Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$2;
.super Lcom/wen/fluorescence/util/MyOnClickListener;
.source "SystemAdvancedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    .line 204
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .line 207
    invoke-super {p0, p1}, Lcom/wen/fluorescence/util/MyOnClickListener;->onClick(Landroid/view/View;)V

    .line 208
    invoke-static {}, Lcom/wen/fluorescence/util/DoubleClick;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    return-void

    .line 211
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c00c7

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 219
    :sswitch_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->access$200(Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;)V

    .line 220
    goto/16 :goto_0

    .line 228
    :sswitch_1
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->access$500(Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 229
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->getReagentInfo()V

    .line 230
    goto/16 :goto_0

    .line 222
    :sswitch_2
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->access$300(Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;)V

    .line 223
    goto/16 :goto_0

    .line 232
    :sswitch_3
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->getReagentStatus()V

    .line 233
    goto/16 :goto_0

    .line 216
    :sswitch_4
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->getSystemConfig()V

    .line 217
    goto/16 :goto_0

    .line 235
    :sswitch_5
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/Thread/PrinterThread;->getPrinterThread(Landroid/content/Context;)Lcom/wen/fluorescence/Thread/PrinterThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/Thread/PrinterThread;->testPrinter()V

    .line 236
    goto/16 :goto_0

    .line 213
    :sswitch_6
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->access$100(Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;)V

    .line 214
    goto/16 :goto_0

    .line 264
    :sswitch_7
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->access$1000(Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;)V

    .line 265
    goto/16 :goto_0

    .line 270
    :sswitch_8
    invoke-static {}, Lcom/wen/fluorescence/util/FileUtils;->getInstance()Lcom/wen/fluorescence/util/FileUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    invoke-virtual {v1}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/util/FileUtils;->exportLogo(Landroid/content/Context;)V

    .line 271
    goto/16 :goto_0

    .line 267
    :sswitch_9
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->getVersion()V

    .line 268
    goto/16 :goto_0

    .line 225
    :sswitch_a
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->access$400(Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;)V

    .line 226
    goto/16 :goto_0

    .line 244
    :sswitch_b
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->access$600(Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 246
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->getLightData()V

    .line 247
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->access$700(Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x105

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 248
    goto :goto_0

    .line 251
    :sswitch_c
    :try_start_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->access$800(Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e1":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    invoke-virtual {v3}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    invoke-virtual {v4, v1}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v2}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 255
    .end local v0    # "e1":Ljava/lang/Exception;
    goto :goto_0

    .line 258
    :sswitch_d
    :try_start_1
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->access$900(Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 261
    goto :goto_0

    .line 259
    :catch_1
    move-exception v0

    .line 260
    .restart local v0    # "e1":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    invoke-virtual {v3}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    invoke-virtual {v4, v1}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v2}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 262
    .end local v0    # "e1":Ljava/lang/Exception;
    goto :goto_0

    .line 273
    :sswitch_e
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->access$1100(Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u7f51\u7edc\u5df2\u8fde\u63a5."

    invoke-static {v0, v1, v2}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    goto :goto_0

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u7f51\u7edc\u672a\u8fde\u63a5."

    invoke-static {v0, v1, v2}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    goto :goto_0

    .line 241
    :sswitch_f
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->setCardOut()V

    .line 242
    goto :goto_0

    .line 238
    :sswitch_10
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->setCardIn()V

    .line 239
    nop

    .line 280
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f08003c -> :sswitch_10
        0x7f08003d -> :sswitch_f
        0x7f08003e -> :sswitch_e
        0x7f080043 -> :sswitch_d
        0x7f080044 -> :sswitch_c
        0x7f080045 -> :sswitch_b
        0x7f08004c -> :sswitch_a
        0x7f080054 -> :sswitch_9
        0x7f08005d -> :sswitch_8
        0x7f080065 -> :sswitch_7
        0x7f080066 -> :sswitch_6
        0x7f08006a -> :sswitch_5
        0x7f08006d -> :sswitch_4
        0x7f080070 -> :sswitch_3
        0x7f080071 -> :sswitch_2
        0x7f080079 -> :sswitch_1
        0x7f080093 -> :sswitch_0
    .end sparse-switch
.end method
