.class public interface abstract Lca/uhn/hl7v2/model/SuperStructure;
.super Ljava/lang/Object;
.source "SuperStructure.java"

# interfaces
.implements Lca/uhn/hl7v2/model/Group;


# virtual methods
.method public abstract getChildNamesForStructure(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStructuresWhichChildAppliesTo(Ljava/lang/String;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
