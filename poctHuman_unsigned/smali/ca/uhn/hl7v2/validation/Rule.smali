.class public interface abstract Lca/uhn/hl7v2/validation/Rule;
.super Ljava/lang/Object;
.source "Rule.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# virtual methods
.method public abstract apply(Ljava/lang/Object;)[Lca/uhn/hl7v2/validation/ValidationException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[",
            "Lca/uhn/hl7v2/validation/ValidationException;"
        }
    .end annotation
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getSectionReference()Ljava/lang/String;
.end method
