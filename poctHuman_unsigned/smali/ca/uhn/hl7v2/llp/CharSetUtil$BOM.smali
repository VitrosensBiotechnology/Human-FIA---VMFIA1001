.class final enum Lca/uhn/hl7v2/llp/CharSetUtil$BOM;
.super Ljava/lang/Enum;
.source "CharSetUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/llp/CharSetUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BOM"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lca/uhn/hl7v2/llp/CharSetUtil$BOM;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lca/uhn/hl7v2/llp/CharSetUtil$BOM;

.field public static final enum NONE:Lca/uhn/hl7v2/llp/CharSetUtil$BOM;

.field public static final enum UTF_16_BE:Lca/uhn/hl7v2/llp/CharSetUtil$BOM;

.field public static final enum UTF_16_LE:Lca/uhn/hl7v2/llp/CharSetUtil$BOM;

.field public static final enum UTF_32_BE:Lca/uhn/hl7v2/llp/CharSetUtil$BOM;

.field public static final enum UTF_32_LE:Lca/uhn/hl7v2/llp/CharSetUtil$BOM;

.field public static final enum UTF_8:Lca/uhn/hl7v2/llp/CharSetUtil$BOM;


# instance fields
.field private bytes:[B

.field private charset:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 92
    new-instance v0, Lca/uhn/hl7v2/llp/CharSetUtil$BOM;

    const-string v1, "UTF_8"

    const/4 v2, 0x3

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    .line 93
    nop

    .line 94
    nop

    .line 95
    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-direct {v0, v1, v5, v3, v4}, Lca/uhn/hl7v2/llp/CharSetUtil$BOM;-><init>(Ljava/lang/String;I[BLjava/lang/String;)V

    .line 92
    sput-object v0, Lca/uhn/hl7v2/llp/CharSetUtil$BOM;->UTF_8:Lca/uhn/hl7v2/llp/CharSetUtil$BOM;

    .line 96
    new-instance v0, Lca/uhn/hl7v2/llp/CharSetUtil$BOM;

    const-string v1, "UTF_16_LE"

    const/4 v3, 0x2

    new-array v4, v3, [B

    fill-array-data v4, :array_1

    .line 97
    nop

    .line 98
    const-string v6, "UTF-16LE"

    const/4 v7, 0x1

    invoke-direct {v0, v1, v7, v4, v6}, Lca/uhn/hl7v2/llp/CharSetUtil$BOM;-><init>(Ljava/lang/String;I[BLjava/lang/String;)V

    .line 96
    sput-object v0, Lca/uhn/hl7v2/llp/CharSetUtil$BOM;->UTF_16_LE:Lca/uhn/hl7v2/llp/CharSetUtil$BOM;

    .line 99
    new-instance v0, Lca/uhn/hl7v2/llp/CharSetUtil$BOM;

    const-string v1, "UTF_16_BE"

    new-array v4, v3, [B

    fill-array-data v4, :array_2

    .line 100
    nop

    .line 101
    const-string v6, "UTF-16BE"

    invoke-direct {v0, v1, v3, v4, v6}, Lca/uhn/hl7v2/llp/CharSetUtil$BOM;-><init>(Ljava/lang/String;I[BLjava/lang/String;)V

    .line 99
    sput-object v0, Lca/uhn/hl7v2/llp/CharSetUtil$BOM;->UTF_16_BE:Lca/uhn/hl7v2/llp/CharSetUtil$BOM;

    .line 102
    new-instance v0, Lca/uhn/hl7v2/llp/CharSetUtil$BOM;

    const-string v1, "UTF_32_LE"

    const/4 v4, 0x4

    new-array v6, v4, [B

    .line 103
    const/4 v8, -0x1

    aput-byte v8, v6, v5

    .line 104
    const/4 v9, -0x2

    aput-byte v9, v6, v7

    .line 106
    const-string v10, "UTF-32LE"

    invoke-direct {v0, v1, v2, v6, v10}, Lca/uhn/hl7v2/llp/CharSetUtil$BOM;-><init>(Ljava/lang/String;I[BLjava/lang/String;)V

    .line 102
    sput-object v0, Lca/uhn/hl7v2/llp/CharSetUtil$BOM;->UTF_32_LE:Lca/uhn/hl7v2/llp/CharSetUtil$BOM;

    .line 107
    new-instance v0, Lca/uhn/hl7v2/llp/CharSetUtil$BOM;

    const-string v1, "UTF_32_BE"

    new-array v6, v4, [B

    .line 110
    aput-byte v9, v6, v3

    .line 111
    aput-byte v8, v6, v2

    const-string v8, "UTF-32BE"

    invoke-direct {v0, v1, v4, v6, v8}, Lca/uhn/hl7v2/llp/CharSetUtil$BOM;-><init>(Ljava/lang/String;I[BLjava/lang/String;)V

    .line 107
    sput-object v0, Lca/uhn/hl7v2/llp/CharSetUtil$BOM;->UTF_32_BE:Lca/uhn/hl7v2/llp/CharSetUtil$BOM;

    .line 112
    new-instance v0, Lca/uhn/hl7v2/llp/CharSetUtil$BOM;

    const-string v1, "NONE"

    new-array v6, v5, [B

    const-string v8, "US-ASCII"

    const/4 v9, 0x5

    invoke-direct {v0, v1, v9, v6, v8}, Lca/uhn/hl7v2/llp/CharSetUtil$BOM;-><init>(Ljava/lang/String;I[BLjava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/llp/CharSetUtil$BOM;->NONE:Lca/uhn/hl7v2/llp/CharSetUtil$BOM;

    .line 90
    const/4 v0, 0x6

    new-array v0, v0, [Lca/uhn/hl7v2/llp/CharSetUtil$BOM;

    sget-object v1, Lca/uhn/hl7v2/llp/CharSetUtil$BOM;->UTF_8:Lca/uhn/hl7v2/llp/CharSetUtil$BOM;

    aput-object v1, v0, v5

    sget-object v1, Lca/uhn/hl7v2/llp/CharSetUtil$BOM;->UTF_16_LE:Lca/uhn/hl7v2/llp/CharSetUtil$BOM;

    aput-object v1, v0, v7

    sget-object v1, Lca/uhn/hl7v2/llp/CharSetUtil$BOM;->UTF_16_BE:Lca/uhn/hl7v2/llp/CharSetUtil$BOM;

    aput-object v1, v0, v3

    sget-object v1, Lca/uhn/hl7v2/llp/CharSetUtil$BOM;->UTF_32_LE:Lca/uhn/hl7v2/llp/CharSetUtil$BOM;

    aput-object v1, v0, v2

    sget-object v1, Lca/uhn/hl7v2/llp/CharSetUtil$BOM;->UTF_32_BE:Lca/uhn/hl7v2/llp/CharSetUtil$BOM;

    aput-object v1, v0, v4

    sget-object v1, Lca/uhn/hl7v2/llp/CharSetUtil$BOM;->NONE:Lca/uhn/hl7v2/llp/CharSetUtil$BOM;

    aput-object v1, v0, v9

    sput-object v0, Lca/uhn/hl7v2/llp/CharSetUtil$BOM;->ENUM$VALUES:[Lca/uhn/hl7v2/llp/CharSetUtil$BOM;

    return-void

    nop

    :array_0
    .array-data 1
        -0x11t
        -0x45t
        -0x41t
    .end array-data

    :array_1
    .array-data 1
        -0x1t
        -0x2t
    .end array-data

    nop

    :array_2
    .array-data 1
        -0x2t
        -0x1t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I[BLjava/lang/String;)V
    .locals 0
    .param p3, "bytes"    # [B
    .param p4, "charset"    # Ljava/lang/String;

    .line 117
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 118
    iput-object p3, p0, Lca/uhn/hl7v2/llp/CharSetUtil$BOM;->bytes:[B

    .line 119
    invoke-static {p4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    iput-object p1, p0, Lca/uhn/hl7v2/llp/CharSetUtil$BOM;->charset:Ljava/nio/charset/Charset;

    .line 120
    return-void
.end method

.method static synthetic access$2(Lca/uhn/hl7v2/llp/CharSetUtil$BOM;)[B
    .locals 0

    .line 114
    iget-object p0, p0, Lca/uhn/hl7v2/llp/CharSetUtil$BOM;->bytes:[B

    return-object p0
.end method

.method public static getBOM([B)Lca/uhn/hl7v2/llp/CharSetUtil$BOM;
    .locals 7
    .param p0, "bytes"    # [B

    .line 123
    invoke-static {}, Lca/uhn/hl7v2/llp/CharSetUtil$BOM;->values()[Lca/uhn/hl7v2/llp/CharSetUtil$BOM;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-lt v3, v2, :cond_0

    .line 128
    sget-object v0, Lca/uhn/hl7v2/llp/CharSetUtil$BOM;->NONE:Lca/uhn/hl7v2/llp/CharSetUtil$BOM;

    return-object v0

    .line 123
    :cond_0
    aget-object v4, v0, v3

    .line 124
    .local v4, "bom":Lca/uhn/hl7v2/llp/CharSetUtil$BOM;
    iget-object v5, v4, Lca/uhn/hl7v2/llp/CharSetUtil$BOM;->bytes:[B

    array-length v5, v5

    new-array v5, v5, [B

    .line 125
    .local v5, "bytesToCompare":[B
    iget-object v6, v4, Lca/uhn/hl7v2/llp/CharSetUtil$BOM;->bytes:[B

    array-length v6, v6

    invoke-static {p0, v1, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    iget-object v6, v4, Lca/uhn/hl7v2/llp/CharSetUtil$BOM;->bytes:[B

    invoke-static {v6, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_1

    return-object v4

    .line 123
    .end local v4    # "bom":Lca/uhn/hl7v2/llp/CharSetUtil$BOM;
    .end local v5    # "bytesToCompare":[B
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static skipBOM([B)Ljava/lang/String;
    .locals 5
    .param p0, "bytes"    # [B

    .line 133
    :try_start_0
    invoke-static {p0}, Lca/uhn/hl7v2/llp/CharSetUtil$BOM;->getBOM([B)Lca/uhn/hl7v2/llp/CharSetUtil$BOM;

    move-result-object v0

    .line 134
    .local v0, "bom":Lca/uhn/hl7v2/llp/CharSetUtil$BOM;
    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Lca/uhn/hl7v2/llp/CharSetUtil$BOM;->bytes:[B

    array-length v2, v2

    array-length v3, p0

    iget-object v4, v0, Lca/uhn/hl7v2/llp/CharSetUtil$BOM;->bytes:[B

    array-length v4, v4

    sub-int/2addr v3, v4

    iget-object v4, v0, Lca/uhn/hl7v2/llp/CharSetUtil$BOM;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 135
    .end local v0    # "bom":Lca/uhn/hl7v2/llp/CharSetUtil$BOM;
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lca/uhn/hl7v2/llp/CharSetUtil$BOM;
    .locals 1

    .line 1
    const-class v0, Lca/uhn/hl7v2/llp/CharSetUtil$BOM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lca/uhn/hl7v2/llp/CharSetUtil$BOM;

    return-object p0
.end method

.method public static values()[Lca/uhn/hl7v2/llp/CharSetUtil$BOM;
    .locals 4

    .line 1
    sget-object v0, Lca/uhn/hl7v2/llp/CharSetUtil$BOM;->ENUM$VALUES:[Lca/uhn/hl7v2/llp/CharSetUtil$BOM;

    const/4 v1, 0x0

    array-length v2, v0

    new-array v3, v2, [Lca/uhn/hl7v2/llp/CharSetUtil$BOM;

    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3
.end method
