.class public Lca/uhn/hl7v2/util/Pair;
.super Ljava/lang/Object;
.source "Pair.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private myValue1:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private myValue2:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 33
    .local p0, "this":Lca/uhn/hl7v2/util/Pair;, "Lca/uhn/hl7v2/util/Pair<TT;>;"
    .local p1, "theValue1":Ljava/lang/Object;, "TT;"
    .local p2, "theValue2":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lca/uhn/hl7v2/util/Pair;->myValue1:Ljava/lang/Object;

    .line 35
    iput-object p2, p0, Lca/uhn/hl7v2/util/Pair;->myValue2:Ljava/lang/Object;

    .line 36
    return-void
.end method


# virtual methods
.method public getValue1()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 41
    .local p0, "this":Lca/uhn/hl7v2/util/Pair;, "Lca/uhn/hl7v2/util/Pair<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/util/Pair;->myValue1:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue2()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 45
    .local p0, "this":Lca/uhn/hl7v2/util/Pair;, "Lca/uhn/hl7v2/util/Pair<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/util/Pair;->myValue2:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue1(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 49
    .local p0, "this":Lca/uhn/hl7v2/util/Pair;, "Lca/uhn/hl7v2/util/Pair<TT;>;"
    .local p1, "theValue1":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lca/uhn/hl7v2/util/Pair;->myValue1:Ljava/lang/Object;

    .line 50
    return-void
.end method

.method public setValue2(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 53
    .local p0, "this":Lca/uhn/hl7v2/util/Pair;, "Lca/uhn/hl7v2/util/Pair<TT;>;"
    .local p1, "theValue2":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lca/uhn/hl7v2/util/Pair;->myValue2:Ljava/lang/Object;

    .line 54
    return-void
.end method
