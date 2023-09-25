.class public abstract enum Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;
.super Ljava/lang/Enum;
.source "PredicatePrimitiveTypeRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Trimmer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALL:Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;

.field private static final synthetic ENUM$VALUES:[Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;

.field public static final enum LEFT:Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;

.field public static final enum NONE:Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;

.field public static final enum RIGHT:Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 48
    new-instance v0, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer$1;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;->LEFT:Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;

    .line 51
    new-instance v0, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer$2;

    const-string v1, "RIGHT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;->RIGHT:Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;

    .line 54
    new-instance v0, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer$3;

    const-string v1, "NONE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;->NONE:Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;

    .line 57
    new-instance v0, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer$4;

    const-string v1, "ALL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;->ALL:Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;

    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;

    sget-object v1, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;->LEFT:Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;

    aput-object v1, v0, v2

    sget-object v1, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;->RIGHT:Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;

    aput-object v1, v0, v3

    sget-object v1, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;->NONE:Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;

    aput-object v1, v0, v4

    sget-object v1, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;->ALL:Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;

    aput-object v1, v0, v5

    sput-object v0, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;->ENUM$VALUES:[Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;
    .locals 1

    .line 1
    const-class v0, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;

    return-object p0
.end method

.method public static values()[Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;
    .locals 4

    .line 1
    sget-object v0, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;->ENUM$VALUES:[Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;

    const/4 v1, 0x0

    array-length v2, v0

    new-array v3, v2, [Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;

    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3
.end method


# virtual methods
.method public abstract trim(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected trimPattern(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "source"    # Ljava/lang/String;

    .line 69
    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 70
    :cond_1
    :goto_0
    return-object p2
.end method
