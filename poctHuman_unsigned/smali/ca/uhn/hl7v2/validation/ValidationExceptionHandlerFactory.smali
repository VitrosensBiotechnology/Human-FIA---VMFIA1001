.class public interface abstract Lca/uhn/hl7v2/validation/ValidationExceptionHandlerFactory;
.super Ljava/lang/Object;
.source "ValidationExceptionHandlerFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getNewInstance(Lca/uhn/hl7v2/HapiContext;)Lca/uhn/hl7v2/validation/ValidationExceptionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/HapiContext;",
            ")",
            "Lca/uhn/hl7v2/validation/ValidationExceptionHandler<",
            "TR;>;"
        }
    .end annotation
.end method
