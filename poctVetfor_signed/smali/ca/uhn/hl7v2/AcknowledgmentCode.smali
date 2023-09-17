.class public final enum Lca/uhn/hl7v2/AcknowledgmentCode;
.super Ljava/lang/Enum;
.source "AcknowledgmentCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lca/uhn/hl7v2/AcknowledgmentCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AA:Lca/uhn/hl7v2/AcknowledgmentCode;

.field public static final enum AE:Lca/uhn/hl7v2/AcknowledgmentCode;

.field public static final enum AR:Lca/uhn/hl7v2/AcknowledgmentCode;

.field public static final enum CA:Lca/uhn/hl7v2/AcknowledgmentCode;

.field public static final enum CE:Lca/uhn/hl7v2/AcknowledgmentCode;

.field public static final enum CR:Lca/uhn/hl7v2/AcknowledgmentCode;

.field private static final synthetic ENUM$VALUES:[Lca/uhn/hl7v2/AcknowledgmentCode;


# instance fields
.field private final message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 32
    new-instance v0, Lca/uhn/hl7v2/AcknowledgmentCode;

    const-string v1, "AA"

    const-string v2, "Application Accept"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lca/uhn/hl7v2/AcknowledgmentCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/AcknowledgmentCode;->AA:Lca/uhn/hl7v2/AcknowledgmentCode;

    .line 33
    new-instance v0, Lca/uhn/hl7v2/AcknowledgmentCode;

    const-string v1, "AE"

    const-string v2, "Application Error"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lca/uhn/hl7v2/AcknowledgmentCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/AcknowledgmentCode;->AE:Lca/uhn/hl7v2/AcknowledgmentCode;

    .line 34
    new-instance v0, Lca/uhn/hl7v2/AcknowledgmentCode;

    const-string v1, "AR"

    const-string v2, "Application Reject"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lca/uhn/hl7v2/AcknowledgmentCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/AcknowledgmentCode;->AR:Lca/uhn/hl7v2/AcknowledgmentCode;

    .line 35
    new-instance v0, Lca/uhn/hl7v2/AcknowledgmentCode;

    const-string v1, "CA"

    const-string v2, "Commit Accept"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lca/uhn/hl7v2/AcknowledgmentCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/AcknowledgmentCode;->CA:Lca/uhn/hl7v2/AcknowledgmentCode;

    .line 36
    new-instance v0, Lca/uhn/hl7v2/AcknowledgmentCode;

    const-string v1, "CE"

    const-string v2, "Commit Error"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lca/uhn/hl7v2/AcknowledgmentCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/AcknowledgmentCode;->CE:Lca/uhn/hl7v2/AcknowledgmentCode;

    .line 37
    new-instance v0, Lca/uhn/hl7v2/AcknowledgmentCode;

    const-string v1, "CR"

    const-string v2, "Commit Reject"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lca/uhn/hl7v2/AcknowledgmentCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/AcknowledgmentCode;->CR:Lca/uhn/hl7v2/AcknowledgmentCode;

    .line 31
    const/4 v0, 0x6

    new-array v0, v0, [Lca/uhn/hl7v2/AcknowledgmentCode;

    sget-object v1, Lca/uhn/hl7v2/AcknowledgmentCode;->AA:Lca/uhn/hl7v2/AcknowledgmentCode;

    aput-object v1, v0, v3

    sget-object v1, Lca/uhn/hl7v2/AcknowledgmentCode;->AE:Lca/uhn/hl7v2/AcknowledgmentCode;

    aput-object v1, v0, v4

    sget-object v1, Lca/uhn/hl7v2/AcknowledgmentCode;->AR:Lca/uhn/hl7v2/AcknowledgmentCode;

    aput-object v1, v0, v5

    sget-object v1, Lca/uhn/hl7v2/AcknowledgmentCode;->CA:Lca/uhn/hl7v2/AcknowledgmentCode;

    aput-object v1, v0, v6

    sget-object v1, Lca/uhn/hl7v2/AcknowledgmentCode;->CE:Lca/uhn/hl7v2/AcknowledgmentCode;

    aput-object v1, v0, v7

    sget-object v1, Lca/uhn/hl7v2/AcknowledgmentCode;->CR:Lca/uhn/hl7v2/AcknowledgmentCode;

    aput-object v1, v0, v8

    sput-object v0, Lca/uhn/hl7v2/AcknowledgmentCode;->ENUM$VALUES:[Lca/uhn/hl7v2/AcknowledgmentCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "message"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput-object p3, p0, Lca/uhn/hl7v2/AcknowledgmentCode;->message:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public static codeTable()Ljava/lang/String;
    .locals 1

    .line 50
    const-string v0, "HL70008"

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lca/uhn/hl7v2/AcknowledgmentCode;
    .locals 1

    .line 1
    const-class v0, Lca/uhn/hl7v2/AcknowledgmentCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lca/uhn/hl7v2/AcknowledgmentCode;

    return-object p0
.end method

.method public static values()[Lca/uhn/hl7v2/AcknowledgmentCode;
    .locals 4

    .line 1
    sget-object v0, Lca/uhn/hl7v2/AcknowledgmentCode;->ENUM$VALUES:[Lca/uhn/hl7v2/AcknowledgmentCode;

    const/4 v1, 0x0

    array-length v2, v0

    new-array v3, v2, [Lca/uhn/hl7v2/AcknowledgmentCode;

    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lca/uhn/hl7v2/AcknowledgmentCode;->message:Ljava/lang/String;

    return-object v0
.end method
