.class Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$8;
.super Ljava/lang/Object;
.source "SystemMaintainFragment.java"

# interfaces
.implements Lcom/wen/fluorescence/util/MyDialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->setSoftWareUpgrading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

    .line 443
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$8;->this$0:Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

    iput-object p2, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$8;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelListener()V
    .locals 0

    .line 453
    return-void
.end method

.method public okListener()V
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$8;->this$0:Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$8;->val$file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wen/fluorescence/util/AppUtil;->setInstallApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 447
    return-void
.end method
