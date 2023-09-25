.class public interface abstract Lca/uhn/hl7v2/validation/ValidationExceptionHandler;
.super Ljava/lang/Object;
.source "ValidationExceptionHandler.java"


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
.method public abstract hasFailed()Z
.end method

.method public varargs abstract onExceptions([Lca/uhn/hl7v2/validation/ValidationException;)V
.end method

.method public abstract result()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method

.method public abstract setValidationSubject(Ljava/lang/Object;)V
.end method
