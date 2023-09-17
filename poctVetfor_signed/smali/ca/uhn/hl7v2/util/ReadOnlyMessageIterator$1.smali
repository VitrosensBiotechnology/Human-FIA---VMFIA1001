.class Lca/uhn/hl7v2/util/ReadOnlyMessageIterator$1;
.super Ljava/lang/Object;
.source "ReadOnlyMessageIterator.java"

# interfaces
.implements Lca/uhn/hl7v2/util/FilterIterator$Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lca/uhn/hl7v2/util/ReadOnlyMessageIterator;->createPopulatedStructureIterator(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/util/FilterIterator$Predicate;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lca/uhn/hl7v2/util/FilterIterator$Predicate<",
        "Lca/uhn/hl7v2/model/Structure;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public evaluate(Lca/uhn/hl7v2/model/Structure;)Z
    .locals 2
    .param p1, "obj"    # Lca/uhn/hl7v2/model/Structure;

    .line 103
    :try_start_0
    invoke-interface {p1}, Lca/uhn/hl7v2/model/Structure;->isEmpty()Z

    move-result v0
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Lca/uhn/hl7v2/HL7Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public bridge synthetic evaluate(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lca/uhn/hl7v2/model/Structure;

    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/util/ReadOnlyMessageIterator$1;->evaluate(Lca/uhn/hl7v2/model/Structure;)Z

    move-result p1

    return p1
.end method
