.class Lca/uhn/hl7v2/validation/impl/ConformanceProfileRule$1;
.super Ljava/util/LinkedHashMap;
.source "ConformanceProfileRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/validation/impl/ConformanceProfileRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Lca/uhn/hl7v2/conf/spec/RuntimeProfile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(IFZ)V
    .locals 0
    .param p1, "$anonymous0"    # I
    .param p2, "$anonymous1"    # F
    .param p3, "$anonymous2"    # Z

    .line 65
    invoke-direct {p0, p1, p2, p3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 1
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
            "Lca/uhn/hl7v2/conf/spec/RuntimeProfile;",
            ">;)Z"
        }
    .end annotation

    .line 68
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lca/uhn/hl7v2/conf/spec/RuntimeProfile;>;"
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/impl/ConformanceProfileRule$1;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
