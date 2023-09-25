.class public Lcom/wen/fluorescence/util/LogcatFileManager;
.super Ljava/lang/Object;
.source "LogcatFileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/wen/fluorescence/util/LogcatFileManager;

.field public static PATH_LOGCAT:Ljava/lang/String;


# instance fields
.field private logPath:Ljava/lang/String;

.field private mLogDumper:Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;

.field private mPId:I

.field private simpleDateFormat1:Ljava/text/SimpleDateFormat;

.field private simpleDateFormat2:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/wen/fluorescence/util/LogcatFileManager;->INSTANCE:Lcom/wen/fluorescence/util/LogcatFileManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wen/fluorescence/util/LogcatFileManager;->mLogDumper:Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;

    .line 21
    const-string v0, "/sdcard/Logs"

    iput-object v0, p0, Lcom/wen/fluorescence/util/LogcatFileManager;->logPath:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/wen/fluorescence/util/LogcatFileManager;->simpleDateFormat1:Ljava/text/SimpleDateFormat;

    .line 25
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/wen/fluorescence/util/LogcatFileManager;->simpleDateFormat2:Ljava/text/SimpleDateFormat;

    .line 35
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Lcom/wen/fluorescence/util/LogcatFileManager;->mPId:I

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/wen/fluorescence/util/LogcatFileManager;)Ljava/text/SimpleDateFormat;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/util/LogcatFileManager;

    .line 14
    iget-object v0, p0, Lcom/wen/fluorescence/util/LogcatFileManager;->simpleDateFormat1:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wen/fluorescence/util/LogcatFileManager;)Ljava/text/SimpleDateFormat;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/util/LogcatFileManager;

    .line 14
    iget-object v0, p0, Lcom/wen/fluorescence/util/LogcatFileManager;->simpleDateFormat2:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public static getInstance()Lcom/wen/fluorescence/util/LogcatFileManager;
    .locals 1

    .line 28
    sget-object v0, Lcom/wen/fluorescence/util/LogcatFileManager;->INSTANCE:Lcom/wen/fluorescence/util/LogcatFileManager;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/wen/fluorescence/util/LogcatFileManager;

    invoke-direct {v0}, Lcom/wen/fluorescence/util/LogcatFileManager;-><init>()V

    sput-object v0, Lcom/wen/fluorescence/util/LogcatFileManager;->INSTANCE:Lcom/wen/fluorescence/util/LogcatFileManager;

    .line 31
    :cond_0
    sget-object v0, Lcom/wen/fluorescence/util/LogcatFileManager;->INSTANCE:Lcom/wen/fluorescence/util/LogcatFileManager;

    return-object v0
.end method

.method private setFolderPath(Ljava/lang/String;)V
    .locals 4
    .param p1, "folderPath"    # Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    .local v0, "folder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    const-string v1, "as"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mkdirs:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 46
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The logcat folder path is not a directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 48
    :cond_1
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    sput-object v1, Lcom/wen/fluorescence/util/LogcatFileManager;->PATH_LOGCAT:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public start()V
    .locals 3

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/wen/fluorescence/util/LogcatFileManager;->logPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/wen/fluorescence/util/LogcatFileManager;->setFolderPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    nop

    .line 57
    iget-object v0, p0, Lcom/wen/fluorescence/util/LogcatFileManager;->mLogDumper:Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;

    iget v1, p0, Lcom/wen/fluorescence/util/LogcatFileManager;->mPId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/wen/fluorescence/util/LogcatFileManager;->PATH_LOGCAT:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;-><init>(Lcom/wen/fluorescence/util/LogcatFileManager;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/wen/fluorescence/util/LogcatFileManager;->mLogDumper:Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/util/LogcatFileManager;->mLogDumper:Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->setDaemon(Z)V

    .line 60
    iget-object v0, p0, Lcom/wen/fluorescence/util/LogcatFileManager;->mLogDumper:Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->start()V

    .line 61
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    return-void
.end method

.method public stop()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/wen/fluorescence/util/LogcatFileManager;->mLogDumper:Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/wen/fluorescence/util/LogcatFileManager;->mLogDumper:Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->stopLogs()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wen/fluorescence/util/LogcatFileManager;->mLogDumper:Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;

    .line 68
    :cond_0
    return-void
.end method
