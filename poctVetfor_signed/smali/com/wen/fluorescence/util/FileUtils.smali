.class public Lcom/wen/fluorescence/util/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static fileUtils:Lcom/wen/fluorescence/util/FileUtils;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteDir(Ljava/lang/String;)V
    .locals 4
    .param p0, "dirPath"    # Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 102
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 103
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_1

    .line 104
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 106
    :cond_1
    const/4 v2, 0x0

    .line 106
    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 107
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wen/fluorescence/util/FileUtils;->deleteDir(Ljava/lang/String;)V

    .line 106
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 113
    .end local v1    # "files":[Ljava/io/File;
    :goto_1
    return-void
.end method

.method public static deleteSpecificFile(Ljava/lang/String;)Z
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 121
    const/4 v1, 0x1

    return v1

    .line 124
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static getInstance()Lcom/wen/fluorescence/util/FileUtils;
    .locals 1

    .line 18
    sget-object v0, Lcom/wen/fluorescence/util/FileUtils;->fileUtils:Lcom/wen/fluorescence/util/FileUtils;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/wen/fluorescence/util/FileUtils;

    invoke-direct {v0}, Lcom/wen/fluorescence/util/FileUtils;-><init>()V

    sput-object v0, Lcom/wen/fluorescence/util/FileUtils;->fileUtils:Lcom/wen/fluorescence/util/FileUtils;

    .line 21
    :cond_0
    sget-object v0, Lcom/wen/fluorescence/util/FileUtils;->fileUtils:Lcom/wen/fluorescence/util/FileUtils;

    return-object v0
.end method


# virtual methods
.method public copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 8
    .param p1, "sourceFile"    # Ljava/io/File;
    .param p2, "targetFile"    # Ljava/io/File;

    .line 71
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 72
    .local v0, "input":Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 75
    .local v1, "inBuff":Ljava/io/BufferedInputStream;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 76
    .local v2, "output":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 79
    .local v3, "outBuff":Ljava/io/BufferedOutputStream;
    const/16 v4, 0x1400

    new-array v4, v4, [B

    .line 81
    .local v4, "b":[B
    :goto_0
    invoke-virtual {v1, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    move v6, v5

    .line 81
    .local v6, "len":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    .line 82
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->sync()V

    .line 88
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 89
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 90
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 91
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v0    # "input":Ljava/io/FileInputStream;
    .end local v1    # "inBuff":Ljava/io/BufferedInputStream;
    .end local v2    # "output":Ljava/io/FileOutputStream;
    .end local v3    # "outBuff":Ljava/io/BufferedOutputStream;
    .end local v4    # "b":[B
    .end local v6    # "len":I
    goto :goto_1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 95
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public exportLogo(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-static {p1}, Lcom/wen/fluorescence/util/PublicFuction;->getUDiskFileList(Landroid/content/Context;)[Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/wen/fluorescence/util/LogcatFileManager;->PATH_LOGCAT:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .local v0, "cacheDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 40
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_0

    .line 41
    const v2, 0x7f0c0101

    invoke-static {p1, v2}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;I)V

    .line 42
    return-void

    .line 44
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/wen/fluorescence/util/PublicFuction;->USB_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/MyLogs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    .local v2, "usbDir":Ljava/io/File;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 47
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-nez v3, :cond_2

    .line 48
    const-string v3, "\u6ca1\u6709U\u76d8\uff01"

    invoke-static {p1, v3}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    return-void

    .line 55
    :cond_2
    nop

    .line 57
    :cond_3
    invoke-static {}, Lcom/wen/fluorescence/util/LogcatFileManager;->getInstance()Lcom/wen/fluorescence/util/LogcatFileManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wen/fluorescence/util/LogcatFileManager;->stop()V

    .line 58
    const/4 v3, 0x0

    .line 58
    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_4

    .line 59
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, "name":Ljava/lang/String;
    aget-object v5, v1, v3

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/wen/fluorescence/util/PublicFuction;->USB_PATH:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/MyLogs/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v6}, Lcom/wen/fluorescence/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 58
    .end local v4    # "name":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 62
    .end local v3    # "i":I
    :cond_4
    invoke-static {}, Lcom/wen/fluorescence/util/LogcatFileManager;->getInstance()Lcom/wen/fluorescence/util/LogcatFileManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wen/fluorescence/util/LogcatFileManager;->start()V

    .line 63
    const v3, 0x7f0c00a9

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 64
    return-void

    .line 51
    :catch_0
    move-exception v3

    .line 52
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 53
    const-string v4, "\u6ca1\u6709U\u76d8\uff01"

    invoke-static {p1, v4}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 54
    return-void
.end method

.method public mkdir(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 28
    .local v1, "isexists":Z
    if-nez v1, :cond_0

    .line 29
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 31
    :cond_0
    return-void
.end method
