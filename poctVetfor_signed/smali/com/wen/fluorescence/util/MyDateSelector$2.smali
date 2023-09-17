.class Lcom/wen/fluorescence/util/MyDateSelector$2;
.super Ljava/lang/Object;
.source "MyDateSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/util/MyDateSelector;->show(Landroid/content/Context;Lcom/wen/fluorescence/util/MyDateSelector$DateTimeCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/util/MyDateSelector;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/util/MyDateSelector;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/util/MyDateSelector;

    .line 63
    iput-object p1, p0, Lcom/wen/fluorescence/util/MyDateSelector$2;->this$0:Lcom/wen/fluorescence/util/MyDateSelector;

    iput-object p2, p0, Lcom/wen/fluorescence/util/MyDateSelector$2;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 66
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateSelector$2;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 67
    return-void
.end method
