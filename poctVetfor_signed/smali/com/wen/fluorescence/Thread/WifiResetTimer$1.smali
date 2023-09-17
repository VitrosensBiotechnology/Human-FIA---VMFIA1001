.class Lcom/wen/fluorescence/Thread/WifiResetTimer$1;
.super Ljava/util/TimerTask;
.source "WifiResetTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Thread/WifiResetTimer;->setTimerStart(Lcom/wen/fluorescence/Thread/WifiResetTimer$TimerOutCallBack;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Thread/WifiResetTimer;

.field final synthetic val$callBack:Lcom/wen/fluorescence/Thread/WifiResetTimer$TimerOutCallBack;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Thread/WifiResetTimer;Lcom/wen/fluorescence/Thread/WifiResetTimer$TimerOutCallBack;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Thread/WifiResetTimer;

    .line 29
    iput-object p1, p0, Lcom/wen/fluorescence/Thread/WifiResetTimer$1;->this$0:Lcom/wen/fluorescence/Thread/WifiResetTimer;

    iput-object p2, p0, Lcom/wen/fluorescence/Thread/WifiResetTimer$1;->val$callBack:Lcom/wen/fluorescence/Thread/WifiResetTimer$TimerOutCallBack;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/WifiResetTimer$1;->val$callBack:Lcom/wen/fluorescence/Thread/WifiResetTimer$TimerOutCallBack;

    invoke-interface {v0}, Lcom/wen/fluorescence/Thread/WifiResetTimer$TimerOutCallBack;->timerOver()V

    .line 33
    return-void
.end method
