.class public Lcom/wen/fluorescence/serialport/CommActivity;
.super Ljava/lang/Object;
.source "CommActivity.java"


# static fields
.field private static AVGhdler:Landroid/os/Handler;

.field private static AVRComm:Lcom/wen/fluorescence/serialport/SerialPortClass;

.field private static PrintComm:Lcom/wen/fluorescence/serialport/SerialPortClass;

.field private static Printhdler:Landroid/os/Handler;

.field private static Wifihdler:Landroid/os/Handler;

.field private static gs_AVRBuad:Ljava/lang/String;

.field private static gs_AVRPort:Ljava/lang/String;

.field private static gs_PrintBuad:Ljava/lang/String;

.field private static gs_PrintPort:Ljava/lang/String;

.field private static handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-string v0, "/dev/ttyAMA2"

    sput-object v0, Lcom/wen/fluorescence/serialport/CommActivity;->gs_AVRPort:Ljava/lang/String;

    const-string v0, "115200"

    sput-object v0, Lcom/wen/fluorescence/serialport/CommActivity;->gs_AVRBuad:Ljava/lang/String;

    .line 22
    const-string v0, "/dev/ttyAMA1"

    sput-object v0, Lcom/wen/fluorescence/serialport/CommActivity;->gs_PrintPort:Ljava/lang/String;

    const-string v0, "9600"

    sput-object v0, Lcom/wen/fluorescence/serialport/CommActivity;->gs_PrintBuad:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/wen/fluorescence/serialport/CommActivity;->AVGhdler:Landroid/os/Handler;

    .line 25
    sput-object v0, Lcom/wen/fluorescence/serialport/CommActivity;->Printhdler:Landroid/os/Handler;

    .line 26
    sput-object v0, Lcom/wen/fluorescence/serialport/CommActivity;->Wifihdler:Landroid/os/Handler;

    .line 30
    new-instance v0, Lcom/wen/fluorescence/serialport/CommActivity$1;

    invoke-direct {v0}, Lcom/wen/fluorescence/serialport/CommActivity$1;-><init>()V

    sput-object v0, Lcom/wen/fluorescence/serialport/CommActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Close()V
    .locals 2

    .line 103
    sget-object v0, Lcom/wen/fluorescence/serialport/CommActivity;->AVRComm:Lcom/wen/fluorescence/serialport/SerialPortClass;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Lcom/wen/fluorescence/serialport/CommActivity;->AVRComm:Lcom/wen/fluorescence/serialport/SerialPortClass;

    invoke-virtual {v0}, Lcom/wen/fluorescence/serialport/SerialPortClass;->ClosePort()V

    .line 105
    sput-object v1, Lcom/wen/fluorescence/serialport/CommActivity;->AVRComm:Lcom/wen/fluorescence/serialport/SerialPortClass;

    .line 107
    :cond_0
    sget-object v0, Lcom/wen/fluorescence/serialport/CommActivity;->PrintComm:Lcom/wen/fluorescence/serialport/SerialPortClass;

    if-eqz v0, :cond_1

    .line 108
    sget-object v0, Lcom/wen/fluorescence/serialport/CommActivity;->PrintComm:Lcom/wen/fluorescence/serialport/SerialPortClass;

    invoke-virtual {v0}, Lcom/wen/fluorescence/serialport/SerialPortClass;->ClosePort()V

    .line 109
    sput-object v1, Lcom/wen/fluorescence/serialport/CommActivity;->PrintComm:Lcom/wen/fluorescence/serialport/SerialPortClass;

    .line 111
    :cond_1
    return-void
.end method

