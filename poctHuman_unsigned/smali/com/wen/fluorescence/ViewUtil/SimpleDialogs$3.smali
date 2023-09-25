.class final Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$3;
.super Ljava/lang/Object;
.source "SimpleDialogs.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/ViewUtil/SimpleDialogs;->AlertDialogPunching(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$Data:Ljava/lang/String;

.field final synthetic val$ExportMode:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/app/AlertDialog;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$3;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$3;->val$Data:Ljava/lang/String;

    iput p4, p0, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$3;->val$ExportMode:I

    iput-object p5, p0, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$3;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$3;->val$title:Ljava/lang/String;

    iget-object v2, p0, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$3;->val$Data:Ljava/lang/String;

    iget v3, p0, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$3;->val$ExportMode:I

    invoke-static {v0, v1, v2, v3}, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs;->AlertDialogMorePunching(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$3;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 63
    return-void
.end method
