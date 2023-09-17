.class Lcom/wen/fluorescence/Fragment/HistoryFragment$10;
.super Lcom/wen/fluorescence/util/MyOnClickListener;
.source "HistoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/HistoryFragment;->query()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/HistoryFragment;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/HistoryFragment;

    .line 676
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$10;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    iput-object p2, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$10;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .line 679
    invoke-super {p0, p1}, Lcom/wen/fluorescence/util/MyOnClickListener;->onClick(Landroid/view/View;)V

    .line 680
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$10;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 681
    return-void
.end method
