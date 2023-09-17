.class public final enum Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;
.super Ljava/lang/Enum;
.source "WifiConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/lis/WifiConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WifiCipherType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;

.field public static final enum WIFICIPHER_INVALID:Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;

.field public static final enum WIFICIPHER_NOPASS:Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;

.field public static final enum WIFICIPHER_WEP:Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;

.field public static final enum WIFICIPHER_WPA:Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 50
    new-instance v0, Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;

    const-string v1, "WIFICIPHER_WEP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;->WIFICIPHER_WEP:Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;

    new-instance v0, Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;

    const-string v1, "WIFICIPHER_WPA"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;->WIFICIPHER_WPA:Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;

    new-instance v0, Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;

    const-string v1, "WIFICIPHER_NOPASS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;->WIFICIPHER_NOPASS:Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;

    new-instance v0, Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;

    const-string v1, "WIFICIPHER_INVALID"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;->WIFICIPHER_INVALID:Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;

    .line 49
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;

    sget-object v1, Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;->WIFICIPHER_WEP:Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;->WIFICIPHER_WPA:Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;->WIFICIPHER_NOPASS:Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;->WIFICIPHER_INVALID:Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;->$VALUES:[Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 49
    const-class v0, Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;

    return-object v0
.end method

.method public static values()[Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;
    .locals 1

    .line 49
    sget-object v0, Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;->$VALUES:[Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;

    invoke-virtual {v0}, [Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wen/fluorescence/lis/WifiConnector$WifiCipherType;

    return-object v0
.end method
