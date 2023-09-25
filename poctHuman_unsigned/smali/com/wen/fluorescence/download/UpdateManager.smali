.class public Lcom/wen/fluorescence/download/UpdateManager;
.super Ljava/lang/Object;
.source "UpdateManager.java"


# static fields
.field public static final DOWN_UPDATE:I = 0x5

.field private static mUpdateManager:Lcom/wen/fluorescence/download/UpdateManager;


# instance fields
.field private final MSG_DOWNLOAD_APK_Faile:I

.field private final MSG_DOWNLOAD_APK_SUCCESS:I

.field private final MSG_DOWNLOAD_CONFIG_Faile:I

.field private final MSG_DOWNLOAD_CONFIG_SUCCESS:I

.field private config:Lcom/wen/fluorescence/download/DownConfig;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lcom/wen/fluorescence/download/UpdateManager;->MSG_DOWNLOAD_CONFIG_SUCCESS:I

    .line 52
    const/4 v0, 0x2

    iput v0, p0, Lcom/wen/fluorescence/download/UpdateManager;->MSG_DOWNLOAD_CONFIG_Faile:I

    .line 53
    const/4 v0, 0x3

    iput v0, p0, Lcom/wen/fluorescence/download/UpdateManager;->MSG_DOWNLOAD_APK_SUCCESS:I

    .line 54
    const/4 v0, 0x4

    iput v0, p0, Lcom/wen/fluorescence/download/UpdateManager;->MSG_DOWNLOAD_APK_Faile:I

    .line 56
    new-instance v0, Lcom/wen/fluorescence/download/UpdateManager$2;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/download/UpdateManager$2;-><init>(Lcom/wen/fluorescence/download/UpdateManager;)V

    iput-object v0, p0, Lcom/wen/fluorescence/download/UpdateManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/wen/fluorescence/download/UpdateManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/download/UpdateManager;

    .line 16
    iget-object v0, p0, Lcom/wen/fluorescence/download/UpdateManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wen/fluorescence/download/UpdateManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/download/UpdateManager;

    .line 16
    iget-object v0, p0, Lcom/wen/fluorescence/download/UpdateManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/wen/fluorescence/download/UpdateManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/download/UpdateManager;

    .line 16
    invoke-direct {p0}, Lcom/wen/fluorescence/download/UpdateManager;->hasUpdated()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/wen/fluorescence/download/UpdateManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/download/UpdateManager;

    .line 16
    invoke-direct {p0}, Lcom/wen/fluorescence/download/UpdateManager;->startUpdateApk()V

    return-void
.end method

.method static synthetic access$400(Lcom/wen/fluorescence/download/UpdateManager;)Lcom/wen/fluorescence/download/DownConfig;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/download/UpdateManager;

    .line 16
    iget-object v0, p0, Lcom/wen/fluorescence/download/UpdateManager;->config:Lcom/wen/fluorescence/download/DownConfig;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/download/UpdateManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 23
    sget-object v0, Lcom/wen/fluorescence/download/UpdateManager;->mUpdateManager:Lcom/wen/fluorescence/download/UpdateManager;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/wen/fluorescence/download/UpdateManager;

    invoke-direct {v0}, Lcom/wen/fluorescence/download/UpdateManager;-><init>()V

    sput-object v0, Lcom/wen/fluorescence/download/UpdateManager;->mUpdateManager:Lcom/wen/fluorescence/download/UpdateManager;

    .line 26
    :cond_0
    sget-object v0, Lcom/wen/fluorescence/download/UpdateManager;->mUpdateManager:Lcom/wen/fluorescence/download/UpdateManager;

    iput-object p0, v0, Lcom/wen/fluorescence/download/UpdateManager;->mContext:Landroid/content/Context;

    .line 27
    sget-object v0, Lcom/wen/fluorescence/download/UpdateManager;->mUpdateManager:Lcom/wen/fluorescence/download/UpdateManager;

    return-object v0
.end method

