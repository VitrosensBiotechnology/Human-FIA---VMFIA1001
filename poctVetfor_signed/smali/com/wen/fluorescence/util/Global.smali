.class public Lcom/wen/fluorescence/util/Global;
.super Ljava/lang/Object;
.source "Global.java"


# static fields
.field private static mGlobal:Lcom/wen/fluorescence/util/Global;


# instance fields
.field private AppHasStart:Z

.field private GuestType:I

.field private Language:I

.field private Release_Version:Ljava/lang/String;

.field private SoftType:I

.field private bFanOpen:Z

.field private config:Lcom/wen/fluorescence/bean/SystemConfig;

.field private dTemp:D

.field private testStatus:Z

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "v1.0"

    iput-object v0, p0, Lcom/wen/fluorescence/util/Global;->Release_Version:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/wen/fluorescence/util/Global;->SoftType:I

    .line 17
    iput v0, p0, Lcom/wen/fluorescence/util/Global;->GuestType:I

    .line 20
    iput-boolean v0, p0, Lcom/wen/fluorescence/util/Global;->testStatus:Z

    .line 22
    const/4 v1, 0x1

    iput v1, p0, Lcom/wen/fluorescence/util/Global;->Language:I

    .line 24
    const-string v1, "CH"

    iput-object v1, p0, Lcom/wen/fluorescence/util/Global;->user:Ljava/lang/String;

    .line 25
    iput-boolean v0, p0, Lcom/wen/fluorescence/util/Global;->bFanOpen:Z

    .line 26
    iput-boolean v0, p0, Lcom/wen/fluorescence/util/Global;->AppHasStart:Z

    .line 28
    const-wide/high16 v0, 0x4039000000000000L    # 25.0

    iput-wide v0, p0, Lcom/wen/fluorescence/util/Global;->dTemp:D

    return-void
.end method

.method public static getInstance()Lcom/wen/fluorescence/util/Global;
    .locals 1

    .line 33
    sget-object v0, Lcom/wen/fluorescence/util/Global;->mGlobal:Lcom/wen/fluorescence/util/Global;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/wen/fluorescence/util/Global;

    invoke-direct {v0}, Lcom/wen/fluorescence/util/Global;-><init>()V

    sput-object v0, Lcom/wen/fluorescence/util/Global;->mGlobal:Lcom/wen/fluorescence/util/Global;

    .line 36
    :cond_0
    sget-object v0, Lcom/wen/fluorescence/util/Global;->mGlobal:Lcom/wen/fluorescence/util/Global;

    return-object v0
.end method


# virtual methods
.method public getConfig()Lcom/wen/fluorescence/bean/SystemConfig;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/wen/fluorescence/util/Global;->config:Lcom/wen/fluorescence/bean/SystemConfig;

    return-object v0
.end method

.method public getFull_Version()Ljava/lang/String;
    .locals 1

    .line 90
    const-string v0, "V1.0.2.1.1"

    return-object v0
.end method

.method public getGuestType()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/wen/fluorescence/util/Global;->GuestType:I

    return v0
.end method

.method public getLanguage()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/wen/fluorescence/util/Global;->Language:I

    return v0
.end method

.method public getRelease_Version()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/wen/fluorescence/util/Global;->Release_Version:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftType()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/wen/fluorescence/util/Global;->SoftType:I

    return v0
.end method

.method public getTestStatus()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/wen/fluorescence/util/Global;->testStatus:Z

    return v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/wen/fluorescence/util/Global;->user:Ljava/lang/String;

    return-object v0
.end method

.method public getdTemp()D
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/wen/fluorescence/util/Global;->dTemp:D

    return-wide v0
.end method

.method public isAppHasStart()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/wen/fluorescence/util/Global;->AppHasStart:Z

    return v0
.end method

.method public isbFanOpen()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/wen/fluorescence/util/Global;->bFanOpen:Z

    return v0
.end method

.method public setAppHasStart(Z)V
    .locals 0
    .param p1, "bAppHasStart"    # Z

    .line 52
    iput-boolean p1, p0, Lcom/wen/fluorescence/util/Global;->AppHasStart:Z

    .line 53
    return-void
.end method

.method public setConfig(Lcom/wen/fluorescence/bean/SystemConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/wen/fluorescence/bean/SystemConfig;

    .line 102
    iput-object p1, p0, Lcom/wen/fluorescence/util/Global;->config:Lcom/wen/fluorescence/bean/SystemConfig;

    .line 103
    return-void
.end method

.method public setGuestType(I)V
    .locals 0
    .param p1, "guestType"    # I

    .line 118
    iput p1, p0, Lcom/wen/fluorescence/util/Global;->GuestType:I

    .line 119
    return-void
.end method

.method public setLanguage(I)V
    .locals 0
    .param p1, "language"    # I

    .line 78
    iput p1, p0, Lcom/wen/fluorescence/util/Global;->Language:I

    .line 79
    return-void
.end method

.method public setSoftType(I)V
    .locals 0
    .param p1, "softType"    # I

    .line 110
    iput p1, p0, Lcom/wen/fluorescence/util/Global;->SoftType:I

    .line 111
    return-void
.end method

.method public setTestStatus(Z)V
    .locals 0
    .param p1, "status"    # Z

    .line 65
    iput-boolean p1, p0, Lcom/wen/fluorescence/util/Global;->testStatus:Z

    .line 66
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0
    .param p1, "user"    # Ljava/lang/String;

    .line 86
    iput-object p1, p0, Lcom/wen/fluorescence/util/Global;->user:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setbFanOpen(Z)V
    .locals 0
    .param p1, "bFanOpen"    # Z

    .line 61
    iput-boolean p1, p0, Lcom/wen/fluorescence/util/Global;->bFanOpen:Z

    .line 62
    return-void
.end method

.method public setdTemp(D)V
    .locals 0
    .param p1, "dTemp"    # D

    .line 44
    iput-wide p1, p0, Lcom/wen/fluorescence/util/Global;->dTemp:D

    .line 45
    return-void
.end method
