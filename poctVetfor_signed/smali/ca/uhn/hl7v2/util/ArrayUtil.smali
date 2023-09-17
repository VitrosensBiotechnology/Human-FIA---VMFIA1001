.class public Lca/uhn/hl7v2/util/ArrayUtil;
.super Ljava/lang/Object;
.source "ArrayUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p0, "theArray"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .line 17
    .local p1, "theValue":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    array-length v1, p0

    move v2, v0

    :goto_0
    if-lt v2, v1, :cond_0

    .line 28
    return v0

    .line 17
    :cond_0
    aget-object v3, p0, v2

    .line 18
    .local v3, "next":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x1

    if-nez p1, :cond_1

    .line 19
    if-nez v3, :cond_2

    .line 20
    return v4

    .line 23
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 24
    return v4

    .line 17
    .end local v3    # "next":Ljava/lang/Object;, "TT;"
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
