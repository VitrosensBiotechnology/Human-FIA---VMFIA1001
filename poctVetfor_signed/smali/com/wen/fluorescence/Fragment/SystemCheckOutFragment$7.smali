.class Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment$7;
.super Ljava/util/TimerTask;
.source "SystemCheckOutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;->dealButtonCheckOutClick(Ljava/lang/Object;)V
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

    .line 316
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment$7;->this$0:Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 319
    const/16 v0, 0x15e

    invoke-static {v0}, Lcom/wen/fluorescence/serialport/Protocol;->setHead(I)V

    .line 320
    return-void
.end method
