.class public Lca/uhn/hl7v2/util/StructureNamePredicate;
.super Ljava/lang/Object;
.source "StructureNamePredicate.java"

# interfaces
.implements Lca/uhn/hl7v2/util/FilterIterator$Predicate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lca/uhn/hl7v2/util/FilterIterator$Predicate<",
        "Lca/uhn/hl7v2/model/Structure;",
        ">;"
    }
.end annotation


# instance fields
.field private desired:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "desired"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lca/uhn/hl7v2/util/StructureNamePredicate;->desired:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public evaluate(Lca/uhn/hl7v2/model/Structure;)Z
    .locals 2
    .param p1, "obj"    # Lca/uhn/hl7v2/model/Structure;

    .line 42
    iget-object v0, p0, Lca/uhn/hl7v2/util/StructureNamePredicate;->desired:Ljava/lang/String;

    invoke-interface {p1}, Lca/uhn/hl7v2/model/Structure;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic evaluate(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lca/uhn/hl7v2/model/Structure;

    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/util/StructureNamePredicate;->evaluate(Lca/uhn/hl7v2/model/Structure;)Z

    move-result p1

    return p1
.end method
