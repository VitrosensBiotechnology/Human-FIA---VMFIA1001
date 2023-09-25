.class public Lcom/wen/fluorescence/download/UpdateApkManager;
.super Ljava/lang/Object;
.source "UpdateApkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wen/fluorescence/download/UpdateApkManager$DownLoadCallBack;
    }
.end annotation


# static fields
.field public static final DOWN_UPDATE:I = 0x5

.field public static localAPK:Ljava/lang/String;

.field private static mUpdateManager:Lcom/wen/fluorescence/download/UpdateApkManager;


# instance fields
.field private final MSG_DOWNLOAD_APK_Fail:I

.field private final MSG_DOWNLOAD_APK_SUCCESS:I

.field private final MSG_DOWNLOAD_CONFIG_Fail:I

.field private final MSG_DOWNLOAD_CONFIG_SUCCESS:I

.field private downloadApkBean:Lcom/wen/fluorescence/download/DownloadApkBean;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-string v0, "/sdcard/Download/"

    sput-object v0, Lcom/wen/fluorescence/download/UpdateApkManager;->localAPK:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lcom/wen/fluorescence/download/UpdateApkManager;->MSG_DOWNLOAD_CONFIG_SUCCESS:I

    .line 58
    const/4 v0, 0x2

    iput v0, p0, Lcom/wen/fluorescence/download/UpdateApkManager;->MSG_DOWNLOAD_CONFIG_Fail:I

    .line 59
    const/4 v0, 0x3

    iput v0, p0, Lcom/wen/fluorescence/download/UpdateApkManager;->MSG_DOWNLOAD_APK_SUCCESS:I

    .line 60
    const/4 v0, 0x4

    iput v0, p0, Lcom/wen/fluorescence/download/UpdateApkManager;->MSG_DOWNLOAD_APK_Fail:I

    .line 62
    new-instance v0, Lcom/wen/fluorescence/download/UpdateApkManager$1;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/download/UpdateApkManager$1;-><init>(Lcom/wen/fluorescence/download/UpdateApkManager;)V

    iput-object v0, p0, Lcom/wen/fluorescence/download/UpdateApkManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private ConfirmFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;

    .line 281
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 282
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 284
    .local v1, "parent":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 285
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "parent":Ljava/io/File;
    :cond_1
    goto :goto_0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 289
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/wen/fluorescence/download/UpdateApkManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/download/UpdateApkManager;

    .line 31
    invoke-direct {p0}, Lcom/wen/fluorescence/download/UpdateApkManager;->hasUpdated()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/wen/fluorescence/download/UpdateApkManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/download/UpdateApkManager;

    .line 31
    iget-object v0, p0, Lcom/wen/fluorescence/download/UpdateApkManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/wen/fluorescence/download/UpdateApkManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/download/UpdateApkManager;

    .line 31
    invoke-direct {p0}, Lcom/wen/fluorescence/download/UpdateApkManager;->startUpdateApk()V

    return-void
.end method

.method static synthetic access$300(Lcom/wen/fluorescence/download/UpdateApkManager;)Lcom/wen/fluorescence/download/DownloadApkBean;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/download/UpdateApkManager;

    .line 31
    iget-object v0, p0, Lcom/wen/fluorescence/download/UpdateApkManager;->downloadApkBean:Lcom/wen/fluorescence/download/DownloadApkBean;

    return-object v0
.end method

