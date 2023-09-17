.class Lcom/wen/fluorescence/serialport/DoSerialData$1;
.super Ljava/lang/Object;
.source "DoSerialData.java"

# interfaces
.implements Lcom/wen/fluorescence/Thread/MyReceiveTimer$TimerOutCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/serialport/DoSerialData;->receiveData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/serialport/DoSerialData;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/serialport/DoSerialData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/serialport/DoSerialData;

    .line 70
    iput-object p1, p0, Lcom/wen/fluorescence/serialport/DoSerialData$1;->this$0:Lcom/wen/fluorescence/serialport/DoSerialData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public timerOver()V
    .locals 3

    .line 73
    const-string v0, "My"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=========MyReceiveTimer. isOVER:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wen/fluorescence/serialport/DoSerialData$1;->this$0:Lcom/wen/fluorescence/serialport/DoSerialData;

    invoke-static {v2}, Lcom/wen/fluorescence/serialport/DoSerialData;->access$000(Lcom/wen/fluorescence/serialport/DoSerialData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/wen/fluorescence/serialport/DoSerialData$1;->this$0:Lcom/wen/fluorescence/serialport/DoSerialData;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/wen/fluorescence/serialport/DoSerialData;->access$002(Lcom/wen/fluorescence/serialport/DoSerialData;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/wen/fluorescence/serialport/DoSerialData$1;->this$0:Lcom/wen/fluorescence/serialport/DoSerialData;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/wen/fluorescence/serialport/DoSerialData;->access$102(Lcom/wen/fluorescence/serialport/DoSerialData;Z)Z

    .line 76
    return-void
.end method
