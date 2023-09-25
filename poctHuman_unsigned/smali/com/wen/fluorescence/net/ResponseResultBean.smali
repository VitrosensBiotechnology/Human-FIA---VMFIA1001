.class public Lcom/wen/fluorescence/net/ResponseResultBean;
.super Ljava/lang/Object;
.source "ResponseResultBean.java"


# instance fields
.field private date:J

.field private description:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private size:I

.field private url:Ljava/lang/String;

.field private version:I

.field private versionCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 2

    .line 67
    iget-wide v0, p0, Lcom/wen/fluorescence/net/ResponseResultBean;->date:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/wen/fluorescence/net/ResponseResultBean;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/wen/fluorescence/net/ResponseResultBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/wen/fluorescence/net/ResponseResultBean;->size:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/wen/fluorescence/net/ResponseResultBean;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/wen/fluorescence/net/ResponseResultBean;->version:I

    return v0
.end method

.method public getVersionCode()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/wen/fluorescence/net/ResponseResultBean;->versionCode:Ljava/lang/String;

    return-object v0
.end method

.method public setDate(J)V
    .locals 0
    .param p1, "date"    # J

    .line 71
    iput-wide p1, p0, Lcom/wen/fluorescence/net/ResponseResultBean;->date:J

    .line 72
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/wen/fluorescence/net/ResponseResultBean;->description:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/wen/fluorescence/net/ResponseResultBean;->name:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .line 63
    iput p1, p0, Lcom/wen/fluorescence/net/ResponseResultBean;->size:I

    .line 64
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/wen/fluorescence/net/ResponseResultBean;->url:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .line 31
    iput p1, p0, Lcom/wen/fluorescence/net/ResponseResultBean;->version:I

    .line 32
    return-void
.end method

.method public setVersionCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionCode"    # Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/wen/fluorescence/net/ResponseResultBean;->versionCode:Ljava/lang/String;

    .line 40
    return-void
.end method
