.class Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$4;
.super Ljava/lang/Object;
.source "SystemAdvancedFragment.java"

# interfaces
.implements Lcom/wen/fluorescence/util/MyDialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->switchPCControl()V
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

    .line 316
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelListener()V
    .locals 0

    .line 326
    return-void
.end method

.method public okListener()V
    .locals 0

    .line 320
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->setPCControlMode()V

    .line 321
    return-void
.end method
