.class public Lcom/huashi/otg/sdk/Hs_Cmd;
.super Ljava/lang/Object;
.source "Hs_Cmd.java"


# static fields
.field public static byLicData:[B

.field public static cmd_SAM:[B

.field public static cmd_find:[B

.field public static cmd_read:[B

.field public static cmd_read_ftp:[B

.field public static cmd_selt:[B

.field public static cmd_sleep:[B

.field public static cmd_weak:[B


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 5
    const/16 v0, 0xa

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/16 v3, -0x56

    aput-byte v3, v1, v2

    const/4 v4, 0x1

    aput-byte v3, v1, v4

    const/4 v5, 0x2

    aput-byte v3, v1, v5

    const/16 v6, -0x6a

    const/4 v7, 0x3

    aput-byte v6, v1, v7

    const/16 v8, 0x69

    const/4 v9, 0x4

    aput-byte v8, v1, v9

    .line 6
    const/4 v10, 0x6

    aput-byte v7, v1, v10

    const/4 v11, 0x7

    const/16 v12, 0x12

    aput-byte v12, v1, v11

    const/16 v12, 0x8

    const/4 v13, -0x1

    aput-byte v13, v1, v12

    const/16 v13, 0x9

    const/16 v14, -0x12

    aput-byte v14, v1, v13

    .line 5
    sput-object v1, Lcom/huashi/otg/sdk/Hs_Cmd;->cmd_SAM:[B

    .line 7
    new-array v1, v0, [B

    aput-byte v3, v1, v2

    aput-byte v3, v1, v4

    aput-byte v3, v1, v5

    aput-byte v6, v1, v7

    aput-byte v8, v1, v9

    .line 8
    aput-byte v7, v1, v10

    const/16 v14, 0x20

    aput-byte v14, v1, v11

    aput-byte v4, v1, v12

    const/16 v15, 0x22

    aput-byte v15, v1, v13

    .line 7
    sput-object v1, Lcom/huashi/otg/sdk/Hs_Cmd;->cmd_find:[B

    .line 9
    new-array v1, v0, [B

    aput-byte v3, v1, v2

    aput-byte v3, v1, v4

    aput-byte v3, v1, v5

    aput-byte v6, v1, v7

    aput-byte v8, v1, v9

    .line 10
    aput-byte v7, v1, v10

    aput-byte v14, v1, v11

    aput-byte v5, v1, v12

    const/16 v14, 0x21

    aput-byte v14, v1, v13

    .line 9
    sput-object v1, Lcom/huashi/otg/sdk/Hs_Cmd;->cmd_selt:[B

    .line 11
    new-array v1, v0, [B

    aput-byte v3, v1, v2

    aput-byte v3, v1, v4

    aput-byte v3, v1, v5

    aput-byte v6, v1, v7

    aput-byte v8, v1, v9

    .line 12
    aput-byte v7, v1, v10

    const/16 v14, 0x30

    aput-byte v14, v1, v11

    aput-byte v4, v1, v12

    const/16 v15, 0x32

    aput-byte v15, v1, v13

    .line 11
    sput-object v1, Lcom/huashi/otg/sdk/Hs_Cmd;->cmd_read:[B

    .line 13
    new-array v1, v0, [B

    aput-byte v3, v1, v2

    aput-byte v3, v1, v4

    aput-byte v3, v1, v5

    aput-byte v6, v1, v7

    aput-byte v8, v1, v9

    .line 14
    aput-byte v7, v1, v10

    aput-byte v14, v1, v11

    const/16 v14, 0x10

    aput-byte v14, v1, v12

    const/16 v14, 0x23

    aput-byte v14, v1, v13

    .line 13
    sput-object v1, Lcom/huashi/otg/sdk/Hs_Cmd;->cmd_read_ftp:[B

    .line 15
    new-array v1, v13, [B

    aput-byte v3, v1, v2

    aput-byte v3, v1, v4

    aput-byte v3, v1, v5

    aput-byte v6, v1, v7

    aput-byte v8, v1, v9

    .line 16
    aput-byte v5, v1, v10

    aput-byte v5, v1, v12

    .line 15
    sput-object v1, Lcom/huashi/otg/sdk/Hs_Cmd;->cmd_sleep:[B

    .line 17
    new-array v1, v13, [B

    aput-byte v3, v1, v2

    aput-byte v3, v1, v4

    aput-byte v3, v1, v5

    aput-byte v6, v1, v7

    aput-byte v8, v1, v9

    .line 18
    aput-byte v5, v1, v10

    aput-byte v4, v1, v11

    aput-byte v7, v1, v12

    .line 17
    sput-object v1, Lcom/huashi/otg/sdk/Hs_Cmd;->cmd_weak:[B

    .line 19
    const/16 v1, 0xc

    new-array v1, v1, [B

    const/4 v3, 0x5

    aput-byte v3, v1, v2

    aput-byte v4, v1, v5

    const/16 v2, 0x5b

    aput-byte v2, v1, v9

    const/4 v2, 0x5

    aput-byte v7, v1, v2

    .line 20
    const/16 v2, 0x33

    aput-byte v2, v1, v10

    aput-byte v4, v1, v11

    const/16 v2, 0x5a

    aput-byte v2, v1, v12

    const/16 v2, -0x4d

    aput-byte v2, v1, v13

    const/16 v2, 0x1e

    aput-byte v2, v1, v0

    .line 19
    sput-object v1, Lcom/huashi/otg/sdk/Hs_Cmd;->byLicData:[B

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
