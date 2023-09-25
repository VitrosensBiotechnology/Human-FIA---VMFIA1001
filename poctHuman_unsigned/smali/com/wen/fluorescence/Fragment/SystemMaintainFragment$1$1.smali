.class Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$1$1;
.super Ljava/lang/Object;
.source "SystemMaintainFragment.java"

# interfaces
.implements Lcom/wen/fluorescence/util/MyDialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$1;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$1;

    .line 156
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$1$1;->this$1:Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelListener()V
    .locals 0

    .line 165
    return-void
.end method

.method public okListener()V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$1$1;->this$1:Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$1;

    iget-object v0, v0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->access$300(Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;)V

    .line 160
    return-void
.end method
