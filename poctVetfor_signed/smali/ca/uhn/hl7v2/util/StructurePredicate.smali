.class public Lca/uhn/hl7v2/util/StructurePredicate;
.super Ljava/lang/Object;
.source "StructurePredicate.java"

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
.field private desired:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lca/uhn/hl7v2/model/Structure;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lca/uhn/hl7v2/model/Structure;",
            ">;)V"
        }
    .end annotation

    .line 37
    .local p1, "desired":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Structure;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lca/uhn/hl7v2/util/StructurePredicate;->desired:Ljava/lang/Class;

    .line 39
    return-void
.end method


# virtual methods
.method public evaluate(Lca/uhn/hl7v2/model/Structure;)Z
    .locals 2
    .param p1, "obj"    # Lca/uhn/hl7v2/model/Structure;

    .line 42
    iget-object v0, p0, Lca/uhn/hl7v2/util/StructurePredicate;->desired:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic evaluate(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lca/uhn/hl7v2/model/Structure;

    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/util/StructurePredicate;->evaluate(Lca/uhn/hl7v2/model/Structure;)Z

    move-result p1

    return p1
.end method