.method private hasUpdated()Z
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/wen/fluorescence/download/UpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/wen/fluorescence/util/AppUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v0

    .line 109
    .local v0, "nowVersionCode":I
    sget-object v1, Lcom/wen/fluorescence/download/DownloadTool;->localConfig:Ljava/lang/String;

    invoke-static {v1}, Lcom/wen/fluorescence/download/DownloadTool;->parseConfigXml(Ljava/lang/String;)Lcom/wen/fluorescence/download/DownConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/wen/fluorescence/download/UpdateManager;->config:Lcom/wen/fluorescence/download/DownConfig;

    .line 110
    const-string v1, "Con"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nowVersionCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v1, "Con"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VersionName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/wen/fluorescence/download/UpdateManager;->config:Lcom/wen/fluorescence/download/DownConfig;

    invoke-virtual {v3}, Lcom/wen/fluorescence/download/DownConfig;->getVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-string v1, "Con"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VersionCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/wen/fluorescence/download/UpdateManager;->config:Lcom/wen/fluorescence/download/DownConfig;

    invoke-virtual {v3}, Lcom/wen/fluorescence/download/DownConfig;->getVersionCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v1, "Con"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/wen/fluorescence/download/UpdateManager;->config:Lcom/wen/fluorescence/download/DownConfig;

    invoke-virtual {v3}, Lcom/wen/fluorescence/download/DownConfig;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v1, "Con"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DateTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/wen/fluorescence/download/UpdateManager;->config:Lcom/wen/fluorescence/download/DownConfig;

    invoke-virtual {v3}, Lcom/wen/fluorescence/download/DownConfig;->getDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v1, p0, Lcom/wen/fluorescence/download/UpdateManager;->config:Lcom/wen/fluorescence/download/DownConfig;

    invoke-virtual {v1}, Lcom/wen/fluorescence/download/DownConfig;->getVersionCode()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 116
    const/4 v1, 0x1

    return v1

    .line 118
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private startUpdateApk()V
    .locals 4

    .line 124
    iget-object v0, p0, Lcom/wen/fluorescence/download/UpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/wen/fluorescence/download/DownLoadDialog;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/download/DownLoadDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/download/DownLoadDialog;->setShow()V

    .line 125
    iget-object v0, p0, Lcom/wen/fluorescence/download/UpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/wen/fluorescence/download/DownLoadDialog;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/download/DownLoadDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/download/DownLoadDialog;->setButtonEnable(Z)V

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/wen/fluorescence/download/DownloadTool;->uriAPK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/wen/fluorescence/download/UpdateManager;->config:Lcom/wen/fluorescence/download/DownConfig;

    invoke-virtual {v1}, Lcom/wen/fluorescence/download/DownConfig;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/wen/fluorescence/download/DownloadTool;->localAPK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wen/fluorescence/download/UpdateManager;->config:Lcom/wen/fluorescence/download/DownConfig;

    .line 127
    invoke-virtual {v2}, Lcom/wen/fluorescence/download/DownConfig;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/wen/fluorescence/download/UpdateManager$3;

    invoke-direct {v2, p0}, Lcom/wen/fluorescence/download/UpdateManager$3;-><init>(Lcom/wen/fluorescence/download/UpdateManager;)V

    iget-object v3, p0, Lcom/wen/fluorescence/download/UpdateManager;->mHandler:Landroid/os/Handler;

    .line 126
    invoke-static {v0, v1, v2, v3}, Lcom/wen/fluorescence/download/DownloadTool;->DownloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/wen/fluorescence/download/DownloadTool$DownLoadCallBack;Landroid/os/Handler;)V

    .line 140
    return-void
.end method


# virtual methods
.method public startUpdateConfig()V
    .locals 4

    .line 32
    iget-object v0, p0, Lcom/wen/fluorescence/download/UpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/wen/fluorescence/util/NetUtil;->isNetworkConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/wen/fluorescence/download/UpdateManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00fd

    invoke-static {v0, v1}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;I)V

    .line 34
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/download/UpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/wen/fluorescence/download/DownLoadDialog;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/download/DownLoadDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/download/DownLoadDialog;->setShow()V

    .line 37
    sget-object v0, Lcom/wen/fluorescence/download/DownloadTool;->uriConfig:Ljava/lang/String;

    sget-object v1, Lcom/wen/fluorescence/download/DownloadTool;->localConfig:Ljava/lang/String;

    new-instance v2, Lcom/wen/fluorescence/download/UpdateManager$1;

    invoke-direct {v2, p0}, Lcom/wen/fluorescence/download/UpdateManager$1;-><init>(Lcom/wen/fluorescence/download/UpdateManager;)V

    iget-object v3, p0, Lcom/wen/fluorescence/download/UpdateManager;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3}, Lcom/wen/fluorescence/download/DownloadTool;->DownloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/wen/fluorescence/download/DownloadTool$DownLoadCallBack;Landroid/os/Handler;)V

    .line 48
    return-void
.end method
