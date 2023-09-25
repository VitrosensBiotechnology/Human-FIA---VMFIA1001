.class public interface abstract Lca/uhn/hl7v2/validation/ValidationContext;
.super Ljava/lang/Object;
.source "ValidationContext.java"


# virtual methods
.method public abstract getEncodingRules(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lca/uhn/hl7v2/validation/EncodingRule;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMessageRules(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lca/uhn/hl7v2/validation/MessageRule;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrimitiveRules(Ljava/lang/String;Ljava/lang/String;Lca/uhn/hl7v2/model/Primitive;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lca/uhn/hl7v2/model/Primitive;",
            ")",
            "Ljava/util/Collection<",
            "Lca/uhn/hl7v2/validation/PrimitiveTypeRule;",
            ">;"
        }
    .end annotation
.end method
