.class public Lcom/wen/fluorescence/database/RawData;
.super Ljava/lang/Object;
.source "RawData.java"


# instance fields
.field private data:Ljava/lang/String;

.field private serialNumber:Ljava/lang/String;

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/wen/fluorescence/database/RawData;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/wen/fluorescence/database/RawData;->serialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/wen/fluorescence/database/RawData;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/wen/fluorescence/database/RawData;->data:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setSerialNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "serialNumber"    # Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/wen/fluorescence/database/RawData;->serialNumber:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/wen/fluorescence/database/RawData;->time:Ljava/lang/String;

    .line 36
    return-void
.end method
