.class public final enum Lca/uhn/hl7v2/Severity;
.super Ljava/lang/Enum;
.source "Severity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lca/uhn/hl7v2/Severity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lca/uhn/hl7v2/Severity;

.field public static final enum ERROR:Lca/uhn/hl7v2/Severity;

.field private static final HL70516:Ljava/lang/String; = "HL70516"

.field public static final enum INFO:Lca/uhn/hl7v2/Severity;

.field public static final enum WARNING:Lca/uhn/hl7v2/Severity;


# instance fields
.field private final code:Ljava/lang/String;

.field private final message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 34
    new-instance v0, Lca/uhn/hl7v2/Severity;

    const-string v1, "INFO"

    const-string v2, "I"

    const-string v3, "Info"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lca/uhn/hl7v2/Severity;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/Severity;->INFO:Lca/uhn/hl7v2/Severity;

    .line 35
    new-instance v0, Lca/uhn/hl7v2/Severity;

    const-string v1, "WARNING"

    const-string v2, "W"

    const-string v3, "Warning"

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5, v2, v3}, Lca/uhn/hl7v2/Severity;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/Severity;->WARNING:Lca/uhn/hl7v2/Severity;

    .line 36
    new-instance v0, Lca/uhn/hl7v2/Severity;

    const-string v1, "ERROR"

    const-string v2, "E"

    const-string v3, "Error"

    const/4 v6, 0x2

    invoke-direct {v0, v1, v6, v2, v3}, Lca/uhn/hl7v2/Severity;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lca/uhn/hl7v2/Severity;->ERROR:Lca/uhn/hl7v2/Severity;

    const/4 v0, 0x3

    new-array v0, v0, [Lca/uhn/hl7v2/Severity;

    sget-object v1, Lca/uhn/hl7v2/Severity;->INFO:Lca/uhn/hl7v2/Severity;

    aput-object v1, v0, v4

    sget-object v1, Lca/uhn/hl7v2/Severity;->WARNING:Lca/uhn/hl7v2/Severity;

    aput-object v1, v0, v5

    sget-object v1, Lca/uhn/hl7v2/Severity;->ERROR:Lca/uhn/hl7v2/Severity;

    aput-object v1, v0, v6

    sput-object v0, Lca/uhn/hl7v2/Severity;->ENUM$VALUES:[Lca/uhn/hl7v2/Severity;

    .line 38
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "code"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput-object p3, p0, Lca/uhn/hl7v2/Severity;->code:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lca/uhn/hl7v2/Severity;->message:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public static codeTable()Ljava/lang/String;
    .locals 1

    .line 79
    const-string v0, "HL70516"

    return-object v0
.end method

.method public static severityFor(Ljava/lang/String;)Lca/uhn/hl7v2/Severity;
    .locals 5
    .param p0, "code"    # Ljava/lang/String;

    .line 67
    invoke-static {}, Lca/uhn/hl7v2/Severity;->values()[Lca/uhn/hl7v2/Severity;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 72
    const/4 v0, 0x0

    return-object v0

    .line 67
    :cond_0
    aget-object v3, v0, v1

    .line 68
    .local v3, "severity":Lca/uhn/hl7v2/Severity;
    iget-object v4, v3, Lca/uhn/hl7v2/Severity;->code:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 69
    return-object v3

    .line 67
    .end local v3    # "severity":Lca/uhn/hl7v2/Severity;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lca/uhn/hl7v2/Severity;
    .locals 1

    .line 1
    const-class v0, Lca/uhn/hl7v2/Severity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lca/uhn/hl7v2/Severity;

    return-object p0
.end method

.method public static values()[Lca/uhn/hl7v2/Severity;
    .locals 4

    .line 1
    sget-object v0, Lca/uhn/hl7v2/Severity;->ENUM$VALUES:[Lca/uhn/hl7v2/Severity;

    const/4 v1, 0x0

    array-length v2, v0

    new-array v3, v2, [Lca/uhn/hl7v2/Severity;

    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lca/uhn/hl7v2/Severity;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lca/uhn/hl7v2/Severity;->message:Ljava/lang/String;

    return-object v0
.end method
