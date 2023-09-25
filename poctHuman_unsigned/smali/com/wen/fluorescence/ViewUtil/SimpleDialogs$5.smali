.class final Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$5;
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

    .line 110
    iput-object p1, p0, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$5;->val$context:Landroid/content/Context;

    iput p2, p0, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$5;->val$ExportMode:I

    iput-object p3, p0, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$5;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 113
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$5;->val$context:Landroid/content/Context;

    const-string v1, ""

    iget v2, p0, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$5;->val$ExportMode:I

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2}, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs;->access$000(Landroid/content/Context;ILjava/lang/String;I)V

    .line 114
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$5;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 115
    return-void
.end method
