.class Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment$1;
.super Ljava/util/TimerTask;
.source "SystemCheckOutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->onHiddenChanged(Z)V
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

    .line 67
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 70
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->getSystemConfig()V

    .line 71
    return-void
.end method
