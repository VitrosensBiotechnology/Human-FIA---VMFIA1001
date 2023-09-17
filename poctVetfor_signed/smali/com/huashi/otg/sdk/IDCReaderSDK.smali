.class public Lcom/huashi/otg/sdk/IDCReaderSDK;
.super Ljava/lang/Object;
.source "IDCReaderSDK.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "unpack"

.field private static volatile _instance:Lcom/huashi/otg/sdk/IDCReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lcom/huashi/otg/sdk/IDCReaderSDK;

    invoke-direct {v0}, Lcom/huashi/otg/sdk/IDCReaderSDK;-><init>()V

    sput-object v0, Lcom/huashi/otg/sdk/IDCReaderSDK;->_instance:Lcom/huashi/otg/sdk/IDCReaderSDK;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method

.method public static getInstance()Lcom/huashi/otg/sdk/IDCReaderSDK;
    .locals 3

    .line 12
    sget-object v0, Lcom/huashi/otg/sdk/IDCReaderSDK;->_instance:Lcom/huashi/otg/sdk/IDCReaderSDK;

    if-nez v0, :cond_1

    .line 13
    const-class v0, Lcom/huashi/otg/sdk/IDCReaderSDK;

    .line 14
    .local v0, "var0":Ljava/lang/Class;
    const-class v1, Lcom/huashi/otg/sdk/IDCReaderSDK;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v2, Lcom/huashi/otg/sdk/IDCReaderSDK;->_instance:Lcom/huashi/otg/sdk/IDCReaderSDK;

    if-nez v2, :cond_0

    .line 16
    new-instance v2, Lcom/huashi/otg/sdk/IDCReaderSDK;

    invoke-direct {v2}, Lcom/huashi/otg/sdk/IDCReaderSDK;-><init>()V

    sput-object v2, Lcom/huashi/otg/sdk/IDCReaderSDK;->_instance:Lcom/huashi/otg/sdk/IDCReaderSDK;

    .line 14
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 21
    .end local v0    # "var0":Ljava/lang/Class;
    :cond_1
    :goto_0
    sget-object v0, Lcom/huashi/otg/sdk/IDCReaderSDK;->_instance:Lcom/huashi/otg/sdk/IDCReaderSDK;

    return-object v0
.end method


# virtual methods
.method public unpack([B[C)I
    .locals 1
    .param p1, "wltdata"    # [B
    .param p2, "RGBdata"    # [C

    .line 29
    const/4 v0, 0x1

    return v0
.end method
