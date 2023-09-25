.class Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$7;
.super Ljava/lang/Object;
.source "SystemAdvancedFragment.java"

# interfaces
.implements Lcom/wen/fluorescence/util/MyDialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->sureToWrite()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    .line 370
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$7;->this$0:Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelListener()V
    .locals 0

    .line 382
    return-void
.end method

.method public okListener()V
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$7;->this$0:Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->access$1200(Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;)Lcom/wen/fluorescence/bean/SystemConfig;

    move-result-object v0

    .line 374
    .local v0, "config":Lcom/wen/fluorescence/bean/SystemConfig;
    if-eqz v0, :cond_0

    .line 375
    invoke-static {v0}, Lcom/wen/fluorescence/serialport/Protocol;->setSystemConfig(Lcom/wen/fluorescence/bean/SystemConfig;)V

    .line 377
    :cond_0
    return-void
.end method
