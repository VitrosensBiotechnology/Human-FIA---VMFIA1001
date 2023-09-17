.class Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$1;
.super Lcom/wen/fluorescence/util/MyOnClickListener;
.source "SystemMaintainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

    .line 140
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .line 143
    invoke-super {p0, p1}, Lcom/wen/fluorescence/util/MyOnClickListener;->onClick(Landroid/view/View;)V

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 156
    :sswitch_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

    new-instance v1, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$1$1;

    invoke-direct {v1, p0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$1$1;-><init>(Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$1;)V

    invoke-static {v0, v1}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->access$400(Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 167
    goto :goto_0

    .line 146
    :sswitch_1
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->access$000(Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;)V

    .line 147
    goto :goto_0

    .line 149
    :sswitch_2
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->access$100(Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;)V

    .line 150
    goto :goto_0

    .line 173
    :sswitch_3
    const-string v0, "downloadApk"

    new-instance v1, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$1$2;

    invoke-direct {v1, p0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$1$2;-><init>(Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$1;)V

    invoke-static {v0, v1}, Lcom/wen/fluorescence/net/CHRequestManager;->downloadApkFile(Ljava/lang/Object;Lcom/wen/fluorescence/net/CallBack;)V

    .line 186
    goto :goto_0

    .line 188
    :sswitch_4
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->access$600(Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;)V

    goto :goto_0

    .line 152
    :sswitch_5
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->access$200(Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;)V

    .line 153
    goto :goto_0

    .line 169
    :sswitch_6
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->access$500(Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;)V

    .line 170
    nop

    .line 191
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f08004b -> :sswitch_6
        0x7f080051 -> :sswitch_5
        0x7f08005f -> :sswitch_4
        0x7f080062 -> :sswitch_3
        0x7f08007d -> :sswitch_2
        0x7f08007e -> :sswitch_1
        0x7f080089 -> :sswitch_0
    .end sparse-switch
.end method
