.class Lca/uhn/hl7v2/validation/impl/ValidationContextImpl$RuleCache;
.super Ljava/util/LinkedHashMap;
.source "ValidationContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/validation/impl/ValidationContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RuleCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lca/uhn/hl7v2/validation/Rule<",
        "*>;>",
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Ljava/util/Collection<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final size:I


# direct methods
.method private constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .line 175
    .local p0, "this":Lca/uhn/hl7v2/validation/impl/ValidationContextImpl$RuleCache;, "Lca/uhn/hl7v2/validation/impl/ValidationContextImpl$RuleCache<TT;>;"
    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 176
    iput p1, p0, Lca/uhn/hl7v2/validation/impl/ValidationContextImpl$RuleCache;->size:I

    .line 177
    return-void
.end method

.method synthetic constructor <init>(ILca/uhn/hl7v2/validation/impl/ValidationContextImpl$RuleCache;)V
    .locals 0

    .line 174
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/validation/impl/ValidationContextImpl$RuleCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "TT;>;>;)Z"
        }
    .end annotation

    .line 181
    .local p0, "this":Lca/uhn/hl7v2/validation/impl/ValidationContextImpl$RuleCache;, "Lca/uhn/hl7v2/validation/impl/ValidationContextImpl$RuleCache<TT;>;"
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Collection<TT;>;>;"
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/impl/ValidationContextImpl$RuleCache;->size()I

    move-result v0

    iget v1, p0, Lca/uhn/hl7v2/validation/impl/ValidationContextImpl$RuleCache;->size:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
