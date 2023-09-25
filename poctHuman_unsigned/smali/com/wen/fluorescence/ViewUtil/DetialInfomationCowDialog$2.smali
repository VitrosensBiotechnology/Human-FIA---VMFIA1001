.class Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$2;
.super Lcom/wen/fluorescence/util/MyOnClickListener;
.source "DetialInfomationCowDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;->setDialogShow(Lcom/wen/fluorescence/database/TestResult;Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$DetialCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;

    .line 180
    iput-object p1, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$2;->this$0:Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog;

    iput-object p2, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$2;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 183
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/DetialInfomationCowDialog$2;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 184
    return-void
.end method
