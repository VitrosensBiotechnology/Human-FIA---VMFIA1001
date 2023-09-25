.class Lcom/wen/fluorescence/util/MyProgressDialog$2;
.super Ljava/lang/Object;
.source "MyProgressDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    .line 44
    iput-object p1, p0, Lcom/wen/fluorescence/util/MyProgressDialog$2;->this$0:Lcom/wen/fluorescence/util/MyProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 46
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyProgressDialog$2;->this$0:Lcom/wen/fluorescence/util/MyProgressDialog;

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/MyProgressDialog;->cancel()V

    .line 47
    return-void
.end method
