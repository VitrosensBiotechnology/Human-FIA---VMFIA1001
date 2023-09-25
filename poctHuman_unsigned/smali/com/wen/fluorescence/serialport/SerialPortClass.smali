.class public Lcom/wen/fluorescence/serialport/SerialPortClass;
.super Ljava/lang/Object;
.source "SerialPortClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wen/fluorescence/serialport/SerialPortClass$ReadThread;
    }
.end annotation


# static fields
.field private static final HANDLER_TEST:[I

.field private static final TAG:Ljava/lang/String; = "SerialPortClass"


# instance fields
.field private hdler:Landroid/os/Handler;

.field private lb_StopThread:Z

.field private li_Buad:I

.field private li_SendMode:I

.field private ls_Port:Ljava/lang/String;

.field private mInputStream:Ljava/io/InputStream;

.field private mOutputStream:Ljava/io/OutputStream;

.field private mReadThread:Lcom/wen/fluorescence/serialport/SerialPortClass$ReadThread;

.field private serialPort:Lcom/wen/fluorescence/serialport/SerialPort;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/wen/fluorescence/serialport/SerialPortClass;->HANDLER_TEST:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x105
        0x106
        0x107
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;III)V
    .locals 1
    .param p1, "hal"    # Landroid/os/Handler;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "buad"    # I
    .param p4, "mode"    # I
    .param p5, "fdNum"    # I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wen/fluorescence/serialport/SerialPortClass;->hdler:Landroid/os/Handler;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/serialport/SerialPortClass;->ls_Port:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/wen/fluorescence/serialport/SerialPortClass;->li_Buad:I

    .line 27
    iput v0, p0, Lcom/wen/fluorescence/serialport/SerialPortClass;->li_SendMode:I

    .line 28
    iput-boolean v0, p0, Lcom/wen/fluorescence/serialport/SerialPortClass;->lb_StopThread:Z

    .line 34
    iput-object p1, p0, Lcom/wen/fluorescence/serialport/SerialPortClass;->hdler:Landroid/os/Handler;

    .line 35
    iput-boolean v0, p0, Lcom/wen/fluorescence/serialport/SerialPortClass;->lb_StopThread:Z

    .line 36
    iput-object p2, p0, Lcom/wen/fluorescence/serialport/SerialPortClass;->ls_Port:Ljava/lang/String;

    .line 37
    iput p3, p0, Lcom/wen/fluorescence/serialport/SerialPortClass;->li_Buad:I

    .line 38
    iput p4, p0, Lcom/wen/fluorescence/serialport/SerialPortClass;->li_SendMode:I

    .line 39
    invoke-direct {p0, p5}, Lcom/wen/fluorescence/serialport/SerialPortClass;->OpenSerialPort(I)V

    .line 40
    return-void
.end method

.method private OpenSerialPort(I)V
    .locals 4
    .param p1, "fdNum"    # I

    .line 46
    :try_start_0
    new-instance v0, Lcom/wen/fluorescence/serialport/SerialPort;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/wen/fluorescence/serialport/SerialPortClass;->ls_Port:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/wen/fluorescence/serialport/SerialPortClass;->li_Buad:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/wen/fluorescence/serialport/SerialPort;-><init>(Ljava/io/File;III)V

    iput-object v0, p0, Lcom/wen/fluorescence/serialport/SerialPortClass;->serialPort:Lcom/wen/fluorescence/serialport/SerialPort;

    .line 47
    iget-object v0, p0, Lcom/wen/fluorescence/serialport/SerialPortClass;->serialPort:Lcom/wen/fluorescence/serialport/SerialPort;

    invoke-virtual {v0}, Lcom/wen/fluorescence/serialport/SerialPort;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/wen/fluorescence/serialport/SerialPortClass;->mInputStream:Ljava/io/InputStream;

    .line 48
    iget-object v0, p0, Lcom/wen/fluorescence/serialport/SerialPortClass;->serialPort:Lcom/wen/fluorescence/serialport/SerialPort;

    invoke-virtual {v0}, Lcom/wen/fluorescence/serialport/SerialPort;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/wen/fluorescence/serialport/SerialPortClass;->mOutputStream:Ljava/io/OutputStream;

    .line 49
    new-instance v0, Lcom/wen/fluorescence/serialport/SerialPortClass$ReadThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wen/fluorescence/serialport/SerialPortClass$ReadThread;-><init>(Lcom/wen/fluorescence/serialport/SerialPortClass;Lcom/wen/fluorescence/serialport/SerialPortClass$1;)V

    iput-object v0, p0, Lcom/wen/fluorescence/serialport/SerialPortClass;->mReadThread:Lcom/wen/fluorescence/serialport/SerialPortClass$ReadThread;

    .line 50
    iget-object v0, p0, Lcom/wen/fluorescence/serialport/SerialPortClass;->mReadThread:Lcom/wen/fluorescence/serialport/SerialPortClass$ReadThread;

    invoke-virtual {v0}, Lcom/wen/fluorescence/serialport/SerialPortClass$ReadThread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 54
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic access$100(Lcom/wen/fluorescence/serialport/SerialPortClass;)Z
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/serialport/SerialPortClass;

    .line 17
    iget-boolean v0, p0, Lcom/wen/fluorescence/serialport/SerialPortClass;->lb_StopThread:Z

    return v0