.method private downloadApk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 196
    invoke-direct {p0, p2}, Lcom/wen/fluorescence/download/UpdateApkManager;->ConfirmFile(Ljava/lang/String;)V

    .line 198
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 199
    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 200
    const-wide/16 v2, 0x14

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 204
    .local v0, "client":Lokhttp3/OkHttpClient;
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 206
    .local v1, "request":Lokhttp3/Request;
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    new-instance v3, Lcom/wen/fluorescence/download/UpdateApkManager$3;

    invoke-direct {v3, p0, p3, p2}, Lcom/wen/fluorescence/download/UpdateApkManager$3;-><init>(Lcom/wen/fluorescence/download/UpdateApkManager;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 268
    return-void
.end method

.method private downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/wen/fluorescence/download/UpdateApkManager$DownLoadCallBack;Landroid/os/Handler;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "callBack"    # Lcom/wen/fluorescence/download/UpdateApkManager$DownLoadCallBack;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 154
    invoke-direct {p0, p2}, Lcom/wen/fluorescence/download/UpdateApkManager;->ConfirmFile(Ljava/lang/String;)V

    .line 155
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v7, Lcom/wen/fluorescence/download/UpdateApkManager$2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/wen/fluorescence/download/UpdateApkManager$2;-><init>(Lcom/wen/fluorescence/download/UpdateApkManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lcom/wen/fluorescence/download/UpdateApkManager$DownLoadCallBack;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 190
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/download/UpdateApkManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 39
    sget-object v0, Lcom/wen/fluorescence/download/UpdateApkManager;->mUpdateManager:Lcom/wen/fluorescence/download/UpdateApkManager;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/wen/fluorescence/download/UpdateApkManager;

    invoke-direct {v0}, Lcom/wen/fluorescence/download/UpdateApkManager;-><init>()V

    sput-object v0, Lcom/wen/fluorescence/download/UpdateApkManager;->mUpdateManager:Lcom/wen/fluorescence/download/UpdateApkManager;

    .line 42
    :cond_0
    sget-object v0, Lcom/wen/fluorescence/download/UpdateApkManager;->mUpdateManager:Lcom/wen/fluorescence/download/UpdateApkManager;

    iput-object p0, v0, Lcom/wen/fluorescence/download/UpdateApkManager;->mContext:Landroid/content/Context;

    .line 43
    sget-object v0, Lcom/wen/fluorescence/download/UpdateApkManager;->mUpdateManager:Lcom/wen/fluorescence/download/UpdateApkManager;

    return-object v0
.end method

.method private hasUpdated()Z
    .locals 4

    .line 115
    iget-object v0, p0, Lcom/wen/fluorescence/download/UpdateApkManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/wen/fluorescence/util/AppUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v0

    .line 116
    .local v0, "nowVersionCode":I
    const-string v1, "Con"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nowVersionCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const-string v1, "Con"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VersionName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/wen/fluorescence/download/UpdateApkManager;->downloadApkBean:Lcom/wen/fluorescence/download/DownloadApkBean;

    invoke-virtual {v3}, Lcom/wen/fluorescence/download/DownloadApkBean;->getVersion_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const-string v1, "Con"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VersionCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/wen/fluorescence/download/UpdateApkManager;->downloadApkBean:Lcom/wen/fluorescence/download/DownloadApkBean;

    invoke-virtual {v3}, Lcom/wen/fluorescence/download/DownloadApkBean;->getVersion_code()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v1, "Con"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/wen/fluorescence/download/UpdateApkManager;->downloadApkBean:Lcom/wen/fluorescence/download/DownloadApkBean;

    invoke-virtual {v3}, Lcom/wen/fluorescence/download/DownloadApkBean;->getDownload_url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v1, p0, Lcom/wen/fluorescence/download/UpdateApkManager;->downloadApkBean:Lcom/wen/fluorescence/download/DownloadApkBean;

    invoke-virtual {v1}, Lcom/wen/fluorescence/download/DownloadApkBean;->getVersion_code()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 121
    const/4 v1, 0x1

    return v1

    .line 123
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private startUpdateApk()V
    .locals 5

    .line 129
    iget-object v0, p0, Lcom/wen/fluorescence/download/UpdateApkManager;->downloadApkBean:Lcom/wen/fluorescence/download/DownloadApkBean;

    invoke-virtual {v0}, Lcom/wen/fluorescence/download/DownloadApkBean;->getDownload_url()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "url":Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "fileName":Ljava/lang/String;
    iget-object v3, p0, Lcom/wen/fluorescence/download/UpdateApkManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/wen/fluorescence/download/DownLoadDialog;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/download/DownLoadDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wen/fluorescence/download/DownLoadDialog;->setShow()V

    .line 133
    iget-object v3, p0, Lcom/wen/fluorescence/download/UpdateApkManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/wen/fluorescence/download/DownLoadDialog;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/download/DownLoadDialog;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/wen/fluorescence/download/DownLoadDialog;->setButtonEnable(Z)V

    .line 134
    iget-object v2, p0, Lcom/wen/fluorescence/download/UpdateApkManager;->downloadApkBean:Lcom/wen/fluorescence/download/DownloadApkBean;

    invoke-virtual {v2}, Lcom/wen/fluorescence/download/DownloadApkBean;->getDownload_url()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/wen/fluorescence/download/UpdateApkManager;->localAPK:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/wen/fluorescence/download/UpdateApkManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v2, v3, v4}, Lcom/wen/fluorescence/download/UpdateApkManager;->downloadApk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    .line 148
    return-void
.end method


# virtual methods
.method public startUpdateConfig(Lcom/wen/fluorescence/download/DownloadApkBean;)V
    .locals 2
    .param p1, "bean"    # Lcom/wen/fluorescence/download/DownloadApkBean;

    .line 48
    iget-object v0, p0, Lcom/wen/fluorescence/download/UpdateApkManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/wen/fluorescence/util/NetUtil;->isNetworkConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/wen/fluorescence/download/UpdateApkManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00fd

    invoke-static {v0, v1}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;I)V

    .line 50
    return-void

    .line 52
    :cond_0
    iput-object p1, p0, Lcom/wen/fluorescence/download/UpdateApkManager;->downloadApkBean:Lcom/wen/fluorescence/download/DownloadApkBean;

    .line 53
    iget-object v0, p0, Lcom/wen/fluorescence/download/UpdateApkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 54
    return-void
.end method
