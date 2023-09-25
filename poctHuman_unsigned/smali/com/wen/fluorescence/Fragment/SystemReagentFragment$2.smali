.class Lcom/wen/fluorescence/Fragment/SystemReagentFragment$2;
.super Lcom/wen/fluorescence/util/MyOnClickListener;
.source "SystemReagentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/Fragment/SystemReagentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SystemReagentFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SystemReagentFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SystemReagentFragment;

    .line 252
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemReagentFragment;

    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .line 255
    invoke-super {p0, p1}, Lcom/wen/fluorescence/util/MyOnClickListener;->onClick(Landroid/view/View;)V

    .line 256
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080041

    if-eq v0, v1, :cond_3

    const v1, 0x7f080048

    if-eq v0, v1, :cond_2

    const v1, 0x7f080063

    if-eq v0, v1, :cond_1

    const v1, 0x7f080067

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemReagentFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->access$300(Lcom/wen/fluorescence/Fragment/SystemReagentFragment;)V

    .line 259
    goto :goto_0

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemReagentFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->access$400(Lcom/wen/fluorescence/Fragment/SystemReagentFragment;)V

    .line 262
    goto :goto_0

    .line 264
    :cond_2
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemReagentFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->access$500(Lcom/wen/fluorescence/Fragment/SystemReagentFragment;)V

    .line 266
    goto :goto_0

    .line 270
    :cond_3
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemReagentFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SystemReagentFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;->access$600(Lcom/wen/fluorescence/Fragment/SystemReagentFragment;)V

    .line 273
    :goto_0
    return-void
.end method
