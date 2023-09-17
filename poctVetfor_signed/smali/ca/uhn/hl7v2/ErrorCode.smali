.class public final enum Lca/uhn/hl7v2/ErrorCode;
.super Ljava/lang/Enum;
.source "ErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lca/uhn/hl7v2/ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APPLICATION_INTERNAL_ERROR:Lca/uhn/hl7v2/ErrorCode;

.field public static final enum APPLICATION_RECORD_LOCKED:Lca/uhn/hl7v2/ErrorCode;

.field public static final enum DATA_TYPE_ERROR:Lca/uhn/hl7v2/ErrorCode;

.field public static final enum DUPLICATE_KEY_IDENTIFIER:Lca/uhn/hl7v2/ErrorCode;

.field private static final synthetic ENUM$VALUES:[Lca/uhn/hl7v2/ErrorCode;

.field private static final HL70357:Ljava/lang/String; = "HL70357"

.field public static final enum MESSAGE_ACCEPTED:Lca/uhn/hl7v2/ErrorCode;

.field public static final enum REQUIRED_FIELD_MISSING:Lca/uhn/hl7v2/ErrorCode;

.field public static final enum SEGMENT_SEQUENCE_ERROR:Lca/uhn/hl7v2/ErrorCode;

.field public static final enum TABLE_VALUE_NOT_FOUND:Lca/uhn/hl7v2/ErrorCode;

.field public static final enum UNKNOWN_KEY_IDENTIFIER:Lca/uhn/hl7v2/ErrorCode;

.field public static final enum UNSUPPORTED_EVENT_CODE:Lca/uhn/hl7v2/ErrorCode;

.field public static final enum UNSUPPORTED_MESSAGE_TYPE:Lca/uhn/hl7v2/ErrorCode;

.field public static final enum UNSUPPORTED_PROCESSING_ID:Lca/uhn/hl7v2/ErrorCode;

.field public static final enum UNSUPPORTED_VERSION_ID:Lca/uhn/hl7v2/ErrorCode;


# instance fields
.field private final code:I

.field private final message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 32
    new-instance v0, Lca/uhn/hl7v2/ErrorCode;

    const-string v1, "MESSAGE_ACCEPTED"

    const-string v2, "Message accepted"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Lca/uhn/hl7v2/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/ErrorCode;->MESSAGE_ACCEPTED:Lca/uhn/hl7v2/ErrorCode;

    .line 33
    new-instance v0, Lca/uhn/hl7v2/ErrorCode;

    const-string v1, "SEGMENT_SEQUENCE_ERROR"

    const-string v2, "Segment sequence error"

    const/4 v4, 0x1

    const/16 v5, 0x64

    invoke-direct {v0, v1, v4, v5, v2}, Lca/uhn/hl7v2/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/ErrorCode;->SEGMENT_SEQUENCE_ERROR:Lca/uhn/hl7v2/ErrorCode;

    .line 34
    new-instance v0, Lca/uhn/hl7v2/ErrorCode;

    const-string v1, "REQUIRED_FIELD_MISSING"

    const-string v2, "Required field missing"

    const/4 v5, 0x2

    const/16 v6, 0x65

    invoke-direct {v0, v1, v5, v6, v2}, Lca/uhn/hl7v2/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/ErrorCode;->REQUIRED_FIELD_MISSING:Lca/uhn/hl7v2/ErrorCode;

    .line 35
    new-instance v0, Lca/uhn/hl7v2/ErrorCode;

    const-string v1, "DATA_TYPE_ERROR"

    const-string v2, "Data type error"

    const/4 v6, 0x3

    const/16 v7, 0x66

    invoke-direct {v0, v1, v6, v7, v2}, Lca/uhn/hl7v2/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/ErrorCode;->DATA_TYPE_ERROR:Lca/uhn/hl7v2/ErrorCode;

    .line 36
    new-instance v0, Lca/uhn/hl7v2/ErrorCode;

    const-string v1, "TABLE_VALUE_NOT_FOUND"

    const-string v2, "Table value not found"

    const/4 v7, 0x4

    const/16 v8, 0x67

    invoke-direct {v0, v1, v7, v8, v2}, Lca/uhn/hl7v2/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/ErrorCode;->TABLE_VALUE_NOT_FOUND:Lca/uhn/hl7v2/ErrorCode;

    .line 37
    new-instance v0, Lca/uhn/hl7v2/ErrorCode;

    const-string v1, "UNSUPPORTED_MESSAGE_TYPE"

    const-string v2, "Unsupported message type"

    const/4 v8, 0x5

    const/16 v9, 0xc8

    invoke-direct {v0, v1, v8, v9, v2}, Lca/uhn/hl7v2/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/ErrorCode;->UNSUPPORTED_MESSAGE_TYPE:Lca/uhn/hl7v2/ErrorCode;

    .line 38
    new-instance v0, Lca/uhn/hl7v2/ErrorCode;

    const-string v1, "UNSUPPORTED_EVENT_CODE"

    const-string v2, "Unsupported event code"

    const/4 v9, 0x6

    const/16 v10, 0xc9

    invoke-direct {v0, v1, v9, v10, v2}, Lca/uhn/hl7v2/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/ErrorCode;->UNSUPPORTED_EVENT_CODE:Lca/uhn/hl7v2/ErrorCode;

    .line 39
    new-instance v0, Lca/uhn/hl7v2/ErrorCode;

    const-string v1, "UNSUPPORTED_PROCESSING_ID"

    const-string v2, "Unsupported processing id"

    const/4 v10, 0x7

    const/16 v11, 0xca

    invoke-direct {v0, v1, v10, v11, v2}, Lca/uhn/hl7v2/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/ErrorCode;->UNSUPPORTED_PROCESSING_ID:Lca/uhn/hl7v2/ErrorCode;

    .line 40
    new-instance v0, Lca/uhn/hl7v2/ErrorCode;

    const-string v1, "UNSUPPORTED_VERSION_ID"

    const-string v2, "Unsupported version id"

    const/16 v11, 0x8

    const/16 v12, 0xcb

    invoke-direct {v0, v1, v11, v12, v2}, Lca/uhn/hl7v2/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/ErrorCode;->UNSUPPORTED_VERSION_ID:Lca/uhn/hl7v2/ErrorCode;

    .line 41
    new-instance v0, Lca/uhn/hl7v2/ErrorCode;

    const-string v1, "UNKNOWN_KEY_IDENTIFIER"

    const-string v2, "Unknown key identifier"

    const/16 v12, 0x9

    const/16 v13, 0xcc

    invoke-direct {v0, v1, v12, v13, v2}, Lca/uhn/hl7v2/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/ErrorCode;->UNKNOWN_KEY_IDENTIFIER:Lca/uhn/hl7v2/ErrorCode;

    .line 42
    new-instance v0, Lca/uhn/hl7v2/ErrorCode;

    const-string v1, "DUPLICATE_KEY_IDENTIFIER"

    const-string v2, "Duplicate key identifier"

    const/16 v13, 0xa

    const/16 v14, 0xcd

    invoke-direct {v0, v1, v13, v14, v2}, Lca/uhn/hl7v2/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/ErrorCode;->DUPLICATE_KEY_IDENTIFIER:Lca/uhn/hl7v2/ErrorCode;

    .line 43
    new-instance v0, Lca/uhn/hl7v2/ErrorCode;

    const-string v1, "APPLICATION_RECORD_LOCKED"

    const-string v2, "Application record locked"

    const/16 v14, 0xb

    const/16 v15, 0xce

    invoke-direct {v0, v1, v14, v15, v2}, Lca/uhn/hl7v2/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/ErrorCode;->APPLICATION_RECORD_LOCKED:Lca/uhn/hl7v2/ErrorCode;

    .line 44
    new-instance v0, Lca/uhn/hl7v2/ErrorCode;

    const-string v1, "APPLICATION_INTERNAL_ERROR"

    const-string v2, "Application internal error"

    const/16 v15, 0xc

    const/16 v14, 0xcf

    invoke-direct {v0, v1, v15, v14, v2}, Lca/uhn/hl7v2/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/ErrorCode;->APPLICATION_INTERNAL_ERROR:Lca/uhn/hl7v2/ErrorCode;

    const/16 v0, 0xd

    new-array v0, v0, [Lca/uhn/hl7v2/ErrorCode;

    sget-object v1, Lca/uhn/hl7v2/ErrorCode;->MESSAGE_ACCEPTED:Lca/uhn/hl7v2/ErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lca/uhn/hl7v2/ErrorCode;->SEGMENT_SEQUENCE_ERROR:Lca/uhn/hl7v2/ErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lca/uhn/hl7v2/ErrorCode;->REQUIRED_FIELD_MISSING:Lca/uhn/hl7v2/ErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lca/uhn/hl7v2/ErrorCode;->DATA_TYPE_ERROR:Lca/uhn/hl7v2/ErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lca/uhn/hl7v2/ErrorCode;->TABLE_VALUE_NOT_FOUND:Lca/uhn/hl7v2/ErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lca/uhn/hl7v2/ErrorCode;->UNSUPPORTED_MESSAGE_TYPE:Lca/uhn/hl7v2/ErrorCode;

    aput-object v1, v0, v8

    sget-object v1, Lca/uhn/hl7v2/ErrorCode;->UNSUPPORTED_EVENT_CODE:Lca/uhn/hl7v2/ErrorCode;

    aput-object v1, v0, v9

    sget-object v1, Lca/uhn/hl7v2/ErrorCode;->UNSUPPORTED_PROCESSING_ID:Lca/uhn/hl7v2/ErrorCode;

    aput-object v1, v0, v10

    sget-object v1, Lca/uhn/hl7v2/ErrorCode;->UNSUPPORTED_VERSION_ID:Lca/uhn/hl7v2/ErrorCode;

    aput-object v1, v0, v11

    sget-object v1, Lca/uhn/hl7v2/ErrorCode;->UNKNOWN_KEY_IDENTIFIER:Lca/uhn/hl7v2/ErrorCode;

    aput-object v1, v0, v12

    sget-object v1, Lca/uhn/hl7v2/ErrorCode;->DUPLICATE_KEY_IDENTIFIER:Lca/uhn/hl7v2/ErrorCode;

    aput-object v1, v0, v13

    sget-object v1, Lca/uhn/hl7v2/ErrorCode;->APPLICATION_RECORD_LOCKED:Lca/uhn/hl7v2/ErrorCode;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lca/uhn/hl7v2/ErrorCode;->APPLICATION_INTERNAL_ERROR:Lca/uhn/hl7v2/ErrorCode;

    aput-object v1, v0, v15

    sput-object v0, Lca/uhn/hl7v2/ErrorCode;->ENUM$VALUES:[Lca/uhn/hl7v2/ErrorCode;

    .line 46
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "errCode"    # I
    .param p4, "message"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput p3, p0, Lca/uhn/hl7v2/ErrorCode;->code:I

    .line 52
    iput-object p4, p0, Lca/uhn/hl7v2/ErrorCode;->message:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public static codeTable()Ljava/lang/String;
    .locals 1

    .line 87
    const-string v0, "HL70357"

    return-object v0
.end method

.method public static errorCodeFor(I)Lca/uhn/hl7v2/ErrorCode;
    .locals 5
    .param p0, "errCode"    # I

    .line 75
    invoke-static {}, Lca/uhn/hl7v2/ErrorCode;->values()[Lca/uhn/hl7v2/ErrorCode;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 80
    const/4 v0, 0x0

    return-object v0

    .line 75
    :cond_0
    aget-object v3, v0, v1

    .line 76
    .local v3, "err":Lca/uhn/hl7v2/ErrorCode;
    iget v4, v3, Lca/uhn/hl7v2/ErrorCode;->code:I

    if-ne v4, p0, :cond_1

    .line 77
    return-object v3

    .line 75
    .end local v3    # "err":Lca/uhn/hl7v2/ErrorCode;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lca/uhn/hl7v2/ErrorCode;
    .locals 1

    .line 1
    const-class v0, Lca/uhn/hl7v2/ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lca/uhn/hl7v2/ErrorCode;

    return-object p0
.end method

.method public static values()[Lca/uhn/hl7v2/ErrorCode;
    .locals 4

    .line 1
    sget-object v0, Lca/uhn/hl7v2/ErrorCode;->ENUM$VALUES:[Lca/uhn/hl7v2/ErrorCode;

    const/4 v1, 0x0

    array-length v2, v0

    new-array v3, v2, [Lca/uhn/hl7v2/ErrorCode;

    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 59
    iget v0, p0, Lca/uhn/hl7v2/ErrorCode;->code:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lca/uhn/hl7v2/ErrorCode;->message:Ljava/lang/String;

    return-object v0
.end method
