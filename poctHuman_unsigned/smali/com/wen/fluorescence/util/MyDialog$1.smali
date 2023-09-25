.class final Lcom/wen/fluorescence/util/MyDialog$1;
.super Ljava/lang/Object;
.source "MyDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$inter:Lcom/wen/fluorescence/util/MyDialogInterface;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/util/MyDialogInterface;Landroid/app/AlertDialog;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/wen/fluorescence/util/MyDialog$1;->val$inter:Lcom/wen/fluorescence/util/MyDialogInterface;

    iput-object p2, p0, Lcom/wen/fluorescence/util/MyDialog$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 43
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDialog$1;->val$inter:Lcom/wen/fluorescence/util/MyDialogInterface;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDialog$1;->val$inter:Lcom/wen/fluorescence/util/MyDialogInterface;

    invoke-interface {v0}, Lcom/wen/fluorescence/util/MyDialogInterface;->okListener()V

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDialog$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 47
    return-void
.end method
