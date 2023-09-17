.class public interface abstract Lca/uhn/hl7v2/preparser/ER7$Handler;
.super Ljava/lang/Object;
.source "ER7.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/preparser/ER7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "Handler"
.end annotation


# virtual methods
.method public abstract delim(I)C
.end method

.method public abstract putDatum(Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract specDepth()I
.end method
