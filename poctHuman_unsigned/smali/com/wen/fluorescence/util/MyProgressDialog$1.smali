.class Lcom/wen/fluorescence/util/MyProgressDialog$1;
.super Ljava/lang/Object;
.source "MyProgressDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/util/MyProgressDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/util/MyProgressDialog;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/util/MyProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/util/MyProgressDialog;

    .line 38
    iput-object p1, p0, Lcom/wen/fluorescence/util/MyProgressDialog$1;->this$0:Lcom/wen/fluorescence/util/MyProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .line 40
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 41
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyProgressDialog$1;->this$0:Lcom/wen/fluorescence/util/MyProgressDialog;

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/MyProgressDialog;->cancel()V

    .line 42
    return-void
.end method
