.class Lcom/wen/fluorescence/util/MyDateTimeSelector$2;
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

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/util/MyDateTimeSelector;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/util/MyDateTimeSelector;

    .line 65
    iput-object p1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector$2;->this$0:Lcom/wen/fluorescence/util/MyDateTimeSelector;

    iput-object p2, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector$2;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 68
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector$2;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 69
    return-void
.end method