.method public static SendData([B)V
    .locals 1
    .param p0, "mTx"    # [B

    .line 90
    sget-object v0, Lcom/wen/fluorescence/serialport/CommActivity;->AVRComm:Lcom/wen/fluorescence/serialport/SerialPortClass;

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/wen/fluorescence/serialport/CommActivity;->AVRComm:Lcom/wen/fluorescence/serialport/SerialPortClass;

    invoke-virtual {v0, p0}, Lcom/wen/fluorescence/serialport/SerialPortClass;->SendBuffer([B)V

    .line 92
    :cond_0
    return-void
.end method

.method public static SendPrintData([B)V
    .locals 1
    .param p0, "mTX"    # [B

    .line 97
    sget-object v0, Lcom/wen/fluorescence/serialport/CommActivity;->PrintComm:Lcom/wen/fluorescence/serialport/SerialPortClass;

    if-eqz v0, :cond_0

    .line 98
    sget-object v0, Lcom/wen/fluorescence/serialport/CommActivity;->PrintComm:Lcom/wen/fluorescence/serialport/SerialPortClass;

    invoke-virtual {v0, p0}, Lcom/wen/fluorescence/serialport/SerialPortClass;->SendBuffer([B)V

    .line 99
    :cond_0
    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .locals 1

    .line 16
    sget-object v0, Lcom/wen/fluorescence/serialport/CommActivity;->AVGhdler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .line 16
    sget-object v0, Lcom/wen/fluorescence/serialport/CommActivity;->Printhdler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .locals 1

    .line 16
    sget-object v0, Lcom/wen/fluorescence/serialport/CommActivity;->Wifihdler:Landroid/os/Handler;

    return-object v0
.end method

.method public static initAVGHandler(Landroid/os/Handler;)V
    .locals 0
    .param p0, "handler"    # Landroid/os/Handler;

    .line 62
    sput-object p0, Lcom/wen/fluorescence/serialport/CommActivity;->AVGhdler:Landroid/os/Handler;

    .line 63
    return-void
.end method

.method public static initPort()V
    .locals 13

    .line 70
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v1, "icoolv3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "/dev/ttyAMA3"

    sput-object v0, Lcom/wen/fluorescence/serialport/CommActivity;->gs_AVRPort:Ljava/lang/String;

    .line 72
    const-string v0, "/dev/ttyAMA2"

    sput-object v0, Lcom/wen/fluorescence/serialport/CommActivity;->gs_PrintPort:Ljava/lang/String;

    goto :goto_0

    .line 74
    :cond_0
    const-string v0, "/dev/ttyAMA2"

    sput-object v0, Lcom/wen/fluorescence/serialport/CommActivity;->gs_AVRPort:Ljava/lang/String;

    .line 75
    const-string v0, "/dev/ttyAMA1"

    sput-object v0, Lcom/wen/fluorescence/serialport/CommActivity;->gs_PrintPort:Ljava/lang/String;

    .line 78
    :goto_0
    :try_start_0
    new-instance v0, Lcom/wen/fluorescence/serialport/SerialPortClass;

    sget-object v2, Lcom/wen/fluorescence/serialport/CommActivity;->handler:Landroid/os/Handler;

    sget-object v3, Lcom/wen/fluorescence/serialport/CommActivity;->gs_AVRPort:Ljava/lang/String;

    sget-object v1, Lcom/wen/fluorescence/serialport/CommActivity;->gs_AVRBuad:Ljava/lang/String;

    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/wen/fluorescence/serialport/SerialPortClass;-><init>(Landroid/os/Handler;Ljava/lang/String;III)V

    sput-object v0, Lcom/wen/fluorescence/serialport/CommActivity;->AVRComm:Lcom/wen/fluorescence/serialport/SerialPortClass;

    .line 80
    new-instance v0, Lcom/wen/fluorescence/serialport/SerialPortClass;

    sget-object v8, Lcom/wen/fluorescence/serialport/CommActivity;->handler:Landroid/os/Handler;

    sget-object v9, Lcom/wen/fluorescence/serialport/CommActivity;->gs_PrintPort:Ljava/lang/String;

    sget-object v1, Lcom/wen/fluorescence/serialport/CommActivity;->gs_PrintBuad:Ljava/lang/String;

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/wen/fluorescence/serialport/SerialPortClass;-><init>(Landroid/os/Handler;Ljava/lang/String;III)V

    sput-object v0, Lcom/wen/fluorescence/serialport/CommActivity;->PrintComm:Lcom/wen/fluorescence/serialport/SerialPortClass;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_1

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 85
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_1
    return-void
.end method
