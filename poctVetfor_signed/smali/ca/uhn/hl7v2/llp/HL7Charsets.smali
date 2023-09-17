.class final enum Lca/uhn/hl7v2/llp/HL7Charsets;
.super Ljava/lang/Enum;
.source "HL7Charsets.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lca/uhn/hl7v2/llp/HL7Charsets;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ASCII:Lca/uhn/hl7v2/llp/HL7Charsets;

.field public static final enum BIG_5:Lca/uhn/hl7v2/llp/HL7Charsets;

.field public static final enum CNS_11643:Lca/uhn/hl7v2/llp/HL7Charsets;

.field private static final synthetic ENUM$VALUES:[Lca/uhn/hl7v2/llp/HL7Charsets;

.field public static final enum GB_18030:Lca/uhn/hl7v2/llp/HL7Charsets;

.field public static final enum ISO_8859_1:Lca/uhn/hl7v2/llp/HL7Charsets;

.field public static final enum ISO_8859_15:Lca/uhn/hl7v2/llp/HL7Charsets;

.field public static final enum ISO_8859_2:Lca/uhn/hl7v2/llp/HL7Charsets;

.field public static final enum ISO_8859_3:Lca/uhn/hl7v2/llp/HL7Charsets;

.field public static final enum ISO_8859_4:Lca/uhn/hl7v2/llp/HL7Charsets;

.field public static final enum ISO_8859_5:Lca/uhn/hl7v2/llp/HL7Charsets;

.field public static final enum ISO_8859_6:Lca/uhn/hl7v2/llp/HL7Charsets;

.field public static final enum ISO_8859_7:Lca/uhn/hl7v2/llp/HL7Charsets;

.field public static final enum ISO_8859_8:Lca/uhn/hl7v2/llp/HL7Charsets;

.field public static final enum ISO_8859_9:Lca/uhn/hl7v2/llp/HL7Charsets;

.field public static final enum ISO_IR_14:Lca/uhn/hl7v2/llp/HL7Charsets;

.field public static final enum ISO_IR_159:Lca/uhn/hl7v2/llp/HL7Charsets;

.field public static final enum ISO_IR_6:Lca/uhn/hl7v2/llp/HL7Charsets;

.field public static final enum ISO_IR_87:Lca/uhn/hl7v2/llp/HL7Charsets;

.field public static final enum KS_X_1001:Lca/uhn/hl7v2/llp/HL7Charsets;

.field public static final enum UNICODE:Lca/uhn/hl7v2/llp/HL7Charsets;

.field public static final enum UTF_16:Lca/uhn/hl7v2/llp/HL7Charsets;

.field public static final enum UTF_32:Lca/uhn/hl7v2/llp/HL7Charsets;

.field public static final enum UTF_8:Lca/uhn/hl7v2/llp/HL7Charsets;


# instance fields
.field private charset:Ljava/nio/charset/Charset;

.field private hl7EncodingName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 39
    new-instance v0, Lca/uhn/hl7v2/llp/HL7Charsets;

    const-string v1, "ASCII"

    const-string v2, "ASCII"

    const-string v3, "US-ASCII"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lca/uhn/hl7v2/llp/HL7Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/llp/HL7Charsets;->ASCII:Lca/uhn/hl7v2/llp/HL7Charsets;

    .line 40
    new-instance v0, Lca/uhn/hl7v2/llp/HL7Charsets;

    const-string v1, "ISO_8859_1"

    const-string v2, "8859/1"

    const-string v3, "ISO-8859-1"

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5, v2, v3}, Lca/uhn/hl7v2/llp/HL7Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/llp/HL7Charsets;->ISO_8859_1:Lca/uhn/hl7v2/llp/HL7Charsets;

    .line 41
    new-instance v0, Lca/uhn/hl7v2/llp/HL7Charsets;

    const-string v1, "ISO_8859_2"

    const-string v2, "8859/2"

    const-string v3, "ISO-8859-2"

    const/4 v6, 0x2

    invoke-direct {v0, v1, v6, v2, v3}, Lca/uhn/hl7v2/llp/HL7Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/llp/HL7Charsets;->ISO_8859_2:Lca/uhn/hl7v2/llp/HL7Charsets;

    .line 42
    new-instance v0, Lca/uhn/hl7v2/llp/HL7Charsets;

    const-string v1, "ISO_8859_3"

    const-string v2, "8859/3"

    const-string v3, "ISO-8859-3"

    const/4 v7, 0x3

    invoke-direct {v0, v1, v7, v2, v3}, Lca/uhn/hl7v2/llp/HL7Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/llp/HL7Charsets;->ISO_8859_3:Lca/uhn/hl7v2/llp/HL7Charsets;

    .line 43
    new-instance v0, Lca/uhn/hl7v2/llp/HL7Charsets;

    const-string v1, "ISO_8859_4"

    const-string v2, "8859/4"

    const-string v3, "ISO-8859-4"

    const/4 v8, 0x4

    invoke-direct {v0, v1, v8, v2, v3}, Lca/uhn/hl7v2/llp/HL7Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/llp/HL7Charsets;->ISO_8859_4:Lca/uhn/hl7v2/llp/HL7Charsets;

    .line 44
    new-instance v0, Lca/uhn/hl7v2/llp/HL7Charsets;

    const-string v1, "ISO_8859_5"

    const-string v2, "8859/5"

    const-string v3, "ISO-8859-5"

    const/4 v9, 0x5

    invoke-direct {v0, v1, v9, v2, v3}, Lca/uhn/hl7v2/llp/HL7Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/llp/HL7Charsets;->ISO_8859_5:Lca/uhn/hl7v2/llp/HL7Charsets;

    .line 45
    new-instance v0, Lca/uhn/hl7v2/llp/HL7Charsets;

    const-string v1, "ISO_8859_6"

    const-string v2, "8859/6"

    const-string v3, "ISO-8859-6"

    const/4 v10, 0x6

    invoke-direct {v0, v1, v10, v2, v3}, Lca/uhn/hl7v2/llp/HL7Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/llp/HL7Charsets;->ISO_8859_6:Lca/uhn/hl7v2/llp/HL7Charsets;

    .line 46
    new-instance v0, Lca/uhn/hl7v2/llp/HL7Charsets;

    const-string v1, "ISO_8859_7"

    const-string v2, "8859/7"

    const-string v3, "ISO-8859-7"

    const/4 v11, 0x7

    invoke-direct {v0, v1, v11, v2, v3}, Lca/uhn/hl7v2/llp/HL7Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/llp/HL7Charsets;->ISO_8859_7:Lca/uhn/hl7v2/llp/HL7Charsets;

    .line 47
    new-instance v0, Lca/uhn/hl7v2/llp/HL7Charsets;

    const-string v1, "ISO_8859_8"

    const-string v2, "8859/8"

    const-string v3, "ISO-8859-8"

    const/16 v12, 0x8

    invoke-direct {v0, v1, v12, v2, v3}, Lca/uhn/hl7v2/llp/HL7Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/llp/HL7Charsets;->ISO_8859_8:Lca/uhn/hl7v2/llp/HL7Charsets;

    .line 48
    new-instance v0, Lca/uhn/hl7v2/llp/HL7Charsets;

    const-string v1, "ISO_8859_9"

    const-string v2, "8859/9"

    const-string v3, "ISO-8859-9"

    const/16 v13, 0x9

    invoke-direct {v0, v1, v13, v2, v3}, Lca/uhn/hl7v2/llp/HL7Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/llp/HL7Charsets;->ISO_8859_9:Lca/uhn/hl7v2/llp/HL7Charsets;

    .line 49
    new-instance v0, Lca/uhn/hl7v2/llp/HL7Charsets;

    const-string v1, "ISO_8859_15"

    const-string v2, "8859/15"

    const-string v3, "ISO-8859-15"

    const/16 v14, 0xa

    invoke-direct {v0, v1, v14, v2, v3}, Lca/uhn/hl7v2/llp/HL7Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/llp/HL7Charsets;->ISO_8859_15:Lca/uhn/hl7v2/llp/HL7Charsets;

    .line 50
    new-instance v0, Lca/uhn/hl7v2/llp/HL7Charsets;

    const-string v1, "ISO_IR_6"

    const-string v2, "ISO IR6"

    const-string v3, "US-ASCII"

    const/16 v15, 0xb

    invoke-direct {v0, v1, v15, v2, v3}, Lca/uhn/hl7v2/llp/HL7Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/llp/HL7Charsets;->ISO_IR_6:Lca/uhn/hl7v2/llp/HL7Charsets;

    .line 51
    new-instance v0, Lca/uhn/hl7v2/llp/HL7Charsets;

    const-string v1, "ISO_IR_14"

    const-string v2, "ISO IR14"

    const-string v3, "JIS_X0201"

    const/16 v15, 0xc

    invoke-direct {v0, v1, v15, v2, v3}, Lca/uhn/hl7v2/llp/HL7Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/llp/HL7Charsets;->ISO_IR_14:Lca/uhn/hl7v2/llp/HL7Charsets;

    .line 52
    new-instance v0, Lca/uhn/hl7v2/llp/HL7Charsets;

    const-string v1, "ISO_IR_87"

    const-string v2, "ISO IR87"

    const-string v3, "x-JIS0208"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v2, v3}, Lca/uhn/hl7v2/llp/HL7Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/llp/HL7Charsets;->ISO_IR_87:Lca/uhn/hl7v2/llp/HL7Charsets;

    .line 53
    new-instance v0, Lca/uhn/hl7v2/llp/HL7Charsets;

    const-string v1, "ISO_IR_159"

    const-string v2, "ISO IR159"

    const-string v3, "JIS_X0212-1990"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v2, v3}, Lca/uhn/hl7v2/llp/HL7Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/llp/HL7Charsets;->ISO_IR_159:Lca/uhn/hl7v2/llp/HL7Charsets;

    .line 54
    new-instance v0, Lca/uhn/hl7v2/llp/HL7Charsets;

    const-string v1, "GB_18030"

    const-string v2, "GB 18030-2000"

    const-string v3, "GB18030"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15, v2, v3}, Lca/uhn/hl7v2/llp/HL7Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/llp/HL7Charsets;->GB_18030:Lca/uhn/hl7v2/llp/HL7Charsets;

    .line 55
    new-instance v0, Lca/uhn/hl7v2/llp/HL7Charsets;

    const-string v1, "KS_X_1001"

    const-string v2, "KS X 1001"

    const-string v3, "EUC-KR"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15, v2, v3}, Lca/uhn/hl7v2/llp/HL7Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/llp/HL7Charsets;->KS_X_1001:Lca/uhn/hl7v2/llp/HL7Charsets;

    .line 56
    new-instance v0, Lca/uhn/hl7v2/llp/HL7Charsets;

    const-string v1, "CNS_11643"

    const-string v2, "CNS 11643-1992"

    const-string v3, "x-EUC-TW"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15, v2, v3}, Lca/uhn/hl7v2/llp/HL7Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/llp/HL7Charsets;->CNS_11643:Lca/uhn/hl7v2/llp/HL7Charsets;

    .line 57
    new-instance v0, Lca/uhn/hl7v2/llp/HL7Charsets;

    const-string v1, "BIG_5"

    const-string v2, "BIG-5"

    const-string v3, "Big5"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15, v2, v3}, Lca/uhn/hl7v2/llp/HL7Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/llp/HL7Charsets;->BIG_5:Lca/uhn/hl7v2/llp/HL7Charsets;

    .line 58
    new-instance v0, Lca/uhn/hl7v2/llp/HL7Charsets;

    const-string v1, "UNICODE"

    const-string v2, "UNICODE"

    const-string v3, "UTF-8"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15, v2, v3}, Lca/uhn/hl7v2/llp/HL7Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/llp/HL7Charsets;->UNICODE:Lca/uhn/hl7v2/llp/HL7Charsets;

    .line 59
    new-instance v0, Lca/uhn/hl7v2/llp/HL7Charsets;

    const-string v1, "UTF_8"

    const-string v2, "UNICODE UTF-8"

    const-string v3, "UTF-8"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15, v2, v3}, Lca/uhn/hl7v2/llp/HL7Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/llp/HL7Charsets;->UTF_8:Lca/uhn/hl7v2/llp/HL7Charsets;

    .line 60
    new-instance v0, Lca/uhn/hl7v2/llp/HL7Charsets;

    const-string v1, "UTF_16"

    const-string v2, "UNICODE UTF-16"

    const-string v3, "UTF-16"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15, v2, v3}, Lca/uhn/hl7v2/llp/HL7Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/llp/HL7Charsets;->UTF_16:Lca/uhn/hl7v2/llp/HL7Charsets;

    .line 61
    new-instance v0, Lca/uhn/hl7v2/llp/HL7Charsets;

    const-string v1, "UTF_32"

    const-string v2, "UNICODE UTF-32"

    const-string v3, "UTF-32"

    const/16 v15, 0x16

    invoke-direct {v0, v1, v15, v2, v3}, Lca/uhn/hl7v2/llp/HL7Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/llp/HL7Charsets;->UTF_32:Lca/uhn/hl7v2/llp/HL7Charsets;

    .line 38
    const/16 v0, 0x17

    new-array v0, v0, [Lca/uhn/hl7v2/llp/HL7Charsets;

    sget-object v1, Lca/uhn/hl7v2/llp/HL7Charsets;->ASCII:Lca/uhn/hl7v2/llp/HL7Charsets;

    aput-object v1, v0, v4

    sget-object v1, Lca/uhn/hl7v2/llp/HL7Charsets;->ISO_8859_1:Lca/uhn/hl7v2/llp/HL7Charsets;

    aput-object v1, v0, v5

    sget-object v1, Lca/uhn/hl7v2/llp/HL7Charsets;->ISO_8859_2:Lca/uhn/hl7v2/llp/HL7Charsets;

    aput-object v1, v0, v6

    sget-object v1, Lca/uhn/hl7v2/llp/HL7Charsets;->ISO_8859_3:Lca/uhn/hl7v2/llp/HL7Charsets;

    aput-object v1, v0, v7

    sget-object v1, Lca/uhn/hl7v2/llp/HL7Charsets;->ISO_8859_4:Lca/uhn/hl7v2/llp/HL7Charsets;

    aput-object v1, v0, v8

    sget-object v1, Lca/uhn/hl7v2/llp/HL7Charsets;->ISO_8859_5:Lca/uhn/hl7v2/llp/HL7Charsets;

    aput-object v1, v0, v9

    sget-object v1, Lca/uhn/hl7v2/llp/HL7Charsets;->ISO_8859_6:Lca/uhn/hl7v2/llp/HL7Charsets;

    aput-object v1, v0, v10

    sget-object v1, Lca/uhn/hl7v2/llp/HL7Charsets;->ISO_8859_7:Lca/uhn/hl7v2/llp/HL7Charsets;

    aput-object v1, v0, v11

    sget-object v1, Lca/uhn/hl7v2/llp/HL7Charsets;->ISO_8859_8:Lca/uhn/hl7v2/llp/HL7Charsets;

    aput-object v1, v0, v12

    sget-object v1, Lca/uhn/hl7v2/llp/HL7Charsets;->ISO_8859_9:Lca/uhn/hl7v2/llp/HL7Charsets;

    aput-object v1, v0, v13

    sget-object v1, Lca/uhn/hl7v2/llp/HL7Charsets;->ISO_8859_15:Lca/uhn/hl7v2/llp/HL7Charsets;

    aput-object v1, v0, v14

    sget-object v1, Lca/uhn/hl7v2/llp/HL7Charsets;->ISO_IR_6:Lca/uhn/hl7v2/llp/HL7Charsets;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lca/uhn/hl7v2/llp/HL7Charsets;->ISO_IR_14:Lca/uhn/hl7v2/llp/HL7Charsets;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lca/uhn/hl7v2/llp/HL7Charsets;->ISO_IR_87:Lca/uhn/hl7v2/llp/HL7Charsets;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lca/uhn/hl7v2/llp/HL7Charsets;->ISO_IR_159:Lca/uhn/hl7v2/llp/HL7Charsets;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lca/uhn/hl7v2/llp/HL7Charsets;->GB_18030:Lca/uhn/hl7v2/llp/HL7Charsets;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lca/uhn/hl7v2/llp/HL7Charsets;->KS_X_1001:Lca/uhn/hl7v2/llp/HL7Charsets;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lca/uhn/hl7v2/llp/HL7Charsets;->CNS_11643:Lca/uhn/hl7v2/llp/HL7Charsets;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lca/uhn/hl7v2/llp/HL7Charsets;->BIG_5:Lca/uhn/hl7v2/llp/HL7Charsets;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lca/uhn/hl7v2/llp/HL7Charsets;->UNICODE:Lca/uhn/hl7v2/llp/HL7Charsets;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lca/uhn/hl7v2/llp/HL7Charsets;->UTF_8:Lca/uhn/hl7v2/llp/HL7Charsets;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lca/uhn/hl7v2/llp/HL7Charsets;->UTF_16:Lca/uhn/hl7v2/llp/HL7Charsets;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lca/uhn/hl7v2/llp/HL7Charsets;->UTF_32:Lca/uhn/hl7v2/llp/HL7Charsets;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sput-object v0, Lca/uhn/hl7v2/llp/HL7Charsets;->ENUM$VALUES:[Lca/uhn/hl7v2/llp/HL7Charsets;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "hl7EncodingName"    # Ljava/lang/String;
    .param p4, "charset"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 68
    iput-object p3, p0, Lca/uhn/hl7v2/llp/HL7Charsets;->hl7EncodingName:Ljava/lang/String;

    .line 69
    invoke-static {p4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    iput-object p1, p0, Lca/uhn/hl7v2/llp/HL7Charsets;->charset:Ljava/nio/charset/Charset;

    .line 70
    return-void
.end method

.method public static getCharsetForHL7Encoding(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 5
    .param p0, "hl7EncodingName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/parser/EncodingNotSupportedException;
        }
    .end annotation

    .line 79
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 81
    :cond_0
    invoke-static {}, Lca/uhn/hl7v2/llp/HL7Charsets;->values()[Lca/uhn/hl7v2/llp/HL7Charsets;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    .line 86
    new-instance v0, Lca/uhn/hl7v2/parser/EncodingNotSupportedException;

    invoke-direct {v0, p0}, Lca/uhn/hl7v2/parser/EncodingNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_1
    aget-object v3, v0, v2

    .line 82
    .local v3, "encoding":Lca/uhn/hl7v2/llp/HL7Charsets;
    iget-object v4, v3, Lca/uhn/hl7v2/llp/HL7Charsets;->hl7EncodingName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 83
    iget-object v0, v3, Lca/uhn/hl7v2/llp/HL7Charsets;->charset:Ljava/nio/charset/Charset;

    return-object v0

    .line 81
    .end local v3    # "encoding":Lca/uhn/hl7v2/llp/HL7Charsets;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    :cond_3
    :goto_1
    sget-object v0, Lca/uhn/hl7v2/llp/HL7Charsets;->ASCII:Lca/uhn/hl7v2/llp/HL7Charsets;

    iget-object v0, v0, Lca/uhn/hl7v2/llp/HL7Charsets;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 10
    .param p0, "params"    # [Ljava/lang/String;

    .line 90
    invoke-static {}, Lca/uhn/hl7v2/llp/HL7Charsets;->values()[Lca/uhn/hl7v2/llp/HL7Charsets;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 98
    return-void

    .line 90
    :cond_0
    aget-object v3, v0, v1

    .line 91
    .local v3, "entry":Lca/uhn/hl7v2/llp/HL7Charsets;
    iget-object v4, v3, Lca/uhn/hl7v2/llp/HL7Charsets;->charset:Ljava/nio/charset/Charset;

    .line 92
    .local v4, "cs":Ljava/nio/charset/Charset;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v4}, Ljava/nio/charset/Charset;->aliases()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 96
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5}, Ljava/io/PrintStream;->println()V

    .line 90
    .end local v3    # "entry":Lca/uhn/hl7v2/llp/HL7Charsets;
    .end local v4    # "cs":Ljava/nio/charset/Charset;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    .restart local v3    # "entry":Lca/uhn/hl7v2/llp/HL7Charsets;
    .restart local v4    # "cs":Ljava/nio/charset/Charset;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 94
    .local v6, "alias":Ljava/lang/String;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 94
    .end local v6    # "alias":Ljava/lang/String;
    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lca/uhn/hl7v2/llp/HL7Charsets;
    .locals 1

    .line 1
    const-class v0, Lca/uhn/hl7v2/llp/HL7Charsets;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lca/uhn/hl7v2/llp/HL7Charsets;

    return-object p0
.end method

.method public static values()[Lca/uhn/hl7v2/llp/HL7Charsets;
    .locals 4

    .line 1
    sget-object v0, Lca/uhn/hl7v2/llp/HL7Charsets;->ENUM$VALUES:[Lca/uhn/hl7v2/llp/HL7Charsets;

    const/4 v1, 0x0

    array-length v2, v0

    new-array v3, v2, [Lca/uhn/hl7v2/llp/HL7Charsets;

    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3
.end method