.end method

.method static synthetic access$200(Lcom/wen/fluorescence/serialport/SerialPortClass;)Ljava/io/InputStream;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/serialport/SerialPortClass;

    .line 17
    iget-object v0, p0, Lcom/wen/fluorescence/serialport/SerialPortClass;->mInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$300()[I
    .locals 1

    .line 17
    sget-object v0, Lcom/wen/fluorescence/serialport/SerialPortClass;->HANDLER_TEST:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/wen/fluorescence/serialport/SerialPortClass;)I
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/serialport/SerialPortClass;

    .line 17
    iget v0, p0, Lcom/wen/fluorescence/serialport/SerialPortClass;->li_SendMode:I

    return v0
.end method

.method static synthetic access$500(Lcom/wen/fluorescence/serialport/SerialPortClass;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/serialport/SerialPortClass;

    .line 17
    iget-object v0, p0, Lcom/wen/fluorescence/serialport/SerialPortClass;->hdler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public ClosePort()V
    .locals 1

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wen/fluorescence/serialport/SerialPortClass;->lb_StopThread:Z

    .line 103
    iget-object v0, p0, Lcom/wen/fluorescence/serialport/SerialPortClass;->serialPort:Lcom/wen/fluorescence/serialport/SerialPort;

    if-eqz v0, :cond_0

    .line 104
    invoke-static {}, Lcom/wen/fluorescence/serialport/SerialPort;->close()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wen/fluorescence/serialport/SerialPortClass;->serialPort:Lcom/wen/fluorescence/serialport/SerialPort;

    .line 107
    :cond_0
    return-void
.end method

.method public SendBuffer(B)V
    .locals 1
    .param p1, "by"    # B

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/wen/fluorescence/serialport/SerialPortClass;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 144
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public SendBuffer(Ljava/lang/String;)V
    .locals 3
    .param p1, "mTx"    # Ljava/lang/String;

    .line 121
    :try_start_0
    const-string v0, "SerialPortClass"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SerialPortSend:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-string v0, "GBK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 123
    .local v0, "bytes":[B
    iget-object v1, p0, Lcom/wen/fluorescence/serialport/SerialPortClass;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v0    # "bytes":[B
    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 127
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public SendBuffer([B)V
    .locals 3
    .param p1, "bytes"    # [B

    .line 112
    :try_start_0
    const-string v0, "SerialPortClass"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SerialPortSend:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-static {p1, v2}, Lcom/wen/fluorescence/util/PublicFuction;->byteToHexString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/wen/fluorescence/serialport/SerialPortClass;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 117
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public SendBufferForWifi(Ljava/lang/String;)V
    .locals 3
    .param p1, "mTx"    # Ljava/lang/String;

    .line 130
    :try_start_0
    const-string v0, "SerialPortClass"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SerialPortSend:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 132
    .local v0, "bytes":[B
    iget-object v1, p0, Lcom/wen/fluorescence/serialport/SerialPortClass;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v0    # "bytes":[B
    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 136
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
