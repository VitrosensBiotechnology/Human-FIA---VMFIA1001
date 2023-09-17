.class public final enum Lca/uhn/hl7v2/app/ServerConfiguration$ApplicationExceptionPolicy;
.super Ljava/lang/Enum;
.source "ServerConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/app/ServerConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ApplicationExceptionPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lca/uhn/hl7v2/app/ServerConfiguration$ApplicationExceptionPolicy;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEFAULT:Lca/uhn/hl7v2/app/ServerConfiguration$ApplicationExceptionPolicy;

.field public static final enum DO_NOT_RESPOND:Lca/uhn/hl7v2/app/ServerConfiguration$ApplicationExceptionPolicy;

.field private static final synthetic ENUM$VALUES:[Lca/uhn/hl7v2/app/ServerConfiguration$ApplicationExceptionPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 52
    new-instance v0, Lca/uhn/hl7v2/app/ServerConfiguration$ApplicationExceptionPolicy;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lca/uhn/hl7v2/app/ServerConfiguration$ApplicationExceptionPolicy;-><init>(Ljava/lang/String;I)V

    .line 61
    sput-object v0, Lca/uhn/hl7v2/app/ServerConfiguration$ApplicationExceptionPolicy;->DEFAULT:Lca/uhn/hl7v2/app/ServerConfiguration$ApplicationExceptionPolicy;

    .line 63
    new-instance v0, Lca/uhn/hl7v2/app/ServerConfiguration$ApplicationExceptionPolicy;

    const-string v1, "DO_NOT_RESPOND"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lca/uhn/hl7v2/app/ServerConfiguration$ApplicationExceptionPolicy;-><init>(Ljava/lang/String;I)V

    .line 72
    sput-object v0, Lca/uhn/hl7v2/app/ServerConfiguration$ApplicationExceptionPolicy;->DO_NOT_RESPOND:Lca/uhn/hl7v2/app/ServerConfiguration$ApplicationExceptionPolicy;

    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [Lca/uhn/hl7v2/app/ServerConfiguration$ApplicationExceptionPolicy;

    sget-object v1, Lca/uhn/hl7v2/app/ServerConfiguration$ApplicationExceptionPolicy;->DEFAULT:Lca/uhn/hl7v2/app/ServerConfiguration$ApplicationExceptionPolicy;

    aput-object v1, v0, v2

    sget-object v1, Lca/uhn/hl7v2/app/ServerConfiguration$ApplicationExceptionPolicy;->DO_NOT_RESPOND:Lca/uhn/hl7v2/app/ServerConfiguration$ApplicationExceptionPolicy;

    aput-object v1, v0, v3

    sput-object v0, Lca/uhn/hl7v2/app/ServerConfiguration$ApplicationExceptionPolicy;->ENUM$VALUES:[Lca/uhn/hl7v2/app/ServerConfiguration$ApplicationExceptionPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lca/uhn/hl7v2/app/ServerConfiguration$ApplicationExceptionPolicy;
    .locals 1

    .line 1
    const-class v0, Lca/uhn/hl7v2/app/ServerConfiguration$ApplicationExceptionPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lca/uhn/hl7v2/app/ServerConfiguration$ApplicationExceptionPolicy;

    return-object p0
.end method

.method public static values()[Lca/uhn/hl7v2/app/ServerConfiguration$ApplicationExceptionPolicy;
    .locals 4

    .line 1
    sget-object v0, Lca/uhn/hl7v2/app/ServerConfiguration$ApplicationExceptionPolicy;->ENUM$VALUES:[Lca/uhn/hl7v2/app/ServerConfiguration$ApplicationExceptionPolicy;

    const/4 v1, 0x0

    array-length v2, v0

    new-array v3, v2, [Lca/uhn/hl7v2/app/ServerConfiguration$ApplicationExceptionPolicy;

    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3
.end method
