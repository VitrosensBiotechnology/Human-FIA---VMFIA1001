.class Lcom/wen/fluorescence/util/MyDateSelector$1;
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

.field final synthetic val$callBack:Lcom/wen/fluorescence/util/MyDateSelector$DateTimeCallBack;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/util/MyDateSelector;Lcom/wen/fluorescence/util/MyDateSelector$DateTimeCallBack;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/util/MyDateSelector;

    .line 56
    iput-object p1, p0, Lcom/wen/fluorescence/util/MyDateSelector$1;->this$0:Lcom/wen/fluorescence/util/MyDateSelector;

    iput-object p2, p0, Lcom/wen/fluorescence/util/MyDateSelector$1;->val$callBack:Lcom/wen/fluorescence/util/MyDateSelector$DateTimeCallBack;

    iput-object p3, p0, Lcom/wen/fluorescence/util/MyDateSelector$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 59
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateSelector$1;->this$0:Lcom/wen/fluorescence/util/MyDateSelector;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateSelector$1;->val$callBack:Lcom/wen/fluorescence/util/MyDateSelector$DateTimeCallBack;

    invoke-static {v0, v1}, Lcom/wen/fluorescence/util/MyDateSelector;->access$000(Lcom/wen/fluorescence/util/MyDateSelector;Lcom/wen/fluorescence/util/MyDateSelector$DateTimeCallBack;)V

    .line 60
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateSelector$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 61
    return-void
.end method
