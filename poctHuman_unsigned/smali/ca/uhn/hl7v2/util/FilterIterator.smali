.class public Lca/uhn/hl7v2/util/FilterIterator;
.super Ljava/lang/Object;
.source "FilterIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lca/uhn/hl7v2/util/FilterIterator$Predicate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private iter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation
.end field

.field private nextObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private nextObjectSet:Z

.field private predicate:Lca/uhn/hl7v2/util/FilterIterator$Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lca/uhn/hl7v2/util/FilterIterator$Predicate<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Lca/uhn/hl7v2/util/FilterIterator$Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TT;>;",
            "Lca/uhn/hl7v2/util/FilterIterator$Predicate<",
            "TT;>;)V"
        }
    .end annotation

    .line 50
    .local p0, "this":Lca/uhn/hl7v2/util/FilterIterator;, "Lca/uhn/hl7v2/util/FilterIterator<TT;>;"
    .local p1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    .local p2, "predicate":Lca/uhn/hl7v2/util/FilterIterator$Predicate;, "Lca/uhn/hl7v2/util/FilterIterator$Predicate<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lca/uhn/hl7v2/util/FilterIterator;->nextObjectSet:Z

    .line 51
    iput-object p1, p0, Lca/uhn/hl7v2/util/FilterIterator;->iter:Ljava/util/Iterator;

    .line 52
    iput-object p2, p0, Lca/uhn/hl7v2/util/FilterIterator;->predicate:Lca/uhn/hl7v2/util/FilterIterator$Predicate;

    .line 53
    return-void
.end method

.method private setNextObject()Z
    .locals 2

    .line 78
    .local p0, "this":Lca/uhn/hl7v2/util/FilterIterator;, "Lca/uhn/hl7v2/util/FilterIterator<TT;>;"
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/util/FilterIterator;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    const/4 v0, 0x0

    return v0

    .line 79
    :cond_1
    iget-object v0, p0, Lca/uhn/hl7v2/util/FilterIterator;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 80
    .local v0, "object":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lca/uhn/hl7v2/util/FilterIterator;->predicate:Lca/uhn/hl7v2/util/FilterIterator$Predicate;

    invoke-interface {v1, v0}, Lca/uhn/hl7v2/util/FilterIterator$Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    iput-object v0, p0, Lca/uhn/hl7v2/util/FilterIterator;->nextObject:Ljava/lang/Object;

    .line 82
    const/4 v1, 0x1

    iput-boolean v1, p0, Lca/uhn/hl7v2/util/FilterIterator;->nextObjectSet:Z

    .line 83
    return v1
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 56
    .local p0, "this":Lca/uhn/hl7v2/util/FilterIterator;, "Lca/uhn/hl7v2/util/FilterIterator<TT;>;"
    iget-boolean v0, p0, Lca/uhn/hl7v2/util/FilterIterator;->nextObjectSet:Z

    if-eqz v0, :cond_0

    .line 57
    const/4 v0, 0x1

    return v0

    .line 59
    :cond_0
    invoke-direct {p0}, Lca/uhn/hl7v2/util/FilterIterator;->setNextObject()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 64
    .local p0, "this":Lca/uhn/hl7v2/util/FilterIterator;, "Lca/uhn/hl7v2/util/FilterIterator<TT;>;"
    iget-boolean v0, p0, Lca/uhn/hl7v2/util/FilterIterator;->nextObjectSet:Z

    if-nez v0, :cond_0

    .line 65
    invoke-direct {p0}, Lca/uhn/hl7v2/util/FilterIterator;->setNextObject()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 69
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lca/uhn/hl7v2/util/FilterIterator;->nextObjectSet:Z

    .line 70
    iget-object v0, p0, Lca/uhn/hl7v2/util/FilterIterator;->nextObject:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 91
    .local p0, "this":Lca/uhn/hl7v2/util/FilterIterator;, "Lca/uhn/hl7v2/util/FilterIterator<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
