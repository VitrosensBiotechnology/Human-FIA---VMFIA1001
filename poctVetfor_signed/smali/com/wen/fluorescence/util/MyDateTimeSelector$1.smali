.class Lcom/wen/fluorescence/util/MyDateTimeSelector$1;
.super Ljava/lang/Object;
.source "MyDateTimeSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/util/MyDateTimeSelector;->show(Landroid/content/Context;Lcom/wen/fluorescence/util/MyDateTimeSelector$DateTimeCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/util/MyDateTimeSelector;

.field final synthetic val$callBack:Lcom/wen/fluorescence/util/MyDateTimeSelector$DateTimeCallBack;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/util/MyDateTimeSelector;Lcom/wen/fluorescence/util/MyDateTimeSelector$DateTimeCallBack;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/util/MyDateTimeSelector;

    .line 58
    iput-object p1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector$1;->this$0:Lcom/wen/fluorescence/util/MyDateTimeSelector;

    iput-object p2, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector$1;->val$callBack:Lcom/wen/fluorescence/util/MyDateTimeSelector$DateTimeCallBack;

    iput-object p3, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector$1;->this$0:Lcom/wen/fluorescence/util/MyDateTimeSelector;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector$1;->val$callBack:Lcom/wen/fluorescence/util/MyDateTimeSelector$DateTimeCallBack;

    invoke-static {v0, v1}, Lcom/wen/fluorescence/util/MyDateTimeSelector;->access$000(Lcom/wen/fluorescence/util/MyDateTimeSelector;Lcom/wen/fluorescence/util/MyDateTimeSelector$DateTimeCallBack;)V

    .line 62
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 63
    return-void
.end method
