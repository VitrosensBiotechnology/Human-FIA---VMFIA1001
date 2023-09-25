.class Lcom/wen/fluorescence/download/DownLoadDialog$1;
.super Ljava/lang/Object;
.source "DownLoadDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/download/DownLoadDialog;->setShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/download/DownLoadDialog;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/download/DownLoadDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/download/DownLoadDialog;

    .line 55
    iput-object p1, p0, Lcom/wen/fluorescence/download/DownLoadDialog$1;->this$0:Lcom/wen/fluorescence/download/DownLoadDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 58
    iget-object v0, p0, Lcom/wen/fluorescence/download/DownLoadDialog$1;->this$0:Lcom/wen/fluorescence/download/DownLoadDialog;

    invoke-static {v0}, Lcom/wen/fluorescence/download/DownLoadDialog;->access$000(Lcom/wen/fluorescence/download/DownLoadDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 59
    return-void
.end method
