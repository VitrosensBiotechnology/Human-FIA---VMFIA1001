.class public abstract Lca/uhn/hl7v2/conf/classes/abs/AbstractConformanceContainer;
.super Ljava/lang/Object;
.source "AbstractConformanceContainer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method protected getChild(Lca/uhn/hl7v2/conf/classes/abs/FiniteList;I)Lca/uhn/hl7v2/conf/classes/abs/Repeatable;
    .locals 1
    .param p1, "finiteList"    # Lca/uhn/hl7v2/conf/classes/abs/FiniteList;
    .param p2, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/classes/exceptions/ConfRepException;
        }
    .end annotation

    .line 57
    invoke-virtual {p1, p2}, Lca/uhn/hl7v2/conf/classes/abs/FiniteList;->getRep(I)Lca/uhn/hl7v2/conf/classes/abs/Repeatable;

    move-result-object v0

    return-object v0
.end method
