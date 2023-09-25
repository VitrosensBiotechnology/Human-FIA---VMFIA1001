.class Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$2;
.super Lcom/wen/fluorescence/util/MyOnClickListener;
.source "DetialInfomationDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;->setDialogShow(Lcom/wen/fluorescence/database/TestResult;Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$DetialCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    .line 287
    iput-object p1, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$2;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog;

    iput-object p2, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$2;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 290
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$2;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 291
    return-void
.end method
