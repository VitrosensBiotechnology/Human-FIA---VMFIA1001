.class public Lcom/wen/fluorescence/serialport/SerialPort;
.super Ljava/lang/Object;
.source "SerialPort.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SerialPort"


# instance fields
.field private mFd:Ljava/io/FileDescriptor;

.field private mFileInputStream:Ljava/io/FileInputStream;

.field private mFileOutputStream:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/File;III)V
    .locals 2
    .param p1, "device"    # Ljava/io/File;
    .param p2, "baudrate"    # I
    .param p3, "flags"    # I
    .param p4, "fdNum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3, p4}, Lcom/wen/fluorescence/serialport/SerialPort;->open(Ljava/lang/String;III)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/wen/fluorescence/serialport/SerialPort;->mFd:Ljava/io/FileDescriptor;

    .line 49
    iget-object v0, p0, Lcom/wen/fluorescence/serialport/SerialPort;->mFd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_0

    .line 50
    const-string v0, "SerialPort"

    const-string v1, "native open returns null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 53
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/wen/fluorescence/serialport/SerialPort;->mFd:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/wen/fluorescence/serialport/SerialPort;->mFileInputStream:Ljava/io/FileInputStream;

    .line 54
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/wen/fluorescence/serialport/SerialPort;->mFd:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/wen/fluorescence/serialport/SerialPort;->mFileOutputStream:Ljava/io/FileOutputStream;

    .line 55
    return-void
.end method

.method public static native close()V
.end method

.method private static native open(Ljava/lang/String;III)Ljava/io/FileDescriptor;
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/wen/fluorescence/serialport/SerialPort;->mFileInputStream:Ljava/io/FileInputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/wen/fluorescence/serialport/SerialPort;->mFileOutputStream:Ljava/io/FileOutputStream;

    return-object v0
.end method
