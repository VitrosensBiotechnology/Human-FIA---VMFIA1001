.class public Lcom/wen/fluorescence/download/DownConfig;
.super Ljava/lang/Object;
.source "DownConfig.java"


# instance fields
.field private DateTime:Ljava/lang/String;

.field private FileName:Ljava/lang/String;

.field private VersionCode:I

.field private VersionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDateTime()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/wen/fluorescence/download/DownConfig;->DateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/wen/fluorescence/download/DownConfig;->FileName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/wen/fluorescence/download/DownConfig;->VersionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/wen/fluorescence/download/DownConfig;->VersionName:Ljava/lang/String;

    return-object v0
.end method

.method public setDateTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "dateTime"    # Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/wen/fluorescence/download/DownConfig;->DateTime:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/wen/fluorescence/download/DownConfig;->FileName:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setVersionCode(I)V
    .locals 0
    .param p1, "versionCode"    # I

    .line 24
    iput p1, p0, Lcom/wen/fluorescence/download/DownConfig;->VersionCode:I

    .line 25
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionName"    # Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lcom/wen/fluorescence/download/DownConfig;->VersionName:Ljava/lang/String;

    .line 17
    return-void
.end method
