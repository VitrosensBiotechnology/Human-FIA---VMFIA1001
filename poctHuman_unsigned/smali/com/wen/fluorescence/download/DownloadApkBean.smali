.class public Lcom/wen/fluorescence/download/DownloadApkBean;
.super Ljava/lang/Object;
.source "DownloadApkBean.java"


# instance fields
.field private download_url:Ljava/lang/String;

.field private version_code:I

.field private version_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownload_url()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/wen/fluorescence/download/DownloadApkBean;->download_url:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion_code()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/wen/fluorescence/download/DownloadApkBean;->version_code:I

    return v0
.end method

.method public getVersion_name()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/wen/fluorescence/download/DownloadApkBean;->version_name:Ljava/lang/String;

    return-object v0
.end method

.method public setDownload_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "download_url"    # Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/wen/fluorescence/download/DownloadApkBean;->download_url:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setVersion_code(I)V
    .locals 0
    .param p1, "version_code"    # I

    .line 19
    iput p1, p0, Lcom/wen/fluorescence/download/DownloadApkBean;->version_code:I

    .line 20
    return-void
.end method

.method public setVersion_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "version_name"    # Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/wen/fluorescence/download/DownloadApkBean;->version_name:Ljava/lang/String;

    .line 28
    return-void
.end method
