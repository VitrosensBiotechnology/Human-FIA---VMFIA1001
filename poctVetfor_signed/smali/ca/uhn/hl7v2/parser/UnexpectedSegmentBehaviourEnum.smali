.class public final enum Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;
.super Ljava/lang/Enum;
.source "UnexpectedSegmentBehaviourEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ADD_INLINE:Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;

.field public static final enum DROP_TO_ROOT:Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;

.field private static final synthetic ENUM$VALUES:[Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;

.field public static final enum THROW_HL7_EXCEPTION:Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 11
    new-instance v0, Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;

    const-string v1, "ADD_INLINE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;-><init>(Ljava/lang/String;I)V

    .line 22
    sput-object v0, Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;->ADD_INLINE:Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;

    .line 24
    new-instance v0, Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;

    const-string v1, "DROP_TO_ROOT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v0, Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;->DROP_TO_ROOT:Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;

    .line 31
    new-instance v0, Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;

    const-string v1, "THROW_HL7_EXCEPTION"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;-><init>(Ljava/lang/String;I)V

    .line 34
    sput-object v0, Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;->THROW_HL7_EXCEPTION:Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;

    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;

    sget-object v1, Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;->ADD_INLINE:Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;

    aput-object v1, v0, v2

    sget-object v1, Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;->DROP_TO_ROOT:Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;

    aput-object v1, v0, v3

    sget-object v1, Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;->THROW_HL7_EXCEPTION:Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;

    aput-object v1, v0, v4

    sput-object v0, Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;->ENUM$VALUES:[Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;
    .locals 1

    .line 1
    const-class v0, Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;

    return-object p0
.end method

.method public static values()[Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;
    .locals 4

    .line 1
    sget-object v0, Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;->ENUM$VALUES:[Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;

    const/4 v1, 0x0

    array-length v2, v0

    new-array v3, v2, [Lca/uhn/hl7v2/parser/UnexpectedSegmentBehaviourEnum;

    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3
.end method
