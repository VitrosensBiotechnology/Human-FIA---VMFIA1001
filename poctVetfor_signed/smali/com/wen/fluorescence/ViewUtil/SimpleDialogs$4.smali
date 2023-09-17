.class final Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$4;
.super Ljava/lang/Object;
.source "SimpleDialogs.java"

# interfaces
.implements Lcom/wen/fluorescence/util/MyDialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/ViewUtil/SimpleDialogs;->select(Landroid/content/Context;ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ExportMode:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$n:I

.field final synthetic val$selectDate:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$4;->val$context:Landroid/content/Context;

    iput p2, p0, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$4;->val$n:I

    iput-object p3, p0, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$4;->val$selectDate:Ljava/lang/String;

    iput p4, p0, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$4;->val$ExportMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelListener()V
    .locals 0

    .line 79
    return-void
.end method

.method public okListener()V
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$4;->val$context:Landroid/content/Context;

    iget v1, p0, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$4;->val$n:I

    iget-object v2, p0, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$4;->val$selectDate:Ljava/lang/String;

    iget v3, p0, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$4;->val$ExportMode:I

    invoke-static {v0, v1, v2, v3}, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs;->access$000(Landroid/content/Context;ILjava/lang/String;I)V

    .line 74
    return-void
.end method
