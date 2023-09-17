.class public interface abstract Lca/uhn/hl7v2/validation/builder/Predicate;
.super Ljava/lang/Object;
.source "Predicate.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract evaluate(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/validation/ValidationException;
        }
    .end annotation
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method
