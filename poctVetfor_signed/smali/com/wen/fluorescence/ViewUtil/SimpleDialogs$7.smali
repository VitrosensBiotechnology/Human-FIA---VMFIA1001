.class final Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$7;
.super Ljava/lang/Object;
.source "SimpleDialogs.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/ViewUtil/SimpleDialogs;->AlertDialogMorePunching(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ExportMode:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Landroid/content/Context;ILandroid/app/AlertDialog;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$7;->val$context:Landroid/content/Context;

    iput p2, p0, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$7;->val$ExportMode:I

    iput-object p3, p0, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$7;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 127
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$7;->val$context:Landroid/content/Context;

    iget v1, p0, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$7;->val$ExportMode:I

    invoke-static {v0, v1}, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs;->access$100(Landroid/content/Context;I)V

    .line 128
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$7;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 129
    return-void
.end method
