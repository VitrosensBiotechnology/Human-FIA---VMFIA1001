.class Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment$6;
.super Ljava/lang/Object;
.source "SystemCheckOutFragment.java"

# interfaces
.implements Lcom/wen/fluorescence/util/MyDialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->exitSystem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;

    .line 244
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelListener()V
    .locals 0

    .line 254
    return-void
.end method

.method public okListener()V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/util/AppUtil;->exitApp(Landroid/content/Context;)V

    .line 248
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment$6;->this$0:Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 249
    return-void
.end method
