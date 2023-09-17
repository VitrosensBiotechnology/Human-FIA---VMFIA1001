.class public Lca/uhn/hl7v2/HL7Exception;
.super Lca/uhn/hl7v2/AbstractHL7Exception;
.source "HL7Exception.java"


# static fields
.field public static final ACK_AA:I = 0x1

.field public static final ACK_AE:I = 0x2

.field public static final ACK_AR:I = 0x3

.field public static final ACK_CA:I = 0x4

.field public static final ACK_CE:I = 0x5

.field public static final ACK_CR:I = 0x6

.field public static final APPLICATION_INTERNAL_ERROR:I = 0xcf

.field public static final APPLICATION_RECORD_LOCKED:I = 0xce

.field public static final DATA_TYPE_ERROR:I = 0x66

.field public static final DUPLICATE_KEY_IDENTIFIER:I = 0xcd

.field public static final MESSAGE_ACCEPTED:I = 0x0

.field public static final REQUIRED_FIELD_MISSING:I = 0x65

.field public static final SEGMENT_SEQUENCE_ERROR:I = 0x64

.field public static final TABLE_VALUE_NOT_FOUND:I = 0x67

.field public static final UNKNOWN_KEY_IDENTIFIER:I = 0xcc

.field public static final UNSUPPORTED_EVENT_CODE:I = 0xc9

.field public static final UNSUPPORTED_MESSAGE_TYPE:I = 0xc8

.field public static final UNSUPPORTED_PROCESSING_ID:I = 0xca

.field public static final UNSUPPORTED_VERSION_ID:I = 0xcb


# instance fields
.field private detail:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 210
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/AbstractHL7Exception;-><init>(Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "errorCondition"    # I

    .line 169
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/AbstractHL7Exception;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0, p2}, Lca/uhn/hl7v2/HL7Exception;->setErrorCode(I)V

    .line 171
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "errorCondition"    # I
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 143
    invoke-direct {p0, p1, p3}, Lca/uhn/hl7v2/AbstractHL7Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    invoke-virtual {p0, p2}, Lca/uhn/hl7v2/HL7Exception;->setErrorCode(I)V

    .line 145
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lca/uhn/hl7v2/ErrorCode;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "error"    # Lca/uhn/hl7v2/ErrorCode;

    .line 181
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/AbstractHL7Exception;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0, p2}, Lca/uhn/hl7v2/HL7Exception;->setError(Lca/uhn/hl7v2/ErrorCode;)V

    .line 183
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lca/uhn/hl7v2/ErrorCode;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "error"    # Lca/uhn/hl7v2/ErrorCode;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 156
    invoke-direct {p0, p1, p3}, Lca/uhn/hl7v2/AbstractHL7Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    invoke-virtual {p0, p2}, Lca/uhn/hl7v2/HL7Exception;->setError(Lca/uhn/hl7v2/ErrorCode;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 192
    invoke-direct {p0, p1, p2}, Lca/uhn/hl7v2/AbstractHL7Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 201
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/AbstractHL7Exception;-><init>(Ljava/lang/Throwable;)V

    .line 202
    return-void
.end method


# virtual methods
.method public getDetail()Ljava/lang/Object;
    .locals 1

    .line 214
    iget-object v0, p0, Lca/uhn/hl7v2/HL7Exception;->detail:Ljava/lang/Object;

    return-object v0
.end method

.method public setDetail(Ljava/lang/Object;)V
    .locals 0
    .param p1, "detail"    # Ljava/lang/Object;

    .line 221
    iput-object p1, p0, Lca/uhn/hl7v2/HL7Exception;->detail:Ljava/lang/Object;

    .line 222
    return-void
.end method
