.class enum Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer$4;
.super Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;
.source "PredicatePrimitiveTypeRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4000
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;-><init>(Ljava/lang/String;ILca/uhn/hl7v2/validation/builder/PredicatePrimitiveTypeRule$Trimmer;)V

    .line 1
    return-void
.end method


# virtual methods
.method public trim(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;

    .line 58
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
